<?php 
    include('./header.php'); 
    require './connect.php' ;
    if(isset($_POST['create'])){
      if(!$_POST['id']){
        $error.="<br/>please Enter Long distance ID";	
      } 
      if($_POST['id']){
        $id = $_POST['id'];
        $check="SELECT reg_id FROM regional WHERE reg_id == $id";
        if($check)
          $error.="<br/>Regional ID already exists!!";
      }         
      if(!$_POST['trainname']){
          $error.="<br/>please Enter Train Name";
      }
      if(!$_POST['routeid']){
        $error.="<br/>please Enter Route ID";
      }
      if(!$_POST['price']){
        $error.="<br/>please Enter Train Price";
      }                
      if (isset($error)) {
          echo "There Were error(s) In Your Signup Details :" .$error;	
      } 
      else{
        $id = $_POST['id']; 
        $name = $_POST['trainname']; 
        $routeid = $_POST['routeid']; 
        $dest = $_POST['price']; 
        $query = "INSERT INTO regional VALUES ('$id', '$trainname', '$routeid', '$price')";
        if (mysqli_query($conn, $query))
          header("Location: ./success.php") ; 
        else 
        header("Location: ./failure.php") ; 
      }
    }   
?>

<!DOCTYPE html> 
<html> 
    <title> Quick Rail | Long Distance Form </title> 

    <div id="registration-form">
        <div class='fieldset'>
          <legend>Train Form!</legend>
          <form action="inreg.php" method="POST" >
            <div class='row'>
              <label for='reg_id'>Regional Train ID </label> <br>
              <input type="number" placeholder="Regional ID" id='rgid' data-required="true" name="id">
            </div> 
            <div class='row'>
              <label for='train_name'>Train Name </label>
              <input type="text" placeholder="Train Name" id='name' data-required="true" name="trainname">
            </div>
            <div class='row'>
              <label for="route">Route Id</label>
              <input type="number" placeholder="Route ID" data-required="false" name="routeid">
            </div>
            <div class='row'>
              <label for="Price"> Train Price</label>
              <input type="number" placeholder="Train Price" data-required="true" name="price">
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