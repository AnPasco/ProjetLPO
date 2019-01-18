<h1>Créer une enquête</h1>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>


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
        <div id="form">
            <form action="index.php" id="insert" method="post">
                <div id="formLeft">
                    <div id="enqueteName">
                        <p>Nom de l'enquête : </p>
                        <input type="text" name="en_nom" id="en_nom" size="20" class="choose">
                        </br></br>
                    </div>
                    <div id="oiseauName">
                        <p>Nom de l'oiseau : </p>
                        <select size="1" name="oi_num" class="choose">
                            <?php
                            foreach ($listeOiseau as $oiseau) { ?>
                                <option value="<?php echo $oiseau->getOiseauNum(); ?>">
                                    <?php echo $oiseau->getEspeceNom(); ?>
                                </option>
                            <?php } ?>
                        </select>
                        </br></br>
                    </div>
                    <p>Nom de l'organisateur : </p>
                    <select size="1" name="organisateur" class="choose">
                        <?php
                        foreach ($listeAdherent as $adherent) { ?>
                            <option value="<?php echo $adherent->getIdPersonne(); ?>">
                                <?php echo $adherent->getNomAdherent() . " ";
                                echo $adherent->getPrenomAdherent(); ?>
                            </option>
                        <?php } ?>
                    </select>
                    </br></br>
                </div>
                <div id="formRight">
                    <p>Protocole : </p>
                    <select size="1" name="proto_num" class="choose">
                        <?php
                        foreach ($listeProtocole as $protocole) { ?>
                            <option value="<?php echo $protocole->getNumeroProtocole(); ?>">
                                <?php echo $protocole->getEnqueteNom(); ?>
                            </option>
                        <?php } ?>
                    </select>
                    </br></br>
                    <p>Date de début : </p>
                    <input type="date" name="date_deb" id="date_deb" size="15" class="choose"
                           value= <?php echo date("Y-m-d") ?>>
                    </br></br>
                    <p>Date de fin : </p>
                    <input type="date" name="date_fin" id="date_fin" size="15" class="choose"
                    </br></br>
                    </br></br>
                </div>
                <div id="button">
                    <input type="submit" class="submit" value="Valider"/>
                </div>
            </form>
        </div>

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
                <label id="id_carre" name="id_carre"></label>
                </br></br>
                <input type="submit" class="submit" value="OK" onclick="ajoutTab();"/>
            </form>
            <?php

        } else {
            ?>
            <label class="labelSuccess">L'ajout de l'enquete n'a pas fonctionné.</label>'
            <?php
            unset($_SESSION['en_nom']);
            ?>
            </br></br>
            <input type="button" value="Ok" id="refresh" onclick="refresh();"/>
            <?php

        }
    }
} else {
    ?>
    <label class="labelSuccess">Enquête enregistrée avec succès.</label>
    <?php
    unset($_SESSION['en_nom']);
    ?>
    </br></br>
    <input type="button" value="Ok" id="refresh" onclick="refresh();"/>
    <?php
}
?>
