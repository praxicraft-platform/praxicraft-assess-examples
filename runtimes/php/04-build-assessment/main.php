<?php
use Praxicraft\Assess\Client;
require 'vendor/autoload.php';
$c=new Client();
$a=$c->assessments->create(['title'=>'Example screen']);
echo $a['slug'], PHP_EOL;
if ($id=getenv('PRAXICRAFT_CASE_ID')) { $c->assessments->attachCases($a['slug'],['cases'=>[['case_id'=>$id,'source'=>'platform']]]); }
