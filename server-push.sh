#!/usr/bin/env bash

podman image scp localhost/acore/ac-wotlk-db-import:master app-server::     || { exit 1; }
podman image scp localhost/acore/ac-wotlk-worldserver:master app-server::   || { exit 1; }
podman image scp localhost/acore/ac-wotlk-authserver:master app-server::    || { exit 1; }
podman image scp localhost/acore/ac-wotlk-client-data:master app-server::   || { exit 1; }
