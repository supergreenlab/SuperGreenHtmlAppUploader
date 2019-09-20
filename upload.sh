#!/bin/bash

set -e

GREEN="\033[0;32m"
NC="\033[0m"

echo -e "Creating spiffs_fs_gz files:"
mkdir -p spiffs_fs_gz
rm -rf spiffs_fs_gz/*
for i in $(ls ./spiffs_fs); do
  gzip -c "./spiffs_fs/$i" >> "./spiffs_fs_gz/$i"
  echo -e "Created spiffs_fs_gz/$i: ${GREEN}Done${NC}"
done

curl -XPOST --data-binary @spiffs_fs_gz/config.json http://$1/fs/config.json
curl -XPOST --data-binary @spiffs_fs_gz/app.html http://$1/fs/app.html

rm -rf spiffs_fs_gz
