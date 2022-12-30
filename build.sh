#!/usr/bin/env bash
cd /app || exit

if [ "$TESTING" == "true" ]; then
    dlv --listen=:"${DEBUG_PORT}" --headless=true --log=true ${DELVE_ARGS} --accept-multiclient --api-version=2 test "${TEST_PATH}" -- -test.run '.*'
else 
    go build -gcflags='all=-N -l' -o main "${BUILD_ARGS}" &&
        dlv --listen=:"${DEBUG_PORT}" --headless=true --log=true "${DELVE_ARGS}" --accept-multiclient --api-version=2 exec ./main -- "${RUN_ARGS}"
fi
