#!/usr/bin/env python3
import os
from praxicraft import Client

client = Client()
slug = os.environ.get("PRAXICRAFT_PIPELINE_SLUG", "engineering-hiring")
enroll = client.pipelines.enroll(slug, email="candidate@example.com", name="Example")
print(enroll)
page = client.pipelines.list_enrollments(slug)
print("enrollments:", len(page.get("results") or page.get("enrollments") or []))
