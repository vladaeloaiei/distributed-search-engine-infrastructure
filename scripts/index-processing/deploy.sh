#!/usr/bin/env sh

echo "Deploy index processing application.."
docker-compose -f ./apps/index-processing-app.yml -p index-processing-app up -d
