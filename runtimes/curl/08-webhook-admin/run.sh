BASE="${PRAXICRAFT_API_BASE_URL:-https://assess.praxicraft.com}"
KEY="${PRAXICRAFT_API_KEY:?set PRAXICRAFT_API_KEY}"
AUTH=(-H "Authorization: Bearer $KEY" -H "Content-Type: application/json" -H "Accept: application/json")

WH=$(curl -sS -X POST "${BASE}/api/v1/public/webhooks/create/" "${AUTH[@]}" \
  -d '{"url":"https://example.com/hooks/praxicraft","events":["candidate.passed","assessment.completed"]}')
echo "$WH" | jq .
ID=$(echo "$WH" | jq -r .id)
curl -sS -X POST "${BASE}/api/v1/public/webhooks/${ID}/test/" "${AUTH[@]}" -d '{}' | jq .
curl -sS "${BASE}/api/v1/public/webhooks/${ID}/deliveries/" "${AUTH[@]}" | jq .
