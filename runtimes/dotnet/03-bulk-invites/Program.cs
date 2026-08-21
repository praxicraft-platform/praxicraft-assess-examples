using Praxicraft.Assess;
var c=new Client();
var slug=Environment.GetEnvironmentVariable("PRAXICRAFT_ASSESSMENT_SLUG")??"senior-backend-screen";
Console.WriteLine(await c.Invites.BulkCreateAsync(slug, new Dictionary<string,object?>{
  ["candidates"]=new object[]{
    new Dictionary<string,object?>{["email"]="alice@example.com",["name"]="Alice",["send_email"]=false},
    new Dictionary<string,object?>{["email"]="bob@example.com",["name"]="Bob",["send_email"]=false},
  }
}));
