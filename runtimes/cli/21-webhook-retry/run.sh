#!/usr/bin/env bash
set -euo pipefail
praxicraft-assess --non-interactive --output json webhooks retry-delivery "${PRAXICRAFT_WEBHOOK_ID:?}" "${PRAXICRAFT_DELIVERY_ID:?}"
