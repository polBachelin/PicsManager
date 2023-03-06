package main

import (
	"context"
	"flag"
	"fmt"
	"log"
	"net"

	"picsManager/backend/internal/controllers"
	pbAlbum "picsManager/backend/pb/album"
	pbAuth "picsManager/backend/pb/authentication"
	pbPicture "picsManager/backend/pb/picture"
	pbUser "picsManager/backend/pb/user"

	"google.golang.org/grpc"
)

var (
	port = flag.Int("port", 50051, "The server port")
)

func streamInterceptor(
	srv interface{},
	stream grpc.ServerStream,
	info *grpc.StreamServerInfo,
	handler grpc.StreamHandler,
) error {
	log.Println("--> stream interceptor: ", info.FullMethod)
	return handler(srv, stream)
}

func unaryInterceptor(
	ctx context.Context,
	req interface{},
	info *grpc.UnaryServerInfo,
	handler grpc.UnaryHandler,
) (interface{}, error) {
	log.Println("--> unary interceptor: ", info.FullMethod)
	return handler(ctx, req)
}

func main() {
	flag.Parse()
	lis, err := net.Listen("tcp", fmt.Sprintf(":%d", *port))
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}

	s := grpc.NewServer(
		grpc.UnaryInterceptor(unaryInterceptor),
		grpc.StreamInterceptor(streamInterceptor),
	)
	pbUser.RegisterUserServiceServer(s, &controllers.UserServiceController{})
	pbAlbum.RegisterAlbumServiceServer(s, &controllers.AlbumServiceController{})
	pbPicture.RegisterPictureServiceServer(s, &controllers.PictureServiceController{})
	pbAuth.RegisterAuthenticationServiceServer(s, &controllers.AuthServiceController{})
	log.Printf("server listening at %v", lis.Addr())
	if err := s.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %v", err)
	}
}
