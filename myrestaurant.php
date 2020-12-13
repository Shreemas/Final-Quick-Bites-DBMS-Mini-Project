<?php
include('session_m.php');

if(!isset($login_session)){
header('Location: managerlogin.php'); // Redirecting To Home Page
}

?>
<!DOCTYPE html>
<html>

  <head>
    <title> Manager Login |  Quick Bites</title>

    
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>  
        
  

        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@700&display=swap" rel="stylesheet">
  </head>

  <!--<link rel="stylesheet" type = "text/css" href ="css/myrestaurant.css">
  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>-->

  <body style = "background:url( )">  <!--Insert image here -->


   

    <nav style="background-color:rgb(100,13,13);" class="navbar navbar-inverse navbar-fixed-top navigation-clean-search" role="navigation">
      <div class="container">
      <ul class="nav navbar-nav navbar-right">
            
            <li><a style="color:white;font-size:20px;" href="logout_m.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
          </ul>
     
      </div>
    </nav>




<div style="margin:10px;" class="container">
    <div style="background-color:rgb(100,13,13);color:white;" class="jumbotron">
     <h1>Hello Manager! </h1>
     <p>Manage all your restaurant from here</p>

    </div>
    </div>
<div class="container">
    <div class="container">
    	<div class="col">
    		
    	</div>
    </div>

    
    	<div class="col-xs-3" style="text-align: center;">

    	<div style="background-color:rgb(100,13,13);" class="list-group">
    		<a style="background-color:rgb(100,13,13);color:white;" href="myrestaurant.php" class="list-group-item active">My Restaurant</a>
    		<a style="background-color:rgb(100,13,13);color:white;" href="view_food_items.php" class="list-group-item ">View Food Items</a>
    		<a style="background-color:rgb(100,13,13);color:white;" href="add_food_items.php" class="list-group-item ">Add Food Items</a>
    		<a style="background-color:rgb(100,13,13);color:white;" href="edit_food_items.php" class="list-group-item ">Edit Food Items</a>
    		<a style="background-color:rgb(100,13,13);color:white;" href="delete_food_items.php" class="list-group-item ">Delete Food Items</a>
    	</div>
    </div>
    


    
    <div class="col-xs-9">
      <div class="form-area" style="padding: 0px 100px 100px 100px;">
        <form action="myrestaurant1.php" method="POST">
        <br style="clear: both">
          <h3 style="margin-bottom: 25px; text-align: center; font-size: 30px;"> MY RESTAURANT</h3>

          <div class="form-group">
            <input type="text" class="form-control" id="name" name="name" placeholder="Your Restaurant's Name" required="">
          </div>

          <div class="form-group">
            <input type="email" class="form-control" id="email" name="email" placeholder="Your Restaurant's Email" required="">
          </div>     

          <div class="form-group">
            <input type="text" class="form-control" id="contact" name="contact" placeholder="Your Restaurant's Contact Number" required="">
          </div>

          <div class="form-group">
            <input type="text" class="form-control" id="address" name="address" placeholder="Your Restaurant's Address" required="">
          </div>

          <div class="form-group">
          <button  style="background-color:rgb(100,13,13);" type="submit" id="submit" name="submit" class="btn btn-primary pull-right"> ADD RESTAURANT </button>    
      </div>
        </form>

        
        </div>
      
    </div>
</div>

  </body>
</html>