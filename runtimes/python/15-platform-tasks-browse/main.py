from praxicraft import Client
c=Client()
print(c.assessments.list() if False else 'use curl tasks platform-list if SDK omits platform tasks')
# Prefer: HTTP GET /platform-tasks/ — many SDKs expose via assessments/tasks helpers
import os,json,urllib.request
base=os.environ.get('PRAXICRAFT_API_BASE_URL','https://assess.praxicraft.com').rstrip('/')
req=urllib.request.Request(base+'/api/v1/public/platform-tasks/',headers={'Authorization':'Bearer '+os.environ['PRAXICRAFT_API_KEY']})
print(json.load(urllib.request.urlopen(req)))
