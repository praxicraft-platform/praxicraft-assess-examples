#!/usr/bin/env python3
import os
from praxicraft import Client

client = Client()
task_id = os.environ.get("PRAXICRAFT_TASK_ID")
assessment = client.assessments.create(title="Example screen")
slug = assessment["slug"]
print("created", slug)
if task_id:
    client.assessments.attach_tasks(slug, cases=[{"task_id": task_id, "source": "platform"}])
    print("attached task", task_id)
# activate if supported
if hasattr(client.assessments, "activate"):
    client.assessments.activate(slug)
    print("activated")
else:
    client.assessments.update(slug, status="active")
    print("updated status=active")
