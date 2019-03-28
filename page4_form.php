<!DOCTYPE HTML>
<html>
 <head>
 <title>PHP Multi Page Form</title>
 <link rel="stylesheet" href="style.css" />
 </head>
 <body>
 <div class="container">
 <div class="main">
 <h2> MULTI PAGE FORM</h2>
 <?php
 session_start();
 if (isset($_POST['state'])) {
 if (!empty($_SESSION['post'])){
 if (empty($_POST['address1'])
 || empty($_POST['city'])
 || empty($_POST['pin'])
 || empty($_POST['state'])){ 
 // Setting error for page 3.
 $_SESSION['error_page3'] = "Mandatory field(s) are missing,  fill again";
 header("location: page3_form.php"); // Redirecting to third page.
 } else {
 foreach ($_POST as $key => $value) {
 $_SESSION['post'][$key] = $value;
 } 
 extract($_SESSION['post']); 

 $dbh = new PDO('mysql:host=localhost;dbname=users','root','');
 $query = "
 INSERT INTO detail (name,email,contact,password,confirm,religion,nationality,gender,qualification,experience,address1,address2,city,pin,state) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"; 
 

$x = $dbh -> prepare($query);


$x->bindParam(':name',$name,PDO::PARAM_STR);
$x->bindParam(':email',$email,PDO::PARAM_STR);
$x->bindParam(':contact',$contact,PDO::PARAM_INT);
$x->bindParam(':password',$password,PDO::PARAM_STR);
$x->bindParam(':confirm',$confirm,PDO::PARAM_STR);
$x->bindParam(':religion',$religion,PDO::PARAM_STR);
$x->bindParam(':nationality',$nationality,PDO::PARAM_STR);
$x->bindParam(':gender',$gender,PDO::PARAM_STR);
$x->bindParam(':qualification',$qualification,PDO::PARAM_STR);
$x->bindParam(':experience',$experience,PDO::PARAM_STR);
$x->bindParam(':address1',$address1,PDO::PARAM_STR);
$x->bindParam(':address2',$address2,PDO::PARAM_STR);
$x->bindParam(':city',$city,PDO::PARAM_STR);
$x->bindParam(':pin',$pin,PDO::PARAM_INT);
$x->bindParam(':state',$state,PDO::PARAM_STR);


$x -> execute(array($name,$email,$contact,$password,$confirm,$religion,$nationality, $gender,$qualification,$experience,$address1,$address2,$city,$pin,$state));


 if ($x) {
 echo '<p><center><span id="success">THE USER ADDED SUCCESSFULL..!!</span></center></p>';
 } else {
 echo '<p> Submission Failed..!!</p>';
 } 
 unset($_SESSION['post']); // Destroying session.
 }
 } else {
 header("location: page1_form.php"); // Redirecting to first page.
 }
 } else {
 header("location: page1_form.php"); // Redirecting to first page.
 }
 ?>
 </div>
 </div>
 </body>
</html>