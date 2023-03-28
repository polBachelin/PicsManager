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

func (u Service) UpdateUser(obj models.User) (*mongo.UpdateResult, error) {
	update := bson.M{"$set": bson.M{"name": obj.Name, "email": obj.Email}}
	return u.collection.UpdateOne(context.TODO(), bson.M{"_id": obj.ID}, update)
}

func (u Service) FindUserByQuery(query string) ([]*models.User, error) {
	model := mongo.IndexModel{Keys: bson.D{{"name", "text"}}}
	_, err := u.collection.Indexes().CreateOne(context.TODO(), model)
	if err != nil {
		return nil, err
	}
	filter := bson.D{{"$text", bson.D{{"$search", query}}}}
	cursor, err := u.collection.Find(context.TODO(), filter)
	if err != nil {
		return nil, err
	}
	var res []*models.User
	if err = cursor.All(context.TODO(), &res); err != nil {
		return nil, err
	}
	return res, nil
}
