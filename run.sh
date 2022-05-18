#!/usr/bin/with-contenv bashio
set +u

CONFIG_PATH=/data/options.json

bashio::log.info "Starting..."

pip install pycoingecko
python3 script.py