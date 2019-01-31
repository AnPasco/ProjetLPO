<?php
class KMZManager{
  private $dbo;
  public function __construct($db){
    $this->db=$db;
  }

  public function getKMZ($id){
    $requete = $this->db->prepare('SELECT * FROM KMZ WHERE carre_nom = :id');

    $requete->bindValue(':id', $id);

    $requete->execute();
    $retour=new KMZ($requete->fetch(PDO::FETCH_OBJ));
    $requete->closeCursor();

    return $retour;
  }
}
