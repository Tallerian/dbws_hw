<?php 
    include('./header.php'); 
    require './connect.php' ;
    if(isset($_POST['create'])){
      if(!$_POST['id']){
        $error.="<br/>please Enter Train ID";	
      } 
      if($_POST['id']){
        $id = $_POST['id'];
        $check="SELECT train_id FROM train WHERE train_id == $id";
        if($check)
          $error.="<br/>Train ID already exists!!";
      }         
      if(!$_POST['name']){
          $error.="<br/>please Enter Train Name";
      }
      if(!$_POST['origin']){
        $error.="<br/>please Enter Train Origin";
      }
      if(!$_POST['dest']){
        $error.="<br/>please Enter Train Destination";
      }                
      if (isset($error)) {
          echo "There Were error(s) In Your Signup DeNtails :" .$error;	
      } 
      else{
        $id = $_POST['id']; 
        $name = $_POST['name']; 
        $origin = $_POST['origin']; 
        $dest = $_POST['dest']; 
        $query = "INSERT INTO train VALUES ('$id', '$name', '$origin', '$dest')";
        if (mysqli_query($conn, $query))
          header("Location: ./success.php") ; 
        else 
        header("Location: ./failure.php") ; 
      }
    }   
?>

<!DOCTYPE html> 
<html> 
    <title> Quick Rail | Train Form </title> 

    <div id="registration-form">
        <div class='fieldset'>
          <legend>Train Form!</legend>
          <form action="route.php" method="POST" >
            <div class='row'>
              <label for='route_id'>Train ID </label> <br>
              <input type="number" placeholder="Train ID" id='trainid' data-required="true" name="id">
            </div>
            <div class='row'>
              <label for='train_name'>Train Name </label>
              <input type="text" placeholder="Train Name" id='trainname' data-required="true" name="name">
            </div>
            <div class='row'>
              <label for="origin">Origin Station</label>
              <input type="text" placeholder="Origin Station" data-required="true" name="origin">
            </div>
            <div class='row'>
              <label for="destination">Destination Station</label>
              <input type="text" placeholder="Destination Station" data-required="true" name="dest">
            </div>
            <input type="submit" value="Input Data" name="create">
          </form>
        </div>
    </div>
    <div>
  </div>


<?php 
    include('./footer.php'); 
?>