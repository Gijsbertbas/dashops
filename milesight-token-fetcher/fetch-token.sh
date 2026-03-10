#!/bin/sh
RESPONSE=$(curl -s -X POST https://eu-openapi.milesight.com/oauth/token \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -d "grant_type=client_credentials&client_id=${MILESIGHT_CLIENT_ID}&client_secret=${MILESIGHT_CLIENT_SECRET}")

TOKEN=$(echo "$RESPONSE" | jq -r '.data.access_token')

if [ -z "$TOKEN" ] || [ "$TOKEN" = "null" ]; then
  echo "$(date) ERROR: Failed to fetch Milesight token. Response: $RESPONSE" >&2
  exit 1
fi

echo -n "$TOKEN" > /token/milesight_token
echo "$(date) Milesight token refreshed"
