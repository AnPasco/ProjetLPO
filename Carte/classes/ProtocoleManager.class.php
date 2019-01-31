<?php
class ProtocoleManager{
	private $dbo;

	public function __construct($db){
		$this->db=$db;
	}

	public function getProtocole($id){
		$requete = $this->db->prepare('SELECT * FROM protocole JOIN enquetes WHERE en_num = :id');
		$requete->bindValue(':id', $id);
		$requete->execute();

		$retour=new Protocole($requete->fetch(PDO::FETCH_OBJ));

		$requete->closeCursor();
		return $retour;
	}

	public function getAllProtocole(){
		$listeProtocole = array();

		$sql = 'SELECT proto_num, proto_fichier, en_nom, description FROM protocole';
		$requete = $this->db->prepare($sql);
		$requete->execute();

		while ($Protocole = $requete->fetch(PDO::FETCH_OBJ))
			$listeProtocole[] = new Protocole($Protocole);

		$requete->closeCursor();
		return $listeProtocole;
	}
}
?>
