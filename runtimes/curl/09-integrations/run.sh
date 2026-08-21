BASE="${PRAXICRAFT_API_BASE_URL:-https://assess.praxicraft.com}"
KEY="${PRAXICRAFT_API_KEY:?set PRAXICRAFT_API_KEY}"
AUTH=(-H "Authorization: Bearer $KEY" -H "Content-Type: application/json" -H "Accept: application/json")

curl -sS "${BASE}/api/v1/public/integrations/" "${AUTH[@]}" | jq .
PROVIDER="${PRAXICRAFT_INTEGRATION_PROVIDER:-greenhouse}"
curl -sS "${BASE}/api/v1/public/integrations/${PROVIDER}/connect/" "${AUTH[@]}" | jq . || true
curl -sS -X POST "${BASE}/api/v1/public/integrations/${PROVIDER}/test/" "${AUTH[@]}" -d '{}' | jq . || true
