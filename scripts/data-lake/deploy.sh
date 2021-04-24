#!/usr/bin/env sh

echo "Deploying data lake stack.."
docker stack deploy -c ./stacks/data-lake-stack.yml data-lake-2-stack
echo "Waiting 10 sec.."
sleep 10
