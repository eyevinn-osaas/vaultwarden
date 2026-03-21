#!/bin/bash
set -e

PORT="${PORT:-8080}"
export PORT
export ROCKET_PORT="${PORT}"

# Map OSC_HOSTNAME to Vaultwarden's DOMAIN variable
if [ -n "$OSC_HOSTNAME" ]; then
  export DOMAIN="https://${OSC_HOSTNAME}"
fi

# Redirect data to persistent volume path
export DATA_FOLDER="${DATA_FOLDER:-/data}"

exec "$@"
