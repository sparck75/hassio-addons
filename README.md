## Hass.io AppDaemon plugins

[![Build Status](https://travis-ci.org/sparck75/HA-addons.svg?branch=master)](https://travis-ci.org/sparck75/HA-addons)

## Docker status


## Just code

These add-ons are not being built intentionally as they are for testing purposes only. You'll need to download and place them under `/addons` folder of your Hass.io instance. 

## [AppDaemon](https://github.com/home-assistant/appdaemon)

Beta-version of AppDaemon with HaDashobard v2.

## Configuration Options

Configuration options are:
        "domain":  "192.168.66.1":  I use my internal IP (192.168.x.x)
        "commtype":    "sse":  2 choices:  websockets, sse
        "debugging":  "info":  (debug, info, warning, error, critical, none)
		
- Ensure you have move all the apps definition from appdaemon.yaml to a file called the apps.yaml in your /config/hadaemon folder.
- Works only with port 5050.

Access your HADashboard 
- http://192.168.66.1:5050

```
Here my configuration.yaml
	http:
		server_port: 8123
		base_url: xxxxxxx.duckdns.org:8123
		ssl_certificate: /ssl/fullchain.pem
		ssl_key: /ssl/privkey.pem
		ip_ban_enabled: True
		login_attempts_threshold: 5
		api_password: !secret http_password

Here's my appdaemon.yaml
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
