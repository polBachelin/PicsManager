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
		return &pbUser.CreateUserResponse{User: &pbUser.UserMessage{UserId: res.(primitive.ObjectID).Hex(), Name: user.Name, Email: user.Email}}, nil
	}
	return nil, errors.New(err)
}

func (s *UserServiceController) UpdateUser(ctx context.Context, req *pbUser.UpdateUserRequest) (*pbUser.UpdateUserResponse, error) {
	return nil, nil
}

func (s *UserServiceController) DeleteUser(ctx context.Context, req *pbUser.DeleteUserRequest) (*pbUser.DeleteUserResponse, error) {
	return nil, nil
}

func (s *UserServiceController) SearchUsersByName(ctx context.Context, req *pbUser.SearchUsersByNameRequest) (*pbUser.SearchUsersByNameResponse, error) {
	return nil, nil
}
