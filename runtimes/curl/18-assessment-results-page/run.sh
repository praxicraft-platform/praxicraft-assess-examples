#!/usr/bin/env bash
set -euo pipefail
BASE="${PRAXICRAFT_API_BASE_URL:-https://assess.praxicraft.com}"
KEY="${PRAXICRAFT_API_KEY:?set PRAXICRAFT_API_KEY}"
AUTH=(-H "Authorization: Bearer $KEY" -H "Content-Type: application/json" -H "Accept: application/json")
API="$BASE/api/v1/public"
SLUG="${PRAXICRAFT_ASSESSMENT_SLUG:-senior-backend-screen}"
curl -sS "$API/assessments/$SLUG/results/?page=1" "${AUTH[@]}" | jq .
