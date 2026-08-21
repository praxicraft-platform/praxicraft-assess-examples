#!/usr/bin/env python3
"""Minimal signature check (see also runtimes/webhooks/python)."""
import os
from praxicraft import verify_signature

secret = os.environ["PRAXICRAFT_WEBHOOK_SECRET"]
raw = b'{"type":"candidate.passed"}'
# In production read raw body bytes from the HTTP request.
header = "sha256=" + __import__("hmac").new(
    secret.encode(), raw, "sha256"
).hexdigest()
print("valid:", verify_signature(secret, raw, header))
