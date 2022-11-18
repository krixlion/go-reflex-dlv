# Go-Reflex-Devel

This is the repo for my docker image [krixlion/go-reflex-dlv](https://hub.docker.com/r/krixlion/go-reflex-dlv) that I use for development of microservices in go.

## Environment variables
BUILD_ARGS - file path \
RUN_ARGS - flags for your compiled binary

## Mount
Container will read everything from `/app` and that's where you should mount your project files. 

## Examples

### Inside docker-compose.yml 
```docker-compose.yml
services:

  service:
    container_name: debug
    image: krixlion/go-reflex-dlv:1.19.3
    environment:
      - BUILD_ARGS=cmd/main.go
    volumes:
      - .:/app
    ports:
      - 8080:80
      # debug port
      - 2345:2345
```
