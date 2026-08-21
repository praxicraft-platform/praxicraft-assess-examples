require "praxicraft"
c=Praxicraft::Client.new
slug=ENV.fetch("PRAXICRAFT_ASSESSMENT_SLUG","senior-backend-screen")
p c.invites.bulk_create(slug, candidates: [{email:"alice@example.com",name:"Alice",send_email:false},{email:"bob@example.com",name:"Bob",send_email:false}])
