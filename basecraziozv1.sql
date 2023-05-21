-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 21 mai 2023 à 20:49
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `basecrazioz`
--

-- --------------------------------------------------------

--
-- Structure de la table `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('society_ambulance', 'Ambulance', 1),
('society_bahamas', 'Bahamas', 1),
('society_bahamas_black', 'Bahamas black', 1),
('society_ballas', 'Ballas', 1),
('society_biker', 'Lost MC', 1),
('society_bloods', 'Bloods', 1),
('society_families', 'Families', 1),
('society_marabunta', 'Marabunta', 1),
('society_mechanic', 'Mécano', 1),
('society_police', 'Police', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_vagos', 'Vagos', 1),
('society_vigneron', 'vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_ambulance', 0, NULL),
(2, 'society_police', 0, NULL),
(3, 'society_mechanic', 0, NULL),
(4, 'society_unicorn', 0, NULL),
(5, 'society_tabac', 0, NULL),
(6, 'society_taxi', 0, NULL),
(7, 'society_bahamas', 0, NULL),
(8, 'society_bahamas_black', 0, NULL),
(9, 'society_ballas', 0, NULL),
(10, 'society_families', 0, NULL),
(11, 'society_vagos', 0, NULL),
(12, 'society_bloods', 0, NULL),
(13, 'society_marabunta', 0, NULL),
(14, 'society_vigneron', 0, NULL),
(15, 'society_biker', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('society_ambulance', 'Ambulance', 1),
('society_bahamas', 'Bahamas', 1),
('society_ballas', 'Ballas', 1),
('society_biker', 'Lost MC', 1),
('society_bloods', 'Bloods', 1),
('society_families', 'Families', 1),
('society_marabunta', 'Marabunta', 1),
('society_mechanic', 'Mécano', 1),
('society_police', 'Police', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_vagos', 'Vagos', 1),
('society_vigneron', 'vigneron', 1),
('society_vigneron_fridge', 'vigneron (frigo)', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `banking`
--

CREATE TABLE `banking` (
  `identifier` varchar(46) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `amount` int(64) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  `balance` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `sender` varchar(60) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('society_ambulance', 'Ambulance', 1),
('society_bahamas', 'Bahamas', 1),
('society_ballas', 'Ballas', 1),
('society_biker', 'Lost MC', 1),
('society_bloods', 'Bloods', 1),
('society_families', 'Families', 1),
('society_marabunta', 'Marabunta', 1),
('society_mechanic', 'Mécano', 1),
('society_police', 'Police', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_vagos', 'Vagos', 1),
('society_vigneron', 'vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'society_ambulance', NULL, '\'{}\''),
(2, 'society_police', NULL, '\'{}\''),
(3, 'society_mechanic', NULL, '\'{}\''),
(4, 'society_unicorn', NULL, '\'{}\''),
(5, 'society_tabac', NULL, '\'{}\''),
(6, 'society_taxi', NULL, '\'{}\''),
(7, 'society_bahamas', NULL, '\'{}\''),
(8, 'society_ballas', NULL, '\'{}\''),
(9, 'society_families', NULL, '\'{}\''),
(10, 'society_vagos', NULL, '\'{}\''),
(11, 'society_bloods', NULL, '\'{}\''),
(12, 'society_marabunta', NULL, '\'{}\''),
(13, 'society_vigneron', NULL, '\'{}\''),
(14, 'society_biker', NULL, '\'{}\'');

-- --------------------------------------------------------

--
-- Structure de la table `drugs`
--

CREATE TABLE `drugs` (
  `id` int(11) NOT NULL,
  `createdBy` text NOT NULL,
  `createdAt` text NOT NULL,
  `label` varchar(50) NOT NULL,
  `drugsInfos` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `factions`
--

CREATE TABLE `factions` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `factions`
--

INSERT INTO `factions` (`name`, `label`) VALUES
('ballas', 'Ballas'),
('biker', 'Lost MC'),
('bloods', 'Bloods'),
('families', 'Families'),
('marabunta', 'Marabunta'),
('nofaction', 'Faction'),
('vagos', 'Vagos');

-- --------------------------------------------------------

--
-- Structure de la table `faction_grades`
--

CREATE TABLE `faction_grades` (
  `id` int(11) NOT NULL,
  `faction_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) DEFAULT 0,
  `skin_male` longtext DEFAULT '{}',
  `skin_female` longtext DEFAULT '{}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `faction_grades`
--

