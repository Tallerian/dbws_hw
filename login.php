<?php include("./header.php")?>

<!DOCTYPE html> 

<style> 
  body {
    background-image: url('./img/hpbanner.png');
    background-repeat: no-repeat ; 
    background-size: cover;
    color: black;
  }
</style>
<html> 

<title> Quick Rail | LogIn </title> 
        <div id="registration-form">
        <div class='fieldset'>
        <legend>LogIn</legend>

        <form action="login.php" method="post" >
          <div class='row'>
              <input type="text" placeholder="Username" name= "username" >
            </div>

            <div class='row'>
              <input type="text" placeholder="Password" name= "password" >
            </div>

            <div>
                <input name="remember" type="radio" value="Remember me"> Remember me
            </div>
            <div>
                New Users :  <a href="registration.php">register here</a> 
            </div>
            <input type="submit" value="Search">
        </form>
      </div>
    </div>