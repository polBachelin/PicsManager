package services

import (
	"context"
	"picsManager/backend/internal/models"

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
