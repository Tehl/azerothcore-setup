#!/usr/bin/env bash

podman build ./gdb -f gdb/Dockerfile --tag ubuntu:24.04-gdb

podman build ./server -f server/apps/docker/Dockerfile --build-arg=UBUNTU_VERSION=24.04-gdb \
    --target db-import --tag acore/ac-wotlk-db-import:master        || { exit 1; }
podman build ./server -f server/apps/docker/Dockerfile --build-arg=UBUNTU_VERSION=24.04-gdb \
    --target worldserver --tag acore/ac-wotlk-worldserver:master    || { exit 1; }
podman build ./server -f server/apps/docker/Dockerfile --build-arg=UBUNTU_VERSION=24.04-gdb \
    --target authserver --tag acore/ac-wotlk-authserver:master      || { exit 1; }
podman build ./server -f server/apps/docker/Dockerfile --build-arg=UBUNTU_VERSION=24.04-gdb \
    --target client-data --tag acore/ac-wotlk-client-data:master    || { exit 1; }
