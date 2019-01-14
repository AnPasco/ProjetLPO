<h1>Créer une enquête</h1>
<?php
	$pdo = new Mypdo();
	$OiseauManager = new OiseauManager($pdo);
	$AdherentManager = new AdherentManager($pdo);
	$ProtocoleManager = new ProtocoleManager($pdo);
	$listeOiseau = $OiseauManager->getAllOiseaux();
	$listeAdherent = $AdherentManager->getAllAdherent();
	$listeProtocole = $ProtocoleManager->getAllProtocole();

	if(empty($_POST['en_nom']) || empty($_POST['oi_num']) || empty($_POST['organisateur'])
   	|| empty($_POST['proto_num']) || empty($_POST['date_deb']) || empty($_POST['date_fin']) ) {

		?>
		<form action="index.php" id="insert" method="post">
		 	<?php
		 	echo 'Nom de l\'enquête : ';
		 	?>
		 	<input type="text" name="en_nom"  id="$en_nom" size="20">
			</br></br>
			<?php
		 	echo 'Nom de l\'oiseau : ';
		 	?>
			<select size="1" name ="oi_num">
				<?php
				foreach ($listeOiseau as $Oiseau){ ?>
					<option value= "<?php echo $Oiseau->getOiseauNum();?>">
						<?php echo $Oiseau->getEspeceNom();?>
					</option>
				<?php } ?>
			</select>
		</br></br>
		<?php
		echo 'Nom de l\'organisateur : ';
		?>
		<select size="1" name ="organisateur">
			<?php
			foreach ($listeAdherent as $Adherent){ ?>
				<option value= "<?php echo $Adherent->getIdPersonne();?>">
					<?php echo $Adherent->getNomAdherent()." ";
					echo $Adherent->getPrenomAdherent();?>
				</option>
			<?php } ?>
		</select>
	</br></br>
	<?php
	echo 'Protocole : ';
	?>
	<select size="1" name ="proto_num">
		<?php
		foreach ($listeProtocole as $Protocole){ ?>
			<option value= "<?php echo $Protocole->getNumeroProtocole();?>">
				<?php echo $Protocole->getEnqueteNom();?>
			</option>
		<?php } ?>
	</select>
	</br></br>
	<?php
	echo 'Date de début : ';
	?>
	<input type="date" name="date_deb"  id="$date_deb" size="15" value= <?php echo date("Y-m-d")?>>
	</br></br>
	<?php
	echo 'Date de Fin : ';
	?>
	<input type="date" name="date_fin"  id="$date_fin" size="15">
	</br></br>
   <input type="submit" value="Valider"/>
	</form>
	<?php
} else{
	$EnqueteManager = new EnqueteManager($pdo);
	$Enquete = new Enquete($_POST);
	$ajout = $EnqueteManager->addEnquete($Enquete);

	if ($ajout){
 		echo "L'enquête à bien été ajoutée.";
		header("Refresh: 3;URL=index.php");
      exit();
 	}else{
 		echo "Problème d'insertion !";
		header("Refresh: 3;URL=index.php");
      exit();
	}
}


 ?>
