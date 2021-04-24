#!/usr/bin/env sh

echo "Removing subject partitioner application.."
docker-compose --file ./apps/subject-partitioner-app.yml -p subject-partitioner-app down
