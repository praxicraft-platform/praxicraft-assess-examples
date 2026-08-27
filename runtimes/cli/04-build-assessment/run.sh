#!/usr/bin/env bash
set -euo pipefail
CREATED=$(praxicraft-assess --non-interactive --output json assessments create --body '{"title":"Example screen"}')
echo "$CREATED"
SLUG=$(echo "$CREATED" | jq -r .slug)
if [ -n "${PRAXICRAFT_TASK_ID:-}" ]; then
  praxicraft-assess --non-interactive assessments tasks attach "$SLUG" --body "{\"cases\":[{\"task_id\":\"$PRAXICRAFT_TASK_ID\",\"source\":\"platform\"}]}"
fi
praxicraft-assess --non-interactive assessments update "$SLUG" --body '{"status":"active"}'
