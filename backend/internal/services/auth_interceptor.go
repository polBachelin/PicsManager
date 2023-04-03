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

		apiServicePath + "PictureService/AddAccessToPicture":   {},
		apiServicePath + "PictureService/CreatePicture":        {},
		apiServicePath + "PictureService/UpdatePicture":        {},
		apiServicePath + "PictureService/DeletePicture":        {},
		apiServicePath + "PictureService/ListPictures":         {},
		apiServicePath + "PictureService/ListAlbumPictures":    {},
		apiServicePath + "PictureService/SearchPicturesByTag":  {},
		apiServicePath + "PictureService/SearchPicturesByName": {},
	}
}

var errMissingMetadata = status.Errorf(codes.InvalidArgument, "no incoming metadata in rpc context")

type wrappedStream struct {
	grpc.ServerStream
	ctx context.Context
}

func (s *wrappedStream) Context() context.Context {
	return s.ctx
}

func (i *AuthInterceptor) Stream() grpc.StreamServerInterceptor {
	return func(
		srv interface{},
		stream grpc.ServerStream,
		info *grpc.StreamServerInfo,
		handler grpc.StreamHandler,
	) error {
		log.Println("--> stream interceptor: ", info.FullMethod)
		id, err := i.authorize(stream.Context(), info.FullMethod)
		if err != nil {
			log.Println("Error: ", err)
			return err
		}
		md, ok := metadata.FromIncomingContext(stream.Context())
		if !ok {
			return errMissingMetadata
		}
		md.Append("id", id)
		ctx := metadata.NewIncomingContext(stream.Context(), md)
		return handler(srv, &wrappedStream{stream, ctx})
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
		id, err := i.authorize(ctx, info.FullMethod)
		if err != nil {
			log.Println("Error: ", err)
			return nil, err
		}
		md, ok := metadata.FromIncomingContext(ctx)
		if !ok {
			return errMissingMetadata, err
		}
		md.Append("id", id)
		ctx = metadata.NewIncomingContext(ctx, md)
		return handler(ctx, req)
	}
}

func (i *AuthInterceptor) authorize(ctx context.Context, method string) (string, error) {
	_, ok := accessiblePaths()[method]
	if !ok {
		return "", nil
	}
	md, ok := metadata.FromIncomingContext(ctx)
	if !ok {
		return "", status.Errorf(codes.Unauthenticated, "metadata is missing")
	}
	values := md["authorization"]
	if len(values) == 0 {
		return "", status.Errorf(codes.Unauthenticated, "authorization token is missing")
	}
	accessToken := values[0]
	token, err := ValidateToken(accessToken)
	if err != nil || token == nil || !token.Valid {
		return "", status.Errorf(codes.Unauthenticated, "Access token is invalid")
	}
	claims := token.Claims.(jwt.MapClaims)
	id, ok := claims["id"]
	if ok {
		return id.(string), nil
	} else {
		return "", status.Errorf(codes.Unauthenticated, "Could not get ID from token")
	}
}
