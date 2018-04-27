<?php 
    include 'session.php';
 ?>

<!DOCTYPE html>
<html>
<head>
	<title>Consultation</title>

	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<?php include 'header.php'; ?>

<h1 id="arch"> L’architecture réseau de la Province :</h1>

<br>
<div style="margin-left: 30px;">
	<div id="" class="plan">
	<a href="#RDC">
		<h5 class="ss_titre"><img src="images/on.png" width="11" height="11">Rez de chaussée</h5>
		<img src="images/plan1.jpg" width="350px"></a>
	</div>
	<div class="plan">
	<a href="#etage1">
		<h5 class="ss_titre"><img src="images/on.png" width="11" height="11">Etage 1</h5>
				<img src="images/plan2.jpg" width="350px"></a>

	</div>
	<div class="plan">
	<a href="#etage2">
		<h5 class="ss_titre"><img src="images/on.png" width="11" height="11">Etage 2</h5>
				<img src="images/plan3.jpg" width="350px"></a>

	</div>
	<div></div>
</div>
<br style="clear: left;">
<hr><br>
<div id="RDC">

<h2 style="text-align: center; color: red;">Rez de chaussée</h2>
	<img src="images/plan1.jpg" width="1120px">
</div>
<br>
<hr><br>
<div id="etage1">
<h2 style="text-align: center; color: red;">Etage 1</h2>

		<img src="images/plan2.jpg" width="1120px">

</div>
<br>
<hr><br>
<div id="etage2">
<h2 style="text-align: center; color: red;">Etage 2</h2>

		<img src="images/plan3.jpg" width="1120px">

</div>
</body>
</html>