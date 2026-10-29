#!/usr/bin/env bash

git clone https://github.com/mod-playerbots/azerothcore-wotlk.git --branch Playerbot server

git clone https://github.com/NathanHandley/mod-ah-bot-plus.git --branch master server/modules/mod-ah-bot-plus
git clone https://github.com/jrad7/mod-dungeon-clear.git --branch master server/modules/mod-dungeon-clear
git clone https://github.com/ZhengPeiRu21/mod-individual-progression.git --branch master server/modules/mod-individual-progression
git clone https://github.com/Wishmaster117/mod-junk-to-gold.git --branch master server/modules/mod-junk-to-gold
git clone https://github.com/Wishmaster117/mod-multibot-bridge.git --branch main server/modules/mod-multibot-bridge
git clone https://github.com/mod-playerbots/mod-playerbots.git --branch master server/modules/mod-playerbots
git clone https://github.com/Rockhopper1776/mod-rndbot-buffs.git --branch main server/modules/mod-rndbot-buffs
git clone https://github.com/hermensbas/mod_weather_vibe.git --branch main server/modules/mod_weather_vibe

git clone git@github.com:Tehl/mod-altbot-sync.git --branch main server/modules/mod-altbot-sync

ln -sf "$(pwd)/host/.env" server/.env
ln -sf "$(pwd)/host/docker-compose.override.yml" server/docker-compose.override.yml

cd server
git apply ../patches/docker-compose.patch
cd ..
