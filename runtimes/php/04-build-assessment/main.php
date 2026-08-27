<?php
use Praxicraft\Assess\Client;
require 'vendor/autoload.php';
$c=new Client();
$a=$c->assessments->create(['title'=>'Example screen']);
echo $a['slug'], PHP_EOL;
if ($id=getenv('PRAXICRAFT_TASK_ID')) { $c->assessments->attachTasks($a['slug'],['tasks'=>[['task_id'=>$id,'source'=>'platform']]]); }
