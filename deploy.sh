#!/usr/bin/env sh

if [ $# -eq 0 ]; then
  echo "No argument provided"
elif [ $# -eq 1 ] && [ "$1" == "all" ]; then
  echo "Deploying the entire infrastructure"

  # overlay networks
  ./scripts/overlay-networks/deploy.sh

  # stacks
  ./scripts/data-lake/deploy.sh
  ./scripts/web-crawler/deploy.sh
  ./scripts/search-engine/deploy.sh
  ./scripts/search-engine-ui/deploy.sh

  # apps
  ./scripts/index-processing/deploy.sh
  ./scripts/subject-partitioner/deploy.sh

else
  echo "Deploying $@"

  for res in "$@"; do
    ./scripts/${res}/deploy.sh
  done
fi
