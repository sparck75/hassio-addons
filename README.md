## Hass.io plugins

[![Build Status](https://travis-ci.org/sparck75/HA-addons.svg?branch=master)](https://travis-ci.org/sparck75/HA-addons)

## Pre-built images

## Just code

These add-ons are not being built intentionally as they are for testing purposes only. You'll need to download and place them under `/addons` folder of your Hass.io instance. 

## [AppDaemon](https://github.com/sparck75/ha-addons/tree/master/appdaemon)

Beta-version of AppDaemon with HaDashobard v2.

## Usefull commands

If you're getting too much stalled containers, run (warning, can damage you setup!!!)

```
docker rm -v $(docker ps --filter status=exited -q 2>/dev/null)
docker rm -v $(docker ps --filter status=created -q 2>/dev/null)
```
Similar can be done for images.
