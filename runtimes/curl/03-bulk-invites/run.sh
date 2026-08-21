BASE="${PRAXICRAFT_API_BASE_URL:-https://assess.praxicraft.com}"
KEY="${PRAXICRAFT_API_KEY:?set PRAXICRAFT_API_KEY}"
AUTH=(-H "Authorization: Bearer $KEY" -H "Content-Type: application/json" -H "Accept: application/json")

SLUG="${PRAXICRAFT_ASSESSMENT_SLUG:-senior-backend-screen}"
curl -sS -X POST "${BASE}/api/v1/public/assessments/${SLUG}/invites/bulk/" "${AUTH[@]}" \
  -d '{"candidates":[{"email":"alice@example.com","name":"Alice","send_email":false},{"email":"bob@example.com","name":"Bob","send_email":false}]}' | jq .
