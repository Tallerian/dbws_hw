<?php

include ('../connect.php');
$passengerid = filter_input(INPUT_POST, "passengerid", FILTER_VALIDATE_INT);
$retiredid = filter_input(INPUT_POST, "retiredid", FILTER_VALIDATE_INT);

if(empty($passengerid) || empty($retiredid)){
  echo"Please Enter valid data";
  include ("retired_form.php");
  exit();
}

else{
  include('./header.php');
  $sql = "INSERT INTO retire (p_id, retired_id) VALUES (?,?);";

  $stmt = mysqli_stmt_init($connect);

  if(!mysqli_stmt_prepare($stmt, $sql)){
    die(mysqli_error($connect));
  }

  mysqli_stmt_bind_param($stmt, "ii", $passengerid, $retiredid);

  mysqli_stmt_execute($stmt);

  echo "<p>Hello it was successful</p>";
}



?>