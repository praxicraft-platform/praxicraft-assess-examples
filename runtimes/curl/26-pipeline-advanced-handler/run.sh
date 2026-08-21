#!/usr/bin/env bash
jq -n '{type:"pipeline.advanced",data:{email:"c@example.com",pipeline_slug:"engineering-hiring",stage:"onsite"}}' \
  | jq '{notify_channel:"#hiring", stage:.data.stage, email:.data.email}'
