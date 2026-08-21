#!/usr/bin/env bash
set -euo pipefail
BASE="${PRAXICRAFT_API_BASE_URL:-https://assess.praxicraft.com}"
KEY="${PRAXICRAFT_API_KEY:?set PRAXICRAFT_API_KEY}"
AUTH=(-H "Authorization: Bearer $KEY" -H "Content-Type: application/json" -H "Accept: application/json")
API="$BASE/api/v1/public"
cat <<'JSON'
{"type":"candidate.passed","data":{"email":"c@example.com","assessment_slug":"senior-backend-screen","invite_token":"…"}}
JSON
echo "Wire this to Slack/ATS after signature verify (see 05-webhook-receiver)."
