import { Client } from "@praxicraft/assess";
const client = new Client();
console.log(await client.org.retrieve());
console.log(await client.org.stats());
