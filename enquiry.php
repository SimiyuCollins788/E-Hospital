<?php 
require_once "importance.php"; 
require_once("include.php");
// require_once("function1.php");

// if(!User::loggedIn()){
// 	Config::redir("login.php"); 
// }
?> 

<html>
<head>
	<title><?php echo CONFIG::SYSTEM_NAME; ?></title>
	<link  rel="shortcut icon" href="images/favicon.png">
	<?php require_once "inc/head.inc.php";  ?> 
	<?php require_once "inc/header.inc.php";  ?> 
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div style='margin-top: -50px;' class='container-fluid'>
		<div class='row'>
			<div class='col-md-2'><?php require_once "inc/sidebar.inc.php"; ?></div> <!-- this should be a sidebar --> 
			<div style='margin-top: 0px;' class='col-md-7'>
				<div class='content-area'> 
				<div class='content-header'> 
					ENQUIRIES <small>We are always ready to serve you</small>
				</div>
				<?php require_once "inc/alerts.inc.php";  ?> 
				<div style="margin-left: 150px;" class='content-body'>
					<div class='form-holder' style='margin-top: 10px;'>
					    <!-- <div class='badge-header'>Message Box</div>  -->
					  <?php Messages::info("Your <strong>Patient Number</strong> will be send via phone or email"); ?>
						<form  action="enquiry.php" method="POST">
						<label style="margin-right: 10px;">Your Full Names</label>
					    <input type="text" name="names" id="button" placeholder="Your full names" required><br> <br>
					    <label style="margin-right: 16px;">Phone Number</label>
						<input type="number" name="phone" id="button" placeholder="Your phone number" required><br> <br>
						<label style="margin-right: 30px;">Date of Birth</label>
						<input type="date" name="dateOfBirth" id="button" placeholder="Your DOB number" required><br> <br>
						<label style="margin-right: 26px;">Your location</label>
						<input type="text" name="location" id="button" placeholder="Your home location" required><br> <br>
						<!-- <label style="margin-right: 10px;">Message</label> -->
						<textarea style="margin-left: 120px;" type="text" name="message" id="button2" placeholder="Type Your Message Here" rows="3" required></textarea><br><br>
						<!-- <input type="text" name="message" id="button2" placeholder="Your Message"><br> <br> -->
						<input class="btn btn-primary" type="submit" value="SEND MESSAGE" name="submit">
						
					</form>

					</div> 

				</div><!-- end of the content area --> 
				</div> 
				
			</div><!-- col-md-7 --> 

		</div> 
	</div>
	<?php
	if (isset($_POST['submit']))
	{
	$names = $_POST ['names'];
    $phone = $_POST ['phone'];
    $dateOfBirth = $_POST['dateOfBirth'];
    $location = $_POST ['location'];
    $message = $_POST ['message'];
	$date = date("F, d y");


		$insertQuery ="INSERT INTO enquiries(names, phone,dateOfBirth,location, message, date) VALUES('$names','$phone','$dateOfBirth','$location','$message', '$date')";
		if (mysqli_query($con, $insertQuery))
		{
			echo '<script type="text/javascript">';
		    echo 'alert("Received, Await our feedback via email or SMS")';
		    echo '</script>';
		    // Messages::error("Received, Await our feedback via email or SMS");
			// $error = "Received, Await our feedback via email or phone call";
		}
	// echo $regno."<br/>".$names."<br/>".$mobile."<br/>".$progcode."<br/>".$password1."<br/>".$password2;
	}

 ?>
</body>
<?php require_once "footer.php";  ?> 
</html>
