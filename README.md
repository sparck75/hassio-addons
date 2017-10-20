## [AppDaemon](https://github.com/home-assistant/appdaemon)

AppDaemon 2.1.10 with HaDashboard v2.

Use this link to add into Hassio.
- https://github.com/sparck75/hassio-addons

## Hass.io AppDaemon plugins build information

[![Build Status](https://travis-ci.org/sparck75/HA-addons.svg?branch=1.3)](https://travis-ci.org/sparck75/HA-addons)
Build repository for hassio-addons.

[![](https://images.microbadger.com/badges/image/homeassistant/docker-build-env.svg)](https://microbadger.com/images/homeassistant/docker-build-env "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/homeassistant/docker-build-env.svg)](https://microbadger.com/images/homeassistant/docker-build-env "Get your own version badge on microbadger.com")
homeassistant/docker-build-env
Build image use this docker-build-env image.

## Base image information
[![](https://images.microbadger.com/badges/image/homeassistant/armhf-base.svg)](https://microbadger.com/images/homeassistant/armhf-base "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/homeassistant/armhf-base.svg)](https://microbadger.com/images/homeassistant/armhf-base "Get your own version badge on microbadger.com")
: homeassistant/armhf-base

[![](https://images.microbadger.com/badges/image/homeassistant/aarch64-base.svg)](https://microbadger.com/images/homeassistant/aarch64-base "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/homeassistant/aarch64-base.svg)](https://microbadger.com/images/homeassistant/aarch64-base "Get your own version badge on microbadger.com")
: homeassistant/aarch64-base

[![](https://images.microbadger.com/badges/image/homeassistant/amd64-base.svg)](https://microbadger.com/images/homeassistant/amd64-base "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/homeassistant/amd64-base.svg)](https://microbadger.com/images/homeassistant/amd64-base "Get your own version badge on microbadger.com")
: homeassistant/amd64-base

[![](https://images.microbadger.com/badges/image/homeassistant/i386-base.svg)](https://microbadger.com/images/homeassistant/i386-base "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/homeassistant/i386-base.svg)](https://microbadger.com/images/homeassistant/i386-base "Get your own version badge on microbadger.com")
: homeassistant/i386-base
## Docker Image Information

[![](https://images.microbadger.com/badges/image/sparck75/armhf-addon-appdaemon:1.3.svg)](https://microbadger.com/images/sparck75/armhf-addon-appdaemon:1.3 "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/sparck75/armhf-addon-appdaemon:1.3.svg)](https://microbadger.com/images/sparck75/armhf-addon-appdaemon:1.3 "Get your own version badge on microbadger.com")
AppDaemon

[![](https://images.microbadger.com/badges/image/sparck75/armhf-addon-appdaemon.svg)](https://microbadger.com/images/sparck75/armhf-addon-appdaemon "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/sparck75/armhf-addon-appdaemon.svg)](https://microbadger.com/images/sparck75/armhf-addon-appdaemon "Get your own version badge on microbadger.com")
AppDaemonDev

## Configuration Options

- Configuration options are:
```
        "domain":  "0.0.0.0":  (192.168.66.1) - I use my internal IP 
        "commtype":    "sse":  (websockets, sse) - I use sse
        "debugging":  "info":  (debug, info, warning, error, critical, none)
```
- Ensure you have move all the apps definition from appdaemon.yaml to a file called the apps.yaml in your /config/hadaemon folder.

- Works only with port 5050.

- Access your HADashboard 
``
http://192.168.66.1:5050
``

- Here my configuration.yaml
```
	http:
		server_port: 8123
		base_url: xxxxxxx.duckdns.org:8123
		ssl_certificate: /ssl/fullchain.pem
		ssl_key: /ssl/privkey.pem
		ip_ban_enabled: True
		login_attempts_threshold: 5
		api_password: !secret http_password
```
- Here's my appdaemon.yaml
```
	AppDaemon:
		cert_verify: False
		disable_apps: 0
		logfile: STDOUT
		errorfile: STDERR
		threads: 10
		dash_dir: /config/hadaemon/dashboards
		app_dir: /config/hadaemon/apps
		api_ssl_certificate: /ssl/fullchain.pem
		api_ssl_key: /ssl/privkey.pem 
	HASS:
		ha_url: https://192.168.66.1:8123
		ha_ssl_certificate: /ssl/fulchain.pem
		ha_ssl_key: /ssl/privkey.pem
		ha_key: !secret hadash_password
	HADashboard:
		dash_url: http://192.168.66.1
		dash_compile_on_start: 1
```		
