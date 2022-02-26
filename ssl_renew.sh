#!/bin/bash

cd "${0%/*}"
docker compose --ansi never run certbot renew --dry-run && docker compose --ansi never kill -s SIGHUP webserver
docker system prune -af
