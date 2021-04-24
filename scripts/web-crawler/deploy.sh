#!/usr/bin/env sh

echo "Deploying web crawler stack.."
docker stack deploy -c ./stacks/web-crawler-stack.yml web-crawler-stack
echo "Waiting 10 sec.."
sleep 10