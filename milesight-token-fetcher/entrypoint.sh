#!/bin/sh
set -e

/fetch-token.sh

while true; do
  sleep 3000
  /fetch-token.sh
done
