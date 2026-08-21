#!/usr/bin/env bash
set -euo pipefail
BASE="${PRAXICRAFT_API_BASE_URL:-https://assess.praxicraft.com}"
KEY="${PRAXICRAFT_API_KEY:?set PRAXICRAFT_API_KEY}"
AUTH=(-H "Authorization: Bearer $KEY" -H "Content-Type: application/json" -H "Accept: application/json")
curl -sS "${BASE}/api/v1/public/interviews/templates/" "${AUTH[@]}" | jq .
curl -sS "${BASE}/api/v1/public/interviews/analytics/" "${AUTH[@]}" | jq .
T=$(curl -sS -X POST "${BASE}/api/v1/public/interviews/templates/create/" "${AUTH[@]}" -d '{"name":"Example template"}')
echo "$T" | jq .
