<?php
include('session_m.php');

if(!isset($login_session)){
header('Location: managerlogin.php'); // Redirecting To Home Page
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

  <!--<link rel="stylesheet" type = "text/css" href ="css/view_food_items.css">
  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>-->

  <body style = "background:url( )">  <!--Add image here -->


    
    <nav style="background-color:rgb(100,13,13);" class="navbar navbar-inverse navbar-fixed-top navigation-clean-search" role="navigation">
      <div class="container">


      <ul class="nav navbar-nav navbar-right">
            
            <li><a style="color:white;font-size:20px;" href="logout_m.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
          </ul>
      
      </div>
    </nav>




<div style="background-color:rgb(100,13,13);margin-top:10px;color:white;" class="container">
    <div style="background-color:rgb(100,13,13)" class="jumbotron">
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

    	<div class="list-group">
    		<a style="background-color:rgb(100,13,13);color:white;" href="myrestaurant.php" class="list-group-item ">My Restaurant</a>
    		<a style="background-color:rgb(100,13,13);color:white;" href="view_food_items.php" class="list-group-item active">View Food Items</a>
    		<a style="background-color:rgb(100,13,13);color:white;" href="add_food_items.php" class="list-group-item ">Add Food Items</a>
    		<a style="background-color:rgb(100,13,13);color:white;" href="edit_food_items.php" class="list-group-item ">Edit Food Items</a>
    		<a style="background-color:rgb(100,13,13);color:white;" href="delete_food_items.php" class="list-group-item ">Delete Food Items</a>
        <a style="background-color:rgb(100,13,13);color:white;" href="view_order_details.php" class="list-group-item ">View Order Details</a>
    	</div>
    </div>
    


    
    <div class="col-xs-9">
      <div class="form-area" style="padding: 0px 100px 100px 100px;">
        <form action="" method="POST">
        <br style="clear: both">
          <h3 style="margin-bottom: 25px; text-align: center; font-size: 30px;"> YOUR FOOD ITEMS LIST </h3>


<?php




// Storing Session
$user_check=$_SESSION['login_user1'];
$sql = "SELECT * FROM food f WHERE f.R_ID IN (SELECT r.R_ID FROM RESTAURANTS r WHERE r.M_ID='$user_check') ORDER BY F_ID";
$result = mysqli_query($conn, $sql);


if (mysqli_num_rows($result) > 0)
{

  ?>

  <table class="table table-striped">
    <thead class="thead-dark">
      <tr>
        <th>  </th>
        <th> Food ID </th>
        <th> Food Name </th>
        <th> Price </th>
        <th> Description </th>
        <th> Restaurant ID </th>
      </tr>
    </thead>

    <?PHP
      //OUTPUT DATA OF EACH ROW
      while($row = mysqli_fetch_assoc($result)){
    ?>

  <tbody>
    <tr>
      <td> <span class="glyphicon glyphicon-menu-right"></span> </td>
      <td><?php echo $row["F_ID"]; ?></td>
      <td><?php echo $row["name"]; ?></td>
      <td><?php echo $row["price"]; ?></td>
      <td><?php echo $row["description"]; ?></td>
      <td><?php echo $row["R_ID"]; ?></td>
    </tr>
  </tbody>
  
  <?php } ?>
  </table>
    <br>


  <?php } else { ?>

  <h4><center>0 RESULTS</center> </h4>

  <?php } ?>

        </form>

        
        </div>
      
    </div>
</div>
<br>
<br>
<br>
<br>
  
  </body>
</html>