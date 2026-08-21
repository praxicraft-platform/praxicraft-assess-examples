from praxicraft import Client
import os
print(Client().assessments.duplicate(os.environ.get('PRAXICRAFT_ASSESSMENT_SLUG','senior-backend-screen')))
