#!/usr/bin/env bash
set -euo pipefail
CREATED=$(praxicraft-assess --non-interactive --output json cases create --body '{"title":"Example org case"}')
echo "$CREATED"
ID=$(echo "$CREATED" | jq -r .id)
praxicraft-assess --non-interactive --output json cases get "$ID"
praxicraft-assess --non-interactive --output json cases update "$ID" --body '{"title":"Example org case updated"}'
