# Webhook signature receivers

Verify `X-Praxicraft-Signature: sha256=<hex>` with HMAC-SHA256 over the **raw** body and your `whsec_…` secret.

Event catalog: https://docs.praxicraft.com/webhooks
