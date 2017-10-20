#!/bin/sh
set -e

if [ "${1:0:1}" = '-' ]; then
  set -- /google-speedtest-char/speedtest-charts.py "$@"
fi

exec "$@"
