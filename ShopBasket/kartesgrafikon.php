<?php 
session_start();
$con = mysqli_connect("localhost", "id9221508_root", "admin", "id9221508_product_details");

if(isset($_POST["add_to_cart"]))
{
	if(isset($_SESSION["shopping_cart"]))
	{
		$item_array_id = array_column($_SESSION["shopping_cart"], "item_id");
		if(!in_array($_GET["id"], $item_array_id))
		{
			$count = count($_SESSION["shopping_cart"]);
			$item_array = array(
			    'image_link' => $_POST["hidden_sxolia"],
				'apothema' => $_POST["hidden_apothema"],
				'item_id'			=>	$_GET["id"],
				'item_name'			=>	$_POST["hidden_name"],
				'item_timi'		=>	$_POST["hidden_price"],
				'item_quantity'		=>	$_POST["quantity"]
			);
			$_SESSION["shopping_cart"][$count] = $item_array;
		}
		else
		{
			echo '<script>alert("Item Already Added")</script>';
		}
	}
	else
	{
		$item_array = array(
		  'image_link' => $_POST["hidden_sxolia"],
		  'apothema' => $_POST["hidden_apothema"],
			'item_id'			=>	$_GET["id"],
			'item_name'			=>	$_POST["hidden_name"],
			'item_timi'		=>	$_POST["hidden_price"],
			'item_quantity'		=>	$_POST["quantity"]
		);
		$_SESSION["shopping_cart"][0] = $item_array;
	}
}

if(isset($_GET["action"]))
{
	if($_GET["action"] == "delete")
	{
		foreach($_SESSION["shopping_cart"] as $keys => $values)
		{
			if($values["item_id"] == $_GET["id"])
			{
				unset($_SESSION["shopping_cart"][$keys]);
				echo '<script>alert("Item Removed")</script>';
				echo '<script>window.location="kartesgrafikon.php"</script>';
			}
		}
	}
}

?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <meta name="description" content="Software Developement Team">
	  <meta name="keywords" content="software design, affordable software design, professional software design">  	
    <title>Software Developement Team | Welcome</title>
    
 <style>
 
  ul#liststyle li{
  list-style: none;
  padding:20px;
  border: #cccccc solid 2px;
  margin-bottom:5px;
  background:#e6e6e6;
  
}
article#main-col{
	position: absolute;
  right: 20%;
  margin: auto;
  float:left;
  width:65%;
}

.btn-success{
	
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 15px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 11px;
  margin: 4px 2px;
  cursor: pointer;
}


.btn-success:hover{
	
	background-color:#449948;
			
}


