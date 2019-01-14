<h1>Rechercher une enquête</h1>

<?php
$pdo = new Mypdo();
$enqueteManager = new EnqueteManager($pdo);
$listeEnquete = $enqueteManager->getAllEnquete();
?>

<form action="" id="search" method="post">
    <?= 'Selectionner le nom de l\'enquête' ?>
    <select name="en_nom">
        <?php
        foreach ($listeEnquete as $enquete) {
            ?>
            <option value="<?php $enquete->getEnqueteNum(); ?>">
                <?php echo $enquete->getEnqueteNom(); ?>
            </option>
            <?php
        }
        ?>
    </select>

    <input type="submit" name="Rechercher">
</form>
