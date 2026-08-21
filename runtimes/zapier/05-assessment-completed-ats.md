# assessment.completed → ATS HTTP

App: [zapier-praxicraft-assess](https://github.com/praxicraft-platform/zapier-praxicraft-assess)
Docs: https://docs.praxicraft.com/zapier
## Goal
Push completion into your ATS.

## Steps
1. **Trigger:** New Assess Event → `assessment.completed`
2. **Action:** Webhooks by Zapier → POST
   - URL: your ATS endpoint
   - JSON: entire Assess payload

## Scenario
`28-event-assessment-completed`
