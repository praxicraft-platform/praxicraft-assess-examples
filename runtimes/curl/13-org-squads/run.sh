#!/usr/bin/env bash
set -euo pipefail
BASE="${PRAXICRAFT_API_BASE_URL:-https://assess.praxicraft.com}"
KEY="${PRAXICRAFT_API_KEY:?set PRAXICRAFT_API_KEY}"
AUTH=(-H "Authorization: Bearer $KEY" -H "Content-Type: application/json" -H "Accept: application/json")
API="$BASE/api/v1/public"
curl -sS "$API/org/squads/" "${AUTH[@]}" | jq .
SID=$(curl -sS "$API/org/squads/" "${AUTH[@]}" | jq -r '.results[0].id // .[0].id // empty')
if [ -n "$SID" ]; then curl -sS "$API/org/squads/$SID/members/" "${AUTH[@]}" | jq .; fi
