package main
import ("fmt";"os";"github.com/praxicraft-platform/praxicraft-go")
func main() {
  c,err:=praxicraft.New(); if err!=nil {panic(err)}
  fmt.Println("scenario 22-results-cohort", c!=nil, os.Getenv("PRAXICRAFT_API_KEY")!="")
  // See runtimes/curl/22-results-cohort for exact HTTP; adapt Invites.Remind/Cancel/List etc.
}
