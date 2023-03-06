package database

import (
	"context"
	"log"
	"picsManager/backend/pkg/utils"

	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
)

var (
	dbHost     = utils.GetEnvVar("DB_HOST", "0.0.0.0")
	dbPort     = utils.GetEnvVar("DB_PORT", "27017")
	dbUsername = utils.GetEnvVar("DB_USERNAME", "root")
	dbPass     = utils.GetEnvVar("DB_PASSWORD", "pass12345")
	dbName     = utils.GetEnvVar("DB_NAME", "picsManager")
	uri        = "mongodb://" + dbUsername + ":" + dbPass + "@" + dbHost + ":" + dbPort
)

type database struct {
	db *mongo.Database
}

var databaseConnection = &database{
	db: nil,
}

func GetDatabaseConnection() *mongo.Database {
	if databaseConnection.db != nil {
		return databaseConnection.db
	}
	clientOptions := options.Client().ApplyURI(uri)
	client, err := mongo.Connect(context.TODO(), clientOptions)
	if err != nil {
		log.Fatal(err)
	}
	err = client.Ping(context.TODO(), nil)
	if err != nil {
		log.Fatal(err)
	}
	db := &database{
		db: client.Database(dbName),
	}
	return db.db
}

func DropDatabase() {
	GetDatabaseConnection().Drop(context.TODO())
}

type ErrDatabase string

func (e ErrDatabase) Error() string {
	return "Invalid Database output -> " + string(e)
}
