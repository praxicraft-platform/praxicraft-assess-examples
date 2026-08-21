package main
import ("fmt";"os";"github.com/praxicraft-platform/praxicraft-go")
func main() {
  c,err:=praxicraft.New(); if err!=nil {panic(err)}
  fmt.Println("scenario 12-list-invites-filter", c!=nil, os.Getenv("PRAXICRAFT_API_KEY")!="")
  // See runtimes/curl/12-list-invites-filter for exact HTTP; adapt Invites.Remind/Cancel/List etc.
}
