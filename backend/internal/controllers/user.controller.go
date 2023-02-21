package controllers

import (
	"context"
	pbUser "picsManager/backend/pb/user"
)

type UserServiceController struct {
	pbUser.UnimplementedUserServiceServer
}

func (s *UserServiceController) CreateUser(ctx context.Context, req *pbUser.CreateUserRequest) (*pbUser.CreateUserResponse, error) {
	return nil, nil
}

func (s *UserServiceController) UpdateUser(ctx context.Context, req *pbUser.UpdateUserRequest) (*pbUser.UpdateUserResponse, error) {
	return nil, nil
}

func (s *UserServiceController) DeleteUser(ctx context.Context, req *pbUser.DeleteUserRequest) (*pbUser.DeleteUserResponse, error) {
	return nil, nil
}

func (s *UserServiceController) SearchUsersByName(ctx context.Context, req *pbUser.SearchUsersByNameRequest) (*pbUser.SearchUsersByNameResponse, error) {
	return nil, nil
}
