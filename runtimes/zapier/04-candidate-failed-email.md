# candidate.failed → Email

App: [zapier-praxicraft-assess](https://github.com/praxicraft-platform/zapier-praxicraft-assess)
Docs: https://docs.praxicraft.com/zapier
## Goal
Email recruiting when a candidate fails.

## Steps
1. **Trigger:** New Assess Event → `candidate.failed`
2. **Action:** Email / Gmail → Send
   - To: recruiting@yourco.com
   - Body: include email, assessment, invite_token, score

## Scenario
`27-event-candidate-failed`
