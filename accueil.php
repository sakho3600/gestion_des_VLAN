<?php 
    include 'session.php';
 ?>
<!DOCTYPE html>
<html>
<head>
	<title>Accueil</title>

	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<?php include 'header.php'; ?>


<section id="content">
<div id="auth2"><h3><img src="images/search.gif"> Recherche avancée</h3></div>
	
<form id="form2" action="" method="POST">
<table id="s_content">
	<tr>
		
	    <td><label for="pass">Etage : </label><br>
        <select name="etage">
        	<option>Sélectionnez un etage</option>
			<option>RDC</option>
			<option>1 ER</option>
			<option>2 EME</option>
			</select></td>
        	     <td><label for="pass">VLAN : </label><br>
        <select name="vlan">
             <option>Sélectionnez un vlan</option>

        	<?php 
               include 'connect.php';
               $res=$connexion->query('select nom_vlan from vlan');
               while ($ligne=$res->fetch()) { ?>
               	<option> <?php echo $ligne['nom_vlan']; ?> </option>
               <?php } ?>
        </select>
	    </td>
	    <td><label for="pass">Local technique : </label><br>
        <select name="local">
        		<option>Sélectionnez un local</option>
        	<?php 
               $res=$connexion->query('select nom_local from local_technique');
               while ($ligne=$res->fetch()) { ?>
               	<option> <?php echo $ligne['nom_local']; ?> </option>
               <?php } ?>
        </select>
	    </td>
	</tr>
	<tr>
		
	   
	    <td><label for="pass">Statut : </label><br>
        <select name="statut">
        <option>Sélectionnez un statut</option>

        	<?php 
        	  $req='select statut from prise';
               $res=$connexion->query($req);
               while ($ligne=$res->fetch()) { ?>
               	<option> <?php 
               	      if($ligne['statut']=="L"){
						echo "Libre";
					}
					else
						echo "Resérvé"; ?> </option>
               <?php } ?>
        </select>
	    </td>
	    <td><label for="login">Prise : </label><br><input type="text" name="prise" id="login"></td>
	    
	</tr>
 </table>
 <table>
	<tr>
		<td colspan="3">
		<div id="auth_rech">
			<input type="submit" name="rechercher" value="Rechercher" id="rechercher">
		</div>	
		</td>
	</tr>
