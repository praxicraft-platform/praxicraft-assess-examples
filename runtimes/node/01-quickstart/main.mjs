import { Client } from "@praxicraft/assess";

const client = new Client();
const slug = process.env.PRAXICRAFT_ASSESSMENT_SLUG || "senior-backend-screen";
const page = await client.assessments.list();
console.log("assessments", (page.results || []).length);
const invite = await client.invites.create(slug, {
  email: process.env.PRAXICRAFT_CANDIDATE_EMAIL || "candidate@example.com",
  name: "Example Candidate",
  send_email: false,
});
console.log("invite_token", invite.invite_token);
const result = await client.results.retrieve(invite.invite_token);
console.log("result", result.status || result);
