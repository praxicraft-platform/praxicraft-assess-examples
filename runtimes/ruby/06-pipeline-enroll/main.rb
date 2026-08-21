require "praxicraft"
c=Praxicraft::Client.new
slug=ENV.fetch("PRAXICRAFT_PIPELINE_SLUG","engineering-hiring")
p c.pipelines.enroll(slug, email:"candidate@example.com", name:"Example")
p c.pipelines.list_enrollments(slug)
