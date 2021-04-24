#!/usr/bin/env sh

echo "Removing data lake network.."
docker network rm data-lake-network
echo "Removing search engine network.."
docker network rm search-engine-network