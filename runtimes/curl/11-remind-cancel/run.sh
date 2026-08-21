#!/usr/bin/env bash
set -euo pipefail
BASE="${PRAXICRAFT_API_BASE_URL:-https://assess.praxicraft.com}"
KEY="${PRAXICRAFT_API_KEY:?set PRAXICRAFT_API_KEY}"
AUTH=(-H "Authorization: Bearer $KEY" -H "Content-Type: application/json" -H "Accept: application/json")
API="$BASE/api/v1/public"
TOKEN="${PRAXICRAFT_INVITE_TOKEN:?}"
curl -sS -X POST "$API/invites/$TOKEN/remind/" "${AUTH[@]}" -d '{}' | jq .
curl -sS -X DELETE "$API/invites/$TOKEN/" "${AUTH[@]}" | jq .
