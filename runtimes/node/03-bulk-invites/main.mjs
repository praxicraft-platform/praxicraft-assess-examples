import { readFileSync } from "node:fs";
import { fileURLToPath } from "node:url";
import { dirname, join } from "node:path";
import { Client } from "@praxicraft/assess";

const root = join(dirname(fileURLToPath(import.meta.url)), "../../../shared/fixtures/candidates.csv");
const lines = readFileSync(root, "utf8").trim().split("\n").slice(1);
const candidates = lines.map((line) => {
  const [email, name, send_email] = line.split(",");
  return { email, name, send_email: send_email === "true" };
});
const client = new Client();
const slug = process.env.PRAXICRAFT_ASSESSMENT_SLUG || "senior-backend-screen";
console.log(await client.invites.bulkCreate(slug, { candidates }));
