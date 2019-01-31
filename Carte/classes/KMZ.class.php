<?php
class KMZ {
   private $KMZ_num;
   private $KMZ_fichier;
   private $KMZ_nom;

   public function __construct($valeurs = array()){
      if (!empty($valeurs)){
         $this->affecte($valeurs);
      }
   }

   public function affecte($donnees){
      foreach ($donnees as $attribut => $valeur) {
         switch ($attribut){
            case 'KMZ_num': $this->setKMZNum($valeur); break;
            case 'KMZ_fichier': $this->setKMZFichier($valeur); break;
            case 'KMZ_nom': $this->setKMZNom($valeur); break;
         }
      }
   }

   public function setKMZNum($KMZ_num){
      $this->KMZ_num=$KMZ_num;
   }
   public function getKMZNum(){
      return $this->KMZ_num;
   }
   public function setKMZFichier($KMZ_fichier){
      $this->KMZ_fichier=$KMZ_fichier;
   }
   public function getKMZFichier(){
      return $this->KMZ_fichier;
   }
   public function setKMZNom($KMZ_nom){
      $this->KMZ_nom=$KMZ_nom;
   }
   public function getKMZNom(){
      return $this->KMZ_nom;
   }
}
?>
