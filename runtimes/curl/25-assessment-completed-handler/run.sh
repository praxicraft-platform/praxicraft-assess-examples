#!/usr/bin/env bash
jq -n '{type:"assessment.completed",data:{email:"c@example.com",assessment_slug:"senior-backend-screen",invite_token:"00000000-0000-0000-0000-000000000001"}}' \
  | jq '{next:"fetch_result", token:.data.invite_token}'
