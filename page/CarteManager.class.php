<?php
class CarteManager{
  private $dbo;
  public function __construct($db){
    $this->db=$db;
  }

  public function getCarte($id){
    $requete = $this->db->prepare('SELECT * FROM carte WHERE carre_nom = :id');

    $requete->bindValue(':id', $id);

    $requete->execute();
    $retour=new Carte($requete->fetch(PDO::FETCH_OBJ));
    $requete->closeCursor();

    return $retour;
  }
}
