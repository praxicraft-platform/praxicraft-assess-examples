<?php
use Praxicraft\Assess\Client;
require 'vendor/autoload.php';
$c=new Client();
$wh=$c->webhooks->create(['url'=>'https://example.com/hooks/praxicraft','events'=>['candidate.passed']]);
print_r($wh);
print_r($c->webhooks->test($wh['id']));
print_r($c->webhooks->deliveries($wh['id']));
