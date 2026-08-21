#!/usr/bin/env bash
praxicraft-assess --non-interactive assessments cases replace "${PRAXICRAFT_ASSESSMENT_SLUG:?}" --body "{\"cases\":[{\"case_id\":\"${PRAXICRAFT_CASE_ID:?}\",\"source\":\"platform\"}]}"
