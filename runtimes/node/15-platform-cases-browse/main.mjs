const base=(process.env.PRAXICRAFT_API_BASE_URL||'https://assess.praxicraft.com').replace(/\/$/,'');
const r=await fetch(base+'/api/v1/public/platform-cases/',{headers:{Authorization:`Bearer ${process.env.PRAXICRAFT_API_KEY}`}});
console.log(await r.json());
