<?php
require_once("../config/conn.php");



$studentName= strip_tags($_POST['studentName']);
$parentName= strip_tags($_POST['parentName']);
$phoneNo= strip_tags($_POST['phoneNo']);
$currentClass= strip_tags($_POST['currentClass']); 
$batchTiming = strip_tags($_POST['batchTiming']);
$courseId = $_POST['courseId'];
$courseName = $_POST['courseName'];
        


$query=$con->prepare("INSERT into enroll(courseId,courseName,studentName,ParentName,phoneNo,Class,batch_timing,paid) VALUES(:courseId,:courseName,:studentName,:ParentName,:phoneNo,:Class,:batch_timing,:paid)");

$query->bindValue(":courseId",$courseId);
$query->bindValue(":courseName",$courseName);
$query->bindValue(":studentName",$studentName);
$query->bindValue(":ParentName",$parentName);
$query->bindValue(":phoneNo",$phoneNo);
$query->bindValue(":Class",$currentClass);
$query->bindValue(":batch_timing",$batchTiming);
$query->bindValue(":paid",0);

$query->execute();

echo "done";


?>