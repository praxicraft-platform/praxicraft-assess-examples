BASE="${PRAXICRAFT_API_BASE_URL:-https://assess.praxicraft.com}"
KEY="${PRAXICRAFT_API_KEY:?set PRAXICRAFT_API_KEY}"
AUTH=(-H "Authorization: Bearer $KEY" -H "Content-Type: application/json" -H "Accept: application/json")

ROOM=$(curl -sS -X POST "${BASE}/api/v1/public/interviews/create/" "${AUTH[@]}" \
  -d '{"candidate_email":"candidate@example.com","candidate_name":"Example"}')
echo "$ROOM" | jq .
ID=$(echo "$ROOM" | jq -r '.id // .room_id')
curl -sS "${BASE}/api/v1/public/interviews/${ID}/analysis/" "${AUTH[@]}" | jq . || true
