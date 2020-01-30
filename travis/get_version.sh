#!/usr/bin/env bash

set -euo pipefail

# Output traefik version from github:traefik releases
#echo "$(curl -fsSL --retry 5 --retry-delay 2 https://github.com/containous/traefik/releases/ | grep -o '[0-9]\?[0-9].[0-9]\?[0-9].[0-9]\?[0-9]/traefik_linux-amd64' | awk -F '/' {'print $1'} | head -n 1)"
echo "$(curl -ksSL --retry 5 --retry-delay 2 https://github.com/containous/traefik/releases/latest | grep -o '[0-9]\?[0-9].[0-9]\?[0-9].[0-9]\?[0-9]/traefik_v2' | awk -F '/' {'print $1'} | head -n 1)"
