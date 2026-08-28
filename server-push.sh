#!/usr/bin/env bash

podman --ssh native image scp localhost/acore/ac-wotlk-db-import:master app-server::     || { exit 1; }
podman --ssh native image scp localhost/acore/ac-wotlk-worldserver:master app-server::   || { exit 1; }
podman --ssh native image scp localhost/acore/ac-wotlk-authserver:master app-server::    || { exit 1; }
podman --ssh native image scp localhost/acore/ac-wotlk-client-data:master app-server::   || { exit 1; }
