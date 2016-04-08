<?php

session_start();

$host='localhost';
$user='root';
$pw='';
$db='';

$conn= new mysqli($host, $user, $pw, $db);
  if($conn->connect_error)
  {
	  die("Connection failed: " . $conn->connect_error);
  }

  if(isset($_COOKIE['user']))
  {
	  
    $email= $conn->real_escape_string($_COOKIE['user']);
	
	$sq="SELECT id FROM user WHERE email = '$email'";
    $data= $conn->query($sq);
    $rowData= $data->fetch_assoc();
    $id = $rowData['id'];	
	
	$_SESSION['user_id']= $id;
	
	$sql=" SELECT offers.itemName, offers.path1 FROM offers WHERE email = '$email' ";
	$result = $conn->query($sql);
	


	

  }

  	while( $rows = $result->fetch_assoc() ){
        $image[]= '<img src="'.$rows['path1'].'" />';
	}
	
  

$productQuery= $conn->query("
     SELECT 
	 offers.id, 
	 offers.itemName,
	 COUNT(product_likes.id) AS likes,
	 GROUP_CONCAT(user.email SEPARATOR '|') AS like_by
	 
	 FROM offers
	  
	 LEFT JOIN product_likes
	 ON offers.id = product_likes.product
	 
	 LEFT JOIN user
	 ON product_likes.user= user.id
	 
	 GROUP BY offers.id

");



while($row = $productQuery->fetch_object()){
    $row->like_by = $row->like_by ? explode('|', $row->like_by): [];
	//product title info and id
	$products[]=$row;
	
	
}



 //echo '<prev>', print_r($products, true), '</prev>';



?>
<!DOCTYPE html>
<html>
	<head> 
	<title> Products </title>
	</head>
	<body>
	

	            <!--array and  value-->
	<?php foreach($products as $product): ?>
	   <div class="product">
	   <h3> <?php echo $product->itemName; ?> </h3>
	   <a href="like.php?type=product&id=<?php echo $product->id;?>" > Like </a>
	    
	   <p> <?php echo $product->likes ?> people like this. </p>
	   <?php if(!empty($product->like_by)): ?>
		<ul>
	   
	      <?php foreach($product->like_by as $user) :?>
	          <li> <?php echo $user ?> 
			   
			  </li>
			 <?php endforeach ?>
		</ul>
	   <?php endif ?>

	   </div>
	<?php endforeach; ?>
	
	</body>



</html>