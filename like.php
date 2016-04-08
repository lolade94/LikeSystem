<?php
  ob_start();
  
require_once 'indexLike.php';


if(isset($_GET['type'], $_GET['id'])){
	
	$type = $_GET['type'];
	$id= (int)$_GET['id'];
	
	 
	switch($type){ 
		case 'product':
		 $conn->query("
          INSERT INTO product_likes(user, product)
		  SELECT {$_SESSION['user_id']}, {$id}
		  FROM  offers
		  WHERE EXISTS (
				SELECT id 
				FROM offers
				WHERE id = {$id})
		  AND NOT EXISTS(
		        SELECT id
				FROM product_likes
				WHERE user={$_SESSION['user_id']}
				AND product = {$id})
	      LIMIT 1
		 ");
		break;
		}
		
	}
	 
  header('Location: indexLike.php');
  ob_end_flush();  
  exit();
	//header('Location: indexLike.php');
	
	


?>