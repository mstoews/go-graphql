## up: starts all containers in the background without forcing build
build:
	@echo "Building server..."
	go build server.go
	@echo "Finished started!"


schema:
	@echo "Generate code the schema"
	go run github.com/99designs/gqlgen generate


## up_build: stops docker-compose (if running), builds all projects and starts docker compose
start:
	@echo "Starting the server"
	go run server.go


## up_build: stops docker-compose (if running), builds all projects and starts docker compose
push:
	@echo "push"
	git add .; git commit -m 'update' ; git push origin main
	
