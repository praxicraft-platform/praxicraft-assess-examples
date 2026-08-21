#!/usr/bin/env python3
from http.server import BaseHTTPRequestHandler, HTTPServer
import os
from praxicraft import verify_signature

SECRET = os.environ["PRAXICRAFT_WEBHOOK_SECRET"]

class H(BaseHTTPRequestHandler):
    def do_POST(self):
        n = int(self.headers.get("Content-Length", 0))
        raw = self.rfile.read(n)
        sig = self.headers.get("X-Praxicraft-Signature", "")
        ok = verify_signature(SECRET, raw, sig)
        self.send_response(200 if ok else 401)
        self.end_headers()
        self.wfile.write(b"ok" if ok else b"invalid")

HTTPServer(("0.0.0.0", 8787), H).serve_forever()
