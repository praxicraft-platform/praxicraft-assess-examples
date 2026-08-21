BASE="${PRAXICRAFT_API_BASE_URL:-https://assess.praxicraft.com}"
KEY="${PRAXICRAFT_API_KEY:?set PRAXICRAFT_API_KEY}"
AUTH=(-H "Authorization: Bearer $KEY" -H "Content-Type: application/json" -H "Accept: application/json")

curl -sS "${BASE}/api/v1/public/org/" "${AUTH[@]}" | jq .
curl -sS "${BASE}/api/v1/public/org/stats/" "${AUTH[@]}" | jq .
