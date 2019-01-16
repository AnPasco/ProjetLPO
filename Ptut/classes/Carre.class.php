<?php
class Carre {
   private $carre_num;
   private $en_num;
   private $carre_nom;
   private $enqueteur;
   private $etat_num;

   public function __construct($valeurs = array()){
		if (!empty($valeurs)){
			$this->affecte($valeurs);
		}
	}

   public function affecte($donnees){
      foreach ($donnees as $attribut => $valeur) {
         switch ($attribut){
            case 'carre_num': $this->setCarreNum($valeur); break;
            case 'en_num': $this->setEnqueteNum($valeur); break;
            case 'carre_nom': $this->setCarreNom($valeur); break;
            case 'enqueteur': $this->setEnqueteur($valeur); break;
            case 'etat_num': $this->setCarreEtat($valeur); break;
         }
      }
   }

   public function setCarreNum($carre_num){
		$this->carre_num=$carre_num;
	}

   public function getCarreNum(){
		return $this->carre_num;
	}

   public function setCarreEtat($etat_num){
		$this->etat_num=$etat_num;
	}

   public function getCarreEtat(){
		return $this->etat_num;
	}

   public function setCarreNom($carre_nom){
      $this->carre_nom=$carre_nom;
   }

   public function getCarreNom(){
      return $this->carre_nom;
   }

   public function setEnqueteNum($en_num){
		$this->en_num=$en_num;
	}

   public function getEnqueteNum(){
		return $this->en_num;
	}

   public function setEnqueteur($enqueteur){
		$this->enqueteur=$enqueteur;
	}

   public function getEnqueteur(){
		return $this->enqueteur;
	}
}
?>
