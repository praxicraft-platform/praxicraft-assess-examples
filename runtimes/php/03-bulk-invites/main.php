<?php
use Praxicraft\Assess\Client;
require 'vendor/autoload.php';
$c=new Client();
$slug=getenv('PRAXICRAFT_ASSESSMENT_SLUG')?:'senior-backend-screen';
print_r($c->invites->bulkCreate($slug,['candidates'=>[['email'=>'alice@example.com','name'=>'Alice','send_email'=>false],['email'=>'bob@example.com','name'=>'Bob','send_email'=>false]]]));
