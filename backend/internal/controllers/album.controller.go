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

func (s *AlbumServiceController) CreateAlbum(ctx context.Context, req *pbAlbum.CreateAlbumRequest) (*pbAlbum.CreateAlbumResponse, error) {
	userID, err := GetIdFromContext(ctx)
	if err != nil {
		log.Println("Error: ", err)
		return nil, err
	}
	albumSvc := services.NewAlbumService()
	var album models.Album
	album.Name = req.GetName()
	album.OwnerID = userID
	album.AccessIDs = make([]primitive.ObjectID, 0)
	res, err := albumSvc.CreateAlbum(album)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "Failed to create album")
	}
	return &pbAlbum.CreateAlbumResponse{Album: &pbAlbum.AlbumMessage{Name: album.Name, OwnerName: album.OwnerID.Hex(), AlbumId: res.InsertedID.(primitive.ObjectID).Hex()}}, nil
}

func (s *AlbumServiceController) UpdateAlbum(ctx context.Context, req *pbAlbum.UpdateAlbumRequest) (*pbAlbum.UpdateAlbumResponse, error) {
	return nil, nil
}

func (s *AlbumServiceController) DeleteAlbum(ctx context.Context, req *pbAlbum.DeleteAlbumRequest) (*pbAlbum.DeleteAlbumResponse, error) {
	return nil, nil
}

func (s *AlbumServiceController) ListAlbums(req *pbAlbum.ListAlbumsRequest, srv pbAlbum.AlbumService_ListAlbumsServer) error {
	return nil
}

func (s *AlbumServiceController) ListOwnedAlbums(req *pbAlbum.ListOwnedAlbumsRequest, srv pbAlbum.AlbumService_ListOwnedAlbumsServer) error {
	return nil
}

func (s *AlbumServiceController) ListSharedAlbums(req *pbAlbum.ListSharedAlbumsRequest, srv pbAlbum.AlbumService_ListSharedAlbumsServer) error {
	return nil
}

func (s *AlbumServiceController) SearchAlbumsByName(ctx context.Context, req *pbAlbum.SearchAlbumsByNameRequest) (*pbAlbum.SearchAlbumsByNameResponse, error) {
	return nil, nil
}
