<?php

class EnqueteManager
{
    private $dbo;

    public function __construct($db)
    {
        $this->dbo = $db;
    }

    public function addEnquete($Enquete)
    {
        $requete = $this->dbo->prepare(
            'INSERT INTO enquetes (en_nom, oi_num, organisateur, proto_num, date_deb, date_fin)
            VALUES (:en_nom, :oi_num, :organisateur, :proto_num, :date_deb, :date_fin);');

        $requete->bindValue(':en_nom', $Enquete->getEnqueteNom());
        $requete->bindValue(':oi_num', $Enquete->getOiseauNum());
        $requete->bindValue(':organisateur', $Enquete->getOrganisateur());
        $requete->bindValue(':proto_num', $Enquete->getProtocoleNum());
        $requete->bindValue(':date_deb', $Enquete->getDateDebut());
        $requete->bindValue(':date_fin', $Enquete->getDateFin());

        $retour = $requete->execute();
        return $retour;
    }

    public function getEnquete($id){
      $requete = $this->dbo->prepare('SELECT * FROM enquetes WHERE en_num = :id');

      $requete->bindValue(':id', $id);

      $requete->execute();
      $retour=new Enquete($requete->fetch(PDO::FETCH_OBJ));
      $requete->closeCursor();

      return $retour;
    }

    public function getAllEnquete()
    {
        $listeEnquete = array();

        $sql = 'SELECT * FROM enquetes';
        $request = $this->dbo->prepare($sql);
        $request->execute();

        while ($enquete = $request->fetch(PDO::FETCH_OBJ))
            $listeEnquete[] = new Enquete($enquete);

        $request->closeCursor();
        return $listeEnquete;
    }
}

?>
