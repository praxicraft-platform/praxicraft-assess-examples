using System.Security.Cryptography;
using System.Text;
using Praxicraft.Assess;
var secret=Environment.GetEnvironmentVariable("PRAXICRAFT_WEBHOOK_SECRET")!;
var raw=Encoding.UTF8.GetBytes("{\"type\":\"candidate.passed\"}");
using var h=new HMACSHA256(Encoding.UTF8.GetBytes(secret));
var header="sha256="+Convert.ToHexString(h.ComputeHash(raw)).ToLowerInvariant();
Console.WriteLine(Webhooks.VerifySignature(secret, raw, header));
