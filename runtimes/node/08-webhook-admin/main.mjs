import { Client } from "@praxicraft/assess";
const client = new Client();
const wh = await client.webhooks.create({
  url: "https://example.com/hooks/praxicraft",
  events: ["candidate.passed", "assessment.completed"],
});
console.log(wh);
console.log(await client.webhooks.test(wh.id));
console.log(await client.webhooks.deliveries(wh.id));
