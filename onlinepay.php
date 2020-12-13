<?php
session_start();
require 'connection.php';
$conn = Connect();
if(!isset($_SESSION['login_user2']) || !isset($_SESSION['Cart'])){
header("location: customerlogin.php"); 
}

?> <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>  

<html>

  <head>
    <title> Online Payment | Quick Bites </title>


  </head>

  <!--<link rel="stylesheet" type = "text/css" href ="css/COD.css">
  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>-->

  <body style = "background:url( )">   <!--  Include an image here-->

  
    

    <nav style="background-color:rgb(100,13,13);color:white;padding:20px;" class="navbar navbar-inverse navbar-fixed-top navigation-clean-search" role="navigation">
      <div class="container">
       

     

<?php

?>


<?php

 if(isset($_SESSION['login_user2'])) {
  ?>
           <ul class="nav navbar-nav navbar-right">
            <li><a  style="color:white;font-size:25px;"  href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_user2']; ?> </a></li>
            <li><a  style="color:white;font-size:25px;"  href="foodlist.php"><span class="glyphicon glyphicon-cutlery"></span> Food Zone </a></li>
            <li><a  style="color:white;font-size:25px;"  href="cart.php"><span class="glyphicon glyphicon-shopping-cart"></span> Cart
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



<div style="padding:80;" class="container">
    <div class="row">
        <div style="background-color:rgb(100,13,13);color:white;" class="jumbotron">
          <h1 class="text-center">Online Payment</h1>
          <p class="text-center">Enter your payment details below.</p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="credit-card-div">
                <div class="panel panel-default">
                    <div class="panel-heading">

                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <h5 class="text-muted"> Credit Card Number</h5>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3">
                                <input type="text" class="form-control" placeholder="0000" required="" />
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3">
                                <input type="text" class="form-control" placeholder="0000" required="" />
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3">
                                <input type="text" class="form-control" placeholder="0000" required="" />
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3">
                                <input type="text" class="form-control" placeholder="0000" required="" />
                            </div>
                        </div>
                        <br>
                        <div class="row ">
                            <div class="col-md-3 col-sm-3 col-xs-3">
                                <span class="help-block text-muted small-font"> Expiry Month</span>
                                <input type="text" class="form-control" placeholder="MM" required="" />
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3">
                                <span class="help-block text-muted small-font">  Expiry Year</span>
                                <input type="text" class="form-control" placeholder="YY" required="" />
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3">
                                <span class="help-block text-muted small-font">  CCV</span>
                                <input type="text" class="form-control" placeholder="CCV" required="" />
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3"><br>
                                <img src="images/creditcard.png" class="img-rounded" required="" />
                            </div>
                        </div>
                        <br>
                        <div class="row ">
                            <div class="col-md-12 pad-adjust">

                                <input type="text" class="form-control" placeholder="Name On The Card" required="" />
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-12 pad-adjust">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" checked class="text-muted" required=""> Save details for fast payments. <a href="#">Learn More</a>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="row ">
                            <div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
                             <a href="payment.php"><input type="submit" class="btn btn-danger btn-block" value="CANCEL" required="" /></a>   
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
                              <a href="COD.php"><input type="submit" class="btn btn-success btn-block" value="PAY NOW" required="" /></a>  
                            </div>
                        </div>

                    </div>
                </div>
            </div>
          
        </div>
    </div>
</div>


           </body>
</html>