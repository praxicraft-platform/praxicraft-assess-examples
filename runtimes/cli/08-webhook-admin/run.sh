#!/usr/bin/env bash
WH=$(praxicraft-assess --non-interactive --output json webhooks create --body '{"url":"https://example.com/hooks/praxicraft","events":["candidate.passed"]}')
echo "$WH"
ID=$(echo "$WH" | jq -r .id)
praxicraft-assess --non-interactive --output json webhooks test "$ID"
praxicraft-assess --non-interactive --output json webhooks deliveries "$ID"
