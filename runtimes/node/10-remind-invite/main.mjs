import { Client } from '@praxicraft/assess';
await new Client().invites.remind(process.env.PRAXICRAFT_INVITE_TOKEN);
console.log('reminded');
