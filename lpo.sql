-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 16 jan. 2019 à 16:36
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `lpo`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherent`
--

DROP TABLE IF EXISTS `adherent`;
CREATE TABLE IF NOT EXISTS `adherent` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `ad_num` int(11) NOT NULL AUTO_INCREMENT,
  `ad_nom` varchar(30) NOT NULL,
  `ad_prenom` varchar(30) NOT NULL,
  `ad_tel` char(14) NOT NULL,
  PRIMARY KEY (`ad_num`),
  KEY `adherent_ibfk_1` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=524 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `adherent`
--

INSERT INTO `adherent` (`ID`, `ad_num`, `ad_nom`, `ad_prenom`, `ad_tel`) VALUES
(1, 23, 'Pascaud', 'Antoine', '215487895'),
(2, 523, 'Hanotel', 'Hugo', '215456895'),
(3, 210, 'Tricard', 'Aurélien', '245456895');

-- --------------------------------------------------------

--
-- Structure de la table `carre`
--

DROP TABLE IF EXISTS `carre`;
CREATE TABLE IF NOT EXISTS `carre` (
  `carre_num` int(11) NOT NULL AUTO_INCREMENT,
  `en_num` int(11) NOT NULL,
  `carre_nom` varchar(30) NOT NULL,
  `enqueteur` int(11) DEFAULT NULL,
  `etat` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`carre_num`),
  KEY `carre_num` (`carre_num`),
  KEY `enquete_ibfk_1` (`en_num`),
  KEY `enquete_ibfk_2` (`enqueteur`),
  KEY `enquete_ibfk_3` (`etat`),
  KEY `enquete_ibfk_4` (`carre_nom`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `carte`
--

DROP TABLE IF EXISTS `carte`;
CREATE TABLE IF NOT EXISTS `carte` (
  `carte_img` text NOT NULL,
  `carre_nom` varchar(30) NOT NULL,
  PRIMARY KEY (`carre_nom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `enquetes`
--

