import { Client } from "@praxicraft/assess";
const client = new Client();
const a = await client.assessments.create({ title: "Example screen" });
console.log("created", a.slug);
const caseId = process.env.PRAXICRAFT_CASE_ID;
if (caseId) {
  await client.assessments.attachCases(a.slug, { cases: [{ case_id: caseId, source: "platform" }] });
}
if (client.assessments.activate) await client.assessments.activate(a.slug);
else await client.assessments.update(a.slug, { status: "active" });
console.log("done");
