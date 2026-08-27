require "praxicraft"
c=Praxicraft::Client.new
a=c.assessments.create(title:"Example screen")
puts a["slug"]
if id=ENV["PRAXICRAFT_TASK_ID"]; c.assessments.attach_tasks(a["slug"], tasks:[{task_id:id,source:"platform"}]); end
