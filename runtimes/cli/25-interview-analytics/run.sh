#!/usr/bin/env bash
set -euo pipefail
praxicraft-assess --non-interactive --output json interviews analytics
praxicraft-assess --non-interactive --output json interviews org-tasks
