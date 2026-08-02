#!/usr/bin/env bash

podman-compose -f server-compose.yml up ac-db-import \
    && podman-compose -f server-compose.yml down ac-db-import
