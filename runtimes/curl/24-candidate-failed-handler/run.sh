#!/usr/bin/env bash
jq -n '{type:"candidate.failed",data:{email:"c@example.com",assessment_slug:"senior-backend-screen",score:42,passing_score:70}}' \
  | jq '{action:(if .data.score < .data.passing_score then "reject_or_coach" else "review" end), email:.data.email}'
