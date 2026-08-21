#!/usr/bin/env bash
set -euo pipefail
BASE="${PRAXICRAFT_API_BASE_URL:-https://assess.praxicraft.com}"
KEY="${PRAXICRAFT_API_KEY:?set PRAXICRAFT_API_KEY}"
AUTH=(-H "Authorization: Bearer $KEY" -H "Content-Type: application/json" -H "Accept: application/json")
API="$BASE/api/v1/public"
SLUG="${PRAXICRAFT_PIPELINE_SLUG:-engineering-hiring}"
curl -sS -X POST "$API/pipelines/$SLUG/enroll/bulk/" "${AUTH[@]}" \
  -d '{"candidates":[{"email":"a@example.com","name":"A"},{"email":"b@example.com","name":"B"}]}' | jq .
