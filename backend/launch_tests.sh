#!/bin/bash

echo "=> Run Tests"
cd tests && docker-compose up --build -d && cd ..
go test ./tests -v
cd tests && docker-compose down && cd ..
