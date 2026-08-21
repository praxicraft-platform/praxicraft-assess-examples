import { Client } from '@praxicraft/assess';
const slug=process.env.PRAXICRAFT_ASSESSMENT_SLUG||'senior-backend-screen';
console.log(await new Client().assessments.results?.(slug) || await new Client().results.list?.(slug));
