//<?php
  //  define('USER', 'root');
    //define('PASSWORD', '');
    //define('HOST', 'localhost');
    //define('DATABASE', 'food_order');
    //try {
    //    $connection = new PDO("mysql:host=".HOST.";dbname=".DATABASE, USER, PASSWORD);
    //} catch (PDOException $e) {
    //    exit("Error: " . $e->getMessage());
  //  }
//?>

<?php

function Connect()
{
	$dbhost = "localhost";
	$dbuser = "root";
	$dbpass = "";
	$dbname = "order_details";

	//Create Connection
	$conn = new mysqli($dbhost, $dbuser, $dbpass, $dbname) or die($conn->connect_error);

	return $conn;
}
?>