<?php

class EnqueteManager
{
    private $db;

    public function __construct($db)
    {
        $this->db = $db;
    }

    public function addEnquete($enquete)
    {
        $requete = $this->db->prepare(
            'INSERT INTO enquetes (en_nom, oi_num, organisateur, proto_num, date_deb, date_fin)
         VALUES (:en_nom, :oi_num, :organisateur, :proto_num, :date_deb, :date_fin);');

        $requete->bindValue(':en_nom', $enquete->getEnqueteNom());
        $requete->bindValue(':oi_num', $enquete->getOiseauNum());
        $requete->bindValue(':organisateur', $enquete->getOrganisateur());
        $requete->bindValue(':proto_num', $enquete->getProtocoleNum());
        $requete->bindValue(':date_deb', $enquete->getDateDebut());
        $requete->bindValue(':date_fin', $enquete->getDateFin());

        $retour = $requete->execute();
        return $retour;
    }

    public function getNumByNom($nom)
    {
        $requete = $this->db->prepare(
            'SELECT en_num FROM enquetes WHERE en_nom = :nom');

        $requete->bindValue(':nom', $nom, PDO::PARAM_STR);

        $requete->execute();
        $enqueteNum = $requete->fetch(PDO::FETCH_ASSOC);

        return $enqueteNum['en_num'];
    }
}

?>
