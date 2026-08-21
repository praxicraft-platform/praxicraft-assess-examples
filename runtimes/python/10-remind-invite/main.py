from praxicraft import Client
import os
Client().invites.remind(os.environ['PRAXICRAFT_INVITE_TOKEN'])
print('reminded')
