#!/usr/bin/env bash
set -euo pipefail
CREATED=$(praxicraft-assess --non-interactive --output json assessments create --body '{"title":"Example screen"}')
echo "$CREATED"
SLUG=$(echo "$CREATED" | jq -r .slug)
if [ -n "${PRAXICRAFT_CASE_ID:-}" ]; then
  praxicraft-assess --non-interactive assessments cases attach "$SLUG" --body "{\"cases\":[{\"case_id\":\"$PRAXICRAFT_CASE_ID\",\"source\":\"platform\"}]}"
fi
praxicraft-assess --non-interactive assessments update "$SLUG" --body '{"status":"active"}'
