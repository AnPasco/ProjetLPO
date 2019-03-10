<?php

class ProtocoleManager
{
    private $db;

    public function __construct($db)
    {
        $this->db = $db;
    }

    public function getAllProtocole()
    {
        $listeProtocole = array();

        $sql = 'SELECT proto_num, proto_fichier, en_nom, description FROM protocole';
        $requete = $this->db->prepare($sql);
        $requete->execute();

        while ($protocole = $requete->fetch(PDO::FETCH_OBJ))
            $listeProtocole[] = new Protocole($protocole);

        $requete->closeCursor();
        return $listeProtocole;
    }
}

?>
