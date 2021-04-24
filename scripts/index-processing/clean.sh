#!/usr/bin/env sh

echo "Removing index processing application.."
docker-compose --file ./apps/index-processing-app.yml -p index-processing-app down
