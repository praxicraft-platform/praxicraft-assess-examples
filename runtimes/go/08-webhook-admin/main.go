package main
import ("fmt"; "github.com/praxicraft-platform/praxicraft-go")
func main() {
  c, err := praxicraft.New(); if err != nil { panic(err) }
  wh, err := c.Webhooks.Create(map[string]any{
    "url": "https://example.com/hooks/praxicraft",
    "events": []string{"candidate.passed", "assessment.completed"},
  })
  if err != nil { panic(err) }
  fmt.Printf("%v\n", wh)
  id, _ := wh["id"].(string)
  fmt.Println(c.Webhooks.Test(id))
  fmt.Println(c.Webhooks.Deliveries(id, nil))
}
