.PHONY: gen-graphql, gen-grpc

gen-graphql:
	go run github.com/99designs/gqlgen generate

gen-grpc:
	protoc --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative  grpc/*.proto

