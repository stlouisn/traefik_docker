#!/bin/bash

# Start traefik in console mode
exec traefik \
  --configfile=/config/traefik.toml
