<!DOCTYPE html>
<html>
<head>
	<title>titre</title>

	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<header>
	<h1 class="titre">Systeme de gestion des VLANs </h1>

</header>

<section>
<div id="auth"><h3><img src="images/Admin-icon.png" width="40" height="40"> Authentification</h3></div>
	
<form id="form1" action="login.php" method="POST">
	<label for="login">Login: </label><br><input type="text" name="login" id="login"><br>
	<label for="pass">Mot de passe: </label><br><input type="password" name="pass" id="pass"><br>
	<div id="b_submit"><input type="submit" name="Valider" value="Se connecter" id="submit"></div>
</form>
</section>
</body>
</html>