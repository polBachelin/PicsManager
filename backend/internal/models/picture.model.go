package models

import (
	"go.mongodb.org/mongo-driver/bson/primitive"
)

type Picture struct {
	ID       primitive.ObjectID   `bson:"_id" json:"id,omitempty"`
	Name     string               `bson:"name"`
	Data     []byte               `bson:"data" json:"data"`
	Tags     []string             `bson:"tags" json:"tags"`
	AlbumID  primitive.ObjectID   `bson:"albumId" json:"albumId"`
	OwnerID  primitive.ObjectID   `bson:"ownerId" json:"ownerId,omitempty"`
	AccessID []primitive.ObjectID `bson:"accessIds" json:"access_ids"`
}
