#!/usr/bin/env bash
E="${PRAXICRAFT_ENROLLMENT_ID:?}"
praxicraft-assess --non-interactive --yes pipelines hold "$E" --body '{}'
praxicraft-assess --non-interactive --yes pipelines unhold "$E" --body '{}'
praxicraft-assess --non-interactive --yes pipelines reject "$E" --body '{"reason":"example"}'
