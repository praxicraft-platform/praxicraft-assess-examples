require "praxicraft"
c=Praxicraft::Client.new
wh=c.webhooks.create(url:"https://example.com/hooks/praxicraft", events:["candidate.passed"])
p wh
p c.webhooks.test(wh["id"])
p c.webhooks.deliveries(wh["id"])
