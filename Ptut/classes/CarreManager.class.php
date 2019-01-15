<?php
class CarreManager{
	private $dbo;

	public function __construct($db){
		$this->db=$db;
	}

   public function addCarre($CarreNumEnquete){
      $requete = $this->db->prepare(
	      'INSERT INTO carre (en_num, carte_num, enqueteur, etat, KMZ_num)
         VALUES ( :en_num, :carte_num, :enqueteur, :etat, :KMZ_num);');

      $requete->bindValue(':en_num',$CarreNumEnquete);
		$requete->bindValue(':carte_num', '2');
		$requete->bindValue(':enqueteur', '2');
		$requete->bindValue(':etat', '2');
		$requete->bindValue(':KMZ_num', '2');

      $retour=$requete->execute();
		return $retour;
  }
}
?>
