require "praxicraft"
client = Praxicraft::Client.new
slug = ENV.fetch("PRAXICRAFT_ASSESSMENT_SLUG", "senior-backend-screen")
page = client.assessments.list
puts "assessments #{(page["results"] || []).length}"
invite = client.invites.create(slug, email: ENV.fetch("PRAXICRAFT_CANDIDATE_EMAIL", "candidate@example.com"), name: "Example Candidate", send_email: false)
puts "invite_token #{invite["invite_token"]}"
p client.results.retrieve(invite["invite_token"])
