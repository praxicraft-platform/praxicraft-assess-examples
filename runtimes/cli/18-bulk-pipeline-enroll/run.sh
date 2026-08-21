#!/usr/bin/env bash
praxicraft-assess --non-interactive --output json pipelines bulk-enroll "${PRAXICRAFT_PIPELINE_SLUG:-engineering-hiring}" --body '{"candidates":[{"email":"a@example.com","name":"A"},{"email":"b@example.com","name":"B"}]}'