DROP TABLE IF EXISTS `enquetes`;
CREATE TABLE IF NOT EXISTS `enquetes` (
  `en_num` int(11) NOT NULL AUTO_INCREMENT,
  `en_nom` varchar(30) NOT NULL,
  `oi_num` int(11) NOT NULL,
  `organisateur` int(11) NOT NULL,
  `proto_num` int(11) NOT NULL,
  `date_deb` date NOT NULL,
  `date_fin` date NOT NULL,
  PRIMARY KEY (`en_num`),
  KEY `en_num` (`en_num`),
  KEY `enquete_ibfk_1` (`oi_num`),
  KEY `enquete_ibfk_2` (`organisateur`),
  KEY `enquete_ibfk_3` (`proto_num`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `enquetes`
--

INSERT INTO `enquetes` (`en_num`, `en_nom`, `oi_num`, `organisateur`, `proto_num`, `date_deb`, `date_fin`) VALUES
(42, 'FIRST TEST', 1, 1, 1, '2019-01-15', '2019-01-15'),
(43, 'FIRST TEST', 1, 1, 1, '2019-01-15', '2019-01-15');

-- --------------------------------------------------------

--
-- Structure de la table `etat`
--

DROP TABLE IF EXISTS `etat`;
CREATE TABLE IF NOT EXISTS `etat` (
  `etat_num` int(11) NOT NULL,
  `description` varchar(30) NOT NULL,
  PRIMARY KEY (`etat_num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `etat`
--

INSERT INTO `etat` (`etat_num`, `description`) VALUES
(1, 'pas réservé'),
(2, 'réservé'),
(3, 'indisponible');

-- --------------------------------------------------------

--
-- Structure de la table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `img_Description` text NOT NULL,
  `img_Nom` text NOT NULL,
  `img_Type` text NOT NULL,
  `img_Num` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`img_Num`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `kmz`
--

DROP TABLE IF EXISTS `kmz`;
CREATE TABLE IF NOT EXISTS `kmz` (
  `carre_nom` varchar(30) NOT NULL,
  `KMZ_fichier` text NOT NULL,
  PRIMARY KEY (`carre_nom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `kmz`
--

INSERT INTO `kmz` (`carre_nom`, `KMZ_fichier`) VALUES
('carre_8-0', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E051N651.kmz'),
('carre_2-1', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E052N657.kmz'),
('carre_6-1', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E052N653.kmz'),
('carre_7-1', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E052N652.kmz'),
('carre_8-1', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E052N651.kmz'),
('carre_9-1', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E052N650.kmz'),
('carre_10-1', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E052N649.kmz'),
('carre_10-2', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E053N649.kmz'),
('carre_9-2', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E053N650.kmz'),
('carre_8-2', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E053N651.kmz'),
('carre_7-2', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E053N652.kmz'),
('carre_6-2', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E053N653.kmz'),
('carre_5-2', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E053N654.kmz'),
('carre_4-2', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E053N655.kmz'),
('carre_3-2', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E053N656.kmz'),
('carre_2-2', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E053N657.kmz'),
('carre_10-3', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E054N649.kmz'),
('carre_9-3', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E054N650.kmz'),
('carre_8-3', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E054N651.kmz'),
('carre_7-3', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E054N652.kmz'),
('carre_6-3', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E054N653.kmz'),
('carre_5-3', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E054N654.kmz'),
('carre_4-3', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E054N655.kmz'),
('carre_3-3', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E054N656.kmz'),
('carre_2-3', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E054N657.kmz'),
('carre_1-3', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E054N658.kmz'),
('carre_11-4', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E055N648.kmz'),
('carre_10-4', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E054N649.kmz'),
('carre_9-4', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E054N650.kmz'),
('carre_8-4', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E054N651.kmz'),
('carre_7-4', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E054N652.kmz'),
('carre_6-4', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E054N653.kmz'),
('carre_5-4', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E054N654.kmz'),
('carre_4-4', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E054N655.kmz'),
('carre_3-4', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E054N656.kmz'),
('carre_2-4', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E054N657.kmz'),
('carre_1-4', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E054N658.kmz'),
('carre_15-5', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E056N644.kmz'),
('carre_14-5', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E056N644.kmz'),
('carre_13-5', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E056N644.kmz'),
('carre_12-5', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E056N644.kmz'),
('carre_11-5', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E056N644.kmz'),
('carre_10-5', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E056N644.kmz'),
('carre_9-5', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E056N644.kmz'),
('carre_8-5', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E056N644.kmz'),
('carre_7-5', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E056N644.kmz'),
('carre_6-5', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E056N644.kmz'),
('carre_5-5', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E056N644.kmz'),
('carre_4-5', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E056N644.kmz'),
('carre_3-5', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E056N644.kmz'),
('carre_2-5', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E056N644.kmz'),
('carre_1-5', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E056N644.kmz'),
('carre_16-6', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E057N643.kmz'),
('carre_15-6', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E057N644.kmz'),
('carre_14-6', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E057N645.kmz'),
('carre_13-6', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E057N646.kmz'),
('carre_12-6', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E057N647.kmz'),
('carre_11-6', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E057N648.kmz'),
('carre_10-6', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E057N649.kmz'),
('carre_9-6', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E057N650.kmz'),
('carre_8-6', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E057N651.kmz'),
('carre_7-6', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E057N652.kmz'),
('carre_6-6', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E057N653.kmz'),
('carre_5-6', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E057N654.kmz'),
('carre_4-6', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E057N655.kmz'),
('carre_3-6', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E057N656.kmz'),
('carre_2-6', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E057N657.kmz'),
('carre_1-6', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E057N658.kmz'),
('carre_0-6', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E057N659.kmz'),
('carre_16-7', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E058N643.kmz'),
('carre_15-7', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E058N644.kmz'),
('carre_14-7', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E058N645.kmz'),
('carre_13-7', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E058N646.kmz'),
('carre_12-7', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E058N647.kmz'),
('carre_11-7', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E058N648.kmz'),
('carre_10-7', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E058N649.kmz'),
('carre_9-7', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E058N650.kmz'),
('carre_8-7', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E058N651.kmz'),
('carre_7-7', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E058N652.kmz'),
('carre_6-7', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E058N653.kmz'),
('carre_5-7', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E058N654.kmz'),
('carre_4-7', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E058N655.kmz'),
('carre_3-7', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E058N656.kmz'),
('carre_2-7', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E058N657.kmz'),
('carre_1-7', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E058N658.kmz'),
('carre_0-7', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E058N659.kmz'),
('carre_16-8', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E059N643.kmz'),
('carre_15-8', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E059N643.kmz'),
('carre_14-8', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E059N643.kmz'),
('carre_13-8', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E059N643.kmz'),
('carre_12-8', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E059N643.kmz'),
('carre_11-8', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E059N643.kmz'),
('carre_10-8', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E059N643.kmz'),
('carre_9-8', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E059N643.kmz'),
('carre_8-8', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E059N643.kmz'),
('carre_7-8', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E059N643.kmz'),
('carre_6-8', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E059N643.kmz'),
('carre_5-8', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E059N643.kmz'),
('carre_4-8', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E059N643.kmz'),
('carre_3-8', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E059N643.kmz'),
('carre_2-8', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E059N643.kmz'),
('carre_1-8', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E059N643.kmz'),
('carre_0-8', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E059N643.kmz'),
('carre_17-9', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E060N642.kmz'),
('carre_16-9', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E060N643.kmz'),
('carre_15-9', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E060N644.kmz'),
('carre_14-9', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E060N645.kmz'),
('carre_13-9', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E060N646.kmz'),
('carre_12-9', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E060N647.kmz'),
('carre_11-9', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E060N648.kmz'),
('carre_10-9', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E060N649.kmz'),
('carre_9-9', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E060N650.kmz'),
('carre_8-9', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E060N651.kmz'),
('carre_7-9', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E060N652.kmz'),
('carre_6-9', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E060N653.kmz'),
('carre_5-9', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E060N654.kmz'),
('carre_4-9', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E060N655.kmz'),
('carre_3-9', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E060N656.kmz'),
('carre_2-9', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E060N657.kmz'),
('carre_1-9', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E060N658.kmz'),
('carre_0-9', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E060N659.kmz'),
('carre_17-10', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E061N642.kmz'),
('carre_16-10', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E061N643.kmz'),
('carre_15-10', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E061N644.kmz'),
('carre_14-10', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E061N645.kmz'),
('carre_13-10', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E061N646.kmz'),
('carre_12-10', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E061N647.kmz'),
('carre_11-10', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E061N648.kmz'),
('carre_10-10', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E061N649.kmz'),
('carre_9-10', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E061N650.kmz'),
('carre_8-10', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E061N651.kmz'),
('carre_7-10', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E061N652.kmz'),
('carre_6-10', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E061N653.kmz'),
('carre_5-10', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E061N654.kmz'),
('carre_4-10', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E061N655.kmz'),
('carre_3-10', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E061N656.kmz'),
('carre_2-10', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E061N657.kmz'),
('carre_1-10', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E061N658.kmz'),
('carre_0-10', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E061N659.kmz'),
('carre_16-11', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E062N643.kmz'),
('carre_15-11', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E062N644.kmz'),
('carre_14-11', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E062N645.kmz'),
('carre_13-11', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E062N646.kmz'),
('carre_12-11', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E062N647.kmz'),
('carre_11-11', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E062N648.kmz'),
('carre_10-11', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E062N649.kmz'),
('carre_9-11', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E062N650.kmz'),
('carre_8-11', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E062N651.kmz'),
('carre_7-11', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E062N652.kmz'),
('carre_6-11', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E062N653.kmz'),
('carre_5-11', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E062N654.kmz'),
('carre_4-11', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E062N655.kmz'),
('carre_3-11', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E062N656.kmz'),
('carre_2-11', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E062N657.kmz'),
('carre_1-11', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E062N658.kmz'),
('carre_0-11', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E062N659.kmz'),
('carre_16-12', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E063N643.kmz'),
('carre_15-12', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E063N644.kmz'),
('carre_14-12', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E063N645.kmz'),
('carre_13-12', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E063N646.kmz'),
('carre_12-12', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E063N647.kmz'),
('carre_11-12', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E063N648.kmz'),
('carre_10-12', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E063N649.kmz'),
('carre_9-12', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E063N650.kmz'),
('carre_8-12', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E063N651.kmz'),
('carre_7-12', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E063N652.kmz'),
('carre_6-12', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E063N653.kmz'),
('carre_5-12', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E063N654.kmz'),
('carre_4-12', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E063N655.kmz'),
('carre_3-12', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E063N656.kmz'),
('carre_2-12', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E063N657.kmz'),
('carre_1-12', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E063N658.kmz'),
('carre_0-12', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E063N659.kmz'),
('carre_13-13', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E064N646.kmz'),
('carre_12-13', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E064N647.kmz'),
('carre_11-13', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E064N648.kmz'),
('carre_10-13', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E064N649.kmz'),
('carre_9-13', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E064N650.kmz'),
('carre_8-13', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E064N651.kmz'),
('carre_7-13', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E064N652.kmz'),
('carre_6-13', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E064N653.kmz'),
('carre_5-13', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E064N654.kmz'),
('carre_4-13', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E064N655.kmz'),
('carre_3-13', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E064N656.kmz'),
('carre_2-13', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E064N657.kmz'),
('carre_1-13', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E064N658.kmz'),
('carre_0-13', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E064N659.kmz'),
('carre_12-14', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E065N647.kmz'),
('carre_11-14', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E065N648.kmz'),
('carre_10-14', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E065N649.kmz'),
('carre_9-14', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E065N650.kmz'),
('carre_8-14', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E065N651.kmz'),
('carre_7-14', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E065N652.kmz'),
('carre_6-14', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E065N653.kmz'),
('carre_5-14', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E065N654.kmz'),
('carre_4-14', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E065N655.kmz'),
('carre_3-14', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E065N656.kmz'),
('carre_2-14', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E065N657.kmz'),
('carre_1-14', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E065N658.kmz'),
('carre_12-15', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E066N647.kmz'),
('carre_11-15', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E066N648.kmz'),
('carre_10-15', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E066N649.kmz'),
('carre_9-15', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E066N650.kmz'),
('carre_8-15', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E066N651.kmz'),
('carre_7-15', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E066N652.kmz'),
('carre_6-15', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E066N653.kmz'),
('carre_5-15', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E066N654.kmz'),
('carre_4-15', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E066N655.kmz'),
('carre_3-15', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E066N656.kmz'),
('carre_2-15', 'C:\\wamp64\\www\\Projet TUT\\FichiersKMZ\\E066N657.kmz');

-- --------------------------------------------------------

--
-- Structure de la table `lpo_commentmeta`
--

DROP TABLE IF EXISTS `lpo_commentmeta`;
CREATE TABLE IF NOT EXISTS `lpo_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `lpo_comments`
--

DROP TABLE IF EXISTS `lpo_comments`;
CREATE TABLE IF NOT EXISTS `lpo_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `lpo_comments`
--

INSERT INTO `lpo_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-11-17 14:08:47', '2018-11-17 13:08:47', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `lpo_links`
--

DROP TABLE IF EXISTS `lpo_links`;
CREATE TABLE IF NOT EXISTS `lpo_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `lpo_options`
--

DROP TABLE IF EXISTS `lpo_options`;
CREATE TABLE IF NOT EXISTS `lpo_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `lpo_options`
--

INSERT INTO `lpo_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://lpo', 'yes'),
(2, 'home', 'http://lpo', 'yes'),
(3, 'blogname', 'LPO', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'aurelien.tricard@etu.unilim.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:75:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'LPO_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '1', 'yes'),
(96, 'WPLANG', 'fr_FR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:4:{i:1547050128;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1547082528;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1547125754;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(174, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:31:\"aurelien.tricard@etu.unilim.com\";s:7:\"version\";s:5:\"4.9.9\";s:9:\"timestamp\";i:1545919045;}', 'no'),
(177, '_site_transient_timeout_theme_roots', '1547049777', 'no'),
(178, '_site_transient_theme_roots', 'a:3:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(179, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1547047980;s:7:\"checked\";a:3:{s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.2.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.9.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.7.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(180, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1547047981;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(173, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.0.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.0.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.2\";s:7:\"version\";s:5:\"5.0.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.2\";s:7:\"version\";s:5:\"5.0.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.0.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.0.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.2\";s:7:\"version\";s:5:\"5.0.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1547047975;s:15:\"version_checked\";s:5:\"4.9.9\";s:12:\"translations\";a:0:{}}', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(149, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `lpo_postmeta`
--

DROP TABLE IF EXISTS `lpo_postmeta`;
CREATE TABLE IF NOT EXISTS `lpo_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `lpo_postmeta`
--

INSERT INTO `lpo_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default');

-- --------------------------------------------------------

--
-- Structure de la table `lpo_posts`
--

DROP TABLE IF EXISTS `lpo_posts`;
CREATE TABLE IF NOT EXISTS `lpo_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `lpo_posts`
--

INSERT INTO `lpo_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-11-17 14:08:47', '2018-11-17 13:08:47', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2018-11-17 14:08:47', '2018-11-17 13:08:47', '', 0, 'http://lpo/?p=1', 0, 'post', '', 1),
(2, 1, '2018-11-17 14:08:47', '2018-11-17 13:08:47', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://lpo/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2018-11-17 14:08:47', '2018-11-17 13:08:47', '', 0, 'http://lpo/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-11-17 14:08:47', '2018-11-17 13:08:47', '<h2>Qui sommes-nous ?</h2><p>L’adresse de notre site Web est : http://lpo.</p><h2>Utilisation des données personnelles collectées</h2><h3>Commentaires</h3><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><h3>Médias</h3><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><h3>Formulaires de contact</h3><h3>Cookies</h3><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><p>Si vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><h3>Contenu embarqué depuis d’autres sites</h3><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><h3>Statistiques et mesures d’audience</h3><h2>Utilisation et transmission de vos données personnelles</h2><h2>Durées de stockage de vos données</h2><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><h2>Les droits que vous avez sur vos données</h2><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><h2>Transmission de vos données personnelles</h2><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><h2>Informations de contact</h2><h2>Informations supplémentaires</h2><h3>Comment nous protégeons vos données</h3><h3>Procédures mises en œuvre en cas de fuite de données</h3><h3>Les services tiers qui nous transmettent des données</h3><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3>', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2018-11-17 14:08:47', '2018-11-17 13:08:47', '', 0, 'http://lpo/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-11-17 14:09:15', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-17 14:09:15', '0000-00-00 00:00:00', '', 0, 'http://lpo/?p=4', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `lpo_termmeta`
--

DROP TABLE IF EXISTS `lpo_termmeta`;
CREATE TABLE IF NOT EXISTS `lpo_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `lpo_terms`
--

DROP TABLE IF EXISTS `lpo_terms`;
CREATE TABLE IF NOT EXISTS `lpo_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `lpo_terms`
--

INSERT INTO `lpo_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0);

-- --------------------------------------------------------

--
-- Structure de la table `lpo_term_relationships`
--

DROP TABLE IF EXISTS `lpo_term_relationships`;
CREATE TABLE IF NOT EXISTS `lpo_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `lpo_term_relationships`
--

INSERT INTO `lpo_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `lpo_term_taxonomy`
--

DROP TABLE IF EXISTS `lpo_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `lpo_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `lpo_term_taxonomy`
--

INSERT INTO `lpo_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `lpo_usermeta`
--

DROP TABLE IF EXISTS `lpo_usermeta`;
CREATE TABLE IF NOT EXISTS `lpo_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `lpo_usermeta`
--

INSERT INTO `lpo_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Aurelien'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'LPO_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'LPO_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"37bd3e08d356b10ca9fec8e47f14269be6ae2654995817b48c3ac156cc2f3bc2\";a:4:{s:10:\"expiration\";i:1543669754;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0\";s:5:\"login\";i:1542460154;}}'),
(17, 1, 'LPO_dashboard_quick_press_last_post_id', '4');

-- --------------------------------------------------------

--
-- Structure de la table `lpo_users`
--

DROP TABLE IF EXISTS `lpo_users`;
CREATE TABLE IF NOT EXISTS `lpo_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `lpo_users`
--

INSERT INTO `lpo_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Aurelien', '$P$BMf5v4FsW8E2e7lWVJCeF5OpL/onyD.', 'aurelien', 'aurelien.tricard@etu.unilim.com', '', '2018-11-17 13:08:47', '', 0, 'Aurelien');

-- --------------------------------------------------------

--
-- Structure de la table `oiseau`
--

DROP TABLE IF EXISTS `oiseau`;
CREATE TABLE IF NOT EXISTS `oiseau` (
  `oi_num` int(11) NOT NULL AUTO_INCREMENT,
  `esp_nom` varchar(50) NOT NULL,
  `esp_nomBinominal` varchar(50) NOT NULL,
  `famille_nom` varchar(100) NOT NULL,
  `famille_nomBinominal` varchar(100) NOT NULL,
  PRIMARY KEY (`oi_num`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `oiseau`
--

INSERT INTO `oiseau` (`oi_num`, `esp_nom`, `esp_nomBinominal`, `famille_nom`, `famille_nomBinominal`) VALUES
(1, 'Aigle', 'Aquila', 'Rapace', 'Rapacea'),
(2, 'Aigle Royale', 'Aquila Royaleo', 'Rapace', 'Rapacea'),
(3, 'Pie Vert', 'Pier', 'Petit oiseau', 'Petito oiseal');

-- --------------------------------------------------------

--
-- Structure de la table `protocole`
--

DROP TABLE IF EXISTS `protocole`;
CREATE TABLE IF NOT EXISTS `protocole` (
  `proto_num` int(11) NOT NULL AUTO_INCREMENT,
  `proto_fichier` text NOT NULL,
  `en_nom` varchar(30) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`proto_num`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
