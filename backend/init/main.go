package main

import (
	"flag"
	"fmt"
	"log"
	"net"

	pbAlbum "picsManager/backend/pb/album"
	pbAuth "picsManager/backend/pb/authentication"
	pbPicture "picsManager/backend/pb/picture"
	pbUser "picsManager/backend/pb/user"

	"google.golang.org/grpc"
)

var (
	port = flag.Int("port", 50051, "The server port")
)

type server struct {
	pbUser.UnimplementedUserServiceServer
	pbAlbum.UnimplementedAlbumServiceServer
	pbPicture.UnimplementedPictureServiceServer
	pbAuth.UnimplementedAuthenticationServiceServer
}

func main() {
	flag.Parse()
	lis, err := net.Listen("tcp", fmt.Sprintf(":%d", *port))
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}
	s := grpc.NewServer()
	pbUser.RegisterUserServiceServer(s, &server{})
	pbAlbum.RegisterAlbumServiceServer(s, &server{})
	pbPicture.RegisterPictureServiceServer(s, &server{})
	pbAuth.RegisterAuthenticationServiceServer(s, &server{})
	log.Printf("server listening at %v", lis.Addr())
	if err := s.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %v", err)
	}
}
