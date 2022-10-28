
<?php

include ('../connect.php');
$passengerid = filter_input(INPUT_POST, "passengerid", FILTER_VALIDATE_INT);
$adultid = filter_input(INPUT_POST, "adultid", FILTER_VALIDATE_INT);

if(empty($passengerid) || empty($adultid)){
  echo"Please Enter valid data";
  include ("adult_form.php");
  exit();
}

else{
  include('./header.php');
  $sql = "INSERT INTO adult (p_id, adult_id) VALUES (?,?);";

  $stmt = mysqli_stmt_init($connect);

  if(!mysqli_stmt_prepare($stmt, $sql)){
    die(mysqli_error($connect));
  }

  mysqli_stmt_bind_param($stmt, "ii", $passengerid, $adultid);

  mysqli_stmt_execute($stmt);

  echo "<p>Hello it was successful</p>";
}



?>