<?php 
session_start();
$con = mysqli_connect("localhost", "id9221508_root", "admin", "id9221508_product_details");

?>
<html>
 <head>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <meta name="description" content="Software Developement Team">
	<meta name="keywords" content="software design, affordable software design, professional software design">
  	<link rel="stylesheet" href="css/style.css">
    <title>Hardware Store | Welcome</title>


 </head>

 <body>
  <header>
   
    <div class="header">
	 
		<div id="branding">		 
		
          <h1 class="highlight"> <a href="index.php"> <span> Hardware </span> Store </a></h1>	  
		  
        </div>

</div>
	 
    <div class="inner_header">
     
	    <ul class="main">
	   
	      
		  <li><a href="laptop.php">Laptops</a></li>   
		  <li><a href="kartesgrafikon.php">Κάρτες Γραφικών</a></li>
		  <li><a href="othones.php">Οθόνες</a></li>
		  
	    </ul>
	 
	 
	 
</div>
 </header>

<div id="slider" >
	  
  <figure>
    <img src='img/hp.jpg'>
    <img src='img/msi.jpg'>
    <img src='img/mac.jpg'>
	<img src='img/razer.jpg'>
	<img src='img/mot.jpg'>
	
 </figure>	
 
</div>


  <footer>
      <p>Hardware Store &copy; 2019</p>
</footer>
 </body>
<html>