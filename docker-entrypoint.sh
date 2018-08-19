#!/bin/sh
set -e

if [ "${1:0:1}" = '-' ]; then
  set -- /google-speedtest-char/speedtest-charts.py "$@"
fi

while true
do
  exec "$@"
  sleep $TEST_INTERVAL
done
