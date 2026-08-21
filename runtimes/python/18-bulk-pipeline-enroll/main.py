from praxicraft import Client
import os
slug=os.environ.get('PRAXICRAFT_PIPELINE_SLUG','engineering-hiring')
print(Client().pipelines.bulk_enroll(slug, candidates=[{'email':'a@example.com','name':'A'},{'email':'b@example.com','name':'B'}]))
