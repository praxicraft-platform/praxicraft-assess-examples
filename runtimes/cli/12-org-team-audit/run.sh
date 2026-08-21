#!/usr/bin/env bash
set -euo pipefail
praxicraft-assess --non-interactive --output json org team
praxicraft-assess --non-interactive --output json org audit-log
