<!DOCTYPE html>
<html>

<head>
	<title>Long Insert Page </title>
</head>

<body>
	<center>
		<?php

		// servername => 
		// username => 
		// password => 
		// database name => 
		$conn = mysqli_connect("localhost", "root", "", "staff");
		
		// Check connection
		if($conn === false){
			die("ERROR: Could not connect. "
				. mysqli_connect_error());
		}
		
		// Taking all 5 values from the form data(input)
		$id = $_REQUEST['id'];
		$trainname = $_REQUEST['trainname'];
		$routeid = $_REQUEST['routeid'];
		$price = $_REQUEST['price'];
		
		// Performing insert query execution
		// here our table name is college
		$sql = "INSERT INTO long_Dist VALUES ('$id',
			'$trainname','$routeid','$price')";
		
		if(mysqli_query($conn, $sql)){
			echo "<h3>data stored in a database successfully."
				. " Please browse your localhost php my admin"
				. " to view the updated data</h3>";

			echo nl2br("\n$id\n $trainname\n "
				. "$routeid\n $price");
		} else{
			echo "ERROR: Hush! Sorry $sql. "
				. mysqli_error($conn);
		}
		
		// Close connection
		mysqli_close($conn);
		?>
	</center>
</body>

</html>
