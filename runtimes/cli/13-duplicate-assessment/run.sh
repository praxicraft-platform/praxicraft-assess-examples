#!/usr/bin/env bash
praxicraft-assess --non-interactive --output json assessments duplicate "${PRAXICRAFT_ASSESSMENT_SLUG:-senior-backend-screen}" --body '{}'
