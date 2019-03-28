<?php
session_start(); // Session starts here.
?>
<!DOCTYPE HTML>
<html>
 <head>
 <title>Page1 Personal Identification Form</title>
 <link rel="stylesheet" href="style.css" />
 </head>
 <body>
 <div class="container">
 <div class="main">
 <h2>Personal Identification</h2>
 <span id="error">
 <!--  Initializing Session for errors  -->
 <?php
 if (!empty($_SESSION['error'])) {
 echo $_SESSION['error'];
 unset($_SESSION['error']);
 }
 ?>
 </span>
 <form action="page2_form.php" method="post">
 <label>Full Name :</label>
 <input name="name" type="text" placeholder="Please enter your name" required="true">
 <label>Email :</label>
 <input name="email" type="email" placeholder="Please enter your email" required>
 <label>Contact :</label>
 <input name="contact" type="text" placeholder="Please enter your number" required>
 <label>Password :</label>
 <input name="password" type="Password" placeholder="Please enter your password" />
 <label>Re-enter Password :</label>
 <input name="confirm" type="password" placeholder="Please re-enter your password" >
 <input type="reset" value="Reset" />
 <input type="submit" value="Next" />
 </form>
 </div>
 </div>
 </body>
</html>