#!/usr/bin/env sh

echo "Deploying search engine stack.."
docker stack deploy -c ./stacks/search-engine-stack.yml search-engine-stack
echo "Waiting 10 sec.."
sleep 10
