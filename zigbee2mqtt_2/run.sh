#!/usr/bin/with-contenv bashio

CONFIG_PATH=/data

if [ ! -d "$CONFIG_PATH" ]; then
  mkdir -p "$CONFIG_PATH"
fi

cd /app

exec npm start