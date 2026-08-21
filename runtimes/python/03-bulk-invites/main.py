#!/usr/bin/env python3
import csv, os
from pathlib import Path
from praxicraft import Client

slug = os.environ.get("PRAXICRAFT_ASSESSMENT_SLUG", "senior-backend-screen")
csv_path = Path(__file__).resolve().parents[3] / "shared/fixtures/candidates.csv"
candidates = []
with csv_path.open() as f:
    for row in csv.DictReader(f):
        candidates.append({
            "email": row["email"],
            "name": row["name"],
            "send_email": row.get("send_email", "true").lower() == "true",
        })
client = Client()
out = client.invites.bulk_create(slug, candidates=candidates)
print(out)
