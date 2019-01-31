<h1>Rechercher une enquête</h1>
<?php
$pdo = new Mypdo();
if (empty($_POST['text'])) {
    if (empty($_POST['en_num'])) {
        $enqueteManager = new EnqueteManager($pdo);
        $listeEnquete = $enqueteManager->getAllEnquete();
        ?>

        <form action="index.php" id="insert" method="post">
            <label> Selectionner le nom de l'enquête :</label>
            <select name="en_num" class="choose">
                <?php
                foreach ($listeEnquete as $enquete) { ?>
                    <option value="<?php echo $enquete->getEnqueteNum(); ?>">
                        <?php echo $enquete->getEnqueteNom(); ?>
                    </option>
                    <?php
                } ?>
            </select>
            <div id="button">
                <input type="submit" name="Rechercher" class="submit" value="Valider"/>
            </div>
        </form>
    <?php } else {
        $_SESSION['en_num'] = $_POST['en_num'];
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
                 sodipodi:docname="Carte_Lim_mailles-page-001.svg"
                 inkscape:version="0.92.3 (2405546, 2018-03-11)">
                <image xlink:href="./images/Carte_Lim_mailles-page-001.svg" id="Carte_Lim_mailles"/>

                <?php
                $carreManager = new CarreManager($pdo);
                $listeCarre = $carreManager->getAllCarre($_POST['en_num']);

                for ($i = 0; $i < $length; $i++) {
                    $debut = $intervales[$i * 2];
                    $fin = $intervales[$i * 2 + 1];

                    for ($colonne = $debut; $colonne <= $fin; $colonne++) {
                        $carre_nom = "carre_" . $i . "- " . $colonne;

                        foreach ($listeCarre as $carre) {
                            if ($carre->getCarreNom() == $carre_nom) { ?>
                                <a onclick="document.getElementById('text').value = this.id;"
                                   id="<?php echo $carre_nom ?>" xlink:title="<?php echo $carre_nom ?>">
                                    <path d="m <?php echo $margin_x + ($colonne * $taille_carre) ?>,<?php echo $margin_y + $i * $taille_carre ?> -0.14864,44.74187 45.03915,0.29728 -0.14864,-45.1878 z"/>
                                </a>
                                <?php
                            }
                        }
                    }
                } ?>
            </svg>
        </div>
        <form action="index.php" id="insert" method="post">
            <input type="text" name="text" id="text"></label>
            <input type="submit" name="Valider" value="Valider">
        </form>
        <?php
    }
} else {
    $enqueteManager = new EnqueteManager($pdo);
    $carreManager = new CarreManager($pdo);
    $carre = $carreManager->getCarre($_POST['text']);
    $enqueteur = $carre->getEnqueteur();

    if ($enqueteur != null) {
        $adherentManager = new AdherentManager($pdo);
        $adherent = $adherentManager->getAdherent($enqueteur); ?>
        <p>Le carre que vous avez sélectionné, est déjà attribué, veuillez choisir un autre carre ou contacter
            M/Mme <?php echo $adherent->getNomAdherent() ?></p>
        <p>Voici son numéro de téléphone : <?php echo $adherent->getTelephoneAdherent() ?></p>
        <p>Voici son adresse mail : <?php echo $adherentManager->getMail($adherent->getNumeroAdherent()) ?></p>
    <?php } else {
        $carreManager = new CarreManager($pdo);
        $EnqueteManager = new EnqueteManager($pdo);
        $CarteManager = new CarteManager($pdo);
        $ProtocoleManager = new ProtocoleManager($pdo);
        $KMZManager = new KMZManager($pdo);

        $carreManager->updateCarre(1, $_SESSION['en_num'], $_POST['text']);

        $protocole = $ProtocoleManager->getProtocole($_SESSION['en_num']);
        $carte = $CarteManager->getCarte($_POST['text']);
        $KMZ = $KMZManager->getKMZ($_POST['text']);
        $enquete = $EnqueteManager->getEnquete($_SESSION['en_num']);
        ?>
        <h1><?php echo $enquete->getEnqueteNom() ?></h1>
        <object data="PDF/<?php echo $protocole->getFichierProtocole() ?>.pdf" type="application/pdf">
        </object>
        <a href="PDF/<?php echo $protocole->getFichierProtocole() ?>.pdf" download>
            <img class="lien" src="images/telechargement.jpg" alt="lien de téléchargement du protocole">
        </a>
        <a href="images/Cartes/Atlas dynamique/<?php echo $carte->getCarteImg() ?>.jpg" download>
            <img src="images/Cartes/Atlas dynamique/<?php echo $carte->getCarteImg() ?>.jpg" alt="carte">
        </a>
        <label>Voici un fichier KMZ pour aider à vous géolocaliser. Vous pouvez l'utiliser sur google earth.</label>
        <a href="images/KMZ/<?php echo $KMZ->getKMZFichier() ?>.KMZ" download>
            <img class="lien" src="images/telechargement.jpg" alt="lien de téléchargement du fichier KMZ">
        </a>
    <?php }
} ?>
