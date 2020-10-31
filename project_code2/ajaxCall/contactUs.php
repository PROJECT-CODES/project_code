<?php
require_once("../config/conn.php");


        

$name= strip_tags($_POST['name']);
$email= strip_tags($_POST['email']);
$phoneNo= strip_tags($_POST['phoneNo']);
$message = strip_tags($_POST['message']);
    


$query=$con->prepare("INSERT into contactUs(name,email,phoneNo,message,datePosted) VALUES(:name,:email,:phoneNo,:message,now())");

$query->bindValue(":name",$name);
$query->bindValue(":email",$email);
$query->bindValue(":phoneNo",$phoneNo);
$query->bindValue(":message",$message);

$query->execute();

echo "done";


?>