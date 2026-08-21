#!/usr/bin/env bash
set -euo pipefail
BASE="${PRAXICRAFT_API_BASE_URL:-https://assess.praxicraft.com}"
KEY="${PRAXICRAFT_API_KEY:?set PRAXICRAFT_API_KEY}"
AUTH=(-H "Authorization: Bearer $KEY" -H "Content-Type: application/json" -H "Accept: application/json")
API="$BASE/api/v1/public"
RID="${PRAXICRAFT_ROOM_ID:?}"
curl -sS -X POST "$API/interviews/$RID/reschedule/" "${AUTH[@]}" -d '{"scheduled_at":"2026-09-01T15:00:00Z"}' | jq . || true
curl -sS -X POST "$API/interviews/$RID/share/" "${AUTH[@]}" -d '{}' | jq . || true
curl -sS -X POST "$API/interviews/$RID/cancel/" "${AUTH[@]}" -d '{}' | jq . || true
