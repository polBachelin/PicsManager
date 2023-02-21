package controllers

import (
	"context"
	"log"
	pbAuth "picsManager/backend/pb/authentication"
)

type AuthServiceController struct {
	pbAuth.UnimplementedAuthenticationServiceServer
}

func (s *AuthServiceController) Authentication(ctx context.Context, req *pbAuth.AuthenticationRequest) (*pbAuth.AuthenticationResponse, error) {
	log.Printf("Authentication route")
	return &pbAuth.AuthenticationResponse{Token: "token"}, nil
}
