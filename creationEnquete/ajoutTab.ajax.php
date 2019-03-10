<?php


//require('../include/autoLoad.inc.php');

	require_once( dirname(__FILE__). '\config.inc.php');
  require_once( dirname(__FILE__). '\Carre.class.php');
  require_once( dirname(__FILE__). '\CarreManager.class.php');
  require_once( dirname(__FILE__). '\Enquete.class.php');
  require_once( dirname(__FILE__). '\EnqueteManager.class.php');
  require_once( dirname(__FILE__). '\Mypdo.class.php');

$db = new MyPDO();
$carreManager = new CarreManager($db);
$enqueteManager = new EnqueteManager($db);

$carreNumEnquete = $enqueteManager->getNumByNom($_SESSION['en_nom']);

foreach ($_POST['lesId'] as $carre) {
   $carreManager->addCarre($carreNumEnquete,$carre);
}

echo "test";
//var_dump($_POST['lesId']);

?>
