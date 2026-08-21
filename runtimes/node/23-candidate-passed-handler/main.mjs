import { readFileSync } from 'node:fs';
import { fileURLToPath } from 'node:url';
import { dirname, join } from 'node:path';
const p=JSON.parse(readFileSync(join(dirname(fileURLToPath(import.meta.url)),'../../../shared/fixtures/webhook.candidate.passed.json'),'utf8'));
console.log({action:'advance_or_offer', email:p.data.email, slug:p.data.assessment_slug});
