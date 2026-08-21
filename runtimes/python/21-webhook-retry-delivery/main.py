from praxicraft import Client
import os
print(Client().webhooks.retry_delivery(os.environ['PRAXICRAFT_WEBHOOK_ID'], os.environ['PRAXICRAFT_DELIVERY_ID']) if hasattr(Client().webhooks,'retry_delivery') else 'use CLI')
