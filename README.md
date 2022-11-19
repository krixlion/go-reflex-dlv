# Go-Reflex-Devel

This is the repo for my [docker image](https://hub.docker.com/r/krixlion/go-reflex-dlv) that I use for development of microservices in go.

## Environment variables
BUILD_ARGS - file path \
RUN_ARGS - flags for compiled binary
DEBUG_PORT - port on which Delve server will run

## Mount
Container will read everything from `/app` and that's where you should mount your project root. 

## Examples

### Inside docker-compose.yml 
```docker-compose.yml
services:

  service:
    container_name: debug
    image: krixlion/go-reflex-dlv:1.19.3
    environment:
      - BUILD_ARGS=cmd/main.go
      - RUN_ARGS=-port 8080
      - DEBUG_PORT=2345
    volumes:
      - .:/app
    ports:
      # Map any port to internal port Delve listens on.
      - 7890:2345
```
