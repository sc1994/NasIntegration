#!/bin/sh
export LANG=en_US.UTF-8
echo ">>>>>>>>>>>>>>>>>>>>start all services>>>>>>>>>>>>>>>>>>>>"

docker compose \
  -f docker-compose.1required.yml \
  -f docker-compose.2manager.yml \
  -f docker-compose.3media.yml \
  -f docker-compose.4limbic.yml \
  -f docker-compose.5needless.yml \
  up -d

echo ">>>>>>>>>>>>>>>>>>>>end>>>>>>>>>>>>>>>>>>>>"

exit 0