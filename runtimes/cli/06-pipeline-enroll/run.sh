#!/usr/bin/env bash
SLUG="${PRAXICRAFT_PIPELINE_SLUG:-engineering-hiring}"
praxicraft-assess --non-interactive --output json pipelines enroll "$SLUG" --body '{"email":"candidate@example.com","name":"Example"}'
praxicraft-assess --non-interactive --output json pipelines enrollments "$SLUG"
