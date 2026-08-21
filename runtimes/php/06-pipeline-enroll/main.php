<?php
use Praxicraft\Assess\Client;
require 'vendor/autoload.php';
$c=new Client();
$slug=getenv('PRAXICRAFT_PIPELINE_SLUG')?:'engineering-hiring';
print_r($c->pipelines->enroll($slug,['email'=>'candidate@example.com','name'=>'Example']));
print_r($c->pipelines->listEnrollments($slug));
