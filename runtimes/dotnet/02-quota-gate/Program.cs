using Praxicraft.Assess;
var c=new Client();
Console.WriteLine(await c.Org.RetrieveAsync());
Console.WriteLine(await c.Org.StatsAsync());
