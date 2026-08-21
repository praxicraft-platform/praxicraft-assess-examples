#!/usr/bin/env bash
praxicraft-assess --non-interactive --output json integrations list
PROVIDER="${PRAXICRAFT_INTEGRATION_PROVIDER:-greenhouse}"
praxicraft-assess --non-interactive --output json integrations connect-url "$PROVIDER" || true
praxicraft-assess --non-interactive --yes --output json integrations test "$PROVIDER" || true
