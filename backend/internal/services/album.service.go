package services

import (
	"context"
	"log"
	"picsManager/backend/internal/models"

	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/bson/primitive"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
)

func NewAlbumService() *Service {
	return NewService("album_data")
}

func (a Service) CreateAlbum(obj models.Album) (*mongo.InsertOneResult, error) {
	if obj.ID == primitive.NilObjectID {
		obj.ID = primitive.NewObjectID()
	}
	log.Println("creating album")
	res, err := a.collection.InsertOne(context.TODO(), obj)
	return res, err
}

func (a Service) GetAlbum(id primitive.ObjectID) (models.Album, error) {
	var res models.Album

	cursor := a.collection.FindOne(context.TODO(), bson.M{"_id": id})
	err := cursor.Decode(&res)
	if err != nil {
		return models.Album{ID: primitive.ObjectID{0}, Name: "", OwnerID: primitive.ObjectID{0}, AccessIDs: nil}, err
	}
	return res, nil
}

func (a Service) GetAlbumByName(name string) (models.Album, error) {
	var res models.Album

	cursor := a.collection.FindOne(context.TODO(), bson.M{"name": name})
	err := cursor.Decode(&res)
	if err != nil {
		return models.Album{ID: primitive.ObjectID{0}, Name: "", OwnerID: primitive.ObjectID{0}, AccessIDs: nil}, err
	}
	return res, nil
}

func (a Service) ListOwnedAlbums(ownerID primitive.ObjectID) ([]models.Album, error) {
	var res []models.Album

	findOptions := options.Find()
	cur, err := a.collection.Find(context.TODO(), bson.M{"_id": ownerID}, findOptions)
	if err != nil {
		log.Fatal(err)
	}
	for cur.Next(context.TODO()) {
		var elem models.Album
		err := cur.Decode(&elem)
		if err != nil {
			log.Fatal(err)
		}
		res = append(res, elem)
	}
	cur.Close(context.TODO())
	return res, err
}
