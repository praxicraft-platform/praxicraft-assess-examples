BASE="${PRAXICRAFT_API_BASE_URL:-https://assess.praxicraft.com}"
KEY="${PRAXICRAFT_API_KEY:?set PRAXICRAFT_API_KEY}"
AUTH=(-H "Authorization: Bearer $KEY" -H "Content-Type: application/json" -H "Accept: application/json")

SLUG="${PRAXICRAFT_PIPELINE_SLUG:-engineering-hiring}"
curl -sS -X POST "${BASE}/api/v1/public/pipelines/${SLUG}/enroll/" "${AUTH[@]}" \
  -d '{"email":"candidate@example.com","name":"Example"}' | jq .
curl -sS "${BASE}/api/v1/public/pipelines/${SLUG}/enrollments/" "${AUTH[@]}" | jq .
