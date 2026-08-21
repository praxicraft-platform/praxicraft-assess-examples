#!/usr/bin/env bash
set -euo pipefail
EID="${PRAXICRAFT_ENROLLMENT_ID:?}"
praxicraft-assess --non-interactive --yes pipelines hold "$EID" --body "{}"
praxicraft-assess --non-interactive --yes pipelines unhold "$EID" --body "{}"
praxicraft-assess --non-interactive --yes pipelines reject "$EID" --body '{"reason":"example"}'
