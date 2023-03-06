package controllers

import (
	"context"
	"errors"
	"fmt"
	"picsManager/backend/internal/services"
	pbAuth "picsManager/backend/pb/authentication"
)

type AuthServiceController struct {
	pbAuth.UnimplementedAuthenticationServiceServer
}

func (s *AuthServiceController) Authentication(ctx context.Context, req *pbAuth.AuthenticationRequest) (*pbAuth.AuthenticationResponse, error) {

	svc := services.NewUserService()
	dbUser, err := svc.GetUserByEmail(req.Email)
	if err != nil {
		fmt.Println("[ERR]: AuthenticateUser: ", err)
		return nil, err
	}
	if dbUser.Password != hashPassword(req.Password) {
		fmt.Println("[ERR]: AuthenticateUser: ", err)
		return nil, errors.New("Wrong password")
	}
	tokenString := services.GenerateToken(dbUser.ID)
	if tokenString == "" {
		return nil, errors.New("Could not generate token")
	}
	return &pbAuth.AuthenticationResponse{Token: tokenString}, nil
}
