FROM golang:1.18

WORKDIR /data

COPY go.mod .
COPY go.sum .
# RUN apk --no-cache add ca-certificates

RUN go mod vendor

COPY . .

RUN go build  -o app ./init

CMD ["./app"]