#!/bin/bash
set -e

CONFIG_PATH=/data/options.json
CONFIG_DIR=/config/hadaemon
EXTRA_CMD="-D DEBUG --commtype=SSE"

DOMAIN=$(jq --raw-output ".domain" $CONFIG_PATH)

if [ ! -d $CONFIG_DIR ]; then
	mkdir -p $CONFIG_DIR
	cp /etc/appdaemon-example.yaml $CONFIG_DIR/appdaemon.yaml
	cp /etc/apps-example.yaml $CONFIG_DIR/apps.yaml
fi

echo 0.0.0.0 $DOMAIN >> /etc/hosts
echo "Running dev branch of appdaemon"
echo "Use at your own risk"
appdaemon -v
appdaemon -c $CONFIG_DIR $EXTRA_CMD

