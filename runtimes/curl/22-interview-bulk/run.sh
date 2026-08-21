#!/usr/bin/env bash
set -euo pipefail
BASE="${PRAXICRAFT_API_BASE_URL:-https://assess.praxicraft.com}"
KEY="${PRAXICRAFT_API_KEY:?set PRAXICRAFT_API_KEY}"
AUTH=(-H "Authorization: Bearer $KEY" -H "Content-Type: application/json" -H "Accept: application/json")
API="$BASE/api/v1/public"
curl -sS -X POST "$API/interviews/bulk/" "${AUTH[@]}" \
  -d '{"candidates":[{"candidate_email":"a@example.com","candidate_name":"A"},{"candidate_email":"b@example.com","candidate_name":"B"}]}' | jq .
