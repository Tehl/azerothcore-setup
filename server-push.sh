#!/usr/bin/env bash

podman image scp localhost/acore/ac-wotlk-db-import:master app-server::
podman image scp localhost/acore/ac-wotlk-worldserver:master app-server::
podman image scp localhost/acore/ac-wotlk-authserver:master app-server::
podman image scp localhost/acore/ac-wotlk-client-data:master app-server::
