#!/bin/sh
set -e

ln -s /run/secrets/credentials.json credentials.json

if [ "${1:0:1}" = '-' ]; then
  set -- /google-speedtest-char/speedtest-charts.py "$@"
fi

exec "$@"
