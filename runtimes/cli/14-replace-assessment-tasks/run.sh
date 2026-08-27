#!/usr/bin/env bash
praxicraft-assess --non-interactive assessments tasks replace "${PRAXICRAFT_ASSESSMENT_SLUG:?}" --body "{\"cases\":[{\"task_id\":\"${PRAXICRAFT_TASK_ID:?}\",\"source\":\"platform\"}]}"
