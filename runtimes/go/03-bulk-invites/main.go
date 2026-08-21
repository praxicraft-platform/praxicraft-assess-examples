package main
import ("fmt"; "os"; "github.com/praxicraft-platform/praxicraft-go")
func main() {
  c, err := praxicraft.New(); if err != nil { panic(err) }
  slug := os.Getenv("PRAXICRAFT_ASSESSMENT_SLUG"); if slug == "" { slug = "senior-backend-screen" }
  send := false
  out, err := c.Invites.BulkCreate(slug, []praxicraft.InviteCreateParams{{
    Email: "alice@example.com", Name: "Alice", SendEmail: &send,
  }, {Email: "bob@example.com", Name: "Bob", SendEmail: &send}})
  if err != nil { panic(err) }
  fmt.Printf("%v\n", out)
}
