## Hass.io AppDaemon plugins

[![Build Status](https://travis-ci.org/sparck75/HA-addons.svg?branch=1.3)](https://travis-ci.org/sparck75/HA-addons)

## Docker Image Information
AppDaemon
[![](https://images.microbadger.com/badges/image/sparck75/armhf-addon-appdaemon:1.3.svg)](https://microbadger.com/images/sparck75/armhf-addon-appdaemon:1.3 "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/sparck75/armhf-addon-appdaemon:1.3.svg)](https://microbadger.com/images/sparck75/armhf-addon-appdaemon:1.3 "Get your own version badge on microbadger.com")

AppDaemonDev
[![](https://images.microbadger.com/badges/image/sparck75/armhf-addon-appdaemon.svg)](https://microbadger.com/images/sparck75/armhf-addon-appdaemon "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/sparck75/armhf-addon-appdaemon.svg)](https://microbadger.com/images/sparck75/armhf-addon-appdaemon "Get your own version badge on microbadger.com")

## Repository

Use this link to add into Hassio.
- https://github.com/sparck75/hassio-addons

## [AppDaemon](https://github.com/home-assistant/appdaemon)

AppDaemon 2.1.10 with HaDashboard v2.

## Configuration Options

- Configuration options are:
```
        "domain":  "192.168.66.1":  I use my internal IP (192.168.x.x)
        "commtype":    "sse":  2 choices:  websockets, sse
        "debugging":  "info":  (debug, info, warning, error, critical, none)
```
- Ensure you have move all the apps definition from appdaemon.yaml to a file called the apps.yaml in your /config/hadaemon folder.
- Works only with port 5050.

Access your HADashboard 
- http://192.168.66.1:5050


Here my configuration.yaml
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
Here's my appdaemon.yaml
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
