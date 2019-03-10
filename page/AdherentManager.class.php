<?php
class AdherentManager{
	private $dbo;

	public function __construct($db){
		$this->db=$db;
	}

	public function getAllAdherent(){
		$listeAdherent = array();

		$sql = 'SELECT * FROM adherent';
		$requete = $this->db->prepare($sql);
		$requete->execute();

		while ($Adherent = $requete->fetch(PDO::FETCH_OBJ))
			$listeAdherent[] = new Adherent($Adherent);

		$requete->closeCursor();
		return $listeAdherent;
	}

	public function getMail($id){
		$sql = 'SELECT user_email FROM `lpo_users` JOIN adherent where ad_num=:id';
		$requete = $this->db->prepare($sql);
		$requete->bindValue(':id', $id);
		$requete->execute();

		$user_mail = $requete->fetch(PDO::FETCH_OBJ)->user_email;

		$requete->closeCursor();
		return $user_mail;
	}

	public function getAdherent($id){

		$sql = 'SELECT * FROM adherent JOIN carre where en_num =:id';
		$requete = $this->db->prepare($sql);
		$requete->bindValue(':id', $id);
		$requete->execute();

		$Adherent = new Adherent($requete->fetch(PDO::FETCH_OBJ));

		$requete->closeCursor();
		return $Adherent;
	}
}
?>
