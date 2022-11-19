# Go-Reflex-Devel

This is the repo for my [docker image](https://hub.docker.com/r/krixlion/go-reflex-dlv) that I use for development of microservices in go.

## Environment variables
BUILD_ARGS - file path \
RUN_ARGS - flags for compiled binary
DEBUG_PORT - port on which Delve server will run



## Examples

### Inside docker-compose.yml 
```docker-compose.yml
services:

  article:
    container_name: debug
    image: krixlion/go-reflex-dlv:1.19.3
    environment:
      - BUILD_ARGS=cmd/main.go
      - RUN_ARGS=-p 50051
      - DEBUG_PORT=2345
    volumes:
      - .:/app
    ports:
      # Map any port to internal port Delve listens on.
      - 7890:2345
```
