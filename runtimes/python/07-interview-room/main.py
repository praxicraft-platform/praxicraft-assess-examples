#!/usr/bin/env python3
"""Interview create via raw HTTP if SDK lacks interviews resource."""
import os, json, urllib.request

base = os.environ.get("PRAXICRAFT_API_BASE_URL", "https://assess.praxicraft.com").rstrip("/")
key = os.environ["PRAXICRAFT_API_KEY"]
body = json.dumps({
    "candidate_email": "candidate@example.com",
    "candidate_name": "Example Candidate",
}).encode()
req = urllib.request.Request(
    f"{base}/api/v1/public/interviews/create/",
    data=body,
    headers={"Authorization": f"Bearer {key}", "Content-Type": "application/json"},
    method="POST",
)
with urllib.request.urlopen(req) as resp:
    room = json.load(resp)
print(room)
room_id = room.get("id") or room.get("room_id")
if room_id:
    req2 = urllib.request.Request(
        f"{base}/api/v1/public/interviews/{room_id}/analysis/",
        headers={"Authorization": f"Bearer {key}"},
    )
    try:
        with urllib.request.urlopen(req2) as resp:
            print(json.load(resp))
    except Exception as e:
        print("analysis not ready:", e)
