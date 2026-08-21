#!/usr/bin/env bash
set -euo pipefail
BASE="${PRAXICRAFT_API_BASE_URL:-https://assess.praxicraft.com}"
KEY="${PRAXICRAFT_API_KEY:?set PRAXICRAFT_API_KEY}"
AUTH=(-H "Authorization: Bearer $KEY" -H "Content-Type: application/json" -H "Accept: application/json")
API="$BASE/api/v1/public"
EID="${PRAXICRAFT_ENROLLMENT_ID:?}"
curl -sS -X POST "$API/pipelines/enrollments/$EID/hold/" "${AUTH[@]}" -d '{}' | jq .
curl -sS -X POST "$API/pipelines/enrollments/$EID/unhold/" "${AUTH[@]}" -d '{}' | jq .
curl -sS -X POST "$API/pipelines/enrollments/$EID/reject/" "${AUTH[@]}" -d '{"reason":"example"}' | jq .
