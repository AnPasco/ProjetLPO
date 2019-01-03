<?php
class AdherentManager{
	private $dbo;

	public function __construct($db){
		$this->db=$db;
	}

	public function getAllAdherent(){
	     $listeAdherent = array();

			$sql = 'SELECT id, ad_num, ad_nom, ad_prenom, ad_tel FROM adherent';
			$requete = $this->db->prepare($sql);
			$requete->execute();

         while ($Adherent = $requete->fetch(PDO::FETCH_OBJ))
						$listeAdherent[] = new Adherent($Adherent);

			$requete->closeCursor();
			return $listeAdherent;
		}
}
?>
