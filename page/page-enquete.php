<?php
/*
Template name: Enquete
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly.
}

get_header(); ?>

<?php
require_once("functions.inc.php");
require_once("config.inc.php");
require_once("header.inc.php");

?>
<div id="corps">
	<?php
	require_once("RechercherEnquete.php");
	?>
</div>


<div id="spacer"></div>
<?php

require_once("footer.inc.php"); ?>
