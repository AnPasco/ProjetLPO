<?php
class OiseauManager{
	private $dbo;

	public function __construct($db){
		$this->db=$db;
	}

	public function getAllOiseaux(){
		$listeOiseau = array();

		$sql = 'SELECT oi_num, esp_nom, esp_nomBinominal, famille_nom, famille_nomBinominal FROM oiseau';
		$requete = $this->db->prepare($sql);
		$requete->execute();

		while ($Oiseau = $requete->fetch(PDO::FETCH_OBJ))
			$listeOiseau[] = new Oiseau($Oiseau);

		$requete->closeCursor();
		return $listeOiseau;
	}
}
?>
