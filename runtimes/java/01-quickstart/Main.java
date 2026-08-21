import com.praxicraft.assess.Client;
import java.util.List;
import java.util.Map;

public class Main {
  @SuppressWarnings("unchecked")
  public static void main(String[] args) throws Exception {
    Client client = new Client();
    String slug = System.getenv().getOrDefault("PRAXICRAFT_ASSESSMENT_SLUG", "senior-backend-screen");
    Map<String, Object> page = client.assessments().list(null);
    List<Map<String, Object>> results = (List<Map<String, Object>>) page.get("results");
    System.out.println("assessments " + (results == null ? 0 : results.size()));
    Map<String, Object> invite = client.invites().create(slug, Map.of(
      "email", System.getenv().getOrDefault("PRAXICRAFT_CANDIDATE_EMAIL", "candidate@example.com"),
      "name", "Example Candidate",
      "send_email", false
    ));
    String token = (String) invite.get("invite_token");
    System.out.println("invite_token " + token);
    System.out.println(client.results().retrieve(token));
  }
}
