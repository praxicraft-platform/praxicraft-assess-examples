from praxicraft import Client
import os
slug=os.environ['PRAXICRAFT_ASSESSMENT_SLUG']; cid=os.environ['PRAXICRAFT_CASE_ID']
print(Client().assessments.replace_cases(slug, cases=[{'case_id':cid,'source':'platform'}]))
