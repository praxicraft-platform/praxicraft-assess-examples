#!/usr/bin/env bash
# Demonstrate HMAC header shape; use an SDK verify helper in production.
SECRET="${PRAXICRAFT_WEBHOOK_SECRET:?}"
BODY='{"type":"candidate.passed"}'
SIG=$(printf '%s' "$BODY" | openssl dgst -sha256 -hmac "$SECRET" | awk '{print $2}')
echo "X-Praxicraft-Signature: sha256=${SIG}"
echo "Body: $BODY"
