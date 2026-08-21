#!/usr/bin/env python3
"""01-quickstart: list assessments → create invite → fetch result."""
import os
from praxicraft import Client

def main() -> None:
    client = Client()
    slug = os.environ.get("PRAXICRAFT_ASSESSMENT_SLUG", "senior-backend-screen")
    page = client.assessments.list()
    print("assessments:", len(page.get("results") or []))
    invite = client.invites.create(
        slug,
        email=os.environ.get("PRAXICRAFT_CANDIDATE_EMAIL", "candidate@example.com"),
        name="Example Candidate",
        send_email=False,
    )
    token = invite["invite_token"]
    print("invite_token:", token)
    result = client.results.retrieve(invite_token=token)
    print("result status:", result.get("status") or result)

if __name__ == "__main__":
    main()