aside {
  position: absolute;
  left: 95%;
  margin: auto;
  float:right;
  width:65%;
	
}

      /* TABLE **/
      
       
	    table,td {
			 
			 border: 1px solid black;
				border-collapse: collapse;
			
		}
	     
        table, th, tr{

            text-align: center;
			 border: 1px solid black;
				border-collapse: collapse;
        }
        .title{
			margin-top:0;
			font-size:200%;
            text-align: center;
            color: black;
            background-color: #c4c4c4;
            padding: 2%;
        }
        h2{
            text-align: center;
            color: #66afe9;
            background-color: #efefef;
            padding: 1%;
        }
        table th{
            background-color:#c4c4c4;
        }
		.table-responsive{
			margin:auto;
			margin-top:1%;
			padding-left:100%;
			
		}
		
		
		
         
		 /* BUTTON - TAMEIO **/
		 
		 footer{}
		 
	   .Buy{
			
		width:100%;
		margin-left:88%;
		margin-bottom:3%;			
		}
		.btn-buy{	

	    background-color: #4CAF50;
        border: none;
        color: white;
        padding: 15px 50px;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		font-size: 15px;
		margin: 4px 2px;
		cursor: pointer;
		border-radius: 10px; 
		}
		
		.btn-buy:hover{			
		background-color: #37823a;
			
		}
		
      /* DROPDOWN **/
		
		.dropbtn {
		margin-top:7%;
		background-color: #e8491d;
		color: white;
		padding: 5px;
		font-size: 16px;
		border:none;
		cursor: pointer;
		
		}

		.dropbtn:hover, .dropbtn:focus {
		background-color: #3e8e41;
		}
		.dropdown {
		
		margin-right:100%;
		position: relative;
		display: inline-block;
		}

		.dropdown-content {		
		display: none;
		position: absolute;
		background-color: #f1f1f1;
		min-width: 160px;
		overflow: auto;
		box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
		z-index: 1;
		}

		.dropdown-content a {
		
		color: black;
		padding: 12px 16px;
		text-decoration: none;
		display: block;
		}

		.dropdown a:hover {background-color: #ddd;}

		.show {display: block;}
		.inner_header{
			margin: 0;
			width: 100%;
			margin-left:25%;
			margin-top:0;
            display: inline-block;
	        padding:0px 20px;
	        transition: all 0.8s ease;
	        position: relative;
			display: block;
		}
		 
		
		/* DROPDOWN - DECORATION **/
		.main li {
		     display: inline-block;
	         margin: 10px;
             text-decoration: none;
             font-family: 'Oswald', sans-serif;	
			
		}
		
		.idsxolia{
			margin-top:0%;
			margin-left:20%;
			
		}
		
		.main li a{
			
        text-decoration:none; 
		color:blue;
		}
		.main li a:hover{
			
        text-decoration:none; 
		color:red;
		}
		
		/* SEARCH BAR **/
		
		#searchbar{ 
        margin-left: 5%; 
        padding:10px; 
        border-radius: 15px; 
        } 
 
        input[type=text1] { 
 
        width: 25%; 
        height:5%;  
       } 
	   
	   input[type=text] { 
 
        width:5%; 
        height:5%;  
       } 
 
       #search_bar{	
        padding-top:5px;
	    width:100%;	   
		}
		
		/* HEAD H1 **/
		
       .highlight a{
	    color:#e8491d;
		}
		.highlight{
         color:#e8491d;
		font-weight:bold;
		padding-right:10px;
        }

		.highlight span{
		color:black;
		font-weight:bold;
		}
		#branding{
		float:left;
		
		font-size:large;

		}

		#branding h1{
		padding-top: 1px;
		margin:0; 
  
		}
		
		header .table-responsive{ margin-left:25%; margin-top:1.3%;}
		
		/* HEADER h2 PRODUCT NAME**/
		h2{
			font-size:200%;
            text-align: center;
            color: black;
            background-color:#e6e6e6;
            padding: 1%;
        }
		
		
		.delete a:hover{ color:red;}
		
		.item_sxolia{ padding-left:10%; border: 5px solid grey;
  padding:  0em 1em;
  border-radius: 16px;
  font-size: 15px;
  line-height: 2; }
		
 </style>
 
 
 <!--SCRIPT------->
<script>


function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}

function search_product() { 
    let input = document.getElementById('searchbar').value 
    input=input.toLowerCase(); 
    let x = document.getElementsByClassName('product'); 
      
    for (i = 0; i < x.length; i++) {  
        if (!x[i].innerHTML.toLowerCase().includes(input)) { 
            x[i].style.display="none"; 
        } 
        else { 
            x[i].style.display="list-item";                  
        } 
    } 
} 

</script>

 </head>


<body>

<header>
 

    <div class="container" style="width: 65%">
	
		
	
	     <div class="inner_header">
     

		
		<div id="branding">		 
		
          <h1 class="highlight"> <a href="index.php"> <span> Hardware </span> Store </a></h1>	  
		  
        </div>

		
		<div id="search_bar">	
		
	     <input id="searchbar" onkeyup="search_product()" type="text1"
        name="search" placeholder="Search product.." >
		
	    </div>
		
