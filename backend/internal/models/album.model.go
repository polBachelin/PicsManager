package models

import (
	"go.mongodb.org/mongo-driver/bson/primitive"
)

type Album struct {
	ID       primitive.ObjectID   `bson:"_id" json:"id,omitempty"`
	Name     string               `bson:"name" json:"name"`
	OwnerID  primitive.ObjectID   `bson:"ownerID" json:"ownerID"`
	AccessID []primitive.ObjectID `bson:"accessId" json:"accessId,omitempty"`
}
