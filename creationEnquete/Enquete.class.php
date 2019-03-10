<?php

class Enquete
{
    private $en_num;
    private $en_nom;
    private $oi_num;
    private $organisateur;
    private $proto_num;
    private $date_deb;
    private $date_fin;

    public function __construct($valeurs = array())
    {
        if (!empty($valeurs)) {
            $this->affecte($valeurs);
        }
    }

    public function affecte($donnees)
    {
        foreach ($donnees as $attribut => $valeur) {
            switch ($attribut) {
                case 'en_num':
                    $this->setEnqueteNum($valeur);
                    break;
                case 'en_nom':
                    $this->setEnqueteNom($valeur);
                    break;
                case 'oi_num':
                    $this->setOiseauNum($valeur);
                    break;
                case 'organisateur':
                    $this->setOrganisateur($valeur);
                    break;
                case 'proto_num':
                    $this->setProtocoleNum($valeur);
                    break;
                case 'date_deb':
                    $this->setDateDebut($valeur);
                    break;
                case 'date_fin':
                    $this->setDateFin($valeur);
                    break;
            }
        }
    }

    public function setEnqueteNum($en_num)
    {
        $this->en_num = $en_num;
    }

    public function getEnqueteNum()
    {
        return $this->en_num;
    }

    public function setEnqueteNom($en_nom)
    {
        $this->en_nom = $en_nom;
    }

    public function getEnqueteNom()
    {
        return $this->en_nom;
    }

    public function setOiseauNum($oi_num)
    {
        $this->oi_num = $oi_num;
    }

    public function getOiseauNum()
    {
        return $this->oi_num;
    }

    public function setOrganisateur($organisateur)
    {
        $this->organisateur = $organisateur;
    }

    public function getOrganisateur()
    {
        return $this->organisateur;
    }

    public function setProtocoleNum($proto_num)
    {
        $this->proto_num = $proto_num;
    }

    public function getProtocoleNum()
    {
        return $this->proto_num;
    }

    public function setDateDebut($date_deb)
    {
        $this->date_deb = $date_deb;
    }

    public function getDateDebut()
    {
        return $this->date_deb;
    }

    public function setDateFin($date_fin)
    {
        $this->date_fin = $date_fin;
    }

    public function getDateFin()
    {
        return $this->date_fin;
    }
}

?>
