import { Client } from '@praxicraft/assess';
await new Client().invites.cancel(process.env.PRAXICRAFT_INVITE_TOKEN);
console.log('cancelled');
