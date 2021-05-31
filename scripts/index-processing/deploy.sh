#!/usr/bin/env sh

echo "Deploying index processing application.."
docker compose -f ./apps/index-processing-app.yml -p index-processing-app up -d
