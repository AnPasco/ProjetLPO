<h1>Créer une enquête</h1>
<?php
$pdo = new Mypdo();
$OiseauManager = new OiseauManager($pdo);
$AdherentManager = new AdherentManager($pdo);
$ProtocoleManager = new ProtocoleManager($pdo);
$listeOiseau = $OiseauManager->getAllOiseaux();
$listeAdherent = $AdherentManager->getAllAdherent();
$listeProtocole = $ProtocoleManager->getAllProtocole();

if(empty($_POST['ids'])){
	if(empty($_POST['en_nom']) || empty($_POST['oi_num']) || empty($_POST['organisateur']) || empty($_POST['proto_num']) || empty($_POST['date_deb']) || empty($_POST['date_fin']) ) { ?>
		<form action="index.php" id="insert" method="post">
			<?php
			echo 'Nom de l\'enquête : ';
			?>
			<input type="text" name="en_nom"  id="$en_nom" size="20">
		</br></br>
		<?php echo 'Nom de l\'oiseau : '; ?>
		<select size="1" name ="oi_num">
			<?php
			foreach ($listeOiseau as $Oiseau){ ?>
				<option value= "<?php echo $Oiseau->getOiseauNum();?>">
					<?php echo $Oiseau->getEspeceNom();?>
				</option>
			<?php } ?>
		</select>
	</br></br>
	<?php echo 'Nom de l\'organisateur : ';		?>
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
<?php	echo 'Protocole : ';?>
<select size="1" name ="proto_num">
	<?php
	foreach ($listeProtocole as $Protocole){ ?>
		<option value= "<?php echo $Protocole->getNumeroProtocole();?>">
			<?php echo $Protocole->getEnqueteNom();?>
		</option>
	<?php } ?>
</select>
</br></br>
<?php echo 'Date de début : '; ?>
<input type="date" name="date_deb"  id="$date_deb" size="15" value= <?php echo date("Y-m-d")?>>
</br></br>
<?php echo 'Date de Fin : '; ?>
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
		$intervales = array( 6,13,
			3,14,
			1,15,
			2,15,
			2,15,
			2,15,
			1,15,
			1,15,
			0,15,
			1,15,
			1,15,
			4,15,
			5,15,
			5,13,
			5,12,
			5,12,
			6,12,
			9,10
		);
		$length = 18;
		$taille_carre = 47.33;
		$margin_x = 17.117637;
		$margin_y = 163.06255;

		?>
		<div class="map" id="map">
			<svg version="1.1" id="carte" viewBox="0 0 793.59998 1122.5601" sodipodi:docname="image/Carte_Lim_mailles-page-001.svg"
			inkscape:version="0.92.3 (2405546, 2018-03-11)">
			<image xlink:href="./images/Carte_Lim_mailles-page-001.svg" id="Carte_Lim_mailles" />

			<?php

			for($i = 0; $i<$length; $i++){
				$debut = $intervales[$i*2];
				$fin =  $intervales[$i*2+1];

				for($colonne = $debut; $colonne <= $fin ; $colonne++){
					?>
					<a id="carre_<?php echo $i?>- <?php echo $colonne ?>" xlink:title="carre_<?php echo $i?>-<?php echo $colonne ?>" onclick="appel(this.id);">
						<path d="m <?php echo $margin_x + ($colonne * $taille_carre) ?>,<?php echo $margin_y + $i * $taille_carre ?> -0.14864,44.74187 45.03915,0.29728 -0.14864,-45.1878 z" />
						</a>
						<?php
					}
				}
				?>
			</svg>
		</div>
		<p id="test"> Les carrés saisis sont les suivantes : </p>
		<form method=post id=test2 name="test2">
			<input type=text id="ids">
			<input type="submit" id="bouton" value = "OK"/>
		</form>
		<?php
	}else{
		echo "Problème d'insertion !";
		exit();
	}
}
}
else {
	$CarreManager = new CarreManager($pdo);
	$tousLesIds = $_POST['ids'];
	$idCarre = "";
	$j = 0;
	for ($i=0; $i<$tousLesIds.strlen; $i++){
		if ($tousLesIds[$i] != ',') {
			$idCarre[$j] = $tousLesIds[$i];
		}
		if($tousLesIds[$i] == ','){
			$array = array(carre_num => "$idCarre", etat => 1);
			$Carre = new Carre($array);
			$ajout = $CarreManager->addCarre($Carre);

			$idCarre = "";
			$j = 0;
		}
	}
}?>
