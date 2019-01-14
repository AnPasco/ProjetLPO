<?php
class Carre {
   private $carre_num;
   private $en_num;
   private $carte_num;
   private $enqueteur;
   private $etat_num;
   private $KMZ_num;

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
            case 'carte_num': $this->setCarteNum($valeur); break;
            case 'enqueteur': $this->setEnqueteur($valeur); break;
            case 'etat_num': $this->setCarreEtat($valeur); break;
            case 'KMZ_num': $this->setKMZNum($valeur); break;
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

   public function setEnqueteNum($en_num){
		$this->en_num=$en_num;
	}

   public function getEnqueteNum(){
		return $this->en_num;
	}

   public function setCarteNum($carte_num){
		$this->carte_num=$carte_num;
	}

   public function getCarteNum(){
		return $this->carte_num;
	}

   public function setEnqueteur($enqueteur){
		$this->enqueteur=$enqueteur;
	}

   public function getEnqueteur(){
		return $this->enqueteur;
	}

   public function setKMZNum($KMZ_num){
		$this->KMZ_num=$KMZ_num;
	}

   public function getKMZNum(){
		return $this->KMZ_num;
	}
}
?>
