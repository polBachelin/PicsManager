package tests

import (
	"context"
	"log"
	pbAlbum "picsManager/backend/pb/album"
	pbUser "picsManager/backend/pb/user"
	"testing"

	"google.golang.org/grpc"
	"google.golang.org/grpc/metadata"
)

func TestAlbum(t *testing.T) {
	ctx := context.Background()
	conn, err := grpc.DialContext(ctx, "bufnet", grpc.WithContextDialer(bufDialer), grpc.WithInsecure())
	if err != nil {
		t.Fatalf("Failed to dial bufnet: %v", err)
	}
	defer conn.Close()
	client := pbAlbum.NewAlbumServiceClient(conn)
	userClient := pbUser.NewUserServiceClient(conn)
	resp, _ := userClient.CreateUser(ctx, &pbUser.CreateUserRequest{Name: "hello", Email: "bernad.bachelin@gmail.com", Password: "1234567890"})
	userID := resp.User.UserId
	md, _ := metadata.FromIncomingContext(ctx)
	md.Append("id", userID)
	ctx = metadata.NewIncomingContext(ctx, md)

	t.Run("Create album", func(t *testing.T) {
		type expectation struct {
			out *pbAlbum.CreateAlbumResponse
			err error
		}
		var tests = map[string]struct {
			in       *pbAlbum.CreateAlbumRequest
			expected expectation
		}{
			"Must_Success": {
				in:       &pbAlbum.CreateAlbumRequest{Name: "hello"},
				expected: expectation{out: &pbAlbum.CreateAlbumResponse{Album: &pbAlbum.AlbumMessage{Name: "hello"}}, err: nil},
			},
		}
		for scenario, tt := range tests {
			t.Run(scenario, func(t *testing.T) {
				out, err := client.CreateAlbum(ctx, tt.in)
				log.Printf("[DEBUG]: resp: %v ### err: %v", out, err)
				if err != nil {
					if tt.expected.err.Error() != err.Error() {
						t.Errorf("Err -> \nWant: %q\nGot: %q\n", tt.expected.err, err)
					}
				} else {
					if tt.expected.out.Album.Name != out.Album.Name {
						t.Errorf("Out -> \nWant: %q\nGot : %q", tt.expected.out, out)
					}
				}
			})
		}
	})
	t.Cleanup(cleanup)
}
