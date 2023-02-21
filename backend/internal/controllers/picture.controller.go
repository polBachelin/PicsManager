package controllers

import (
	"context"
	pbPicture "picsManager/backend/pb/picture"
)

type PictureServiceController struct {
	pbPicture.UnimplementedPictureServiceServer
}

func (s *PictureServiceController) CreatePicture(ctx context.Context, in *pbPicture.CreatePictureRequest) (*pbPicture.CreatePictureResponse, error) {
	return nil, nil
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
