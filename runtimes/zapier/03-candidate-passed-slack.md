# candidate.passed → Slack

App: [zapier-praxicraft-assess](https://github.com/praxicraft-platform/zapier-praxicraft-assess)
Docs: https://docs.praxicraft.com/zapier
## Goal
Notify hiring channel when someone passes.

## Steps
1. **Trigger:** Praxicraft Assess → **New Assess Event** → Event: `candidate.passed`
2. Connect API key (`ct_live_…` / `ct_test_…`).
3. **Action:** Slack → Send Channel Message
```
✅ {{email}} passed {{assessment_slug}}
Invite: {{invite_token}}
Score: {{score}}
```

## Scenario
`26-event-candidate-passed`
