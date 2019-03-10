<?php
class Carte {
   private $carte_img;
   private $carre_nom;

   public function __construct($valeurs = array()){
      if (!empty($valeurs)){
         $this->affecte($valeurs);
      }
   }

   public function affecte($donnees){
      foreach ($donnees as $attribut => $valeur) {
         switch ($attribut){
            case 'carte_img': $this->setCarteImg($valeur); break;
            case 'carre_nom': $this->setCarreNom($valeur); break;
         }
      }
   }

   public function setCarteImg($carte_img){
      $this->carte_img=$carte_img;
   }
   public function getCarteImg(){
      return $this->carte_img;
   }

   public function setCarreNom($carre_nom){
      $this->carte_nom=$carre_nom;
   }
   public function getCarreNom(){
      return $this->carre_nom;
   }
}
?>
