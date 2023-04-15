<?php
$con = mysqli_connect('localhost', 'root', '','insurancedb');

$userid = $_POST['user_id'];
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$email = $_POST['email'];
$mobileno = $_POST['mobileno'];
$address_id = $_POST['address_id'];
$dob = $_POST['dob'];

$sql = "INSERT INTO user_details (user_id, firstname, lastname, email, mobileno ,address_id, dob) VALUES ('$userid', '$firstname', '$lastname', '$email', '$mobileno' , '$address_id' , '$dob')";

$rs = mysqli_query($con, $sql);

if($rs)
{
	echo "Account Records Inserted";
}
else {
	echo "Error: " . $sql . ":-" . mysqli_error($con);
}

?>
