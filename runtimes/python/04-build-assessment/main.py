#!/usr/bin/env python3
import os
from praxicraft import Client

client = Client()
case_id = os.environ.get("PRAXICRAFT_CASE_ID")
assessment = client.assessments.create(title="Example screen")
slug = assessment["slug"]
print("created", slug)
if case_id:
    client.assessments.attach_cases(slug, cases=[{"case_id": case_id, "source": "platform"}])
    print("attached case", case_id)
# activate if supported
if hasattr(client.assessments, "activate"):
    client.assessments.activate(slug)
    print("activated")
else:
    client.assessments.update(slug, status="active")
    print("updated status=active")
