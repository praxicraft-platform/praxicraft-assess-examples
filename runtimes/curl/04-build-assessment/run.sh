BASE="${PRAXICRAFT_API_BASE_URL:-https://assess.praxicraft.com}"
KEY="${PRAXICRAFT_API_KEY:?set PRAXICRAFT_API_KEY}"
AUTH=(-H "Authorization: Bearer $KEY" -H "Content-Type: application/json" -H "Accept: application/json")

CREATED=$(curl -sS -X POST "${BASE}/api/v1/public/assessments/create/" "${AUTH[@]}" -d '{"title":"Example screen"}')
echo "$CREATED" | jq .
SLUG=$(echo "$CREATED" | jq -r .slug)
if [ -n "${PRAXICRAFT_CASE_ID:-}" ]; then
  curl -sS -X POST "${BASE}/api/v1/public/assessments/${SLUG}/cases/attach/" "${AUTH[@]}" \
    -d "{\"cases\":[{\"case_id\":\"${PRAXICRAFT_CASE_ID}\",\"source\":\"platform\"}]}" | jq .
fi
curl -sS -X PATCH "${BASE}/api/v1/public/assessments/${SLUG}/update/" "${AUTH[@]}" -d '{"status":"active"}' | jq .
