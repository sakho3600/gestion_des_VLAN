<?php 
     if(isset($_POST['login']) and isset($_POST['pass'])){
	$login_form = $_POST['login'];
	$passwd_form = $_POST['pass'];
	include 'connect.php';
	$_res=$connexion->query("select * from password where login='$login_form' and password='$passwd_form'");
	$n=count($_res->fetchAll());
	if($n)
	{
		session_start();
		$_SESSION['auth']=true;
		header("Location: Accueil.php");
	}
	else
		header("Location: index.php");
    }
    else
    			header("Location: index.php");

 ?>