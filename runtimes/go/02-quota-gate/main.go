package main
import ("fmt"; "github.com/praxicraft-platform/praxicraft-go")
func main() {
  c, err := praxicraft.New(); if err != nil { panic(err) }
  org, err := c.Org.Retrieve(); if err != nil { panic(err) }
  fmt.Printf("%v\n", org)
  stats, err := c.Org.Stats(); if err != nil { panic(err) }
  fmt.Printf("%v\n", stats)
}
