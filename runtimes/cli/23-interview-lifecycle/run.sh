#!/usr/bin/env bash
set -euo pipefail
RID="${PRAXICRAFT_ROOM_ID:?}"
praxicraft-assess --non-interactive interviews reschedule "$RID" --body '{"scheduled_at":"2026-09-01T15:00:00Z"}' || true
praxicraft-assess --non-interactive interviews share "$RID" --body '{}' || true
praxicraft-assess --non-interactive --yes interviews cancel "$RID" --body '{}' || true
