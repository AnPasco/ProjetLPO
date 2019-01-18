<?php

require('../include/config.inc.php');
require('../include/autoLoad.inc.php');

if(!isset($_SESSION)){
  session_start();
}

$db = new MyPDO();
$carreManager = new CarreManager($db);
$enqueteManager = new EnqueteManager($db);

$carreNumEnquete = $enqueteManager->getNumByNom($_SESSION['en_nom']);

foreach ($_POST['lesId'] as $carre) {
   $carreManager->addCarre($carreNumEnquete,$carre);
}

var_dump($_POST['lesId']);

?>
