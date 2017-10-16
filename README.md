## Hass.io plugins

![Project Stage][project-stage-shield]
![Maintenance][maintenance-shield]
![Awesome][awesome-shield]
[![License][license-shield]](LICENSE.md)

[![Build Status](https://travis-ci.org/sparck75/HA-addons.svg?branch=master)](https://travis-ci.org/sparck75/HA-addons)

## Pre-built images

[![Docker Architecture][armhf-arch-shield]][armhf-base]
[![Docker Version][armhf-version-shield]][armhf-microbadger]
[![Docker Layers][armhf-layers-shield]][armhf-microbadger]
[![Docker Pulls][armhf-pulls-shield]][armhf-base]

[![Docker Architecture][aarch64-arch-shield]][aarch64-base]
[![Docker Version][aarch64-version-shield]][aarch64-microbadger]
[![Docker Layers][aarch64-layers-shield]][aarch64-microbadger]
[![Docker Pulls][aarch64-pulls-shield]][aarch64-base]

[![Docker Architecture][amd64-arch-shield]][amd64-base]
[![Docker Version][amd64-version-shield]][amd64-microbadger]
[![Docker Layers][amd64-layers-shield]][amd64-microbadger]
[![Docker Pulls][amd64-pulls-shield]][amd64-base]

[![Docker Architecture][i386-arch-shield]][i386-base]
[![Docker Version][i386-version-shield]][i386-microbadger]
[![Docker Layers][i386-layers-shield]][i386-microbadger]
[![Docker Pulls][i386-pulls-shield]][i386-base]
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
