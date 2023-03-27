package services

import (
	"context"
	"picsManager/backend/internal/models"

	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/bson/primitive"
	"go.mongodb.org/mongo-driver/mongo"
)

func NewUserService() *Service {
	return NewService("user_data")
}

func (u Service) GetUser(id primitive.ObjectID) (models.User, error) {
	var result models.User

	cursor := u.collection.FindOne(context.TODO(), bson.M{"_id": id})
	err := cursor.Decode(&result)
	if err != nil {
		return models.User{ID: primitive.ObjectID{0}, Email: "", Password: ""}, err
	}
	return result, nil
}

func (u Service) GetUserByEmail(email string) (models.User, error) {
	var result models.User

	cursor := u.collection.FindOne(context.TODO(), bson.M{"email": email})
	err := cursor.Decode(&result)
	if err != nil {
		return models.User{ID: primitive.ObjectID{0}, Email: "", Password: ""}, err
	}
	return result, nil
}

func (u Service) GetUserByName(name string) (models.User, error) {
	var result models.User

	cursor := u.collection.FindOne(context.TODO(), bson.M{"name": name})
	err := cursor.Decode(&result)
	if err != nil {
		return models.User{ID: primitive.ObjectID{0}, Email: "", Password: ""}, err
	}
	return result, nil
}

func (u Service) CreateUser(obj models.User) (*mongo.InsertOneResult, error) {
	if obj.ID == primitive.NilObjectID {
		obj.ID = primitive.NewObjectID()
	}
	res, err := u.collection.InsertOne(context.TODO(), obj)
	return res, err
}

func (u Service) DeleteUser(id primitive.ObjectID) (interface{}, error) {
	res, err := u.collection.DeleteOne(context.TODO(), bson.M{"_id": id})
	return res.DeletedCount, err
}
