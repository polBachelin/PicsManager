FROM golang:1.18

WORKDIR /data

COPY . .
# RUN apk --no-cache add ca-certificates

RUN go mod vendor

RUN go build --mod=vendor --trimpath -o app ./init

CMD ["./app"]