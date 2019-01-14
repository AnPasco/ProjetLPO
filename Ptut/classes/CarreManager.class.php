<?php
class CarreManager{
	private $dbo;

	public function __construct($db){
		$this->db=$db;
	}

   public function addCarre($Carre){
      $requete = $this->db->prepare(
	      'INSERT INTO carre (carre_num, etat)
         VALUES (:car_num, :car_etat,);');

      $requete->bindValue(':car_num',$Carre->getCarreNum());
      $requete->bindValue(':car_etat',$Carre->getCarreEtat());

      $retour=$requete->execute();
		return $retour;
  }
}
?>
