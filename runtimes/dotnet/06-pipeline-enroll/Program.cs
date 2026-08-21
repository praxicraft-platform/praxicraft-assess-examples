using Praxicraft.Assess;
// Scenario 06-pipeline-enroll — see README matrix. Adapt from 01-quickstart patterns.
var client = new Client();
Console.WriteLine(await client.Org.RetrieveAsync());
