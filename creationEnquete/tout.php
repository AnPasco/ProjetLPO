<?php
?>
<!doctype html>
<html lang="fr">
<head>
	<meta charset="utf-8">
	<title>Carte 47.5</title>
	<link rel="stylesheet" type="text/css" href="style.css" />

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
	<script>
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
	    elem1 = document.getElementById(monId + " i");
	    if (elem.style.fill === 'red') {
	        elem.style.fill = 'black';
	        elem1.checked = false;
	    }
	    else {
	        elem.style.fill = 'red';
	        elem1.checked = true;
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

	</script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	</body>
	</html>
