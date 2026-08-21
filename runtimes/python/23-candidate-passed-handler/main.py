import json
from pathlib import Path
p=json.loads(Path(__file__).resolve().parents[3].joinpath('shared/fixtures/webhook.candidate.passed.json').read_text())
print({'action':'advance_or_offer','email':p['data']['email'],'slug':p['data']['assessment_slug']})
