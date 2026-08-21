#!/usr/bin/env bash
set -euo pipefail
SLUG="${PRAXICRAFT_PIPELINE_SLUG:-engineering-hiring}"
praxicraft-assess --non-interactive --output json pipelines bulk-enroll "$SLUG" --body '{"candidates":[{"email":"a@example.com","name":"A"},{"email":"b@example.com","name":"B"}]}'
