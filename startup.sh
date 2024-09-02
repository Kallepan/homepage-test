#!/bin/bash

docker compose down
docker compose up --force-recreate --remove-orphans -d
docker cp ./config homepage:/app/config
docker cp ./images homepage:/app/public/images
docker compose restart