import { Client } from "@praxicraft/assess";
const client = new Client();
const slug = process.env.PRAXICRAFT_PIPELINE_SLUG || "engineering-hiring";
console.log(await client.pipelines.enroll(slug, { email: "candidate@example.com", name: "Example" }));
console.log(await client.pipelines.listEnrollments(slug));
