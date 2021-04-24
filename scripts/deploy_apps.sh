#!/usr/bin/env sh

echo "Deploying subject partitioner.."
docker-compose -f ../apps/subject-partitioner-app/docker-compose.yml up -d
