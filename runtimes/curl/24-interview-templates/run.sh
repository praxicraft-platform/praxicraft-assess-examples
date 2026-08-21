#!/usr/bin/env bash
set -euo pipefail
BASE="${PRAXICRAFT_API_BASE_URL:-https://assess.praxicraft.com}"
KEY="${PRAXICRAFT_API_KEY:?set PRAXICRAFT_API_KEY}"
AUTH=(-H "Authorization: Bearer $KEY" -H "Content-Type: application/json" -H "Accept: application/json")
API="$BASE/api/v1/public"
curl -sS "$API/interviews/templates/" "${AUTH[@]}" | jq .
T=$(curl -sS -X POST "$API/interviews/templates/create/" "${AUTH[@]}" -d '{"title":"Example template"}')
echo "$T" | jq .
TID=$(echo "$T" | jq -r .id)
curl -sS -X POST "$API/interviews/templates/$TID/update/" "${AUTH[@]}" -d '{"title":"Example template v2"}' | jq .
