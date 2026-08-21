# Create invitation (action)

App: [zapier-praxicraft-assess](https://github.com/praxicraft-platform/zapier-praxicraft-assess)
Docs: https://docs.praxicraft.com/zapier
## Goal
Invite one candidate to an assessment from Zapier.

## Steps
1. **Trigger:** Manual / Schedule / ATS “New candidate” (any app).
2. **Action:** Praxicraft Assess → **Create Invitation**
   - Assessment: `senior-backend-screen` (or map from trigger)
   - Email / Name: map from trigger
   - Send email: true/false
3. **Optional:** Slack → “Invite sent for {{email}} token {{invite_token}}”

## Scenario
`01-quickstart`
