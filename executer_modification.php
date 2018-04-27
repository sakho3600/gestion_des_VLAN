<meta charset="utf-8" />
<?php
	  include 'session.php';

	if(isset($_POST['emp']) ){
			include("connect.php");

			$prise=$_POST['prise'];
			$vlan=$_POST['vlan'];
			$switch=$_POST['switch'];
			$port=$_POST['port'];
			$etat=$_POST['etat'];
			$emp=$_POST['emp'];
			$remarque=$_POST['remarque'];

			$req="select nom_switch,adresse_ip from switch where concat(nom_switch,':',adresse_ip)='$switch'";
			$res=$connexion->query($req);
			$ligne=fetch($res);
			$switch=$ligne['nom_switch'];
			$ip=$ligne['adresse_ip'];

			$req1="select code_switch from switch where nom_switch='$switch'";
			$res1=$connexion->query($req1);
			$ligne1=fetch($res1);
			$code_switch=$ligne1['code_switch'];
			$req2="select code_int from interface where nom_int='$port' and code_switch='$code_switch'";
			$res2=$connexion->query($req2) ;
			$ligne2=fetch($res2);
			$code_int=$ligne2['code_int'];
			$req="update interface set code_switch='$code_switch' where code_int='$code_int'";
			$res=$connexion->query($req) ;


			$req1="select id_vlan from vlan where concat(id_vlan,' - ',nom_vlan)='$vlan'";
			$res1=$connexion->query($req1) ;
			$ligne1=fetch($res1);
			$code_vlan=$ligne1['id_vlan'];
			$req2="select code_int from interface where nom_int='$port' and code_switch='$code_switch'";
			$res2=$connexion->query($req2) ;
			$ligne2=fetch($res2);
			$code_int=$ligne2['code_int'];
			$req="update interface set id_vlan='$code_vlan' where code_int='$code_int'";
			$res=$connexion->query($req) ;
			$req="update interface set remarque='$remarque' where code_int='$code_int'";
			$res=$connexion->query($req) ;


			$req="update  prise set nom_pc='$pc' where nom_prise='$prise'";
			$res=$connexion->query($req) ;
			$req1="select code_emp from prise where nom_prise='$prise' and nom_pc='$pc'";
			$res1=$connexion->query($req1) ;
			$ligne=fetch($res1);
			$code_emp=$ligne['code_emp'];
			$req="update employe set nom_prenom='$emp' where code_emp='$code_emp'";
			$res=$connexion->query($req) ;




			$req="select nom_communaute from password";
			$res=$connexion->query($req) ;
			$ligne=fetch($res);

			$int=$port;
			$ip=$ip;
			$community=$ligne['nom_communaute'];

			snmp_set_valueretrieval(SNMP_VALUE_PLAIN);
			snmp_set_oid_output_format(SNMP_OID_OUTPUT_NUMERIC);

			//Modifier etat
			$a0= snmpwalkoid($ip, $community , ".1.3.6.1.2.1.2.2.1.2");
			foreach ($a0 as $cle => $valeur) {
				if($valeur==$int){
				//echo 'cle: '.$cle.' valeur'.$valeur.'<br />';
				$id=explode(".",$cle);
				//print_r($id);
				$n=count($id);
				$id1=$id[$n-1];
				break;
			}
			}


			$id2= ".1.3.6.1.2.1.2.2.1.7.".$id1;



			$a3 = snmpwalkoid($ip, $community , ".1.3.6.1.2.1.2.2.1.7");
			foreach ($a3 as $cle3 => $valeur3) {
				//echo $cle3.'<br>';
				if($cle3==$id2)
				{	if($etat=="up")
						snmpset($ip, $community, $cle3, 'i', 1);
					else
						snmpset($ip, $community, $cle3, 'i', 2);

				}		
			}
			// up =1 down=2

			// Modifier Vlan
			$a0= snmpwalkoid($ip,$community, ".1.3.6.1.2.1.2.2.1.2");
			foreach ($a0 as $cle => $valeur) {
				if($valeur==$int){
				//echo 'cle: '.$cle.' valeur'.$valeur.'<br />';
				$id=explode(".",$cle);
				$n=count($id);
				$id1=$id[$n-1];
				break;
			}
			}

			$id2= ".1.3.6.1.4.1.9.9.68.1.2.2.1.2.".$id1;

			$a3 = snmpwalkoid($ip, $community, ".1.3.6.1.4.1.9.9.68.1.2.2.1.2");
			foreach ($a3 as $cle3 => $valeur3) {
				if($cle3==$id2)
				{	
					//echo $cle3.'<br />';
					snmpset($ip, $community, $cle3, 'i', $code_vlan);

				}		
			}

			echo '<meta http-equiv="refresh" content="0;URL=accueil.php">';
			echo "<script language='Javascript'> alert('Modification terminée!') </script>";
			
}
	


?>