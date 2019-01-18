<h1>Créer une enquête</h1>
<?php
$pdo = new Mypdo();
$oiseauManager = new OiseauManager($pdo);
$adherentManager = new AdherentManager($pdo);
$protocoleManager = new ProtocoleManager($pdo);
$enqueteManager = new EnqueteManager($pdo);
$carreManager = new CarreManager($pdo);
$listeOiseau = $oiseauManager->getAllOiseaux();
$listeAdherent = $adherentManager->getAllAdherent();
$listeProtocole = $protocoleManager->getAllProtocole();


if (!isset($_SESSION['en_nom'])) {
    if (empty($_POST['en_nom']) || empty($_POST['oi_num']) || empty($_POST['organisateur'])
        || empty($_POST['proto_num']) || empty($_POST['date_deb']) || empty($_POST['date_fin'])) { ?>
        <form action="#" id="insert" method="post">
            <?php
            echo 'Nom de l\'enquête : ';
            ?>
            <input type="text" name="en_nom" id="$en_nom" size="20">
            </br></br>
            <?php echo 'Nom de l\'oiseau : '; ?>
            <select size="1" name="oi_num">
                <?php
                foreach ($listeOiseau as $oiseau) { ?>
                    <option value="<?php echo $oiseau->getOiseauNum(); ?>">
                        <?php echo $oiseau->getEspeceNom(); ?>
                    </option>
                <?php } ?>
            </select>
            </br></br>
            <?php echo 'Nom de l\'organisateur : '; ?>
            <select size="1" name="organisateur">
                <?php
                foreach ($listeAdherent as $adherent) { ?>
                    <option value="<?php echo $adherent->getIdPersonne(); ?>">
                        <?php echo $adherent->getNomAdherent() . " ";
                        echo $adherent->getPrenomAdherent(); ?>
                    </option>
                <?php } ?>
            </select>
            </br></br>
            <?php echo 'Protocole : '; ?>
            <select size="1" name="proto_num">
                <?php
                foreach ($listeProtocole as $protocole) { ?>
                    <option value="<?php echo $protocole->getNumeroProtocole(); ?>">
                        <?php echo $protocole->getEnqueteNom(); ?>
                    </option>
                <?php } ?>
            </select>
            </br></br>
            <?php echo 'Date de début : '; ?>
            <input type="date" name="date_deb" id="$date_deb" size="15" value= <?php echo date("Y-m-d") ?>>
            </br></br>
            <?php echo 'Date de Fin : '; ?>
            <input type="date" name="date_fin" id="$date_fin" size="15">

            </br></br>
            <input type="submit" value="Valider"/>
            </form>
        <?php
    } else {



        $enquete = new Enquete($_POST);
        $ajout = $enqueteManager->addEnquete($enquete);
        $_SESSION['en_nom'] = $_POST['en_nom'];

        if ($ajout && ($_POST['date_fin'] >= $_POST['date_deb'])) {
            $intervales = array(6, 13,
                3, 14,
                1, 15,
                2, 15,
                2, 15,
                2, 15,
                1, 15,
                1, 15,
                0, 15,
                1, 15,
                1, 15,
                4, 15,
                5, 15,
                5, 13,
                5, 12,
                5, 12,
                6, 12,
                9, 10
            );
            $length = 18;
            $taille_carre = 47.33;
            $margin_x = 17.117637;
            $margin_y = 163.06255;

            ?>
            <div class="map" id="map">
                <svg version="1.1" id="carte" viewBox="0 0 793.59998 1122.5601"
                     sodipodi:docname="image/Carte_Lim_mailles-page-001.svg"
                     inkscape:version="0.92.3 (2405546, 2018-03-11)">
                    <image xlink:href="./images/Carte_Lim_mailles-page-001.svg" id="Carte_Lim_mailles"/>

                    <?php

                    for ($i = 0; $i < $length; $i++) {
                        $debut = $intervales[$i * 2];
                        $fin = $intervales[$i * 2 + 1];

                        for ($colonne = $debut; $colonne <= $fin; $colonne++) {
                            ?>
                            <a id="carre_<?php echo $i ?>- <?php echo $colonne ?>"
                               xlink:title="carre_<?php echo $i ?>-<?php echo $colonne ?>"
                               onclick="appelFonctions(this.id);">
                                <path d="m <?php echo $margin_x + ($colonne * $taille_carre) ?>,<?php echo $margin_y + $i * $taille_carre ?> -0.14864,44.74187 45.03915,0.29728 -0.14864,-45.1878 z"/>
                            </a>
                            <?php
                        }
                    }
                    ?>
                </svg>
            </div>

            <p><?php echo 'Les carrés saisis sont les suivantes :' ?></p>
            <form method=post id=test2 name="test2">
                <p id="id_carre" name="id_carre"></p>
                  <input onclick="ajoutTab();" type="submit" value="Valider" />
                <input id="boutonOK" type = 'button' onclick="ajoutTab();"value = "Ok">
                <!-- <button id="boutonOK"/>OK</button> -->
            </form>



            <?php

        } else {
            echo 'L\'ajout de l\'enquete n\'a pas fonctionné.';
            unset($_SESSION['en_nom']);
            ?>
            </br></br>
            <input type="button" value="Ok" id="refresh" onclick="refresh();"/>
            <?php

        }
    }
} else {

     echo "Enquête enregistrée avec succès.";
     unset($_SESSION['en_nom']);
     ?>
     </br></br>
     <input type="button" value="Ok" id="refresh" onclick="refresh();"/>
     <?php
}
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
