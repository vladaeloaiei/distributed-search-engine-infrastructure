#!/usr/bin/env sh

echo "Deploying data-lake-stack.."
docker stack deploy -c ../stacks/data-lake-stack.yml data-lake-stack
echo "Waiting 10 sec.."
sleep 10

echo "Deploying web-crawler-stack.."
docker stack deploy -c ../stacks/web-crawler-stack.yml web-crawler-stack
echo "Waiting 10 sec.."
sleep 10

echo "Deploying search-engine-stack.."
docker stack deploy -c ../stacks/search-engine-stack.yml search-engine-stack
echo "Waiting 10 sec.."
sleep 10

echo "Deploying search-engine-ui-stack.."
docker stack deploy -c ../stacks/search-engine-ui-stack.yml search-engine-ui-stack
echo "Waiting 10 sec.."
sleep 10

echo "Stacks successfully deployed"
