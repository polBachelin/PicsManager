package tests

import (
	"context"
	"log"
	"net"
	"picsManager/backend/internal/controllers"
	"picsManager/backend/internal/database"
	pbAlbum "picsManager/backend/pb/album"
	pbPicture "picsManager/backend/pb/picture"
	pbUser "picsManager/backend/pb/user"

	"google.golang.org/grpc"
	"google.golang.org/grpc/test/bufconn"
)

const bufSize = 1024 * 1024

var lis *bufconn.Listener

func init() {
	lis = bufconn.Listen(bufSize)
	s := grpc.NewServer()

	pbUser.RegisterUserServiceServer(s, &controllers.UserServiceController{})
	pbAlbum.RegisterAlbumServiceServer(s, &controllers.AlbumServiceController{})
	pbPicture.RegisterPictureServiceServer(s, &controllers.PictureServiceController{})

	go func() {
		if err := s.Serve(lis); err != nil {
			log.Fatalf("Server exited with error: %v", err)
		}
	}()
}

func cleanup() {
	database.DropDatabase()
}

func bufDialer(context.Context, string) (net.Conn, error) {
	return lis.Dial()
}
