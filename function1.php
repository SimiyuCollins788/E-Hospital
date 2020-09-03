<?php 

function user_exists($phone, $con)
{
	$result = mysqli_query($con,"SELECT phone FROM enquiries WHERE phone ='$phone'");

	if (mysqli_num_rows($result)== 1) 
	{
		return true;
	}
	else
	{
		return false;
	}
}

 ?>