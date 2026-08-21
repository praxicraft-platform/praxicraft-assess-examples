BASE="${PRAXICRAFT_API_BASE_URL:-https://assess.praxicraft.com}"
KEY="${PRAXICRAFT_API_KEY:?set PRAXICRAFT_API_KEY}"
AUTH=(-H "Authorization: Bearer $KEY" -H "Content-Type: application/json" -H "Accept: application/json")

SLUG="${PRAXICRAFT_ASSESSMENT_SLUG:-senior-backend-screen}"
curl -sS "${BASE}/api/v1/public/assessments/" "${AUTH[@]}" | jq .
INVITE=$(curl -sS -X POST "${BASE}/api/v1/public/assessments/${SLUG}/invites/" "${AUTH[@]}" \
  -d '{"email":"candidate@example.com","name":"Example","send_email":false}')
echo "$INVITE" | jq .
TOKEN=$(echo "$INVITE" | jq -r .invite_token)
curl -sS "${BASE}/api/v1/public/invites/${TOKEN}/result/" "${AUTH[@]}" | jq .
