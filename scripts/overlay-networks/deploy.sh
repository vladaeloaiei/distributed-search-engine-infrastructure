#!/usr/bin/env sh

echo "Deploying data lake network.."
docker network create -d overlay --attachable data-lake-network
echo "Deploying search engine network.."
docker network create -d overlay --attachable search-engine-network
