import http from "node:http";
import { verifySignature } from "@praxicraft/assess";
const SECRET = process.env.PRAXICRAFT_WEBHOOK_SECRET;
http.createServer((req, res) => {
  const chunks = [];
  req.on("data", (c) => chunks.push(c));
  req.on("end", () => {
    const raw = Buffer.concat(chunks);
    const ok = verifySignature(SECRET, raw, req.headers["x-praxicraft-signature"] || "");
    res.writeHead(ok ? 200 : 401);
    res.end(ok ? "ok" : "invalid");
  });
}).listen(8787, () => console.log("listening :8787"));
