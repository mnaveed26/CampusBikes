<?php
$connect=mysqli_connect('localhost','root','','bikeshop');
 
if(mysqli_connect_error($connect))
{
		echo 'Failed to connect';
}

// create a variable

if (isset($_POST['submit'])) {
$email = mysqli_real_escape_string($connect, $_POST['email']);
    $servicetype= mysqli_real_escape_string($connect, $_POST['servicetype']);
    $dateofappt = mysqli_real_escape_string($connect, $_POST['dateofappt']);
    $description = mysqli_real_escape_string($connect, $_POST['description']);

//Execute the query
 
mysqli_query($connect,"INSERT INTO ticket (email,servicetype,Date,Description)
		        VALUES ('$email','$servicetype','$dateofappt','$description')");
				
	if(mysqli_affected_rows($connect) > 0){
	echo "<p>We have recieved yout request!</p>";
} else {
	echo "Your request failed. Please try again!<br />";
	echo mysqli_error ($connect);
 
    }
    
}
?>