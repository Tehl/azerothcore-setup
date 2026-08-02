#!/usr/bin/env bash

source .env
rsync -a . "$APP_SERVER_USER@$APP_SERVER_IP:srv/azerothcore" --delete-before
