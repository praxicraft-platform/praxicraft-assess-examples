#!/usr/bin/env python3
from praxicraft import Client

client = Client()
org = client.org.retrieve()
stats = client.org.stats() if hasattr(client.org, "stats") else org
print(org)
print(stats)
remaining = org.get("invites_remaining") or (stats or {}).get("invites_remaining")
print("invites_remaining:", remaining)
