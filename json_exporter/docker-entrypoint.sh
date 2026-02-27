#!/bin/sh
set -e
envsubst < /config.yml.template > /tmp/config.yml
exec /bin/json_exporter --config.file=/tmp/config.yml
