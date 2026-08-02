#!/usr/bin/env bash

podman-compose up ac-db-import \
    && podman-compose down ac-db-import
