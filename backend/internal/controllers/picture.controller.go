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

func buildPictureMessage(pic models.Picture) *pbPicture.PictureMessage {
	return &pbPicture.PictureMessage{AlbumId: pic.AlbumID.Hex(), OwnerName: pic.OwnerID.Hex(), Data: pic.Data, Name: pic.Name, ImageId: pic.ID.Hex(), Tags: pic.Tags}
}

func (s *PictureServiceController) CreatePicture(ctx context.Context, req *pbPicture.CreatePictureRequest) (*pbPicture.CreatePictureResponse, error) {
	userID, err := GetIdFromContext(ctx)
	if err != nil {
		log.Println("Error: ", err)
		return nil, err
	}
	svc := services.NewPictureService()
	var picture models.Picture
	picture.AlbumID, err = primitive.ObjectIDFromHex(req.AlbumId)
	picture.OwnerID = userID
	picture.Data = req.GetData()
	picture.Tags = req.GetTags()
	picture.Name = req.GetName()
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
		return nil, status.Errorf(codes.InvalidArgument, "Could not convert picture id to ObjectID")

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
		return nil, status.Errorf(codes.InvalidArgument, "Could not convert ID to ObjectID")
	}
	svc.DeletePicture(id)
	return &pbPicture.DeletePictureResponse{}, nil
}

func (s *PictureServiceController) ListAlbumPictures(req *pbPicture.ListAlbumPicturesRequest, serv pbPicture.PictureService_ListAlbumPicturesServer) error {
	return nil
}

func (s *PictureServiceController) ListPictures(req *pbPicture.ListPicturesRequest, srv pbPicture.PictureService_ListPicturesServer) error {
	return nil
}

func (s *PictureServiceController) SearchPicturesByTag(ctx context.Context, req *pbPicture.SearchPicturesByTagRequest) (*pbPicture.SearchPicturesByTagResponse, error) {
	return nil, nil
}

func (s *PictureServiceController) SearchPicturesByName(ctx context.Context, req *pbPicture.SearchPicturesByNameRequest) (*pbPicture.SearchPicturesByNameResponse, error) {
	return nil, nil
}
