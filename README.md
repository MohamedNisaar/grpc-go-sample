# grpc-go-sample

##  Need to install `protoc`

## Generate gRPC code from .proto file

## Run the following command to generate Go code for the service and messages:

protoc --go_out=paths=source_relative:. --go-grpc_out=paths=source_relative:. proto/hello.proto

# go run server/main.go to start the server
# go run client/main.go to run the client