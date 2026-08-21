<?php
use Praxicraft\Assess\Webhooks;
$secret=getenv('PRAXICRAFT_WEBHOOK_SECRET');
$raw='{"type":"candidate.passed"}';
$header='sha256='.hash_hmac('sha256',$raw,$secret);
var_export(Webhooks::verifySignature($secret,$raw,$header));
