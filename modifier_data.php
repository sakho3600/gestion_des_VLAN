<?php 
    include 'session.php';
 
include("connect.php");
$local=$_GET['a'];
$vlan=$_GET['b'];
$prise=$_GET['c'];
		$req="select adresse_ip,nom_local,nom_prise,statut,id_vlan,nom_switch,nom_int,nom_prenom,remarque from local_technique join prise using(code_local) join employe using(code_emp) join switch using(code_local) join interface using(code_switch) join vlan using(id_vlan) where nom_local='$local' and id_vlan='$vlan' and nom_prise='$prise' ";
		$res=$connexion->query($req);
		$ligne = fetch($res);
		echo "<head><meta charset='utf-8' /><style>		fieldset{
			width: 860px;
			margin: 10px auto;
			position: relative;
		}</style></head><body><fieldset><form action='modify.php' method='post'><table><tr>";
		echo "<td><b>Prise</b></td><td colspan='4' ><input type='text' name='prise'size='25' readonly value=".$ligne['nom_prise']."></td></tr>";
		echo "<td><b>VLAN</b></td><td colspan='4'><select name='vlan'>";
		$req1="select id_vlan,nom_vlan from vlan";
		$res1=$connexion->query($req1);
		while($ligne1 = fetch($res1)){
			if($ligne['id_vlan']==$ligne1['id_vlan']){
				echo "<option selected='selected'>".$ligne1['id_vlan']." - ".$ligne1['nom_vlan']."</option>";
			}
			else
				echo "<option>".$ligne1['id_vlan']." - ".$ligne1['nom_vlan']."</option>";
		}
		echo "></td></tr>";
		echo $ligne['nom_prenom'];
		echo "<tr><td><b>Switch:IP</b></td><td><input type='text' name='switch' size='40' readonly value=".$ligne['nom_switch'].":".$ligne['adresse_ip']."></td></tr>";

		echo "<tr><td><b></b></td><td><input type='text' name='port' readonly value=".$ligne['nom_int']."></td>";

		
			$int=$ligne['nom_int'];

						snmp_set_valueretrieval(SNMP_VALUE_PLAIN);
						snmp_set_oid_output_format(SNMP_OID_OUTPUT_NUMERIC);
						$a0= snmpwalkoid("192.168.1.254","private", ".1.3.6.1.2.1.2.2.1.2");
						foreach ($a0 as $cle => $valeur) {
							if($valeur==$int){
								$id=explode(".",$cle);
								$n=count($id);
								$id1=$id[$n-1];
								break;
							}
						}


						$id2= ".1.3.6.1.2.1.2.2.1.7.".$id1;

						$a3 = snmpwalkoid("192.168.1.254", "private", ".1.3.6.1.2.1.2.2.1.7");
						foreach ($a3 as $cle3 => $valeur3) {
							
							if($cle3==$id2)
							{	
								break;
							}		
						}
						if($valeur3==1){
							$adminetat='up';
						}
						else
							$adminetat='down';
		if($adminetat=='up'){
			echo "</td><td><B>Etat</B></td><td colspan='2'><input type='radio' name='etat' value='up' checked>up<input type='radio' name='etat' value='down'>down</td></tr>";
		}
		else

			echo "></td><td>Etat</td><td colspan='2'><input type='radio' name='etat' value='up'>up<input type='radio' name='etat' value='down' checked>down</td></tr>";
		
		echo "<tr><td><b>Fonctionnaire</b></td><td><input type='text' name='emp' size='40' value='".htmlentities($ligne["nom_prenom"], ENT_QUOTES)."'></td>";
		echo "<td><b>Nom PC</b></td><td><input type='text' name='pc' value='".htmlentities($ligne["nom_pc"], ENT_QUOTES)."'></td></tr>";
		echo "<tr><td><b>Remarque</b></td><td colspan='3'><textarea name='remarque' rows='10' cols='50'>".$ligne['remarque']."</textarea></td></tr>";
		echo "<tr><td></td><td></td><td></td><td></td><td><input type='submit' value='Ok'></td></tr>";
		echo "</table></form></fieldset></body>";
	
?>