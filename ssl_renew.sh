#!/bin/bash

COMPOSE="/usr/local/bin/docker-compose --no-ansi"

cd /home/mrcat/wordpress/
$COMPOSE run certbot renew --dry-run && $COMPOSE kill -s SIGHUP webserver
