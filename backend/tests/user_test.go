package tests

import (
	"context"
	"errors"
	"log"
	pbUser "picsManager/backend/pb/user"
	"testing"

	"google.golang.org/grpc"
)

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
		resp, _ := client.CreateUser(ctx, &pbUser.CreateUserRequest{Name: "hello", Email: "bernad.bachelin@gmail.com", Password: "1234567890"})
		userID := resp.User.UserId
		var tests = map[string]struct {
			in       *pbUser.UpdateUserRequest
			expected expectation
		}{
			"ID does not exist": {
				in:       &pbUser.UpdateUserRequest{Source: &pbUser.UserMessage{UserId: "00000", Name: "hello", Email: "pol.bachelin@gmail.com"}},
				expected: expectation{out: nil, err: errors.New("rpc error: code = Unknown desc = the provided hex string is not a valid ObjectID")},
			},
			"Change name": {
				in:       &pbUser.UpdateUserRequest{Source: &pbUser.UserMessage{UserId: userID, Name: "nezName", Email: "pol.bachelin@gmail.com"}},
				expected: expectation{out: &pbUser.UpdateUserResponse{User: &pbUser.UserMessage{Email: "pol.bachelin@gmail.com"}}, err: nil},
			},
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

	t.Run("Search User by name", func(t *testing.T) {
		type expectation struct {
			out *pbUser.SearchUsersByNameResponse
			err error
		}
		client.CreateUser(ctx, &pbUser.CreateUserRequest{Name: "test", Email: "test.bachelin@gmail.com", Password: "1234567890"})
		usersRes := []*pbUser.UserMessage{{Name: "test", Email: "test.bachelin@gmail.com"}}
		var tests = map[string]struct {
			in       *pbUser.SearchUsersByNameRequest
			expected expectation
		}{
			"User is found": {
				in:       &pbUser.SearchUsersByNameRequest{Query: "st"},
				expected: expectation{out: &pbUser.SearchUsersByNameResponse{Users: usersRes}, err: nil},
			},
		}
		for scenario, tt := range tests {
			t.Run(scenario, func(t *testing.T) {
				out, err := client.SearchUsersByName(ctx, tt.in)
				log.Printf("[DEBUG]: resp: %v ### err: %v", out, err)
				if err != nil {
					if tt.expected.err.Error() != err.Error() {
						t.Errorf("Err -> \nWant: %q\nGot: %q\n", tt.expected.err, err)
					}
				} else {
					if tt.expected.out.Users[0].Email != out.Users[0].Email {
						t.Errorf("Out -> \nWant: %q\nGot : %q", tt.expected.out, out)
					}
				}
			})
		}
	})

	t.Cleanup(cleanup)
}
