#!/usr/bin/env bash
jq -n '{type:"interview.analysis_ready",data:{room_id:"00000000-0000-0000-0000-000000000099"}}' \
  | jq '{fetch_analysis:true, room_id:.data.room_id}'
