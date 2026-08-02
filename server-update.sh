#!/usr/bin/env bash

echo "Update azerothcore..."

cd server
git pull

cd modules

for D in *; do 
    if [ -d "${D}" ]; then
        echo "Update ${D}...";
        cd ${D}
        git pull;
        cd ..
    fi
done

cd ../..