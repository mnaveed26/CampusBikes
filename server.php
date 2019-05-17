<?php
$email = "";
$password = "";
$errors = array();


//connection to database
$connect=mysqli_connect('localhost','root','','bikeshop');
 
if(mysqli_connect_error($connect))
{
		echo 'Failed to connect';
}

//if the register button is clicked
if (isset($_POST['register'])) {

    $firstname = mysqli_real_escape_string($connect, $_POST['firstname']);
    $lastname= mysqli_real_escape_string($connect, $_POST['lastname']);
    $streetaddress = mysqli_real_escape_string($connect, $_POST['streetaddress']);
    $city = mysqli_real_escape_string($connect, $_POST['city']);
    $state = mysqli_real_escape_string($connect, $_POST['state']);
    $zipcode = mysqli_real_escape_string($connect, $_POST['zipcode']);
    $phonenumber = mysqli_real_escape_string($connect, $_POST['phonenumber']);
    $email = mysqli_real_escape_string($connect, $_POST['email']);
    $password = mysqli_real_escape_string($connect, $_POST['password']);

    // ensure that form fields are filled properly 
if (empty($email)) {
    array_push($errors, "Email is required"); 
}

if (empty($password)) {
    array_push($errors, "Password is required"); 
}

    // if there are no erros, save user to database

    if (count($errors) ==0) {
        $password = md5($password); //password encryption

      mysqli_query($connect,"INSERT INTO customer (FirstName,LastName,Address,City,State,zipcode,PhoneNumber,Email,Password)
		        VALUES ('$firstname','$lastname','$streetaddress','$city','$state','$zipcode','$phonenumber','$email','$password')");
				
	if(mysqli_affected_rows($connect) > 0){
	echo "<p>Account Added</p>";
} else {
	echo "Account not Added<br />";
	echo mysqli_error ($connect);
 
    }

}

}

?>