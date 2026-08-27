#!/usr/bin/env bash
set -euo pipefail
CREATED=$(praxicraft-assess --non-interactive --output json tasks create --body '{"title":"Example org task"}')
echo "$CREATED"
ID=$(echo "$CREATED" | jq -r .id)
praxicraft-assess --non-interactive --output json tasks get "$ID"
praxicraft-assess --non-interactive --output json tasks update "$ID" --body '{"title":"Example org task updated"}'
