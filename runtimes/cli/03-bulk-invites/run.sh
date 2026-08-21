#!/usr/bin/env bash
SLUG="${PRAXICRAFT_ASSESSMENT_SLUG:-senior-backend-screen}"
praxicraft-assess --non-interactive --output json invites bulk-create "$SLUG" --body '{"candidates":[{"email":"alice@example.com","name":"Alice","send_email":false},{"email":"bob@example.com","name":"Bob","send_email":false}]}'
