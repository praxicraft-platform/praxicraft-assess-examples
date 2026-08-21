import { Client } from '@praxicraft/assess';
console.log(await new Client().invites.list({ status: 'pending' }));
