package services

import (
	"context"
	"picsManager/backend/internal/models"

	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/bson/primitive"
	"go.mongodb.org/mongo-driver/mongo"
)

func NewPictureService() *Service {
	return NewService("picture_data")
}

func (p Service) CreatePicture(obj models.Picture) (*mongo.InsertOneResult, error) {
	if obj.ID == primitive.NilObjectID {
		obj.ID = primitive.NewObjectID()
	}
	res, err := p.collection.InsertOne(context.TODO(), obj)
	return res, err
}

func (p Service) GetPicture(id primitive.ObjectID) (models.Picture, error) {
	var res models.Picture

	cursor := p.collection.FindOne(context.TODO(), bson.M{"_id": id})
	err := cursor.Decode(&res)
	if err != nil {
		return models.Picture{ID: primitive.ObjectID{0}, Name: "", OwnerID: primitive.ObjectID{0}}, err
	}
	return res, nil
}

func (p Service) DeletePicture(id primitive.ObjectID) (interface{}, error) {
	res, err := p.collection.DeleteOne(context.TODO(), bson.M{"_id": id})
	return res.DeletedCount, err
}

func (p Service) UpdatePicture(obj models.Picture) (*mongo.UpdateResult, error) {
	update := bson.M{"$set": bson.M{"name": obj.Name, "data": obj.Data, "tags": obj.Tags, "albumId": obj.AlbumID, "ownerId": obj.OwnerID}}
	return p.collection.UpdateOne(context.TODO(), bson.M{"_id": obj.ID}, update)
}
