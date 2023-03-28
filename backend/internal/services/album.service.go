package services

import (
	"context"
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
	res, err := a.collection.InsertOne(context.TODO(), obj)
	return res, err
}

func (a Service) UpdateAlbum(obj models.Album) (*mongo.UpdateResult, error) {
	update := bson.M{"$set": bson.M{"name": obj.Name, "ownerId": obj.OwnerID}}
	return a.collection.UpdateOne(context.TODO(), bson.M{"_id": obj.ID}, update)

}

func (a Service) DeleteAlbum(id primitive.ObjectID) error {
	_, err := a.collection.DeleteOne(context.TODO(), bson.M{"_id": id})
	return err
}

func (a Service) AddAccessToAlbum(id primitive.ObjectID, accessID primitive.ObjectID) (*mongo.UpdateResult, error) {
	update := bson.M{"$push": bson.M{"accessIds": accessID}}
	return a.collection.UpdateOne(context.TODO(), bson.M{"_id": id}, update)
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

func (a Service) UserHasAccessToAlbum(userID primitive.ObjectID, albumID primitive.ObjectID) (bool, error) {
	album, err := a.GetAlbum(albumID)
	if err != nil {
		return false, err
	}
	for _, a := range album.AccessIDs {
		if userID == a {
			return true, nil
		}
	}
	return false, nil
}

func (a Service) ListOwnedAlbums(ownerID primitive.ObjectID) (*mongo.Cursor, error) {
	findOptions := options.Find()
	cur, err := a.collection.Find(context.TODO(), bson.M{"ownerID": ownerID}, findOptions)
	if err != nil {
		return nil, err
	}
	return cur, err
}

func (a Service) ListSharedAlbums(ownerID primitive.ObjectID) (*mongo.Cursor, error) {
	findOptions := options.Find()
	ownerIDArr := []primitive.ObjectID{ownerID}
	filter := bson.M{"accessIds": bson.M{"$in": ownerIDArr}}
	cur, err := a.collection.Find(context.TODO(), filter, findOptions)
	return cur, err
}

func (a Service) ListAlbums(ownerID primitive.ObjectID) (*mongo.Cursor, error) {
	findOptions := options.Find()
	ownerIDArr := []primitive.ObjectID{ownerID}
	filter := bson.M{"$or": []interface{}{bson.M{"ownerID": ownerID}, bson.M{"accessIds": bson.M{"$in": ownerIDArr}}}}
	cur, err := a.collection.Find(context.TODO(), filter, findOptions)
	return cur, err
}
