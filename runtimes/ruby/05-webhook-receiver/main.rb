require "praxicraft"
require "openssl"
secret=ENV.fetch("PRAXICRAFT_WEBHOOK_SECRET")
raw='{"type":"candidate.passed"}'
header="sha256="+OpenSSL::HMAC.hexdigest("SHA256", secret, raw)
p Praxicraft::Webhooks.verify_signature(secret, raw, header)
