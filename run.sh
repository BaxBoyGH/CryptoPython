#!/usr/bin/with-contenv bashio
set +u

CONFIG_PATH=/data/options.json

bashio::log.info "Starting..."

python3 script.py