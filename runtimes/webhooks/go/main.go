package main
import ("fmt";"io";"net/http";"os";"github.com/praxicraft-platform/praxicraft-go")
func main() {
  secret := os.Getenv("PRAXICRAFT_WEBHOOK_SECRET")
  http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
    raw, _ := io.ReadAll(r.Body)
    ok := praxicraft.VerifySignature(secret, raw, r.Header.Get("X-Praxicraft-Signature"))
    if !ok { http.Error(w, "invalid", 401); return }
    fmt.Fprint(w, "ok")
  })
  http.ListenAndServe(":8787", nil)
}