INSERT INTO `faction_grades` (`id`, `faction_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'nofaction', 0, 'nofaction', 'Sans faction', 0, '{}', '{}'),
(36, 'ballas', 0, 'recruit', 'Recrue', 0, '{}', '{}'),
(37, 'ballas', 1, 'gangster', 'Gangster', 0, '{}', '{}'),
(38, 'ballas', 2, 'bandit', 'Bandit', 0, '{}', '{}'),
(39, 'ballas', 3, 'boss', 'Chef du Gang', 0, '{}', '{}'),
(40, 'vagos', 0, 'recruit', 'Recrue', 0, '{}', '{}'),
(41, 'vagos', 1, 'gangster', 'Gangster', 0, '{}', '{}'),
(42, 'vagos', 2, 'bandit', 'Bandit', 0, '{}', '{}'),
(43, 'vagos', 3, 'boss', 'Chef du Gang', 0, '{}', '{}'),
(44, 'families', 0, 'recruit', 'Recrue', 0, '{}', '{}'),
(45, 'families', 1, 'gangster', 'Gangster', 0, '{}', '{}'),
(46, 'families', 2, 'bandit', 'Bandit', 0, '{}', '{}'),
(47, 'families', 3, 'boss', 'Chef du Gang', 0, '{}', '{}'),
(48, 'bloods', 0, 'recruit', 'Recrue', 0, '{}', '{}'),
(49, 'bloods', 1, 'gangster', 'Gangster', 0, '{}', '{}'),
(50, 'bloods', 2, 'bandit', 'Bandit', 0, '{}', '{}'),
(51, 'bloods', 3, 'boss', 'Chef du Gang', 0, '{}', '{}'),
(52, 'marabunta', 0, 'recruit', 'Recrue', 0, '{}', '{}'),
(53, 'marabunta', 1, 'gangster', 'Gangster', 0, '{}', '{}'),
(54, 'marabunta', 2, 'bandit', 'Bandit', 0, '{}', '{}'),
(55, 'marabunta', 3, 'boss', 'Chef du Gang', 0, '{}', '{}'),
(56, 'biker', 0, 'recruit', 'Recrue', 0, '{}', '{}'),
(57, 'biker', 1, 'gangster', 'Gangster', 0, '{}', '{}'),
(58, 'biker', 2, 'bandit', 'Bandit', 0, '{}', '{}'),
(59, 'biker', 3, 'boss', 'Chef du Gang', 0, '{}', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) NOT NULL,
  `identifier` text DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `inventories`
--

INSERT INTO `inventories` (`id`, `identifier`, `type`, `data`) VALUES
(1, 'MMJ 263', 'trunk', '[]'),
(2, 'QQD 626', 'trunk', '[]');

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(4) NOT NULL DEFAULT 0,
  `can_remove` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
('bandage', 'Bandage', 1, 0, 1),
('beer', 'Bière', 1, 0, 1),
('bolcacahuetes', 'Bol de cacahuetes', 1, 0, 1),
('bolpistache', 'Bol de pistache', 1, 0, 1),
('boulont', 'Boulont', 1, 0, 1),
('bread', 'Pain', 1, 0, 1),
('chips', 'Chips', 1, 0, 1),
('coca', 'Coca-Cola', 1, 0, 1),
('coke', 'Coke', 1, 0, 1),
('coke_pochon', 'Pochon de coke', 1, 0, 1),
('cookie', 'Cookie', 1, 0, 1),
('grand_cru', 'Grand cru', 1, 0, 1),
('hamburger', 'Hamburger', 1, 0, 1),
('hotdog', 'HotDog', 1, 0, 1),
('icetea', 'Ice-Tea', 1, 0, 1),
('jus_raisin', 'Jus de raisin', 1, 0, 1),
('kitrepa', 'Kit-de-réparation', 1, 0, 1),
('malboro', 'Marlboro', 1, 0, 1),
('medikit', 'Medikit', 1, 0, 1),
('meth', 'Meth', 1, 0, 1),
('meth_pochon', 'Pochon de Meth', 1, 0, 1),
('phone', 'Téléphone', 1, 0, 1),
('raisin', 'Raisin', 1, 0, 1),
('Rhum', 'Rhum', 1, 0, 1),
('saucisson', 'Saucisson', 1, 0, 1),
('sprite', 'Sprite', 1, 0, 1),
('tabac', 'Tabac', 1, 0, 1),
('tabacsec', 'Tabac Sec', 1, 0, 1),
('tacos', 'Tacos', 1, 0, 1),
('tequila', 'Tequila', 1, 0, 1),
('vine', 'Vin', 1, 0, 1),
('vodka', 'Vodka', 1, 0, 1),
('water', 'Water', 1, 0, 1),
('weed', 'Weed', 1, 0, 1),
('weed_pochon', 'Pochon de Weed', 1, 0, 1),
('whisky', 'Wisky', 1, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`name`, `label`) VALUES
('ambulance', 'Ambulance'),
('bahamas', 'Bahamas'),
('mechanic', 'Mécano'),
('police', 'LSPD'),
('tabac', 'Tabac'),
('taxi', 'Taxi'),
('unemployed', 'Unemployed'),
('unicorn', 'Unicorn'),
('vigneron', 'Vigneron');

-- --------------------------------------------------------

--
-- Structure de la table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Unemployed', 200, '{}', '{}'),
(2, 'ambulance', 0, 'ambulance', 'Ambulancier', 20, '', ''),
(3, 'ambulance', 1, 'doctor', 'Medecin', 40, '', ''),
(4, 'ambulance', 2, 'chief_doctor', 'Chef-d\'equipe', 60, '', ''),
(5, 'ambulance', 3, 'boss', 'Chirurgien', 80, '', ''),
(6, 'ambulance', 4, 'boss', 'Patron EMS', 100, '', ''),
(15, 'police', 0, 'recruit', 'Cadet', 0, '{}', '{}'),
(16, 'police', 1, 'officer', 'Officier', 0, '{}', '{}'),
(17, 'police', 2, 'sergeant', 'Sergent', 0, '{}', '{}'),
(18, 'police', 3, 'lieutenant', 'Sergent-Chef', 0, '{}', '{}'),
(19, 'police', 4, 'boss', 'Lieutenant', 0, '{}', '{}'),
(20, 'police', 5, 'recruit', 'Lieutenant-Chef', 0, '{}', '{}'),
(21, 'police', 6, 'officer', 'Capitaine', 0, '{}', '{}'),
(22, 'police', 7, 'sergeant', 'Commandant', 0, '{}', '{}'),
(90, 'mechanic', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(91, 'mechanic', 1, 'novice', 'Novice', 24, '{}', '{}'),
(92, 'mechanic', 2, 'experimente', 'Experimente', 36, '{}', '{}'),
(93, 'mechanic', 3, 'chief', 'Chef d\'équipe', 48, '{}', '{}'),
(94, 'mechanic', 4, 'boss', 'Patron', 0, '{}', '{}'),
(95, 'unicorn', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(96, 'unicorn', 1, 'novice', 'Danseur', 24, '{}', '{}'),
(97, 'unicorn', 2, 'experimente', 'DJ', 36, '{}', '{}'),
(98, 'unicorn', 3, 'chief', 'Barman', 48, '{}', '{}'),
(99, 'unicorn', 4, 'boss', 'Patron', 0, '{}', '{}'),
(100, 'tabac', 0, 'recrue', 'Tabagiste', 200, 'null', 'null'),
(101, 'tabac', 1, 'gerant', 'Gérant', 400, 'null', 'null'),
(102, 'tabac', 2, 'boss', 'Patron', 1000, 'null', 'null'),
(103, 'taxi', 0, 'recrue', 'Recrue', 12, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(104, 'taxi', 1, 'novice', 'Novice', 24, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(105, 'taxi', 2, 'experimente', 'Experimente', 36, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(106, 'taxi', 3, 'uber', 'Uber', 48, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(107, 'taxi', 4, 'boss', 'Patron', 0, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(108, 'bahamas', 0, 'barman', 'Barman', 200, 'null', 'null'),
(109, 'bahamas', 1, 'dancer', 'Danseur', 400, 'null', 'null'),
(110, 'bahamas', 2, 'viceboss', 'Gérant', 600, 'null', 'null'),
(111, 'bahamas', 3, 'boss', 'Patron', 1000, 'null', 'null'),
(112, 'vigneron', 0, 'recrue', 'Intérimaire', 1200, '{}', '{}'),
(113, 'vigneron', 1, 'novice', 'Vigneron', 1400, '{}', '{}'),
(114, 'vigneron', 2, 'cdisenior', 'Chef de chai', 1600, '{}', '{}'),
(115, 'vigneron', 3, 'boss', 'Patron', 2000, '{}', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `management_outfits`
--

CREATE TABLE `management_outfits` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `minrank` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT 'Cool Outfit',
  `gender` varchar(50) NOT NULL DEFAULT 'male',
  `model` varchar(50) DEFAULT NULL,
  `props` varchar(1000) DEFAULT NULL,
  `components` varchar(1500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(64) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `impound` int(1) NOT NULL DEFAULT 0,
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `garage_type` varchar(50) DEFAULT 'car',
  `garage_id` varchar(50) DEFAULT 'A',
  `type` varchar(32) NOT NULL DEFAULT 'car',
  `job` varchar(32) NOT NULL DEFAULT 'civ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`owner`, `plate`, `vehicle`, `impound`, `stored`, `garage_type`, `garage_id`, `type`, `job`) VALUES
('96accefda755458c14ad75ae3824d5ecc56e8638', 'LLV 609', '{\"color2\":111,\"modSpeakers\":-1,\"plateIndex\":0,\"modFrontWheels\":-1,\"modHood\":-1,\"modEngineBlock\":-1,\"model\":1118611807,\"modAerials\":-1,\"modSpoilers\":-1,\"tankHealth\":1000.0,\"modTurbo\":false,\"bodyHealth\":1000.0,\"modRoof\":-1,\"modBrakes\":-1,\"windowTint\":-1,\"tyreBurst\":{\"5\":false,\"4\":false,\"1\":false,\"0\":false},\"modSteeringWheel\":-1,\"modExhaust\":-1,\"customSecondaryColor\":[240,240,240],\"doorsBroken\":{\"3\":false,\"4\":false,\"1\":false,\"2\":false,\"0\":false,\"5\":false},\"wheelColor\":156,\"modTransmission\":-1,\"modPlateHolder\":-1,\"interiorColor\":3,\"modEngine\":-1,\"modLivery\":-1,\"windowsBroken\":{\"3\":false,\"4\":true,\"1\":false,\"2\":false,\"7\":false,\"0\":false,\"5\":true,\"6\":false},\"modRightFender\":-1,\"modXenon\":false,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"modTank\":-1,\"modTrimA\":-1,\"modBackWheels\":-1,\"modGrille\":-1,\"tyreSmokeColor\":[255,255,255],\"modSideSkirt\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"color1\":29,\"modArmor\":-1,\"fuelLevel\":46.3,\"modFender\":-1,\"pearlescentColor\":138,\"modArchCover\":-1,\"modLightbar\":-1,\"modDashboard\":-1,\"extras\":[],\"modRearBumper\":-1,\"modHydrolic\":-1,\"modDoorR\":-1,\"modOrnaments\":-1,\"dashboardColor\":160,\"modSmokeEnabled\":1,\"modStruts\":-1,\"modAPlate\":-1,\"modDial\":-1,\"dirtLevel\":0.0,\"modSeats\":-1,\"plate\":\"LLV 609\",\"modFrontBumper\":-1,\"customPrimaryColor\":[107,0,0],\"engineHealth\":1000.0,\"modFrame\":-1,\"neonColor\":[255,0,255],\"wheels\":5,\"neonEnabled\":[false,false,false,false],\"modTrimB\":-1,\"modDoorSpeaker\":-1,\"xenonColor\":255,\"modVanityPlate\":-1,\"modHorns\":-1}', 0, 0, 'car', 'A', 'car', '0');

-- --------------------------------------------------------

--
-- Structure de la table `ox_doorlock`
--

CREATE TABLE `ox_doorlock` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ox_doorlock`
--

INSERT INTO `ox_doorlock` (`id`, `name`, `data`) VALUES
(32, 'gabz_mrpd 1', '{\"maxDistance\":2,\"state\":0,\"groups\":{\"police\":0,\"offpolice\":0},\"lockpick\":true,\"doors\":[{\"heading\":90,\"coords\":{\"x\":434.744384765625,\"y\":-983.078125,\"z\":30.81529998779297},\"model\":-1547307588},{\"heading\":270,\"coords\":{\"x\":434.744384765625,\"y\":-980.755615234375,\"z\":30.81529998779297},\"model\":-1547307588}],\"coords\":{\"x\":434.744384765625,\"y\":-981.9168701171875,\"z\":30.81529998779297},\"hideUi\":false}'),
(33, 'gabz_mrpd 2', '{\"maxDistance\":2,\"state\":1,\"groups\":{\"police\":0,\"offpolice\":0},\"doors\":[{\"heading\":180,\"coords\":{\"x\":458.2087097167969,\"y\":-972.2542724609375,\"z\":30.81529998779297},\"model\":-1547307588},{\"heading\":0,\"coords\":{\"x\":455.8861999511719,\"y\":-972.2542724609375,\"z\":30.81529998779297},\"model\":-1547307588}],\"coords\":{\"x\":457.0474548339844,\"y\":-972.2542724609375,\"z\":30.81529998779297},\"hideUi\":false}'),
(34, 'gabz_mrpd 3', '{\"maxDistance\":2,\"state\":1,\"groups\":{\"police\":0,\"offpolice\":0},\"doors\":[{\"heading\":0,\"coords\":{\"x\":440.73919677734377,\"y\":-998.7462158203125,\"z\":30.81529998779297},\"model\":-1547307588},{\"heading\":180,\"coords\":{\"x\":443.0617980957031,\"y\":-998.7462158203125,\"z\":30.81529998779297},\"model\":-1547307588}],\"coords\":{\"x\":441.9005126953125,\"y\":-998.7462158203125,\"z\":30.81529998779297},\"hideUi\":false}'),
(35, 'gabz_mrpd 4', '{\"coords\":{\"x\":441.1300048828125,\"y\":-977.9299926757813,\"z\":30.82319068908691},\"state\":1,\"model\":-1406685646,\"heading\":0,\"groups\":{\"police\":0},\"maxDistance\":2,\"hideUi\":false}'),
(36, 'gabz_mrpd 5', '{\"coords\":{\"x\":440.5201110839844,\"y\":-986.2335205078125,\"z\":30.82319068908691},\"state\":1,\"model\":-96679321,\"heading\":180,\"groups\":{\"police\":0,\"offpolice\":0},\"maxDistance\":2,\"hideUi\":false}'),
(37, 'gabz_mrpd 6', '{\"coords\":{\"x\":464.1590881347656,\"y\":-974.6655883789063,\"z\":26.37070083618164},\"state\":1,\"model\":1830360419,\"heading\":270,\"groups\":{\"police\":0,\"offpolice\":0},\"maxDistance\":2,\"hideUi\":false}'),
(38, 'gabz_mrpd 7', '{\"coords\":{\"x\":464.1565856933594,\"y\":-997.50927734375,\"z\":26.37070083618164},\"state\":1,\"model\":1830360419,\"heading\":90,\"groups\":{\"police\":0,\"offpolice\":0},\"maxDistance\":2,\"hideUi\":false}'),
(39, 'gabz_mrpd 8', '{\"coords\":{\"x\":431.4118957519531,\"y\":-1000.77197265625,\"z\":26.69660949707031},\"state\":1,\"model\":2130672747,\"heading\":0,\"groups\":{\"police\":0,\"offpolice\":0},\"auto\":true,\"lockSound\":\"button-remote\",\"maxDistance\":6,\"hideUi\":false}'),
(40, 'gabz_mrpd 9', '{\"coords\":{\"x\":452.3005065917969,\"y\":-1000.77197265625,\"z\":26.69660949707031},\"state\":1,\"model\":2130672747,\"heading\":0,\"groups\":{\"police\":0,\"offpolice\":0},\"auto\":true,\"lockSound\":\"button-remote\",\"maxDistance\":6,\"hideUi\":false}'),
(41, 'gabz_mrpd 10', '{\"coords\":{\"x\":488.8948059082031,\"y\":-1017.2119750976563,\"z\":27.14934921264648},\"state\":1,\"model\":-1603817716,\"heading\":90,\"groups\":{\"police\":0,\"offpolice\":0},\"auto\":true,\"lockSound\":\"button-remote\",\"maxDistance\":6,\"hideUi\":false}'),
(42, 'gabz_mrpd 11', '{\"maxDistance\":2,\"state\":1,\"groups\":{\"police\":0,\"offpolice\":0},\"doors\":[{\"heading\":0,\"coords\":{\"x\":467.36859130859377,\"y\":-1014.406005859375,\"z\":26.48381996154785},\"model\":-692649124},{\"heading\":180,\"coords\":{\"x\":469.7742919921875,\"y\":-1014.406005859375,\"z\":26.48381996154785},\"model\":-692649124}],\"coords\":{\"x\":468.5714416503906,\"y\":-1014.406005859375,\"z\":26.48381996154785},\"hideUi\":false}'),
(43, 'gabz_mrpd 12', '{\"coords\":{\"x\":475.9538879394531,\"y\":-1010.8189697265625,\"z\":26.40638923645019},\"state\":1,\"model\":-1406685646,\"heading\":180,\"groups\":{\"police\":0},\"maxDistance\":2,\"hideUi\":false}'),
(44, 'gabz_mrpd 13', '{\"coords\":{\"x\":476.6156921386719,\"y\":-1008.875,\"z\":26.48004913330078},\"unlockSound\":\"metallic-creak\",\"state\":1,\"model\":-53345114,\"heading\":270,\"groups\":{\"police\":0},\"maxDistance\":2,\"lockSound\":\"metal-locker\",\"hideUi\":false}'),
(45, 'gabz_mrpd 14', '{\"coords\":{\"x\":481.0083923339844,\"y\":-1004.1179809570313,\"z\":26.48004913330078},\"unlockSound\":\"metallic-creak\",\"state\":1,\"model\":-53345114,\"heading\":180,\"groups\":{\"police\":0},\"maxDistance\":2,\"lockSound\":\"metal-locker\",\"hideUi\":false}'),
(46, 'gabz_mrpd 15', '{\"coords\":{\"x\":477.91259765625,\"y\":-1012.1890258789063,\"z\":26.48004913330078},\"unlockSound\":\"metallic-creak\",\"state\":1,\"model\":-53345114,\"heading\":0,\"groups\":{\"police\":0},\"maxDistance\":2,\"lockSound\":\"metal-locker\",\"hideUi\":false}'),
(47, 'gabz_mrpd 16', '{\"coords\":{\"x\":480.9128112792969,\"y\":-1012.1890258789063,\"z\":26.48004913330078},\"unlockSound\":\"metallic-creak\",\"state\":1,\"model\":-53345114,\"heading\":0,\"groups\":{\"police\":0},\"maxDistance\":2,\"lockSound\":\"metal-locker\",\"hideUi\":false}'),
(48, 'gabz_mrpd 17', '{\"coords\":{\"x\":483.9126892089844,\"y\":-1012.1890258789063,\"z\":26.48004913330078},\"unlockSound\":\"metallic-creak\",\"state\":1,\"model\":-53345114,\"heading\":0,\"groups\":{\"police\":0},\"maxDistance\":2,\"lockSound\":\"metal-locker\",\"hideUi\":false}'),
(49, 'gabz_mrpd 18', '{\"coords\":{\"x\":486.9130859375,\"y\":-1012.1890258789063,\"z\":26.48004913330078},\"unlockSound\":\"metallic-creak\",\"state\":1,\"model\":-53345114,\"heading\":0,\"groups\":{\"police\":0},\"maxDistance\":2,\"lockSound\":\"metal-locker\",\"hideUi\":false}'),
(50, 'gabz_mrpd 19', '{\"coords\":{\"x\":484.1763916015625,\"y\":-1007.7340087890625,\"z\":26.48004913330078},\"unlockSound\":\"metallic-creak\",\"state\":1,\"model\":-53345114,\"heading\":180,\"groups\":{\"police\":0},\"maxDistance\":2,\"lockSound\":\"metal-locker\",\"hideUi\":false}'),
(51, 'gabz_mrpd 20', '{\"coords\":{\"x\":479.05999755859377,\"y\":-1003.1729736328125,\"z\":26.4064998626709},\"state\":1,\"model\":-288803980,\"heading\":90,\"groups\":{\"police\":0},\"maxDistance\":2,\"hideUi\":false}'),
(52, 'gabz_mrpd 21', '{\"coords\":{\"x\":482.6694030761719,\"y\":-983.98681640625,\"z\":26.40547943115234},\"state\":1,\"model\":-1406685646,\"heading\":270,\"groups\":{\"police\":0},\"maxDistance\":2,\"hideUi\":false}'),
(53, 'gabz_mrpd 22', '{\"coords\":{\"x\":482.67010498046877,\"y\":-987.5792236328125,\"z\":26.40547943115234},\"state\":1,\"model\":-1406685646,\"heading\":270,\"groups\":{\"police\":0},\"maxDistance\":2,\"hideUi\":false}'),
(54, 'gabz_mrpd 23', '{\"coords\":{\"x\":482.6698913574219,\"y\":-992.299072265625,\"z\":26.40547943115234},\"state\":1,\"model\":-1406685646,\"heading\":270,\"groups\":{\"police\":0},\"maxDistance\":2,\"hideUi\":false}'),
(55, 'gabz_mrpd 24', '{\"coords\":{\"x\":482.6702880859375,\"y\":-995.728515625,\"z\":26.40547943115234},\"state\":1,\"model\":-1406685646,\"heading\":270,\"groups\":{\"police\":0},\"maxDistance\":2,\"hideUi\":false}'),
(56, 'gabz_mrpd 25', '{\"coords\":{\"x\":475.8323059082031,\"y\":-990.48388671875,\"z\":26.40547943115234},\"state\":1,\"model\":-692649124,\"heading\":135,\"groups\":{\"police\":0},\"maxDistance\":2,\"hideUi\":false}'),
(57, 'gabz_mrpd 26', '{\"coords\":{\"x\":479.7507019042969,\"y\":-999.6290283203125,\"z\":30.78927040100097},\"state\":1,\"model\":-692649124,\"heading\":90,\"groups\":{\"police\":0},\"maxDistance\":2,\"hideUi\":false}'),
(58, 'gabz_mrpd 27', '{\"coords\":{\"x\":487.43780517578127,\"y\":-1000.1890258789063,\"z\":30.7869701385498},\"state\":1,\"model\":-692649124,\"heading\":181,\"groups\":{\"police\":0},\"maxDistance\":2,\"hideUi\":false}'),
(59, 'gabz_mrpd 28', '{\"maxDistance\":2,\"state\":1,\"groups\":{\"police\":0},\"doors\":[{\"heading\":0,\"coords\":{\"x\":485.6133117675781,\"y\":-1002.9019775390625,\"z\":30.7869701385498},\"model\":-692649124},{\"heading\":180,\"coords\":{\"x\":488.0184020996094,\"y\":-1002.9019775390625,\"z\":30.7869701385498},\"model\":-692649124}],\"coords\":{\"x\":486.81585693359377,\"y\":-1002.9019775390625,\"z\":30.7869701385498},\"hideUi\":false}'),
(60, 'gabz_mrpd 29', '{\"coords\":{\"x\":464.30859375,\"y\":-984.5283813476563,\"z\":43.771240234375},\"state\":1,\"model\":-692649124,\"heading\":90,\"groups\":{\"police\":0},\"auto\":false,\"maxDistance\":2,\"lockpick\":false,\"hideUi\":false}'),
(61, 'gabz_mrpd 30', '{\"coords\":{\"x\":410.0257873535156,\"y\":-1024.219970703125,\"z\":29.22019958496093},\"state\":1,\"model\":-1635161509,\"heading\":270,\"groups\":{\"police\":0},\"lockSound\":\"button-remote\",\"auto\":true,\"maxDistance\":6,\"lockpick\":false,\"hideUi\":false}'),
(62, 'gabz_mrpd 31', '{\"coords\":{\"x\":410.0257873535156,\"y\":-1024.2259521484376,\"z\":29.2202205657959},\"state\":1,\"model\":-1868050792,\"heading\":270,\"groups\":{\"police\":0},\"lockSound\":\"button-remote\",\"auto\":true,\"maxDistance\":6,\"lockpick\":false,\"hideUi\":false}'),
(63, 'Vangelico Bijouterie', '{\"state\":1,\"groups\":{\"police\":0,\"bcso\":0},\"maxDistance\":2,\"lockpick\":true,\"doors\":[{\"coords\":{\"x\":-631.9553833007813,\"y\":-236.33326721191407,\"z\":38.2065315246582},\"heading\":306,\"model\":1425919976},{\"coords\":{\"x\":-630.426513671875,\"y\":-238.4375457763672,\"z\":38.2065315246582},\"heading\":306,\"model\":9467943}],\"coords\":{\"x\":-631.19091796875,\"y\":-237.38540649414063,\"z\":38.2065315246582},\"lockSound\":\"metal-locker\",\"lockpickDifficulty\":[\"medium\"],\"unlockSound\":\"metal-locker\"}'),
(64, 'Taxi', '{\"maxDistance\":2,\"groups\":{\"taxi\":0},\"lockpickDifficulty\":[\"medium\"],\"unlockSound\":\"door-bolt-4\",\"coords\":{\"x\":907.3790283203125,\"y\":-160.37454223632813,\"z\":74.54778289794922},\"state\":1,\"lockSound\":\"door-bolt-4\",\"lockpick\":true,\"doors\":[{\"heading\":58,\"model\":1519319655,\"coords\":{\"x\":908.1146850585938,\"y\":-159.1846923828125,\"z\":74.54778289794922}},{\"heading\":238,\"model\":1519319655,\"coords\":{\"x\":906.643310546875,\"y\":-161.5644073486328,\"z\":74.54778289794922}}]}'),
(65, 'Taxi2', '{\"maxDistance\":2,\"groups\":{\"taxi\":0},\"lockpickDifficulty\":[\"medium\"],\"unlockSound\":\"door-bolt-4\",\"coords\":{\"x\":894.4410400390625,\"y\":-179.3114013671875,\"z\":74.85623931884766},\"state\":1,\"lockSound\":\"door-bolt-4\",\"lockpick\":true,\"doors\":[{\"heading\":238,\"model\":-2023754432,\"coords\":{\"x\":895.1224975585938,\"y\":-178.2061004638672,\"z\":74.85623931884766}},{\"heading\":59,\"model\":-2023754432,\"coords\":{\"x\":893.7596435546875,\"y\":-180.4167022705078,\"z\":74.85623931884766}}]}'),
(66, 'Taxi3', '{\"maxDistance\":2,\"groups\":{\"taxi\":0},\"model\":-2023754432,\"lockpickDifficulty\":[\"medium\"],\"heading\":329,\"unlockSound\":\"door-bolt-4\",\"coords\":{\"x\":895.2413330078125,\"y\":-144.86509704589845,\"z\":77.0450439453125},\"state\":1,\"lockSound\":\"door-bolt-4\",\"lockpick\":true,\"doors\":false}'),
(67, 'Taxi4', '{\"maxDistance\":2,\"groups\":{\"taxi\":0},\"model\":2064385778,\"lockpickDifficulty\":[\"medium\"],\"state\":1,\"heading\":148,\"unlockSound\":\"door-bolt-4\",\"coords\":{\"x\":900.0850830078125,\"y\":-147.83041381835938,\"z\":77.32047271728516},\"lockSound\":\"door-bolt-4\",\"lockpick\":true,\"auto\":true,\"doors\":false}'),
(68, 'Ambulance', '{\"maxDistance\":2,\"groups\":{\"ambulance\":0},\"lockpickDifficulty\":[\"medium\"],\"unlockSound\":\"door-bolt-4\",\"coords\":{\"x\":-1845.986083984375,\"y\":-348.2978820800781,\"z\":49.48584747314453},\"state\":1,\"lockSound\":\"door-bolt-4\",\"lockpick\":true,\"doors\":[{\"heading\":49,\"model\":2047627247,\"coords\":{\"x\":-1845.143798828125,\"y\":-347.32470703125,\"z\":49.48414611816406}},{\"heading\":230,\"model\":667560812,\"coords\":{\"x\":-1846.8282470703126,\"y\":-349.27105712890627,\"z\":49.487548828125}}]}'),
(69, 'Ambulance', '{\"maxDistance\":2,\"groups\":{\"ambulance\":0},\"model\":1195683893,\"lockpickDifficulty\":[\"medium\"],\"heading\":141,\"unlockSound\":\"door-bolt-4\",\"coords\":{\"x\":-1825.0880126953126,\"y\":-338.6932373046875,\"z\":49.63963317871094},\"state\":1,\"lockSound\":\"door-bolt-4\",\"lockpick\":true,\"doors\":false}'),
(70, 'Ambulance4', '{\"maxDistance\":2,\"groups\":{\"ambulance\":0},\"model\":255010208,\"lockpickDifficulty\":[\"medium\"],\"state\":1,\"heading\":141,\"unlockSound\":\"metallic-creak\",\"coords\":{\"x\":-1811.958740234375,\"y\":-342.77288818359377,\"z\":44.96761322021484},\"lockSound\":\"metallic-creak\",\"lockpick\":true,\"auto\":true,\"doors\":false}'),
(71, 'Ambulance5', '{\"maxDistance\":2,\"groups\":{\"ambulance\":0},\"model\":255010208,\"lockpickDifficulty\":[\"medium\"],\"state\":1,\"heading\":141,\"unlockSound\":\"metallic-creak\",\"coords\":{\"x\":-1817.7237548828126,\"y\":-337.9305419921875,\"z\":44.97710037231445},\"lockSound\":\"metallic-creak\",\"lockpick\":true,\"auto\":true,\"doors\":false}'),
(73, 'Ambulance7', '{\"maxDistance\":2,\"groups\":{\"ambulance\":0},\"lockpickDifficulty\":[\"medium\"],\"unlockSound\":\"door-bolt-4\",\"coords\":{\"x\":-1863.05322265625,\"y\":-326.4520263671875,\"z\":58.16709518432617},\"state\":1,\"lockSound\":\"door-bolt-4\",\"lockpick\":true,\"doors\":[{\"heading\":229,\"model\":667560812,\"coords\":{\"x\":-1863.89013671875,\"y\":-327.4295654296875,\"z\":58.16844940185547}},{\"heading\":49,\"model\":2047627247,\"coords\":{\"x\":-1862.2164306640626,\"y\":-325.4745178222656,\"z\":58.16574096679687}}]}'),
(74, 'Ambulance8', '{\"maxDistance\":2,\"groups\":{\"ambulance\":0},\"lockpickDifficulty\":[\"medium\"],\"unlockSound\":\"door-bolt-4\",\"coords\":{\"x\":-1844.954345703125,\"y\":-340.8988037109375,\"z\":58.15905380249023},\"state\":1,\"lockSound\":\"door-bolt-4\",\"lockpick\":true,\"doors\":[{\"heading\":242,\"model\":2047627247,\"coords\":{\"x\":-1845.5731201171876,\"y\":-342.02960205078127,\"z\":58.1592788696289}},{\"heading\":62,\"model\":667560812,\"coords\":{\"x\":-1844.3355712890626,\"y\":-339.7680358886719,\"z\":58.15882873535156}}]}'),
(75, 'Mecano', '{\"maxDistance\":2,\"groups\":{\"mechanic\":0},\"model\":270330101,\"lockpickDifficulty\":[\"medium\"],\"state\":1,\"heading\":270,\"unlockSound\":\"door-bolt-4\",\"coords\":{\"x\":723.115966796875,\"y\":-1088.8311767578126,\"z\":23.23200607299804},\"lockSound\":\"door-bolt-4\",\"lockpick\":true,\"auto\":true,\"doors\":false}'),
(76, 'Vigneron', '{\"groups\":{\"vigneron\":0},\"state\":1,\"doors\":[{\"coords\":{\"x\":-1873.3284912109376,\"y\":2069.1455078125,\"z\":140.01034545898438},\"model\":-889651514,\"heading\":340},{\"coords\":{\"x\":-1875.6424560546876,\"y\":2069.992431640625,\"z\":140.01034545898438},\"model\":1700020285,\"heading\":340}],\"maxDistance\":2,\"coords\":{\"x\":-1874.4854736328126,\"y\":2069.56884765625,\"z\":140.01034545898438},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(77, 'vigneron2', '{\"groups\":{\"vigneron\":0},\"state\":1,\"doors\":[{\"coords\":{\"x\":-1887.4825439453126,\"y\":2051.376708984375,\"z\":140.00009155273438},\"model\":-889651514,\"heading\":160},{\"coords\":{\"x\":-1885.1669921875,\"y\":2050.535400390625,\"z\":140.00009155273438},\"model\":1700020285,\"heading\":160}],\"maxDistance\":2,\"coords\":{\"x\":-1886.32470703125,\"y\":2050.9560546875,\"z\":140.00009155273438},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(78, 'vigneron3', '{\"groups\":{\"vigneron\":0},\"state\":1,\"doors\":[{\"coords\":{\"x\":-1890.18701171875,\"y\":2052.34765625,\"z\":140.00022888183595},\"model\":-889651514,\"heading\":160},{\"coords\":{\"x\":-1887.869140625,\"y\":2051.5126953125,\"z\":140.00022888183595},\"model\":1700020285,\"heading\":160}],\"maxDistance\":2,\"coords\":{\"x\":-1889.028076171875,\"y\":2051.93017578125,\"z\":140.00022888183595},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(79, 'vigneron5', '{\"groups\":{\"vigneron\":0},\"state\":1,\"doors\":[{\"coords\":{\"x\":-1884.9576416015626,\"y\":2073.3779296875,\"z\":140.01470947265626},\"model\":-889651514,\"heading\":340},{\"coords\":{\"x\":-1887.2723388671876,\"y\":2074.2216796875,\"z\":140.01470947265626},\"model\":1700020285,\"heading\":340}],\"maxDistance\":2,\"coords\":{\"x\":-1886.114990234375,\"y\":2073.7998046875,\"z\":140.01470947265626},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(80, 'vigneron6', '{\"groups\":{\"vigneron\":0},\"state\":1,\"doors\":[{\"coords\":{\"x\":-1894.746337890625,\"y\":2075.910400390625,\"z\":140.01036071777345},\"model\":1700020285,\"heading\":320},{\"coords\":{\"x\":-1892.8583984375,\"y\":2074.325439453125,\"z\":140.01036071777345},\"model\":-889651514,\"heading\":320}],\"maxDistance\":2,\"coords\":{\"x\":-1893.8023681640626,\"y\":2075.117919921875,\"z\":140.01036071777345},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(81, 'vigneron7', '{\"groups\":{\"vigneron\":0},\"state\":1,\"doors\":[{\"coords\":{\"x\":-1909.564208984375,\"y\":2073.522705078125,\"z\":139.38909912109376},\"model\":-1069282247,\"heading\":320},{\"coords\":{\"x\":-1907.672607421875,\"y\":2071.93896484375,\"z\":139.38909912109376},\"model\":1320052052,\"heading\":320}],\"maxDistance\":2,\"coords\":{\"x\":-1908.618408203125,\"y\":2072.73095703125,\"z\":139.38909912109376},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(82, 'vigneron8', '{\"groups\":{\"vigneron\":0},\"state\":1,\"doors\":[{\"coords\":{\"x\":-1909.557861328125,\"y\":2081.17138671875,\"z\":139.38800048828126},\"model\":1320052052,\"heading\":230},{\"coords\":{\"x\":-1907.9757080078126,\"y\":2083.06396484375,\"z\":139.38844299316407},\"model\":-1069282247,\"heading\":230}],\"maxDistance\":2,\"coords\":{\"x\":-1908.766845703125,\"y\":2082.11767578125,\"z\":139.38821411132813},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(83, 'vigneron9', '{\"groups\":{\"vigneron\":0},\"state\":1,\"doors\":[{\"coords\":{\"x\":-1859.2659912109376,\"y\":2054.219970703125,\"z\":139.9886932373047},\"model\":1700020285,\"heading\":180},{\"coords\":{\"x\":-1861.730712890625,\"y\":2054.22265625,\"z\":139.9886932373047},\"model\":-889651514,\"heading\":180}],\"maxDistance\":2,\"coords\":{\"x\":-1860.498291015625,\"y\":2054.22119140625,\"z\":139.9886932373047},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(84, 'vigneron10', '{\"groups\":{\"vigneron\":0},\"state\":1,\"doors\":[{\"coords\":{\"x\":-1926.482177734375,\"y\":2046.427734375,\"z\":139.80450439453126},\"model\":-1592519073,\"heading\":347},{\"coords\":{\"x\":-1925.6065673828126,\"y\":2050.0810546875,\"z\":139.80419921875},\"model\":-1537041208,\"heading\":346}],\"maxDistance\":2,\"coords\":{\"x\":-1926.04443359375,\"y\":2048.25439453125,\"z\":139.80435180664063},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(85, 'vigneron11', '{\"groups\":{\"vigneron\":0},\"state\":1,\"doors\":[{\"coords\":{\"x\":-1927.9227294921876,\"y\":2040.4224853515626,\"z\":139.80450439453126},\"model\":-1592519073,\"heading\":346},{\"coords\":{\"x\":-1927.03515625,\"y\":2044.07275390625,\"z\":139.8050994873047},\"model\":-1537041208,\"heading\":346}],\"maxDistance\":2,\"coords\":{\"x\":-1927.47900390625,\"y\":2042.24755859375,\"z\":139.8048095703125},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(86, 'vigneron12', '{\"groups\":{\"vigneron\":0},\"state\":1,\"doors\":[{\"coords\":{\"x\":-1924.9549560546876,\"y\":2052.81201171875,\"z\":139.8140411376953},\"model\":-1592519073,\"heading\":346},{\"coords\":{\"x\":-1924.07470703125,\"y\":2056.46484375,\"z\":139.81495666503907},\"model\":-1537041208,\"heading\":346}],\"maxDistance\":2,\"coords\":{\"x\":-1924.514892578125,\"y\":2054.638427734375,\"z\":139.8144989013672},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(87, 'vigneron14', '{\"heading\":346,\"groups\":{\"vigneron\":0},\"state\":1,\"model\":1815716966,\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":-1934.127197265625,\"y\":2040.0555419921876,\"z\":139.8362274169922},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(88, 'bcso', '{\"groups\":{\"bcso\":0},\"state\":0,\"doors\":[{\"coords\":{\"x\":-437.17169189453127,\"y\":6012.947265625,\"z\":32.28851318359375},\"model\":733214349,\"heading\":135},{\"coords\":{\"x\":-438.5865478515625,\"y\":6014.36181640625,\"z\":32.28851318359375},\"model\":965382714,\"heading\":315}],\"maxDistance\":2,\"coords\":{\"x\":-437.8791198730469,\"y\":6013.654296875,\"z\":32.28851318359375},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(89, 'bcso2', '{\"heading\":225,\"groups\":{\"bcso\":0},\"state\":1,\"model\":1362051455,\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":-443.9599914550781,\"y\":6017.162109375,\"z\":32.28851318359375},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(90, 'bcso', '{\"groups\":{\"bcso\":0},\"state\":1,\"doors\":[{\"coords\":{\"x\":-448.0712890625,\"y\":6004.8681640625,\"z\":32.28851318359375},\"model\":1857649811,\"heading\":315},{\"coords\":{\"x\":-446.6564025878906,\"y\":6003.453125,\"z\":32.28851318359375},\"model\":1362051455,\"heading\":135}],\"maxDistance\":2,\"coords\":{\"x\":-447.36383056640627,\"y\":6004.16064453125,\"z\":32.28851318359375},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(91, 'bcso3', '{\"groups\":{\"bcso\":0},\"state\":1,\"doors\":[{\"coords\":{\"x\":-450.00982666015627,\"y\":6004.83544921875,\"z\":32.28851318359375},\"model\":1857649811,\"heading\":225},{\"coords\":{\"x\":-451.4247131347656,\"y\":6003.42041015625,\"z\":32.28851318359375},\"model\":1362051455,\"heading\":45}],\"maxDistance\":2,\"coords\":{\"x\":-450.71728515625,\"y\":6004.1279296875,\"z\":32.28851318359375},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(92, 'bcso3', '{\"groups\":{\"bcso\":0},\"state\":1,\"doors\":[{\"coords\":{\"x\":-454.90167236328127,\"y\":5998.0517578125,\"z\":32.28851318359375},\"model\":733214349,\"heading\":315},{\"coords\":{\"x\":-453.48675537109377,\"y\":5996.63720703125,\"z\":32.28851318359375},\"model\":965382714,\"heading\":135}],\"maxDistance\":2,\"coords\":{\"x\":-454.1942138671875,\"y\":5997.3447265625,\"z\":32.28851318359375},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(93, 'bcso4', '{\"groups\":{\"bcso\":0},\"state\":1,\"doors\":[{\"coords\":{\"x\":-450.00982666015627,\"y\":6004.83544921875,\"z\":36.99581527709961},\"model\":1857649811,\"heading\":225},{\"coords\":{\"x\":-451.4247131347656,\"y\":6003.42041015625,\"z\":36.99581527709961},\"model\":1362051455,\"heading\":45}],\"maxDistance\":2,\"coords\":{\"x\":-450.71728515625,\"y\":6004.1279296875,\"z\":36.99581527709961},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(94, 'bcso5', '{\"heading\":45,\"groups\":{\"bcso\":0},\"state\":1,\"model\":1362051455,\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":-447.4444885253906,\"y\":6011.51220703125,\"z\":36.99581527709961},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(95, 'bcso5', '{\"heading\":315,\"groups\":{\"bcso\":0},\"state\":1,\"model\":1362051455,\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":-441.672607421875,\"y\":6009.1435546875,\"z\":36.99581527709961},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(96, 'bcso6', '{\"groups\":{\"bcso\":0},\"state\":1,\"doors\":[{\"coords\":{\"x\":-450.00982666015627,\"y\":6004.83544921875,\"z\":27.58121490478515},\"model\":1857649811,\"heading\":225},{\"coords\":{\"x\":-451.4247131347656,\"y\":6003.42041015625,\"z\":27.58121490478515},\"model\":1362051455,\"heading\":45}],\"maxDistance\":2,\"coords\":{\"x\":-450.71728515625,\"y\":6004.1279296875,\"z\":27.58121490478515},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(97, 'bcso8', '{\"groups\":{\"bcso\":0},\"state\":1,\"doors\":[{\"coords\":{\"x\":-446.58392333984377,\"y\":6001.39990234375,\"z\":27.58121490478515},\"model\":1362051455,\"heading\":225},{\"coords\":{\"x\":-447.99884033203127,\"y\":5999.98486328125,\"z\":27.58121490478515},\"model\":1857649811,\"heading\":45}],\"maxDistance\":2,\"coords\":{\"x\":-447.2913818359375,\"y\":6000.6923828125,\"z\":27.58121490478515},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(98, 'bcso8', '{\"heading\":315,\"groups\":{\"bcso\":0},\"state\":1,\"model\":-594854737,\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":-443.6405029296875,\"y\":6006.97265625,\"z\":27.73100090026855},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"hard\"],\"lockSound\":\"door-bolt-4\"}'),
(99, 'bcso10', '{\"heading\":45,\"groups\":{\"bcso\":0},\"state\":1,\"model\":-594854737,\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":-442.24334716796877,\"y\":6012.61962890625,\"z\":27.73100090026855},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"hard\"],\"lockSound\":\"door-bolt-4\"}'),
(100, 'bcso11', '{\"heading\":135,\"groups\":{\"bcso\":0},\"state\":1,\"model\":-594854737,\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":-443.39007568359377,\"y\":6015.43603515625,\"z\":27.73100090026855},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"easy\"],\"lockSound\":\"door-bolt-4\"}'),
(101, 'bcso12', '{\"heading\":135,\"groups\":{\"bcso\":0},\"state\":1,\"model\":-594854737,\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":-445.9456787109375,\"y\":6012.88037109375,\"z\":27.73100090026855},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"easy\"],\"lockSound\":\"door-bolt-4\"}'),
(102, 'bcso13', '{\"heading\":135,\"groups\":{\"bcso\":0},\"state\":1,\"model\":-594854737,\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":-448.9160461425781,\"y\":6015.85107421875,\"z\":27.73100090026855},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"easy\"],\"lockSound\":\"door-bolt-4\"}'),
(103, 'bcso14', '{\"heading\":135,\"groups\":{\"bcso\":0},\"state\":1,\"model\":-594854737,\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":-446.3604431152344,\"y\":6018.40673828125,\"z\":27.73100090026855},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"easy\"],\"lockSound\":\"door-bolt-4\"}'),
(105, 'moto', '{\"groups\":{\"motorcycle\":0},\"state\":1,\"doors\":[{\"coords\":{\"x\":269.2939147949219,\"y\":-1154.392822265625,\"z\":29.48142433166504},\"model\":1564471782,\"heading\":90},{\"coords\":{\"x\":269.2939147949219,\"y\":-1156.2969970703126,\"z\":29.48142433166504},\"model\":-1902553960,\"heading\":90}],\"maxDistance\":2,\"coords\":{\"x\":269.2939147949219,\"y\":-1155.344970703125,\"z\":29.48142433166504},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(106, 'moto', '{\"heading\":270,\"groups\":{\"motorcycle\":0},\"state\":1,\"auto\":true,\"model\":-190780785,\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":269.2529296875,\"y\":-1159.6741943359376,\"z\":30.24548721313476},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(107, 'moto3', '{\"heading\":0,\"groups\":{\"motorcycle\":0},\"state\":1,\"model\":-952356348,\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":276.4721984863281,\"y\":-1162.2447509765626,\"z\":29.42769432067871},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(108, 'moto4', '{\"groups\":{\"motorcycle\":0},\"state\":1,\"doors\":[{\"coords\":{\"x\":287.8146057128906,\"y\":-1149.1007080078126,\"z\":29.45318794250488},\"model\":1564471782,\"heading\":0},{\"coords\":{\"x\":285.9169616699219,\"y\":-1149.1007080078126,\"z\":29.45318794250488},\"model\":-1902553960,\"heading\":0}],\"maxDistance\":2,\"coords\":{\"x\":286.86578369140627,\"y\":-1149.1007080078126,\"z\":29.45318794250488},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(109, 'cardealer', '{\"groups\":{\"cardealer\":0},\"state\":1,\"doors\":[{\"coords\":{\"x\":-1268.5780029296876,\"y\":-370.37017822265627,\"z\":37.0992431640625},\"model\":-1152174184,\"heading\":298},{\"coords\":{\"x\":-1269.7930908203126,\"y\":-368.1114807128906,\"z\":37.11116027832031},\"model\":73386408,\"heading\":298}],\"maxDistance\":2,\"coords\":{\"x\":-1269.185546875,\"y\":-369.2408447265625,\"z\":37.1052017211914},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(110, 'cardealer', '{\"groups\":{\"cardealer\":0},\"state\":1,\"doors\":[{\"coords\":{\"x\":-1261.8756103515626,\"y\":-349.6961975097656,\"z\":37.11116027832031},\"model\":-1152174184,\"heading\":207},{\"coords\":{\"x\":-1259.59130859375,\"y\":-348.5322570800781,\"z\":37.11116027832031},\"model\":73386408,\"heading\":207}],\"maxDistance\":2,\"coords\":{\"x\":-1260.7333984375,\"y\":-349.1142272949219,\"z\":37.11116027832031},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(111, 'cardealer4', '{\"heading\":296,\"groups\":{\"cardealer\":0},\"state\":1,\"model\":964838196,\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":-1244.7039794921876,\"y\":-349.8123474121094,\"z\":37.48183059692383},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(112, 'cardealer7', '{\"heading\":207,\"groups\":{\"cardealer\":0},\"state\":1,\"auto\":true,\"model\":1430328167,\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":-1237.8436279296876,\"y\":-338.19476318359377,\"z\":37.60727310180664},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}');

-- --------------------------------------------------------

--
-- Structure de la table `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `phone_messages`
--

INSERT INTO `phone_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES
(106, 'police', '956-7012', 'De #956-7012 : test', '2023-05-10 13:48:34', 0, 0),
(107, 'police', '956-7012', 'De #956-7012 : test', '2023-05-10 13:48:45', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `playerskins`
--

CREATE TABLE `playerskins` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Structure de la table `player_outfits`
--

CREATE TABLE `player_outfits` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL DEFAULT '0',
  `model` varchar(50) DEFAULT NULL,
  `props` varchar(1000) DEFAULT NULL,
  `components` varchar(1500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `player_outfit_codes`
--

CREATE TABLE `player_outfit_codes` (
  `id` int(11) NOT NULL,
  `outfitid` int(11) NOT NULL,
  `code` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) DEFAULT NULL,
  `message` varchar(256) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(60) NOT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `metadata` longtext DEFAULT NULL,
  `position` longtext DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `faction` varchar(20) DEFAULT 'nofaction',
  `faction_grade` int(11) DEFAULT 0,
  `firstname` varchar(50) DEFAULT '',
  `lastname` varchar(50) DEFAULT '',
  `dateofbirth` varchar(25) DEFAULT '',
  `sex` varchar(10) DEFAULT '',
  `height` varchar(5) DEFAULT '',
  `name` varchar(5) DEFAULT '',
  `hotbar` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`identifier`, `accounts`, `group`, `inventory`, `job`, `job_grade`, `loadout`, `metadata`, `position`, `skin`, `faction`, `faction_grade`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `name`, `hotbar`, `status`, `phone_number`, `pincode`, `is_dead`) VALUES
('96accefda755458c14ad75ae3824d5ecc56e8638', '{\"bank\":50000,\"money\":590770,\"black_money\":0}', 'admin', '{\"id_card\":1,\"weed\":2,\"phone\":1,\"weed_pochon\":8,\"sprite\":12,\"hotdog\":6,\"saucisson\":1}', 'vigneron', 3, '{\"WEAPON_PISTOL\":{\"ammo\":100}}', '[]', '{\"heading\":212.59841918945313,\"x\":4476.61962890625,\"y\":-4491.7978515625,\"z\":4.1904296875}', '{\"headBlend\":{\"skinThird\":0,\"skinSecond\":0,\"skinMix\":0,\"shapeSecond\":0,\"thirdMix\":0,\"shapeFirst\":10,\"skinFirst\":5,\"shapeThird\":0,\"shapeMix\":0},\"hair\":{\"color\":0,\"texture\":0,\"style\":0,\"highlight\":0},\"eyeColor\":-1,\"headOverlays\":{\"blush\":{\"color\":0,\"opacity\":0,\"style\":0,\"secondColor\":0},\"lipstick\":{\"color\":0,\"opacity\":0,\"style\":0,\"secondColor\":0},\"ageing\":{\"color\":0,\"opacity\":0,\"style\":0,\"secondColor\":0},\"beard\":{\"color\":0,\"opacity\":1,\"style\":10,\"secondColor\":0},\"eyebrows\":{\"color\":0,\"opacity\":1,\"style\":10,\"secondColor\":0},\"sunDamage\":{\"color\":0,\"opacity\":0,\"style\":0,\"secondColor\":0},\"complexion\":{\"color\":0,\"opacity\":0,\"style\":0,\"secondColor\":0},\"blemishes\":{\"color\":0,\"opacity\":0,\"style\":0,\"secondColor\":0},\"moleAndFreckles\":{\"color\":0,\"opacity\":0,\"style\":0,\"secondColor\":0},\"bodyBlemishes\":{\"color\":0,\"opacity\":0,\"style\":0,\"secondColor\":0},\"makeUp\":{\"color\":0,\"opacity\":0,\"style\":0,\"secondColor\":0},\"chestHair\":{\"color\":0,\"opacity\":0,\"style\":0,\"secondColor\":0}},\"tattoos\":[],\"model\":\"mp_m_freemode_01\",\"components\":[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":1},{\"texture\":0,\"drawable\":0,\"component_id\":2},{\"texture\":0,\"drawable\":0,\"component_id\":3},{\"texture\":0,\"drawable\":0,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":0,\"component_id\":6},{\"texture\":0,\"drawable\":0,\"component_id\":7},{\"texture\":0,\"drawable\":0,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":0,\"drawable\":0,\"component_id\":11}],\"faceFeatures\":{\"noseBoneTwist\":0,\"eyeBrownForward\":0,\"nosePeakLowering\":0,\"jawBoneBackSize\":0,\"chinBoneLowering\":0,\"eyesOpening\":0,\"neckThickness\":0,\"nosePeakHigh\":0,\"cheeksWidth\":0,\"noseBoneHigh\":0,\"cheeksBoneHigh\":0,\"chinHole\":0,\"lipsThickness\":0,\"chinBoneSize\":0,\"noseWidth\":0,\"chinBoneLenght\":0,\"nosePeakSize\":0,\"cheeksBoneWidth\":0,\"eyeBrownHigh\":0,\"jawBoneWidth\":0},\"props\":[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":-1,\"drawable\":-1},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":-1,\"drawable\":-1},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}]}', 'nofaction', 0, 'Franck', 'Graves', '2002-11-14', 'm', '183', 'fr', '{}', '[{\"name\":\"drunk\",\"percent\":0.0,\"val\":0},{\"name\":\"hunger\",\"percent\":20.82,\"val\":208200},{\"name\":\"thirst\",\"percent\":13.525,\"val\":135250},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', '956-7012', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_policearmory`
--

CREATE TABLE `user_policearmory` (
  `identifier` varchar(50) NOT NULL,
  `weapons` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Adder', 'adder', 900000, 'super'),
('Alpha', 'alpha', 60000, 'sports'),
('Ardent', 'ardent', 1150000, 'sportsclassics'),
('Asbo', 'asbo', 8000, 'compacts'),
('Asea', 'asea', 5500, 'sedans'),
('Asterope', 'asterope', 9000, 'sedans'),
('Autarch', 'autarch', 1955000, 'super'),
('Baller', 'baller', 32000, 'suvs'),
('Baller2', 'baller2', 40000, 'suvs'),
('Baller Sport', 'baller3', 60000, 'suvs'),
('Baller4', 'baller4', 32000, 'suvs'),
('Banshee', 'banshee', 70000, 'sports'),
('Banshee 900R', 'banshee2', 255000, 'super'),
('Bestia GTS', 'bestiagts', 55000, 'sports'),
('Bf Injection', 'bfinjection', 16000, 'offroad'),
('Bifta', 'bifta', 12000, 'offroad'),
('Bison', 'bison', 45000, 'vans'),
('bison2', 'bison2', 45000, 'vans'),
('bison3', 'bison3', 45000, 'vans'),
('Bjxl', 'bjxl', 32000, 'suvs'),
('Blade', 'blade', 15000, 'muscle'),
('Blista', 'blista', 8000, 'compacts'),
('blista Compact', 'blista2', 70000, 'sports'),
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('Canis Bodhi', 'bodhi2', 80000, 'offroad'),
('Brawler', 'brawler', 45000, 'offroad'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Brioso2', 'brioso2', 18000, 'compacts'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Buffalo STX', 'buffalo4', 20000, 'sports'),
('Bullet', 'bullet', 90000, 'super'),
('Burrito', 'burrito3', 19000, 'vans'),
('Calico', 'calico', 70000, 'sports'),
('Camper', 'camper', 42000, 'vans'),
('Caracara', 'caracara2', 80000, 'offroad'),
('Carbonizzare', 'carbonizzare', 75000, 'sports'),
('Casco', 'casco', 30000, 'sportsclassics'),
('cavalcade', 'cavalcade', 32000, 'suvs'),
('Cavalcade2', 'cavalcade2', 55000, 'suvs'),
('Cheburek', 'cheburek', 220000, 'sportsclassics'),
('Cheetah', 'cheetah', 375000, 'super'),
('Cheetah Classique', 'cheetah2', 220000, 'sportsclassics'),
('Chino', 'chino', 15000, 'muscle'),
('Chino Luxe', 'chino2', 19000, 'muscle'),
('Clique', 'clique', 5745600, 'muscle'),
('Club', 'club', 18000, 'compacts'),
('Cognoscenti 55', 'cog55', 9000, 'sedans'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Cognoscenti', 'cognoscenti', 9000, 'sedans'),
('Comet', 'comet2', 65000, 'sports'),
('Comet Safari', 'comet4', 70000, 'sports'),
('Comet 5', 'comet5', 1145000, 'sports'),
('Comet S2', 'comet6', 70000, 'sports'),
('Contender', 'contender', 70000, 'suvs'),
('Coquette', 'coquette', 65000, 'sports'),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
('Coquette DIO', 'coquette4', 70000, 'sports'),
('Cyclone', 'cyclone', 1890000, 'super'),
('Cypher', 'cypher', 70000, 'sports'),
('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
('deveste', 'deveste', 70000, 'sports'),
('Deviant', 'deviant', 5745600, 'muscle'),
('Dilettante', 'dilettante', 18000, 'compacts'),
('DuneLoader', 'dloader', 80000, 'offroad'),
('Dominator', 'dominator', 35000, 'muscle'),
('Dominator GTX', 'dominator3', 5745600, 'muscle'),
('Dominator ASP', 'dominator7', 35000, 'muscle'),
('Drafter', 'drafter', 70000, 'sports'),
('Dubsta', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
('Dukes', 'dukes', 28000, 'muscle'),
('Dune Buggy', 'dune', 8000, 'offroad'),
('Dynasty', 'dynasty', 220000, 'sportsclassics'),
('Elegy', 'elegy', 70000, 'sports'),
('Elegy', 'elegy2', 38500, 'sports'),
('Emerus', 'emerus', 3830400, 'super'),
('Emperor', 'emperor', 8500, 'sedans'),
('Entity XXR', 'entity2', 3830400, 'super'),
('Entity XF', 'entityxf', 425000, 'super'),
('Euros', 'euros', 70000, 'sports'),
('Everon', 'everon', 80000, 'offroad'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Faction', 'faction', 20000, 'muscle'),
('Faction Rider', 'faction2', 30000, 'muscle'),
('Faction XL', 'faction3', 40000, 'muscle'),
('Fagaloa', 'fagaloa', 220000, 'sportsclassics'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Flash GT', 'flashgt', 70000, 'sports'),
('FMJ', 'fmj', 185000, 'super'),
('Fhantom', 'fq2', 17000, 'suvs'),
('Freecrawler', 'freecrawler', 80000, 'offroad'),
('Fugitive', 'fugitive', 12000, 'sedans'),
('Furia', 'furia', 3830400, 'super'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Futo', 'futo', 70000, 'sports'),
('Futo GTX', 'futo2', 70000, 'sports'),
('Gauntlet', 'gauntlet', 30000, 'muscle'),
('Gauntlet Clasique', 'gauntlet3', 5745600, 'muscle'),
('Gauntlet Hellfire', 'gauntlet4', 5745600, 'muscle'),
('Gauntlet Clasique Custom', 'gauntlet5', 5745600, 'muscle'),
('Gb200', 'gb200', 70000, 'sports'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('Glendale', 'glendale', 6500, 'sedans'),
('Glendale Custom', 'glendale2', 9000, 'sedans'),
('Gp1', 'gp1', 3830400, 'super'),
('Grabger', 'granger', 50000, 'suvs'),
('Gresley', 'gresley', 47500, 'suvs'),
('Growler', 'growler', 70000, 'sports'),
('GT 500', 'gt500', 785000, 'sportsclassics'),
('Guardian', 'guardian', 45000, 'offroad'),
('Habanero', 'habanero', 32000, 'suvs'),
('Hellion', 'hellion', 80000, 'offroad'),
('Hermes', 'hermes', 535000, 'muscle'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Huntley S', 'huntley', 40000, 'suvs'),
('Hustler', 'hustler', 625000, 'muscle'),
('Imorgon', 'imorgon', 70000, 'sports'),
('Declasse Impaler', 'impaler', 5745600, 'muscle'),
('Imperator', 'imperator', 5745600, 'muscle'),
('Infernus', 'infernus', 180000, 'super'),
('Infernus Classique', 'infernus2', 220000, 'sportsclassics'),
('Ingot', 'ingot', 9000, 'sedans'),
('Intruder', 'intruder', 7500, 'sedans'),
('Issi', 'issi2', 10000, 'compacts'),
('issi3', 'issi3', 18000, 'compacts'),
('Issi7', 'issi7', 70000, 'sports'),
('Progen itali GTB', 'italigtb', 3830400, 'super'),
('Progen itali GTB Custom', 'italigtb2', 3830400, 'super'),
('Italigto', 'italigto', 70000, 'sports'),
('Italirsx', 'italirsx', 70000, 'sports'),
('Jackal', 'jackal', 38000, 'coupes'),
('Jb700', 'jb700', 220000, 'sportsclassics'),
('Jb700W', 'jb7002', 220000, 'sportsclassics'),
('Jester', 'jester', 65000, 'sports'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Jester Classique', 'jester3', 70000, 'sports'),
('jester RR', 'jester4', 70000, 'sports'),
('Journey', 'journey', 6500, 'vans'),
('Jugular', 'jugular', 70000, 'sports'),
('Kalahari', 'kalahari', 80000, 'offroad'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('Kanjo', 'kanjo', 18000, 'compacts'),
('Khamelion', 'khamelion', 38000, 'sports'),
('Komoda', 'komoda', 70000, 'sports'),
('Krieger', 'krieger', 3830400, 'super'),
('Kuruma', 'kuruma', 30000, 'sports'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('landstalker XL', 'landstalker2', 32000, 'suvs'),
('RE-7B', 'le7b', 325000, 'super'),
('Locust', 'locust', 70000, 'sports'),
('Albary Lurcher', 'lurcher', 5745600, 'muscle'),
('Lynx', 'lynx', 40000, 'sports'),
('Mamba', 'mamba', 70000, 'sports'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Manana Custom', 'manana2', 220000, 'sportsclassics'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Michelli GT', 'michelli', 220000, 'sportsclassics'),
('Minivan', 'minivan', 13000, 'vans'),
('Minivan Custom', 'minivan2', 45000, 'vans'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('The Liberator', 'monster', 210000, 'offroad'),
('Moonbeam', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
('Nebula', 'nebula', 220000, 'sportsclassics'),
('Neo', 'neo', 70000, 'sports'),
('Neon', 'neon', 1500000, 'sports'),
('Nero', 'nero', 3830400, 'super'),
('Nero Custom', 'nero2', 3830400, 'super'),
('Nightshade', 'nightshade', 65000, 'muscle'),
('9F', 'ninef', 65000, 'sports'),
('9F Cabrio', 'ninef2', 80000, 'sports'),
('Novak', 'novak', 32000, 'suvs'),
('Omnis', 'omnis', 35000, 'sports'),
('Oppressor', 'oppressor', 3524500, 'super'),
('Oracle', 'oracle', 30000, 'coupes'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Osiris', 'osiris', 160000, 'super'),
('Panto', 'panto', 10000, 'compacts'),
('Paradise', 'paradise', 19000, 'vans'),
('Paragon', 'paragon', 70000, 'sports'),
('Pariah', 'pariah', 1420000, 'sports'),
('Patriot', 'patriot', 55000, 'suvs'),
('Patriot Stretch', 'patriot2', 32000, 'suvs'),
('Penetrator', 'penetrator', 3830400, 'super'),
('Penumbra', 'penumbra', 28000, 'sports'),
('Penumbra FF', 'penumbra2', 70000, 'sports'),
('Peyote', 'peyote', 220000, 'sportsclassics'),
('Peyote Gasser', 'peyote2', 5745600, 'muscle'),
('Peyote Custom', 'peyote3', 220000, 'sportsclassics'),
('Pfister', 'pfister811', 85000, 'super'),
('Phoenix', 'phoenix', 12500, 'muscle'),
('Picador', 'picador', 18000, 'muscle'),
('Pigalle', 'pigalle', 20000, 'sportsclassics'),
('Pony', 'pony', 45000, 'vans'),
('Prairie', 'prairie', 12000, 'compacts'),
('Premier', 'premier', 8000, 'sedans'),
('Previon', 'previon', 45000, 'coupes'),
('Primo', 'primo', 9000, 'sedans'),
('Primo Custom', 'primo2', 14000, 'sedans'),
('X80 Proto', 'prototipo', 2500000, 'super'),
('Radius', 'radi', 29000, 'suvs'),
('raiden', 'raiden', 1375000, 'sports'),
('Rancher xl', 'rancherxl', 80000, 'offroad'),
('Rapid GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
('Rat Truck', 'ratloader2', 5745600, 'muscle'),
('Reaper', 'reaper', 150000, 'super'),
('Rebel', 'rebel', 80000, 'offroad'),
('Rebel2', 'rebel2', 35000, 'offroad'),
('Rebla', 'rebla', 32000, 'suvs'),
('Regina', 'regina', 5000, 'sedans'),
('Remus', 'remus', 70000, 'sports'),
('Retinue', 'retinue', 615000, 'sportsclassics'),
('Retinue MK2', 'retinue2', 220000, 'sportsclassics'),
('Revolter', 'revolter', 1610000, 'sports'),
('Rhapsody', 'rhapsody', 18000, 'compacts'),
('riata', 'riata', 380000, 'offroad'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('Rt3000', 'rt3000', 70000, 'sports'),
('Ruiner', 'ruiner', 5745600, 'muscle'),
('Rumpo', 'rumpo', 15000, 'vans'),
('Rumpo Trail', 'rumpo3', 19500, 'vans'),
('Ruston', 'ruston', 70000, 'sports'),
('s80', 's80', 3830400, 'super'),
('Sabre Turbo', 'sabregt', 20000, 'muscle'),
('Sabre GT', 'sabregt2', 25000, 'muscle'),
('Sadler', 'sadler', 345000, 'offroad'),
('Sandking', 'sandking', 55000, 'offroad'),
('Sandking2', 'sandking2', 80000, 'offroad'),
('Savestra', 'savestra', 990000, 'sportsclassics'),
('SC 1', 'sc1', 1603000, 'super'),
('Schafter', 'schafter2', 25000, 'sedans'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Schafter LWB', 'schafter4', 70000, 'sports'),
('Schlagen', 'schlagen', 70000, 'sports'),
('Schwarzer', 'schwarzer', 70000, 'sports'),
('Seminole', 'seminole', 25000, 'suvs'),
('Seminole2', 'seminole2', 32000, 'suvs'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Sentinel3', 'sentinel3', 650000, 'sports'),
('Serrano', 'serrano', 32000, 'suvs'),
('Seven 70', 'seven70', 39500, 'sports'),
('ETR1', 'sheava', 220000, 'super'),
('Slam Van', 'slamvan3', 11500, 'muscle'),
('Specter', 'specter', 70000, 'sports'),
('Speedo', 'speedo', 45000, 'vans'),
('Speedo Custom', 'speedo4', 45000, 'vans'),
('Stafford', 'stafford', 9000, 'sedans'),
('Stalion', 'stalion', 5745600, 'muscle'),
('Stanier', 'stanier', 9000, 'sedans'),
('Stinger', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Stratum', 'stratum', 9000, 'sedans'),
('Streiter', 'streiter', 500000, 'sports'),
('Stretch', 'stretch', 90000, 'sedans'),
('Stromberg', 'stromberg', 3185350, 'sports'),
('Sugoi', 'sugoi', 70000, 'sports'),
('Sultan', 'sultan', 15000, 'sports'),
('Sultan Classique', 'sultan2', 65000, 'super'),
('Sultan RS Classique', 'sultan3', 65000, 'super'),
('Sultan RS', 'sultanrs', 65000, 'super'),
('Super Diamond', 'superd', 130000, 'sedans'),
('Surano', 'surano', 50000, 'sports'),
('Surfer', 'surfer', 12000, 'vans'),
('Surge', 'surge', 9000, 'sedans'),
('Swinger', 'swinger', 220000, 'sportsclassics'),
('T20', 't20', 300000, 'super'),
('Tailgater', 'tailgater', 30000, 'sedans'),
('Tailgater S', 'tailgater2', 9000, 'sedans'),
('Taipan', 'taipan', 3830400, 'super'),
('Tampa', 'tampa', 16000, 'muscle'),
('Drift Tampa', 'tampa2', 80000, 'sports'),
('Tempesta', 'tempesta', 3830400, 'super'),
('Thrax', 'thrax', 3830400, 'super'),
('Tigon', 'tigon', 3830400, 'super'),
('Toreador', 'toreador', 220000, 'sportsclassics'),
('Torero', 'torero', 220000, 'sportsclassics'),
('Tornado', 'tornado', 220000, 'sportsclassics'),
('Toros', 'toros', 32000, 'suvs'),
('Trophy Truck', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
('Tropos', 'tropos', 40000, 'sports'),
('Tulip', 'tulip', 5745600, 'muscle'),
('Turismo Classique', 'turismo2', 220000, 'sportsclassics'),
('Turismo R', 'turismor', 350000, 'super'),
('Tyrant', 'tyrant', 3830400, 'super'),
('Tyrus', 'tyrus', 600000, 'super'),
('Vacca', 'vacca', 120000, 'super'),
('Vagner', 'vagner', 3830400, 'super'),
('Vagrant', 'vagrant', 80000, 'offroad'),
('Vamos', 'vamos', 5745600, 'muscle'),
('Vectre', 'vectre', 70000, 'sports'),
('Verlierer', 'verlierer2', 70000, 'sports'),
('Vigero', 'vigero', 12500, 'muscle'),
('Albany Virgo', 'virgo', 14000, 'muscle'),
('Virgo Custom', 'virgo2', 5745600, 'muscle'),
('Virgo Classique', 'virgo3', 5745600, 'muscle'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Visione', 'visione', 2250000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('Voodoo', 'voodoo', 7200, 'muscle'),
('Vstr', 'vstr', 70000, 'sports'),
('Warrener', 'warrener', 4000, 'sedans'),
('Washington', 'washington', 9000, 'sedans'),
('Weevil', 'weevil', 18000, 'compacts'),
('Windsor', 'windsor', 95000, 'coupes'),
('Windsor Drop', 'windsor2', 125000, 'coupes'),
('Winky', 'winky', 80000, 'offroad'),
('Xa21', 'xa21', 3830400, 'super'),
('XLS', 'xls', 32000, 'suvs'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Yosemite drift', 'yosemite2', 5745600, 'muscle'),
('Yosemite Rancher', 'yosemite3', 5745600, 'muscle'),
('Youga', 'youga', 10800, 'vans'),
('Youga Luxuary', 'youga2', 14500, 'vans'),
('youga 4x4 Classique', 'youga3', 45000, 'vans'),
('Z190', 'z190', 900000, 'sportsclassics'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Zion', 'zion', 36000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('Zion Classique', 'zion3', 220000, 'sportsclassics'),
('Zorrusso', 'zorrusso', 3830400, 'super'),
('Z-Type', 'ztype', 220000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Index pour la table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

--
-- Index pour la table `banking`
--
ALTER TABLE `banking`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Index pour la table `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `factions`
--
ALTER TABLE `factions`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `faction_grades`
--
ALTER TABLE `faction_grades`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Index pour la table `management_outfits`
--
ALTER TABLE `management_outfits`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`) USING BTREE,
  ADD KEY `vehsowned` (`owner`) USING BTREE;

--
-- Index pour la table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `playerskins`
--
ALTER TABLE `playerskins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `active` (`active`);

--
-- Index pour la table `player_outfits`
--
ALTER TABLE `player_outfits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `citizenid_outfitname_model` (`citizenid`,`outfitname`,`model`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Index pour la table `player_outfit_codes`
--
ALTER TABLE `player_outfit_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_player_outfit_codes_player_outfits` (`outfitid`);

--
-- Index pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  ADD KEY `FK_twitter_likes_twitter_tweets` (`tweetId`);

--
-- Index pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_tweets_twitter_accounts` (`authorId`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_policearmory`
--
ALTER TABLE `user_policearmory`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Index pour la table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `banking`
--
ALTER TABLE `banking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `drugs`
--
ALTER TABLE `drugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `faction_grades`
--
ALTER TABLE `faction_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT pour la table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT pour la table `management_outfits`
--
ALTER TABLE `management_outfits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT pour la table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT pour la table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `playerskins`
--
ALTER TABLE `playerskins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `player_outfits`
--
ALTER TABLE `player_outfits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `player_outfit_codes`
--
ALTER TABLE `player_outfit_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
