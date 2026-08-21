const base = (process.env.PRAXICRAFT_API_BASE_URL || "https://assess.praxicraft.com").replace(/\/$/, "");
const key = process.env.PRAXICRAFT_API_KEY;
const res = await fetch(`${base}/api/v1/public/interviews/create/`, {
  method: "POST",
  headers: { Authorization: `Bearer ${key}`, "Content-Type": "application/json" },
  body: JSON.stringify({ candidate_email: "candidate@example.com", candidate_name: "Example" }),
});
const room = await res.json();
console.log(room);
