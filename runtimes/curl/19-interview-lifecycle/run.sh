#!/usr/bin/env bash
set -euo pipefail
BASE="${PRAXICRAFT_API_BASE_URL:-https://assess.praxicraft.com}"
KEY="${PRAXICRAFT_API_KEY:?set PRAXICRAFT_API_KEY}"
AUTH=(-H "Authorization: Bearer $KEY" -H "Content-Type: application/json" -H "Accept: application/json")
ROOM=$(curl -sS -X POST "${BASE}/api/v1/public/interviews/create/" "${AUTH[@]}" -d '{"candidate_email":"candidate@example.com","candidate_name":"Example"}')
echo "$ROOM" | jq .
ID=$(echo "$ROOM" | jq -r '.id // .room_id')
curl -sS -X POST "${BASE}/api/v1/public/interviews/${ID}/reschedule/" "${AUTH[@]}" -d '{"scheduled_at":"2030-01-01T15:00:00Z"}' | jq . || true
curl -sS "${BASE}/api/v1/public/interviews/${ID}/replay/" "${AUTH[@]}" | jq . || true
curl -sS -X POST "${BASE}/api/v1/public/interviews/${ID}/share/" "${AUTH[@]}" -d '{"email":"hiring@example.com"}' | jq . || true
curl -sS -X POST "${BASE}/api/v1/public/interviews/${ID}/cancel/" "${AUTH[@]}" -d '{}' | jq . || true
