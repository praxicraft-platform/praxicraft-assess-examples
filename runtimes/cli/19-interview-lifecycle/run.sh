#!/usr/bin/env bash
ROOM=$(praxicraft-assess --non-interactive --output json interviews create --body '{"candidate_email":"candidate@example.com","candidate_name":"Example"}')
echo "$ROOM"
ID=$(echo "$ROOM" | jq -r '.id // .room_id')
praxicraft-assess --non-interactive interviews reschedule "$ID" --body '{"scheduled_at":"2030-01-01T15:00:00Z"}' || true
praxicraft-assess --non-interactive interviews replay "$ID" || true
praxicraft-assess --non-interactive interviews share "$ID" --body '{"email":"hiring@example.com"}' || true
praxicraft-assess --non-interactive --yes interviews cancel "$ID" --body '{}' || true
