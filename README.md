# Praxicraft Assess examples

Runnable recipes for the **[Praxicraft Assess](https://assess.praxicraft.com)** Public API — **30 scenarios** across SDKs, curl, CLI, webhooks, **n8n (24 workflows)**, and **Zapier (24 zap recipes)**.

## Quick start

```bash
cp shared/.env.example .env
# set PRAXICRAFT_API_KEY=ct_test_…
set -a && source .env && set +a
./scripts/check-matrix.sh
```

## Scenario catalog (30)

Canonical source: [`scenarios/catalog.yaml`](scenarios/catalog.yaml)

| ID | What it proves |
|----|----------------|
| `01-quickstart` | list assessments → invite → result |
| `02-quota-gate` | org / invite quota |
| `03-bulk-invites` | bulk create |
| `04-build-assessment` | create → attach tasks → activate |
| `05-webhook-receiver` | HMAC verify |
| `06-pipeline-enroll` | enroll + list enrollments |
| `07-interview-room` | create interview + analysis |
| `08-webhook-admin` | create / test / deliveries |
| `09-integrations` | list / connect / test |
| `10-list-invites` | list invitations |
| `11-remind-cancel` | remind + cancel |
| `12-org-team-audit` | team + audit log |
| `13-org-squads` | squads + members |
| `14-platform-tasks` | platform task library |
| `15-org-tasks-crud` | org task create/get/update |
| `16-assessment-tasks` | assessment task list/replace/remove |
| `17-assessment-duplicate` | duplicate assessment |
| `18-assessment-results-page` | paginate results |
| `19-pipeline-bulk-enroll` | bulk enroll |
| `20-pipeline-hold-reject` | hold / unhold / reject |
| `21-webhook-retry` | retry delivery |
| `22-interview-bulk` | bulk create interviews |
| `23-interview-lifecycle` | reschedule / share / cancel |
| `24-interview-templates` | template CRUD |
| `25-interview-analytics` | analytics + org-tasks |
| `26`–`30` | event payload recipes (passed/failed/completed/pipeline/interview) |

Implementations: `runtimes/<python|node|go|php|ruby|java|dotnet|curl|cli>/<id>/`

## Automations

| Surface | Location | Count |
|---------|----------|-------|
| **n8n** | [`runtimes/n8n/`](runtimes/n8n/) | **24** importable workflow JSON files |
| **Zapier** | [`runtimes/zapier/`](runtimes/zapier/) | **24** step-by-step zap recipes |
| **MCP** | [`runtimes/mcp/`](runtimes/mcp/) | Cursor/Claude config + prompts |
| **Webhook servers** | [`runtimes/webhooks/`](runtimes/webhooks/) | verify helpers per language |

### n8n highlights

- Event → Slack for pass/fail/completed/pipeline/interview
- Event → HTTP (ATS)
- Fan-out (Slack + HTTP)
- Manual → invite, bulk invite, stats, enroll, interview, webhook, integrations
- ATS webhook → invite
- `candidate.passed` → pipeline enroll
- Multi-step quota → list → invite

Import: **n8n → Import from File** → pick a JSON under `runtimes/n8n/`.

### Zapier highlights

- Create / bulk invite
- Sheet / ATS → invite
- Event Zaps for every major Assess event
- Quota alerts, results → Sheets, interview from Calendly, fan-out paths

## Clients

| Runtime | Package |
|---------|---------|
| Python | `praxicraft` |
| Node | `@praxicraft/assess` |
| Go | `praxicraft-go` |
| PHP | `praxicraft/assess` |
| Ruby | `praxicraft` |
| Java | `com.praxicraft:assess` |
| .NET | `Praxicraft.Assess` |
| CLI | [`praxicraft-assess`](https://github.com/praxicraft-platform/praxicraft-assess-cli) |

## Docs

https://docs.praxicraft.com

## License

MIT
