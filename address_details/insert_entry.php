<?php
$con = mysqli_connect('localhost', 'root', '','insurancedb');

$userid = $_POST['user_id'];
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$email = $_POST['email'];
$mobileno = $_POST['mobileno'];
$address_id = $_POST['address_id'];


$sql = "INSERT INTO address_details (address_id, h_no, city, addressline1, `state` ,pin) VALUES ('$userid', '$firstname', '$lastname', '$email', '$mobileno' , '$address_id' )";

$rs = mysqli_query($con, $sql);

if($rs)
{
	echo "Account Records Inserted";
}
else {
	echo "Error: " . $sql . ":-" . mysqli_error($con);
}

?>
