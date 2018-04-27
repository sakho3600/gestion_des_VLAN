<?php
include 'session.php';
include("connect.php");
$local=$_GET['a'];
$vlan=$_GET['b'];
$prise=$_GET['c'];
		$req="select adresse_ip,nom_local,nom_prise,statut,id_vlan,nom_switch,nom_int,nom_prenom,remarque from local_technique join prise using(code_local) join employe using(code_emp) join switch using(code_local) join interface using(code_switch) join vlan using(id_vlan) where nom_local='$local' and id_vlan='$vlan' and nom_prise='$prise' ";
		$res=$connexion->query($req);
		$ligne = fetch($res);
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
<div id="auth2"><h3>Modification des données</h3></div>
	
<form id="form2" action="executer_modification.php" method="POST">
<table>
<div id="s_content">
	<tr>
		
	    <td><label >Prise : </label><br>
        <input type="text" name="prise" value=" <?php echo $ligne['nom_prise']; ?>">
	    </td>
	     <td><label for="pass">VLAN : </label><br>
        <select name="vlan">
             
        	<?php 
               $req1="select id_vlan,nom_vlan from vlan";
		$res1=$connexion->query($req1);
		while($ligne1 = fetch($res1)){
			if($ligne['id_vlan']==$ligne1['id_vlan']){  ?>
				<option selected='selected'><?php echo $ligne1['id_vlan']."-".$ligne1['nom_vlan'] ?></option>";
			<?php }
			else ?>
				<option ><?php echo $ligne1['id_vlan']."-".$ligne1['nom_vlan'] ?></option>";
	<?php 	} ?> 
               
        </select>
	    </td>
	    <td><label >Port : </label><br>
        <<input type="text" name="port" readonly value="<?php echo $ligne['nom_int'] ?>">
	    </td> 
	    
	</tr>
	<tr>
	<?php
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
							$adminetat='down'; ?>
			<td><label >Etat : </label><br>
						<?php
		if($adminetat=='up'){  ?>
	   
        <input type='radio' name='etat' value='up' checked="checked"> <?php echo "up"; ?><input type='radio' name='etat' value='down'><?php echo "down";
        } 
         else
         {
        ?>
        
        <input type='radio' name='etat' value='up' > <?php echo "up"; ?><input type='radio' name='etat' value='down' checked="checked"><?php echo "down"; } ?>
	    </td>
	    <?php 
      $emp=htmlentities($ligne["nom_prenom"], ENT_QUOTES);
	    ?>
	    <td><label >Fonctionnaire : </label><br><input type="text" name="emp" value=" <?php echo $emp; ?> " ></td>
	    <td><label>Switch:IP :</label><br>
<input type="text" name="switch" readonly value="<?php echo $ligne['nom_switch'].":".$ligne['adresse_ip']; ?>">
	    </td>
	    
	</tr>
	<tr>
		
		<td colspan="3"><label>Remarque :</label><br>
		<textarea name='remarque' rows='10' cols='50'> <?php echo $ligne['remarque']; ?></textarea></td>
	</tr>
	</div>
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