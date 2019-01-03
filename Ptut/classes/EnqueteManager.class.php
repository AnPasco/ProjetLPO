<?php
class EnqueteManager{
	private $dbo;

	public function __construct($db){
		$this->db=$db;
	}

   public function addEnquete($Enquete){
      $requete = $this->db->prepare(
	      'INSERT INTO enquetes (en_nom, oi_num, organisateur, proto_num, date_deb, date_fin)
         VALUES (:en_nom, :oi_num, :organisateur, :proto_num, :date_deb, :date_fin);');

      $requete->bindValue(':en_nom',$Enquete->getEnqueteNom());
      $requete->bindValue(':oi_num',$Enquete->getOiseauNum());
      $requete->bindValue(':organisateur',$Enquete->getOrganisateur());
      $requete->bindValue(':proto_num',$Enquete->getProtocoleNum());
      $requete->bindValue(':date_deb',$Enquete->getDateDebut());
      $requete->bindValue(':date_fin',$Enquete->getDateFin());

      $retour=$requete->execute();
		return $retour;
  }
}
?>
