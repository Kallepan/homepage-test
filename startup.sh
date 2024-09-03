#!/bin/bash

docker compose down
docker compose up --force-recreate --remove-orphans -d
docker cp ./config homepage:/app/config
docker cp ./icons homepage:/app/public/icons
docker compose restart