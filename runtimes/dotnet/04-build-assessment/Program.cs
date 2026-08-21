using Praxicraft.Assess;
// Scenario 04-build-assessment — see README matrix. Adapt from 01-quickstart patterns.
var client = new Client();
Console.WriteLine(await client.Org.RetrieveAsync());
