import { Client } from "@praxicraft/assess";
const client = new Client();
const a = await client.assessments.create({ title: "Example screen" });
console.log("created", a.slug);
const taskId = process.env.PRAXICRAFT_TASK_ID;
if (taskId) {
  await client.assessments.attachTasks(a.slug, { tasks: [{ task_id: taskId, source: "platform" }] });
}
if (client.assessments.activate) await client.assessments.activate(a.slug);
else await client.assessments.update(a.slug, { status: "active" });
console.log("done");
