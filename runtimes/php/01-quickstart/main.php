<?php
require __DIR__ . '/../../../vendor/autoload.php'; // or project vendor
use Praxicraft\Assess\Client;

$client = new Client();
$slug = getenv('PRAXICRAFT_ASSESSMENT_SLUG') ?: 'senior-backend-screen';
$page = $client->assessments->list();
echo 'assessments ' . count($page['results'] ?? []) . PHP_EOL;
$invite = $client->invites->create($slug, [
  'email' => getenv('PRAXICRAFT_CANDIDATE_EMAIL') ?: 'candidate@example.com',
  'name' => 'Example Candidate',
  'send_email' => false,
]);
echo 'invite_token ' . $invite['invite_token'] . PHP_EOL;
$result = $client->results->retrieve($invite['invite_token']);
print_r($result);
