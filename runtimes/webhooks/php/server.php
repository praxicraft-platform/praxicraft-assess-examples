<?php
use Praxicraft\Assess\Webhooks;
$raw = file_get_contents('php://input');
$ok = Webhooks::verifySignature(getenv('PRAXICRAFT_WEBHOOK_SECRET'), $raw, $_SERVER['HTTP_X_PRAXICRAFT_SIGNATURE'] ?? '');
http_response_code($ok ? 200 : 401);
echo $ok ? 'ok' : 'invalid';
