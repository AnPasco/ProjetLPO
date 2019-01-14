-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 14 jan. 2019 à 16:07
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
  KEY `enquete_ibfk_3` (`etat`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `carte`
--

DROP TABLE IF EXISTS `carte`;
CREATE TABLE IF NOT EXISTS `carte` (
  `carte_img` text NOT NULL,
  `carre_nom` varchar(30) NOT NULL
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
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `enquetes`
--

INSERT INTO `enquetes` (`en_num`, `en_nom`, `oi_num`, `organisateur`, `proto_num`, `date_deb`, `date_fin`) VALUES
(1, 'AiglesTMTC', 1, 1, 1, '2019-01-03', '2109-03-03'),
(3, 'AiglesTMTC2', 1, 1, 1, '2019-01-03', '2020-02-05'),
(4, 'PieVertLESANG', 3, 2, 2, '2019-01-03', '2024-12-02'),
(5, 'Pigeon Enquete', 2, 3, 2, '2019-01-11', '2019-01-18'),
(6, 'Pigeon Enquete', 2, 3, 2, '2019-01-11', '2019-01-18'),
(7, 'Enquete aigle', 1, 1, 1, '2019-01-10', '2019-01-27'),
(8, 'Enquete aigle', 1, 2, 1, '2019-01-10', '2019-01-12'),
(9, 'AiglesTMTC', 1, 2, 1, '2019-01-10', '2019-01-12'),
(10, 'Enquete aigle', 1, 1, 1, '2019-01-10', '2019-01-18'),
(11, 'eigle', 1, 1, 1, '2019-01-14', '2019-12-12'),
(12, 'eigle', 1, 1, 1, '2019-01-14', '2019-12-12'),
(13, 'eigle', 1, 1, 1, '2019-01-14', '2019-12-12'),
(14, 'eigle', 1, 1, 1, '2019-01-14', '2019-12-12'),
(15, 'eigle', 1, 1, 1, '2019-01-14', '2019-12-12'),
(16, 'Enquete aigle', 1, 1, 1, '2019-01-14', '1221-11-15'),
(17, 'a', 1, 1, 1, '2019-01-14', '2525-12-11'),
(18, 'test', 1, 1, 1, '2019-01-14', '1515-12-12'),
(19, '788', 1, 1, 1, '2019-01-14', '7878-09-08'),
(20, 'tre', 1, 1, 1, '2019-01-14', '1515-05-04'),
(21, 'azz', 1, 1, 1, '2019-01-14', '2626-12-15'),
(22, 'az', 1, 1, 1, '2019-01-14', '1212-12-12'),
(23, 'ok', 1, 1, 1, '2019-01-14', '1212-12-15'),
(24, 'hvrjfi', 1, 1, 1, '2019-01-14', '1221-12-15'),
(25, '\"\'', 1, 1, 1, '2019-01-14', '2019-01-03'),
(26, 'dc', 1, 1, 1, '2019-01-14', '2019-01-03'),
(27, 'e\"z', 1, 1, 1, '2019-01-14', '2019-01-26'),
(28, 'AiglesTMTC', 1, 1, 1, '2019-01-14', '2019-01-12'),
(29, 'AigleTMTC', 1, 1, 1, '2019-01-14', '2019-01-12'),
(30, 'az', 1, 1, 1, '2019-01-14', '2019-01-31'),
(31, 'toto', 2, 2, 1, '2019-01-14', '2019-01-19'),
(32, 'AiglesTMTC', 1, 1, 1, '2019-01-14', '2019-01-10'),
(33, 'rerfeefff', 1, 1, 1, '2019-01-14', '2019-01-10'),
(34, 'juiffff', 1, 1, 1, '2019-01-14', '2019-01-18'),
(35, 'uio', 1, 1, 1, '2019-01-14', '2019-01-31'),
(36, 'koijhugyf', 1, 1, 1, '2019-01-14', '2019-01-31'),
(37, 'frezsdwx', 1, 1, 1, '2019-01-14', '2019-01-17'),
(38, 'vfghbjn', 1, 1, 1, '2019-01-14', '2019-01-30'),
(39, 'grfyhijds', 1, 1, 1, '2019-01-14', '2019-01-31'),
(40, 'PUTE', 1, 1, 1, '2019-01-14', '2019-01-29'),
(41, 'Enquete', 1, 1, 1, '2019-01-14', '2019-01-17');

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

--
-- Déchargement des données de la table `gallery`
--

INSERT INTO `gallery` (`img_Description`, `img_Nom`, `img_Type`, `img_Num`) VALUES
('une carte', '465-2075', 'jpg', 1),
('une carte', '465-2075', 'jpg', 2),
('une carte', '465-2075', 'jpg', 3),
('une carte', '465-2085', 'jpg', 4);

-- --------------------------------------------------------

--
-- Structure de la table `kmz`
--

DROP TABLE IF EXISTS `kmz`;
CREATE TABLE IF NOT EXISTS `kmz` (
  `carre_nom` varchar(30) NOT NULL,
  `KMZ_fichier` mediumblob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  `proto_fichier` mediumblob NOT NULL,
  `en_nom` varchar(30) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`proto_num`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `protocole`
--

INSERT INTO `protocole` (`proto_num`, `proto_fichier`, `en_nom`, `description`) VALUES
(1, 0x504b030414000600080000002100dfa4d26c5a01000020050000130008025b436f6e74656e745f54797065735d2e786d6c20a2040228a000020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b494cb6ec2301045f795fa0f91b75562e8a2aa2a028b3e962d52e907187b0256fd92c7bcfebe1302515501910a6c222533f7de3356c683d1da9a6c0911b57725eb173d9681935e69372bd9d7e42d7f641926e19430de41c936806c34bcbd194c36013023b5c392cd530a4f9ca39c831558f8008e2a958f56247a8d331e84fc1633e0f7bdde0397de2570294fb5071b0e5ea0120b93b2d7357d6e48221864d973d35867954c8460b41489ea7ce9d49f947c97509072db83731df08e1a183f9850578e07ec741f7434512bc8c622a67761a98baf7c545c79b9b0a42c4edb1ce0f455a525b4fada2d442f0191cedc9aa2ad58a1dd9eff2807a68d01bc3c45e3db1d0f2991e01a003be74e84154c3faf46f1cbbc13a4a2dc89981ab83c466bdd09916803a179f6cfe6d8da9c8aa4ce71f40169a3e33fc6deaf6cadce69e00031e9d37f5d9b48d667cf07f56da0401dc8e6dbfb6df8030000ffff0300504b0304140006000800000021001e911ab7ef0000004e0200000b0008025f72656c732f2e72656c7320a2040228a000020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac92c16ac3300c40ef83fd83d1bd51dac118a34e2f63d0db18d907085b494c13dbd86ad7fefd3cd8d8025de96147cbd2d393d07a739c4675e0945df01a96550d8abd09d6f95ec35bfbbc78009585bca53178d670e20c9be6f666fdca234929ca838b59158acf1a0691f88898cdc013e52a44f6e5a70b692229cfd46324b3a39e7155d7f7987e33a09931d5d66a485b7b07aa3d45be861dbace197e0a663fb197332d908fc2deb25dc454ea93b8328d6a29f52c1a6c302f259c9162ac0a1af0bcd1ea7aa3bfa7c589852c09a109892ffb7c665c125afee78ae6193f36ef2159b45fe16f1b9c5d41f3010000ffff0300504b03041400060008000000210038a083ec520300008c0b000011000000776f72642f646f63756d656e742e786d6ca496c96ee3381086ef0dcc3b08bac712bdc88e10bbe17809726820e8cc9c070c454b84c505246d25739ad7985b5ffb35badf649e648ab265d950a6212b302073ab8f7f158bcbdde7579e7b7baa0d9362eaa35ee87b54109930914efd3f7e5fdf4c7ccf582c129c4b41a7fe1b35fee7d96f9fee8a389164c7a9b01e2084890b45a67e66ad8a83c0908c726c7a9c112d8ddcd81e913c909b0d233428a44e827e88c2b2a4b424d418986f81c51e1bff8823afed6889c605183be0302019d696bed60c74356414dc069326a8df01041ef6511335b81a15054e550334ec0402550dd2a81be91de7a26ea47e9334ee461a3449936ea4463af166824b4505746ea4e6d84255a701c77abb53370056d8b2179633fb06cc30aa3098896d0745607522f0417235611c7099d07c90541439f5775ac447fb9b93bd931e1fec8f7f95856ee3ffc164793c1c4acf034d738885142663eab4c379571a74661564ff2b27f63cafc6150ab5dc2eff773c2d0fa1ac816de41fe3cff383f25f1351d862451ce264d146c2e59c95120e59584fdc293467c1452d0f900ad06f0022c25aa674c5384413fc01cb338ea1d7614615c6bcf17aab172afd58b63c68b953358d7d8cf658effdc2ddc257b08e5977be13ccc7c43c6758c191c049fc980aa9f14b0e8a20873c4803af5c01f78555f1dca6f367f0547891c99bfb57d0338c15d6f811567b381885f3d502f9652b1cb4d6b5a2f1a03f871fb4c6f02c49be4efd305cdc8eeed7d1a969493778975bd733be47b75158cea2ddc7ce9eb4b492c89c7a7396e6f4c7b7f82e70edeeabcbaf7a47cb22eaaf16abe1a596e1783547a3e5fa42cb71c6565ad08f6f3d6f8d99a61ee8219a790994fefdfb1feca4b5d0359e8f466bb45e5eea8ad06a359fcc6b1157ea72a9101b8509ac9cd2d450bda7feacdff39e99a77f7e577052530f5e7cda7872ebc1a24be13de1b272a1d9adacdcba1befd9c2550953bb5d5c6a109803fccf07798fc9d60fcec7ae44721a19d48e1b4aec937ec7a3322ae9f35fd005271e42b7ee2e2de20ccad1643039c055fa053b632be1604643342e03c1d2ccd6d51769ade4753da79bb3de8ce284c215370e27aeba91d29e55d39d2daba5e42286fc32d07a8ca11b5336c39bf841bbcc8f7326e813b304540ea2cacf838b65f1b02582fa193dfb0f0000ffff0300504b030414000600080000002100d664b351f4000000310300001c000801776f72642f5f72656c732f646f63756d656e742e786d6c2e72656c7320a2040128a0000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac92cb6ac3301045f785fe83987d2d3b7d5042e46c4a21dbd6fd00451e3fa82c09cdf4e1bfaf4849ebd060baf072ae9873cf8036dbcfc18a778cd47ba7a0c87210e88caf7bd72a78a91eafee41106b576beb1d2a1891605b5e5e6c9ed06a4e4bd4f58144a23852d03187b594643a1c34653ea04b2f8d8f83e634c656066d5e758b7295e777324e19509e30c5ae561077f535886a0cf81fb66f9adee083376f033a3e53213f70ff8ccce9384a581d5b640593304b4490e745564b8ad01f8b6332a7502caac0a3c5a9c0619eabbf5db29ed32efeb61fc6efb09873b859d2a1f18e2bbdb7138f9fe828214f3e7af9050000ffff0300504b030414000600080000002100b7fd7ba8dc060000ca20000015000000776f72642f7468656d652f7468656d65312e786d6cec594b8b1b4710be07f21f86b9cb7acde8b1586ba491e4d7ae6dbcb2838fbd526ba6ad9e69d1dddab53086609f7209049c90430cb92510420c31c4e492437eca824de2fc8854f7489a69a915bfd660c2ae60d58fafaabfaeaaae2ecd9cbf702fa6ce11e682b0a4e596cf955c072743362249d8726f0dfa8586eb08899211a22cc12d778e857b61f7d34fcea31d19e1183b209f881dd4722329a73bc5a218c23012e7d814273037663c4612ba3c2c8e383a06bd312d564aa55a314624719d04c5a07610fdf92328bb3e1e9321767797da7b14fe2552a88121e5074a375e88e4b0a349597d89b90828778e106db9b0d0881d0ff03de93a140909132db7a4ffdce2eef9e24a88ca2db239b9befe5bc82d0446938a96e3e1e14ad0f37cafd65ee9d7002a3771bd7aafd6abadf469001a0e61a729175367bd12780b6c0e94362dbabbf56eb56ce073faab1bf8b6af3e065e83d2a6b781eff783cc863950daf437f07ea7d9e99afa35286dd636f0f552bbebd50dbc06459424930d74c9af5583e56e579031a397acf0a6eff5eb95053c431573d195ca27725bacc5e82ee37d0068e722491247cea7788c86800b1025879c387b248c20f0a6286102864b9552bf5485ffeae3e996f628dac128279d0e0dc5c690e2e388212753d972af8056370779f1fcf9c9c367270f7f3b79f4e8e4e12f8bb537e52ea124cccbbdfae1ab7f9e7ceefcfdebf7af1e7f6dc78b3cfee5cf5fbcfcfd8fff522f0d5adf3c7df9ece98b6fbffceba7c716789ba3c33c7c40622c9c6bf8d8b9c962d8a065017cc8df4e62102192976827a14009523216744f4606fada1c5164c175b069c7db1cd2850d787176d7207c10f1992416e0d5283680fb8cd10ee3d63d5d556be5ad304b42fbe27c96c7dd44e8c8b676b0e6e5de6c0a714f6c2a83081b346f5070390a7182a5a3e6d804638bd81d420cbbee932167828da57387381d44ac26199043239a32a14b2406bfcc6d04c1df866df66f3b1d466deabbf8c844c2d940d4a61253c38c17d14ca2d8ca18c5348fdc4332b2913c98f3a1617021c1d321a6cce98db0103699eb7c6ed0bd0a69c6eef67d3a8f4d2497646243ee21c6f2c82e9b04118aa756ce2489f2d8cb6202218a9c1b4c5a4930f384a83ef801255bdd7d9b60c3ddaf3fdbb7200dd90344cdccb8ed4860669ec7391d236c53dee6b19162db9c58a3a3330b8dd0dec398a26334c2d8b975d9866753c3e619e92b1164954bd8669b2bc88c55d54fb0c08e2e6e2c8e25c208d9031cb22d7cf6e76b89678e9218f16d9aaf4dcc90e9c155175be3950e27462a255c1d5a3b89eb2236f6b755eb8d081961a5fac21eaf736ef8ef4dce18c8dc7d0719fcd63290d8dfd83603448d05b2801920a8326ce916440cf76722ea3869b199556e6c1edacc0dc5b5a22726c96b2ba0b5dac7ff70b50f54182fbe7b62c19e4ebd6307be4fa5b32d99acd737db70eb554dc0f8887cfc454d17cd921b18ee110bf4aca639ab69fef735cdb6f37c56c99c553267958c5de403543259f1a21f012d1ff4682df1d6a73e6342e9819c53bc2774d923e0ec8ffa30a83b5a68f590691a4173b19c810b39d26d8733f91991d14184a6b04c59af108a85ea50385326a070d2c356dd6a82cee27d364a47cbe5e5734d1040321b87c26b390e659a4c476bf5ec01de4abdee85fa41eb9280927d1b12b9c54c12550b89fa72f03524f4ce4e8545d3c2a2a1d46f65a1bf165e81cbc941ea99b8efa58c20dc20a447ca4fa9fcd2bba7eee96dc634b75db16cafa9b89e8ea70d12b9703349e4c23082cb637df8947dddcc5c6ad053a6d8a4516f7c085fab24b2961b6862f69c633873551fd40cd1b4e58ee1271334e329e8132a53211a262d772817867e97cc32e54276918852989e4af71f1389b943490cb19e77034d326ee54a5dedf12325d72c7d7c96d35f7927e3f1180fe59691ac0b73a912ebec7b825587cd80f441343a760ee98cdf446028bf5e56061c112157d61c119e0beecc8a6be96a71148df72dd91145741aa1c58d924fe6295cb7577472fbd04cd77765f6179b390c9593defbd67dbd909ac825cd2d1788ba35edf9e3c35df2395659de3758a5a97b3dd73597b96edb2df1fe17428e5ab698414d31b650cb464d6aa75810e4965b85e6b63be2b46f83f5a85517c4b2aed4bd8d17dbecf02e447e17aad519954253855f2d1c05cb57926926d0a3cbec724f3a334e5aeefd92dff6828a1f144a0dbf57f0aa5ea9d0f0dbd542dbf7abe59e5f2e753b9507601419c5653f5dbb0f3ff6e97cf1e25e8f6fbcbc8f97a5f6b9218b8b4cd7c1452dac5fde972bc6cbfbb44e76066ade750858e67eadd26f569b9d5aa1596df70b5eb7d32834835aa7d0ad05f56ebf1bf88d66ff81eb1c69b0d7ae065eadd728d4ca4150f06a2545bfd12cd4bd4aa5edd5db8d9ed77eb0b035ec7cf9bd34afe6b5fb2f000000ffff0300504b030414000600080000002100e74a8b6dfe0300000a0b000011000000776f72642f73657474696e67732e786d6cb4565b6fdb36147e1fb0ff60e8798e255b521aad4e113bf392225e8b38c380bd51226513e10d2465c71df6df77488991dd1485d3212f3679be73e3e17778f4fec31367832dd1864a318d92b3381a1051494cc57a1afdf9b018be8b06c622811193824ca33d31d187cb9f7f7abf2b0cb116d4cc005c0853f06a1a6dac55c56864aa0de1c89c49450480b5d41c59d8eaf58823fdd8a86125b94296969451bb1f8de3388f3a37721a355a149d8b21a7959646d6d69914b2ae6945babf60a14f89db9a5ccbaae144581f71a409831ca4301baa4cf0c67fd41b809be064fbbd436c390b7abb243ee1b83ba9f1b3c529e93903a565458c810be22c2448451f387de1e839f619c4ee8ee85d817912fbd561e6d9eb1c8c5f38c82b8a5fe723ef7c8cc0f2c08f21af7393053766cfc9537064d829a56da13b5a6aa45be27675e55571bb1652a392413a50df019468e0b373bf2ee34b689a2f52f2c1ae504457c01ce8b8388e460e80fb92f5ca220bea85518431df82152348b41a98d4a861f601952b2b15686d11a47c1ebf6be1cd5e6d88f084fe1b5a35e0e9386bf16a8334aa2cd12b852af03d97c26ac9821e967f483b87b6d4c09acec23769bf5ab50d0f16027138e451132f25868edc158da6a7df8633f0d19390e437034978a034c5e4c1157765f78c2c20f915fd42ae04fed8184bc1a33ff9ffc8e07b09405d21f227a0c3c35e910541b68132bd51307f130b46d5926a2df5adc0c094370b46eb9a68084081794ba017d572e7eb7c431086b9f046711b43fe0265e8c6c903d0f27126ad95fca6e7f08fc7f50d353aa42f4c376cc2e25e4afbac1aa7f3fc6296b6993af414e47c965ce45ddb1e23f38b6cb6c8bbf85d545eb8c9f0598795a3ee80b71673c44b4dd160e966c7c86994fa714645c04b026f0f3944564d19c0e1b0050c478c2da08801f0a9f10253a3ae49edd76c89f4baf7db69e86f4ae19df9f8eccbbd5244ffae65a35a74a7916a2919549234ed2ca9b0779407b969ca55b012f05a1e408dc09fb6dad7a92fcfaeb070c5beb5ef90a78ad7adf57071df5189e995a3015922a55a3695eb641a31baded8c411c0c20ec32786df94eb71878d3d366e31bf41953b1968778b5e360eb203bd49904d7a591a64692fcb822ceb657990e54e06af34d1f0b43f02b1c3d2c96bc998dc117cd3e32f446d11cc062972ddce02a0976c05dd7030836d419e60ae104c2d7cb9298a397a726366ec69d96933b4978d3dd275985356c71e30b2a86be5d191b1a7f857b9b8195551a0e36acfcb7eb4fcd226cea8816740c114b25207ec578f25698165750b9d042b2f9fe4f9249e5fb56321c9fcf4b2fea5807bbf27f50c19823b2c9866ade93f5717c97516cfe7c3743c839fe42a1ece2ee6d9f0b7ec3c3dcfaed37c3eceffed9a347cc45efe070000ffff0300504b03041400060008000000210040a6dd8f640b0000d67100000f000000776f72642f7374796c65732e786d6cbc9ddb72dbba1586ef3bd377e0e8aabd70e4b313cf76f6384e5c7b1a677b4776730d9190851a245490f4a14f5f00a424ca8ba0b8c055df2496a8f5e1f0e307b078907efbfd2595d113d7b950d9d968efc3ee28e259ac12913d9c8deeef2e773e8ea2bc6059c2a4caf8d9e895e7a3df3ffff52fbf3d9fe6c5abe4796400597e9ac667a379512c4ec7e33c9ef394e51fd48267e6e04ce99415e6a57e18a74c3f968b9d58a50b5688a990a2781defefee1e8f6a8cee4351b39988f957159729cf0a173fd65c1aa2caf2b958e44bda731fdab3d2c942ab98e7b969742a2b5eca44b6c2ec1d02502a62ad72352b3e98c6d435722813beb7ebfe4ae51a708403ec03c0712c121ce3b8668c4d648393731ce66889c95f53fe328ad2f8f4fa21539a4da52199ae894ceb2207b6ffdac23e9bc191a8f82b9fb15216b97da96f75fdb27ee5febb54599147cfa72c8f85b8339531c45418f8d579968b9139c2595e9ce782b51e9cdb3f5a8fc479d178fb8b48c4686c4bccff6b0e3e317936dadf5fbe73616bb0f19e64d9c3f2bd99deb9fcd9acc9d988673bf713fbd6d470cf464cef4cce6de0b86e58f57fa3b98bb7af5cc10b160b570e9b15dc8cfbbde35d0b95c2da6cffe8d3f2c5cfd276342b0b5517e200d5ff2bec18f4b8b18331c7a4f2a839ca67df55fcc89349610e9c8d5c59e6cdfbeb5b2d94363e3c1b7d72659a37273c1557224978d6f860361709ff35e7d97dce93f5fb7f5e3a2fd56fc4aaccccdf0727476e14c83cf9f612f38575a6399a31abc90f1b20eda74bb12edc85ff6709dbab95688b9f7366a7a768ef2dc2551f85d8b71179a3b5edccf24ddbdda750051dbc574187ef55d0d17b1574fc5e059dbc57411fdfab2087f97f1624b284bf544684c500ea368ec78d688ec76c688ec74b688ec72a688ec709688e67a0a3399e718ce67886298253a8d8370a1b83fdc033dabbb9dbd78830eef625218cbb7d0508e36e9ff0c3b8dbe7f730eef6e93c8cbb7df60ee36e9facf1dc6aab155d1b9b65c56097cd942a3255f0a8e02fc3692c332c97b3d1f0eca2c73549230930d5cc562fc483693173afb78f1067d2f0f5bcb0595da466d14c3c94daa4fa432bceb3272e4dd21db124313c42a0e645a93d3d1232a6359f71cdb398530e6c3aa8cd04a3ac4ca7046373c11ec8583c4b88bb6f492499145603dae4cf736b124130a853166b35bc6a8a91cd0fdf453ebcaf2c24fa524ac989583f688698630dcf0d1c66786ae030c3330387199e183434a3eaa29a46d453358da8c36a1a51bf55e393aadf6a1a51bfd534a27eab69c3fbed4e14d24df1cd5dc75eff73771752d9b3ec83eb31110f19331b80e1cb4d7dce34ba659a3d68b69847f6ac743bb6d9666c395f54f21add51ac692b12d5bede0d910bd36a9195c33b74834665ae158fc85e2b1e91c156bce116bb31db64bb41bba2c96726e5b46835ad23f532ed84c9b2dad00e771b2b868fb0b5012e85cec96cd08e2518c13fec76d6ca4931f3ad6b39bc626bd6705bbd9d9548ab5723096a2955fc48330d5fbd2eb83669d9e360d2a592523df3848e3829b4aac65ad3f2fb4e925e96ff962ee62c172e57da40f45fea97d7e7a31bb618dca05bc94446a3dbb79d940919d1ed20aeee6ebe47776a61d34cdb3134c02faa28544ac6accf04feed179ffe9da682e72609ce5e895a7b4e747ac8c12e04c122539154424432db4c91099235d4f1fec95fa78ae9848676ab79754b4cc1898813962eaa4d0781b7ccbcf86ce61f82dd90e3fd8b6961cf0b5199ea8e04d6386d9897d37ff378f854f74345246786fe280b77fed16d755d341d6ef8366103377c8be0d434cb831dbf048dddc00d6fec068eaab11792e5b9f05e420de6513577c9a36eeff0e4afe629a9f4ac94741db80492f5e01248d6854a96699653b6d8f1081bec78d4ed251c328e47704acef1fea145422686835129e1605432381895060e462ac0f03b741ab0e1b7e93460c3efd5a960445b80068c6a9c912eff4457791a30aa71e66054e3ccc1a8c69983518db383af119fcdcc26986e896920a9c65c0349b7d064054f174a33fd4a84fc26f9032338415ad16eb59ad967255456ddc44d80b4e7a825e166bbc25189fc8b4fc9aa665994f5223823caa4548ae8dcda7ac171919bf7ae6d0b734f720caec2ad64319f2b9970ed69933fd6e4cb93eab18cb7d577d5e875daf3bb789817d164be3adbdfc41cef6e8d5c26ec1b61db0b6cebf3e3e5f32c6d61373c1165baac287c98e2f8a07fb01bd11bc187db83d73b898dc8a39e91b0cce3ed91eb5df246e449cf4858e6c79e91cea71b915d7ef8caf463eb4038e91a3fab1ccf33f84eba46d12ab8b5d8ae81b48a6c1b82275da368c32ad1791cdbab05509d7e9ef1c7f7338f3f1ee3223f0563273fa5b7affc882e83fde44fc2aeec9849d395b7ba7b02ccfb6e13dd6be6fcb354d579fb8d0b4efd1feaba361ba72ce7512be7a0ff85ab8d59c6df8fbda71b3fa2f7bce347f49e80fc885e3391371c3525f929bde7263fa2f724e547a0672bb822e0662b188f9bad607cc86c052921b3d5805d801fd17b3be047a08d0a1168a30ed829f81128a382f020a3420adaa81081362a44a08d0a376038a3c2789c51617c88512125c4a89082362a44a08d0a1168a34204daa81081366ae0dede1b1e645448411b1522d0468508b451dd7e718051613ccea8303ec4a89012625448411b1522d0468508b45121026d5488401b1522504605e141468514b45121026d5488401bb57ad430dca8301e6754181f62544809312aa4a08d0a1168a34204daa81081362a44a08d0a1128a382f020a3420adaa81081362a44a08dea2e160e302a8cc71915c687181552428c0a2968a34204daa81081362a44a08d0a1168a34204caa8203cc8a89082362a44a08d0a115de3b3be44e9bbcd7e0f7fd6d37bc77eff4b5775a57e361fe56ea20efaa396b5f2b3fa3f8bf045a9c7a8f5c1c303976ff48388a914ca9da2f65c566f72dd2d11a80b9f7f5c743fe1d3a40ffcd2a5fa590877cd14c00ffb4682732a875d43be190992bcc3ae91de8c04bbcec3aed9b7190996c1c3ae49d7f97279538a598e4070d734d308def38477cdd68d70d8c55d73742310f670d7ccdc08841ddc351f37028f223b39bf8d3eead94fc7abfb4b01a16b383608277e42d7b0845a2da763688cbea2f9097dd5f313facae827a0f4f462f0c2fa516885fda830a9a1cdb052871bd54fc04a0d094152034cb8d410152c354485490d2746acd49080953a7c72f61382a4069870a9212a586a880a931a2e6558a921012b352460a51eb8207b31e1524354b0d410152635dcdc61a58604acd49080951a1282a4069870a9212a586a880a931a64c968a921012b352460a5868420a901265c6a880a961aa2baa476675136a44629dc08c76dc21a81b805b911889b9c1b8101d952233a305b6a1002b325a8d552735cb6d414cd4fe8ab9e9fd057463f01a5a7178317d68f422bec4785498dcb96daa40e37aa9f80951a972d79a5c6654b9d52e3b2a54ea971d9925f6a5cb6d426352e5b6a933a7c72f61382a4c6654b9d52e3b2a54ea971d9925f6a5cb6d426352e5b6a931a972db5493d7041f662c2a5c6654b9d52e3b225bfd4b86ca94d6a5cb6d426352e5b6a931a972d79a5c6654b9d52e3b2a54ea971d9925f6a5cb6d426352e5b6a931a972db5498dcb96bc52e3b2a54ea971d952a7d4b86ce9c6840882af809aa44c1711ddf7c55db17c5eb0e15f4e789f699e2bf9c49308ddd4f1f3c66f56d932dc2fcc99cf17a6a1f66bcb1bcf1825d5d7b6d640f7c1eb64f5db5236d8d628aa7fc5ab7edb55bcbec65a95e8026151f1dc9415d75f38e529ea564961dacf74620e17a048cff7caba2aacc7cbf2d375a7ae7baafadc463f75d6b8b0e3b3a3b66efcb2b2b37faa41eeabe2a7dab5dbea686a3495d56f9c993faeb3c4009eebdff7aaea9abcb00a658e5f70296f58f569b5f07f54f259511ddddb75df31f0e6f8b4faba3c6fbc76f3aa1730deac4cf5b2fe9d354f8f575fa05f5ff0f7f4fa79199719976602e12d7dee6e4119daddeb0a2effca3fff0f0000ffff0300504b030414000600080000002100bdd48dbf270100008f02000014000000776f72642f77656253657474696e67732e786d6c94d2cd6a02311000e07ba1ef1072d7ac52a52cae4229965e4aa1ed03c4ecac8666322113bbdaa76fdc6a7ff0e25e4226c97cc984992d76e8c40744b6e42b391a16528037545bbfaee4dbeb72702b0527ed6bedc84325f7c07231bfbe9ab5650bab1748299f649115cf259a4a6e520aa5526c36809a8714c0e7cd8622ea94c3b856a8e3fb360c0c61d0c9aeacb369afc645319547265ea250d35803f764b6083e75f92a82cb2279ded8c027adbd446b29d6219201e65c0fba6f0fb5f53fcce8e60c426b22313569988b39bea8a372faa8e866e87e81493f607c064c8dadfb19d3a3a172e61f87a11f333931bc47d84981a67c5c7b8a7ae5b294bf46e4ea44071fc6c365f3dc21149245fb094b8a77915a86a80ecbda396a9f9f1e72a0feb5d1fc0b0000ffff0300504b0304140006000800000021001b9210c8c50100008b05000012000000776f72642f666f6e745461626c652e786d6cdc92db8adb301086ef0b7d07a1fb8d6527ce6ecd3a4b0f1b28945e2cdb075014d916d5c1689478f3f61dc94e5a1a16d637bda80d42fa67e61be967ee1f5e8c2647e941395bd37cc1289156b8bdb26d4d7f3c6f6fee2881c0ed9e6b67654d4f12e8c3e6fdbbfba16a9c0d40b0de4265444dbb10fa2acb4074d27058b85e5a0c36ce1b1ef0e8dbcc70fff3d0df08677a1ed44e69154e59c1d89a4e18ff168a6b1a25e417270e46da90ea332f35129d854ef570a60d6fa10dceef7bef8404c0371b3df20c57f682c9575720a38477e09ab0c0c74c374a282ccf59da19fd1b50ce03145780b550fb798cf5c4c8b0f20f0ec87998f28c8193912f9418517d6dadf37ca79184d6107c1d49e0b8c6669b6936c850596e30eb33d76ae7550af4dc3a9039c68e5cd794156ccb4a5ce3bf62cbb8d22c268a8e7b90113226b2516eb851fa745661500063a057417467fdc8bd8a371c43a05a0c1c60c76afac8182b3e6eb7745472bc5d5456b79f26a588bdd2f761529617854545244e3ae6234724ce25077b66a303574e3c2b23817c9703797286db571c29d81a9d28d18fe8cc7296233e71673bf2f8b723b777e53f71649a0df24db55d787542e25cfca713326d60f30b0000ffff0300504b030414000600080000002100129cc8dd6c010000e502000011000801646f6350726f70732f636f72652e786d6c20a2040128a00001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c925f4fc23014c5df4dfc0e4bdf473b50a3cb18f14f7892c4448cc6b7da5ea0b2b54d7b61f0eded36182ef2e0dbbd3de7fe7677da6cb22b8b680bce2ba3c7241930128116462abd1c93b7f934be259147ae252f8c8631d9832793fcf222133615c6c18b33161c2af05120699f0a3b262b449b52eac50a4aee07c1a183b830aee4185ab7a4968b355f021d3276434b402e39725a0363db11c901294587b41b5734002928145082464f9341424f5e0457fab3038df2cb592adc5b386b3d8a9d7be75567acaa6a508d1a6bd83fa11fb3e7d7e65763a5ebac04903c9322458505e4193d95a1f29baf6f10d81e774da885038ec6e5f71a8dd2d0e8c7b33aed35ec2be3a40f93bd2ed82478e194c570872db77710dc05f7380b97ba50201ff6a74ffc956ab783adaadf433e6c1c5d9b1dc26dd702198550d236c2a3f23e7a7c9a4f493e64c95dcc92988de6094baf4729639ff566bdf913b03c2cf07fe2559f7804b4e1f41f66fe030000ffff0300504b030414000600080000002100971c8b5b71010000c802000010000801646f6350726f70732f6170702e786d6c20a2040128a00001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c52cb4ec33010bc23f10f51eeadd31e4a85b6ae502bc48147a5067ab6ec4d62e1d896eda2f6efd9341082b891d3ceecee686663589f5a937d6088dad9553e9b167986563aa56dbdca5fcbfbc932cf62125609e32caef233c67ccdafaf60179cc79034c68c246c5ce54d4afe96b1281b6c459c52db52a772a1158960a899ab2a2d71ebe4b1459bd8bc28160c4f09ad4235f18360de2bde7ea4ff8a2a273b7ff1ad3c7bd2e35062eb8d48c89fbb4d33552eb5c006164a978429758bbc207a00b01335463e03d617707041119e03eb2bd834220899e880fc86c64610eebc375a8a4497e54f5a06175d95b2978bddac5b07361e018ab047790c3a9d3b1763088fdaf63efa827c055107e19b2f730382bd140637149e57c24404f643c0c6b55e58926343457aeff1d5976edbdde16be53739ca78d0a9d97b21c9c2723e4e3b6ac09e5854647f703010f040ff23984e9e766d8dea7be66fa3bbdf5bff30f96c312de8bb1cec9ba3d8c38be19f000000ffff0300504b01022d0014000600080000002100dfa4d26c5a010000200500001300000000000000000000000000000000005b436f6e74656e745f54797065735d2e786d6c504b01022d00140006000800000021001e911ab7ef0000004e0200000b00000000000000000000000000930300005f72656c732f2e72656c73504b01022d001400060008000000210038a083ec520300008c0b00001100000000000000000000000000b3060000776f72642f646f63756d656e742e786d6c504b01022d0014000600080000002100d664b351f4000000310300001c00000000000000000000000000340a0000776f72642f5f72656c732f646f63756d656e742e786d6c2e72656c73504b01022d0014000600080000002100b7fd7ba8dc060000ca20000015000000000000000000000000006a0c0000776f72642f7468656d652f7468656d65312e786d6c504b01022d0014000600080000002100e74a8b6dfe0300000a0b0000110000000000000000000000000079130000776f72642f73657474696e67732e786d6c504b01022d001400060008000000210040a6dd8f640b0000d67100000f00000000000000000000000000a6170000776f72642f7374796c65732e786d6c504b01022d0014000600080000002100bdd48dbf270100008f020000140000000000000000000000000037230000776f72642f77656253657474696e67732e786d6c504b01022d00140006000800000021001b9210c8c50100008b050000120000000000000000000000000090240000776f72642f666f6e745461626c652e786d6c504b01022d0014000600080000002100129cc8dd6c010000e5020000110000000000000000000000000085260000646f6350726f70732f636f72652e786d6c504b01022d0014000600080000002100971c8b5b71010000c8020000100000000000000000000000000028290000646f6350726f70732f6170702e786d6c504b0506000000000b000b00c1020000cf2b00000000, 'Protocole Aigle', 'Petit protocole pour les aigles !'),
(2, 0x504b030414000600080000002100dfa4d26c5a01000020050000130008025b436f6e74656e745f54797065735d2e786d6c20a2040228a000020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b494cb6ec2301045f795fa0f91b75562e8a2aa2a028b3e962d52e907187b0256fd92c7bcfebe1302515501910a6c222533f7de3356c683d1da9a6c0911b57725eb173d9681935e69372bd9d7e42d7f641926e19430de41c936806c34bcbd194c36013023b5c392cd530a4f9ca39c831558f8008e2a958f56247a8d331e84fc1633e0f7bdde0397de2570294fb5071b0e5ea0120b93b2d7357d6e48221864d973d35867954c8460b41489ea7ce9d49f947c97509072db83731df08e1a183f9850578e07ec741f7434512bc8c622a67761a98baf7c545c79b9b0a42c4edb1ce0f455a525b4fada2d442f0191cedc9aa2ad58a1dd9eff2807a68d01bc3c45e3db1d0f2991e01a003be74e84154c3faf46f1cbbc13a4a2dc89981ab83c466bdd09916803a179f6cfe6d8da9c8aa4ce71f40169a3e33fc6deaf6cadce69e00031e9d37f5d9b48d667cf07f56da0401dc8e6dbfb6df8030000ffff0300504b0304140006000800000021001e911ab7ef0000004e0200000b0008025f72656c732f2e72656c7320a2040228a000020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac92c16ac3300c40ef83fd83d1bd51dac118a34e2f63d0db18d907085b494c13dbd86ad7fefd3cd8d8025de96147cbd2d393d07a739c4675e0945df01a96550d8abd09d6f95ec35bfbbc78009585bca53178d670e20c9be6f666fdca234929ca838b59158acf1a0691f88898cdc013e52a44f6e5a70b692229cfd46324b3a39e7155d7f7987e33a09931d5d66a485b7b07aa3d45be861dbace197e0a663fb197332d908fc2deb25dc454ea93b8328d6a29f52c1a6c302f259c9162ac0a1af0bcd1ea7aa3bfa7c589852c09a109892ffb7c665c125afee78ae6193f36ef2159b45fe16f1b9c5d41f3010000ffff0300504b030414000600080000002100053b7227d30300003312000011000000776f72642f646f63756d656e742e786d6ccc985b6fe2461480df2bf53f587e0fb63118620556844b944a9550b3ed6b35d803b6f05c343340e8afd9d7fe8ded1feb195f61cd46c6a4dbbcc49ecbf9ce65ce398cf3f0e99524c61e0b19333a329d8e6d1a98062c8ce96664fefe797137340da9100d51c2281e99472ccd4fe39f7f7a38f8210b7604536500824affc083911929c57dcb92418409921d12078249b6569d80118badd77180ad0313a1d5b51d3b7de38205584ad03745748fa499e382d766b450a003086b60cf0a2224147ead18ced590be756f0deba06e0b1078d875ea28f76a946769ab6aa05e2b10585523f5db912e38e7b52375eba4413b925b270ddb916ae944ea09ce38a6b0b86682200543b1b10812db1dbf0330472a5ec549ac8ec0b4bd028362ba6d6111489504e2865713061661214edcb0a0b091b913d4cfe5ef4a796dba9fc9e78f424234f13f1399e5cd21f5dc12388158302aa39897154edad260312a20fbb79cd893a4d877e04ec372f95e7b9a65a1ac804dcccfe34f92ccf2b7898edde04434a2946862c2b9cec212025958296e159a93e03a0d1b4801e8d6005e10374ce982914513fc01c9138ec4d761fa05461e4955ea07beb92d5b9e04dbf18a16df467bae6affa07f85af60e559775a09f236635e22c4a12590c07fde5026d02a018b20870c4803233d01fd174ec5d045678ee1aab062e1513f39acf47c8e047a86d3eeb97d7b329f3a663a0b8d56e9d9ee6cfa3899cc5d98f5e15a12fe36326d7b7adf7f5c78e5d452e8c9c1c09e3a8b727286d76897a874e5d1b9f7ec54355f0afd10d923417403fbf7281999b1ba7bfe6c5ae3072b5fb6cadde02c5bcf8580adeac8c13dc97192bc28f839d002b0ffa2254d150175bc144cb1802558cfaa6cedfbaae7347c27c53a0b7cc95100682eb0c4628fcdb1f18d15a59a0b717e5fcdcb187fabbc79f4dfd1baf11f58a81f7c16e3af5ffc33953a032fd4c9d4ebcea7f3de799df4faee70d69b4cceea244ffc1f5527b747c0f9fae57f4bbdcec748bc5fb0c2a265e6fde731fa18210a1be4c835bcddede1fe1891bdc6690e57be6bfcbedc8c06937e7fe12c66e7cdc873e6f3c97052759e0bcde872dfc98deb768c97d810fffccde12b011b2861421a6c6bc89acd2bc6b6fa1b2b8d0cb0f5bd31554211010ffe7c628f28d866212bf68247e5ce2c966f1c0ca3c612a5ca2ff6668903b53c3f8b932eba79f90b96e062ee38f7fa93efe047f0ee0ddd61a6986f7e4569b8197c3f383d67908627de44aa1aae98528c54e304af4f56238c420c8534b0877ab8664c9d0c373b950e733fe182216136f751ef49a743163c097d41f39398e265ac02b0d2f55221ab70317dcd6e6e56f5df9ef1bf000000ffff0300504b030414000600080000002100d664b351f4000000310300001c000801776f72642f5f72656c732f646f63756d656e742e786d6c2e72656c7320a2040128a0000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ac92cb6ac3301045f785fe83987d2d3b7d5042e46c4a21dbd6fd00451e3fa82c09cdf4e1bfaf4849ebd060baf072ae9873cf8036dbcfc18a778cd47ba7a0c87210e88caf7bd72a78a91eafee41106b576beb1d2a1891605b5e5e6c9ed06a4e4bd4f58144a23852d03187b594643a1c34653ea04b2f8d8f83e634c656066d5e758b7295e777324e19509e30c5ae561077f535886a0cf81fb66f9adee083376f033a3e53213f70ff8ccce9384a581d5b640593304b4490e745564b8ad01f8b6332a7502caac0a3c5a9c0619eabbf5db29ed32efeb61fc6efb09873b859d2a1f18e2bbdb7138f9fe828214f3e7af9050000ffff0300504b030414000600080000002100b7fd7ba8dc060000ca20000015000000776f72642f7468656d652f7468656d65312e786d6cec594b8b1b4710be07f21f86b9cb7acde8b1586ba491e4d7ae6dbcb2838fbd526ba6ad9e69d1dddab53086609f7209049c90430cb92510420c31c4e492437eca824de2fc8854f7489a69a915bfd660c2ae60d58fafaabfaeaaae2ecd9cbf702fa6ce11e682b0a4e596cf955c072743362249d8726f0dfa8586eb08899211a22cc12d778e857b61f7d34fcea31d19e1183b209f881dd4722329a73bc5a218c23012e7d814273037663c4612ba3c2c8e383a06bd312d564aa55a314624719d04c5a07610fdf92328bb3e1e9321767797da7b14fe2552a88121e5074a375e88e4b0a349597d89b90828778e106db9b0d0881d0ff03de93a140909132db7a4ffdce2eef9e24a88ca2db239b9befe5bc82d0446938a96e3e1e14ad0f37cafd65ee9d7002a3771bd7aafd6abadf469001a0e61a729175367bd12780b6c0e94362dbabbf56eb56ce073faab1bf8b6af3e065e83d2a6b781eff783cc863950daf437f07ea7d9e99afa35286dd636f0f552bbebd50dbc06459424930d74c9af5583e56e579031a397acf0a6eff5eb95053c431573d195ca27725bacc5e82ee37d0068e722491247cea7788c86800b1025879c387b248c20f0a6286102864b9552bf5485ffeae3e996f628dac128279d0e0dc5c690e2e388212753d972af8056370779f1fcf9c9c367270f7f3b79f4e8e4e12f8bb537e52ea124cccbbdfae1ab7f9e7ceefcfdebf7af1e7f6dc78b3cfee5cf5fbcfcfd8fff522f0d5adf3c7df9ece98b6fbffceba7c716789ba3c33c7c40622c9c6bf8d8b9c962d8a065017cc8df4e62102192976827a14009523216744f4606fada1c5164c175b069c7db1cd2850d787176d7207c10f1992416e0d5283680fb8cd10ee3d63d5d556be5ad304b42fbe27c96c7dd44e8c8b676b0e6e5de6c0a714f6c2a83081b346f5070390a7182a5a3e6d804638bd81d420cbbee932167828da57387381d44ac26199043239a32a14b2406bfcc6d04c1df866df66f3b1d466deabbf8c844c2d940d4a61253c38c17d14ca2d8ca18c5348fdc4332b2913c98f3a1617021c1d321a6cce98db0103699eb7c6ed0bd0a69c6eef67d3a8f4d2497646243ee21c6f2c82e9b04118aa756ce2489f2d8cb6202218a9c1b4c5a4930f384a83ef801255bdd7d9b60c3ddaf3fdbb7200dd90344cdccb8ed4860669ec7391d236c53dee6b19162db9c58a3a3330b8dd0dec398a26334c2d8b975d9866753c3e619e92b1164954bd8669b2bc88c55d54fb0c08e2e6e2c8e25c208d9031cb22d7cf6e76b89678e9218f16d9aaf4dcc90e9c155175be3950e27462a255c1d5a3b89eb2236f6b755eb8d081961a5fac21eaf736ef8ef4dce18c8dc7d0719fcd63290d8dfd83603448d05b2801920a8326ce916440cf76722ea3869b199556e6c1edacc0dc5b5a22726c96b2ba0b5dac7ff70b50f54182fbe7b62c19e4ebd6307be4fa5b32d99acd737db70eb554dc0f8887cfc454d17cd921b18ee110bf4aca639ab69fef735cdb6f37c56c99c553267958c5de403543259f1a21f012d1ff4682df1d6a73e6342e9819c53bc2774d923e0ec8ffa30a83b5a68f590691a4173b19c810b39d26d8733f91991d14184a6b04c59af108a85ea50385326a070d2c356dd6a82cee27d364a47cbe5e5734d1040321b87c26b390e659a4c476bf5ec01de4abdee85fa41eb9280927d1b12b9c54c12550b89fa72f03524f4ce4e8545d3c2a2a1d46f65a1bf165e81cbc941ea99b8efa58c20dc20a447ca4fa9fcd2bba7eee96dc634b75db16cafa9b89e8ea70d12b9703349e4c23082cb637df8947dddcc5c6ad053a6d8a4516f7c085fab24b2961b6862f69c633873551fd40cd1b4e58ee1271334e329e8132a53211a262d772817867e97cc32e54276918852989e4af71f1389b943490cb19e77034d326ee54a5dedf12325d72c7d7c96d35f7927e3f1180fe59691ac0b73a912ebec7b825587cd80f441343a760ee98cdf446028bf5e56061c112157d61c119e0beecc8a6be96a71148df72dd91145741aa1c58d924fe6295cb7577472fbd04cd77765f6179b390c9593defbd67dbd909ac825cd2d1788ba35edf9e3c35df2395659de3758a5a97b3dd73597b96edb2df1fe17428e5ab698414d31b650cb464d6aa75810e4965b85e6b63be2b46f83f5a85517c4b2aed4bd8d17dbecf02e447e17aad519954253855f2d1c05cb57926926d0a3cbec724f3a334e5aeefd92dff6828a1f144a0dbf57f0aa5ea9d0f0dbd542dbf7abe59e5f2e753b9507601419c5653f5dbb0f3ff6e97cf1e25e8f6fbcbc8f97a5f6b9218b8b4cd7c1452dac5fde972bc6cbfbb44e76066ade750858e67eadd26f569b9d5aa1596df70b5eb7d32834835aa7d0ad05f56ebf1bf88d66ff81eb1c69b0d7ae065eadd728d4ca4150f06a2545bfd12cd4bd4aa5edd5db8d9ed77eb0b035ec7cf9bd34afe6b5fb2f000000ffff0300504b030414000600080000002100449d8b7804040000240b000011000000776f72642f73657474696e67732e786d6cb456db6ee336107d2fd07f30f45cc79223291b759d45acd44d1671b7885314e81b25523611de405276bc45ffbd434a8c9c2658385be4c526e7cc8dc3331c7dfcf4c8d9684bb4a152cca2e4248e4644d41253b19e457fdc2fc61fa291b14860c4a420b3684f4cf4e9e2c71f3eee0a43ac0535330217c214bc9e451b6b553199987a433832275211016023354716b67a3de1483fb46a5c4bae90a51565d4ee27d338cea3de8d9c45ad1645ef62cc69ada5918d7526856c1a5a93fe2f58e863e2762657b26e3911d6479c68c2200729cc862a13bcf1eff506e02638d97eeb105bce82de2e898f38ee4e6afc64714c7ace4069591363e082380b095231044e5f387a8a7d02b1fb237a57609ec47e759879f63607d3170ef29ae2b7f9c87b1f13b03cf063c8dbdc64c18dd973f2181c19764c693be896561ae98eb87d5d795ddcac85d4a862900ed47704251af9ecdcafcbf8029ae6ab947cb42b14d13530073a2e8ea38903e0be64b3b2c8827a611461ccb760cd08129d06260d6a99bd47d5ca4a055a5b04299fc51f3a78b3571b223ca1ff82560d783acd3abcde208d6a4bf44aa11a7c9752582d59d0c3f237694b684b0dace92d7c930eab55d7f060211087433e6be2a5c4d091bba2d5f4f8db70063e7a12927c359084074a534cee5d715776cfc802925fd1afe452e0cfadb1143cfa93ff8f0cbe9500d415227f013adcef155910645b28d33b05f337b160542da9d652df080c4c79b760b4698886001498b7047a512d77beced70461980bef14b735e44f50866e3cbd075a3ecca5b5925f0f1cfefeb8bea12687f485e9864d58dc49699f54e3b4cccfe76997a9438f41cecee23259bc8acc93f3bc6fe8e748799ecd17799f599f0f2fdcccf85d879523f588771625e295a668b4745365e2342afd30a722e0158157891c22abb60ae078dc018623c61650de00f8d47881a95157a4f16bb6447a3df8ed35f4ab5278813e3ff972ef17d1bf6ad9aa0edd69a43ab20695244d7b4b2aec2de5416eda6a15ac04bca307502bf097adf6751acab32b2c5cbe6ffa5be449e4751b3d5edcf524637ae508429648a98e67d53a99458cae373671d4b0b0c3f0f1e137d57ada63538f4d3bcc6f50ed4e06dafd62904d83ec40ef34c84e07591a64e920cb822c1b647990e54e06ef37d1f0e83f00e5c3d2c91bc998dc117c3de02f445d11cc062972d54d09a097ec04fdd830a36d411e61e2104c2d7cd3298a397a740368ea69d96b33b497ad7da6eb30a7ac9e7bc0c8a2bec927cf8c3dc5ff938b9b5e35053aaef6bc1a86ce4f5de28c1a782014cc272b75c07ef658921658d637d049b0f2f2d33c3f8dcbcb6e6024999f6bd6bf2170ef77a4992343708f05d3ac33fdfbf23cb9cae2b21ca7d339fc2497f1787e5e66e35fb2b3f42cbb4af3729affd33769f8bcbdf8170000ffff0300504b03041400060008000000210040a6dd8f640b0000d67100000f000000776f72642f7374796c65732e786d6cbc9ddb72dbba1586ef3bd377e0e8aabd70e4b313cf76f6384e5c7b1a677b4776730d9190851a245490f4a14f5f00a424ca8ba0b8c055df2496a8f5e1f0e307b078907efbfd2595d113d7b950d9d968efc3ee28e259ac12913d9c8deeef2e773e8ea2bc6059c2a4caf8d9e895e7a3df3ffff52fbf3d9fe6c5abe4796400597e9ac667a379512c4ec7e33c9ef394e51fd48267e6e04ce99415e6a57e18a74c3f968b9d58a50b5688a990a2781defefee1e8f6a8cee4351b39988f957159729cf0a173fd65c1aa2caf2b958e44bda731fdab3d2c942ab98e7b969742a2b5eca44b6c2ec1d02502a62ad72352b3e98c6d435722813beb7ebfe4ae51a708403ec03c0712c121ce3b8668c4d648393731ce66889c95f53fe328ad2f8f4fa21539a4da52199ae894ceb2207b6ffdac23e9bc191a8f82b9fb15216b97da96f75fdb27ee5febb54599147cfa72c8f85b8339531c45418f8d579968b9139c2595e9ce782b51e9cdb3f5a8fc479d178fb8b48c4686c4bccff6b0e3e317936dadf5fbe73616bb0f19e64d9c3f2bd99deb9fcd9acc9d988673bf713fbd6d470cf464cef4cce6de0b86e58f57fa3b98bb7af5cc10b160b570e9b15dc8cfbbde35d0b95c2da6cffe8d3f2c5cfd276342b0b5517e200d5ff2bec18f4b8b18331c7a4f2a839ca67df55fcc89349610e9c8d5c59e6cdfbeb5b2d94363e3c1b7d72659a37273c1557224978d6f860361709ff35e7d97dce93f5fb7f5e3a2fd56fc4aaccccdf0727476e14c83cf9f612f38575a6399a31abc90f1b20eda74bb12edc85ff6709dbab95688b9f7366a7a768ef2dc2551f85d8b71179a3b5edccf24ddbdda750051dbc574187ef55d0d17b1574fc5e059dbc57411fdfab2087f97f1624b284bf544684c500ea368ec78d688ec76c688ec74b688ec72a688ec709688e67a0a3399e718ce67886298253a8d8370a1b83fdc033dabbb9dbd78830eef625218cbb7d0508e36e9ff0c3b8dbe7f730eef6e93c8cbb7df60ee36e9facf1dc6aab155d1b9b65c56097cd942a3255f0a8e02fc3692c332c97b3d1f0eca2c73549230930d5cc562fc483693173afb78f1067d2f0f5bcb0595da466d14c3c94daa4fa432bceb3272e4dd21db124313c42a0e645a93d3d1232a6359f71cdb398530e6c3aa8cd04a3ac4ca7046373c11ec8583c4b88bb6f492499145603dae4cf736b124130a853166b35bc6a8a91cd0fdf453ebcaf2c24fa524ac989583f688698630dcf0d1c66786ae030c3330387199e183434a3eaa29a46d453358da8c36a1a51bf55e393aadf6a1a51bfd534a27eab69c3fbed4e14d24df1cd5dc75eff73771752d9b3ec83eb31110f19331b80e1cb4d7dce34ba659a3d68b69847f6ac743bb6d9666c395f54f21add51ac692b12d5bede0d910bd36a9195c33b74834665ae158fc85e2b1e91c156bce116bb31db64bb41bba2c96726e5b46835ad23f532ed84c9b2dad00e771b2b868fb0b5012e85cec96cd08e2518c13fec76d6ca4931f3ad6b39bc626bd6705bbd9d9548ab5723096a2955fc48330d5fbd2eb83669d9e360d2a592523df3848e3829b4aac65ad3f2fb4e925e96ff962ee62c172e57da40f45fea97d7e7a31bb618dca05bc94446a3dbb79d940919d1ed20aeee6ebe47776a61d34cdb3134c02faa28544ac6accf04feed179ffe9da682e72609ce5e895a7b4e747ac8c12e04c122539154424432db4c91099235d4f1fec95fa78ae9848676ab79754b4cc1898813962eaa4d0781b7ccbcf86ce61f82dd90e3fd8b6961cf0b5199ea8e04d6386d9897d37ff378f854f74345246786fe280b77fed16d755d341d6ef8366103377c8be0d434cb831dbf048dddc00d6fec068eaab11792e5b9f05e420de6513577c9a36eeff0e4afe629a9f4ac94741db80492f5e01248d6854a96699653b6d8f1081bec78d4ed251c328e47704acef1fea145422686835129e1605432381895060e462ac0f03b741ab0e1b7e93460c3efd5a960445b80068c6a9c912eff4457791a30aa71e66054e3ccc1a8c69983518db383af119fcdcc26986e896920a9c65c0349b7d064054f174a33fd4a84fc26f9032338415ad16eb59ad967255456ddc44d80b4e7a825e166bbc25189fc8b4fc9aa665994f5223823caa4548ae8dcda7ac171919bf7ae6d0b734f720caec2ad64319f2b9970ed69933fd6e4cb93eab18cb7d577d5e875daf3bb789817d164be3adbdfc41cef6e8d5c26ec1b61db0b6cebf3e3e5f32c6d61373c1165baac287c98e2f8a07fb01bd11bc187db83d73b898dc8a39e91b0cce3ed91eb5df246e449cf4858e6c79e91cea71b915d7ef8caf463eb4038e91a3fab1ccf33f84eba46d12ab8b5d8ae81b48a6c1b82275da368c32ad1791cdbab05509d7e9ef1c7f7338f3f1ee3223f0563273fa5b7affc882e83fde44fc2aeec9849d395b7ba7b02ccfb6e13dd6be6fcb354d579fb8d0b4efd1feaba361ba72ce7512be7a0ff85ab8d59c6df8fbda71b3fa2f7bce347f49e80fc885e3391371c3525f929bde7263fa2f724e547a0672bb822e0662b188f9bad607cc86c052921b3d5805d801fd17b3be047a08d0a1168a30ed829f81128a382f020a3420adaa81081362a44a08d0a376038a3c2789c51617c88512125c4a89082362a44a08d0a1168a34204daa81081366ae0dede1b1e645448411b1522d0468508b451dd7e718051613ccea8303ec4a89012625448411b1522d0468508b45121026d5488401b1522504605e141468514b45121026d5488401bb57ad430dca8301e6754181f62544809312aa4a08d0a1168a34204daa81081362a44a08d0a1128a382f020a3420adaa81081362a44a08dea2e160e302a8cc71915c687181552428c0a2968a34204daa81081362a44a08d0a1168a34204caa8203cc8a89082362a44a08d0a115de3b3be44e9bbcd7e0f7fd6d37bc77eff4b5775a57e361fe56ea20efaa396b5f2b3fa3f8bf045a9c7a8f5c1c303976ff48388a914ca9da2f65c566f72dd2d11a80b9f7f5c743fe1d3a40ffcd2a5fa590877cd14c00ffb4682732a875d43be190992bcc3ae91de8c04bbcec3aed9b7190996c1c3ae49d7f97279538a598e4070d734d308def38477cdd68d70d8c55d73742310f670d7ccdc08841ddc351f37028f223b39bf8d3eead94fc7abfb4b01a16b383608277e42d7b0845a2da763688cbea2f9097dd5f313facae827a0f4f462f0c2fa516885fda830a9a1cdb052871bd54fc04a0d094152034cb8d410152c354485490d2746acd49080953a7c72f61382a4069870a9212a586a880a931a2e6558a921012b352460a51eb8207b31e1524354b0d410152635dcdc61a58604acd49080951a1282a4069870a9212a586a880a931a64c968a921012b352460a5868420a901265c6a880a961aa2baa476675136a44629dc08c76dc21a81b805b911889b9c1b8101d952233a305b6a1002b325a8d552735cb6d414cd4fe8ab9e9fd057463f01a5a7178317d68f422bec4785498dcb96daa40e37aa9f80951a972d79a5c6654b9d52e3b2a54ea971d9925f6a5cb6d426352e5b6a933a7c72f61382a4c6654b9d52e3b2a54ea971d9925f6a5cb6d426352e5b6a931a972db5493d7041f662c2a5c6654b9d52e3b225bfd4b86ca94d6a5cb6d426352e5b6a931a972d79a5c6654b9d52e3b2a54ea971d9925f6a5cb6d426352e5b6a931a972db5498dcb96bc52e3b2a54ea971d952a7d4b86ce9c6840882af809aa44c1711ddf7c55db17c5eb0e15f4e789f699e2bf9c49308ddd4f1f3c66f56d932dc2fcc99cf17a6a1f66bcb1bcf1825d5d7b6d640f7c1eb64f5db5236d8d628aa7fc5ab7edb55bcbec65a95e8026151f1dc9415d75f38e529ea564961dacf74620e17a048cff7caba2aacc7cbf2d375a7ae7baafadc463f75d6b8b0e3b3a3b66efcb2b2b37faa41eeabe2a7dab5dbea686a3495d56f9c993faeb3c4009eebdff7aaea9abcb00a658e5f70296f58f569b5f07f54f259511ddddb75df31f0e6f8b4faba3c6fbc76f3aa1730deac4cf5b2fe9d354f8f575fa05f5ff0f7f4fa79199719976602e12d7dee6e4119daddeb0a2effca3fff0f0000ffff0300504b030414000600080000002100bdd48dbf270100008f02000014000000776f72642f77656253657474696e67732e786d6c94d2cd6a02311000e07ba1ef1072d7ac52a52cae4229965e4aa1ed03c4ecac8666322113bbdaa76fdc6a7ff0e25e4226c97cc984992d76e8c40744b6e42b391a16528037545bbfaee4dbeb72702b0527ed6bedc84325f7c07231bfbe9ab5650bab1748299f649115cf259a4a6e520aa5526c36809a8714c0e7cd8622ea94c3b856a8e3fb360c0c61d0c9aeacb369afc645319547265ea250d35803f764b6083e75f92a82cb2279ded8c027adbd446b29d6219201e65c0fba6f0fb5f53fcce8e60c426b22313569988b39bea8a372faa8e866e87e81493f607c064c8dadfb19d3a3a172e61f87a11f333931bc47d84981a67c5c7b8a7ae5b294bf46e4ea44071fc6c365f3dc21149245fb094b8a77915a86a80ecbda396a9f9f1e72a0feb5d1fc0b0000ffff0300504b0304140006000800000021001b9210c8c50100008b05000012000000776f72642f666f6e745461626c652e786d6cdc92db8adb301086ef0b7d07a1fb8d6527ce6ecd3a4b0f1b28945e2cdb075014d916d5c1689478f3f61dc94e5a1a16d637bda80d42fa67e61be967ee1f5e8c2647e941395bd37cc1289156b8bdb26d4d7f3c6f6fee2881c0ed9e6b67654d4f12e8c3e6fdbbfba16a9c0d40b0de4265444dbb10fa2acb4074d27058b85e5a0c36ce1b1ef0e8dbcc70fff3d0df08677a1ed44e69154e59c1d89a4e18ff168a6b1a25e417270e46da90ea332f35129d854ef570a60d6fa10dceef7bef8404c0371b3df20c57f682c9575720a38477e09ab0c0c74c374a282ccf59da19fd1b50ce03145780b550fb798cf5c4c8b0f20f0ec87998f28c8193912f9418517d6dadf37ca79184d6107c1d49e0b8c6669b6936c850596e30eb33d76ae7550af4dc3a9039c68e5cd794156ccb4a5ce3bf62cbb8d22c268a8e7b90113226b2516eb851fa745661500063a057417467fdc8bd8a371c43a05a0c1c60c76afac8182b3e6eb7745472bc5d5456b79f26a588bdd2f761529617854545244e3ae6234724ce25077b66a303574e3c2b23817c9703797286db571c29d81a9d28d18fe8cc7296233e71673bf2f8b723b777e53f71649a0df24db55d787542e25cfca713326d60f30b0000ffff0300504b030414000600080000002100f2d010ef6c010000e502000011000801646f6350726f70732f636f72652e786d6c20a2040128a00001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008c92cd4ec3301084ef48bc43e47b62870804519a8a1f71a2121245206ec65e5a43625bf6b669de1e276953223870dbf5cc7ed98c5dcc7775156dc17965f48ca40923116861a4d2ab19795edec79724f2c8b5e495d130232d78322f4f4f0a6173611c3c3a63c1a1021f0592f6b9b033b246b439a55eaca1e63e090e1dc40fe36a8ea1752b6ab9f8e22ba0678c5dd01a904b8e9c76c0d88e44b2474a3122edc6553d400a0a15d4a0d1d33449e9d18be06affe740affc70d60a5b0b7f5a0fe2e8de79351a9ba6499aacb786fd53faba7878ea7f3556bacb4a00290b297254584159d063192abf79ff0481c3f1d8845a38e0685c79add1280dbd7e38ebd2fe82b6314efa3039e9824d82174e590c7738702707c15d718f8b70a91f0ae44d7bfcc46fa9733bd8aaee3d9459ef18db621feeb016c82884920f111e9497ecf66e794fca33965ec52c8d59b64c597e9ee58cbd759b4de68fc07abfc0ff891753e2013084337d98e537000000ffff0300504b03041400060008000000210023a87c816f010000c802000010000801646f6350726f70732f6170702e786d6c20a2040128a00001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c52cb4ec33010bc23f10f51eed4291205a18d112a421c78494ddbb3656f120bc7b66cb76aff9e4d0321881b3eedcc7a47336bc3dda133d91e43d4ce96f97c56e4195ae994b64d99afabc78b9b3c8b4958258cb358e6478cf91d3f3f83f7e03c86a4316624616399b729f95bc6a26cb11371466d4b9dda854e2482a161aeaeb5c40727771ddac42e8b62c1f090d02a54177e14cc07c5db7dfaafa872b2f71737d5d1931e870a3b6f4442feda4f9a9972a90336b250b9244ca53be405d1238077d160e4736043015b17146122860a96ad0842265a205f5c019b40b8f7de6829126d96bf68195c7475cade4e76b37e1cd8f40a508415ca5dd0e9d8bb984278d676f03114e42b882608df7e991b11aca430b8a4f0bc162622b01f0296aef3c2921c1b2bd2fb886b5fb9877e0f5f23bfc949c6ad4eedca0b4916ae7fa59d3460452c2ab23f3a180978a2f708a697a759dba0fabef3b7d1ef6f337c4c3e5fcc0a3aa7857d73147bfc31fc130000ffff0300504b01022d0014000600080000002100dfa4d26c5a010000200500001300000000000000000000000000000000005b436f6e74656e745f54797065735d2e786d6c504b01022d00140006000800000021001e911ab7ef0000004e0200000b00000000000000000000000000930300005f72656c732f2e72656c73504b01022d0014000600080000002100053b7227d3030000331200001100000000000000000000000000b3060000776f72642f646f63756d656e742e786d6c504b01022d0014000600080000002100d664b351f4000000310300001c00000000000000000000000000b50a0000776f72642f5f72656c732f646f63756d656e742e786d6c2e72656c73504b01022d0014000600080000002100b7fd7ba8dc060000ca2000001500000000000000000000000000eb0c0000776f72642f7468656d652f7468656d65312e786d6c504b01022d0014000600080000002100449d8b7804040000240b00001100000000000000000000000000fa130000776f72642f73657474696e67732e786d6c504b01022d001400060008000000210040a6dd8f640b0000d67100000f000000000000000000000000002d180000776f72642f7374796c65732e786d6c504b01022d0014000600080000002100bdd48dbf270100008f0200001400000000000000000000000000be230000776f72642f77656253657474696e67732e786d6c504b01022d00140006000800000021001b9210c8c50100008b050000120000000000000000000000000017250000776f72642f666f6e745461626c652e786d6c504b01022d0014000600080000002100f2d010ef6c010000e502000011000000000000000000000000000c270000646f6350726f70732f636f72652e786d6c504b01022d001400060008000000210023a87c816f010000c80200001000000000000000000000000000af290000646f6350726f70732f6170702e786d6c504b0506000000000b000b00c1020000542c00000000, 'Protocole Pie Vert', 'Le protocole pour la pie Vert !');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
