#!/usr/bin/env python3
from praxicraft import Client

client = Client()
wh = client.webhooks.create(url="https://example.com/hooks/praxicraft", events=["candidate.passed", "assessment.completed"])
print(wh)
wid = wh["id"]
print(client.webhooks.test(wid))
print(client.webhooks.deliveries(wid))
