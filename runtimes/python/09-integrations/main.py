#!/usr/bin/env python3
import os, json, urllib.request

base = os.environ.get("PRAXICRAFT_API_BASE_URL", "https://assess.praxicraft.com").rstrip("/")
key = os.environ["PRAXICRAFT_API_KEY"]

def get(path):
    req = urllib.request.Request(f"{base}/api/v1/public{path}", headers={"Authorization": f"Bearer {key}"})
    with urllib.request.urlopen(req) as resp:
        return json.load(resp)

print(get("/integrations/"))
