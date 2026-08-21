const base = (process.env.PRAXICRAFT_API_BASE_URL || "https://assess.praxicraft.com").replace(/\/$/, "");
const key = process.env.PRAXICRAFT_API_KEY;
const res = await fetch(`${base}/api/v1/public/integrations/`, {
  headers: { Authorization: `Bearer ${key}` },
});
console.log(await res.json());
