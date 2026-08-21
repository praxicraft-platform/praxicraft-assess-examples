package main

import (
	"fmt"
	"os"

	"github.com/praxicraft-platform/praxicraft-go"
)

func main() {
	client, err := praxicraft.New()
	if err != nil {
		panic(err)
	}
	slug := env("PRAXICRAFT_ASSESSMENT_SLUG", "senior-backend-screen")
	page, err := client.Assessments.List(nil)
	if err != nil {
		panic(err)
	}
	fmt.Println("assessments", len(page.Results))
	send := false
	invite, err := client.Invites.Create(slug, praxicraft.InviteCreateParams{
		Email:     env("PRAXICRAFT_CANDIDATE_EMAIL", "candidate@example.com"),
		Name:      "Example Candidate",
		SendEmail: &send,
	})
	if err != nil {
		panic(err)
	}
	fmt.Println("invite_token", invite.InviteToken)
	result, err := client.Results.Retrieve(invite.InviteToken)
	if err != nil {
		panic(err)
	}
	fmt.Printf("result: %+v\n", result)
}

func env(k, d string) string {
	if v := os.Getenv(k); v != "" {
		return v
	}
	return d
}
