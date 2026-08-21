# n8n workflow examples

Import any JSON via **n8n → Workflows → Import from File**.  
Replace credential id `REPLACE` with your **Praxicraft Assess API** credential (API key).

Official node: [`@praxicraft/n8n-nodes-assess`](https://www.npmjs.com/package/@praxicraft/n8n-nodes-assess)  
Docs: https://docs.praxicraft.com/n8n

## Workflows (24)

| File | Name | Scenario | Pattern |
|------|------|----------|---------|
| `candidate-passed-to-slack.json` | Praxicraft candidate passed → Slack | `event:candidate.passed` | `trigger→slack` |
| `candidate-failed-to-slack.json` | Praxicraft candidate failed → Slack | `event:candidate.failed` | `trigger→slack` |
| `assessment-completed-to-slack.json` | Praxicraft assessment completed → Slack | `event:assessment.completed` | `trigger→slack` |
| `pipeline-advanced-to-slack.json` | Praxicraft pipeline advanced → Slack | `event:pipeline.advanced` | `trigger→slack` |
| `pipeline-completed-to-slack.json` | Praxicraft pipeline completed → Slack | `event:pipeline.completed` | `trigger→slack` |
| `pipeline-rejected-to-slack.json` | Praxicraft pipeline rejected → Slack | `event:pipeline.rejected` | `trigger→slack` |
| `interview-completed-to-slack.json` | Praxicraft interview completed → Slack | `event:interview.completed` | `trigger→slack` |
| `interview-analysis_ready-to-slack.json` | Praxicraft interview analysis ready → Slack | `event:interview.analysis_ready` | `trigger→slack` |
| `candidate-passed-to-http.json` | Praxicraft candidate passed → HTTP | `event:candidate.passed` | `trigger→http` |
| `assessment-completed-to-http.json` | Praxicraft assessment completed → HTTP | `event:assessment.completed` | `trigger→http` |
| `manual-create-invitation.json` | Manual → Create invitation | `01-quickstart` | `manual→invite` |
| `manual-list-assessments.json` | Manual → List assessments | `01-quickstart` | `manual→list` |
| `manual-bulk-invite.json` | Manual → Bulk invite | `03-bulk-invites` | `manual→bulkInvite` |
| `manual-org-stats.json` | Manual → Org stats (quota gate) | `02-quota-gate` | `manual→stats` |
| `manual-pipeline-enroll.json` | Manual → Pipeline enroll | `06-pipeline-enroll` | `manual→enroll` |
| `manual-create-interview.json` | Manual → Create interview | `07-interview-room` | `manual→interview` |
| `manual-create-webhook.json` | Manual → Create webhook | `08-webhook-admin` | `manual→webhook` |
| `ats-webhook-to-invite.json` | ATS webhook → Create invitation | `01-quickstart` | `ats→invite` |
| `passed-to-pipeline-enroll.json` | candidate.passed → Pipeline enroll | `06-pipeline-enroll` | `passed→enroll` |
| `failed-to-recruiting-http.json` | candidate.failed → Recruiting HTTP | `27-event-candidate-failed` | `failed→http` |
| `analysis-ready-to-slack.json` | interview.analysis_ready → Slack | `30-event-interview-ready` | `analysis→slack` |
| `quota-then-invite.json` | Quota check → List assessments → Invite | `02-quota-gate+01-quickstart` | `multi-step` |
| `manual-list-integrations.json` | Manual → List integrations | `09-integrations` | `manual→integrations` |
| `pipeline-advanced-fanout.json` | pipeline.advanced → Slack + ATS HTTP | `29-event-pipeline-advanced` | `fan-out` |

## How to use

1. Create an Assess API key (`ct_test_…` while learning).
2. In n8n, add credential **Praxicraft Assess API**.
3. Import a workflow JSON.
4. Open each Praxicraft node → select your credential.
5. For triggers: set workflow **Active** (n8n registers + verifies the Assess webhook for you).
6. For Slack nodes: connect Slack credentials or swap for Email/HTTP.

## Patterns covered

- Trigger → Slack (pass/fail/completed/pipeline/interview)
- Trigger → HTTP (ATS sync)
- Trigger fan-out (Slack + HTTP)
- Manual → invite / bulk invite / org stats / enroll / interview / webhook / integrations
- ATS inbound webhook → create invitation
- candidate.passed → pipeline enroll
- Multi-step: quota → list assessments → invite
