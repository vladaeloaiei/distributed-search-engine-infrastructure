#!/usr/bin/env sh

echo "Deploying search-engine-ui-stack.."
docker stack rm search-engine-ui-stack
echo "Deploying search-engine-stack.."
docker stack rm search-engine-stack
echo "Deploying web-crawler-stack.."
docker stack rm web-crawler-stack
echo "Deploying data-lake-stack.."
docker stack rm data-lake-stack
