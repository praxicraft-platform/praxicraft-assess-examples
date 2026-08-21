from praxicraft import Client
import os
print(Client().results.list(assessment=os.environ.get('PRAXICRAFT_ASSESSMENT_SLUG','senior-backend-screen')) if False else Client().assessments.list())
# Prefer results via assessment slug:
slug=os.environ.get('PRAXICRAFT_ASSESSMENT_SLUG','senior-backend-screen')
print('use client.results.list / assessments results for', slug)
