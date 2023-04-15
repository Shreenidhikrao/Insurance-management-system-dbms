<?php

$user = 'root';
$password = '';
$name = $_POST['name'];
$database = 'insurancedb';


$servername='localhost:3306';
$mysqli = new mysqli($servername, $user,
				$password, $database);


if ($mysqli->connect_error) {
	die('Connect Error (' .
	$mysqli->connect_errno . ') '.
	$mysqli->connect_error);
}

$sql = "select * from ((user_policies inner join policy_payments on user_policies.user_id=policy_payments.user_id)
		inner join user_details on user_details.user_id=user_policies.user_id and firstname='$name');";
$result = $mysqli->query($sql);
$mysqli->close();
?>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>INSURANCE DATABASE </title>

	<style>	
		h1 {
			text-align: center;
			font-size: xx-large;
			font-family: 'Gill Sans', 'Gill Sans MT',
			' Calibri', 'Trebuchet MS', 'sans-serif';
			color:white;
		}

		h3 {
			
			text-align: center;
			font-family: 'Gill Sans', 'Gill Sans MT',
			' Calibri', 'Trebuchet MS', 'sans-serif';
			color:white;
		}


		body {
			height: 100%;
		}


		body {
			margin: 0;
			background: #404258;
			font-weight: 100;
		}

		.container {
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
		}

		table {
			width: 800px;
			border-collapse: collapse;
			overflow: hidden;
			box-shadow: 0 0 20px rgba(0,0,0,0.1);
		}

		th,
		td {
			padding: 15px;
			background-color: rgba(255,255,255,0.2);
			font-family: 'Gill Sans', 'Gill Sans MT',
			' Calibri', 'Trebuchet MS', 'sans-serif';
			color: #fff;
			font-weight: 10;
		}

		th {
			text-align: left;
			font-family: 'Gill Sans', 'Gill Sans MT',
			' Calibri', 'Trebuchet MS', 'sans-serif';

		}

		thead {
			th {
				background-color: #55608f;
			}
		}

		tbody {
			tr {
				&:hover {
					background-color: rgba(255,255,255,0.3);
					
				}
			}
			td {
				position: relative;
				&:hover {
					&:before {
						content: "";
						position: absolute;
						left: 0;
						right: 0;
						top: -9999px;
						bottom: -9999px;
						background-color: rgba(255,255,255,0.2);
						z-index: -1;
					}
				}
			}
		}

		button {
			align-self: center;
			margin-top: 50px;
			margin-left:20px;
			margin-bottom:10px;
			background-color: #474E68;
			background-image: none;
			background-position: 0 90%;
			background-repeat: repeat no-repeat;
			background-size: 4px 3px;
			border-radius: 15px 225px 255px 15px 15px 255px 225px 15px;
			border-style: solid;
			border-width: 2px;
			box-shadow: rgba(0, 0, 0, .2) 15px 28px 25px -18px;
			box-sizing: border-box;
			color:white;
			cursor: pointer;
			display: inline-block;
			font-family: 'Gill Sans', 'Gill Sans MT',
			' Calibri', 'Trebuchet MS', 'sans-serif';
			font-size: 1rem;
			line-height: 23px;
			outline: none;
			padding: .75rem;
			text-decoration: none;
			transition: all 235ms ease-in-out;
			border-bottom-left-radius: 15px 255px;
			border-bottom-right-radius: 225px 15px;
			border-top-left-radius: 255px 15px;
			border-top-right-radius: 15px 225px;
			border-color:grey;
			user-select: none;
			-webkit-user-select: none;
			touch-action: manipulation;
		}

		button:hover {
			box-shadow: rgba(0, 0, 0, .3) 2px 8px 8px -5px;
			transform: translate3d(0, 2px, 0);
		}

		button:focus {
			box-shadow: rgba(0, 0, 0, .3) 2px 8px 4px -6px;
		}
	</style>
</head>

<body>

		<h1>INSURANCE DATABSE </h1>

	<div class="container">	
        <p>
		<table>
			<thead>
			<tr>
				<th>Policy Number</th>
				<th>User ID</th>
				<th>Registered Date</th>
				<th>Policy Type ID</th>
				<th>Reciept Number</th>
				<th>Date Of Payment</th>
				<th>Amount</th>
				<th>Fine</th>
				<th>Firstname</th>
				<th>Lastname</th>
				<th>Email</th>
				<th>Mobile Number</th>
				<th>Address ID</th>
				<th>Date Of Birth</th>


			</tr>
			</thead>

			<?php

				while($rows=$result->fetch_assoc())
				{
			?>
			<tbody>
			<tr>
				<td><?php echo $rows['policy_no'];?></td>
				<td><?php echo $rows['user_id'];?></td>
				<td><?php echo $rows['date_registered'];?></td>
				<td><?php echo $rows['policy_type_id'];?></td>
				<td><?php echo $rows['receipno'];?></td>
				<td><?php echo $rows['dateofpayment'];?></td>
				<td><?php echo $rows['amount'];?></td>
				<td><?php echo $rows['fine'];?></td>
				<td><?php echo $rows['firstname'];?></td>
				<td><?php echo $rows['lastname'];?></td>
				<td><?php echo $rows['email'];?></td>
				<td><?php echo $rows['mobileno'];?></td>
				<td><?php echo $rows['address_id'];?></td>
				<td><?php echo $rows['dob'];?></td>
			</tr>
			<?php
				}
			?>
			</tbody>
		</table>
	</div>
	
</body>

</html>
