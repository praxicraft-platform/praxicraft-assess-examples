from praxicraft import Client
import os
Client().invites.cancel(os.environ['PRAXICRAFT_INVITE_TOKEN'])
print('cancelled')
