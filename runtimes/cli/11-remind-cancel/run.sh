#!/usr/bin/env bash
set -euo pipefail
TOKEN="${PRAXICRAFT_INVITE_TOKEN:?}"
praxicraft-assess --non-interactive --output json invites remind "$TOKEN"
praxicraft-assess --non-interactive --yes --output json invites cancel "$TOKEN"
