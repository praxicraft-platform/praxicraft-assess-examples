#!/usr/bin/env bash
set -euo pipefail
SLUG="${PRAXICRAFT_ASSESSMENT_SLUG:-senior-backend-screen}"
praxicraft-assess --non-interactive --output json results list "$SLUG" --query page=1