</table>
</form>
</section>
</body>
</html>
<?php
	if(isset($_POST['local']) or isset($_POST['vlan']) or isset($_POST['etage']) or isset($_POST['statut']) or isset($_POST['prise'])){
		
		$local=$_POST['local'];
		$vlan=$_POST['vlan'];
		$etage=$_POST['etage'];
		$statut=$_POST['statut'];
		$prise=$_POST['prise'];
		$req="select adresse_ip,nom_local,nom_prise,statut,id_vlan,nom_switch,nom_int,nom_prenom,remarque from local_technique join prise using(code_local) join employe using(code_emp) join switch using(code_local) join interface using(code_switch) join vlan using(id_vlan) where 1 ";

		if($local!='Sélectionnez un local'){
			$req=$req." and nom_local='$local'";
		}

		if($etage!='Sélectionnez un etage'){
			$req=$req." and etage='$etage'";
		}

		if($prise!=''){
			$req=$req." and nom_prise='$prise'";
		}

		if($vlan!='Sélectionnez un vlan'){
			$req=$req." and concat(id_vlan,' - ',nom_vlan)='$vlan'";
		}

		if($statut!='Sélectionnez un statut'){
			if($statut=="Resérvé")
				$req=$req." and concat(statut,'esérvé')='$statut'";
			else if($statut=="Libre")
				$req=$req." and concat(statut,'ibre')='$statut'";
		}

		

		$res=$connexion->query($req);
		$n=count($res->fetchAll());
		if($n>0){
				echo "<head><style>.table1{
				width: 1200px;
				margin: 10px auto;
				position: relative;
				top:20px;
				text-align:center;
				border: 2px black solid;
				border-spacing : 0;
				border-collapse : collapse
				}
				.table1 th {
					background-color:silver;
					border: 3px lightblue solid;
                    padding: 4px;
				}
				.table1 td{
					border: 3px lightblue solid;
					padding: 10px;
				}
				</style></head><body><table border='2' class='table1'><tr>";
				echo "<th>Etat</th>";
				echo "<th>Local Technique</th>";
				echo "<th>Prise</th>";
				echo "<th>Id Vlan</th>";
				echo "<th>Switch</th>";
				echo "<th>Interface</th>";
				echo "<th>Fonctionnaire</th>";
				echo "<th>Nom Pc</th>";
				echo "<th>Statut</th>";
				echo "<th>Remarque</th>";
				echo "<th>Action</th>";
				echo "</tr>";
				
				while($ligne=fetch($res)){
					$url='modifier.php?a='.$ligne['nom_local'].'&b='.$ligne['id_vlan'].'&c='.$ligne['nom_prise'];
					echo "<tr>";
					echo "<td>";
					$req0="select nom_communaute from password";
					$res0=$connexion->query($req0);
					$ligne0=fetch($res0);
						$community=$ligne0['nom_communaute'];
						$int=$ligne['nom_int'];
						$ip=$ligne['adresse_ip'];
						snmp_set_valueretrieval(SNMP_VALUE_PLAIN);
						snmp_set_oid_output_format(SNMP_OID_OUTPUT_NUMERIC);
						$a0= snmpwalkoid($ip,$community, ".1.3.6.1.2.1.2.2.1.2");
						foreach ($a0 as $cle => $valeur) {
							if($valeur==$int){
								$id=explode(".",$cle);
								$n=count($id);
								$id1=$id[$n-1];
								break;
						}
						}


						$id2= ".1.3.6.1.2.1.2.2.1.7.".$id1;

						$a3 = snmpwalkoid($ip,$community, ".1.3.6.1.2.1.2.2.1.7");
						foreach ($a3 as $cle3 => $valeur3) {
							if($cle3==$id2)
							{	
								break;
							}		
						}

						if($valeur3==1){
							echo "<center><img width='10%' height='10%' src='../images/on.png'></center>";
						}
						else
							echo "<center><img width='6%' height='6%' src='../images/off.jpg'></center>";
					echo "</td>";
					echo "<td>".$ligne['nom_local']."</td>";
					echo "<td>".$ligne['nom_prise']."</td>";
						snmp_set_valueretrieval(SNMP_VALUE_PLAIN);
						snmp_set_oid_output_format(SNMP_OID_OUTPUT_NUMERIC);


						$a0= snmpwalkoid($ip,$community, ".1.3.6.1.2.1.2.2.1.2");
						foreach ($a0 as $cle => $valeur) {
							if($valeur==$int){
								$id=explode(".",$cle);
								$n=count($id);
								$id1=$id[$n-1];
								break;
							}
						}

						$id2= ".1.3.6.1.4.1.9.9.68.1.2.2.1.2.".$id1;

						$a3 = snmpwalkoid($ip,$community, ".1.3.6.1.4.1.9.9.68.1.2.2.1.2");
						foreach ($a3 as $cle3 => $valeur3) {
							if($cle3==$id2)
							{	
								break;
							}		
						}
						$req1="select nom_vlan from vlan where id_vlan='$valeur3'";
						$res1=$connexion->query($req1);
						$ligne1=fetch($res1);
						$name_vlan=$ligne1['nom_vlan'];

					echo "<td >";
						echo "$valeur3";
						
					echo "</td>";
					echo "<td>".$ligne['nom_switch']."</td>";
					echo "<td>".$ligne['nom_int']."</td>";
					echo "<td>".$ligne['nom_prenom']."</td>";
					echo "<td>".$ligne['statut']."</td>";
					echo "<td>".$ligne['remarque']."</td>";
					echo "<td><a href='$url' modifier.php'>Modifier</a>";
					echo "</td>";
					echo "</tr>";
				}
				echo "</table></body>";

	}
	else?>
		<br ><center ><div style="background-color: lightblue;padding: 10px;margin:10px 350px 10px 350px; color: red; font-weight: bold; font-size: 18px;"> Aucun résultat!</div></center>
<?php
}
?>


<head><style> .table1{
				width: 1200px;
				margin: 10px auto;
				position: relative;
				top:20px;
				text-align:center;
				border: 2px black solid;
				border-spacing : 0;
				border-collapse : collapse
				}
				.table1 th {
					background-color:silver;
					border: 3px lightblue solid;
                    padding: 4px;
				}
				.table1 td{
					border: 3px lightblue solid;
					padding: 10px;
				}
				</style></head><body><br>
  <h3 style="color: blue;margin-left: 40px;">Exemple de recherche(test)</h3>
				<table border='2' class='table1'>
				<tr>
				<th>Etat</th>
				<th>Local Technique</th>
				<th>Prise</th>
				<th>Id Vlan</th>
				<th>Switch</th>
				<th>Interface</th>
				<th>Fonctionnaire</th>
				<th>Nom Pc</th>
				<th>Statut</th>
				<th>Remarque</th>
				<th>Action</th>
				</tr>
				<tr>
					<td><center>up</center></td>
					<td><center>LTS1</center></td>
					<td><center>A23</center></td>
					<td><center>1</center></td>
					<td><center>switch_mar_1</center></td>
					<td><center>FastEthernet0/6</center></td>
					<td><center>Said BAKRIMI</center></td>
					<td><center>Pc_RDH</center></td>
					<td><center>R</center></td>
					<td></td>
					<td style="background-color: silver;font-weight: bold;"><center><a href="#">Modifier</a></center></td>
				</tr>
</table>


