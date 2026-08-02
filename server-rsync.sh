#!/usr/bin/env bash

rsync -a . "$(APP_SERVER_USER)@${APP_SERVER_IP}:srv/azerothcore" --delete-before
