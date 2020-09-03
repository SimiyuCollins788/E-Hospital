<?php 
$con = mysqli_connect("localhost","root","","hospital");

if (mysqli_connect_errno())
{
	// echo "Error occurred while connecting to the database" .mysqli_connect_errno();
		echo '<script type="text/javascript">';
		    echo 'alert("Error occurred while connecting to the database")';
		    echo '</script>';
}