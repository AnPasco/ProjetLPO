<?php
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
      <svg version="1.1" id="carte" viewBox="0 0 793.59998 1122.5601" sodipodi:docname="Carte_Lim_mailles-page-001.svg"
       inkscape:version="0.92.3 (2405546, 2018-03-11)">
      <image xlink:href="./images/Carte_Lim_mailles-page-001.svg" id="Carte_Lim_mailles" />

      <?php

         for($i = 0; $i<$length; $i++){
            $debut = $intervales[$i*2];
            $fin =  $intervales[$i*2+1];

            for($colonne = $debut; $colonne <= $fin ; $colonne++){
               ?>
               <a id="carre_<?php echo $i?>- <?php echo $colonne ?>" xlink:href="http://www.google.com" xlink:title="carre_<?php echo $i?>-<?php echo $colonne ?>">
                  <path d="m <?php echo $margin_x + ($colonne * $taille_carre) ?>,<?php echo $margin_y + $i * $taille_carre ?> -0.14864,44.74187 45.03915,0.29728 -0.14864,-45.1878 z" />
               </a>
               <?php
            }
         }
       ?>
    </svg>
 </div>
