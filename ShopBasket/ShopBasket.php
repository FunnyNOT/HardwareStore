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
				echo '<script>window.location="ShopBasket.php"</script>';
			}
		}
	}
}

	if (isset($_GET["action"])){
        if ($_GET["action"] == "add_to_cart"){
            foreach ($_SESSION["shopping_cart"] as $keys => $value){
                if ($value["item_quantity"] == $_GET["quantity"]){
                    unset($_SESSION["shopping_cart"][$keys]);
                    echo '<script>window.location="ShopBasket.php"</script>';
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
 
 *{
            font-family: 'Titillium Web', sans-serif;
			
        }
		body{
			
			background-color: #efefef;
			
		}
		body a{margin-left:40%;}
       
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
			margin-top:10%;
			margin-left:30%;
			
		}
		
		.text-danger{ color:blue;}
		.text-danger:hover{color:red;}
         
		 <!--Head Text Decoration---->
		 
		 .highlight{}
		 
		
		 
		 .highlight a{	
		 
			 color:black;
			 text-decoration: none;
		 }
		 .highlight a span{ color:red;}
		 
		 .highlight :hover{ color: red;}
		 
	
		 
		.Buy{
		width:50%;
		margin-left:22%;
		margin-bottom:3%;			
		}
		
		.btn-buy{	
	    background-color: red;
        border: none;
        color: white;
        padding: 15px 120px;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		font-size: 15px;
		margin: 4px 2px;
		cursor: pointer;
		border-radius: 10px; 
		}
		
		.btn-buy:hover{			
		background-color: #4CAF50;
			
		}
 </style>
 
<script>
    function alertp(){
	
	alert("ΕΥΧΑΡΙΣΤΟΥΜΕ ΓΙΑ ΤΗΝ ΑΓΟΡΑ ΣΑΣ")
	
}
</script> 

 </head>


<body>
	
          <h1 class="highlight"> <a href="index.php"> <span> Hardware </span> Store </a></h1>	 
<header>
 

    <div class="container" style="width: 65%">
	
		
	
	     <div class="inner_header">
     

		
	

		
		
		


</div>

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
                            <td class="delete"><a href="ShopBasket.php?action=delete&id=<?php echo $value["item_id"] ?>"><span
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
<footer>      	<div class="Buy">
	<?php 
	   if(!empty($_SESSION["shopping_cart"])){
		   
	 ?>

	
	  <td><a href="ShopBasket.php?action=add_to_cart&quantity=<?php echo $value["item_quantity"] ?>"><button onclick="alertp()"class="btn-buy ">Αγορά</button></a></td>
	   
	   
	   
	  </div>                           
	 <?php
	 
	  }	 
	?>
	</footer>
	

</body>
</html>