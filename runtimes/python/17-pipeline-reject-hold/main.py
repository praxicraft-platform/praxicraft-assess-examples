from praxicraft import Client
import os
cid=os.environ['PRAXICRAFT_ENROLLMENT_ID']; c=Client()
print(c.pipelines.hold(cid) if hasattr(c.pipelines,'hold') else 'use CLI/curl for hold/reject')
