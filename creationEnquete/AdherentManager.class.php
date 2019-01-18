<?php

class AdherentManager
{
    private $db;

    public function __construct($db)
    {
        $this->db = $db;
    }

    public function getAllAdherent()
    {
        $listeAdherent = array();

        $sql = 'SELECT id, ad_num, ad_nom, ad_prenom, ad_tel FROM adherent';
        $requete = $this->db->prepare($sql);
        $requete->execute();

        while ($adherent = $requete->fetch(PDO::FETCH_OBJ))
            $listeAdherent[] = new Adherent($adherent);

        $requete->closeCursor();
        return $listeAdherent;
    }
}

?>
