#!/usr/bin/env bash
set -euo pipefail
praxicraft-assess --non-interactive --output json interviews bulk-create --body '{"candidates":[{"candidate_email":"a@example.com","candidate_name":"A"}]}'
