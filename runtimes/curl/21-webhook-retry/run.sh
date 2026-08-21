#!/usr/bin/env bash
set -euo pipefail
BASE="${PRAXICRAFT_API_BASE_URL:-https://assess.praxicraft.com}"
KEY="${PRAXICRAFT_API_KEY:?set PRAXICRAFT_API_KEY}"
AUTH=(-H "Authorization: Bearer $KEY" -H "Content-Type: application/json" -H "Accept: application/json")
API="$BASE/api/v1/public"
WID="${PRAXICRAFT_WEBHOOK_ID:?}"; DID="${PRAXICRAFT_DELIVERY_ID:?}"
curl -sS -X POST "$API/webhooks/$WID/deliveries/$DID/retry/" "${AUTH[@]}" -d '{}' | jq .
