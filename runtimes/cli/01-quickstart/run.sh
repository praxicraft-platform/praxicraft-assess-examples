#!/usr/bin/env bash
set -euo pipefail
SLUG="${PRAXICRAFT_ASSESSMENT_SLUG:-senior-backend-screen}"
praxicraft-assess --non-interactive --output json assessments list
praxicraft-assess --non-interactive --output json invites create "$SLUG" --email candidate@example.com --name Example --send-email=false
