<?php
include('login_confirm.php'); 
?>

<!DOCTYPE html>
<html>

  <head>
    <title> User Login |  Red  chilliZ </title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>  
    <link rel="stylesheet" type = "text/css" href ="css/managerlogin.css">  

  </head>

  <!--<link rel="stylesheet" type = "text/css" href ="css/managerlogin.css">
  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>-->

  <body style = "background:url( i)">  <!--Include a background image here-->


   

    <div class="container">
    <div class="jumbotron" style="background-color: rgb(100, 13, 13);color:white;">
     <h1>Hi Guest,<br> Welcome to <span class="edit">  Quick bytes </span></h1>
     <br>
   <p>Kindly LOGIN to continue.</p>
    </div>
    </div>

    <div class="container" w style="margin-top: 4%; margin-bottom: 2%;">
      <div class="col-md-5 col-md-offset-4">
    <label style="margin-left: 5px;color: red;"><span> <?php echo $error;  ?> </span></label>
      <div class="panel panel-primary" style="border-radius:25px; border:1px solid rgb(100, 13, 13)">
        <div class="panel-heading"  style="padding:25px;background-color: rgb(100, 13, 13);color:white;font-size:25px;text-align:center;border-radius:25px;
        "> Login </div>
        <div class="panel-body">
          
        <form action="" method="POST">
          
        <div class="row">
          <div class="form-group col-xs-12">
            <label for="username"><span class="text-danger" style="margin-right: 5px;">*</span> Username: </label>
            <div class="input-group">
              <input  class="form-control" id="username" type="text" name="username" placeholder="Username" required="" autofocus="">
              <span  class="input-group-btn">
                <label style="background-color: rgb(100, 13, 13);" class="btn btn-primary"><span  class="glyphicon glyphicon-user" aria-hidden="true"></label>
            </span>
              </span>
            </div>           
          </div>
        </div>

        <div class="row">
          <div class="form-group col-xs-12">
            <label for="password"><span class="text-danger" style="margin-right: 5px;">*</span> Password: </label>
            <div class="input-group">
              <input  class="form-control" id="password" type="password" name="password" placeholder="Password" required="">
              <span class="input-group-btn">
                <label style="background-color: rgb(100, 13, 13);" class="btn btn-primary"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span></label>
            </span>
              
            </div>           
          </div>
        </div>

        <div class="row" style="display:flex;justify-content:center;">
          <div class="form-group col-xs-4">
              <button style="background-color: rgb(100, 13, 13);color:white;padding:30px;border-radius:25px;position:center;" class="btn btn-primary" name="submit" type="submit" value=" Login ">Submit</button>
          </div>

        </div>
        <label style="margin-left: 5px;">or</label> <br>
       <label style="margin-left: 5px;"><a style="color:rgb(100, 13, 13)"  href="register1.php">Create a new account.</a></label>

        </form>
        </div>     
      </div>      
    </div>
    </div>


    </body>
</html>

<!--<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 

    <title>Login</title>
</head>
<body class="bg-image" style="background-image: url('login_image.jfif'); width: 100%; height: 100%;
   background-position:center;">

    make the background image appear to the width of the screen-->
    
   <!-- <div class="container" style="display: flex;justify-content: center;" >
       
        <form action="" method="post" name="signin-form" style="width:40%;">
            <div class="outer-box" style="border:2px rgb(100, 13, 13) solid;
            padding:40px;background-color: white;">

            <h1 style="text-align: center;color:rgb(100, 13, 13);">Login</h2>

			<div class="input-group">
               <!---- <label for="email"><b>E-mail:</b></label>-->
           <!--     <span class="input-group-addon"><i class="glyphicon glyphicon-user">
                </i></span>
                <input type="text" name="username" pattern="[a-zA-Z0-9]+" id="username" class="form-control input-lg" placeholder="Username" required>
            </div>

            <br>
            <br>


            <div class="input-group">
                <!--<label for="pass"><b>Password:</b></label>-->
       <!--         <span class="input-group-addon"><i class="glyphicon glyphicon-lock">
                </i></span>
                <input type="password" name="password" id="pass" class="form-control input-lg" placeholder="Password" required>
            </div>

			<br>
			<br>

        <button type="submit" class="btn btn-info btn-lg" name="login" value="login"
        style="background-color:rgb(100, 13, 13);border-color:rgb(100, 13, 13);">
        <b>login</b></button>
        <p style="font-size: 25px;padding-top: 20px;">Not a user?<a 
        style="color: rgb(100, 13, 13);"  href="register1.php"><b>Register</b></a></p>
          
       </div>
        </form>
        
    </div>
    
    
</body>
</html>-->

<!--<form method="post" action="" name="signin-form">
  <div class="form-element">
    <label>Username</label>
    <input type="text" name="username" pattern="[a-zA-Z0-9]+" required />
  </div>
  <div class="form-element">
    <label>Password</label>
    <input type="password" name="password" required />
  </div>
  <button type="submit" name="login" value="login">Log In</button>
</form>-->
