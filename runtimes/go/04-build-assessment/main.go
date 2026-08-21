package main
import ("fmt"; "os"; "github.com/praxicraft-platform/praxicraft-go")
func main() {
  c, err := praxicraft.New(); if err != nil { panic(err) }
  a, err := c.Assessments.Create(map[string]any{"title": "Example screen"})
  if err != nil { panic(err) }
  slug, _ := a["slug"].(string)
  fmt.Println("created", slug)
  if id := os.Getenv("PRAXICRAFT_CASE_ID"); id != "" {
    _, err = c.Assessments.AttachCases(slug, []map[string]any{{"case_id": id, "source": "platform"}})
    if err != nil { panic(err) }
  }
}
