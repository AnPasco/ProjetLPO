<?php
class Protocole {
   private $proto_num;
   private $proto_fichier;
   private $en_nom;
   private $description;

   public function __construct($valeurs = array()){
		if (!empty($valeurs)){
			$this->affecte($valeurs);
		}
	}

   public function affecte($donnees){
      foreach ($donnees as $attribut => $valeur) {
         switch ($attribut){
            case 'proto_num': $this->setNumeroProtocole($valeur); break;
            case 'proto_fichier': $this->setFichierProtocole($valeur); break;
            case 'en_nom': $this->setEnqueteNom($valeur); break;
            case 'description': $this->setDescription($valeur); break;
         }
      }
   }

   public function setNumeroProtocole($proto_num){
		$this->proto_num=$proto_num;
	}

   public function getNumeroProtocole(){
		return $this->proto_num;
	}

   public function setFichierProtocole($proto_fichier){
		$this->proto_fichier=$proto_fichier;
	}

   public function getFichierProtocole(){
		return $this->proto_fichier;
	}

   public function setEnqueteNom($en_nom){
      $this->en_nom=$en_nom;
   }

   public function getEnqueteNom(){
      return $this->en_nom;
   }

   public function setDescription($description){
      $this->description=$description;
   }

   public function getDescription(){
      return $this->description;
   }
}
?>
