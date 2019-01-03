<?php
class Adherent {
   private $id;
   private $ad_num;
   private $ad_nom;
   private $ad_prenom;
   private $ad_tel;

   public function __construct($valeurs = array()){
		if (!empty($valeurs)){
			$this->affecte($valeurs);
		}
	}

   public function affecte($donnees){
      foreach ($donnees as $attribut => $valeur) {
         switch ($attribut){
            case 'id': $this->setIdPersonne($valeur); break;
            case 'ad_num': $this->setNumeroAdherent($valeur); break;
            case 'ad_nom': $this->setNomAdherent($valeur); break;
            case 'ad_prenom': $this->setPrenomAdherent($valeur); break;
            case 'ad_tel': $this->setTelephoneAdherent($valeur); break;
         }
      }
   }

   public function setIdPersonne($id){
		$this->id=$id;
	}

   public function getIdPersonne(){
		return $this->id;
	}

   public function setNumeroAdherent($ad_num){
		$this->ad_num=$ad_num;
	}

   public function getNumeroAdherent(){
		return $this->ad_num;
	}

   public function setNomAdherent($ad_nom){
      $this->ad_nom=$ad_nom;
   }

   public function getNomAdherent(){
      return $this->ad_nom;
   }

   public function setPrenomAdherent($ad_prenom){
      $this->ad_prenom=$ad_prenom;
   }

   public function getPrenomAdherent(){
      return $this->ad_prenom;
   }

   public function setTelephoneAdherent($ad_tel){
      $this->ad_tel=$ad_tel;
   }

   public function getTelephoneAdherent(){
      return $this->ad_tel;
   }
}
?>
