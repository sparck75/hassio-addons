## Hass.io plugins

[![Build Status](https://travis-ci.org/sparck75/HA-addons.svg?branch=master)](https://travis-ci.org/sparck75/HA-addons)

## Docker status

[![Docker Architecture][armhf-arch-shield]][armhf-dockerhub]
[![Docker Version][armhf-version-shield]][armhf-microbadger]
[![Docker Layers][armhf-layers-shield]][armhf-microbadger]
[![Docker Pulls][armhf-pulls-shield]][armhf-dockerhub]

[![Docker Architecture][aarch64-arch-shield]][aarch64-dockerhub]
[![Docker Version][aarch64-version-shield]][aarch64-microbadger]
[![Docker Layers][aarch64-layers-shield]][aarch64-microbadger]
[![Docker Pulls][aarch64-pulls-shield]][aarch64-dockerhub]

[![Docker Architecture][amd64-arch-shield]][amd64-dockerhub]
[![Docker Version][amd64-version-shield]][amd64-microbadger]
[![Docker Layers][amd64-layers-shield]][amd64-microbadger]
[![Docker Pulls][amd64-pulls-shield]][amd64-dockerhub]

[![Docker Architecture][i386-arch-shield]][i386-dockerhub]
[![Docker Version][i386-version-shield]][i386-microbadger]
[![Docker Layers][i386-layers-shield]][i386-microbadger]
[![Docker Pulls][i386-pulls-shield]][i386-dockerhub]

## Just code

These add-ons are not being built intentionally as they are for testing purposes only. You'll need to download and place them under `/addons` folder of your Hass.io instance. 

## [AppDaemon](https://github.com/sparck75/ha-addons/tree/master/appdaemon)

Beta-version of AppDaemon with HaDashobard v2.

## Usefull commands

Configuration options are:
        "domain":  "0.0.0.0":  I use my internal IP (192.168.x.x)
        "commtype":    "sse":  2 choices:  websockets, sse
        "debugging":  "info":  (debug, info, warning, error, critical, none)
		
- Ensure you have move all the apps definition from appdaemon.yaml to a file called the apps.yaml in your /config/hadaemon folder.
- Works only with port 5050.

appdaemon.yaml


Similar can be done for images.

[aarch64-arch-shield]: https://img.shields.io/badge/architecture-aarch64-blue.svg
[aarch64-dockerhub]: https://hub.docker.com/r/sparck75/armhf-addon-appdaemon
[aarch64-layers-shield]: https://images.microbadger.com/badges/image/hassioaddons/ssh-aarch64.svg
[aarch64-microbadger]: https://microbadger.com/images/hassioaddons/ssh-aarch64
[aarch64-pulls-shield]: https://img.shields.io/docker/pulls/hassioaddons/ssh-aarch64.svg
[aarch64-version-shield]: https://images.microbadger.com/badges/version/hassioaddons/ssh-aarch64.svg
[alpine-packages]: https://pkgs.alpinelinux.org/packages
[amd64-arch-shield]: https://img.shields.io/badge/architecture-amd64-blue.svg
[amd64-dockerhub]: https://hub.docker.com/r/sparck75/amd64-addon-appdaemon
[amd64-layers-shield]: https://images.microbadger.com/badges/image/hassioaddons/ssh-amd64.svg
[amd64-microbadger]: https://microbadger.com/images/hassioaddons/ssh-amd64
[amd64-pulls-shield]: https://img.shields.io/docker/pulls/hassioaddons/ssh-amd64.svg
[amd64-version-shield]: https://images.microbadger.com/badges/version/hassioaddons/ssh-amd64.svg
[armhf-arch-shield]: https://img.shields.io/badge/architecture-armhf-blue.svg
[armhf-dockerhub]: https://hub.docker.com/r/sparck75/armhf-addon-appdaemon
[armhf-layers-shield]: https://images.microbadger.com/badges/image/hassioaddons/ssh-armhf.svg
[armhf-microbadger]: https://microbadger.com/images/hassioaddons/ssh-armhf
[armhf-pulls-shield]: https://img.shields.io/docker/pulls/hassioaddons/ssh-armhf.svg
[armhf-version-shield]: https://images.microbadger.com/badges/version/hassioaddons/ssh-armhf.svg
[awesome-shield]: https://img.shields.io/badge/awesome%3F-yes-brightgreen.svg
[home-assistant]: https://home-assistant.io
[i386-arch-shield]: https://img.shields.io/badge/architecture-i386-blue.svg
[i386-dockerhub]: https://hub.docker.com/r/sparck75/i386-addon-appdaemon
[i386-layers-shield]: https://images.microbadger.com/badges/image/hassioaddons/ssh-i386.svg
[i386-microbadger]: https://microbadger.com/images/hassioaddons/ssh-i386
[i386-pulls-shield]: https://img.shields.io/docker/pulls/hassioaddons/ssh-i386.svg
[i386-version-shield]: https://images.microbadger.com/badges/version/hassioaddons/ssh-i386.svg

