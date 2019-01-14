<?php
class Carre {
   private $car_num;
   private $car_etat;

   public function __construct($valeurs = array()){
		if (!empty($valeurs)){
			$this->affecte($valeurs);
		}
	}

   public function affecte($donnees){
      foreach ($donnees as $attribut => $valeur) {
         switch ($attribut){
            case 'car_num': $this->setCarreNum($valeur); break;
            case 'car_etat': $this->setCarreEtat($valeur); break;
         }
      }
   }

   public function setCarreNum($car_num){
		$this->car_num=$car_num;
	}

   public function getCarreNum(){
		return $this->car_num;
	}

   public function setCarreEtat($car_etat){
		$this->car_etat=$car_etat;
	}

   public function getCarreEtat(){
		return $this->en_nom;
	}

}
?>
