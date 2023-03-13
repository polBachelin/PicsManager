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

func (s *PictureServiceController) UpdatePicture(ctx context.Context, in *pbPicture.UpdatePictureRequest) (*pbPicture.UpdatePictureResponse, error) {
	return nil, nil
}

func (s *PictureServiceController) DeletePicture(ctx context.Context, in *pbPicture.DeletePictureRequest) (*pbPicture.DeletePictureResponse, error) {
	return nil, nil
}

func (s *PictureServiceController) ListAlbumPictures(req *pbPicture.ListAlbumPicturesRequest, serv pbPicture.PictureService_ListAlbumPicturesServer) error {
	return nil
}

func (s *PictureServiceController) ListPictures(req *pbPicture.ListPicturesRequest, srv pbPicture.PictureService_ListPicturesServer) error {
	return nil
}

func (s *PictureServiceController) SearchPicturesByTag(ctx context.Context, in *pbPicture.SearchPicturesByTagRequest) (*pbPicture.SearchPicturesByTagResponse, error) {
	return nil, nil
}

func (s *PictureServiceController) SearchPicturesByName(ctx context.Context, in *pbPicture.SearchPicturesByNameRequest) (*pbPicture.SearchPicturesByNameResponse, error) {
	return nil, nil
}
