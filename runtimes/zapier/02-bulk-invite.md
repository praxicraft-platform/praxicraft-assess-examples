# Bulk invite candidates

App: [zapier-praxicraft-assess](https://github.com/praxicraft-platform/zapier-praxicraft-assess)
Docs: https://docs.praxicraft.com/zapier
## Goal
Send many invites in one Zap step.

## Steps
1. **Trigger:** Google Sheets → New Spreadsheet Row (or Schedule + Formatter to build list).
2. **Action:** Code by Zapier or Formatter to build an array of `{email, name}`.
3. **Action:** Praxicraft Assess → **Bulk Invite Candidates**
   - Assessment slug
   - Candidates: the array
4. Store invite tokens in Sheet columns.

## Scenario
`03-bulk-invites`
