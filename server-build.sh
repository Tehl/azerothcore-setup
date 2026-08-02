#!/usr/bin/env bash

podman build ./server -f server/apps/docker/Dockerfile --target db-import --tag acore/ac-wotlk-db-import:master
podman build ./server -f server/apps/docker/Dockerfile --target worldserver --tag acore/ac-wotlk-worldserver:master
podman build ./server -f server/apps/docker/Dockerfile --target authserver --tag acore/ac-wotlk-authserver:master
podman build ./server -f server/apps/docker/Dockerfile --target client-data --tag acore/ac-wotlk-client-data:master
