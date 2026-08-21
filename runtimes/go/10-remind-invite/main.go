package main
import ("fmt";"os";"github.com/praxicraft-platform/praxicraft-go")
func main() {
  c,err:=praxicraft.New(); if err!=nil {panic(err)}
  fmt.Println("scenario 10-remind-invite", c!=nil, os.Getenv("PRAXICRAFT_API_KEY")!="")
  // See runtimes/curl/10-remind-invite for exact HTTP; adapt Invites.Remind/Cancel/List etc.
}
