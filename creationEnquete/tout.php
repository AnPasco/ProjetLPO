<!doctype html>
<html lang="fr">
<head>
	<meta charset="utf-8">
	<title>Carte 47.5</title>
	<link rel="stylesheet" type="text/css" href="css/style.css" />

</head>
<body>
<?php
	require_once( dirname(__FILE__). '\config.inc.php');
	require_once( dirname(__FILE__). '\Adherent.class.php');
	require_once( dirname(__FILE__). '\AdherentManager.class.php');
	require_once( dirname(__FILE__). '\Carre.class.php');
	require_once( dirname(__FILE__). '\CarreManager.class.php');
	require_once( dirname(__FILE__). '\Enquete.class.php');
	require_once( dirname(__FILE__). '\EnqueteManager.class.php');
	require_once( dirname(__FILE__). '\Mypdo.class.php');
	require_once( dirname(__FILE__). '\Oiseau.class.php');
	require_once( dirname(__FILE__). '\OiseauManager.class.php');
	require_once( dirname(__FILE__). '\Protocole.class.php');
	require_once( dirname(__FILE__). '\ProtocoleManager.class.php');
	require_once( dirname(__FILE__). '\CreerEnquete.inc.php');

?>
	<div id="footer">
	<br />
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<script type="text/javascript">

	function ajouteEvent(objet, typeEvent, nomFonction, typePropagation) {
			if (objet.addEventListener) {
					objet.addEventListener(typeEvent, nomFonction, typePropagation);
			} else if (objet.attachEvent) {
					objet.attachEvent('on' + typeEvent, nomFonction);
			}
	}

	var lesId = [];
	var x = 0;

	function deleteId(monId) {
			var carre = document.getElementById(monId).id;
			changeCouleur(carre);
			for (var i = x; i >= 0; i--) {
					if (lesId[i] === monId) {
							lesId.splice(i, 1);
					}
			}
			document.getElementById("id_carre").innerHTML = lesId.join(" ");
	}

	function getCarre(monId) {
			var carre = document.getElementById(monId).id
			changeCouleur(carre);
			lesId.push(monId);
			document.getElementById("id_carre").innerHTML = lesId.join(" ");
	}

	function changeCouleur(monId) {
			elem = document.getElementById(monId);
			if (elem.style.fill === 'red') {
					elem.style.fill = 'black';
			}
			else {
					elem.style.fill = 'red';
			}
	}

	function appelFonctions(monId) {
			if (document.getElementById(monId).style.fill != 'red') {
					getCarre(monId);
					x = x + 1;
			}
			else {
					deleteId(monId);
					x = x - 1;
			}
	}

// 	$(document).ready(function(){
// 		$('#boutonOK').click(function(){
// console.log("test");
// 			//ajoutTab();
// 		});
//
// 	})

	function ajoutTab() {

		//wp_localize_script( 'rml-script', 'readmelater_ajax', array( 'ajax_url' => admin_url('ajoutTab.ajax.php')) );

		console.log("data");
		if (lesId != "") {
		 		console.log("data");
		 			$.post("ajoutTab.ajax.php", {lesId: lesId}, function(data){
						 console.log(data);
					});
		 	}


	// 	$.ajax({
	// 		url : readmelater_ajax.ajax_url, // à adapter selon la ressource
	// 		method : 'POST', // GET par défaut
	// 		data : {
	// 			lesId : lesId,
	// 		}, // mes variables
	// 		success : function( data ) { // en cas de requête réussie
	// 			// Je procède à l'insertion
	// 			console.log("data");
	// 		},
	// 		error : function( data ) { // en cas d'échec
	// 			// Sinon je traite l'erreur
	// 			console.log(data);
	// 		}
	// 	});
	 }

	function refresh() {
		var refresh = document.getElementById('refresh');
		refresh.addEventListener('click', location.href='./index.php', false);
 }
</script>

	</body>
	</html>
