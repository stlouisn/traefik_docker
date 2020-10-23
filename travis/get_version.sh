#!/usr/bin/env bash

set -euo pipefail

# Output traefik version from github:traefik releases
if [ $DOCKER_TAG == "1" ]; then
  #echo "$(curl -fsSL --retry 5 --retry-delay 2 https://github.com/containous/traefik/releases/ | grep -o '1.[0-9]\?[0-9].[0-9]\?[0-9]/traefik-v1' | awk -F '/' {'print $1'} | head -n 1)"
  echo "1.7.25"
elif [ $DOCKER_TAG == "2" ]; then
  echo "$(curl -ksSL --retry 5 --retry-delay 2 https://github.com/containous/traefik/releases/ | grep -o '2.[0-9]\?[0-9].[0-9]\?[0-9]/traefik_v2' | awk -F '/' {'print $1'} | head -n 1)"
fi
