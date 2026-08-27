#!/usr/bin/env bash
set -euo pipefail
BASE="${PRAXICRAFT_API_BASE_URL:-https://assess.praxicraft.com}"
KEY="${PRAXICRAFT_API_KEY:?set PRAXICRAFT_API_KEY}"
AUTH=(-H "Authorization: Bearer $KEY" -H "Content-Type: application/json" -H "Accept: application/json")
API="$BASE/api/v1/public"
CREATED=$(curl -sS -X POST "$API/tasks/create/" "${AUTH[@]}" -d '{"title":"Example org task","prompt":"demo"}')
echo "$CREATED" | jq .
ID=$(echo "$CREATED" | jq -r .id)
curl -sS "$API/tasks/$ID/" "${AUTH[@]}" | jq .
curl -sS -X PATCH "$API/tasks/$ID/" "${AUTH[@]}" -d '{"title":"Example org task updated"}' | jq .
