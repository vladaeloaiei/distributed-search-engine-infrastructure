#!/usr/bin/env sh

echo "Deploying search engine ui stack.."
docker stack deploy -c ./stacks/search-engine-ui-stack.yml search-engine-ui-stack
echo "Waiting 10 sec.."
sleep 10
