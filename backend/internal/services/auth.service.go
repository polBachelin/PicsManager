package services

import "log"

func NewAuthService() *Service {
	return NewService("user_data")
}

func CreateToken() {
	log.Printf("TOKEN WILL BE CREATED")
}
