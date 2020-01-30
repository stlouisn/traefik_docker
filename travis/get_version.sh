#!/usr/bin/env bash

set -euo pipefail

# Output latest version of traefik
echo DOCKER_VERSION="$(curl -sSL https://github.com/containous/traefik/releases/ | grep -o '[0-9]\?[0-9].[0-9]\?[0-9].[0-9]\?[0-9]/traefik_linux-amd64' | awk -F '/' {'print $1'} | head -n 1)"
