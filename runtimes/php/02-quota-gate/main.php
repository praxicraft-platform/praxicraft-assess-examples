<?php
use Praxicraft\Assess\Client;
require 'vendor/autoload.php';
$c=new Client();
print_r($c->org->retrieve());
print_r($c->org->stats());
