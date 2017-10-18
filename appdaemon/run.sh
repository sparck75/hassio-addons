#!/bin/bash
set -e

CONFIG_PATH=/data/options.json
CONFIG_DIR=/config/hadaemon

DOMAIN=$(jq --raw-output ".domain" $CONFIG_PATH)
COMMTYPE=$(jq --raw-output ".commtype" $CONFIG_PATH)
DEBUGGING=$(jq --raw-output ".debugging" $CONFIG_PATH)

if [ ! -d $CONFIG_DIR ]; then
	mkdir -p $CONFIG_DIR
	cp /etc/appdaemon-example.yaml $CONFIG_DIR/appdaemon.yaml
	cp /etc/apps-example.yaml $CONFIG_DIR/apps.yaml
fi


if [ $DEBUGGING = "debug" ]; then
  EXTRA_CMD="-D DEBUG"
elif [ $DEBUGGING = "info" ]; then
  EXTRA_CMD="-D INFO"
elif [ $DEBUGGING = "warning" ]; then
  EXTRA_CMD="-D WARNING"
elif [ $DEBUGGING = "error" ]; then
  EXTRA_CMD="-D ERROR"
elif [ $DEBUGGING = "critical" ]; then
  EXTRA_CMD="-D CRITICAL"
elif [ $DEBUGGING = "none" ]; then
  EXTRA_CMD=" "
else
  echo "Invalid debugging option in config.json.\n Valid value are: debug, info, warning, error, critical, none"
  EXTRA_CMD=" "
fi

if [ $COMMTYPE == "sse" ]; then
  EXTRA_CMD2="--commtype=SSE "
elif [ $COMMTYPE == "websockets" ]; then
  EXTRA_CMD2="--commtype=WEBSOCKETS "  
else
  echo "Invalid commtype option in config.json.\n (Valid value are: websockets or sse"
  EXTRA_CMD2=" "
fi
echo 0.0.0.0 $DOMAIN >> /etc/hosts

appdaemon -c $CONFIG_DIR $EXTRA_CMD $EXTRA_CMD2


