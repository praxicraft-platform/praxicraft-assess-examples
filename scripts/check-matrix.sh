#!/usr/bin/env bash
# Fail if catalog.yaml references a missing runtime scenario directory.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
CATALOG="$ROOT/scenarios/catalog.yaml"
missing=0

while IFS= read -r line; do
  if [[ "$line" =~ ^[[:space:]]*-[[:space:]]id:[[:space:]]*(.+)$ ]]; then
    id="${BASH_REMATCH[1]}"
    id="${id//\"/}"
    id="${id//\'/}"
    current_id="$id"
  fi
  if [[ "$line" =~ ^[[:space:]]*runtimes:[[:space:]]*\[(.*)\][[:space:]]*$ ]]; then
    IFS=',' read -ra rts <<< "${BASH_REMATCH[1]}"
    for rt in "${rts[@]}"; do
      rt="$(echo "$rt" | tr -d ' "')"
      dir="$ROOT/runtimes/$rt/$current_id"
      if [[ ! -d "$dir" ]]; then
        echo "MISSING: $dir"
        missing=1
      fi
    done
  fi
done < "$CATALOG"

# Special automation folders
for extra in n8n zapier mcp webhooks; do
  if [[ ! -d "$ROOT/runtimes/$extra" ]]; then
    echo "MISSING: runtimes/$extra"
    missing=1
  fi
done

if [[ "$missing" -ne 0 ]]; then
  echo "check-matrix failed"
  exit 1
fi
echo "check-matrix OK"
