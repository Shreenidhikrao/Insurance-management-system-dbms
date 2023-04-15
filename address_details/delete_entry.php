<?php

$form =  $_POST['user_id'];
$con = mysqli_connect('localhost', 'root', '','insurancedb');
if (!$con) {
  die("Connection failed: " . mysqli_connect_error());
}
$sql = "DELETE FROM address_details WHERE address_id=$form";

if (mysqli_query($con, $sql)) {
  echo "Record deleted successfully";
} else {
  echo "Error deleting record: " . mysqli_error($con);
}

mysqli_close($con);
?>