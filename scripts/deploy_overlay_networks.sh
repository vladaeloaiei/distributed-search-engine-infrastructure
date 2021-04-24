#!/usr/bin/env sh

echo "Creating data-lake-network.."
docker network create -d overlay --attachable data-lake-network
echo "Creating search-engine-network.."
docker network create -d overlay --attachable search-engine-network
