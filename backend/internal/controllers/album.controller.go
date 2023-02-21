package controllers

import (
	"context"
	pbAlbum "picsManager/backend/pb/album"
)

type AlbumServiceController struct {
	pbAlbum.UnimplementedAlbumServiceServer
}

func (s *AlbumServiceController) CreateAlbum(ctx context.Context, req *pbAlbum.CreateAlbumRequest) (*pbAlbum.CreateAlbumResponse, error) {
	return nil, nil
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
