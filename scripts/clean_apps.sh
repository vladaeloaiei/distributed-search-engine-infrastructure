#!/usr/bin/env sh

echo "Removing subject partitioner.."
docker-compose --file ../apps/subject-partitioner-app/docker-compose.yml rm --force
