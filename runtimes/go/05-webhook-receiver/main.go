package main
import ("crypto/hmac"; "crypto/sha256"; "encoding/hex"; "fmt"; "os"; "github.com/praxicraft-platform/praxicraft-go")
func main() {
  secret := os.Getenv("PRAXICRAFT_WEBHOOK_SECRET")
  raw := []byte(`{"type":"candidate.passed"}`)
  mac := hmac.New(sha256.New, []byte(secret))
  mac.Write(raw)
  header := "sha256=" + hex.EncodeToString(mac.Sum(nil))
  fmt.Println("valid", praxicraft.VerifySignature(secret, raw, header))
}
