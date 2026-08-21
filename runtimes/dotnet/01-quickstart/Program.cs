using Praxicraft.Assess;
var client = new Client();
var slug = Environment.GetEnvironmentVariable("PRAXICRAFT_ASSESSMENT_SLUG") ?? "senior-backend-screen";
var page = await client.Assessments.ListAsync();
Console.WriteLine(page);
var invite = await client.Invites.CreateAsync(slug, new Dictionary<string, object?> {
  ["email"] = Environment.GetEnvironmentVariable("PRAXICRAFT_CANDIDATE_EMAIL") ?? "candidate@example.com",
  ["name"] = "Example Candidate",
  ["send_email"] = false,
});
var token = invite.GetProperty("invite_token").GetString()!;
Console.WriteLine(token);
Console.WriteLine(await client.Results.RetrieveAsync(token));
