# candidate.passed → Slack

1. Trigger: **Praxicraft Assess** → New Assess Event → `candidate.passed`
2. Connect with API key (`ct_live_…` / `ct_test_…`)
3. Action: **Slack** → Send Channel Message
4. Message body example:

```
Candidate {{email}} passed {{assessment_slug}} (invite {{invite_token}})
```
