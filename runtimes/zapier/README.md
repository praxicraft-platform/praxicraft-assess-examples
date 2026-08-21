# Zapier examples

Official app: https://github.com/praxicraft-platform/zapier-praxicraft-assess  
Product docs: https://docs.praxicraft.com/zapier

Each file is a **complete zap recipe** (trigger → actions → field mapping notes). Build them in the Zapier UI — Zapier does not export portable JSON the way n8n does.

## Zaps (24)

| File | Recipe |
|------|--------|
| [`01-create-invitation.md`](01-create-invitation.md) | Create invitation (action) |
| [`02-bulk-invite.md`](02-bulk-invite.md) | Bulk invite candidates |
| [`03-candidate-passed-slack.md`](03-candidate-passed-slack.md) | candidate.passed → Slack |
| [`04-candidate-failed-email.md`](04-candidate-failed-email.md) | candidate.failed → Email |
| [`05-assessment-completed-ats.md`](05-assessment-completed-ats.md) | assessment.completed → ATS HTTP |
| [`06-pipeline-advanced-slack.md`](06-pipeline-advanced-slack.md) | pipeline.advanced → Slack |
| [`07-pipeline-completed-notify.md`](07-pipeline-completed-notify.md) | pipeline.completed → Slack + Email |
| [`08-pipeline-rejected.md`](08-pipeline-rejected.md) | pipeline.rejected → CRM note |
| [`09-interview-completed.md`](09-interview-completed.md) | interview.completed → Slack |
| [`10-interview-analysis-ready.md`](10-interview-analysis-ready.md) | interview.analysis_ready → Notion/Docs |
| [`11-passed-enroll-pipeline.md`](11-passed-enroll-pipeline.md) | candidate.passed → Enroll pipeline |
| [`12-new-sheet-row-invite.md`](12-new-sheet-row-invite.md) | Google Sheet row → Invite |
| [`13-ats-greenhouse-style.md`](13-ats-greenhouse-style.md) | ATS application → Invite |
| [`14-list-assessments-digest.md`](14-list-assessments-digest.md) | Daily digest of assessments |
| [`15-org-stats-alert.md`](15-org-stats-alert.md) | Low invite quota alert |
| [`16-create-assessment.md`](16-create-assessment.md) | Create assessment from form |
| [`17-webhook-admin-via-api.md`](17-webhook-admin-via-api.md) | Register webhook via Zapier |
| [`18-remind-stale-invites.md`](18-remind-stale-invites.md) | Remind stale invites |
| [`19-cancel-withdrawn.md`](19-cancel-withdrawn.md) | Cancel invite when ATS rejects |
| [`20-results-to-sheet.md`](20-results-to-sheet.md) | Pull results into Google Sheets |
| [`21-fanout-passed.md`](21-fanout-passed.md) | candidate.passed fan-out |
| [`22-interview-create.md`](22-interview-create.md) | Create live interview from calendar |
| [`23-integration-test.md`](23-integration-test.md) | Test ATS integration health |
| [`24-test-vs-live.md`](24-test-vs-live.md) | Test mode sandbox Zap |

## Credential tip

Create two Zaps/credentials when learning: `ct_test_…` and `ct_live_…`. Test events never hit live destinations.
