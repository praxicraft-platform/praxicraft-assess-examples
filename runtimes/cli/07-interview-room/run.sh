#!/usr/bin/env bash
ROOM=$(praxicraft-assess --non-interactive --output json interviews create --body '{"candidate_email":"candidate@example.com","candidate_name":"Example"}')
echo "$ROOM"
ID=$(echo "$ROOM" | jq -r '.id // .room_id')
praxicraft-assess --non-interactive --output json interviews analysis "$ID" || true
