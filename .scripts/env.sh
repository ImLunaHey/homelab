#!/usr/bin/env bash

# This allows docker compose up -d to work with all of the files
FILES=$(find ./docker-compose.yml ./services/**/docker-compose.yml | tr "\n" ":")
COMPOSE_FILE=$(echo $FILES | rev | cut -c 2- | rev)
export COMPOSE_FILE;
echo "$COMPOSE_FILE";