<div class="dropdown">
  <button onclick="myFunction()" class="dropbtn">ΠΡΟΙΟΝΤΑ</button>
  
  <div id="myDropdown" class="dropdown-content">
  
    <a href="laptop.php">Laptops</a></li>   
    <a href="kartesgrafikon.php.php">Κάρτες Γραφικών</a>
	<a href="othones.php">Οθόνες</a>
  </div>
  
</div>

</div>
<article id="main-col">
        <ul id="liststyle">
<h2>Laptops</h2>
            <li>
                  <?php
            $query = "SELECT * FROM kartes_grafikwn ORDER BY id ASC ";
            $result = mysqli_query($con,$query);
            if(mysqli_num_rows($result) > 0) {

                while ($row = mysqli_fetch_array($result)) {

                    ?>
                    <div class="col-md-3">

                        <form method="post" action="kartesgrafikon.php?action=add&id=<?php echo $row["id"]; ?>">

                            <div class="product">
							
							  <li><a href="<?php echo $row["image_link"]?>"><img  width="130" height="100"  src="<?php echo $row["image"]; ?>" class="img-responsive"></a>
                                <h3 class="text-info"><?php echo $row["name"]; ?></h3>
								<h5 class="itemp">Απόθεμα:<?php echo $row["apothema"]; ?></h5>
								<h5 class="item_sxolia"><?php echo $row["sxolia"]; ?></h5>
                                <h5 class="text-danger">€<?php echo $row["timi"]; ?></h5>
                                <input type="text" name="quantity" class="form-control" value="1">
                                <input type="hidden" name="hidden_name" value="<?php echo $row["name"]; ?>">
								<input type="hidden" name="hidden_apothema" value="<?php echo $row["apothema"]; ?>">
								<input type="hidden" name="hidden_sxolia" value="<?php echo $row["image_link"]; ?>">
                                <input type="hidden" name="hidden_price" value="<?php echo $row["timi"]; ?>">
                                <input   type="submit" name="add_to_cart"  class="btn-success"
                                       value="Προσθήκη στο Καλάθι"></li>
							    
									  
                            </div>
							
                        </form>
                    </div>
                    <?php
                }
            }
        ?>
    
 
    
	</ul>
		</article>
		<div class="table-responsive">
            <table class="table table-bordered">
			
            <tr>
			   
                <th width="30%">Όνομα προ'ι'όντος</th>
                <th width="10%">Ποσότητα</th>
                <th width="13%">Τιμή</th>
                <th width="10%">Σύνολο</th>
                <th width="17%">Διαγραφή Αντικειμένου</th>
            </tr>


            <?php
                if(!empty($_SESSION["shopping_cart"])){
                    $total = 0;
                    foreach ($_SESSION["shopping_cart"] as $key => $value) {
                        ?>
                        <tr>
						  
                           <td> <?php echo $value["item_name"]; ?></td>
                            <td><?php echo $value["item_quantity"]; ?></td>
                            <td>€ <?php echo $value["item_timi"]; ?></td>
                            <td>
                                € <?php echo number_format($value["item_quantity"] * $value["item_timi"], 2); ?></td>
                            <td class="delete"><a href="kartesgrafikon.php?action=delete&id=<?php echo $value["item_id"] ?>"><span
                                        class="text-danger ">Διαγραφή</span></a></td>

                        </tr>
                        <?php
                        $total = $total + ($value["item_quantity"] * $value["item_timi"]);
                    }
                        ?>
                        <tr>
                            <td colspan="3" align="right">Σύνολο:</td>
                            <th align="right">€ <?php echo number_format($total, 2); ?></th>
                            <td></td>
							
                        </tr>
                        <?php
						
                    }
                ?>
            </table>
        </div>
	
</header>

<footer>

	  <div class="Buy">
	 <a href="ShopBasket.php"><input  type="submit" name="add" style="margin-left: 10px;" class="btn-buy"
       value="Ταμείο" ></a>
	   
	   
	  </div>                           
	   
	
</footer>

</body>
</html>