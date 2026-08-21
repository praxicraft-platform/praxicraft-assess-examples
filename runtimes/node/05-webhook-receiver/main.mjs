import { createHmac } from "node:crypto";
import { verifySignature } from "@praxicraft/assess";
const secret = process.env.PRAXICRAFT_WEBHOOK_SECRET;
const raw = Buffer.from('{"type":"candidate.passed"}');
const header = "sha256=" + createHmac("sha256", secret).update(raw).digest("hex");
console.log("valid", verifySignature(secret, raw, header));
