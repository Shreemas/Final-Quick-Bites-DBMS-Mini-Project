<?php
include('login_m.php'); // Includes Login Script

if(isset($_SESSION['login_user1'])){
header("location: myrestaurant.php"); //Redirecting to myrestaurant Page
}
?>

<!DOCTYPE html>
<html>

  <head>
    <title> Manager Login |  Quick Bites </title>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>  
        
  

        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@700&display=swap" rel="stylesheet">
  </head>

  <!--<link rel="stylesheet" type = "text/css" href ="css/managerlogin.css">
  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>-->

  <body style = "background:url( )">  <!--Include an image here-->

  


    <nav style="background-color:rgb(100,13,13);color:white;padding:20px;" class="navbar navbar-inverse navbar-fixed-top navigation-clean-search" role="navigation">
      <div class="container">
        

      <ul class="nav navbar-nav navbar-right" >
        <li><a style="color:white;" href="index.html"><span class="glyphicon glyphicon-log-out">Logout</span></a></li>
      </ul>
        

      </div>
    </nav>

    <div style="margin-top:80px;" class="container">
    <div style="background-color:rgb(100,13,13);color:white;" class="jumbotron">
     <h1>Hi Manager,<br> Welcome to <span class="edit">Quick Bites </span></h1>
     <br>
   <p>Kindly LOGIN to continue.</p>
    </div>
    </div>

    <div class="container" style="margin-top: 4%; margin-bottom: 2%;">
      <div class="col-md-5 col-md-offset-4">
        <label style="margin-left: 5px;color: red;"><span> <?php echo $error;  ?> </span></label>
      <div class="panel panel-primary">
        <div style="background-color:rgb(100,13,13);text-align:center;font-size:20px;
        padding:10px;" class="panel-heading"> Login </div>
        <div class="panel-body">
          
        <form action="" method="POST">
          
        <div class="row">
          <div  class="form-group col-xs-12">
            <label for="username"><span class="text-danger" style="margin-right: 5px;">*</span> Username: </label>
            <div class="input-group">
              <input class="form-control" id="username" type="text" name="username" placeholder="Username" required="" autofocus="">
              <span  class="input-group-btn">
                <label style="background-color:rgb(100,13,13);" class="btn btn-primary"><span class="glyphicon glyphicon-user" aria-hidden="true"></label>
            </span>
              </span>
            </div>           
          </div>
        </div>

        <div class="row">
          <div class="form-group col-xs-12">
            <label for="password"><span class="text-danger" style="margin-right: 5px;">*</span> Password: </label>
            <div class="input-group">
              <input class="form-control" id="password" type="password" name="password" placeholder="Password" required="">
              <span class="input-group-btn">
                <label style="background-color:rgb(100,13,13);" class="btn btn-primary"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span></label>
            </span>
              
            </div>           
          </div>
        </div>

        <div class="row">
          <div class="form-group col-xs-4">
              <button style="background-color:rgb(100,13,13);" class="btn btn-primary" name="submit" type="submit" value=" Login ">Submit</button>

          </div>

        </div>
       

        </form>

        </div>
        
      </div>
      
    </div>
    </div>
    </body>
</html>