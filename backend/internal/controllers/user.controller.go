package controllers

import (
	"context"
	"crypto/sha512"
	"encoding/hex"
	"errors"
	"math/rand"
	"picsManager/backend/internal/models"
	"picsManager/backend/internal/services"
	pbUser "picsManager/backend/pb/user"
	"regexp"
	"strconv"
	"time"

	"go.mongodb.org/mongo-driver/bson/primitive"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

type UserServiceController struct {
	pbUser.UnimplementedUserServiceServer
}

func validateNewUser(req *pbUser.CreateUserRequest, svc *services.Service) (bool, string) {
	lenPass := len([]rune(req.GetPassword()))
	if lenPass < 10 || lenPass > 64 {
		return false, "Error password length 10 -> 64"
	}
	match, err := regexp.MatchString("^[a-zA-Z0-9]+.?[a-zA-Z0-9]+@[a-zA-Z0-9]+\\.[a-zA-Z0-9]+$", req.GetEmail())
	if err != nil {
		return false, "Error regex " + err.Error()
	}
	if !match {
		return false, "Error email must be an email -> " + req.GetEmail()
	}
	var _, getByNameErr = svc.GetUserByEmail(req.GetEmail())
	if getByNameErr == nil {
		return false, "Error email already exists -> " + req.GetEmail()
	}
	return true, "Ok"

}

func hashPassword(pass string) string {
	hash := sha512.New()
	hash.Write([]byte(pass))
	return hex.EncodeToString(hash.Sum(nil))
}

func generateName(name string) string {
	rand.Seed(time.Now().UnixNano())
	nb := rand.Intn(999999)
	suffixName := "#" + strconv.Itoa(nb)
	return name + suffixName
}

func BuildUserMessage(obj models.User) *pbUser.UserMessage {
	return &pbUser.UserMessage{UserId: obj.ID.Hex(), Name: obj.Name, Email: obj.Email}
}

func (s *UserServiceController) CreateUser(ctx context.Context, req *pbUser.CreateUserRequest) (*pbUser.CreateUserResponse, error) {
	var user models.User

	svc := services.NewUserService()
	ok, err := validateNewUser(req, svc)
	if ok {
		user.Password = hashPassword(req.GetPassword())
		user.Email = req.GetEmail()
		user.Name = generateName(req.GetName())
		res, err := svc.CreateUser(user)
		if err != nil {
			return nil, err
		}
		id := res.InsertedID.(primitive.ObjectID).Hex()
		return &pbUser.CreateUserResponse{User: &pbUser.UserMessage{UserId: id, Name: user.Name, Email: user.Email}}, nil
	}
	return nil, errors.New(err)
}

func (s *UserServiceController) UpdateUser(ctx context.Context, req *pbUser.UpdateUserRequest) (*pbUser.UpdateUserResponse, error) {
	svc := services.NewUserService()

	id, err := primitive.ObjectIDFromHex(req.GetSource().UserId)
	if err != nil {
		return nil, err
	}
	user, err := svc.GetUser(id)
	if err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "Wrong id for user")
	}
	if req.Source.GetName() != "" {
		user.Name = generateName(req.Source.GetName())
	}
	if req.Source.GetEmail() != "" {
		user.Email = req.Source.GetEmail()
	}
	_, err = svc.UpdateUser(user)
	return &pbUser.UpdateUserResponse{User: BuildUserMessage(user)}, nil
}

func (s *UserServiceController) DeleteUser(ctx context.Context, req *pbUser.DeleteUserRequest) (*pbUser.DeleteUserResponse, error) {
	svc := services.NewUserService()

	id, err := primitive.ObjectIDFromHex(req.GetUserId())
	if err != nil {
		return nil, err
	}
	svc.DeleteUser(id)
	return &pbUser.DeleteUserResponse{}, nil
}

func (s *UserServiceController) SearchUsersByName(ctx context.Context, req *pbUser.SearchUsersByNameRequest) (*pbUser.SearchUsersByNameResponse, error) {
	svc := services.NewUserService()

	users, err := svc.FindUserByQuery(req.GetQuery())
	if err != nil {
		return nil, err
	}
	var res []*pbUser.UserMessage

	for _, user := range users {
		res = append(res, BuildUserMessage(*user))
	}
	return &pbUser.SearchUsersByNameResponse{Users: res}, nil
}
