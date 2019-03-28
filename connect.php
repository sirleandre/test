<?php
try{
$dbh = new PDO('mysql:host=localhost;dbname=users','root','');
//echo"Database Connection Established";
 $sql="CREATE TABLE detail (
user_id int(10) NOT NULL AUTO_INCREMENT,
name varchar(255) NOT NULL,
email varchar(255) NOT NULL,
contact int(15) NOT NULL,
password varchar(255) NOT NULL,
confirm varchar(255) not null,
religion varchar(255) NOT NULL,
nationality varchar(255) NOT NULL,
gender varchar(255) NOT NULL,
qualification varchar(255) NOT NULL,
experience varchar(255) NOT NULL,
address1 varchar(255) NOT NULL,
address2 varchar(255) NOT NULL,
city varchar(255) NOT NULL,
pin int(10) NOT NULL,
state varchar(255) NOT NULL,
PRIMARY KEY (user_id))";

 $x= $dbh->prepare($sql);
 $x->execute();
 //echo"Table created";
}
catch(PDOException $e)
{
	echo"error not connected ". $e->getMessage();
} 

?>