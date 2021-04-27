#!/usr/bin/env sh

if [ $# -eq 0 ]; then
  echo "No argument provided"
elif [ $# -eq 1 ] && [ "$1" == "all" ]; then
  echo "Cleaning the entire infrastructure"

  # apps
  ./scripts/index-processing/clean.sh
  ./scripts/subject-partitioner/clean.sh

  # stacks
  ./scripts/search-engine-ui/clean.sh
  ./scripts/search-engine/clean.sh
  ./scripts/web-crawler/clean.sh
  ./scripts/data-lake/clean.sh

  # overlay networks
  ./scripts/overlay-networks/clean.sh
else
  echo "Cleaning $@"

  for res in "$@"; do
    ./scripts/${res}/clean.sh
  done
fi

