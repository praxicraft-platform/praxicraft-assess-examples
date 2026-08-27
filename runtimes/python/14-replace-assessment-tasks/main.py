from praxicraft import Client
import os
slug=os.environ['PRAXICRAFT_ASSESSMENT_SLUG']; cid=os.environ['PRAXICRAFT_TASK_ID']
print(Client().assessments.replace_tasks(slug, cases=[{'task_id':cid,'source':'platform'}]))
