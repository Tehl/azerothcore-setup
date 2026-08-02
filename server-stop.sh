#!/usr/bin/env bash

systemctl --user stop ac-worldserver \
    && systemctl --user stop ac-authserver
