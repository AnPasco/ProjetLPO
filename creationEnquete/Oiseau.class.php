<?php

class Oiseau
{
    private $oi_num;
    private $esp_nom;
    private $esp_nomBinominal;
    private $famille_nom;
    private $famille_nomBinominal;

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
                case 'oi_num':
                    $this->setOiseauNum($valeur);
                    break;
                case 'esp_nom':
                    $this->setEspeceNom($valeur);
                    break;
                case 'esp_nomBinominal':
                    $this->setEspeceNomBinominal($valeur);
                    break;
                case 'famille_nom':
                    $this->setFamilleNom($valeur);
                    break;
                case 'famille_nomBinominal':
                    $this->setFamilleNomBinominal($valeur);
                    break;
            }
        }
    }

    public function setOiseauNum($oi_num)
    {
        $this->oi_num = $oi_num;
    }

    public function getOiseauNum()
    {
        return $this->oi_num;
    }

    public function setEspeceNom($esp_nom)
    {
        $this->esp_nom = $esp_nom;
    }

    public function getEspeceNom()
    {
        return $this->esp_nom;
    }

    public function setEspeceNomBinominal($esp_nomBinominal)
    {
        $this->esp_nomBinominal = $esp_nomBinominal;
    }

    public function getEspeceNomBinominal()
    {
        return $this->esp_nomBinominal;
    }

    public function setFamilleNom($famille_nom)
    {
        $this->famille_nom = $famille_nom;
    }

    public function getFamilleNom()
    {
        return $this->famille_nom;
    }

    public function setFamilleNomBinominal($famille_nomBinominal)
    {
        $this->famille_nomBinominal = $famille_nomBinominal;
    }

    public function getFamilleNomBinominal()
    {
        return $this->famille_nomBinominal;
    }
}

?>
