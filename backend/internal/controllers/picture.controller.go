package controllers

import (
	"context"
	"log"
	"picsManager/backend/internal/models"
	"picsManager/backend/internal/services"
	pbPicture "picsManager/backend/pb/picture"

	"go.mongodb.org/mongo-driver/bson/primitive"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

type PictureServiceController struct {
	pbPicture.UnimplementedPictureServiceServer
}

var contextIDError = status.Errorf(codes.InvalidArgument, "Could not convert picture id to ObjectID")

func buildPictureMessage(pic models.Picture) *pbPicture.PictureMessage {
	return &pbPicture.PictureMessage{AlbumId: pic.AlbumID.Hex(), OwnerName: pic.OwnerID.Hex(), Data: pic.Data, Name: pic.Name, ImageId: pic.ID.Hex(), Tags: pic.Tags}
}

func (s *PictureServiceController) CreatePicture(ctx context.Context, req *pbPicture.CreatePictureRequest) (*pbPicture.CreatePictureResponse, error) {
	userID, err := GetIdFromContext(ctx)
	if err != nil {
		log.Println("Error: ", err)
		return nil, err
	}
	albumSvc := services.NewAlbumService()
	albumID, err := primitive.ObjectIDFromHex(req.AlbumId)
	hasAccess, err := albumSvc.UserHasAccessToAlbum(userID, albumID)
	if hasAccess == false || err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "User does not have access to album or albumID is wrong")
	}
	svc := services.NewPictureService()
	var picture models.Picture
	picture.AlbumID = albumID
	picture.OwnerID = userID
	picture.Data = req.GetData()
	picture.Tags = req.GetTags()
	picture.Name = req.GetName()
	picture.AccessID = make([]primitive.ObjectID, 0)
	res, err := svc.CreatePicture(picture)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "Failed to create picture")
	}
	return &pbPicture.CreatePictureResponse{Pictures: &pbPicture.PictureMessage{AlbumId: picture.AlbumID.Hex(), OwnerName: picture.OwnerID.Hex(), Data: req.Data, Name: req.Name, ImageId: res.InsertedID.(primitive.ObjectID).Hex(), Tags: req.Tags}}, nil
}

func (s *PictureServiceController) UpdatePicture(ctx context.Context, req *pbPicture.UpdatePictureRequest) (*pbPicture.UpdatePictureResponse, error) {
	userID, err := GetIdFromContext(ctx)
	if err != nil {
		log.Println("Error: ", err)
		return nil, err
	}
	svc := services.NewPictureService()
	var newPicture models.Picture
	newPicture.AlbumID, err = primitive.ObjectIDFromHex(req.Pictures.AlbumId)
	newPicture.ID, err = primitive.ObjectIDFromHex(req.Pictures.ImageId)
	if err != nil {
		return nil, contextIDError

	}
	newPicture.OwnerID = userID
	newPicture.Data = req.Pictures.Data
	newPicture.Name = req.Pictures.Name
	newPicture.Tags = req.Pictures.Tags
	svc.UpdatePicture(newPicture)
	return &pbPicture.UpdatePictureResponse{Pictures: buildPictureMessage(newPicture)}, nil
}

func (s *PictureServiceController) DeletePicture(ctx context.Context, req *pbPicture.DeletePictureRequest) (*pbPicture.DeletePictureResponse, error) {
	svc := services.NewPictureService()
	id, err := primitive.ObjectIDFromHex(req.GetPictureId())
	if err != nil {
		return nil, contextIDError
	}
	svc.DeletePicture(id)
	return &pbPicture.DeletePictureResponse{}, nil
}

func (s *PictureServiceController) AddAccessToPicture(ctx context.Context, req *pbPicture.AddAccessToPictureRequest) (*pbPicture.AddAccessToPictureResponse, error) {
	svc := services.NewPictureService()
	id, err := primitive.ObjectIDFromHex(req.GetPictureId())
	accessId, err := primitive.ObjectIDFromHex(req.GetAccessId())
	if err != nil {
		return nil, contextIDError
	}
	_, err = svc.AddAccessToPicture(id, accessId)
	if err != nil {
		return nil, err
	}
	return &pbPicture.AddAccessToPictureResponse{}, nil
}

func (s *PictureServiceController) ListAlbumPictures(req *pbPicture.ListAlbumPicturesRequest, stream pbPicture.PictureService_ListAlbumPicturesServer) error {
	userID, err := GetIdFromContext(stream.Context())
	if err != nil {
		return contextIDError
	}
	albumID, err := primitive.ObjectIDFromHex(req.GetAlbumId())
	if err != nil {
		return contextIDError
	}
	svc := services.NewPictureService()
	albumSvc := services.NewAlbumService()
	hasAccess, err := albumSvc.UserHasAccessToAlbum(userID, albumID)
	if hasAccess == false || err != nil {
		return status.Errorf(codes.InvalidArgument, "User does not have access to album or album ID does not exist")
	}
	cur, err := svc.GetAllPicturesAlbumCursor(userID, albumID)
	if err != nil {
		return status.Errorf(codes.Internal, "Could not get all pictures cursor from DB")
	}
	var i int32 = 0
	for cur.Next(context.TODO()) {
		var elem models.Picture
		err := cur.Decode(&elem)
		if err != nil {
			log.Fatal(err)
		}
		stream.Send(&pbPicture.ListAlbumPicturesResponse{Pictures: buildPictureMessage(elem), Index: i})
		i++
	}
	defer cur.Close(context.TODO())
	return nil
}

func (s *PictureServiceController) ListPictures(req *pbPicture.ListPicturesRequest, stream pbPicture.PictureService_ListPicturesServer) error {
	userID, err := GetIdFromContext(stream.Context())
	if err != nil {
		return contextIDError
	}
	svc := services.NewPictureService()
	cur, err := svc.GetAllPicturesCursor(userID)
	if err != nil {
		log.Printf("Could not get all pictures")
		return status.Errorf(codes.Internal, "Could not get all pictures cursor from DB")
	}
	var i int32 = 0
	for cur.Next(context.TODO()) {
		var elem models.Picture
		err := cur.Decode(&elem)
		if err != nil {
			log.Fatal(err)
		}
		stream.Send(&pbPicture.ListPicturesResponse{Pictures: buildPictureMessage(elem), Index: i})
		i++
	}
	defer cur.Close(context.TODO())
	return nil
}

func (s *PictureServiceController) SearchPicturesByName(req *pbPicture.SearchPicturesByNameRequest, stream pbPicture.PictureService_SearchPicturesByNameServer) error {
	return nil
}

func (s *PictureServiceController) SearchPicturesByTag(req *pbPicture.SearchPicturesByTagRequest, stream pbPicture.PictureService_SearchPicturesByTagServer) error {
	return nil
}
