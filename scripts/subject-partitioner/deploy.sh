#!/usr/bin/env sh

echo "Deploying subject partitioner application.."
docker compose -f ./apps/subject-partitioner-app.yml -p subject-partitioner-app up -d
