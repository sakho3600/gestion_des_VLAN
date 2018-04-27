<?php 
     include 'session.php';

     if (empty($_POST['passwd']) or empty($_POST['new_pass'])) 
     {
       header("Location:paramètres.php?modification=not_exist");
     }
     else
     {
     	$pwd = $_POST['passwd'];
     	$new_pass=$_POST['new_pass'];
	include 'connect.php';
	$_res=$connexion->query("select * from password where password='$pwd'");
	$n=count($_res->fetchAll());
	echo $n;
	if($n)
	{
		$connexion->exec("update password set password='$new_pass' where password='$pwd'");
		 header("Location:paramètres.php?modification=correct");
     }else
     	 header("Location:paramètres.php?modification=erreur");
        }
 ?>
