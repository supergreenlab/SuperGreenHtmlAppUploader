#!/bin/bash

curl -XPOST --data-binary @config.json http://$1/fs/config.json
curl -XPOST --data-binary @app.html http://$1/fs/app.html
