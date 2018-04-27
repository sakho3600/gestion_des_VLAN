 <?php 
    include 'session.php';
 ?>

 <!DOCTYPE html>
<html>
<head>
  <title>Paramètres</title>

  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <?php include 'header.php'; ?>
</body>
<section>

<?php if (isset($_GET['modification'])) {
  	if ($_GET['modification']=='correct') { ?>
    <h3 class="message" >mot de passe a été modifié</h3>
  <?php }
    else if($_GET['modification']=='not_exist') { ?>
  <h3 class="message" style="width:400px; ">Veuillez remplir tous les champs</h3>
    	<?php  }
     else{ ?>
      <h3 class="message">Mot de passe incorrect</h3>
     
    	<?php }
    	} ?>
<div id="auth"><h3><img src="images/b_edit.png" width="25" height="25"> Modification</h3></div>
   
<form id="form1" action="modifierpwd.php" method="POST">
	<label for="pass">Votre mot de passe: </label><br><input type="password" name="passwd" id="pass"><br>
	<label for="new_pass">Nouveau mot de passe: </label><br><input type="password" name="new_pass" id="new_pass">
	<br>
    <label for="pass">Confirmation: </label><br><input type="password" name="pass" id="pass"><br>
	<div id="b_submit"><input type="submit" name="Valider" value="Se connecter" id="submit2"></div>
</form>
</section>
</body>
</html>