package tests

import (
	"context"
	"errors"
	"log"
	"net"
	"picsManager/backend/internal/controllers"
	"picsManager/backend/internal/database"
	pbUser "picsManager/backend/pb/user"
	"testing"

	"google.golang.org/grpc"
	"google.golang.org/grpc/test/bufconn"
)

const bufSize = 1024 * 1024

var lis *bufconn.Listener

func init() {
	lis = bufconn.Listen(bufSize)
	s := grpc.NewServer()

	pbUser.RegisterUserServiceServer(s, &controllers.UserServiceController{})
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

func TestUser(t *testing.T) {
	ctx := context.Background()
	conn, err := grpc.DialContext(ctx, "bufnet", grpc.WithContextDialer(bufDialer), grpc.WithInsecure())
	if err != nil {
		t.Fatalf("Failed to dial bufnet: %v", err)
	}
	defer conn.Close()
	client := pbUser.NewUserServiceClient(conn)

	t.Run("Create User", func(t *testing.T) {
		type expectation struct {
			out *pbUser.CreateUserResponse
			err error
		}
		var tests = map[string]struct {
			in       *pbUser.CreateUserRequest
			expected expectation
		}{
			"Must_Success": {
				in:       &pbUser.CreateUserRequest{Name: "hello", Email: "pol.bachelin@gmail.com", Password: "1234567890"},
				expected: expectation{out: &pbUser.CreateUserResponse{User: &pbUser.UserMessage{Email: "pol.bachelin@gmail.com"}}, err: nil},
			},
			"Wrong email": {
				in:       &pbUser.CreateUserRequest{Name: "hello", Email: "pol.bachil.com", Password: "1234567890"},
				expected: expectation{out: nil, err: errors.New("rpc error: code = Unknown desc = Error email must be an email -> pol.bachil.com")},
			},
			"Wrong password": {
				in:       &pbUser.CreateUserRequest{Name: "hello", Email: "bernard.cool@gmail.com", Password: "1234"},
				expected: expectation{out: nil, err: errors.New("rpc error: code = Unknown desc = Error password length 10 -> 64")},
			},
		}
		for scenario, tt := range tests {
			t.Run(scenario, func(t *testing.T) {
				out, err := client.CreateUser(ctx, tt.in)
				log.Printf("[DEBUG]: resp: %v ### err: %v", out, err)
				if err != nil {
					if tt.expected.err.Error() != err.Error() {
						t.Errorf("Err -> \nWant: %q\nGot: %q\n", tt.expected.err, err)
					}
				} else {
					if tt.expected.out.User.Email != out.User.Email {
						t.Errorf("Out -> \nWant: %q\nGot : %q", tt.expected.out, out)
					}
				}
			})
		}
	})

	t.Run("Update User", func(t *testing.T) {
		type expectation struct {
			out *pbUser.UpdateUserResponse
			err error
		}
		var tests = map[string]struct {
			in       *pbUser.UpdateUserRequest
			expected expectation
		}{
			"ID does not exist": {
				in:       &pbUser.UpdateUserRequest{Source: &pbUser.UserMessage{Name: "hello", Email: "pol.bachelin@gmail.com"}},
				expected: expectation{out: &pbUser.UpdateUserResponse{User: &pbUser.UserMessage{Email: "pol.bachelin@gmail.com"}}, err: nil},
			},
			// "Wrong email": {
			// 	in:       &pbUser.UpdateUserRequest{Name: "hello", Email: "pol.bachil.com", Password: "1234567890"},
			// 	expected: expectation{out: nil, err: errors.New("rpc error: code = Unknown desc = Error email must be an email -> pol.bachil.com")},
			// },
			// "Wrong password": {
			// 	in:       &pbUser.UpdateUserRequest{Name: "hello", Email: "bernard.cool@gmail.com", Password: "1234"},
			// 	expected: expectation{out: nil, err: errors.New("rpc error: code = Unknown desc = Error password length 10 -> 64")},
			// },
		}
		for scenario, tt := range tests {
			t.Run(scenario, func(t *testing.T) {
				out, err := client.UpdateUser(ctx, tt.in)
				log.Printf("[DEBUG]: resp: %v ### err: %v", out, err)
				if err != nil {
					if tt.expected.err.Error() != err.Error() {
						t.Errorf("Err -> \nWant: %q\nGot: %q\n", tt.expected.err, err)
					}
				} else {
					if tt.expected.out.User.Email != out.User.Email {
						t.Errorf("Out -> \nWant: %q\nGot : %q", tt.expected.out, out)
					}
				}
			})
		}
	})

	t.Cleanup(cleanup)
}
