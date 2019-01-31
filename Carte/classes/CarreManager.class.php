<?php
class CarreManager{
  private $dbo;
  public function __construct($db){
    $this->db=$db;
  }
  public function updateCarre($idAdherent,$en_num,$carre_nom){
    $requete = $this->db->prepare(
      'UPDATE carre SET enqueteur = :idAdherent WHERE en_num= :en_num AND carre_nom = :carre_nom;');
    $requete->bindValue(':idAdherent',$idAdherent);
    $requete->bindValue(':en_num',$en_num);
    $requete->bindValue(':carre_nom',$carre_nom);
    $retour=$requete->execute();
    return $retour;
    $requete->closeCursor();
  }

  public function getCarre($id){
    $requete = $this->db->prepare('SELECT * FROM carre WHERE carre_nom = :id');
    
    $requete->bindValue(':id', $id);

    $requete->execute();
    $retour=new Carre($requete->fetch(PDO::FETCH_OBJ));
    $requete->closeCursor();
    
    return $retour;
  }

  public function getAllCarre($id){
    $listeCarre = array();
    $requete = $this->db->prepare('SELECT * FROM carre WHERE en_num = :id');
    
    $requete->bindValue(':id', $id);

    $requete->execute();
    while ($carre = $requete->fetch(PDO::FETCH_OBJ))
      $listeCarre[] = new Carre($carre);
    $requete->closeCursor();
    
    return $listeCarre;
  }

}?>
