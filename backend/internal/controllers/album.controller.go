package controllers

import (
	"context"
	"log"
	"picsManager/backend/internal/models"
	"picsManager/backend/internal/services"
	pbAlbum "picsManager/backend/pb/album"

	"go.mongodb.org/mongo-driver/bson/primitive"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

type AlbumServiceController struct {
	pbAlbum.UnimplementedAlbumServiceServer
}

func buildAlbumMessage(album models.Album) *pbAlbum.AlbumMessage {
	return &pbAlbum.AlbumMessage{Name: album.Name, OwnerName: album.OwnerID.Hex(), AlbumId: album.ID.Hex()}
}

func (s *AlbumServiceController) CreateAlbum(ctx context.Context, req *pbAlbum.CreateAlbumRequest) (*pbAlbum.CreateAlbumResponse, error) {
	userID, err := GetIdFromContext(ctx)
	if err != nil {
		log.Println("Error: ", err)
		return nil, err
	}
	albumSvc := services.NewAlbumService()
	var album models.Album
	album.ID = primitive.NilObjectID
	album.Name = req.GetName()
	album.OwnerID = userID
	album.AccessID = make([]primitive.ObjectID, 0)
	res, err := albumSvc.CreateAlbum(album)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "Failed to create album")
	}
	return &pbAlbum.CreateAlbumResponse{Album: &pbAlbum.AlbumMessage{Name: album.Name, OwnerName: album.OwnerID.Hex(), AlbumId: res.InsertedID.(primitive.ObjectID).Hex()}}, nil
}

func (s *AlbumServiceController) UpdateAlbum(ctx context.Context, req *pbAlbum.UpdateAlbumRequest) (*pbAlbum.UpdateAlbumResponse, error) {
	userID, err := GetIdFromContext(ctx)
	if err != nil {
		log.Printf("Error: %s", err)
		return nil, err
	}
	svc := services.NewAlbumService()
	var newAlbum models.Album
	newAlbum.ID, err = primitive.ObjectIDFromHex(req.Source.AlbumId)
	if err != nil {
		return nil, contextIDError
	}
	alb, err := svc.GetAlbum(newAlbum.ID)
	if alb.OwnerID != userID || err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "User does not have access to album or album ID does not exist")
	}
	newAlbum.OwnerID = userID
	newAlbum.Name = req.Source.Name
	svc.UpdateAlbum(newAlbum)
	return &pbAlbum.UpdateAlbumResponse{Album: buildAlbumMessage(newAlbum)}, nil
}

func (s *AlbumServiceController) DeleteAlbum(ctx context.Context, req *pbAlbum.DeleteAlbumRequest) (*pbAlbum.DeleteAlbumResponse, error) {
	svc := services.NewAlbumService()
	id, err := primitive.ObjectIDFromHex(req.GetAlbumId())
	if err != nil {
		return nil, contextIDError
	}
	svc.DeleteAlbum(id)
	return &pbAlbum.DeleteAlbumResponse{}, nil
}

func (s *AlbumServiceController) AddAccessToAlbum(ctx context.Context, req *pbAlbum.AddAccessToAlbumRequest) (*pbAlbum.AddAccessToAlbumResponse, error) {
	svc := services.NewAlbumService()
	albumId, err := primitive.ObjectIDFromHex(req.AlbumId)
	if err != nil {
		return nil, contextIDError
	}
	accessId, err := primitive.ObjectIDFromHex(req.AccessId)
	if err != nil {
		return nil, contextIDError
	}
	res, err := svc.AddAccessToAlbum(albumId, accessId)
	if err != nil {
		log.Printf(err.Error())
		return nil, err
	}
	return &pbAlbum.AddAccessToAlbumResponse{}, nil
}

func (s *AlbumServiceController) ListAlbums(req *pbAlbum.ListAlbumsRequest, stream pbAlbum.AlbumService_ListAlbumsServer) error {
	userID, err := GetIdFromContext(stream.Context())
	if err != nil {
		return contextIDError
	}
	svc := services.NewAlbumService()
	cur, err := svc.ListAlbums(userID)
	if err != nil {
		log.Printf("Could not get all pictures from cursor: %s", err)
		return status.Errorf(codes.Internal, "Could not get all pictures cursor from DB")
	}
	var i int32 = 0
	for cur.Next(context.TODO()) {
		var elem models.Album
		err := cur.Decode(&elem)
		if err != nil {
			log.Fatal(err)
		}
		stream.Send(&pbAlbum.ListAlbumsResponse{Albums: buildAlbumMessage(elem), Index: i})
		i++
	}
	defer cur.Close(context.TODO())
	return nil
}

func (s *AlbumServiceController) ListOwnedAlbums(req *pbAlbum.ListOwnedAlbumsRequest, stream pbAlbum.AlbumService_ListOwnedAlbumsServer) error {
	userID, err := GetIdFromContext(stream.Context())
	if err != nil {
		return contextIDError
	}
	svc := services.NewAlbumService()
	cur, err := svc.ListOwnedAlbums(userID)
	if err != nil {
		return status.Errorf(codes.Internal, "Could not get all pictures cursor from DB")
	}
	var i int32 = 0
	for cur.Next(context.TODO()) {
		var elem models.Album
		err := cur.Decode(&elem)
		if err != nil {
			log.Fatal(err)
		}
		stream.Send(&pbAlbum.ListOwnedAlbumsResponse{Albums: buildAlbumMessage(elem), Index: i})
		i++
	}
	defer cur.Close(context.TODO())
	return nil
}

func (s *AlbumServiceController) ListSharedAlbums(req *pbAlbum.ListSharedAlbumsRequest, stream pbAlbum.AlbumService_ListSharedAlbumsServer) error {
	userID, err := GetIdFromContext(stream.Context())
	svc := services.NewAlbumService()
	cur, err := svc.ListSharedAlbums(userID)
	if err != nil {
		return status.Errorf(codes.Internal, "Could not get all pictures cursor from DB")
	}
	var i int32 = 0
	for cur.Next(context.TODO()) {
		var elem models.Album
		err := cur.Decode(&elem)
		if err != nil {
			log.Fatal(err)
		}
		stream.Send(&pbAlbum.ListSharedAlbumsResponse{Albums: buildAlbumMessage(elem), Index: i})
		i++
	}
	defer cur.Close(context.TODO())
	return nil
}

func (s *AlbumServiceController) SearchAlbumsByName(ctx context.Context, req *pbAlbum.SearchAlbumsByNameRequest) (*pbAlbum.SearchAlbumsByNameResponse, error) {
	svc := services.NewAlbumService()

	albums, err := svc.FindAlbumsByName(req.GetQuery())
	if err != nil {
		return nil, err
	}
	var res []*pbAlbum.AlbumMessage

	for _, album := range albums {
		res = append(res, buildAlbumMessage(*album))
	}
	return &pbAlbum.SearchAlbumsByNameResponse{Albums: res}, nil
}
