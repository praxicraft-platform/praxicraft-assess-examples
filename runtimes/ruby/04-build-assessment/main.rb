require "praxicraft"
c=Praxicraft::Client.new
a=c.assessments.create(title:"Example screen")
puts a["slug"]
if id=ENV["PRAXICRAFT_CASE_ID"]; c.assessments.attach_cases(a["slug"], cases:[{case_id:id,source:"platform"}]); end
