#!/usr/bin/env bash
set -euo pipefail
praxicraft-assess --non-interactive --output json interviews templates list
praxicraft-assess --non-interactive --output json interviews templates create --body '{"title":"Example template"}'
