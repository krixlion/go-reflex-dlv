# Go-Reflex-Devel

This is the repo for my docker image [krixlion/go-reflex-dlv](https://hub.docker.com/r/krixlion/go-reflex-dlv) that I use for development of microservices in go.

## Environment variables
BUILD_ARGS - file path \
RUN_ARGS - flags for compiled binary


## Examples

### Inside docker-compose.yml 
```docker-compose.yml
services:

  article:
    container_name: debug
    image: krixlion/go-reflex-dlv:1.19.3
    environment:
      - BUILD_ARGS=cmd/main.go
    volumes:
      - .:/app
    networks:
      - dev-form
    ports:
      - 50051:50051
      # debug port
      - 2345:2345
```
