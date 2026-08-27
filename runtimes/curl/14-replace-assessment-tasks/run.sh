#!/usr/bin/env bash
set -euo pipefail
BASE="${PRAXICRAFT_API_BASE_URL:-https://assess.praxicraft.com}"
KEY="${PRAXICRAFT_API_KEY:?set PRAXICRAFT_API_KEY}"
AUTH=(-H "Authorization: Bearer $KEY" -H "Content-Type: application/json" -H "Accept: application/json")
SLUG="${PRAXICRAFT_ASSESSMENT_SLUG:?}"
TASK_ID="${PRAXICRAFT_TASK_ID:?}"
curl -sS -X POST "${BASE}/api/v1/public/assessments/${SLUG}/tasks/replace/" "${AUTH[@]}" -d "{\"cases\":[{\"task_id\":\"${TASK_ID}\",\"source\":\"platform\"}]}" | jq .
