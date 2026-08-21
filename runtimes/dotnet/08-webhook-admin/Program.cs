using Praxicraft.Assess;
var c=new Client();
var wh=await c.Webhooks.CreateAsync(new Dictionary<string,object?>{
  ["url"]="https://example.com/hooks/praxicraft",
  ["events"]=new[]{"candidate.passed"},
});
Console.WriteLine(wh);
var id=wh.GetProperty("id").GetString()!;
Console.WriteLine(await c.Webhooks.TestAsync(id));
Console.WriteLine(await c.Webhooks.DeliveriesAsync(id));
