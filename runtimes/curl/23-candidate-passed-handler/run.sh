#!/usr/bin/env bash
# Parse a sample candidate.passed payload (fixture)
jq '{email: .data.email, assessment: .data.assessment_slug, token: .data.invite_token}' \
  "$(dirname "$0")/../../../shared/fixtures/webhook.candidate.passed.json"
