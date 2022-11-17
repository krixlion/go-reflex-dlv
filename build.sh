#!/usr/bin/env bash
cd /app
go build  -o main -race  ${BUILD_ARGS} && \
dlv --listen=:2345 --headless=true --log=true --accept-multiclient --api-version=2 exec ./main ${RUN_ARGS}