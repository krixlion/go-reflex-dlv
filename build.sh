#!/usr/bin/env bash
cd /app
go build -o main ${BUILD_ARGS} && \
dlv --listen=:${DEBUG_PORT} --headless=true --log=true ${DELVE_ARGS} --accept-multiclient --api-version=2 exec ./main -- ${RUN_ARGS}