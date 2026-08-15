#!/usr/bin/env bash

source .env

cd server

mkdir -p env/dist/etc/modules

# env/dist/etc conf
cp src/server/apps/authserver/authserver.conf.dist env/dist/etc/authserver.conf.dist
cp src/server/apps/authserver/authserver.conf.dist env/dist/etc/authserver.conf

cp src/tools/dbimport/dbimport.conf.dist env/dist/etc/dbimport.conf.dist
cp src/tools/dbimport/dbimport.conf.dist env/dist/etc/dbimport.conf

cp src/server/apps/worldserver/worldserver.conf.dist env/dist/etc/worldserver.conf.dist
cp src/server/apps/worldserver/worldserver.conf.dist env/dist/etc/worldserver.conf

cp modules/mod-ah-bot-plus/conf/mod_ahbot.conf.dist env/dist/etc/modules/mod_ahbot.conf.dist
cp modules/mod-ah-bot-plus/conf/mod_ahbot.conf.dist env/dist/etc/modules/mod_ahbot.conf

cp modules/mod-dungeon-clear/conf/mod_dungeon_clear.conf.dist env/dist/etc/modules/mod_dungeon_clear.conf.dist
cp modules/mod-dungeon-clear/conf/mod_dungeon_clear.conf.dist env/dist/etc/modules/mod_dungeon_clear.conf

cp modules/mod-individual-progression/conf/individualProgression.conf.dist env/dist/etc/modules/individualProgression.conf.dist
cp modules/mod-individual-progression/conf/individualProgression.conf.dist env/dist/etc/modules/individualProgression.conf

cp modules/mod-multibot-bridge/conf/MultiBotBridge.conf.dist env/dist/etc/modules/MultiBotBridge.conf.dist
cp modules/mod-multibot-bridge/conf/MultiBotBridge.conf.dist env/dist/etc/modules/MultiBotBridge.conf

cp modules/mod-junk-to-gold/conf/mod_junk_to_gold.conf.dist env/dist/etc/modules/mod_junk_to_gold.conf.dist
cp modules/mod-junk-to-gold/conf/mod_junk_to_gold.conf.dist env/dist/etc/modules/mod_junk_to_gold.conf

cp modules/mod-playerbots/conf/playerbots.conf.dist env/dist/etc/modules/playerbots.conf.dist
cp modules/mod-playerbots/conf/playerbots.conf.dist env/dist/etc/modules/playerbots.conf

cp modules/mod-rndbot-buffs/conf/mod_rndbot_buffs.conf.dist env/dist/etc/modules/mod_rndbot_buffs.conf.dist
cp modules/mod-rndbot-buffs/conf/mod_rndbot_buffs.conf.dist env/dist/etc/modules/mod_rndbot_buffs.conf

cp modules/mod_weather_vibe/conf/mod_weather_vibe.conf.dist env/dist/etc/modules/mod_weather_vibe.conf.dist
cp modules/mod_weather_vibe/conf/mod_weather_vibe.conf.dist env/dist/etc/modules/mod_weather_vibe.conf

cp modules/mod-altbot-sync/conf/mod_altbot_sync.conf.dist env/dist/etc/modules/mod_altbot_sync.conf.dist
cp modules/mod-altbot-sync/conf/mod_altbot_sync.conf.dist env/dist/etc/modules/mod_altbot_sync.conf

# Individual Progression optional extras
cp modules/mod-individual-progression/optional/sql/world/zz_optional_ammo_stack_size.sql modules/mod-individual-progression/data/sql/world/base
cp modules/mod-individual-progression/optional/sql/world/zz_optional_aq_quest_nerf.sql modules/mod-individual-progression/data/sql/world/base
cp modules/mod-individual-progression/optional/sql/world/zz_optional_item_stack_sizes.sql modules/mod-individual-progression/data/sql/world/base
cp modules/mod-individual-progression/optional/sql/world/zz_optional_limit_spells_to_expansion.sql modules/mod-individual-progression/data/sql/world/base
cp modules/mod-individual-progression/optional/sql/world/zz_optional_remove_heirlooms.sql modules/mod-individual-progression/data/sql/world/base
cp modules/mod-individual-progression/optional/sql/world/zz_optional_restore_potion_cd.sql modules/mod-individual-progression/data/sql/world/base
cp modules/mod-individual-progression/optional/sql/world/zz_optional_spell_damage_and_healing.sql modules/mod-individual-progression/data/sql/world/base
cp modules/mod-individual-progression/optional/sql/world/zz_optional_tbc_heroic_dungeon_keys_nerf.sql modules/mod-individual-progression/data/sql/world/base
cp modules/mod-individual-progression/optional/sql/world/zz_optional_unobtainable_items.sql modules/mod-individual-progression/data/sql/world/base
cp modules/mod-individual-progression/optional/sql/world/zz_optional_vanilla_crafting_requirements.sql modules/mod-individual-progression/data/sql/world/base
cp modules/mod-individual-progression/optional/sql/world/zz_optional_vanilla_transports.sql modules/mod-individual-progression/data/sql/world/base

7z e modules/mod-individual-progression/optional/dbc.7z -y -oenv/dist/data/dbc *.dbc
7z e modules/mod-individual-progression/optional/patch-V.7z -y -oenv/dist/data/dbc *.dbc

7z e modules/mod-individual-progression/optional/dbc.7z -y -oenv/mpq *.mpq
7z e modules/mod-individual-progression/optional/patch-V.7z -y -oenv/mpq *.mpq

# Realmlist
echo "UPDATE realmlist SET address='$APP_SERVER_IP';" > data/sql/custom/db_auth/realmlist.sql

cd ..