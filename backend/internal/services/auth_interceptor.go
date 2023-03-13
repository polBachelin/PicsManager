package services

import (
	"context"
	"log"

	"github.com/golang-jwt/jwt/v4"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/metadata"
	"google.golang.org/grpc/status"
)

type AuthInterceptor struct{}

func NewAuthInterceptor() *AuthInterceptor {
	return &AuthInterceptor{}
}

func accessiblePaths() map[string]struct{} {
	const apiServicePath = "/"

	return map[string]struct{}{
		apiServicePath + "AlbumService/CreateAlbum":        {},
		apiServicePath + "AlbumService/UpdateAlbum":        {},
		apiServicePath + "AlbumService/DeleteAlbum":        {},
		apiServicePath + "AlbumService/ListAlbums":         {},
		apiServicePath + "AlbumService/ListOwnedAlbums":    {},
		apiServicePath + "AlbumService/ListSharedAlbums":   {},
		apiServicePath + "AlbumService/SearchAlbumsByName": {},
	}
}

func (i *AuthInterceptor) Unary() grpc.UnaryServerInterceptor {
	return func(
		ctx context.Context,
		req interface{},
		info *grpc.UnaryServerInfo,
		handler grpc.UnaryHandler,
	) (interface{}, error) {
		log.Println("--> unary interceptor: ", info.FullMethod)
		newCtx, err := i.authorize(ctx, info.FullMethod)
		if err != nil {
			log.Println("Error: ", err)
			return nil, err
		}
		return handler(newCtx, req)
	}
}

func (i *AuthInterceptor) authorize(ctx context.Context, method string) (context.Context, error) {
	_, ok := accessiblePaths()[method]
	if !ok {
		return ctx, nil
	}
	md, ok := metadata.FromIncomingContext(ctx)
	if !ok {
		return ctx, status.Errorf(codes.Unauthenticated, "metadata is missing")
	}
	values := md["authorization"]
	if len(values) == 0 {
		return ctx, status.Errorf(codes.Unauthenticated, "authorization token is missing")
	}
	accessToken := values[0]
	token, err := ValidateToken(accessToken)
	if err != nil || token == nil || !token.Valid {
		return ctx, status.Errorf(codes.Unauthenticated, "Access token is invalid")
	}
	claims := token.Claims.(jwt.MapClaims)
	id, ok := claims["id"]
	if ok {
		newCtx := metadata.AppendToOutgoingContext(ctx, "id", id.(string))
		return newCtx, nil
	} else {
		return ctx, status.Errorf(codes.Unauthenticated, "Could not get ID from token")
	}
}
