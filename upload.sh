#!/bin/bash

curl -XPOST --data-binary @spiffs_fs_gz/config.json http://$1/fs/config.json
curl -XPOST --data-binary @spiffs_fs_gz/app.html http://$1/fs/app.html
