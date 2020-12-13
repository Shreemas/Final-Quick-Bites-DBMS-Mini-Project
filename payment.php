<?php
session_start();
require 'connection.php';
$conn = Connect();
if(!isset($_SESSION['login_user2'])){
header("location: customerlogin.php"); 
}
?>

<html>

  <head>
    <title> Cart |  Quick Bites </title>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>   
  </head>

  <!--<link rel="stylesheet" type = "text/css" href ="css/payment.css">
  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>-->

  <body style = "background:url( )">  <!--Add an image-->
    

    <nav style="background-color:rgb(100,13,13);color:white;padding:20px;" class="navbar navbar-inverse navbar-fixed-top navigation-clean-search" role="navigation">
      <div class="container">
       
        

<?php

if(isset($_SESSION['login_user2'])) {
  ?>
           <ul  class="nav navbar-nav navbar-right">
            <li><a style="color:white;font-size:25px;" href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_user2']; ?> </a></li>
            <li><a style="color:white;font-size:25px;" href="foodlist.php"><span class="glyphicon glyphicon-cutlery"></span> Food Zone </a></li>
            <li><a style="color:white;font-size:25px;" href="cart.php"><span class="glyphicon glyphicon-shopping-cart"></span> Cart
             (<?php
              if(isset($_SESSION["Cart"])){
              $count = count($_SESSION["Cart"]); 
              echo "$count"; 
            }
              else
                echo "0";
              ?>)
              </a></li>
            <li><a style="color:white;font-size:25px;" href="index.html"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
          </ul>
  <?php        
}
else {

  ?>


<?php
}
?>
      </div>

      </div>
    </nav>

 <?php
$gtotal = 0;
  foreach($_SESSION["Cart"] as $keys => $values)
  {

    $F_ID = $values["food_id"];
    $foodname = $values["food_name"];
    $quantity = $values["food_quantity"];
    $price =  $values["food_price"];
    $total = ($values["food_quantity"] * $values["food_price"]);
    $R_ID = $values["R_ID"];
    $username = $_SESSION["login_user2"];
    $order_date = date('Y-m-d');
    
    $gtotal = $gtotal + $total;


     $query = "INSERT INTO ORDERS (F_ID, foodname, price,  quantity, order_date, username, R_ID) 
              VALUES ('" . $F_ID . "','" . $foodname . "','" . $price . "','" . $quantity . "','" . $order_date . "','" . $username . "','" . $R_ID . "')";
             

              $success = $conn->query($query);         

      if(!$success)
      {
        ?>
        <div style="padding:100px;" class="container">
          <div class="jumbotron" style="background-color:rgb(100,13,13);color:white;">
            <h1>Something went wrong!</h1>
            <p>Try again later.</p>
          </div>
        </div>

        <?php
      }
      
  }

        ?>
        <div style="padding-top:80px;" class="container">
          <div class="jumbotron" style="background-color:rgb(100,13,13);color:white;">
            <h1>Choose your payment option</h1>
          </div>
        </div>
        <br>
<h1 class="text-center">Grand Total: &#8377;<?php echo "$gtotal"; ?>/-</h1>
<h5 class="text-center">including all service charges. (no delivery charges applied)</h5>
<br>
<h1 class="text-center">
  <a href="cart.php"><button class="btn btn-warning"><span class="glyphicon glyphicon-circle-arrow-left"></span> Go back to cart</button></a>
  <a href="onlinepay.php"><button class="btn btn-success"><span class="glyphicon glyphicon-credit-card"></span> Pay Online</button></a>
  <a href="COD.php"><button class="btn btn-success"><span class="glyphicon glyphicon-"></span> Cash On Delivery</button></a>
</h1>
        


<br><br><br><br><br><br>
        </body>
</html>