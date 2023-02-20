find . -name '*.proto' | xargs -L1 protoc --proto_path=. --dart_out=grpc:./source --plugin=protoc-gen-dart=$HOME/.pub-cache/bin/protoc-gen-dart -I.
