package main
import ("fmt"; "os"; "github.com/praxicraft-platform/praxicraft-go")
func main() {
  c, err := praxicraft.New(); if err != nil { panic(err) }
  slug := os.Getenv("PRAXICRAFT_PIPELINE_SLUG"); if slug == "" { slug = "engineering-hiring" }
  out, err := c.Pipelines.Enroll(slug, map[string]any{"email": "candidate@example.com", "name": "Example"})
  if err != nil { panic(err) }
  fmt.Printf("%v\n", out)
  page, err := c.Pipelines.ListEnrollments(slug, nil)
  if err != nil { panic(err) }
  fmt.Printf("%v\n", page)
}
