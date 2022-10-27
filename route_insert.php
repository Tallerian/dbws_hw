<!DOCTYPE html>
<html>
<head>

    <link rel="stylesheet" href="css/uni.css">
    <title>Search Results</title>

</head>

<body>

    <header>
        <div class="inner-width">
          <a href="index.html"><img src="img/logo.png" alt="#"></a>
          <i class="menu-toggle-btn fas fa-bars"></i>
          <nav class="navigation-menu">
            <a href="#"><i class="fas fa-home home"></i> Home</a>
            <a href="#"></i> Explore</a>
            <a href="#"></i> Contact Us</a>
          </nav>
        </div>
      </header>
</body>
</html>

<?php

$trainid = filter_input(INPUT_POST, "trainid", FILTER_VALIDATE_INT);
$tot_stops = filter_input(INPUT_POST, "trainid", FILTER_VALIDATE_INT);

$host = "localhost";
$user = "root";
$pass = "";
$dbname = "dbws";

$connect = mysqli_connect($host, $user, $pass, $dbname);

if(mysqli_connect_errno()){
    die("connection error");
}

$sql = "INSERT INTO route (train_id, Total_stops) VALUES (?,?);";

$stmt = mysqli_stmt_init($connect);

if(!mysqli_stmt_prepare($stmt, $sql)){
    die(mysqli_error($connect));
}

mysqli_stmt_bind_param($stmt, "ii", $trainid, $tot_stops);

mysqli_stmt_execute($stmt);

echo "Hello it was successful";

?>