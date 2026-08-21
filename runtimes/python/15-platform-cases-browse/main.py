from praxicraft import Client
c=Client()
print(c.assessments.list() if False else 'use curl cases platform-list if SDK omits platform cases')
# Prefer: HTTP GET /platform-cases/ — many SDKs expose via assessments/cases helpers
import os,json,urllib.request
base=os.environ.get('PRAXICRAFT_API_BASE_URL','https://assess.praxicraft.com').rstrip('/')
req=urllib.request.Request(base+'/api/v1/public/platform-cases/',headers={'Authorization':'Bearer '+os.environ['PRAXICRAFT_API_KEY']})
print(json.load(urllib.request.urlopen(req)))
