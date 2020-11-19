-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 30 mars 2020 à 18:37
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP :  7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ncr`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) NOT NULL,
  `client` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `client`) VALUES
(1, 'poste'),
(2, 'atb'),
(3, 'BH BANK');

-- --------------------------------------------------------

--
-- Structure de la table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_apicustom`
--

INSERT INTO `cms_apicustom` (`id`, `permalink`, `tabel`, `aksi`, `kolom`, `orderby`, `sub_query_1`, `sql_where`, `nama`, `keterangan`, `parameter`, `created_at`, `updated_at`, `method_type`, `parameters`, `responses`) VALUES
(5, 'login', 'cms_users', 'detail', NULL, NULL, NULL, NULL, 'login', NULL, NULL, NULL, NULL, 'post', 'a:2:{i:0;a:5:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:15:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:5:\"photo\";s:4:\"type\";s:5:\"image\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:17:\"id_cms_privileges\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:19:\"cms_privileges_name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:28:\"cms_privileges_is_superadmin\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:26:\"cms_privileges_theme_color\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:8:\"function\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:8:\"TheState\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:3:\"cin\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:13;a:4:{s:4:\"name\";s:5:\"phone\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:14;a:4:{s:4:\"name\";s:8:\"LastName\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(6, 'clients', 'clients', 'list', NULL, NULL, NULL, NULL, 'clients', NULL, NULL, NULL, NULL, 'get', 'a:0:{}', 'a:2:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:6:\"client\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(7, 'sites', 'sites', 'list', NULL, NULL, NULL, NULL, 'sites', NULL, NULL, NULL, NULL, 'post', 'a:1:{i:0;a:5:{s:4:\"name\";s:9:\"id_client\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:13:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"site\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:9:\"id_client\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:10:\"technicien\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:7:\"adresse\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:5:\"model\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:2:\"PN\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:15:\"dateInstalation\";s:4:\"type\";s:4:\"date\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:8:\"garantie\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:4:\"etat\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:6:\"typeMP\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:2:\"MP\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:6:\"dateMP\";s:4:\"type\";s:4:\"date\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(8, 'pieces', 'pieces', 'detail', NULL, NULL, NULL, NULL, 'pieces', NULL, NULL, NULL, NULL, 'get', 'a:4:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:5:\"photo\";s:4:\"type\";s:5:\"image\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:9:\"reference\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:4:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:5:\"photo\";s:4:\"type\";s:5:\"image\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:9:\"reference\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(9, 'site', 'sites', 'list', NULL, NULL, NULL, NULL, 'site', NULL, NULL, NULL, NULL, 'post', 'a:1:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:13:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"site\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:9:\"id_client\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:10:\"technicien\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:7:\"adresse\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:5:\"model\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:2:\"PN\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:15:\"dateInstalation\";s:4:\"type\";s:4:\"date\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:8:\"garantie\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:4:\"etat\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:6:\"typeMP\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:2:\"MP\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:6:\"dateMP\";s:4:\"type\";s:4:\"date\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(10, 'travailler', 'report', 'list', NULL, NULL, NULL, 'state = 0', 'travailler', NULL, NULL, NULL, NULL, 'get', 'a:1:{i:0;a:5:{s:4:\"name\";s:10:\"technicien\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:15:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:6:\"client\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:4:\"site\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:10:\"technicien\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:10:\"secretaire\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:9:\"dateDebut\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:7:\"dateFin\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:8:\"probleme\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:10:\"traitement\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:5:\"photo\";s:4:\"type\";s:5:\"image\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:2:\"mc\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:2:\"mp\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:4:\"inst\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:13;a:4:{s:4:\"name\";s:12:\"typeDeSortie\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:14;a:4:{s:4:\"name\";s:5:\"state\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(11, 'clien', 'clients', 'detail', NULL, NULL, NULL, NULL, 'clien', NULL, NULL, NULL, NULL, 'post', 'a:1:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:2:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:6:\"client\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(12, 'uptravailler', 'report', 'save_edit', NULL, NULL, NULL, 'state=0', 'uptravailler', NULL, NULL, NULL, NULL, 'post', 'a:1:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:15:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:6:\"client\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:4:\"site\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:10:\"technicien\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:10:\"secretaire\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:9:\"dateDebut\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:7:\"dateFin\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:8:\"probleme\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:10:\"traitement\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:5:\"photo\";s:4:\"type\";s:5:\"image\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:2:\"mc\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:2:\"mp\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:4:\"inst\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:13;a:4:{s:4:\"name\";s:12:\"typeDeSortie\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:14;a:4:{s:4:\"name\";s:5:\"state\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}}'),
(13, 'rapport', 'report', 'detail', NULL, NULL, NULL, NULL, 'rapport', NULL, NULL, NULL, NULL, 'get', 'a:1:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:15:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:6:\"client\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:4:\"site\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:10:\"technicien\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:10:\"secretaire\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:9:\"dateDebut\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:7:\"dateFin\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:8:\"probleme\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:10:\"traitement\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:5:\"photo\";s:4:\"type\";s:5:\"image\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:2:\"mc\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:2:\"mp\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:4:\"inst\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:13;a:4:{s:4:\"name\";s:12:\"typeDeSortie\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:14;a:4:{s:4:\"name\";s:5:\"state\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(14, 'piece_utilisee', 'storages', 'list', NULL, NULL, NULL, NULL, 'piece_utilisee', NULL, NULL, NULL, NULL, 'get', 'a:1:{i:0;a:5:{s:4:\"name\";s:13:\"id_technicien\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:6:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:13:\"id_technicien\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:8:\"id_piece\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:8:\"quantite\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:11:\"quantiteMin\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:8:\"id_piece\";s:4:\"type\";s:4:\"date\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(15, 'storages', 'storages', 'list', NULL, NULL, NULL, NULL, 'storages', NULL, NULL, NULL, NULL, 'get', 'a:1:{i:0;a:5:{s:4:\"name\";s:13:\"id_technicien\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:5:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:13:\"id_technicien\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:8:\"id_piece\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:8:\"quantite\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:11:\"quantiteMin\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(16, 'histoire', 'report', 'list', NULL, NULL, NULL, 'state=1', 'histoire', NULL, NULL, NULL, NULL, 'get', 'a:1:{i:0;a:5:{s:4:\"name\";s:10:\"technicien\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:15:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:6:\"client\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:4:\"site\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:10:\"technicien\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:10:\"secretaire\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:9:\"dateDebut\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:7:\"dateFin\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:8:\"probleme\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:10:\"traitement\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:5:\"photo\";s:4:\"type\";s:5:\"image\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:2:\"mc\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:2:\"mp\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:4:\"inst\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:13;a:4:{s:4:\"name\";s:12:\"typeDeSortie\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:14;a:4:{s:4:\"name\";s:5:\"state\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}');

-- --------------------------------------------------------

--
-- Structure de la table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-25 11:14:18', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/clients/add-save', 'Add New Data  at clients', '', 1, '2020-01-25 11:39:05', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/clients/add-save', 'Add New Data  at clients', '', 1, '2020-01-25 11:39:18', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pieces/add-save', 'Add New Data gtx2080 at pieces', '', 1, '2020-01-25 11:44:34', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/add-save', 'Add New Data khannoussi at users', '', 1, '2020-01-25 12:41:11', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-25 12:41:17', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-01-25 12:41:22', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'malek@gmail.com logout', '', 2, '2020-01-25 12:41:28', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-25 12:41:34', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Update data clients at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-01-25 12:41:51', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Update data pieces at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2020-01-25 12:42:06', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data storages at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2020-01-25 12:42:16', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data Archive Rapport at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2020-01-25 12:42:26', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/8', 'Update data maintenance préventive at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2020-01-25 12:42:37', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/10', 'Update data piece termine at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>10</td><td></td></tr></tbody></table>', 1, '2020-01-25 12:43:33', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-25 12:44:01', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-01-25 12:44:06', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pieces', 'Try view the data :name at pieces', '', 2, '2020-01-25 12:44:20', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/storages/add-save', 'Add New Data  at storages', '', 2, '2020-01-25 12:44:32', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-25 13:18:46', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/storages/add-save', 'Add New Data  at storages', '', 2, '2020-01-25 13:31:45', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/sites/add-save', 'Add New Data  at sites', '', 2, '2020-01-25 13:32:42', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/storages/edit-save/2', 'Update data  at storages', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>quantite</td><td>20</td><td>3</td></tr></tbody></table>', 2, '2020-01-25 13:33:20', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/CreateReport', 'Try view the data :name at Create Report', '', 2, '2020-01-25 13:37:57', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pieces', 'Try view the data :name at pieces', '', 2, '2020-01-25 13:39:05', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pieces', 'Try view the data :name at pieces', '', 2, '2020-01-25 13:39:10', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pieces', 'Try view the data :name at pieces', '', 2, '2020-01-25 13:39:37', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pieces', 'Try view the data :name at pieces', '', 2, '2020-01-25 13:39:51', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Update data pieces at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>green</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-th-list</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2020-01-25 13:40:33', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pieces', 'Try view the data :name at pieces', '', 2, '2020-01-25 13:40:40', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pieces', 'Try view the data :name at pieces', '', 2, '2020-01-25 13:41:58', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pieces', 'Try view the data :name at pieces', '', 2, '2020-01-25 13:42:14', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'malek@gmail.com logout', '', 2, '2020-01-25 13:42:25', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-01-25 13:42:31', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/cms_users/add-save', 'Add New Data bahroun at users', '', 1, '2020-01-25 13:48:38', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-25 13:48:54', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-01-25 13:49:06', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'malek@gmail.com logout', '', 2, '2020-01-25 13:52:47', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-01-25 13:53:00', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'cheyma@crudbooster.com logout', '', 3, '2020-01-25 13:53:14', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-25 13:53:20', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/menu_management/edit/7', 'Try edit the data Create Report at Menu Management', '', 3, '2020-01-25 13:54:54', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/7', 'Update data Create Report at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>aqua</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-pencil</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2020-01-25 13:55:45', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/logout', 'cheyma@crudbooster.com logout', '', 3, '2020-01-25 13:56:06', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-01-25 13:56:21', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/edit-save/3', 'Update data bahroun at users', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$P7TtAFlxttlpPvmPiDSQ/udK.OWv3Aoco5LBTKBdfUuTuAXlE/.He</td><td>$2y$10$k8IJP2CQl3ta5dQItY3JXOGoq1bZQpStYNiMR0hD2LRWyZ.Pu5McW</td></tr><tr><td>id_cms_privileges</td><td>2</td><td>3</td></tr></tbody></table>', 1, '2020-01-25 13:57:20', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/7', 'Update data Create Report at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2020-01-25 13:59:17', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/logout', 'cheyma@crudbooster.com logout', '', 3, '2020-01-25 13:59:26', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-01-25 13:59:41', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Update data clients at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-01-25 13:59:58', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Update data pieces at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2020-01-25 14:00:21', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data Archive Rapport at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2020-01-25 14:00:37', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/8', 'Update data maintenance préventive at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2020-01-25 14:01:00', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/9', 'Update data Report at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2020-01-25 14:01:16', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-01-25 14:43:45', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-01-25 14:58:30', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/9', 'Update data Travailler pour aujourd\'hui at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Report</td><td>Travailler pour aujourd\'hui</td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2020-01-25 15:00:32', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/Report', 'Try view the data :name at Report', '', 2, '2020-01-25 15:00:43', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/Report', 'Try view the data :name at Report', '', 2, '2020-01-25 15:01:14', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/logout', 'malek@gmail.com logout', '', 2, '2020-01-25 15:01:20', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-01-25 15:01:24', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/Report/edit-save/1', 'Update data  at Report', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>client</td><td>2</td><td></td></tr><tr><td>technicien</td><td>2</td><td></td></tr><tr><td>secretaire</td><td>3</td><td></td></tr><tr><td>dateDebut</td><td></td><td></td></tr><tr><td>dateFin</td><td></td><td></td></tr><tr><td>probleme</td><td>ss</td><td></td></tr><tr><td>traitement</td><td></td><td></td></tr><tr><td>photo</td><td></td><td>uploads/2/2020-01/82317055_3127068453987607_3061895357983096832_n.jpg</td></tr><tr><td>mc</td><td></td><td>Maintenance curative</td></tr><tr><td>mp</td><td></td><td></td></tr><tr><td>inst</td><td></td><td></td></tr><tr><td>typeDeSortie</td><td></td><td></td></tr><tr><td>state</td><td>0</td><td>1</td></tr></tbody></table>', 2, '2020-01-25 15:04:24', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/9', 'Update data Travailler pour aujourd\'hui at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2020-01-25 15:10:14', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-01-25 15:12:44', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/ArchiveRapport/add', 'Try add data at Archive Rapport', '', 2, '2020-01-25 15:25:44', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/ArchiveRapport/add', 'Try add data at Archive Rapport', '', 2, '2020-01-25 15:27:00', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/ArchiveRapport/add', 'Try add data at Archive Rapport', '', 2, '2020-01-25 15:27:49', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/logout', 'malek@gmail.com logout', '', 2, '2020-01-25 15:28:32', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-01-25 15:28:35', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/logout', 'cheyma@crudbooster.com logout', '', 3, '2020-01-25 15:34:55', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-01-25 15:35:00', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-25 17:32:56', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-01-25 17:33:05', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/sites/add-save', 'Add New Data  at sites', '', 2, '2020-01-25 17:33:39', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-01-25 17:36:04', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-01-25 17:36:32', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/Report/edit-save/3', 'Update data  at Report', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>client</td><td>2</td><td></td></tr><tr><td>technicien</td><td>2</td><td></td></tr><tr><td>secretaire</td><td>3</td><td></td></tr><tr><td>dateDebut</td><td></td><td></td></tr><tr><td>dateFin</td><td></td><td></td></tr><tr><td>probleme</td><td>mana3rech</td><td></td></tr><tr><td>traitement</td><td></td><td></td></tr><tr><td>photo</td><td></td><td>uploads/2/2020-01/78699382_2574429935937838_3637391250178441216_o.jpg</td></tr><tr><td>mc</td><td></td><td></td></tr><tr><td>mp</td><td></td><td></td></tr><tr><td>inst</td><td></td><td></td></tr><tr><td>typeDeSortie</td><td></td><td></td></tr><tr><td>state</td><td>0</td><td>1</td></tr></tbody></table>', 2, '2020-01-25 17:37:57', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'malek@gmail.com logout', '', 2, '2020-01-25 17:42:57', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-25 17:43:03', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/StoragesEmp/edit-save/2', 'Update data  at piece termine', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-01-25 17:45:24', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-27 07:45:37', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-01-27 07:46:24', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-01-27 07:46:41', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/storages/edit-save/2', 'Update data  at storages', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>quantite</td><td>0</td><td>10</td></tr></tbody></table>', 2, '2020-01-27 08:26:30', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/logout', 'malek@gmail.com logout', '', 2, '2020-01-27 09:35:52', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-01-27 09:35:56', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/storages/edit-save/2', 'Update data  at storages', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>quantite</td><td>10</td><td>2</td></tr></tbody></table>', 2, '2020-01-27 12:28:06', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/StoragesEmp/add-save', 'Add New Data  at piece termine', '', 2, '2020-01-27 12:29:14', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/storages/edit-save/3', 'Update data  at storages', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>quantite</td><td>13</td><td>1</td></tr></tbody></table>', 2, '2020-01-27 12:29:24', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/StoragesEmp/edit-save/3', 'Update data  at piece termine', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 2, '2020-01-27 12:29:34', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-01-27 12:32:36', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-01-27 12:40:36', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/Report/edit-save/14', 'Update data  at Report', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>client</td><td>2</td><td></td></tr><tr><td>technicien</td><td>2</td><td></td></tr><tr><td>secretaire</td><td>3</td><td></td></tr><tr><td>dateDebut</td><td></td><td></td></tr><tr><td>dateFin</td><td></td><td></td></tr><tr><td>probleme</td><td>pane</td><td></td></tr><tr><td>traitement</td><td></td><td></td></tr><tr><td>photo</td><td></td><td>uploads/2/2020-01/78181991_489662934976007_3004158563594534912_n.jpg</td></tr><tr><td>mc</td><td></td><td></td></tr><tr><td>mp</td><td></td><td></td></tr><tr><td>inst</td><td></td><td>Installation</td></tr><tr><td>typeDeSortie</td><td></td><td>reparation</td></tr><tr><td>state</td><td>0</td><td>1</td></tr></tbody></table>', 2, '2020-01-27 12:41:13', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/storages/edit-save/3', 'Update data  at storages', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>quantite</td><td>8</td><td>2</td></tr></tbody></table>', 2, '2020-01-27 12:41:41', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/StoragesEmp/add-save', 'Add New Data  at piece termine', '', 2, '2020-01-27 12:42:00', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data rapport at Menu Management', '', 1, '2020-01-27 13:06:10', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/11', 'Update data rapport at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-01-27 13:07:40', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/10', 'Update data Pièces en rupture at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>piece termine</td><td>Pièces en rupture</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2020-01-27 13:10:16', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data Archive Rapport at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-plus</td><td>fa fa-archive</td></tr><tr><td>parent_id</td><td>11</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-01-27 13:10:41', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/9', 'Update data Travailler pour aujourd\'hui at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-cog</td></tr><tr><td>parent_id</td><td>11</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2020-01-27 13:11:09', NULL),
(101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/storages/edit-save/4', 'Update data  at storages', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>quantite</td><td>12</td><td>0</td></tr></tbody></table>', 2, '2020-01-27 13:12:55', NULL),
(102, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/storages/add-save', 'Add New Data  at storages', '', 2, '2020-01-27 13:14:16', NULL),
(103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-01-27 13:32:49', NULL),
(104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-01-27 13:34:00', NULL),
(105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data storage at Menu Management', '', 1, '2020-01-27 13:37:04', NULL),
(106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/12', 'Update data storage at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>aqua</td></tr><tr><td>icon</td><td></td><td>fa fa-wrench</td></tr></tbody></table>', 1, '2020-01-27 13:38:31', NULL),
(107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/10', 'Update data Pièces en rupture at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-warning</td></tr><tr><td>parent_id</td><td>12</td><td></td></tr></tbody></table>', 1, '2020-01-27 13:39:07', NULL),
(108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Update data pieces at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-th-list</td><td>fa fa-building</td></tr><tr><td>parent_id</td><td>12</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-01-27 13:40:01', NULL),
(109, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/8', 'Update data maintenance préventive at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-undo</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2020-01-27 13:42:10', NULL),
(110, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/8', 'Update data maintenance préventive at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2020-01-27 13:42:11', NULL),
(111, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Update data clients at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>green</td></tr></tbody></table>', 1, '2020-01-27 13:43:58', NULL),
(112, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/11', 'Update data rapport at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>aqua</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-01-27 13:44:16', NULL),
(113, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/9', 'Update data Travailler pour aujourd\'hui at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>light-blue</td></tr><tr><td>parent_id</td><td>11</td><td></td></tr></tbody></table>', 1, '2020-01-27 13:44:28', NULL),
(114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/7', 'Update data Create Report at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>aqua</td><td>light-blue</td></tr><tr><td>parent_id</td><td>11</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-01-27 13:44:39', NULL),
(115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data Archive Rapport at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>light-blue</td></tr><tr><td>parent_id</td><td>11</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2020-01-27 13:44:49', NULL),
(116, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data storages at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>green</td></tr><tr><td>parent_id</td><td>12</td><td></td></tr></tbody></table>', 1, '2020-01-27 13:45:35', NULL),
(117, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/10', 'Update data Pièces en rupture at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>green</td></tr><tr><td>parent_id</td><td>12</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2020-01-27 13:45:45', NULL),
(118, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data users at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>red</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2020-01-27 13:46:00', NULL),
(119, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/8', 'Update data maintenance préventive at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>red</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2020-01-27 13:46:23', NULL),
(120, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Update data clients at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>green</td><td>normal</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-01-27 13:47:14', NULL),
(121, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/Report/edit-save/16', 'Update data  at Report', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>client</td><td>2</td><td></td></tr><tr><td>technicien</td><td>2</td><td></td></tr><tr><td>secretaire</td><td>3</td><td></td></tr><tr><td>dateDebut</td><td></td><td></td></tr><tr><td>dateFin</td><td></td><td></td></tr><tr><td>probleme</td><td>qsq</td><td></td></tr><tr><td>traitement</td><td></td><td></td></tr><tr><td>photo</td><td></td><td>uploads/2/2020-01/78699382_2574429935937838_3637391250178441216_o.jpg</td></tr><tr><td>mc</td><td></td><td>Maintenance curative</td></tr><tr><td>mp</td><td></td><td></td></tr><tr><td>inst</td><td></td><td></td></tr><tr><td>typeDeSortie</td><td></td><td>reparation</td></tr><tr><td>state</td><td>0</td><td>1</td></tr></tbody></table>', 2, '2020-01-27 13:48:01', NULL),
(122, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/CreateReport', 'Try view the data :name at Create Report', '', 2, '2020-01-27 15:17:40', NULL),
(123, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/Report/edit-save/15', 'Update data  at Report', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>client</td><td>2</td><td></td></tr><tr><td>technicien</td><td>2</td><td></td></tr><tr><td>secretaire</td><td>3</td><td></td></tr><tr><td>dateDebut</td><td></td><td></td></tr><tr><td>dateFin</td><td></td><td></td></tr><tr><td>probleme</td><td>pane carte</td><td></td></tr><tr><td>traitement</td><td></td><td></td></tr><tr><td>photo</td><td></td><td>uploads/2/2020-01/20191130_114012.jpg</td></tr><tr><td>mc</td><td></td><td>Maintenance curative</td></tr><tr><td>mp</td><td></td><td></td></tr><tr><td>inst</td><td></td><td></td></tr><tr><td>typeDeSortie</td><td></td><td>reparation</td></tr><tr><td>state</td><td>0</td><td>1</td></tr></tbody></table>', 2, '2020-01-27 15:20:43', NULL),
(124, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/Report/edit-save/13', 'Update data  at Report', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>client</td><td>2</td><td></td></tr><tr><td>technicien</td><td>2</td><td></td></tr><tr><td>secretaire</td><td>3</td><td></td></tr><tr><td>dateDebut</td><td></td><td></td></tr><tr><td>dateFin</td><td></td><td></td></tr><tr><td>probleme</td><td>xq</td><td></td></tr><tr><td>traitement</td><td></td><td></td></tr><tr><td>photo</td><td></td><td>uploads/2/2020-01/78264789_2575018999212265_4880199067306557440_o.jpg</td></tr><tr><td>mc</td><td></td><td>Maintenance curative</td></tr><tr><td>mp</td><td></td><td></td></tr><tr><td>inst</td><td></td><td></td></tr><tr><td>typeDeSortie</td><td></td><td>reparation</td></tr><tr><td>state</td><td>0</td><td>1</td></tr></tbody></table>', 2, '2020-01-27 15:21:12', NULL),
(125, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-29 10:11:43', NULL),
(126, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-01-29 10:14:22', NULL),
(127, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-01-29 10:14:38', NULL),
(128, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/sites/edit-save/1', 'Update data  at sites', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>MP</td><td>3</td><td>6</td></tr></tbody></table>', 3, '2020-01-29 10:15:39', NULL),
(129, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/pieces/add-save', 'Add New Data proc at pieces', '', 3, '2020-01-29 11:39:47', NULL),
(130, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/clients/add-save', 'Add New Data  at clients', '', 3, '2020-01-29 11:42:14', NULL),
(131, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/sites/add-save', 'Add New Data  at sites', '', 3, '2020-01-29 11:45:43', NULL),
(132, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-01-29 11:46:45', NULL),
(133, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/storages/add-save', 'Add New Data  at storages', '', 2, '2020-01-29 11:54:49', NULL),
(134, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/Report/edit-save/17', 'Update data  at Report', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>client</td><td>3</td><td></td></tr><tr><td>site</td><td>3</td><td></td></tr><tr><td>technicien</td><td>2</td><td></td></tr><tr><td>secretaire</td><td>3</td><td></td></tr><tr><td>dateDebut</td><td></td><td></td></tr><tr><td>dateFin</td><td></td><td></td></tr><tr><td>probleme</td><td>HRIGA</td><td></td></tr><tr><td>traitement</td><td></td><td></td></tr><tr><td>photo</td><td></td><td>uploads/2/2020-01/82317055_3127068453987607_3061895357983096832_n.jpg</td></tr><tr><td>mc</td><td></td><td>Maintenance curative</td></tr><tr><td>mp</td><td></td><td></td></tr><tr><td>inst</td><td></td><td></td></tr><tr><td>typeDeSortie</td><td></td><td>devis</td></tr><tr><td>state</td><td>0</td><td>1</td></tr></tbody></table>', 2, '2020-01-29 11:55:33', NULL),
(135, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-01-29 13:05:53', NULL),
(136, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/StoragesEmp/add-save', 'Add New Data  at piece termine', '', 2, '2020-01-29 13:07:49', NULL),
(137, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/Report/edit-save/18', 'Update data  at Report', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>client</td><td>2</td><td></td></tr><tr><td>technicien</td><td>2</td><td></td></tr><tr><td>secretaire</td><td>3</td><td></td></tr><tr><td>dateDebut</td><td></td><td></td></tr><tr><td>dateFin</td><td></td><td></td></tr><tr><td>probleme</td><td>bhim</td><td></td></tr><tr><td>traitement</td><td></td><td></td></tr><tr><td>photo</td><td></td><td>uploads/2/2020-01/download.jfif</td></tr><tr><td>mc</td><td></td><td>Maintenance curative</td></tr><tr><td>mp</td><td></td><td></td></tr><tr><td>inst</td><td></td><td></td></tr><tr><td>typeDeSortie</td><td></td><td>devis</td></tr><tr><td>state</td><td>0</td><td>1</td></tr></tbody></table>', 2, '2020-01-29 13:09:17', NULL),
(138, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-29 19:22:07', NULL),
(139, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data users at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-01-29 19:23:36', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(140, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/12', 'Update data stocker at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>storage</td><td>stocker</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2020-01-29 19:26:44', NULL),
(141, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data stocker at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>storages</td><td>stocker</td></tr><tr><td>parent_id</td><td>12</td><td></td></tr></tbody></table>', 1, '2020-01-29 19:26:55', NULL),
(142, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/8', 'Update data maintenance préventive at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2020-01-29 19:27:43', NULL),
(143, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-01-29 19:31:13', NULL),
(144, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-01-29 19:31:32', NULL),
(145, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'Add New Data rapport at Statistic Builder', '', 1, '2020-01-29 19:33:32', NULL),
(146, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-30 16:17:58', NULL),
(147, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-30 16:34:54', NULL),
(148, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-30 16:36:51', NULL),
(149, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-31 11:14:33', NULL),
(150, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-01-31 11:15:12', NULL),
(151, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/logout', 'cheyma@crudbooster.com logout', '', 3, '2020-01-31 11:20:25', NULL),
(152, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-01-31 11:20:28', NULL),
(153, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-02-01 12:29:56', NULL),
(154, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'cheyma@crudbooster.com logout', '', 3, '2020-02-01 12:30:05', NULL),
(155, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-02-01 12:32:06', NULL),
(156, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/add-save', 'Add New Data malek at users', '', 3, '2020-02-01 12:32:52', NULL),
(157, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/sites/add-save', 'Add New Data  at sites', '', 3, '2020-02-01 12:33:51', NULL),
(158, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/sites/add-save', 'Add New Data  at sites', '', 3, '2020-02-01 12:34:39', NULL),
(159, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-02-01 12:35:04', NULL),
(160, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-02-01 12:35:28', NULL),
(161, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-02-01 12:35:30', NULL),
(162, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'cheyma@crudbooster.com logout', '', 3, '2020-02-01 12:35:53', NULL),
(163, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-02-01 12:35:59', NULL),
(164, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'malek@gmail.com logout', '', 4, '2020-02-01 12:56:38', NULL),
(165, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-01 12:56:48', NULL),
(166, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data users at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-02-01 12:57:04', NULL),
(167, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-01 12:57:42', NULL),
(168, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-02-01 12:57:48', NULL),
(169, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-02-02 13:54:33', NULL),
(170, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-02-02 13:58:56', NULL),
(171, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/pieces/delete-image', 'Try delete the image of proc data at pieces', '', 3, '2020-02-02 13:59:50', NULL),
(172, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'malek@gmail.com logout', '', 4, '2020-02-02 14:00:01', NULL),
(173, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-02 14:00:07', NULL),
(174, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/pieces/delete-image', 'Try delete the image of proc data at pieces', '', 3, '2020-02-02 14:00:53', NULL),
(175, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/logout', 'cheyma@crudbooster.com logout', '', 3, '2020-02-02 14:01:02', NULL),
(176, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-02-02 14:01:05', NULL),
(177, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/pieces/delete-image', 'Delete the image of proc at pieces', '', 3, '2020-02-02 14:03:19', NULL),
(178, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/pieces/edit-save/2', 'Update data proc at pieces', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/3/2020-02/912sv8ttofl_ac_sx425.jpg</td></tr></tbody></table>', 3, '2020-02-02 14:03:26', NULL),
(179, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/pieces/add-save', 'Add New Data ram at pieces', '', 3, '2020-02-02 14:04:26', NULL),
(180, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/pieces/delete-image', 'Delete the image of proc at pieces', '', 3, '2020-02-02 14:12:32', NULL),
(181, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-02-02 14:12:53', NULL),
(182, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-02-02 14:17:20', NULL),
(183, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-02-02 14:17:43', NULL),
(184, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/CreateReport/action-selected', 'Delete data 23,22,21,20,19 at Create Report', '', 3, '2020-02-02 14:19:05', NULL),
(185, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-02-02 14:21:24', NULL),
(186, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/logout', 'malek@gmail.com logout', '', 4, '2020-02-02 14:22:26', NULL),
(187, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-02-02 14:22:34', NULL),
(188, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/logout', 'cheyma@crudbooster.com logout', '', 3, '2020-02-02 14:26:23', NULL),
(189, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-02-02 14:26:27', NULL),
(190, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/logout', 'malek@gmail.com logout', '', 4, '2020-02-02 14:27:39', NULL),
(191, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-02-02 14:27:48', NULL),
(192, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-02-02 14:28:39', NULL),
(193, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-02-02 14:28:50', NULL),
(194, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/logout', 'cheyma@crudbooster.com logout', '', 3, '2020-02-02 14:29:00', NULL),
(195, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-02-02 14:29:10', NULL),
(196, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/Report/edit-save/26', 'Update data  at Report', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>client</td><td>2</td><td></td></tr><tr><td>site</td><td>5</td><td></td></tr><tr><td>technicien</td><td>4</td><td></td></tr><tr><td>secretaire</td><td>3</td><td></td></tr><tr><td>dateDebut</td><td></td><td></td></tr><tr><td>dateFin</td><td></td><td></td></tr><tr><td>probleme</td><td>ssss</td><td></td></tr><tr><td>traitement</td><td></td><td></td></tr><tr><td>photo</td><td></td><td>uploads/4/2020-02/82317055_3127068453987607_3061895357983096832_n.jpg</td></tr><tr><td>mc</td><td></td><td>Maintenance curative</td></tr><tr><td>mp</td><td></td><td></td></tr><tr><td>inst</td><td></td><td></td></tr><tr><td>typeDeSortie</td><td></td><td>devis</td></tr><tr><td>state</td><td>0</td><td>1</td></tr></tbody></table>', 4, '2020-02-02 14:29:55', NULL),
(197, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/Report/edit-save/25', 'Update data  at Report', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>client</td><td>2</td><td></td></tr><tr><td>site</td><td>5</td><td></td></tr><tr><td>technicien</td><td>4</td><td></td></tr><tr><td>secretaire</td><td>3</td><td></td></tr><tr><td>dateDebut</td><td></td><td></td></tr><tr><td>dateFin</td><td></td><td></td></tr><tr><td>probleme</td><td>qqq</td><td></td></tr><tr><td>traitement</td><td></td><td></td></tr><tr><td>photo</td><td></td><td>uploads/4/2020-02/82317055_3127068453987607_3061895357983096832_n.jpg</td></tr><tr><td>mc</td><td></td><td>Maintenance curative</td></tr><tr><td>mp</td><td></td><td></td></tr><tr><td>inst</td><td></td><td></td></tr><tr><td>typeDeSortie</td><td></td><td>reparation</td></tr><tr><td>state</td><td>0</td><td>1</td></tr></tbody></table>', 4, '2020-02-02 14:31:02', NULL),
(198, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/logout', 'malek@gmail.com logout', '', 4, '2020-02-02 14:31:08', NULL),
(199, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-02-02 14:31:12', NULL),
(200, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/logout', 'cheyma@crudbooster.com logout', '', 3, '2020-02-02 14:44:25', NULL),
(201, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-02-02 14:44:29', NULL),
(202, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/storages/add-save', 'Add New Data  at storages', '', 4, '2020-02-02 14:44:44', NULL),
(203, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/storages/add-save', 'Add New Data  at storages', '', 4, '2020-02-02 14:46:27', NULL),
(204, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/storages/add-save', 'Add New Data  at storages', '', 4, '2020-02-02 14:46:40', NULL),
(205, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/storages/edit-save/10', 'Update data  at storages', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>quantite</td><td>20</td><td>7</td></tr></tbody></table>', 4, '2020-02-02 14:50:50', NULL),
(206, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/storages/edit-save/9', 'Update data  at storages', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>quantite</td><td>5</td><td>0</td></tr></tbody></table>', 4, '2020-02-02 14:50:57', NULL),
(207, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/storages/edit-save/8', 'Update data  at storages', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>quantite</td><td>10</td><td>2</td></tr></tbody></table>', 4, '2020-02-02 14:51:17', NULL),
(208, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/CreateReport', 'Try view the data :name at Create Report', '', 4, '2020-02-02 15:05:42', NULL),
(209, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/CreateReport', 'Try view the data :name at Create Report', '', 4, '2020-02-02 15:10:06', NULL),
(210, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/CreateReport', 'Try view the data :name at Create Report', '', 4, '2020-02-02 15:16:42', NULL),
(211, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/CreateReport', 'Try view the data :name at Create Report', '', 4, '2020-02-02 15:17:47', NULL),
(212, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/StoragesEmp/edit-save/10', 'Update data  at piece termine', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>quantite</td><td>3</td><td>20</td></tr></tbody></table>', 4, '2020-02-02 15:20:15', NULL),
(213, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/StoragesEmp/edit-save/9', 'Update data  at piece termine', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>quantite</td><td>0</td><td>10</td></tr></tbody></table>', 4, '2020-02-02 15:20:28', NULL),
(214, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/StoragesEmp/edit-save/8', 'Update data  at piece termine', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>quantite</td><td>0</td><td>5</td></tr></tbody></table>', 4, '2020-02-02 15:20:36', NULL),
(215, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-02 15:20:46', NULL),
(216, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-02-02 15:20:51', NULL),
(217, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/Report/edit-save/24', 'Update data  at Report', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>client</td><td>2</td><td></td></tr><tr><td>site</td><td>5</td><td></td></tr><tr><td>technicien</td><td>4</td><td></td></tr><tr><td>secretaire</td><td>3</td><td></td></tr><tr><td>dateDebut</td><td></td><td></td></tr><tr><td>dateFin</td><td></td><td></td></tr><tr><td>probleme</td><td>qsdq</td><td></td></tr><tr><td>traitement</td><td></td><td></td></tr><tr><td>photo</td><td></td><td>uploads/4/2020-02/82317055_3127068453987607_3061895357983096832_n.jpg</td></tr><tr><td>mc</td><td></td><td></td></tr><tr><td>mp</td><td></td><td></td></tr><tr><td>inst</td><td></td><td></td></tr><tr><td>typeDeSortie</td><td></td><td>devis</td></tr><tr><td>state</td><td>0</td><td>1</td></tr></tbody></table>', 4, '2020-02-02 15:37:25', NULL),
(218, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-03 07:56:16', NULL),
(219, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-04 08:44:26', NULL),
(220, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-04 14:09:38', NULL),
(221, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-02-04 14:09:43', NULL),
(222, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-02-04 14:09:56', NULL),
(223, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-02-04 14:11:01', NULL),
(224, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/storages/edit-save/9', 'Update data  at storages', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>quantite</td><td>5</td><td>1</td></tr></tbody></table>', 4, '2020-02-04 14:12:32', NULL),
(225, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'cheyma@crudbooster.com logout', '', 3, '2020-02-04 14:13:12', NULL),
(226, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-04 14:13:17', NULL),
(227, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/delete-image', 'Delete the image of malek at users', '', 1, '2020-02-04 15:21:52', NULL),
(228, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/edit-save/4', 'Update data malek at users', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2020-02/72671405_2437736706347517_7680354707340001280_o.jpg</td></tr><tr><td>password</td><td>$2y$10$T8f8sPYNhLsgTSxmAbN/qO3tZeLzPn0zYLpX/P4voZ0SU0y/xNiwm</td><td>$2y$10$uViTP2RsSKJBw638J1bvwu1rbg0uukHpd8HDh5uz9sfvaZGzez/l2</td></tr></tbody></table>', 1, '2020-02-04 15:22:25', NULL),
(229, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-02-04 18:00:28', NULL),
(230, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'cheyma@crudbooster.com logout', '', 3, '2020-02-04 18:15:31', NULL),
(231, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-04 18:15:35', NULL),
(232, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-04 18:20:10', NULL),
(233, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-02-04 18:20:15', NULL),
(234, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-02-04 18:21:00', NULL),
(235, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'cheyma@crudbooster.com logout', '', 3, '2020-02-04 18:21:05', NULL),
(236, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-02-04 18:21:15', NULL),
(237, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'cheyma@crudbooster.com logout', '', 3, '2020-02-04 18:21:20', NULL),
(238, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-04 18:23:42', NULL),
(239, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-04 18:23:46', NULL),
(240, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-04 18:24:08', NULL),
(241, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-04 18:24:12', NULL),
(242, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-02-04 18:25:16', NULL),
(243, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/cms_users/edit-save/4', 'Update data malek at users', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$BBF54O/FTPOjw/VH3KlZU.kaQeX1oocMPkoVEIP9jllcfDxuxJZUC</td><td>$2y$10$gNmbcxclETIsV/WBAs44teUoi7A8AHUglXfAf5N0bjI7Pc1PR0hYi</td></tr></tbody></table>', 3, '2020-02-04 18:25:34', NULL),
(244, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-02-04 18:25:41', NULL),
(245, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-02-04 19:06:09', NULL),
(246, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'cheyma@crudbooster.com logout', '', 3, '2020-02-04 20:25:07', NULL),
(247, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-02-04 20:25:11', NULL),
(248, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-05 14:35:33', NULL),
(249, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-06 07:30:18', NULL),
(250, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-06 21:21:18', NULL),
(251, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-07 07:22:11', NULL),
(252, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-09 10:16:54', NULL),
(253, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-09 13:55:17', NULL),
(254, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-02-09 13:55:29', NULL),
(255, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-02-09 13:55:40', NULL),
(256, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'cheyma@crudbooster.com logout', '', 3, '2020-02-09 13:55:50', NULL),
(257, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/logout', 'malek@gmail.com logout', '', 4, '2020-02-09 13:56:04', NULL),
(258, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-02-09 13:56:08', NULL),
(259, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-02-09 13:56:13', NULL),
(260, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-02-09 13:57:21', NULL),
(261, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/storages/edit-save/9', 'Update data  at storages', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>quantite</td><td>1</td><td>3</td></tr></tbody></table>', 4, '2020-02-09 13:58:40', NULL),
(262, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/Report/edit-save/40', 'Update data  at Report', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>client</td><td>2</td><td></td></tr><tr><td>site</td><td>5</td><td></td></tr><tr><td>technicien</td><td>4</td><td></td></tr><tr><td>secretaire</td><td>3</td><td></td></tr><tr><td>dateDebut</td><td></td><td></td></tr><tr><td>dateFin</td><td></td><td></td></tr><tr><td>probleme</td><td>pp</td><td></td></tr><tr><td>traitement</td><td></td><td></td></tr><tr><td>photo</td><td></td><td>uploads/4/2020-02/78181991_489662934976007_3004158563594534912_n_copy.jpg</td></tr><tr><td>mc</td><td></td><td>Maintenance curative</td></tr><tr><td>mp</td><td></td><td></td></tr><tr><td>inst</td><td></td><td></td></tr><tr><td>typeDeSortie</td><td></td><td>reparation</td></tr><tr><td>state</td><td>0</td><td>1</td></tr></tbody></table>', 4, '2020-02-09 13:59:54', NULL),
(263, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'malek@gmail.com logout', '', 4, '2020-02-09 16:43:21', NULL),
(264, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-09 16:43:30', NULL),
(265, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-10 07:45:48', NULL),
(266, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-11 10:05:30', NULL),
(267, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-11 10:23:48', NULL),
(268, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-02-11 10:23:54', NULL),
(269, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'malek@gmail.com logout', '', 4, '2020-02-11 10:24:57', NULL),
(270, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-11 10:25:06', NULL),
(271, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-14 13:15:56', NULL),
(272, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-02-17 08:54:04', NULL),
(273, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-02-17 08:54:42', NULL),
(274, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'cheyma@crudbooster.com logout', '', 3, '2020-02-17 08:54:52', NULL),
(275, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-02-17 08:54:58', NULL),
(276, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'malek@gmail.com logout', '', 4, '2020-02-17 08:56:07', NULL),
(277, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-17 08:56:15', NULL),
(278, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-17 08:57:47', NULL),
(279, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-02-17 08:57:51', NULL),
(280, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-02-17 12:18:57', NULL),
(281, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/sites/add-save', 'Add New Data  at sites', '', 3, '2020-02-17 12:20:31', NULL),
(282, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-02-17 12:21:24', NULL),
(283, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'cheyma@crudbooster.com logout', '', 3, '2020-02-17 12:21:46', NULL),
(284, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-02-17 12:21:55', NULL),
(285, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/storages/edit-save/9', 'Update data  at storages', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>quantite</td><td>1</td><td>4</td></tr></tbody></table>', 4, '2020-02-17 12:23:01', NULL),
(286, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/Report/edit-save/42', 'Update data  at Report', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>client</td><td>2</td><td></td></tr><tr><td>site</td><td>6</td><td></td></tr><tr><td>technicien</td><td>4</td><td></td></tr><tr><td>secretaire</td><td>3</td><td></td></tr><tr><td>dateDebut</td><td></td><td></td></tr><tr><td>dateFin</td><td></td><td></td></tr><tr><td>probleme</td><td>panne</td><td></td></tr><tr><td>traitement</td><td></td><td></td></tr><tr><td>photo</td><td></td><td>uploads/4/2020-02/82317055_3127068453987607_3061895357983096832_n.jpg</td></tr><tr><td>mc</td><td></td><td>Maintenance curative</td></tr><tr><td>mp</td><td></td><td></td></tr><tr><td>inst</td><td></td><td></td></tr><tr><td>typeDeSortie</td><td></td><td>devis</td></tr><tr><td>state</td><td>0</td><td>1</td></tr></tbody></table>', 4, '2020-02-17 12:24:32', NULL),
(287, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/StoragesEmp/edit-save/9', 'Update data  at piece termine', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>quantite</td><td>1</td><td>2</td></tr></tbody></table>', 4, '2020-02-17 12:24:54', NULL),
(288, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-02-21 11:31:48', NULL),
(289, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-02-23 16:57:01', NULL),
(290, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'cheyma@crudbooster.com logout', '', 3, '2020-02-23 17:01:37', NULL),
(291, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-02-23 17:01:44', NULL),
(292, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'malek@gmail.com logout', '', 4, '2020-02-23 17:52:01', NULL),
(293, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-02-23 17:52:06', NULL),
(294, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-28 09:56:06', NULL),
(295, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-02-29 18:09:38', NULL),
(296, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-02-29 18:10:56', NULL),
(297, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/42', 'Delete data 42 at Archive Rapport', '', 3, '2020-02-29 18:16:48', NULL),
(298, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/42', 'Delete data 42 at Archive Rapport', '', 3, '2020-02-29 18:19:27', NULL),
(299, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/42', 'Delete data 42 at Archive Rapport', '', 3, '2020-02-29 18:19:39', NULL),
(300, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/42', 'Delete data 42 at Archive Rapport', '', 3, '2020-02-29 18:19:49', NULL),
(301, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/42', 'Delete data 42 at Archive Rapport', '', 3, '2020-02-29 18:20:34', NULL),
(302, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/42', 'Delete data 42 at Archive Rapport', '', 3, '2020-02-29 18:25:58', NULL),
(303, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/42', 'Delete data 42 at Archive Rapport', '', 3, '2020-02-29 18:26:10', NULL),
(304, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/42', 'Delete data 42 at Archive Rapport', '', 3, '2020-02-29 18:26:27', NULL),
(305, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/42', 'Delete data 42 at Archive Rapport', '', 3, '2020-02-29 18:26:34', NULL),
(306, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/42', 'Delete data 42 at Archive Rapport', '', 3, '2020-02-29 18:26:47', NULL),
(307, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/42', 'Delete data 42 at Archive Rapport', '', 3, '2020-02-29 18:26:58', NULL),
(308, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/42', 'Delete data 42 at Archive Rapport', '', 3, '2020-02-29 18:30:19', NULL),
(309, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/42', 'Delete data 42 at Archive Rapport', '', 3, '2020-02-29 18:30:34', NULL),
(310, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/40', 'Delete data 40 at Archive Rapport', '', 3, '2020-02-29 18:32:21', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(311, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/40', 'Delete data 40 at Archive Rapport', '', 3, '2020-02-29 18:32:38', NULL),
(312, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/40', 'Delete data 40 at Archive Rapport', '', 3, '2020-02-29 18:32:51', NULL),
(313, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/40', 'Delete data 40 at Archive Rapport', '', 3, '2020-02-29 18:33:03', NULL),
(314, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/40', 'Delete data 40 at Archive Rapport', '', 3, '2020-02-29 18:33:07', NULL),
(315, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/40', 'Delete data 40 at Archive Rapport', '', 3, '2020-02-29 18:33:13', NULL),
(316, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/24', 'Delete data 24 at Archive Rapport', '', 3, '2020-02-29 18:33:52', NULL),
(317, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/24', 'Delete data 24 at Archive Rapport', '', 3, '2020-02-29 18:34:14', NULL),
(318, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/24', 'Delete data 24 at Archive Rapport', '', 3, '2020-02-29 18:34:31', NULL),
(319, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/24', 'Delete data 24 at Archive Rapport', '', 3, '2020-02-29 18:34:54', NULL),
(320, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/24', 'Delete data 24 at Archive Rapport', '', 3, '2020-02-29 18:35:27', NULL),
(321, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-02-29 18:36:16', NULL),
(322, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-03-04 12:57:42', NULL),
(323, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/Report/edit-save/43', 'Update data  at Report', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>client</td><td>2</td><td></td></tr><tr><td>site</td><td>6</td><td></td></tr><tr><td>technicien</td><td>4</td><td></td></tr><tr><td>secretaire</td><td>3</td><td></td></tr><tr><td>dateDebut</td><td></td><td></td></tr><tr><td>dateFin</td><td></td><td></td></tr><tr><td>probleme</td><td>test</td><td></td></tr><tr><td>traitement</td><td></td><td></td></tr><tr><td>photo</td><td></td><td>uploads/4/2020-03/82317055_3127068453987607_3061895357983096832_n.jpg</td></tr><tr><td>mc</td><td></td><td></td></tr><tr><td>mp</td><td></td><td>maintenance préventive</td></tr><tr><td>inst</td><td></td><td></td></tr><tr><td>typeDeSortie</td><td></td><td>devis</td></tr><tr><td>state</td><td>0</td><td>1</td></tr></tbody></table>', 4, '2020-03-04 12:58:40', NULL),
(324, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'malek@gmail.com logout', '', 4, '2020-03-04 13:32:28', NULL),
(325, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-03-04 13:32:34', NULL),
(326, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-03-05 13:18:25', NULL),
(327, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'malek@gmail.com logout', '', 4, '2020-03-05 13:18:51', NULL),
(328, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-03-05 13:18:55', NULL),
(329, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-03-05 13:19:23', NULL),
(330, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/25', 'Delete data 25 at Archive Rapport', '', 3, '2020-03-05 13:19:57', NULL),
(331, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/43', 'Delete data 43 at Archive Rapport', '', 3, '2020-03-05 13:21:10', NULL),
(332, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'http://127.0.0.1:8000/admin/Report/edit-save/41', 'Update data  at Report', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>client</td><td>2</td><td></td></tr><tr><td>site</td><td>5</td><td></td></tr><tr><td>technicien</td><td>4</td><td></td></tr><tr><td>secretaire</td><td>3</td><td></td></tr><tr><td>dateDebut</td><td></td><td></td></tr><tr><td>dateFin</td><td></td><td></td></tr><tr><td>probleme</td><td>hhh</td><td></td></tr><tr><td>traitement</td><td></td><td></td></tr><tr><td>photo</td><td></td><td>uploads/4/2020-03/72671405_2437736706347517_7680354707340001280_o.jpg</td></tr><tr><td>mc</td><td></td><td></td></tr><tr><td>mp</td><td></td><td></td></tr><tr><td>inst</td><td></td><td>Installation</td></tr><tr><td>typeDeSortie</td><td></td><td>reparation</td></tr><tr><td>state</td><td>0</td><td>1</td></tr></tbody></table>', 4, '2020-03-05 13:22:19', NULL),
(333, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/ArchiveRapport/delete/41', 'Delete data 41 at Archive Rapport', '', 3, '2020-03-05 13:22:48', NULL),
(334, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-03-06 11:34:18', NULL),
(335, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-03-06 11:34:20', NULL),
(336, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-03-06 11:36:10', NULL),
(337, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'cheyma@crudbooster.com logout', '', 3, '2020-03-06 11:37:02', NULL),
(338, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-03-06 11:37:07', NULL),
(339, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-03-06 12:06:02', NULL),
(340, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'cheyma@crudbooster.com logout', '', 3, '2020-03-06 12:06:15', NULL),
(341, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-03-06 12:06:22', NULL),
(342, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'cheyma@crudbooster.com login with IP Address 127.0.0.1', '', 3, '2020-03-11 12:56:36', NULL),
(343, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'http://127.0.0.1:8000/admin/login', 'malek@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-03-11 12:56:46', NULL),
(344, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/CreateReport/add-save', 'Add New Data  at Create Report', '', 3, '2020-03-11 12:57:38', NULL),
(345, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 'http://127.0.0.1:8000/admin/Report/edit-save/45', 'Update data  at Report', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>client</td><td>2</td><td></td></tr><tr><td>site</td><td>6</td><td></td></tr><tr><td>technicien</td><td>4</td><td></td></tr><tr><td>secretaire</td><td>3</td><td></td></tr><tr><td>dateDebut</td><td></td><td></td></tr><tr><td>dateFin</td><td></td><td></td></tr><tr><td>probleme</td><td>problem</td><td></td></tr><tr><td>traitement</td><td></td><td></td></tr><tr><td>photo</td><td></td><td>uploads/4/2020-03/82317055_3127068453987607_3061895357983096832_n.jpg</td></tr><tr><td>mc</td><td></td><td></td></tr><tr><td>mp</td><td></td><td></td></tr><tr><td>inst</td><td></td><td>Installation</td></tr><tr><td>typeDeSortie</td><td></td><td>devis</td></tr><tr><td>state</td><td>0</td><td>1</td></tr></tbody></table>', 4, '2020-03-11 13:00:41', NULL),
(346, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'cheyma@crudbooster.com logout', '', 3, '2020-03-11 13:05:37', NULL),
(347, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-03-11 13:05:49', NULL),
(348, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-03-11 13:18:22', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'users', 'Route', 'AdminCmsUsers1ControllerGetIndex', 'red', 'fa fa-users', 0, 1, 0, 1, 1, '2020-01-25 11:25:26', '2020-02-01 12:57:04'),
(2, 'clients', 'Route', 'AdminClientsControllerGetIndex', 'normal', 'fa fa-users', 0, 1, 0, 1, 2, '2020-01-25 11:29:49', '2020-01-27 13:47:14'),
(3, 'sites', 'Route', 'AdminSitesControllerGetIndex', NULL, 'fa fa-play', 0, 1, 0, 1, 3, '2020-01-25 11:37:18', NULL),
(4, 'pieces', 'Route', 'AdminPiecesControllerGetIndex', 'green', 'fa fa-building', 12, 1, 0, 1, 2, '2020-01-25 11:43:30', '2020-01-27 13:40:01'),
(5, 'stocker', 'Route', 'AdminStoragesControllerGetIndex', 'green', 'fa fa-home', 12, 1, 0, 1, 1, '2020-01-25 12:11:39', '2020-01-29 19:26:55'),
(6, 'Archive Rapport', 'Route', 'AdminArchiveRapportControllerGetIndex', 'light-blue', 'fa fa-archive', 11, 1, 0, 1, 3, '2020-01-25 12:16:57', '2020-01-27 13:44:48'),
(7, 'Create Report', 'Route', 'AdminCreateReportControllerGetIndex', 'light-blue', 'fa fa-pencil', 11, 1, 0, 1, 2, '2020-01-25 12:20:03', '2020-01-27 13:44:38'),
(8, 'maintenance préventive', 'Route', 'AdminSites19ControllerGetIndex', 'red', 'fa fa-undo', 0, 1, 0, 1, 6, '2020-01-25 12:24:37', '2020-01-29 19:27:43'),
(9, 'Travailler pour aujourd\'hui', 'Route', 'AdminReportControllerGetIndex', 'light-blue', 'fa fa-cog', 11, 1, 0, 1, 1, '2020-01-25 12:29:08', '2020-01-27 13:44:28'),
(10, 'Pièces en rupture', 'Route', 'AdminStoragesEmpControllerGetIndex', 'green', 'fa fa-warning', 12, 1, 0, 1, 3, '2020-01-25 12:31:47', '2020-01-27 13:45:45'),
(11, 'rapport', 'Module', 'CreateReport', 'aqua', 'fa fa-book', 0, 1, 0, 1, 4, '2020-01-27 13:06:10', '2020-01-27 13:44:16'),
(12, 'stocker', 'Module', 'storages', 'aqua', 'fa fa-wrench', 0, 1, 0, 1, 5, '2020-01-27 13:37:04', '2020-01-29 19:26:43');

-- --------------------------------------------------------

--
-- Structure de la table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(3, 3, 1),
(61, NULL, 3),
(62, NULL, 1),
(63, NULL, 2),
(69, 4, 3),
(70, 4, 1),
(71, 4, 2),
(81, 11, 3),
(82, 11, 1),
(83, 11, 2),
(84, 9, 1),
(85, 9, 2),
(86, 7, 3),
(87, 7, 1),
(88, 6, 3),
(89, 6, 1),
(90, 6, 2),
(93, 10, 1),
(94, 10, 2),
(99, 2, 3),
(100, 2, 1),
(101, 2, 2),
(104, 12, 3),
(105, 12, 1),
(106, 12, 2),
(107, 5, 1),
(108, 5, 2),
(109, 8, 1),
(110, 8, 2),
(111, 1, 3),
(112, 1, 1),
(113, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2020-01-25 11:12:45', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2020-01-25 11:12:45', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2020-01-25 11:12:45', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2020-01-25 11:12:45', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2020-01-25 11:12:45', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2020-01-25 11:12:45', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2020-01-25 11:12:45', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2020-01-25 11:12:45', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2020-01-25 11:12:45', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2020-01-25 11:12:45', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2020-01-25 11:12:45', NULL, NULL),
(12, 'users', 'fa fa-users', 'cms_users', 'cms_users', 'AdminCmsUsers1Controller', 0, 0, '2020-01-25 11:25:26', NULL, NULL),
(13, 'clients', 'fa fa-users', 'clients', 'clients', 'AdminClientsController', 0, 0, '2020-01-25 11:29:49', NULL, NULL),
(14, 'sites', 'fa fa-play', 'sites', 'sites', 'AdminSitesController', 0, 0, '2020-01-25 11:37:18', NULL, NULL),
(15, 'pieces', 'fa fa-play', 'pieces', 'pieces', 'AdminPiecesController', 0, 0, '2020-01-25 11:43:30', NULL, NULL),
(16, 'storages', 'fa fa-home', 'storages', 'storages', 'AdminStoragesController', 0, 0, '2020-01-25 12:11:39', NULL, NULL),
(17, 'Archive Rapport', 'fa fa-plus', 'ArchiveRapport', 'report', 'AdminArchiveRapportController', 0, 0, '2020-01-25 12:16:57', NULL, NULL),
(18, 'Create Report', 'fa fa-plus', 'CreateReport', 'report', 'AdminCreateReportController', 0, 0, '2020-01-25 12:20:03', NULL, NULL),
(19, 'maintenance préventive', 'fa fa-plus', 'sites19', 'sites', 'AdminSites19Controller', 0, 0, '2020-01-25 12:24:37', NULL, NULL),
(20, 'Report', 'fa fa-plus', 'Report', 'report', 'AdminReportController', 0, 0, '2020-01-25 12:29:08', NULL, NULL),
(21, 'piece termine', 'fa fa-plus', 'StoragesEmp', 'storages', 'AdminStoragesEmpController', 0, 0, '2020-01-25 12:31:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_notifications`
--

INSERT INTO `cms_notifications` (`id`, `id_cms_users`, `content`, `url`, `is_read`, `created_at`, `updated_at`) VALUES
(2, 2, 'il ya un rapport pour aujourd\'hui', 'http://127.0.0.1:8000/admin/Report', 1, '2020-01-27 13:34:00', NULL),
(3, 2, 'Il y a une pièce qui est (presque) terminée', 'http://127.0.0.1:8000/admin/StoragesEmp', 1, '2020-01-27 15:21:12', NULL),
(4, 2, 'il ya un rapport pour aujourd\'hui', 'http://127.0.0.1:8000/admin/Report', 1, '2020-01-29 11:46:45', NULL),
(5, 2, 'Il y a une pièce qui est (presque) terminée', 'http://127.0.0.1:8000/admin/StoragesEmp', 1, '2020-01-29 11:55:33', NULL),
(6, 2, 'il ya un rapport pour aujourd\'hui', 'http://127.0.0.1:8000/admin/Report', 1, '2020-01-29 13:05:53', NULL),
(7, 2, 'Il y a une pièce qui est (presque) terminée', 'http://127.0.0.1:8000/admin/StoragesEmp', 1, '2020-01-29 13:09:17', NULL),
(8, 4, 'il ya un rapport pour aujourd\'hui', 'http://127.0.0.1:8000/admin/Report', 1, '2020-02-01 12:35:04', NULL),
(9, 4, 'il ya un rapport pour aujourd\'hui', 'http://127.0.0.1:8000/admin/Report', 1, '2020-02-01 12:35:28', NULL),
(10, 4, 'il ya un rapport pour aujourd\'hui', 'http://127.0.0.1:8000/admin/Report', 1, '2020-02-01 12:35:29', NULL),
(11, 4, 'il ya un rapport pour aujourd\'hui', 'http://127.0.0.1:8000/admin/Report', 1, '2020-02-02 14:12:53', NULL),
(12, 4, 'il ya un rapport pour aujourd\'hui', 'http://127.0.0.1:8000/admin/Report', 1, '2020-02-02 14:17:43', NULL),
(13, 4, 'il ya un rapport pour aujourd\'hui', 'http://127.0.0.1:8000/admin/Report', 1, '2020-02-02 14:21:24', NULL),
(14, 4, 'il ya un rapport pour aujourd\'hui', 'http://127.0.0.1:8000/admin/Report', 1, '2020-02-02 14:28:39', NULL),
(15, 4, 'il ya un rapport pour aujourd\'hui', 'http://127.0.0.1:8000/admin/Report', 1, '2020-02-02 14:28:50', NULL),
(16, 4, 'Il y a une pièce qui est (presque) terminée', 'http://127.0.0.1:8000/admin/StoragesEmp', 1, '2020-02-02 15:37:25', NULL),
(17, 4, 'il ya un rapport pour aujourd\'hui', 'http://127.0.0.1:8000/admin/Report', 1, '2020-02-04 14:11:01', NULL),
(18, 4, 'il ya un rapport pour aujourd\'hui', 'http://127.0.0.1:8000/admin/Report', 1, '2020-02-04 18:21:00', NULL),
(19, 4, 'il ya un rapport pour aujourd\'hui', 'http://127.0.0.1:8000/admin/Report', 1, '2020-02-04 19:06:09', NULL),
(20, 4, 'il ya un rapport pour aujourd\'hui', 'http://127.0.0.1:8000/admin/Report', 1, '2020-02-09 13:57:21', NULL),
(21, 4, 'Il y a une pièce qui est (presque) terminée', 'http://127.0.0.1:8000/admin/StoragesEmp', 1, '2020-02-09 13:59:54', NULL),
(22, 4, 'il ya un rapport pour aujourd\'hui', 'http://127.0.0.1:8000/admin/Report', 1, '2020-02-17 08:54:42', NULL),
(23, 4, 'il ya un rapport pour aujourd\'hui', 'http://127.0.0.1:8000/admin/Report', 1, '2020-02-17 12:21:24', NULL),
(24, 4, 'Il y a une pièce qui est (presque) terminée', 'http://127.0.0.1:8000/admin/StoragesEmp', 1, '2020-02-17 12:24:32', NULL),
(25, 4, 'il ya un rapport pour aujourd\'hui', 'http://127.0.0.1:8000/admin/Report', 1, '2020-02-29 18:36:15', NULL),
(26, 4, 'Il y a une pièce qui est (presque) terminée', 'http://127.0.0.1:8000/admin/StoragesEmp', 1, '2020-03-04 12:58:40', NULL),
(27, 4, 'il ya un rapport pour aujourd\'hui', 'http://127.0.0.1:8000/admin/Report', 1, '2020-03-06 11:36:10', NULL),
(28, 4, 'il ya un rapport pour aujourd\'hui', 'http://127.0.0.1:8000/admin/Report', 1, '2020-03-11 12:57:38', NULL),
(29, 4, 'Il y a une pièce qui est (presque) terminée', 'http://127.0.0.1:8000/admin/StoragesEmp', 1, '2020-03-11 13:00:41', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-black', '2020-01-25 11:12:45', NULL),
(2, 'technicien', 0, 'skin-blue-light', NULL, NULL),
(3, 'secretaire', 0, 'skin-green-light', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(85, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(86, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(87, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(88, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(89, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(90, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(91, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(92, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(93, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(94, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(95, 1, 1, 1, 1, 1, 1, 4, NULL, NULL),
(105, 1, 1, 1, 1, 0, 2, 17, NULL, NULL),
(106, 1, 1, 1, 1, 0, 2, 13, NULL, NULL),
(107, 1, 1, 1, 1, 0, 2, 19, NULL, NULL),
(108, 1, 1, 1, 1, 0, 2, 21, NULL, NULL),
(109, 1, 0, 1, 0, 0, 2, 15, NULL, NULL),
(110, 1, 0, 1, 1, 0, 2, 20, NULL, NULL),
(111, 1, 1, 1, 1, 1, 2, 14, NULL, NULL),
(112, 1, 1, 1, 1, 1, 2, 16, NULL, NULL),
(113, 1, 0, 1, 0, 0, 2, 12, NULL, NULL),
(114, 1, 0, 1, 1, 1, 3, 17, NULL, NULL),
(115, 1, 1, 1, 1, 0, 3, 13, NULL, NULL),
(116, 1, 1, 1, 1, 1, 3, 18, NULL, NULL),
(117, 1, 0, 1, 0, 0, 3, 21, NULL, NULL),
(118, 1, 1, 1, 1, 1, 3, 15, NULL, NULL),
(119, 1, 1, 1, 1, 0, 3, 20, NULL, NULL),
(120, 1, 1, 1, 1, 0, 3, 14, NULL, NULL),
(121, 1, 0, 1, 0, 0, 3, 16, NULL, NULL),
(122, 1, 1, 1, 1, 0, 3, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2020-01-25 11:12:45', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2020-01-25 11:12:45', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', 'uploads/2020-01/548598520156966fc50f41aaaa980039.jpg', 'upload_image', NULL, NULL, '2020-01-25 11:12:45', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2020-01-25 11:12:45', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2020-01-25 11:12:45', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2020-01-25 11:12:45', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2020-01-25 11:12:45', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2020-01-25 11:12:45', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2020-01-25 11:12:45', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'NCR', 'text', NULL, NULL, '2020-01-25 11:12:45', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2020-01-25 11:12:45', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2020-01/0fd7558423efd235049fdf7b34272194.png', 'upload_image', NULL, NULL, '2020-01-25 11:12:45', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2020-01/36a0ad382d1540e0559e9650948983af.png', 'upload_image', NULL, NULL, '2020-01-25 11:12:45', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2020-01-25 11:12:45', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2020-01-25 11:12:45', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2020-01-25 11:12:45', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Structure de la table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'rapport', 'rapport', '2020-01-29 19:33:32', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, 'c73102e179fec74c05f49a908dd27339', 'smallbox', 'area1', 0, NULL, '{\"name\":\"rapport termine\",\"icon\":\"cloud-done\",\"color\":\"bg-green\",\"link\":\"ArchiveRapport\",\"sql\":\"SELECT COUNT(*) FROM `report` where `state`=1\"}', '2020-01-29 19:40:46', NULL),
(2, 1, '6b08fdf424cca8f9aa478229e6cc2818', 'smallbox', 'area2', 0, 'Untitled', NULL, '2020-01-29 19:40:48', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `function` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TheState` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cin` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`, `function`, `TheState`, `cin`, `phone`, `LastName`) VALUES
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$2nzWESqygxK0wzDtd1BvmeHk5tlV7ozS62KcRG4v.aoTkzVvVlSmW', 1, '2020-01-25 11:12:45', NULL, 'Active', '', '', '', '', ''),
(3, 'bahroun', 'uploads/1/2020-01/download_1.png', 'cheyma@crudbooster.com', '$2y$10$k8IJP2CQl3ta5dQItY3JXOGoq1bZQpStYNiMR0hD2LRWyZ.Pu5McW', 3, '2020-01-25 13:48:38', '2020-01-25 13:57:20', 'Active', 'secretaire', 'djerba', '123987654', '123654798', 'cheyma'),
(4, 'malek', 'uploads/1/2020-02/72671405_2437736706347517_7680354707340001280_o.jpg', 'malek@gmail.com', '$2y$10$gNmbcxclETIsV/WBAs44teUoi7A8AHUglXfAf5N0bjI7Pc1PR0hYi', 2, '2020-02-01 12:32:52', '2020-02-04 18:25:34', 'Active', 'technicien', 'djerba', '12345684', '324654684', 'khannoussi');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);

-- --------------------------------------------------------

--
-- Structure de la table `pieces`
--

CREATE TABLE `pieces` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `reference` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `pieces`
--

INSERT INTO `pieces` (`id`, `name`, `photo`, `reference`) VALUES
(1, 'gtx2080', 'uploads/1/2020-01/download.jfif', 'ref1'),
(2, 'proc', NULL, 'RU567789'),
(3, 'ram', 'uploads/3/2020-02/wholesale_compatible_memory_ram_1gb_2gb_4gbjpg_350x350.jpg', 'ref654');

-- --------------------------------------------------------

--
-- Structure de la table `report`
--

CREATE TABLE `report` (
  `id` int(10) NOT NULL,
  `client` int(10) NOT NULL,
  `site` int(10) NOT NULL,
  `technicien` int(10) NOT NULL,
  `secretaire` int(10) DEFAULT NULL,
  `dateDebut` datetime DEFAULT NULL,
  `dateFin` datetime DEFAULT NULL,
  `probleme` varchar(255) DEFAULT NULL,
  `traitement` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `mc` varchar(255) DEFAULT NULL,
  `mp` varchar(255) DEFAULT NULL,
  `inst` varchar(255) DEFAULT NULL,
  `typeDeSortie` varchar(255) DEFAULT NULL,
  `state` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `report`
--

INSERT INTO `report` (`id`, `client`, `site`, `technicien`, `secretaire`, `dateDebut`, `dateFin`, `probleme`, `traitement`, `photo`, `mc`, `mp`, `inst`, `typeDeSortie`, `state`) VALUES
(26, 2, 5, 4, 3, '2020-02-02 12:00:00', '2020-02-02 01:30:00', 'ssss', 'n', 'uploads/4/2020-02/82317055_3127068453987607_3061895357983096832_n.jpg', 'Maintenance curative', NULL, NULL, 'devis', 1),
(36, 3, 4, 4, NULL, '2020-02-02 12:00:00', '2020-02-02 11:59:00', NULL, 'pp', NULL, 'Maintenance curative', 'maintenance préventive', NULL, 'devis', 1),
(37, 2, 5, 4, 3, NULL, NULL, 'qq', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(38, 3, 4, 4, 3, NULL, NULL, 'pane', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(39, 3, 4, 4, 3, NULL, NULL, 'jghj', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(44, 3, 4, 4, 3, NULL, NULL, 'pane', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(45, 2, 6, 4, 3, '2020-03-11 12:00:00', '2020-03-11 11:59:00', 'problem', 'traitemente', 'uploads/4/2020-03/82317055_3127068453987607_3061895357983096832_n.jpg', '', NULL, 'Installation', 'devis', 1);

-- --------------------------------------------------------

--
-- Structure de la table `rpiece`
--

CREATE TABLE `rpiece` (
  `id` int(10) NOT NULL,
  `id_Report` int(10) NOT NULL,
  `id_Piece` int(10) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `rpiece`
--

INSERT INTO `rpiece` (`id`, `id_Report`, `id_Piece`, `quantity`) VALUES
(16, 36, 1, 1),
(17, 24, 2, 5),
(18, 24, 3, 3),
(19, 40, 2, 2),
(20, 42, 2, 3),
(21, 43, 3, 5),
(22, 41, 1, 10),
(23, 45, 2, 6);

-- --------------------------------------------------------

--
-- Structure de la table `sites`
--

CREATE TABLE `sites` (
  `id` int(10) NOT NULL,
  `site` varchar(255) NOT NULL,
  `id_client` int(10) NOT NULL,
  `technicien` int(10) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `PN` varchar(255) NOT NULL,
  `dateInstalation` date NOT NULL,
  `garantie` int(100) NOT NULL,
  `etat` varchar(255) NOT NULL,
  `typeMP` varchar(255) NOT NULL,
  `MP` varchar(255) NOT NULL,
  `dateMP` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sites`
--

INSERT INTO `sites` (`id`, `site`, `id_client`, `technicien`, `adresse`, `model`, `PN`, `dateInstalation`, `garantie`, `etat`, `typeMP`, `MP`, `dateMP`) VALUES
(4, 'houmet oukh', 3, 4, 'tunisia Medenine Djerba Houmet Souk Erriadh', 's19', 'zearze', '2020-01-01', 0, 'active', 'la garante', '3', '2020-04-01'),
(5, 'ajim', 2, 4, 'tunisia Medenine Djerba Houmet Souk Erriadh', '15z', 'azeaz', '2020-01-01', 0, 'active', 'le debut du mois', '3', '2020-07-01'),
(6, 'midoun', 2, 4, 'tunisia Medenine Djerba Houmet Souk Erriadh', 's3000', '4577', '2020-01-01', 0, 'active', 'le debut du mois', '3', '2020-10-01');

-- --------------------------------------------------------

--
-- Structure de la table `storages`
--

CREATE TABLE `storages` (
  `id` int(10) NOT NULL,
  `id_technicien` int(10) NOT NULL,
  `id_piece` int(10) NOT NULL,
  `quantite` int(100) NOT NULL,
  `quantiteMin` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `storages`
--

INSERT INTO `storages` (`id`, `id_technicien`, `id_piece`, `quantite`, `quantiteMin`) VALUES
(8, 4, 3, 5, 3),
(9, 4, 2, 1, 2),
(10, 4, 1, 20, 10);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pieces`
--
ALTER TABLE `pieces`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rpiece`
--
ALTER TABLE `rpiece`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `storages`
--
ALTER TABLE `storages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT pour la table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT pour la table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT pour la table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `pieces`
--
ALTER TABLE `pieces`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `rpiece`
--
ALTER TABLE `rpiece`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `storages`
--
ALTER TABLE `storages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
