<?php
class CarreManager{
	private $db;

	public function __construct($db){
		$this->db=$db;
	}


   public function addCarre($CarreNumEnquete, $carre_nom){
      $requete = $this->db->prepare(
	      'INSERT INTO carre (en_num, carre_nom) VALUES ( :en_num, :carre_nom);');

      $requete->bindValue(':en_num',$CarreNumEnquete);
		$requete->bindValue(':carre_nom', $carre_nom);

      $retour=$requete->execute();
		return $retour;
  }
}
?>
