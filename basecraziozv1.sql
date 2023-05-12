-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 12 mai 2023 à 18:53
-- Version du serveur : 10.5.18-MariaDB-0+deb11u1
-- Version de PHP : 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `s258_gloriousrp`
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
('society_ammunation', 'Ammunation', 1),
('society_aztecas', 'Aztecas', 1),
('society_bahamas', 'Bahamas', 1),
('society_ballas', 'ballas', 1),
('society_bcso', 'bcso', 1),
('society_brinks', 'Brinks', 1),
('society_cardealer', 'Concessionnaire', 1),
('society_cartel', 'Cartel', 1),
('society_catcafe', 'Cat Café', 1),
('society_cayo', 'Cayo Perico', 1),
('society_families', 'Families', 1),
('society_galaxy', 'Galaxy', 1),
('society_gouvernement', 'Gouvernement', 1),
('society_lost', 'Lost MC', 1),
('society_mafia', 'Mafia', 1),
('society_marabunta', 'Marabunta', 1),
('society_mechanic', 'Mechanic', 1),
('society_motorcycle', 'Moto', 1),
('society_police', 'Police', 1),
('society_realestateagent', 'Agent immobilier', 1),
('society_rose', 'Roses', 1),
('society_taxe_brinks', 'Brinks Taxe', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_vagos', 'Vagos', 1),
('society_vigneron', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_cardealer', 56238, NULL),
(2, 'society_ambulance', 50000, NULL),
(3, 'society_mechanic', 1488, NULL),
(4, 'society_police', 51500, NULL),
(5, 'society_taxi', 50000, NULL),
(6, 'society_unicorn', 50000, NULL),
(7, 'society_ballas', 0, NULL),
(8, 'society_aztecas', 0, NULL),
(10, 'society_cartel', 0, NULL),
(11, 'society_families', 0, NULL),
(12, 'society_lost', 0, NULL),
(13, 'society_mafia', 0, NULL),
(14, 'society_marabunta', 0, NULL),
(15, 'society_vagos', 0, NULL),
(16, 'society_vigneron', 50000, NULL),
(18, 'society_brinks', 50000, NULL),
(19, 'society_taxe_brinks', 0, NULL),
(20, 'society_rose', 0, NULL),
(21, 'society_motorcycle', 50000, NULL),
(22, 'society_bcso', 50010, NULL),
(23, 'society_realestateagent', 50000, NULL),
(24, 'society_galaxy', 50000, NULL),
(25, 'society_gouvernement', 50000, NULL),
(26, 'society_bahamas', 0, NULL),
(27, 'society_cayo', 0, NULL),
(28, 'society_catcafe', 0, NULL),
(29, 'society_ammunation', 0, NULL);

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
('society_ammunation', 'Ammunation', 1),
('society_aztecas', 'Aztecas', 1),
('society_bahamas', 'Bahamas', 1),
('society_ballas', 'ballas', 1),
('society_bcso', 'bcso', 1),
('society_brinks', 'Brinks', 1),
('society_cardealer', 'Concesionnaire', 1),
('society_cartel', 'Cartel', 1),
('society_catcafe', 'Cat Café', 1),
('society_cayo', 'Cayo Perico', 1),
('society_families', 'Families', 1),
('society_galaxy', 'Galaxy', 1),
('society_gouvernement', 'Gouvernement', 1),
('society_lost', 'Lost MC', 1),
('society_mafia', 'Mafia', 1),
('society_marabunta', 'Marabunta', 1),
('society_mechanic', 'Mechanic', 1),
('society_motorcycle', 'Moto', 1),
('society_police', 'Police', 1),
('society_rose', 'Roses', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_vagos', 'Vagos', 1),
('society_vigneron', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL
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

--
-- Déchargement des données de la table `banking`
--

INSERT INTO `banking` (`identifier`, `type`, `amount`, `time`, `ID`, `balance`) VALUES
('bac5ad709b7410826ee1f7849b40d231b6b7895c', 'WITHDRAW', 10000, 1681840121000, 2, 36350),
('bac5ad709b7410826ee1f7849b40d231b6b7895c', 'WITHDRAW', 10000, 1681840268000, 3, 26350),
('bac5ad709b7410826ee1f7849b40d231b6b7895c', 'WITHDRAW', 500, 1681840421000, 4, 25850),
('bac5ad709b7410826ee1f7849b40d231b6b7895c', 'WITHDRAW', 1000, 1681845271000, 5, 24850),
('bac5ad709b7410826ee1f7849b40d231b6b7895c', 'WITHDRAW', 1000, 1681906684000, 6, 23850),
('bac5ad709b7410826ee1f7849b40d231b6b7895c', 'WITHDRAW', 500, 1682008950000, 7, 23350),
('bac5ad709b7410826ee1f7849b40d231b6b7895c', 'WITHDRAW', 1000, 1682092208000, 8, 22350),
('e8e748059b1fed27c021331265dc0480d61be860', 'WITHDRAW', 5000, 1682354905000, 9, 687),
('776f5aa08ac3ad3f772d266d7c51ec508a34bbd0', 'WITHDRAW', 10000, 1682355141000, 10, 40000),
('776f5aa08ac3ad3f772d266d7c51ec508a34bbd0', 'DEPOSIT', 10000, 1682355151000, 11, 50000),
('776f5aa08ac3ad3f772d266d7c51ec508a34bbd0', 'WITHDRAW', 5000, 1682355159000, 12, 45000),
('e35e3c5dd6739a99962e1d1591a32200e2b9118d', 'WITHDRAW', 6000, 1682355164000, 13, 44000),
('776f5aa08ac3ad3f772d266d7c51ec508a34bbd0', 'WITHDRAW', 2000, 1682355164000, 14, 43000),
('e35e3c5dd6739a99962e1d1591a32200e2b9118d', 'WITHDRAW', 2000, 1682355172000, 15, 42000),
('776f5aa08ac3ad3f772d266d7c51ec508a34bbd0', 'WITHDRAW', 1000, 1682355173000, 16, 42000),
('e8e748059b1fed27c021331265dc0480d61be860', 'DEPOSIT', 3000, 1682355575000, 17, 7148),
('7c37425743ff6fb7f740dce4492bea16acbb89df', 'WITHDRAW', 10000, 1682355596000, 18, 0),
('4033ea29562af80cdf4e24bb7dbc5b712651d6d6', 'WITHDRAW', 6000, 1682356315000, 19, 40),
('776f5aa08ac3ad3f772d266d7c51ec508a34bbd0', 'WITHDRAW', 8000, 1682356695000, 20, 34000),
('e8e748059b1fed27c021331265dc0480d61be860', 'WITHDRAW', 2000, 1682356973000, 21, 5148),
('eb2590ac498963958218b515bfd803b0776c9e08', 'WITHDRAW', 700, 1682357275000, 22, 5500),
('f225082d5a50e4afb3e9850cda24d5f613da7ef3', 'WITHDRAW', 10000, 1682357317000, 23, 200),
('9c9e1295d88065d75789d74b17abb9694d9e91e0', 'WITHDRAW', 1000, 1682358020000, 24, 9000),
('eb2590ac498963958218b515bfd803b0776c9e08', 'WITHDRAW', 1000, 1682359116000, 25, 4500),
('67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 'WITHDRAW', 10000, 1682359456000, 26, 0),
('eb2590ac498963958218b515bfd803b0776c9e08', 'DEPOSIT', 200, 1682359903000, 27, 700),
('eb2590ac498963958218b515bfd803b0776c9e08', 'WITHDRAW', 700, 1682360722000, 28, 0),
('bac5ad709b7410826ee1f7849b40d231b6b7895c', 'DEPOSIT', 15508, 1682414295000, 29, 37858),
('bac5ad709b7410826ee1f7849b40d231b6b7895c', 'WITHDRAW', 1500, 1682414703000, 30, 36358),
('bcb294db06c3db5662aa1d59c8a70a4fde20455d', 'WITHDRAW', 5000, 1682415610000, 31, 5000),
('776f5aa08ac3ad3f772d266d7c51ec508a34bbd0', 'DEPOSIT', 3952, 1682415866000, 32, 37952),
('776f5aa08ac3ad3f772d266d7c51ec508a34bbd0', 'WITHDRAW', 20000, 1682415872000, 33, 17952),
('230cdfa13129e5ad39faece17c502911cbaa784f', 'WITHDRAW', 2000, 1682415980000, 34, 8000),
('eb2590ac498963958218b515bfd803b0776c9e08', 'DEPOSIT', 445, 1682416181000, 35, 445),
('eb2590ac498963958218b515bfd803b0776c9e08', 'WITHDRAW', 200, 1682416960000, 36, 245),
('3c23ecfcaa92eb9850a615fdedfc208ee1e96ffa', 'WITHDRAW', 10000, 1682419259000, 37, 0),
('802ae7807563388f110349e6e49299ca33f38712', 'WITHDRAW', 1000, 1682428533000, 38, 22800),
('eb2590ac498963958218b515bfd803b0776c9e08', 'DEPOSIT', 483, 1682431709000, 39, 728),
('630e51d91706e2e79529dc26831b96f71a1ebed1', 'WITHDRAW', 2000, 1682433002000, 40, 8000),
('630e51d91706e2e79529dc26831b96f71a1ebed1', 'WITHDRAW', 1000, 1682433605000, 41, 7000),
('e8e748059b1fed27c021331265dc0480d61be860', 'WITHDRAW', 1000, 1682434291000, 42, 4148),
('9c9e1295d88065d75789d74b17abb9694d9e91e0', 'WITHDRAW', 2000, 1682434306000, 43, 7000),
('630e51d91706e2e79529dc26831b96f71a1ebed1', 'WITHDRAW', 7000, 1682435006000, 44, 0),
('802ae7807563388f110349e6e49299ca33f38712', 'WITHDRAW', 1000, 1682439490000, 45, 24000),
('802ae7807563388f110349e6e49299ca33f38712', 'WITHDRAW', 2000, 1682439833000, 46, 22100),
('552336394dc327ede208fb7fa97ff86088f4ac99', 'WITHDRAW', 5000, 1682441576000, 47, 1650),
('bac5ad709b7410826ee1f7849b40d231b6b7895c', 'WITHDRAW', 900, 1682444101000, 48, 30458),
('bac5ad709b7410826ee1f7849b40d231b6b7895c', 'WITHDRAW', 458, 1682444560000, 49, 30000),
('f2f9d66456cc94a664b2054a4f35af3b3c793bb6', 'WITHDRAW', 2000, 1682445618000, 50, 8000),
('67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 'DEPOSIT', 400, 1682446627000, 51, 400),
('bac5ad709b7410826ee1f7849b40d231b6b7895c', 'WITHDRAW', 1000, 1682446906000, 52, 11000),
('802ae7807563388f110349e6e49299ca33f38712', 'WITHDRAW', 5000, 1682449048000, 53, 19000),
('9c9e1295d88065d75789d74b17abb9694d9e91e0', 'WITHDRAW', 2000, 1682449700000, 54, 5000),
('bac5ad709b7410826ee1f7849b40d231b6b7895c', 'WITHDRAW', 5000, 1682452343000, 55, 6000),
('bac5ad709b7410826ee1f7849b40d231b6b7895c', 'WITHDRAW', 3000, 1682453337000, 56, 3000),
('802ae7807563388f110349e6e49299ca33f38712', 'WITHDRAW', 5000, 1682454572000, 57, 15300),
('bac5ad709b7410826ee1f7849b40d231b6b7895c', 'WITHDRAW', 3000, 1682454970000, 58, 0),
('802ae7807563388f110349e6e49299ca33f38712', 'WITHDRAW', 10000, 1682456047000, 59, 5600),
('802ae7807563388f110349e6e49299ca33f38712', 'WITHDRAW', 5000, 1682457363000, 60, 1000),
('e8e748059b1fed27c021331265dc0480d61be860', 'WITHDRAW', 2000, 1682509913000, 61, 2148),
('e8e748059b1fed27c021331265dc0480d61be860', 'DEPOSIT', 1809, 1682510630000, 62, 3957),
('9c9e1295d88065d75789d74b17abb9694d9e91e0', 'WITHDRAW', 1000, 1682512694000, 63, 4000),
('41ce902204ac191b192307665631bb4e2b7f3944', 'WITHDRAW', 500, 1682520964000, 64, 5500),
('b85884b41c5619093ffb28377e571de704dd6bd6', 'WITHDRAW', 1000, 1682522024000, 65, 5350),
('02092e91f72e417897845f65735abcc3b3bbcfac', 'DEPOSIT', 900000, 1682523483000, 66, 945600),
('1456a4c928badecc8ef4fdb9c13083b2f0c41433', 'WITHDRAW', 2000, 1682529283000, 67, 8000),
('eb2590ac498963958218b515bfd803b0776c9e08', 'DEPOSIT', 386, 1682531445000, 68, 1114),
('eb2590ac498963958218b515bfd803b0776c9e08', 'DEPOSIT', 1847, 1682533025000, 69, 2961),
('41ce902204ac191b192307665631bb4e2b7f3944', 'WITHDRAW', 200, 1682536583000, 70, 9800),
('41ce902204ac191b192307665631bb4e2b7f3944', 'WITHDRAW', 1000, 1682539725000, 71, 8800),
('41ce902204ac191b192307665631bb4e2b7f3944', 'WITHDRAW', 3500, 1682540019000, 72, 5300),
('41ce902204ac191b192307665631bb4e2b7f3944', 'DEPOSIT', 18000, 1682543754000, 73, 23300),
('b85884b41c5619093ffb28377e571de704dd6bd6', 'DEPOSIT', 23374, 1682543889000, 74, 28724),
('41ce902204ac191b192307665631bb4e2b7f3944', 'WITHDRAW', 4000, 1682545579000, 75, 19300),
('41ce902204ac191b192307665631bb4e2b7f3944', 'DEPOSIT', 8785, 1682546803000, 76, 28085),
('41ce902204ac191b192307665631bb4e2b7f3944', 'DEPOSIT', 15250, 1682585820000, 77, 43335),
('b85884b41c5619093ffb28377e571de704dd6bd6', 'WITHDRAW', 1000, 1682612184000, 78, 27724),
('990a2a48e4c40594a6158d037a570d920231a608', 'WITHDRAW', 5000, 1682770493000, 79, 5000),
('eb2590ac498963958218b515bfd803b0776c9e08', 'WITHDRAW', 500, 1682875192000, 80, 2461),
('eb2590ac498963958218b515bfd803b0776c9e08', 'WITHDRAW', 500, 1682881789000, 81, 1961),
('232e57e11d80eb12e71995dcc7d3ec3d4b8429e5', 'WITHDRAW', 6000, 1683395057000, 82, 350);

-- --------------------------------------------------------

--
-- Structure de la table `bike`
--

CREATE TABLE `bike` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `bike`
--

INSERT INTO `bike` (`name`, `model`, `price`, `category`) VALUES
('Akuma', 'akuma', 16000, 'motos'),
('Avarus', 'avarus', 8000, 'motos'),
('Bagger', 'bagger', 10750, 'motos'),
('Bati 801', 'bati', 40000, 'motos'),
('Bati 801 RR', 'bati2', 47500, 'motos'),
('BF 400', 'bf400', 17250, 'motos'),
('blazer', 'Blazer', 9000, 'quad'),
('blazer3', 'Blazer3', 11000, 'quad'),
('blazer4', 'Blazer4', 13000, 'quad'),
('Carbon RS', 'carbonrs', 25000, 'motos'),
('Chimera', 'chimera', 9750, 'motos'),
('Cliffhanger', 'cliffhanger', 11250, 'motos'),
('Daemon', 'daemon', 10000, 'motos'),
('Daemon', 'daemon2', 10000, 'motos'),
('deathbike', 'deathbike', 6250, 'motos'),
('Defiler', 'Defiler', 19000, 'motos'),
('Diabolus', 'diablous', 12000, 'motos'),
('Diabolus Custom', 'diablous2', 17000, 'motos'),
('Double - T', 'double', 20500, 'motos'),
('Enduro', 'enduro', 13250, 'motos'),
('Esskey', 'esskey', 12500, 'motos'),
('Faggio Sport', 'faggio', 3250, 'motos'),
('Faggio Mod', 'faggio3', 2250, 'motos'),
('FCR 1000', 'fcr', 11250, 'motos'),
('FCR 1000 Custom', 'fcr2', 10750, 'motos'),
('Gargoyle', 'gargoyle', 7000, 'motos'),
('Hakuchou', 'hakuchou', 65000, 'motos'),
('hakuchou2', 'hakuchou drag', 82500, 'motos'),
('Hexer', 'hexer', 6500, 'motos'),
('Innovation', 'innovation', 6750, 'motos'),
('Lectro', 'lectro', 21000, 'motos'),
('Manchez', 'manchez', 9000, 'motos'),
('Manchez', 'manchez3', 9500, 'motos'),
('Nemesis', 'nemesis', 12250, 'motos'),
('Nightblade', 'nightblade', 16500, 'motos'),
('PCJ 600', 'pcj', 13500, 'motos'),
('Rat Bike', 'ratbike', 5500, 'motos'),
('Ruffian', 'ruffian', 18000, 'motos'),
('Sanchez V2', 'sanchez', 8250, 'motos'),
('Sanctus', 'sanctus', 8500, 'motos'),
('Sovereign', 'sovereign', 14000, 'motos'),
('Stryder', 'stryder', 11750, 'motos'),
('Thrust', 'thrust', 22500, 'motos'),
('Vader', 'vader', 14500, 'motos'),
('verus', 'Verus', 8750, 'quad'),
('Vindicator', 'vindicator', 21750, 'motos'),
('Vortex', 'vortex', 24000, 'motos'),
('rrocket', 'Western ampant Rocket', 25000, 'motos'),
('Wolfsbane', 'wolfsbane', 10750, 'motos'),
('Zombie Bobber', 'zombiea', 8000, 'motos'),
('Zombie Chopper', 'zombieb', 8000, 'motos');

-- --------------------------------------------------------

--
-- Structure de la table `bike_categories`
--

CREATE TABLE `bike_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `bike_categories`
--

INSERT INTO `bike_categories` (`name`, `label`) VALUES
('import', 'Motos import'),
('motos', 'Motos'),
('quad', 'Quad');

-- --------------------------------------------------------

--
-- Structure de la table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `sender` varchar(60) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `billing`
--

INSERT INTO `billing` (`id`, `identifier`, `sender`, `target_type`, `target`, `label`, `amount`) VALUES
(4, '96accefda755458c14ad75ae3824d5ecc56e8638', '802ae7807563388f110349e6e49299ca33f38712', 'society', 'society_motorcycle', 'motorcycle', 130000),
(6, '776f5aa08ac3ad3f772d266d7c51ec508a34bbd0', '802ae7807563388f110349e6e49299ca33f38712', 'society', 'society_motorcycle', 'motorcycle', 16500),
(9, 'eb2590ac498963958218b515bfd803b0776c9e08', '9c9e1295d88065d75789d74b17abb9694d9e91e0', 'society', 'society_police', 'Amende: Véhicule non en état', 100),
(10, 'eb2590ac498963958218b515bfd803b0776c9e08', '9c9e1295d88065d75789d74b17abb9694d9e91e0', 'society', 'society_police', 'Amende: Conduite sans permis', 1500),
(11, '9c9e1295d88065d75789d74b17abb9694d9e91e0', 'e8e748059b1fed27c021331265dc0480d61be860', 'society', 'society_police', 'Amende: Usage abusif du klaxon', 30),
(12, '9c9e1295d88065d75789d74b17abb9694d9e91e0', '7c37425743ff6fb7f740dce4492bea16acbb89df', 'society', 'society_police', 'Amende: Circulation à contresens', 250),
(13, '9c9e1295d88065d75789d74b17abb9694d9e91e0', '7c37425743ff6fb7f740dce4492bea16acbb89df', 'society', 'society_police', 'Amende: Circulation à contresens', 250),
(14, '9c9e1295d88065d75789d74b17abb9694d9e91e0', '7c37425743ff6fb7f740dce4492bea16acbb89df', 'society', 'society_police', 'Amende: Meurte sur agent de l\'état', 30000),
(15, '7c37425743ff6fb7f740dce4492bea16acbb89df', 'e8e748059b1fed27c021331265dc0480d61be860', 'society', 'society_police', 'Amende: Meurte sur agent de l\'état', 30000),
(20, 'bac5ad709b7410826ee1f7849b40d231b6b7895c', '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 'society', 'society_mechanic', 'Mecano', 1860),
(24, 'e8e748059b1fed27c021331265dc0480d61be860', '9c9e1295d88065d75789d74b17abb9694d9e91e0', 'society', 'society_police', 'Amende: Tentative de meurtre sur agent de l\'état', 5000),
(26, 'e8e748059b1fed27c021331265dc0480d61be860', '9c9e1295d88065d75789d74b17abb9694d9e91e0', 'society', 'society_police', 'Amende: Excès de vitesse > 30 kmh', 300);

-- --------------------------------------------------------

--
-- Structure de la table `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
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
('property', 'Property', 1),
('society_ambulance', 'Ambulance', 1),
('society_ammunation', 'Ammunation', 1),
('society_aztecas', 'Aztecas', 1),
('society_bahamas', 'Bahamas', 1),
('society_ballas', 'ballas', 1),
('society_bcso', 'bcso', 1),
('society_brinks', 'Brinks', 1),
('society_cartel', 'Cartel', 1),
('society_catcafe', 'Cat Café', 1),
('society_cayo', 'Cayo Perico', 1),
('society_families', 'Families', 1),
('society_galaxy', 'Galaxy', 1),
('society_gouvernement', 'Gouvernement', 1),
('society_lost', 'Lost MC', 1),
('society_mafia', 'Mafia', 1),
('society_marabunta', 'Marabunta', 1),
('society_mechanic', 'Mechanic', 1),
('society_police', 'Police', 1),
('society_rose', 'Roses', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_vagos', 'Vagos', 1),
('society_vigneron', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'society_ambulance', NULL, '\'{}\''),
(2, 'society_mechanic', NULL, '\'{}\''),
(3, 'society_police', NULL, '\'{}\''),
(4, 'society_taxi', NULL, '\'{}\''),
(52, 'society_unicorn', NULL, '\'{}\''),
(56, 'society_ballas', NULL, '\'{}\''),
(58, 'society_aztecas', NULL, '\'{}\''),
(60, 'society_cartel', NULL, '\'{}\''),
(61, 'society_families', NULL, '\'{}\''),
(62, 'society_lost', NULL, '\'{}\''),
(63, 'society_mafia', NULL, '\'{}\''),
(64, 'society_marabunta', NULL, '\'{}\''),
(65, 'society_vagos', NULL, '\'{}\''),
(77, 'society_vigneron', NULL, '\'{}\''),
(123, 'property', NULL, '\'{}\''),
(124, 'property', NULL, '{}'),
(125, 'property', NULL, '{}'),
(126, 'property', NULL, '{}'),
(127, 'property', NULL, '{}'),
(128, 'property', NULL, '{}'),
(129, 'property', NULL, '{}'),
(130, 'property', NULL, '{}'),
(131, 'property', NULL, '{}'),
(132, 'property', NULL, '{}'),
(133, 'property', NULL, '{}'),
(134, 'property', NULL, '{}'),
(135, 'property', NULL, '{}'),
(136, 'property', NULL, '{}'),
(137, 'property', NULL, '{}'),
(138, 'property', NULL, '{}'),
(139, 'property', NULL, '{}'),
(140, 'property', NULL, '{}'),
(141, 'property', NULL, '{}'),
(142, 'property', NULL, '{}'),
(143, 'property', NULL, '{}'),
(144, 'property', NULL, '{}'),
(145, 'property', NULL, '{}'),
(146, 'property', NULL, '{}'),
(147, 'property', NULL, '{}'),
(148, 'property', NULL, '{}'),
(149, 'property', NULL, '{}'),
(150, 'property', NULL, '{}'),
(151, 'property', NULL, '{}'),
(152, 'property', NULL, '{}'),
(153, 'property', NULL, '{}'),
(154, 'property', NULL, '{}'),
(155, 'property', NULL, '{}'),
(156, 'property', NULL, '{}'),
(157, 'property', NULL, '{}'),
(158, 'property', NULL, '{}'),
(159, 'property', NULL, '{}'),
(160, 'property', NULL, '{}'),
(161, 'property', NULL, '{}'),
(162, 'property', NULL, '{}'),
(163, 'property', NULL, '{}'),
(164, 'property', NULL, '{}'),
(165, 'property', NULL, '{}'),
(166, 'property', NULL, '{}'),
(167, 'property', NULL, '{}'),
(168, 'property', NULL, '{}'),
(169, 'property', NULL, '{}'),
(170, 'property', NULL, '{}'),
(171, 'property', NULL, '{}'),
(172, 'property', NULL, '{}'),
(173, 'property', NULL, '{}'),
(174, 'property', NULL, '{}'),
(175, 'property', NULL, '{}'),
(176, 'property', NULL, '{}'),
(177, 'property', NULL, '{}'),
(178, 'property', NULL, '{}'),
(179, 'property', NULL, '{}'),
(180, 'property', NULL, '{}'),
(181, 'property', NULL, '{}'),
(182, 'property', NULL, '{}'),
(183, 'property', NULL, '{}'),
(184, 'property', NULL, '{}'),
(185, 'property', NULL, '{}'),
(186, 'property', NULL, '{}'),
(187, 'property', NULL, '{}'),
(188, 'property', NULL, '{}'),
(189, 'property', NULL, '{}'),
(190, 'property', NULL, '{}'),
(191, 'property', NULL, '{}'),
(192, 'property', NULL, '{}'),
(193, 'property', NULL, '{}'),
(194, 'property', NULL, '{}'),
(195, 'property', NULL, '{}'),
(196, 'property', NULL, '{}'),
(197, 'property', NULL, '{}'),
(198, 'property', NULL, '{}'),
(199, 'property', NULL, '{}'),
(200, 'property', NULL, '{}'),
(201, 'property', NULL, '{}'),
(202, 'property', NULL, '{}'),
(203, 'property', NULL, '{}'),
(204, 'property', NULL, '{}'),
(205, 'property', NULL, '{}'),
(206, 'property', NULL, '{}'),
(207, 'property', NULL, '{}'),
(208, 'property', NULL, '{}'),
(209, 'property', NULL, '{}'),
(210, 'property', NULL, '{}'),
(211, 'property', NULL, '{}'),
(212, 'property', NULL, '{}'),
(213, 'property', NULL, '{}'),
(214, 'property', NULL, '{}'),
(215, 'property', NULL, '{}'),
(216, 'property', NULL, '{}'),
(217, 'property', NULL, '{}'),
(218, 'property', NULL, '{}'),
(219, 'property', NULL, '{}'),
(220, 'property', NULL, '{}'),
(221, 'property', NULL, '{}'),
(222, 'property', NULL, '{}'),
(223, 'property', NULL, '{}'),
(224, 'property', NULL, '{}'),
(225, 'property', NULL, '{}'),
(226, 'property', NULL, '{}'),
(227, 'property', NULL, '{}'),
(228, 'property', NULL, '{}'),
(229, 'property', NULL, '{}'),
(230, 'property', NULL, '{}'),
(231, 'property', NULL, '{}'),
(232, 'property', NULL, '{}'),
(233, 'society_brinks', NULL, '\'{}\''),
(234, 'property', NULL, '{}'),
(235, 'property', NULL, '{}'),
(236, 'property', NULL, '{}'),
(237, 'property', NULL, '{}'),
(238, 'property', NULL, '{}'),
(239, 'property', NULL, '{}'),
(240, 'property', NULL, '{}'),
(241, 'property', NULL, '{}'),
(242, 'property', NULL, '{}'),
(243, 'property', NULL, '{}'),
(244, 'property', NULL, '{}'),
(245, 'society_rose', NULL, '\'{}\''),
(246, 'property', NULL, '{}'),
(247, 'property', NULL, '{}'),
(248, 'property', NULL, '{}'),
(249, 'property', NULL, '{}'),
(250, 'property', NULL, '{}'),
(251, 'property', NULL, '{}'),
(252, 'property', NULL, '{}'),
(253, 'property', NULL, '{}'),
(254, 'property', NULL, '{}'),
(255, 'property', NULL, '{}'),
(256, 'property', NULL, '{}'),
(257, 'property', NULL, '{}'),
(258, 'property', NULL, '{}'),
(259, 'property', NULL, '{}'),
(260, 'property', NULL, '{}'),
(261, 'property', NULL, '{}'),
(262, 'property', NULL, '{}'),
(263, 'property', NULL, '{}'),
(264, 'society_bcso', NULL, '\'{}\''),
(265, 'property', NULL, '{}'),
(266, 'property', NULL, '{}'),
(267, 'property', NULL, '{}'),
(268, 'property', NULL, '{}'),
(269, 'property', NULL, '{}'),
(270, 'property', NULL, '{}'),
(271, 'property', NULL, '{}'),
(272, 'property', NULL, '{}'),
(273, 'property', NULL, '{}'),
(274, 'property', NULL, '{}'),
(275, 'property', NULL, '{}'),
(276, 'property', NULL, '{}'),
(277, 'property', NULL, '{}'),
(278, 'property', NULL, '{}'),
(279, 'property', NULL, '{}'),
(280, 'property', NULL, '{}'),
(281, 'property', NULL, '{}'),
(282, 'property', NULL, '{}'),
(283, 'property', NULL, '{}'),
(284, 'property', NULL, '{}'),
(285, 'property', NULL, '{}'),
(286, 'property', NULL, '{}'),
(287, 'property', NULL, '{}'),
(288, 'property', NULL, '{}'),
(289, 'property', NULL, '{}'),
(290, 'property', NULL, '{}'),
(291, 'property', NULL, '{}'),
(292, 'property', NULL, '{}'),
(293, 'property', NULL, '{}'),
(294, 'property', NULL, '{}'),
(295, 'property', NULL, '{}'),
(296, 'property', NULL, '{}'),
(297, 'property', NULL, '{}'),
(298, 'property', NULL, '{}'),
(299, 'property', NULL, '{}'),
(300, 'property', NULL, '{}'),
(301, 'property', NULL, '{}'),
(302, 'property', NULL, '{}'),
(303, 'property', NULL, '{}'),
(304, 'property', NULL, '{}'),
(305, 'property', NULL, '{}'),
(306, 'property', NULL, '{}'),
(307, 'property', NULL, '{}'),
(308, 'property', NULL, '{}'),
(309, 'property', NULL, '{}'),
(310, 'property', NULL, '{}'),
(311, 'property', NULL, '{}'),
(312, 'property', NULL, '{}'),
(313, 'property', NULL, '{}'),
(314, 'property', NULL, '{}'),
(315, 'property', NULL, '{}'),
(316, 'property', NULL, '{}'),
(317, 'property', NULL, '{}'),
(318, 'property', NULL, '{}'),
(319, 'property', NULL, '{}'),
(320, 'property', NULL, '{}'),
(321, 'property', NULL, '{}'),
(322, 'property', NULL, '{}'),
(323, 'property', NULL, '{}'),
(324, 'property', NULL, '{}'),
(325, 'property', NULL, '{}'),
(326, 'property', NULL, '{}'),
(327, 'property', NULL, '{}'),
(328, 'property', NULL, '{}'),
(329, 'property', NULL, '{}'),
(330, 'property', NULL, '{}'),
(331, 'property', NULL, '{}'),
(332, 'property', NULL, '{}'),
(333, 'property', NULL, '{}'),
(334, 'property', NULL, '{}'),
(335, 'property', NULL, '{}'),
(336, 'property', NULL, '{}'),
(337, 'property', NULL, '{}'),
(338, 'property', NULL, '{}'),
(339, 'property', NULL, '{}'),
(340, 'property', NULL, '{}'),
(341, 'property', NULL, '{}'),
(342, 'property', NULL, '{}'),
(343, 'property', NULL, '{}'),
(344, 'property', NULL, '{}'),
(345, 'property', NULL, '{}'),
(346, 'property', NULL, '{}'),
(347, 'property', NULL, '{}'),
(348, 'property', NULL, '{}'),
(349, 'property', NULL, '{}'),
(350, 'property', NULL, '{}'),
(351, 'property', NULL, '{}'),
(352, 'property', NULL, '{}'),
(353, 'property', NULL, '{}'),
(354, 'property', NULL, '{}'),
(355, 'property', NULL, '{}'),
(356, 'property', NULL, '{}'),
(357, 'property', NULL, '{}'),
(358, 'property', NULL, '{}'),
(359, 'property', NULL, '{}'),
(360, 'property', NULL, '{}'),
(361, 'property', NULL, '{}'),
(362, 'property', NULL, '{}'),
(363, 'society_galaxy', NULL, '\'{}\''),
(364, 'property', NULL, '{}'),
(365, 'property', NULL, '{}'),
(366, 'property', NULL, '{}'),
(367, 'property', NULL, '{}'),
(368, 'property', NULL, '{}'),
(369, 'property', NULL, '{}'),
(370, 'property', NULL, '{}'),
(371, 'property', NULL, '{}'),
(372, 'property', NULL, '{}'),
(373, 'property', NULL, '{}'),
(374, 'property', NULL, '{}'),
(375, 'property', NULL, '{}'),
(376, 'property', NULL, '{}'),
(377, 'property', NULL, '{}'),
(378, 'property', NULL, '{}'),
(379, 'property', NULL, '{}'),
(380, 'property', NULL, '{}'),
(381, 'property', NULL, '{}'),
(382, 'property', NULL, '{}'),
(383, 'property', NULL, '{}'),
(384, 'property', NULL, '{}'),
(385, 'property', NULL, '{}'),
(386, 'society_gouvernement', NULL, '\'{}\''),
(387, 'property', NULL, '{}'),
(388, 'property', NULL, '{}'),
(389, 'property', NULL, '{}'),
(390, 'property', NULL, '{}'),
(391, 'property', NULL, '{}'),
(392, 'property', NULL, '{}'),
(393, 'property', NULL, '{}'),
(394, 'property', NULL, '{}'),
(395, 'property', NULL, '{}'),
(396, 'property', NULL, '{}'),
(397, 'property', NULL, '{}'),
(398, 'property', NULL, '{}'),
(399, 'property', NULL, '{}'),
(400, 'property', NULL, '{}'),
(401, 'society_bahamas', NULL, '\'{}\''),
(402, 'property', NULL, '{}'),
(403, 'property', NULL, '{}'),
(404, 'property', NULL, '{}'),
(405, 'property', NULL, '{}'),
(406, 'property', NULL, '{}'),
(407, 'property', NULL, '{}'),
(408, 'society_cayo', NULL, '\'{}\''),
(409, 'property', NULL, '{}'),
(410, 'property', NULL, '{}'),
(411, 'property', NULL, '{}'),
(412, 'property', NULL, '{}'),
(413, 'society_catcafe', NULL, '\'{}\''),
(414, 'property', NULL, '{}'),
(415, 'property', NULL, '{}'),
(416, 'property', NULL, '{}'),
(417, 'property', NULL, '{}'),
(418, 'property', NULL, '{}'),
(419, 'property', NULL, '{}'),
(420, 'property', NULL, '{}'),
(421, 'property', NULL, '{}'),
(422, 'property', NULL, '{}'),
(423, 'property', NULL, '{}'),
(424, 'property', NULL, '{}'),
(425, 'property', NULL, '{}'),
(426, 'property', NULL, '{}'),
(427, 'property', NULL, '{}'),
(428, 'property', NULL, '{}'),
(429, 'property', NULL, '{}'),
(430, 'property', NULL, '{}'),
(431, 'property', NULL, '{}'),
(432, 'property', NULL, '{}'),
(433, 'property', NULL, '{}'),
(434, 'property', NULL, '{}'),
(435, 'property', NULL, '{}'),
(436, 'property', NULL, '{}'),
(437, 'property', NULL, '{}'),
(438, 'property', NULL, '{}'),
(439, 'property', NULL, '{}'),
(440, 'property', NULL, '{}'),
(441, 'property', NULL, '{}'),
(442, 'property', NULL, '{}'),
(443, 'property', NULL, '{}'),
(444, 'property', NULL, '{}'),
(445, 'property', NULL, '{}'),
(446, 'property', NULL, '{}'),
(447, 'property', NULL, '{}'),
(448, 'property', NULL, '{}'),
(449, 'property', NULL, '{}'),
(450, 'property', NULL, '{}'),
(451, 'property', NULL, '{}'),
(452, 'property', NULL, '{}'),
(453, 'property', NULL, '{}'),
(454, 'property', NULL, '{}'),
(455, 'property', NULL, '{}'),
(456, 'property', NULL, '{}'),
(457, 'property', NULL, '{}'),
(458, 'society_ammunation', NULL, '\'{}\''),
(459, 'property', NULL, '{}'),
(460, 'property', NULL, '{}'),
(461, 'property', NULL, '{}'),
(462, 'property', NULL, '{}'),
(463, 'property', NULL, '{}'),
(464, 'property', NULL, '{}'),
(465, 'property', NULL, '{}'),
(466, 'property', NULL, '{}'),
(467, 'property', NULL, '{}'),
(468, 'property', NULL, '{}'),
(469, 'property', NULL, '{}'),
(470, 'property', NULL, '{}'),
(471, 'property', NULL, '{}'),
(472, 'property', NULL, '{}'),
(473, 'property', NULL, '{}'),
(474, 'property', NULL, '{}'),
(475, 'property', NULL, '{}'),
(476, 'property', NULL, '{}'),
(477, 'property', NULL, '{}'),
(478, 'property', NULL, '{}'),
(479, 'property', NULL, '{}'),
(480, 'property', NULL, '{}'),
(481, 'property', NULL, '{}'),
(482, 'property', NULL, '{}'),
(483, 'property', NULL, '{}'),
(484, 'property', NULL, '{}'),
(485, 'property', NULL, '{}'),
(486, 'property', NULL, '{}'),
(487, 'property', NULL, '{}'),
(488, 'property', NULL, '{}'),
(489, 'property', NULL, '{}'),
(490, 'property', NULL, '{}'),
(491, 'property', NULL, '{}'),
(492, 'property', NULL, '{}'),
(493, 'property', NULL, '{}'),
(494, 'property', NULL, '{}'),
(495, 'property', NULL, '{}'),
(496, 'property', NULL, '{}'),
(497, 'property', NULL, '{}'),
(498, 'property', NULL, '{}'),
(499, 'property', NULL, '{}'),
(500, 'property', NULL, '{}'),
(501, 'property', NULL, '{}'),
(502, 'property', NULL, '{}'),
(503, 'property', NULL, '{}');

-- --------------------------------------------------------

--
-- Structure de la table `factions`
--

CREATE TABLE `factions` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `weeklyPoints` int(11) DEFAULT 0,
  `monthlyPoints` int(11) DEFAULT 0,
  `totalPoints` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `factions`
--

INSERT INTO `factions` (`name`, `label`, `weeklyPoints`, `monthlyPoints`, `totalPoints`) VALUES
('aztecas', 'Aztecas', 0, 0, 0),
('ballas', 'Ballas', 0, 0, 0),
('cartel', 'Cartel', 0, 0, 0),
('cayo', 'Cayo Perico', 0, 0, 0),
('families', 'Families', 0, 0, 0),
('lost', 'Lost MC', 0, 0, 0),
('mafia', 'Mafia', 0, 0, 0),
('marabunta', 'Marabunta', 0, 0, 0),
('nofaction', 'Faction', 0, 0, 0),
('roses', 'Roses', 0, 0, 0),
('vagos', 'Vagos', 0, 0, 0);

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
(4, 'ballas', 0, 'recruit', 'Recrue', 0, '{}', '{}'),
(5, 'ballas', 1, 'gangster', 'Gangster', 0, '{}', '{}'),
(6, 'ballas', 2, 'bandit', 'Bandit', 0, '{}', '{}'),
(7, 'ballas', 3, 'boss', 'Chef du Gang', 0, '{}', '{}'),
(8, 'families', 0, 'recruit', 'Recrue', 0, '{}', '{}'),
(9, 'families', 1, 'gangster', 'Gangster', 0, '{}', '{}'),
(10, 'families', 2, 'bandit', 'Bandit', 0, '{}', '{}'),
(11, 'families', 3, 'boss', 'Chef du Gang', 0, '{}', '{}'),
(12, 'vagos', 0, 'recruit', 'Recrue', 0, '{}', '{}'),
(13, 'vagos', 1, 'gangster', 'Gangster', 0, '{}', '{}'),
(14, 'vagos', 2, 'bandit', 'Bandit', 0, '{}', '{}'),
(15, 'vagos', 3, 'boss', 'Chef du Gang', 0, '{}', '{}'),
(16, 'lost', 0, 'recruit', 'Recrue', 0, '{}', '{}'),
(17, 'lost', 1, 'gangster', 'Gangster', 0, '{}', '{}'),
(18, 'lost', 2, 'bandit', 'Bandit', 0, '{}', '{}'),
(19, 'lost', 3, 'boss', 'Chef du Gang', 0, '{}', '{}'),
(20, 'aztecas', 0, 'recruit', 'Recrue', 0, '{}', '{}'),
(21, 'aztecas', 1, 'gangster', 'Gangster', 0, '{}', '{}'),
(22, 'aztecas', 2, 'bandit', 'Bandit', 0, '{}', '{}'),
(23, 'aztecas', 3, 'boss', 'Chef du Gang', 0, '{}', '{}'),
(24, 'marabunta', 0, 'recruit', 'Recrue', 0, '{}', '{}'),
(25, 'marabunta', 1, 'gangster', 'Gangster', 0, '{}', '{}'),
(26, 'marabunta', 2, 'bandit', 'Bandit', 0, '{}', '{}'),
(27, 'marabunta', 3, 'boss', 'Chef du Gang', 0, '{}', '{}'),
(28, 'mafia', 0, 'recruit', 'Recrue', 0, '{}', '{}'),
(29, 'mafia', 1, 'gangster', 'Gangster', 0, '{}', '{}'),
(30, 'mafia', 2, 'bandit', 'Bandit', 0, '{}', '{}'),
(31, 'mafia', 3, 'boss', 'Chef du Gang', 0, '{}', '{}'),
(32, 'cartel', 0, 'recruit', 'Recrue', 0, '{}', '{}'),
(33, 'cartel', 1, 'gangster', 'Gangster', 0, '{}', '{}'),
(34, 'cartel', 2, 'bandit', 'Bandit', 0, '{}', '{}'),
(35, 'cartel', 3, 'boss', 'Chef du Gang', 0, '{}', '{}'),
(36, 'roses', 0, 'recruit', 'Recrue', 0, '{}', '{}'),
(37, 'roses', 1, 'gangster', 'Gangster', 0, '{}', '{}'),
(38, 'roses', 2, 'bandit', 'Bandit', 0, '{}', '{}'),
(39, 'roses', 3, 'boss', 'Chef du Gang', 0, '{}', '{}'),
(40, 'cayo', 0, 'recruit', 'Recrue', 0, '{}', '{}'),
(41, 'cayo', 1, 'gangster', 'Soldat', 0, '{}', '{}'),
(42, 'cayo', 2, 'bandit', 'Chef des gardes', 0, '{}', '{}'),
(43, 'cayo', 3, 'boss', 'Chef du Gang', 0, '{}', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Usage abusif du klaxon', 30, 0),
(2, 'Franchir une ligne continue', 40, 0),
(3, 'Circulation à contresens', 250, 0),
(4, 'Demi-tour non autorisé', 250, 0),
(5, 'Circulation hors-route', 170, 0),
(6, 'Non-respect des distances de sécurité', 30, 0),
(7, 'Arrêt dangereux / interdit', 150, 0),
(8, 'Stationnement gênant / interdit', 70, 0),
(9, 'Non respect  de la priorité à droite', 70, 0),
(10, 'Non-respect à un véhicule prioritaire', 90, 0),
(11, 'Non-respect d\'un stop', 105, 0),
(12, 'Non-respect d\'un feu rouge', 130, 0),
(13, 'Dépassement dangereux', 100, 0),
(14, 'Véhicule non en état', 100, 0),
(15, 'Conduite sans permis', 1500, 0),
(16, 'Délit de fuite', 800, 0),
(17, 'Excès de vitesse < 5 kmh', 90, 0),
(18, 'Excès de vitesse 5-15 kmh', 120, 0),
(19, 'Excès de vitesse 15-30 kmh', 180, 0),
(20, 'Excès de vitesse > 30 kmh', 300, 0),
(21, 'Entrave de la circulation', 110, 1),
(22, 'Dégradation de la voie publique', 90, 1),
(23, 'Trouble à l\'ordre publique', 90, 1),
(24, 'Entrave opération de police', 130, 1),
(25, 'Insulte envers / entre civils', 75, 1),
(26, 'Outrage à agent de police', 110, 1),
(27, 'Menace verbale ou intimidation envers civil', 90, 1),
(28, 'Menace verbale ou intimidation envers policier', 150, 1),
(29, 'Manifestation illégale', 250, 1),
(30, 'Tentative de corruption', 1500, 1),
(31, 'Arme blanche sortie en ville', 120, 2),
(32, 'Arme léthale sortie en ville', 300, 2),
(33, 'Port d\'arme non autorisé (défaut de license)', 600, 2),
(34, 'Port d\'arme illégal', 700, 2),
(35, 'Pris en flag lockpick', 300, 2),
(36, 'Vol de voiture', 1800, 2),
(37, 'Vente de drogue', 1500, 2),
(38, 'Fabriquation de drogue', 1500, 2),
(39, 'Possession de drogue', 650, 2),
(40, 'Prise d\'ôtage civil', 1500, 2),
(41, 'Prise d\'ôtage agent de l\'état', 2000, 2),
(42, 'Braquage particulier', 650, 2),
(43, 'Braquage magasin', 650, 2),
(44, 'Braquage de banque', 1500, 2),
(45, 'Tir sur civil', 2000, 3),
(46, 'Tir sur agent de l\'état', 2500, 3),
(47, 'Tentative de meurtre sur civil', 3000, 3),
(48, 'Tentative de meurtre sur agent de l\'état', 5000, 3),
(49, 'Meurtre sur civil', 10000, 3),
(50, 'Meurte sur agent de l\'état', 30000, 3),
(51, 'Meurtre involontaire', 1800, 3),
(52, 'Escroquerie à l\'entreprise', 2000, 2);

-- --------------------------------------------------------

--
-- Structure de la table `guille_gangsv2`
--

CREATE TABLE `guille_gangsv2` (
  `gang` varchar(50) DEFAULT NULL,
  `maxmembers` int(11) DEFAULT NULL,
  `ranks` longtext DEFAULT NULL,
  `gangStyle` int(11) DEFAULT NULL,
  `colors` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `vehicles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `points` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `members` mediumtext DEFAULT NULL,
  `shop` longtext DEFAULT NULL,
  `inventory` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `guille_gangsv2`
--

INSERT INTO `guille_gangsv2` (`gang`, `maxmembers`, `ranks`, `gangStyle`, `colors`, `vehicles`, `points`, `members`, `shop`, `inventory`) VALUES
('marabunta', 15, '[{\"num\":1,\"label\":1},{\"num\":2,\"label\":2},{\"num\":3,\"label\":3}]', 1, '{\"g\":\"0\",\"r\":\"0\",\"b\":\"255\"}', '[]', '[{\"heading\":57.75,\"type\":\"Get Vehicles\",\"coords\":{\"x\":1400.903076171875,\"y\":-1527.8046875,\"z\":57.07754516601562}},{\"heading\":57.75,\"type\":\"Save Vehicles\",\"coords\":{\"x\":1396.240966796875,\"y\":-1533.137939453125,\"z\":56.62981033325195}},{\"heading\":57.75,\"type\":\"Boss\",\"coords\":{\"x\":1437.36669921875,\"y\":-1492.158203125,\"z\":62.62698364257812}},{\"heading\":57.75,\"type\":\"Armory\",\"coords\":{\"x\":1439.9720458984376,\"y\":-1480.28857421875,\"z\":62.62619018554687}}]', '[{\"member\":{\"rank\":\"3\",\"name\":\"Pablo\",\"steam\":\"steam:110000147454cf3\"}},{\"member\":{\"rank\":\"3\",\"name\":\"I ♥ItachiiUchiiwa♥ I\",\"steam\":\"steam:11000011af991eb\"}},{\"member\":{\"rank\":\"3\",\"name\":\"Juan  Marlowe\",\"steam\":\"steam:11000014b84e8f7\"}}]', '[]', '[{\"type\":\"account\",\"label\":\"Argent sale\",\"count\":4000,\"name\":\"black_money\"},{\"type\":\"item\",\"label\":\"Pistolet\",\"count\":1,\"name\":\"WEAPON_PISTOL\"}]'),
('families', 15, '[{\"num\":1,\"label\":1},{\"num\":2,\"label\":2},{\"num\":3,\"label\":3}]', 1, '{\"g\":\"153\",\"r\":\"0\",\"b\":\"0\"}', '[]', '[{\"heading\":0.0,\"type\":\"Save Vehicles\",\"coords\":{\"x\":-201.29290771484376,\"y\":-1635.379638671875,\"z\":32.54148483276367}},{\"heading\":631.5,\"type\":\"Get Vehicles\",\"coords\":{\"x\":-211.09727478027345,\"y\":-1635.124267578125,\"z\":32.56480407714844}},{\"heading\":631.5,\"type\":\"Boss\",\"coords\":{\"x\":-140.0581817626953,\"y\":-1587.5313720703126,\"z\":33.24867248535156}},{\"heading\":631.5,\"type\":\"Armory\",\"coords\":{\"x\":-147.75242614746095,\"y\":-1596.569091796875,\"z\":33.83633041381836}}]', '[]', '[]', '[]'),
('madrazo', 15, '[{\"num\":1,\"label\":1},{\"num\":2,\"label\":2},{\"num\":3,\"label\":3}]', 1, '{\"g\":\"0\",\"r\":\"153\",\"b\":\"0\"}', '[{\"vehicle\":\"dubsta\"},{\"vehicle\":\"stafford\"},{\"vehicle\":\"komoda\"}]', '[{\"heading\":0.0,\"type\":\"Save Vehicles\",\"coords\":{\"x\":1411.0133056640626,\"y\":1118.8524169921876,\"z\":113.83795928955078}},{\"heading\":93.0,\"type\":\"Get Vehicles\",\"coords\":{\"x\":1401.771484375,\"y\":1117.81396484375,\"z\":113.83766174316406}},{\"heading\":93.0,\"type\":\"Armory\",\"coords\":{\"x\":1408.7332763671876,\"y\":1160.002685546875,\"z\":113.33406829833985}},{\"heading\":93.0,\"type\":\"Boss\",\"coords\":{\"x\":1395.466064453125,\"y\":1141.8408203125,\"z\":113.64087677001953}},{\"heading\":93.0,\"type\":\"Shop\",\"coords\":{\"x\":1406.947998046875,\"y\":1127.9581298828126,\"z\":113.33415985107422}}]', '[{\"member\":{\"steam\":\"steam:1100001111c4878\",\"name\":\"CraziozFR\",\"rank\":\"3\"}}]', '[{\"price\":\"200000\",\"type\":\"item\",\"name\":\"weapon_assaultrifle\",\"label\":\"weapon_assaultriple\"}]', '[]');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
('acier', 'Acier', 1, 0, 1),
('carbon', 'Carbone', 1, 0, 1),
('douille', 'Boite de douille', 1, 0, 1),
('poudre', 'Boite de poudre', 1, 0, 1),
('spray', 'Spray', 1, 1, 1),
('spray_remover', 'Spray Remover', 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`name`, `label`) VALUES
('ambulance', 'Ambulance'),
('ammunation', 'Ammunation'),
('bahamas', 'Bahamas'),
('bcso', 'Bcso'),
('brinks', 'Brinks'),
('burgershot', 'Burgershot'),
('cardealer', 'cardealer'),
('catcafe', 'Cat Café'),
('galaxy', 'Galaxy'),
('gouvernement', 'Gouvernement'),
('mechanic', 'Mechanic'),
('motorcycle', 'Motorcycle'),
('police', 'LSPD'),
('realestateagent', 'Agent immobilier'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Unemployed', 0, '{}', '{}'),
(2, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(3, 'cardealer', 1, 'novice', 'Novice', 0, '{}', '{}'),
(4, 'cardealer', 2, 'experienced', 'Experimente', 0, '{}', '{}'),
(5, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(6, 'ambulance', 0, 'ambulance', 'Ambulancier', 0, '{}', '{}'),
(7, 'ambulance', 1, 'doctor', 'Medecin', 0, '{}', '{}'),
(8, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 0, '{}', '{}'),
(9, 'ambulance', 3, 'boss', 'Chirurgien', 0, '{}', '{}'),
(10, 'mechanic', 0, 'recrue', 'Recrue', 0, '{}', '{}'),
(11, 'mechanic', 1, 'novice', 'Novice', 0, '{}', '{}'),
(12, 'mechanic', 2, 'experimente', 'Experimente', 0, '{}', '{}'),
(13, 'mechanic', 3, 'chief', 'Chef d\'équipe', 0, '{}', '{}'),
(14, 'mechanic', 4, 'boss', 'Patron', 0, '{}', '{}'),
(15, 'taxi', 0, 'recrue', 'Recrue', 0, '{}', '{}'),
(16, 'taxi', 1, 'novice', 'Novice', 0, '{}', '{}'),
(18, 'taxi', 2, 'experimente', 'Experimente', 0, '{}', '{}'),
(19, 'taxi', 3, 'uber', 'Uber', 0, '{}', '{}'),
(20, 'taxi', 4, 'boss', 'Patron', 0, '{}', '{}'),
(21, 'unicorn', 0, 'barman', 'Barman', 0, '{}', '{}'),
(22, 'unicorn', 1, 'dancer', 'Danseur', 0, '{}', '{}'),
(23, 'unicorn', 2, 'viceboss', 'Co-gérant', 0, '{}', '{}'),
(24, 'unicorn', 3, 'boss', 'Gérant', 0, '{}', '{}'),
(25, 'vigneron', 0, 'recrue', 'Intérimaire', 0, '{}', '{}'),
(26, 'vigneron', 1, 'novice', 'Vigneron', 0, '{}', '{}'),
(27, 'vigneron', 2, 'cdisenior', 'Chef de chai', 0, '{}', '{}'),
(28, 'vigneron', 3, 'boss', 'Gérant', 0, '{}', '{}'),
(217, 'police', 0, 'recruit', 'Cadet', 0, '{}', '{}'),
(218, 'police', 1, 'officer', 'Officier', 0, '{}', '{}'),
(219, 'police', 2, 'sergeant', 'Sergent', 0, '{}', '{}'),
(220, 'police', 3, 'sergeant', 'Sergent-Chef', 0, '{}', '{}'),
(221, 'police', 4, 'lieutenant', 'Lieutenant', 0, '{}', '{}'),
(222, 'police', 5, 'lieutenant', 'Lieutenant-Chef', 0, '{}', '{}'),
(223, 'police', 6, 'boss', 'Capitaine', 0, '{}', '{}'),
(224, 'police', 7, 'boss', 'Commandant', 0, '{}', '{}'),
(225, 'brinks', 0, 'interim', 'Recrue convoyeur', 100, '{}', '{}'),
(226, 'brinks', 1, 'employee', 'Convoyeur de fonds', 100, '{}', '{}'),
(227, 'brinks', 2, 'chief', 'Chef d équipe', 100, '{}', '{}'),
(228, 'brinks', 3, 'boss', 'Patron', 100, '{}', '{}'),
(229, 'motorcycle', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(230, 'motorcycle', 1, 'novice', 'Novice', 40, '{}', '{}'),
(231, 'motorcycle', 2, 'experienced', 'Experimente', 70, '{}', '{}'),
(232, 'motorcycle', 3, 'boss', 'Patron', 100, '{}', '{}'),
(233, 'bcso', 0, 'recruit', 'Cadet', 40, '{}', '{}'),
(234, 'bcso', 1, 'officer', 'Deputy ', 60, '{}', '{}'),
(235, 'bcso', 2, 'lieutenant', 'Senior Deputy', 75, '{}', '{}'),
(236, 'bcso', 3, 'lieutenant', 'Sergent', 85, '{}', '{}'),
(237, 'bcso', 4, 'lieutenant', 'Lieutenant', 90, '{}', '{}'),
(238, 'bcso', 5, 'boss', 'Sheriff Adjoint', 100, '{}', '{}'),
(239, 'bcso', 6, 'boss', 'Sheriff', 110, '{}', '{}'),
(240, 'realestateagent', 0, 'location', 'Location', 10, '{}', '{}'),
(241, 'realestateagent', 1, 'vendeur', 'Vendeur', 25, '{}', '{}'),
(242, 'realestateagent', 2, 'gestion', 'Gestion', 40, '{}', '{}'),
(243, 'realestateagent', 3, 'boss', 'Patron', 0, '{}', '{}'),
(244, 'burgershot', 0, 'worker', 'Stagiaire', 5, '{}', '{}'),
(245, 'burgershot', 1, 'worker', 'Cuisinier', 14, '{}', '{}'),
(246, 'burgershot', 2, 'worker', 'Vendeur', 23, '{}', '{}'),
(247, 'burgershot', 3, 'boss', 'Co-Patron', 27, '{}', '{}'),
(248, 'burgershot', 4, 'boss', 'Patron', 31, '{}', '{}'),
(249, 'galaxy', 0, 'recrue', 'Intérimaire', 0, '{}', '{}'),
(250, 'galaxy', 1, 'guard', 'Videur', 0, '{}', '{}'),
(251, 'galaxy', 2, 'barmen', 'Barman', 0, '{}', '{}'),
(252, 'galaxy', 3, 'boss', 'Gérant', 0, '{}', '{}'),
(253, 'gouvernement', 0, 'recrue', 'Garde de sécurité', 40, '{}', '{}'),
(254, 'gouvernement', 1, 'recrue', 'Avocat', 45, '{}', '{}'),
(255, 'gouvernement', 2, 'guard', 'Juge', 50, '{}', '{}'),
(256, 'gouvernement', 3, 'barmen', 'Procureur', 60, '{}', '{}'),
(257, 'gouvernement', 3, 'boss', 'Gouverneur-Adjoint', 75, '{}', '{}'),
(258, 'gouvernement', 4, 'boss', 'Gouverneur', 85, '{}', '{}'),
(260, 'bahamas', 0, 'recrue', 'Intérimaire', 0, '{}', '{}'),
(261, 'bahamas', 1, 'guard', 'Videur', 0, '{}', '{}'),
(262, 'bahamas', 2, 'barmen', 'Barman', 0, '{}', '{}'),
(263, 'bahamas', 3, 'boss', 'Gérant', 0, '{}', '{}'),
(264, 'catcafe', 0, 'recrue', 'Intérimaire', 0, '{}', '{}'),
(265, 'catcafe', 1, 'guard', 'Videur', 0, '{}', '{}'),
(266, 'catcafe', 2, 'barmen', 'Barman', 0, '{}', '{}'),
(267, 'catcafe', 3, 'boss', 'Gérant', 0, '{}', '{}'),
(268, 'ammunation', 0, 'stagiaire', 'Stagiaire', 5, '{}', '{}'),
(269, 'ammunation', 1, 'employé', 'Employé', 15, '{}', '{}'),
(270, 'ammunation', 2, 'professionnel', 'Professionnel', 25, '{}', '{}'),
(271, 'ammunation', 3, 'second', 'Second', 35, '{}', '{}'),
(272, 'ammunation', 4, 'boss', 'Patron', 40, '{}', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('dmv', 'Code de la route'),
('drive', 'Permis de conduire'),
('drive_bike', 'Permis moto'),
('drive_truck', 'Permis camion'),
('weapon', 'Permis Port d\'armes');

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
-- Structure de la table `motorcycle_bike`
--

CREATE TABLE `motorcycle_bike` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `motorcycle_vehicles`
--

CREATE TABLE `motorcycle_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `motor_sold`
--

CREATE TABLE `motor_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `npwd_calls`
--

CREATE TABLE `npwd_calls` (
  `id` int(11) NOT NULL,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `transmitter` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `is_accepted` tinyint(4) DEFAULT 0,
  `start` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `npwd_calls`
--

INSERT INTO `npwd_calls` (`id`, `identifier`, `transmitter`, `receiver`, `is_accepted`, `start`, `end`) VALUES
(1, 'd480cb65-ac2e-4adb-9e2b-53d831b2eade', '977-015-0768', '977-015-0768', 0, '1679924219', '1679924220'),
(2, 'b803d3d5-81d9-4570-82cc-406bcd3c02a1', '977-015-0768', '977-015-0768', 0, '1679924221', '1679924221'),
(3, '3805cb34-4cc9-42cd-b5a8-3f2f4d1fa00d', '977-015-0768', '977-015-0768', 0, '1682353855', '1682353855'),
(4, '850e312b-81e2-433c-bef3-c46dd0183deb', '138-550-5259', '1235378827', 0, '1682360817', NULL),
(5, 'd5a305fa-b254-44e2-859e-3901d7e1d027', '123-537-8827', '1385505259', 0, '1682360882', NULL),
(6, '980944f6-a0f7-44cf-a9c8-ea688e2db12f', '600-006-8904', '600-195-2005', 1, '1682415562', '1682415574'),
(7, '46748a2d-6b85-4aa8-b4c6-553d2b7a6506', '600-195-2005', '600-006-8904', 0, '1682419743', NULL),
(8, '59a053b5-af0b-47ee-b597-a23ace07478e', '370-215-5115', '8535006651', 0, '1682422884', NULL),
(9, 'adcf436b-9842-4601-ad64-abf62eba14d0', '370-215-5115', '853-500-6651', 0, '1682422923', '1682422927'),
(10, '15a5592c-acda-422c-bbbf-b959133bc14e', '788-109-2982', '600-195-2005', 0, '1682433874', NULL),
(11, '375add43-c49d-4607-ab45-20fc90e357d8', '123-537-8827', '1385505259', 0, '1682443115', NULL),
(12, '99cfe1e6-2a02-4cc2-9dd8-53b56839a45e', '123-537-8827', '1385505259', 0, '1682445709', NULL),
(13, '1200289a-49fb-49d3-974a-5336934902c8', '123-537-8827', '1385505259', 0, '1682445739', NULL),
(14, '265dbe79-a595-4610-ab64-ffe97dd697b8', '853-500-6651', '123-537-8827', 0, '1682452457', NULL),
(15, 'd80e43cc-ecd2-4fda-b40e-71024c8e93a1', '853-500-6651', '370-215-5115', 0, '1682452487', NULL),
(16, 'b73670fa-2ff7-4060-bba9-daa0e251eef0', '123-537-8827', '853-500-6651', 1, '1682453785', '1682453801'),
(17, '0673d62b-1b0b-4d41-8167-01c46c1e1b5f', '123-537-8827', '853-500-6651', 0, '1682454207', '1682454223'),
(18, 'f624092a-578d-4e04-8742-7b61aa7b48e9', '123-537-8827', '853-500-6651', 1, '1682454350', '1682454385'),
(19, 'ef16813f-b9a6-4ee5-aeaf-dd8e6d3a0a54', '123-537-8827', '853-500-6651', 0, '1682454388', '1682454390'),
(20, '0d48bf39-7b38-420c-8534-aeb77292ce31', '853-500-6651', '123-537-8827', 0, '1682454497', '1682454525'),
(21, '9c19c0d3-acb3-4bc8-8684-465726eb42aa', '853-500-6651', '123-537-8827', 0, '1682454678', '1682454699'),
(22, '76e8a108-5259-4194-9dfd-c46cf020b948', '123-537-8827', '853-500-6651', 1, '1682454804', '1682454843'),
(23, 'fccb41df-fdec-46fb-9db1-a451546c9525', '123-537-8827', '853-500-6651', 0, '1682509136', NULL),
(24, '3831f935-c0ab-4528-ad3d-19ff033aa713', '123-537-8827', '1385505259', 0, '1682509162', NULL),
(25, '22e81de3-1205-47f3-a61e-5e0cf1c254ff', '123-537-8827', '853-500-6651', 0, '1682509714', NULL),
(26, '171fc506-39a3-45b1-b31e-a5f89a143ee9', '513-537-4268', '1235378827', 0, '1682512474', NULL),
(27, 'f0dec06a-0cdd-46c7-ad77-21ea5ca7913e', '513-537-4268', '1235378827', 0, '1682512523', NULL),
(28, 'bef7cd73-9f88-4bc3-8867-41edcce442de', '513-537-4268', '123-537-8827', 0, '1682512602', '1682512604'),
(29, 'f5e86125-40cd-4942-934f-130c769e906f', '513-537-4268', '911', 0, '1682513980', NULL),
(30, 'f03e7089-88d1-4b5f-a0f3-7c6ee9d92689', '513-537-4268', '123-537-8827', 1, '1682514013', '1682514056'),
(31, '32c94e46-083c-4ff4-b26d-1da30d1d94c2', '123-537-8827', '513-537-4268', 1, '1682514109', '1682514178'),
(32, 'd065752d-831f-457b-9a76-48a0ade8d72e', '513-537-4268', '123-537-8827', 0, '1682514692', '1682514710'),
(33, '2b3989ad-fa22-4a54-87a9-48cf40d15882', '513-537-4268', '123-537-8827', 0, '1682515075', NULL),
(34, 'bfa8635b-5199-4369-8a99-07141fe6ee71', '123-537-8827', '513-537-4268', 1, '1682516278', '1682516334'),
(35, '593103d7-d04c-4994-a29a-db485d14cb8b', '513-537-4268', '123-537-8827', 1, '1682516477', '1682516499'),
(36, '89b9a641-5a98-480b-8528-dab19a9ec2f8', '513-537-4268', '123-537-8827', 0, '1682528709', NULL),
(37, 'dc2be3f8-22ae-4fbd-a3b1-434777f22996', '600-195-2005', '600-006-8904', 0, '1682533809', NULL),
(38, 'd0fe97c5-e0ac-4657-81de-0e55eb08b74c', '600-195-2005', '600-006-8904', 0, '1682623583', NULL),
(39, '21b07a18-3a61-4412-bed8-5c0b1cc5f4a2', '513-537-4268', '600-195-2005', 0, '1682769674', NULL),
(40, '65df46a0-6ac4-4ae7-aecf-a4b683d35811', '513-537-4268', '123-537-8827', 0, '1682769688', NULL),
(41, '089aa4e1-0152-4c59-8c63-1790a92a765e', '123-537-8827', '853-500-6651', 0, '1682872705', NULL),
(42, '45858142-1350-485d-b6b5-2f8a5883bc5e', '600-006-8904', '600-195-2005', 0, '1683741850', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `npwd_darkchat_channels`
--

CREATE TABLE `npwd_darkchat_channels` (
  `id` int(11) NOT NULL,
  `channel_identifier` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `npwd_darkchat_channel_members`
--

CREATE TABLE `npwd_darkchat_channel_members` (
  `channel_id` int(11) NOT NULL,
  `user_identifier` varchar(255) NOT NULL,
  `is_owner` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `npwd_darkchat_messages`
--

CREATE TABLE `npwd_darkchat_messages` (
  `id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `user_identifier` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_image` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `npwd_marketplace_listings`
--

CREATE TABLE `npwd_marketplace_listings` (
  `id` int(11) NOT NULL,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `reported` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `npwd_match_profiles`
--

CREATE TABLE `npwd_match_profiles` (
  `id` int(11) NOT NULL,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(90) NOT NULL,
  `image` varchar(255) NOT NULL,
  `bio` varchar(512) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `job` varchar(45) DEFAULT NULL,
  `tags` varchar(255) NOT NULL DEFAULT '',
  `voiceMessage` varchar(512) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `npwd_match_profiles`
--

INSERT INTO `npwd_match_profiles` (`id`, `identifier`, `name`, `image`, `bio`, `location`, `job`, `tags`, `voiceMessage`, `createdAt`, `updatedAt`) VALUES
(3, '96accefda755458c14ad75ae3824d5ecc56e8638', '3627788390', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-03-27 12:17:27', '2023-03-27 12:17:27'),
(4, '382cfe22ca34f2f5dac6845a7a05b39939daa0cd', '6346531677', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-03-27 14:33:25', '2023-03-27 14:33:25'),
(5, '26a1b1b34807cf220637eb2bd71abd699fc7a8d5', '7810414703', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-03-27 16:18:49', '2023-03-27 16:18:49'),
(6, 'a3f90caeb2011bbe94ead4782b3ff5832d39bdf1', '1867030778', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-03-27 16:25:36', '2023-03-27 16:25:36'),
(7, '7c37425743ff6fb7f740dce4492bea16acbb89df', 'lucas F', '', 'c\'est moi ', '', 'mystere', '', NULL, '2023-03-27 19:28:00', '2023-04-24 17:17:53'),
(8, '9118f15b46f69bd18df1634cb415ad27e75154b9', '7971696413', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-03-27 20:13:44', '2023-03-27 20:13:44'),
(9, 'e35e3c5dd6739a99962e1d1591a32200e2b9118d', '2088109981', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-03-28 19:00:35', '2023-03-28 19:00:35'),
(10, '776f5aa08ac3ad3f772d266d7c51ec508a34bbd0', '3715907721', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-03-29 14:04:15', '2023-03-29 14:04:15'),
(11, '30e62d3c655261eaecbf9f850349123440a792f5', '3403420632', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-03-29 19:20:52', '2023-03-29 19:20:52'),
(12, '6ac522e0adee4ddc961f69cc7de701d989a2be3f', '0140355675', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-03-29 20:43:57', '2023-03-29 20:43:57'),
(13, '4033ea29562af80cdf4e24bb7dbc5b712651d6d6', '0399790386', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-03-30 14:56:48', '2023-03-30 14:56:48'),
(14, '0818bd82444a908ff2f89114f0d67670cd910cfc', '6759208544', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-03-30 18:18:35', '2023-03-30 18:18:35'),
(15, '02092e91f72e417897845f65735abcc3b3bbcfac', '4826541910', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-03-30 18:27:34', '2023-03-30 18:27:34'),
(16, 'e955274b312d1518e974b572d585c9d7568221dd', '4408098756', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-03-31 14:39:40', '2023-03-31 14:39:40'),
(17, 'a59a452fee0d267fc21bccfc6d707a3e33041f15', '1443507615', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-03-31 14:40:09', '2023-03-31 14:40:09'),
(18, '3c23ecfcaa92eb9850a615fdedfc208ee1e96ffa', '4022856305', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-03-31 17:17:45', '2023-03-31 17:17:45'),
(19, '802ae7807563388f110349e6e49299ca33f38712', '8535006651', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-12 11:20:39', '2023-04-12 11:20:39'),
(20, 'bac5ad709b7410826ee1f7849b40d231b6b7895c', '6000068904', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-18 17:05:38', '2023-04-18 17:05:38'),
(21, '9e390c19582fb0a6402410b782e579bf267f6806', '0293991638', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-18 19:05:23', '2023-04-18 19:05:23'),
(22, 'e8e748059b1fed27c021331265dc0480d61be860', 'Blanco', '', '', '', '', '', NULL, '2023-04-24 16:10:20', '2023-04-24 17:14:32'),
(23, 'ac615aeca14e01bfd0b388f59dd5c8ee7e33c454', '6639397930', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-24 16:29:31', '2023-04-24 16:29:31'),
(24, 'eb2590ac498963958218b515bfd803b0776c9e08', '6001952005', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-24 16:59:05', '2023-04-24 16:59:05'),
(25, 'f225082d5a50e4afb3e9850cda24d5f613da7ef3', '5270242655', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-24 17:07:47', '2023-04-24 17:07:47'),
(26, '9c9e1295d88065d75789d74b17abb9694d9e91e0', '8106888141', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-24 17:11:56', '2023-04-24 17:11:56'),
(27, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', '1235378827', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-24 17:44:13', '2023-04-24 17:44:13'),
(28, '230cdfa13129e5ad39faece17c502911cbaa784f', '8552479358', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-25 08:25:31', '2023-04-25 08:25:31'),
(29, 'bcb294db06c3db5662aa1d59c8a70a4fde20455d', '2693714844', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-25 09:24:24', '2023-04-25 09:24:24'),
(30, '3cd8319c594578ba2c343887ef2bbe838f0ec826', '1464003857', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-25 13:57:14', '2023-04-25 13:57:14'),
(31, '630e51d91706e2e79529dc26831b96f71a1ebed1', '7881092982', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-25 14:16:50', '2023-04-25 14:16:50'),
(32, '552336394dc327ede208fb7fa97ff86088f4ac99', '0106310718', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-25 15:51:10', '2023-04-25 15:51:10'),
(33, '3a220bbca68cafbdb31ed853099769f52d988c3d', '4721192068', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-25 17:14:35', '2023-04-25 17:14:35'),
(34, 'f2f9d66456cc94a664b2054a4f35af3b3c793bb6', '1326524133', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-25 17:16:39', '2023-04-25 17:16:39'),
(35, '4b4c70ccdce7ed24cc1de486f65d418f11ab6cf2', '9979615890', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-25 22:05:55', '2023-04-25 22:05:55'),
(36, 'a4a6f0488f06c1ebd4dac9b8542eae635b030699', '4883389410', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-26 13:56:06', '2023-04-26 13:56:06'),
(37, '0d4b8d2201008faaf9bfa09c4011e39b527ea997', '6079417934', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-26 14:05:48', '2023-04-26 14:05:48'),
(38, 'dc5ac57159d76b5b8d5d40279b81d323518b413e', '0549505914', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-26 14:13:09', '2023-04-26 14:13:09'),
(39, '2eb2d124b45e716869bdfa9b90abf6fd06afe7ae', '8951255103', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-26 14:14:16', '2023-04-26 14:14:16'),
(40, '41ce902204ac191b192307665631bb4e2b7f3944', '8979790787', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-26 14:20:09', '2023-04-26 14:20:09'),
(41, 'b85884b41c5619093ffb28377e571de704dd6bd6', '9689429582', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-26 14:52:37', '2023-04-26 14:52:37'),
(42, '1456a4c928badecc8ef4fdb9c13083b2f0c41433', '2166580519', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-26 16:49:03', '2023-04-26 16:49:03'),
(43, 'b2a5a9483cf6dfa135c531f9f4161d674934e5b1', '0358852772', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-26 16:52:30', '2023-04-26 16:52:30'),
(44, 'fa3b2adf818a43342884f080da7071dcd0a17133', '9631882196', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-27 09:10:52', '2023-04-27 09:10:52'),
(45, 'ce71a2f5b6314cce16c9ec1dfa3a6be31a68d1c0', '0335764452', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-29 11:28:02', '2023-04-29 11:28:02'),
(46, '990a2a48e4c40594a6158d037a570d920231a608', '4485934226', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-29 11:45:03', '2023-04-29 11:45:03'),
(47, '8106dff4091f67c3d6fc1b736e35cb15cfde3032', '1175003713', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-04-29 17:32:25', '2023-04-29 17:32:25'),
(48, 'de2a1ae89ae8829c0c7808904d1675e7e30816e6', '8294769746', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-05-02 14:32:41', '2023-05-02 14:32:41'),
(49, 'cbdb7c53e5efdca99eda924417c84d90cd7e28d3', '7581635371', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-05-02 14:33:08', '2023-05-02 14:33:08'),
(50, '273ecacb56a24adacf1cae85c4000a1cd6d62ffa', '7155838552', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-05-04 12:41:12', '2023-05-04 12:41:12'),
(51, 'd441ef1737ac357b80a51415a3162e7a3e95387e', '8010279348', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-05-06 10:10:27', '2023-05-06 10:10:27'),
(52, '232e57e11d80eb12e71995dcc7d3ec3d4b8429e5', '1288597813', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-05-06 17:31:34', '2023-05-06 17:31:34'),
(53, '10cf67e98ded97bd0d151dfb67bf95fd47bdbaf6', '2759467263', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-05-07 09:11:45', '2023-05-07 09:11:45'),
(54, 'ff0ab7f9e84f8f22595dade0e90f30cef2e02d08', '0004503864', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', '', '', '', '', NULL, '2023-05-10 16:50:22', '2023-05-10 16:50:22');

-- --------------------------------------------------------

--
-- Structure de la table `npwd_match_views`
--

CREATE TABLE `npwd_match_views` (
  `id` int(11) NOT NULL,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `profile` int(11) NOT NULL,
  `liked` tinyint(4) DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `npwd_match_views`
--

INSERT INTO `npwd_match_views` (`id`, `identifier`, `profile`, `liked`, `createdAt`, `updatedAt`) VALUES
(1, 'e8e748059b1fed27c021331265dc0480d61be860', 3, 1, '2023-04-24 17:14:40', '2023-04-24 17:14:40'),
(2, 'e8e748059b1fed27c021331265dc0480d61be860', 25, 1, '2023-04-24 17:14:40', '2023-04-24 17:14:40'),
(3, 'e8e748059b1fed27c021331265dc0480d61be860', 24, 1, '2023-04-24 17:14:40', '2023-04-24 17:14:40'),
(4, 'e8e748059b1fed27c021331265dc0480d61be860', 21, 1, '2023-04-24 17:14:41', '2023-04-24 17:14:41'),
(5, 'e8e748059b1fed27c021331265dc0480d61be860', 19, 1, '2023-04-24 17:14:42', '2023-04-24 17:14:42'),
(6, 'e8e748059b1fed27c021331265dc0480d61be860', 17, 1, '2023-04-24 17:14:42', '2023-04-24 17:14:42'),
(7, 'e8e748059b1fed27c021331265dc0480d61be860', 15, 1, '2023-04-24 17:14:43', '2023-04-24 17:14:43'),
(8, 'e8e748059b1fed27c021331265dc0480d61be860', 13, 1, '2023-04-24 17:14:44', '2023-04-24 17:14:44'),
(9, 'e8e748059b1fed27c021331265dc0480d61be860', 11, 1, '2023-04-24 17:14:45', '2023-04-24 17:14:45'),
(10, 'e8e748059b1fed27c021331265dc0480d61be860', 9, 1, '2023-04-24 17:14:46', '2023-04-24 17:14:46'),
(11, 'e8e748059b1fed27c021331265dc0480d61be860', 8, 1, '2023-04-24 17:14:47', '2023-04-24 17:14:47'),
(12, 'e8e748059b1fed27c021331265dc0480d61be860', 7, 1, '2023-04-24 17:14:47', '2023-04-24 17:14:47'),
(13, 'e8e748059b1fed27c021331265dc0480d61be860', 6, 1, '2023-04-24 17:14:48', '2023-04-24 17:14:48'),
(14, 'e8e748059b1fed27c021331265dc0480d61be860', 5, 1, '2023-04-24 17:14:48', '2023-04-24 17:14:48'),
(15, 'e8e748059b1fed27c021331265dc0480d61be860', 4, 1, '2023-04-24 17:14:49', '2023-04-24 17:14:49'),
(16, 'e8e748059b1fed27c021331265dc0480d61be860', 31, 1, '2023-04-25 14:19:56', '2023-04-25 14:19:56'),
(17, 'e8e748059b1fed27c021331265dc0480d61be860', 29, 1, '2023-04-25 14:19:57', '2023-04-25 14:19:57'),
(18, 'e8e748059b1fed27c021331265dc0480d61be860', 27, 1, '2023-04-25 14:19:58', '2023-04-25 14:19:58'),
(19, 'e8e748059b1fed27c021331265dc0480d61be860', 23, 1, '2023-04-25 14:20:00', '2023-04-25 14:20:00'),
(20, 'e8e748059b1fed27c021331265dc0480d61be860', 20, 1, '2023-04-25 14:20:00', '2023-04-25 14:20:00'),
(21, 'e8e748059b1fed27c021331265dc0480d61be860', 18, 1, '2023-04-25 14:20:00', '2023-04-25 14:20:00'),
(22, 'e8e748059b1fed27c021331265dc0480d61be860', 16, 1, '2023-04-25 14:20:01', '2023-04-25 14:20:01'),
(23, 'e8e748059b1fed27c021331265dc0480d61be860', 14, 1, '2023-04-25 14:20:01', '2023-04-25 14:20:01'),
(24, 'e8e748059b1fed27c021331265dc0480d61be860', 12, 1, '2023-04-25 14:20:01', '2023-04-25 14:20:01'),
(25, 'e8e748059b1fed27c021331265dc0480d61be860', 10, 1, '2023-04-25 14:20:02', '2023-04-25 14:20:02'),
(26, 'e35e3c5dd6739a99962e1d1591a32200e2b9118d', 34, 1, '2023-04-25 18:28:50', '2023-04-25 18:28:50'),
(27, 'e35e3c5dd6739a99962e1d1591a32200e2b9118d', 33, 1, '2023-04-25 18:28:50', '2023-04-25 18:28:50'),
(28, 'e35e3c5dd6739a99962e1d1591a32200e2b9118d', 31, 1, '2023-04-25 18:28:51', '2023-04-25 18:28:51'),
(29, 'e35e3c5dd6739a99962e1d1591a32200e2b9118d', 29, 1, '2023-04-25 18:28:52', '2023-04-25 18:28:52'),
(30, 'e35e3c5dd6739a99962e1d1591a32200e2b9118d', 27, 1, '2023-04-25 18:28:54', '2023-04-25 18:28:54'),
(31, 'e35e3c5dd6739a99962e1d1591a32200e2b9118d', 22, 1, '2023-04-25 18:28:55', '2023-04-25 18:28:55'),
(32, 'e35e3c5dd6739a99962e1d1591a32200e2b9118d', 26, 1, '2023-04-25 18:28:56', '2023-04-25 18:28:56'),
(33, 'e35e3c5dd6739a99962e1d1591a32200e2b9118d', 24, 1, '2023-04-25 18:28:56', '2023-04-25 18:28:56'),
(34, 'e8e748059b1fed27c021331265dc0480d61be860', 34, 1, '2023-04-25 18:32:09', '2023-04-25 18:32:09'),
(35, 'e8e748059b1fed27c021331265dc0480d61be860', 33, 1, '2023-04-25 18:32:10', '2023-04-25 18:32:10'),
(36, 'e8e748059b1fed27c021331265dc0480d61be860', 32, 1, '2023-04-25 18:32:10', '2023-04-25 18:32:10'),
(37, 'e8e748059b1fed27c021331265dc0480d61be860', 30, 1, '2023-04-25 18:32:11', '2023-04-25 18:32:11'),
(38, 'e8e748059b1fed27c021331265dc0480d61be860', 28, 1, '2023-04-25 18:32:11', '2023-04-25 18:32:11'),
(39, 'e8e748059b1fed27c021331265dc0480d61be860', 26, 1, '2023-04-25 18:32:11', '2023-04-25 18:32:11'),
(40, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 33, 1, '2023-04-25 20:21:39', '2023-04-25 20:21:39'),
(41, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 32, 1, '2023-04-25 20:21:39', '2023-04-25 20:21:39'),
(42, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 30, 1, '2023-04-25 20:21:40', '2023-04-25 20:21:40'),
(43, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 28, 1, '2023-04-25 20:21:41', '2023-04-25 20:21:41'),
(44, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 22, 1, '2023-04-25 20:21:46', '2023-04-25 20:21:46'),
(45, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 26, 1, '2023-04-25 20:21:50', '2023-04-25 20:21:50'),
(46, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 25, 1, '2023-04-25 20:21:51', '2023-04-25 20:21:51'),
(47, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 24, 1, '2023-04-25 20:21:52', '2023-04-25 20:21:52'),
(48, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 23, 1, '2023-04-25 20:21:52', '2023-04-25 20:21:52'),
(49, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 21, 1, '2023-04-25 20:21:53', '2023-04-25 20:21:53'),
(50, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 20, 1, '2023-04-25 20:21:53', '2023-04-25 20:21:53'),
(51, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 19, 1, '2023-04-25 20:21:53', '2023-04-25 20:21:53'),
(52, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 18, 1, '2023-04-25 20:21:54', '2023-04-25 20:21:54'),
(53, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 17, 1, '2023-04-25 20:21:54', '2023-04-25 20:21:54'),
(54, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 16, 1, '2023-04-25 20:21:54', '2023-04-25 20:21:54'),
(55, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 15, 1, '2023-04-25 20:21:55', '2023-04-25 20:21:55'),
(56, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 14, 1, '2023-04-25 20:21:55', '2023-04-25 20:21:55'),
(57, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 13, 1, '2023-04-25 20:21:55', '2023-04-25 20:21:55');

-- --------------------------------------------------------

--
-- Structure de la table `npwd_messages`
--

CREATE TABLE `npwd_messages` (
  `id` int(11) NOT NULL,
  `message` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `conversation_id` varchar(512) NOT NULL,
  `isRead` tinyint(4) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `visible` tinyint(4) NOT NULL DEFAULT 1,
  `author` varchar(255) NOT NULL,
  `is_embed` tinyint(4) NOT NULL DEFAULT 0,
  `embed` varchar(512) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `npwd_messages`
--

INSERT INTO `npwd_messages` (`id`, `message`, `user_identifier`, `conversation_id`, `isRead`, `createdAt`, `updatedAt`, `visible`, `author`, `is_embed`, `embed`) VALUES
(1, 'tesr', '96accefda755458c14ad75ae3824d5ecc56e8638', '1', 0, '2023-04-06 18:19:33', '2023-04-06 18:19:33', 1, '977-015-0768', 0, ''),
(2, 'je t\'aime pas', '3c23ecfcaa92eb9850a615fdedfc208ee1e96ffa', '2', 0, '2023-04-24 18:27:26', '2023-04-24 18:27:26', 1, '138-550-5259', 0, ''),
(3, 'Localisation partagée', 'eb2590ac498963958218b515bfd803b0776c9e08', '3', 0, '2023-04-25 09:40:03', '2023-04-25 09:40:03', 1, '600-195-2005', 1, '{\"type\":\"location\",\"coords\":[2142.27685546875,3013.9384765625,45.135498046875],\"phoneNumber\":\"600-195-2005\"}'),
(4, 'tony', '630e51d91706e2e79529dc26831b96f71a1ebed1', '4', 0, '2023-04-25 14:42:05', '2023-04-25 14:42:05', 1, '788-109-2982', 0, ''),
(5, 'ntm toi et ta chance', 'eb2590ac498963958218b515bfd803b0776c9e08', '4', 0, '2023-04-25 14:42:33', '2023-04-25 14:42:33', 1, '600-195-2005', 0, ''),
(6, 'Localisation partagée', '630e51d91706e2e79529dc26831b96f71a1ebed1', '4', 0, '2023-04-25 15:27:05', '2023-04-25 15:27:05', 1, '788-109-2982', 1, '{\"type\":\"location\",\"coords\":[2130.989013671875,3552.646240234375,43.5516357421875],\"phoneNumber\":\"788-109-2982\"}'),
(7, 'je suis dans le mal desole', '802ae7807563388f110349e6e49299ca33f38712', '5', 0, '2023-04-25 20:17:05', '2023-04-25 20:17:05', 1, '853-500-6651', 0, ''),
(8, 'je vais venir tt a l\'heure pour mon quad', '802ae7807563388f110349e6e49299ca33f38712', '5', 0, '2023-04-25 20:17:25', '2023-04-25 20:17:25', 1, '853-500-6651', 0, ''),
(9, 'venez svp', '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', '5', 0, '2023-04-25 20:17:32', '2023-04-25 20:17:32', 1, '123-537-8827', 0, ''),
(10, '\n2sec', '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', '5', 0, '2023-04-25 20:17:42', '2023-04-25 20:17:42', 1, '123-537-8827', 0, ''),
(11, '\nla je suis en train de mourire de faim*', '802ae7807563388f110349e6e49299ca33f38712', '5', 0, '2023-04-25 20:17:45', '2023-04-25 20:17:45', 1, '853-500-6651', 0, ''),
(12, '\nmerde j\'ai a manger pour vous ', '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', '5', 0, '2023-04-25 20:18:09', '2023-04-25 20:18:09', 1, '123-537-8827', 0, ''),
(13, 'dans combien de temps vous serais la ?', '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', '5', 0, '2023-04-25 20:18:56', '2023-04-25 20:18:56', 1, '123-537-8827', 0, ''),
(14, 'je vous attend faite vite svp', '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', '5', 0, '2023-04-25 20:20:34', '2023-04-25 20:20:34', 1, '123-537-8827', 0, ''),
(15, 'att je viens de refaire un malaise', '802ae7807563388f110349e6e49299ca33f38712', '5', 0, '2023-04-25 20:26:47', '2023-04-25 20:26:47', 1, '853-500-6651', 0, ''),
(16, '\nje vais manger jarrive ptn sa me saoule', '802ae7807563388f110349e6e49299ca33f38712', '5', 0, '2023-04-25 20:27:01', '2023-04-25 20:27:01', 1, '853-500-6651', 0, ''),
(17, 'je re aussi ', '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', '5', 0, '2023-04-25 20:27:38', '2023-04-25 20:27:38', 1, '123-537-8827', 0, ''),
(18, 'yo je sui la ', '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', '5', 0, '2023-04-26 11:38:49', '2023-04-26 11:38:49', 1, '123-537-8827', 0, ''),
(20, 'Wsh', 'e8e748059b1fed27c021331265dc0480d61be860', '6', 0, '2023-04-26 12:34:29', '2023-04-26 12:34:29', 1, '513-537-4268', 0, ''),
(21, 'Wsh', 'e8e748059b1fed27c021331265dc0480d61be860', '7', 0, '2023-04-26 12:36:17', '2023-04-26 12:36:17', 1, '513-537-4268', 0, ''),
(22, 'Bonsoir', 'e8e748059b1fed27c021331265dc0480d61be860', '8', 0, '2023-04-27 14:57:21', '2023-04-27 14:57:21', 1, '513-537-4268', 0, ''),
(23, 'yo j\'attend toujour mes 7k', '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', '5', 0, '2023-04-30 16:42:10', '2023-04-30 16:42:10', 1, '123-537-8827', 0, ''),
(24, 'Localisation partagée', '96accefda755458c14ad75ae3824d5ecc56e8638', '1', 0, '2023-05-10 19:11:32', '2023-05-10 19:11:32', 1, '977-015-0768', 1, '{\"type\":\"location\",\"coords\":[902.7428588867188,-2092.602294921875,30.6614990234375],\"phoneNumber\":\"977-015-0768\"}');

-- --------------------------------------------------------

--
-- Structure de la table `npwd_messages_conversations`
--

CREATE TABLE `npwd_messages_conversations` (
  `id` int(11) NOT NULL,
  `conversation_list` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `label` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_message_id` int(11) DEFAULT NULL,
  `is_group_chat` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `npwd_messages_conversations`
--

INSERT INTO `npwd_messages_conversations` (`id`, `conversation_list`, `label`, `createdAt`, `updatedAt`, `last_message_id`, `is_group_chat`) VALUES
(1, '911+977-015-0768', '', '2023-03-29 13:03:36', '2023-05-10 19:11:32', NULL, 0),
(2, '1235378827+138-550-5259', '', '2023-04-24 18:27:20', '2023-04-24 18:27:26', NULL, 0),
(3, '600-006-8904+600-195-2005', '', '2023-04-25 09:39:52', '2023-04-25 09:40:03', NULL, 0),
(4, '600-195-2005+788-109-2982', '', '2023-04-25 14:41:54', '2023-04-25 15:27:05', NULL, 0),
(5, '123-537-8827+853-500-6651', '', '2023-04-25 20:16:56', '2023-04-30 16:42:10', NULL, 0),
(6, '1235378827+513-537-4268', '', '2023-04-26 12:33:43', '2023-04-26 12:34:29', NULL, 0),
(7, '123-537-8827+513-537-4268', '', '2023-04-26 12:36:10', '2023-04-26 12:36:17', NULL, 0),
(8, '513-537-4268+600-195-2005', '', '2023-04-27 14:57:16', '2023-04-27 14:57:21', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `npwd_messages_participants`
--

CREATE TABLE `npwd_messages_participants` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `participant` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `unread_count` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `npwd_messages_participants`
--

INSERT INTO `npwd_messages_participants` (`id`, `conversation_id`, `participant`, `unread_count`) VALUES
(1, 1, '911', 0),
(2, 1, '977-015-0768', 0),
(3, 1, '977-015-0768', 0),
(4, 2, '1235378827', 0),
(5, 2, '138-550-5259', 0),
(6, 3, '600-006-8904', 0),
(7, 3, '600-195-2005', 0),
(8, 4, '600-195-2005', 0),
(9, 4, '788-109-2982', 1),
(10, 5, '123-537-8827', 0),
(11, 5, '853-500-6651', 3),
(12, 6, '1235378827', 0),
(14, 7, '123-537-8827', 0),
(15, 7, '513-537-4268', 0),
(16, 8, '513-537-4268', 0),
(17, 8, '600-195-2005', 0);

-- --------------------------------------------------------

--
-- Structure de la table `npwd_notes`
--

CREATE TABLE `npwd_notes` (
  `id` int(11) NOT NULL,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `npwd_notes`
--

INSERT INTO `npwd_notes` (`id`, `identifier`, `title`, `content`) VALUES
(1, 'b85884b41c5619093ffb28377e571de704dd6bd6', 'Vignerons ', 'Nouvelle entreprise acquis !\n');

-- --------------------------------------------------------

--
-- Structure de la table `npwd_phone_contacts`
--

CREATE TABLE `npwd_phone_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `display` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `npwd_phone_contacts`
--

INSERT INTO `npwd_phone_contacts` (`id`, `identifier`, `avatar`, `number`, `display`) VALUES
(1, '96accefda755458c14ad75ae3824d5ecc56e8638', '', '911', 'police'),
(2, '3c23ecfcaa92eb9850a615fdedfc208ee1e96ffa', '', '1235378827', 'pd'),
(3, 'bac5ad709b7410826ee1f7849b40d231b6b7895c', '', '600-195-2005', 'hermano'),
(4, 'eb2590ac498963958218b515bfd803b0776c9e08', '', '600-006-8904', 'ermano'),
(5, '776f5aa08ac3ad3f772d266d7c51ec508a34bbd0', '', '853-500-6651', 'Wes'),
(6, '802ae7807563388f110349e6e49299ca33f38712', '', '370-215-5115', 'Jaden 12 boy'),
(7, '630e51d91706e2e79529dc26831b96f71a1ebed1', '', '600-195-2005', 'jony'),
(8, 'eb2590ac498963958218b515bfd803b0776c9e08', '', '788-109-2982', 'Tony'),
(9, '802ae7807563388f110349e6e49299ca33f38712', '', '123-537-8827', 'MECANO'),
(10, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', '', '853-500-6651', 'patron consses moto'),
(11, 'e8e748059b1fed27c021331265dc0480d61be860', '', '123-537-8827', 'Bryan Mecano'),
(12, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', '', '513-537-4268', 'blanco'),
(13, 'e8e748059b1fed27c021331265dc0480d61be860', '', '600-195-2005', 'Joni '),
(14, 'eb2590ac498963958218b515bfd803b0776c9e08', '', '513-537-4268', 'Blanco');

-- --------------------------------------------------------

--
-- Structure de la table `npwd_phone_gallery`
--

CREATE TABLE `npwd_phone_gallery` (
  `id` int(11) NOT NULL,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `npwd_phone_gallery`
--

INSERT INTO `npwd_phone_gallery` (`id`, `identifier`, `image`) VALUES
(2, '96accefda755458c14ad75ae3824d5ecc56e8638', 'https://media.discordapp.net/attachments/1090028393417936966/1090622384635134072/fivemscreenshot.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `npwd_twitter_likes`
--

CREATE TABLE `npwd_twitter_likes` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `tweet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `npwd_twitter_likes`
--

INSERT INTO `npwd_twitter_likes` (`id`, `profile_id`, `tweet_id`) VALUES
(2, 10, 1),
(3, 10, 2),
(4, 10, 3),
(14, 19, 8),
(5, 20, 5),
(6, 20, 7),
(13, 27, 1),
(12, 27, 2),
(11, 27, 3),
(10, 27, 4),
(9, 27, 5),
(8, 27, 6),
(7, 27, 7);

-- --------------------------------------------------------

--
-- Structure de la table `npwd_twitter_profiles`
--

CREATE TABLE `npwd_twitter_profiles` (
  `id` int(11) NOT NULL,
  `profile_name` varchar(90) NOT NULL,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `avatar_url` varchar(255) DEFAULT 'https://i.file.glass/QrEvq.png',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `npwd_twitter_profiles`
--

INSERT INTO `npwd_twitter_profiles` (`id`, `profile_name`, `identifier`, `avatar_url`, `createdAt`, `updatedAt`) VALUES
(3, '3627788390', '96accefda755458c14ad75ae3824d5ecc56e8638', 'https://i.file.glass/QrEvq.png', '2023-03-27 12:17:27', '2023-03-27 12:17:27'),
(4, '6346531677', '382cfe22ca34f2f5dac6845a7a05b39939daa0cd', 'https://i.file.glass/QrEvq.png', '2023-03-27 14:33:24', '2023-03-27 14:33:24'),
(5, '7810414703', '26a1b1b34807cf220637eb2bd71abd699fc7a8d5', 'https://i.file.glass/QrEvq.png', '2023-03-27 16:18:49', '2023-03-27 16:18:49'),
(6, '1867030778', 'a3f90caeb2011bbe94ead4782b3ff5832d39bdf1', 'https://i.file.glass/QrEvq.png', '2023-03-27 16:25:36', '2023-03-27 16:25:36'),
(7, 'sayler', '7c37425743ff6fb7f740dce4492bea16acbb89df', 'https://i.file.glass/QrEvq.png', '2023-03-27 19:28:00', '2023-04-26 13:35:46'),
(8, '7971696413', '9118f15b46f69bd18df1634cb415ad27e75154b9', 'https://i.file.glass/QrEvq.png', '2023-03-27 20:13:44', '2023-03-27 20:13:44'),
(9, '2088109981', 'e35e3c5dd6739a99962e1d1591a32200e2b9118d', 'https://i.file.glass/QrEvq.png', '2023-03-28 19:00:35', '2023-03-28 19:00:35'),
(10, '3715907721', '776f5aa08ac3ad3f772d266d7c51ec508a34bbd0', 'https://i.file.glass/QrEvq.png', '2023-03-29 14:04:15', '2023-03-29 14:04:15'),
(11, '3403420632', '30e62d3c655261eaecbf9f850349123440a792f5', 'https://i.file.glass/QrEvq.png', '2023-03-29 19:20:52', '2023-03-29 19:20:52'),
(12, '0140355675', '6ac522e0adee4ddc961f69cc7de701d989a2be3f', 'https://i.file.glass/QrEvq.png', '2023-03-29 20:43:57', '2023-03-29 20:43:57'),
(13, '0399790386', '4033ea29562af80cdf4e24bb7dbc5b712651d6d6', 'https://i.file.glass/QrEvq.png', '2023-03-30 14:56:48', '2023-03-30 14:56:48'),
(14, '6759208544', '0818bd82444a908ff2f89114f0d67670cd910cfc', 'https://i.file.glass/QrEvq.png', '2023-03-30 18:18:35', '2023-03-30 18:18:35'),
(15, '4826541910', '02092e91f72e417897845f65735abcc3b3bbcfac', 'https://i.file.glass/QrEvq.png', '2023-03-30 18:27:34', '2023-03-30 18:27:34'),
(16, '4408098756', 'e955274b312d1518e974b572d585c9d7568221dd', 'https://i.file.glass/QrEvq.png', '2023-03-31 14:39:40', '2023-03-31 14:39:40'),
(17, '1443507615', 'a59a452fee0d267fc21bccfc6d707a3e33041f15', 'https://i.file.glass/QrEvq.png', '2023-03-31 14:40:09', '2023-03-31 14:40:09'),
(18, '4022856305', '3c23ecfcaa92eb9850a615fdedfc208ee1e96ffa', 'https://i.file.glass/QrEvq.png', '2023-03-31 17:17:45', '2023-03-31 17:17:45'),
(19, '8535006651', '802ae7807563388f110349e6e49299ca33f38712', 'https://i.file.glass/QrEvq.png', '2023-04-12 11:20:39', '2023-04-12 11:20:39'),
(20, '6000068904', 'bac5ad709b7410826ee1f7849b40d231b6b7895c', 'https://i.file.glass/QrEvq.png', '2023-04-18 17:05:38', '2023-04-18 17:05:38'),
(21, '0293991638', '9e390c19582fb0a6402410b782e579bf267f6806', 'https://i.file.glass/QrEvq.png', '2023-04-18 19:05:23', '2023-04-18 19:05:23'),
(22, 'Blanco', 'e8e748059b1fed27c021331265dc0480d61be860', 'https://i.file.glass/QrEvq.png', '2023-04-24 16:10:20', '2023-04-24 18:11:57'),
(23, '6639397930', 'ac615aeca14e01bfd0b388f59dd5c8ee7e33c454', 'https://i.file.glass/QrEvq.png', '2023-04-24 16:29:31', '2023-04-24 16:29:31'),
(24, '6001952005', 'eb2590ac498963958218b515bfd803b0776c9e08', 'https://i.file.glass/QrEvq.png', '2023-04-24 16:59:05', '2023-04-24 16:59:05'),
(25, '5270242655', 'f225082d5a50e4afb3e9850cda24d5f613da7ef3', 'https://i.file.glass/QrEvq.png', '2023-04-24 17:07:47', '2023-04-24 17:07:47'),
(26, '8106888141', '9c9e1295d88065d75789d74b17abb9694d9e91e0', 'https://i.file.glass/QrEvq.png', '2023-04-24 17:11:56', '2023-04-24 17:11:56'),
(27, '1235378827', '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 'https://i.file.glass/QrEvq.png', '2023-04-24 17:44:13', '2023-04-24 17:44:13'),
(28, '8552479358', '230cdfa13129e5ad39faece17c502911cbaa784f', 'https://i.file.glass/QrEvq.png', '2023-04-25 08:25:31', '2023-04-25 08:25:31'),
(29, '2693714844', 'bcb294db06c3db5662aa1d59c8a70a4fde20455d', 'https://i.file.glass/QrEvq.png', '2023-04-25 09:24:24', '2023-04-25 09:24:24'),
(30, '1464003857', '3cd8319c594578ba2c343887ef2bbe838f0ec826', 'https://i.file.glass/QrEvq.png', '2023-04-25 13:57:14', '2023-04-25 13:57:14'),
(31, '7881092982', '630e51d91706e2e79529dc26831b96f71a1ebed1', 'https://i.file.glass/QrEvq.png', '2023-04-25 14:16:50', '2023-04-25 14:16:50'),
(32, '0106310718', '552336394dc327ede208fb7fa97ff86088f4ac99', 'https://i.file.glass/QrEvq.png', '2023-04-25 15:51:10', '2023-04-25 15:51:10'),
(33, '4721192068', '3a220bbca68cafbdb31ed853099769f52d988c3d', 'https://i.file.glass/QrEvq.png', '2023-04-25 17:14:35', '2023-04-25 17:14:35'),
(34, '1326524133', 'f2f9d66456cc94a664b2054a4f35af3b3c793bb6', 'https://i.file.glass/QrEvq.png', '2023-04-25 17:16:39', '2023-04-25 17:16:39'),
(35, '9979615890', '4b4c70ccdce7ed24cc1de486f65d418f11ab6cf2', 'https://i.file.glass/QrEvq.png', '2023-04-25 22:05:55', '2023-04-25 22:05:55'),
(36, '4883389410', 'a4a6f0488f06c1ebd4dac9b8542eae635b030699', 'https://i.file.glass/QrEvq.png', '2023-04-26 13:56:06', '2023-04-26 13:56:06'),
(37, '6079417934', '0d4b8d2201008faaf9bfa09c4011e39b527ea997', 'https://i.file.glass/QrEvq.png', '2023-04-26 14:05:48', '2023-04-26 14:05:48'),
(38, '0549505914', 'dc5ac57159d76b5b8d5d40279b81d323518b413e', 'https://i.file.glass/QrEvq.png', '2023-04-26 14:13:09', '2023-04-26 14:13:09'),
(39, '8951255103', '2eb2d124b45e716869bdfa9b90abf6fd06afe7ae', 'https://i.file.glass/QrEvq.png', '2023-04-26 14:14:16', '2023-04-26 14:14:16'),
(40, '8979790787', '41ce902204ac191b192307665631bb4e2b7f3944', 'https://i.file.glass/QrEvq.png', '2023-04-26 14:20:09', '2023-04-26 14:20:09'),
(41, '9689429582', 'b85884b41c5619093ffb28377e571de704dd6bd6', 'https://i.file.glass/QrEvq.png', '2023-04-26 14:52:37', '2023-04-26 14:52:37'),
(42, '2166580519', '1456a4c928badecc8ef4fdb9c13083b2f0c41433', 'https://i.file.glass/QrEvq.png', '2023-04-26 16:49:03', '2023-04-26 16:49:03'),
(43, '0358852772', 'b2a5a9483cf6dfa135c531f9f4161d674934e5b1', 'https://i.file.glass/QrEvq.png', '2023-04-26 16:52:30', '2023-04-26 16:52:30'),
(44, '9631882196', 'fa3b2adf818a43342884f080da7071dcd0a17133', 'https://i.file.glass/QrEvq.png', '2023-04-27 09:10:52', '2023-04-27 09:10:52'),
(45, '0335764452', 'ce71a2f5b6314cce16c9ec1dfa3a6be31a68d1c0', 'https://i.file.glass/QrEvq.png', '2023-04-29 11:28:02', '2023-04-29 11:28:02'),
(46, '4485934226', '990a2a48e4c40594a6158d037a570d920231a608', 'https://i.file.glass/QrEvq.png', '2023-04-29 11:45:03', '2023-04-29 11:45:03'),
(47, '1175003713', '8106dff4091f67c3d6fc1b736e35cb15cfde3032', 'https://i.file.glass/QrEvq.png', '2023-04-29 17:32:25', '2023-04-29 17:32:25'),
(48, '8294769746', 'de2a1ae89ae8829c0c7808904d1675e7e30816e6', 'https://i.file.glass/QrEvq.png', '2023-05-02 14:32:41', '2023-05-02 14:32:41'),
(49, '7581635371', 'cbdb7c53e5efdca99eda924417c84d90cd7e28d3', 'https://i.file.glass/QrEvq.png', '2023-05-02 14:33:08', '2023-05-02 14:33:08'),
(50, '7155838552', '273ecacb56a24adacf1cae85c4000a1cd6d62ffa', 'https://i.file.glass/QrEvq.png', '2023-05-04 12:41:12', '2023-05-04 12:41:12'),
(51, '8010279348', 'd441ef1737ac357b80a51415a3162e7a3e95387e', 'https://i.file.glass/QrEvq.png', '2023-05-06 10:10:27', '2023-05-06 10:10:27'),
(52, '1288597813', '232e57e11d80eb12e71995dcc7d3ec3d4b8429e5', 'https://i.file.glass/QrEvq.png', '2023-05-06 17:31:34', '2023-05-06 17:31:34'),
(53, '2759467263', '10cf67e98ded97bd0d151dfb67bf95fd47bdbaf6', 'https://i.file.glass/QrEvq.png', '2023-05-07 09:11:45', '2023-05-07 09:11:45'),
(54, '0004503864', 'ff0ab7f9e84f8f22595dade0e90f30cef2e02d08', 'https://i.file.glass/QrEvq.png', '2023-05-10 16:50:22', '2023-05-10 16:50:22');

-- --------------------------------------------------------

--
-- Structure de la table `npwd_twitter_reports`
--

CREATE TABLE `npwd_twitter_reports` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `tweet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `npwd_twitter_tweets`
--

CREATE TABLE `npwd_twitter_tweets` (
  `id` int(11) NOT NULL,
  `message` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT 1,
  `images` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `retweet` int(11) DEFAULT NULL,
  `profile_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `npwd_twitter_tweets`
--

INSERT INTO `npwd_twitter_tweets` (`id`, `message`, `createdAt`, `updatedAt`, `likes`, `identifier`, `visible`, `images`, `retweet`, `profile_id`) VALUES
(1, 'Wsh les bgs', '2023-04-24 17:09:32', '2023-04-25 17:52:47', 2, 'e8e748059b1fed27c021331265dc0480d61be860', 1, '', NULL, 22),
(2, 'bien les gars ??', '2023-04-24 17:09:53', '2023-04-25 17:52:46', 2, '4033ea29562af80cdf4e24bb7dbc5b712651d6d6', 1, '', NULL, 13),
(3, '@5135374268 Bien de la part des 12 OClock Boys my G', '2023-04-24 17:10:03', '2023-04-25 17:52:44', 2, '776f5aa08ac3ad3f772d266d7c51ec508a34bbd0', 1, '', NULL, 10),
(4, 'Bonjour les peoples', '2023-04-25 08:56:02', '2023-04-25 17:52:43', 1, 'e8e748059b1fed27c021331265dc0480d61be860', 1, '', NULL, 22),
(5, 'mecano ouvert', '2023-04-25 17:28:57', '2023-04-25 17:52:42', 2, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 1, '', NULL, 27),
(6, 'Concess moto dispo?', '2023-04-25 17:34:17', '2023-04-25 17:52:41', 1, 'e8e748059b1fed27c021331265dc0480d61be860', 1, '', NULL, 22),
(7, 'mecano toujour ouvert venez reparer ou custome votre vehicule', '2023-04-25 17:50:28', '2023-04-25 17:52:40', 2, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 1, '', NULL, 27),
(8, 'Concess motot ouvert ou pas?', '2023-04-25 17:53:16', '2023-04-25 18:46:42', 1, 'e8e748059b1fed27c021331265dc0480d61be860', 1, '', NULL, 22),
(9, 'mecano toujour ouvert venez faire vos reparation ou vos custome', '2023-04-25 18:10:20', '2023-04-25 18:10:20', 0, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 1, '', NULL, 27),
(10, 'mecano toujour ouvert', '2023-04-25 18:28:01', '2023-04-25 18:28:01', 0, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 1, '', NULL, 27),
(11, 'Bonjour bcso dispo ??', '2023-04-25 18:30:37', '2023-04-25 18:30:37', 0, '7c37425743ff6fb7f740dce4492bea16acbb89df', 1, '', NULL, 7),
(12, 'mecano de retoure venez pour une repa ou un custrome', '2023-04-25 19:07:33', '2023-04-25 19:07:33', 0, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 1, '', NULL, 27),
(13, '@1235378827 TU FAIS DES QUAD ET MOTO ?', '2023-04-25 19:10:08', '2023-04-25 19:10:08', 0, '802ae7807563388f110349e6e49299ca33f38712', 1, '', NULL, 19),
(14, '@1235378827 VOUS ETES OU ,', '2023-04-25 19:53:03', '2023-04-25 19:53:03', 0, '802ae7807563388f110349e6e49299ca33f38712', 1, '', NULL, 19),
(15, 'revenez au mecano j\'ai un truc a vous proposer', '2023-04-25 20:15:37', '2023-04-25 20:15:37', 0, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 1, '', NULL, 27),
(16, 'bonjour a tous le mecano est ouvert', '2023-04-26 11:40:08', '2023-04-26 11:40:08', 0, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 1, '', NULL, 27),
(17, '', '2023-04-26 13:35:19', '2023-04-26 13:35:19', 0, '7c37425743ff6fb7f740dce4492bea16acbb89df', 1, '', 8, 7),
(18, 'mecano bientot ouvert', '2023-04-26 13:50:54', '2023-04-26 13:50:54', 0, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 1, '', NULL, 27),
(19, 'Je t\'attend', '2023-04-26 13:51:36', '2023-04-26 13:51:36', 0, 'e8e748059b1fed27c021331265dc0480d61be860', 1, '', NULL, 22),
(20, 'y\'a t\'il un mecano de dispo', '2023-04-26 20:25:18', '2023-04-26 20:25:18', 0, 'f225082d5a50e4afb3e9850cda24d5f613da7ef3', 1, '', NULL, 25),
(21, 'bonkour mecano ouvert', '2023-04-30 16:37:45', '2023-04-30 16:37:45', 0, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 1, '', NULL, 27),
(22, 'mecano fermé', '2023-04-30 16:44:04', '2023-04-30 16:44:04', 0, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 1, '', NULL, 27),
(23, 'mecano ouvert', '2023-05-05 17:05:41', '2023-05-05 17:05:41', 0, '67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 1, '', NULL, 27);

-- --------------------------------------------------------

--
-- Structure de la table `open_car`
--

CREATE TABLE `open_car` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `got` varchar(50) DEFAULT NULL,
  `NB` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Structure de la table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(46) DEFAULT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `parking` varchar(60) DEFAULT NULL,
  `pound` varchar(60) DEFAULT NULL,
  `glovebox` longtext DEFAULT NULL,
  `trunk` longtext DEFAULT NULL,
  `mileage` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`owner`, `plate`, `vehicle`, `type`, `job`, `stored`, `parking`, `pound`, `glovebox`, `trunk`, `mileage`) VALUES
('96accefda755458c14ad75ae3824d5ecc56e8638', 'CRAZIOZF', '{\"modDial\":-1,\"extras\":{\"1\":1},\"interiorColor\":8,\"tyreSmokeColor\":[255,255,255],\"bodyHealth\":1000.0,\"fuelLevel\":69.8,\"modFrame\":-1,\"neonColor\":[255,0,255],\"dashboardColor\":156,\"color1\":12,\"modBrakes\":0,\"modTurbo\":false,\"tyreBurst\":{\"5\":false,\"0\":false,\"4\":false,\"1\":false},\"modHood\":-1,\"modTrimA\":-1,\"modAPlate\":-1,\"engineHealth\":999.7,\"wheels\":3,\"modRoof\":-1,\"modEngineBlock\":-1,\"modSuspension\":3,\"dirtLevel\":11.0,\"modVanityPlate\":-1,\"xenonColor\":255,\"windowsBroken\":{\"6\":false,\"7\":false,\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":true,\"5\":true},\"modOrnaments\":-1,\"modLightbar\":-1,\"modRearBumper\":-1,\"modSeats\":-1,\"modSmokeEnabled\":1,\"plate\":\"CRAZIOZF\",\"modLivery\":-1,\"neonEnabled\":[false,false,false,false],\"modArmor\":1,\"modDoorR\":-1,\"modRightFender\":-1,\"pearlescentColor\":2,\"modSpeakers\":-1,\"modHorns\":-1,\"modExhaust\":-1,\"modTank\":-1,\"wheelColor\":7,\"modSpoilers\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1,\"modSideSkirt\":-1,\"modEngine\":3,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"windowTint\":1,\"modDoorSpeaker\":-1,\"modGrille\":-1,\"modStruts\":-1,\"modXenon\":false,\"modFrontWheels\":-1,\"modSteeringWheel\":-1,\"modTrimB\":-1,\"modDashboard\":-1,\"modTransmission\":2,\"modFender\":-1,\"model\":683047626,\"modPlateHolder\":-1,\"doorsBroken\":{\"6\":false,\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false},\"tankHealth\":1000.0,\"modHydrolic\":-1,\"modAerials\":-1,\"color2\":0,\"plateIndex\":0,\"modBackWheels\":-1}', 'car', NULL, 0, NULL, NULL, NULL, NULL, 0),
('776f5aa08ac3ad3f772d266d7c51ec508a34bbd0', 'EVDM1139', '{\"fuelLevel\":87.4,\"modLightbar\":-1,\"extras\":[],\"modEngineBlock\":-1,\"modHydrolic\":-1,\"tyreBurst\":{\"0\":false,\"4\":false},\"neonEnabled\":[false,false,false,false],\"plateIndex\":0,\"modEngine\":-1,\"doorsBroken\":{\"1\":false,\"0\":false},\"modSteeringWheel\":-1,\"modPlateHolder\":-1,\"modSpoilers\":-1,\"color1\":0,\"neonColor\":[255,0,255],\"modDoorR\":-1,\"modStruts\":-1,\"modLivery\":1,\"modFender\":-1,\"modTank\":-1,\"modHorns\":-1,\"pearlescentColor\":0,\"modDoorSpeaker\":-1,\"modSeats\":-1,\"modDashboard\":-1,\"modTrimB\":-1,\"modShifterLeavers\":-1,\"windowTint\":-1,\"modOrnaments\":-1,\"modRoof\":-1,\"modSideSkirt\":-1,\"plate\":\"EVDM1139\",\"modArchCover\":-1,\"modArmor\":-1,\"xenonColor\":255,\"windowsBroken\":{\"3\":true,\"2\":true,\"5\":true,\"4\":true,\"7\":true,\"6\":true,\"1\":true,\"0\":true},\"modTrimA\":-1,\"modExhaust\":-1,\"modGrille\":-1,\"modRightFender\":-1,\"modXenon\":false,\"modSpeakers\":-1,\"engineHealth\":798.8,\"modVanityPlate\":-1,\"modAirFilter\":-1,\"modBackWheels\":-1,\"modSuspension\":-1,\"color2\":0,\"modFrontWheels\":-1,\"modHood\":-1,\"bodyHealth\":906.9,\"modAerials\":-1,\"modFrontBumper\":-1,\"wheels\":6,\"modTurbo\":false,\"tankHealth\":971.4,\"modTransmission\":-1,\"modFrame\":-1,\"modTrunk\":-1,\"modSmokeEnabled\":1,\"tyreSmokeColor\":[255,255,255],\"model\":788045382,\"modBrakes\":0,\"wheelColor\":156,\"modDial\":-1,\"modAPlate\":-1,\"modRearBumper\":-1,\"dirtLevel\":15.0}', 'car', NULL, 0, NULL, NULL, NULL, NULL, 0),
('bac5ad709b7410826ee1f7849b40d231b6b7895c', 'GDNV6843', '{\"modSpeakers\":-1,\"modSpoilers\":-1,\"modTank\":-1,\"modAerials\":-1,\"modTrimA\":-1,\"modFrontBumper\":-1,\"modFender\":-1,\"modVanityPlate\":-1,\"windowsBroken\":{\"2\":true,\"1\":true,\"0\":true,\"7\":true,\"6\":true,\"5\":true,\"4\":true,\"3\":true},\"plateIndex\":3,\"modArchCover\":-1,\"wheelColor\":156,\"modStruts\":-1,\"model\":1672195559,\"modBackWheels\":-1,\"extras\":{\"1\":1,\"4\":1,\"9\":1},\"modArmor\":-1,\"modFrontWheels\":-1,\"modXenon\":false,\"modTransmission\":-1,\"xenonColor\":255,\"tyreSmokeColor\":[255,255,255],\"modEngine\":-1,\"interiorColor\":0,\"fuelLevel\":44.8,\"modShifterLeavers\":-1,\"neonEnabled\":[false,false,false,false],\"bodyHealth\":971.5,\"modSeats\":-1,\"engineHealth\":945.0,\"modHood\":-1,\"modSideSkirt\":-1,\"modTrimB\":-1,\"tankHealth\":989.4,\"dashboardColor\":0,\"wheels\":6,\"modTrunk\":-1,\"modOrnaments\":-1,\"modSmokeEnabled\":1,\"modPlateHolder\":-1,\"modHorns\":-1,\"doorsBroken\":{\"0\":false,\"1\":false},\"modDashboard\":-1,\"color1\":12,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modSteeringWheel\":-1,\"modSuspension\":-1,\"modLightbar\":-1,\"dirtLevel\":11.0,\"pearlescentColor\":12,\"modTurbo\":false,\"modHydrolic\":-1,\"modDoorSpeaker\":-1,\"color2\":12,\"modBrakes\":0,\"tyreBurst\":{\"0\":false,\"4\":false},\"modRoof\":-1,\"modLivery\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modAirFilter\":-1,\"modDoorR\":-1,\"windowTint\":-1,\"modRearBumper\":-1,\"plate\":\"GDNV6843\",\"modGrille\":-1,\"modExhaust\":-1,\"modDial\":-1,\"modFrame\":-1}', 'car', NULL, 0, NULL, NULL, NULL, NULL, 0),
('802ae7807563388f110349e6e49299ca33f38712', 'GHQB9472', '{\"tankHealth\":1000.0,\"modStruts\":-1,\"fuelLevel\":77.9,\"neonEnabled\":[false,false,false,false],\"plate\":\"GHQB9472\",\"modPlateHolder\":-1,\"modRightFender\":-1,\"modLightbar\":-1,\"modGrille\":0,\"doorsBroken\":[],\"modXenon\":false,\"tyreSmokeColor\":[255,255,255],\"modRoof\":-1,\"modFrontWheels\":9,\"modSpoilers\":-1,\"modHorns\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"modBackWheels\":-1,\"dirtLevel\":11.1,\"xenonColor\":255,\"modSideSkirt\":-1,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"modDial\":-1,\"model\":-440768424,\"modLivery\":-1,\"modOrnaments\":-1,\"modExhaust\":1,\"extras\":[],\"plateIndex\":0,\"wheels\":0,\"modTank\":-1,\"tyreBurst\":{\"0\":false,\"1\":false,\"4\":false,\"5\":false},\"modEngineBlock\":-1,\"windowTint\":-1,\"modDoorSpeaker\":-1,\"modSuspension\":-1,\"modVanityPlate\":-1,\"modArmor\":-1,\"modSmokeEnabled\":1,\"modFrontBumper\":-1,\"modAPlate\":-1,\"modHydrolic\":-1,\"modBrakes\":0,\"modAerials\":-1,\"modTrimB\":-1,\"bodyHealth\":1000.0,\"modRearBumper\":-1,\"color2\":12,\"modHood\":-1,\"modTurbo\":false,\"neonColor\":[255,0,255],\"modEngine\":-1,\"modDashboard\":-1,\"pearlescentColor\":70,\"modTransmission\":-1,\"modFrame\":-1,\"modTrimA\":-1,\"color1\":12,\"modTrunk\":-1,\"modSteeringWheel\":-1,\"modDoorR\":-1,\"modSeats\":-1,\"windowsBroken\":{\"6\":true,\"5\":true,\"0\":true,\"7\":true,\"2\":true,\"1\":true,\"4\":true,\"3\":true},\"modFender\":-1,\"engineHealth\":1000.0,\"wheelColor\":156}', 'car', NULL, 0, NULL, NULL, NULL, NULL, 0),
('67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', 'UQFA3216', '{\"modTrunk\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":138,\"modSuspension\":-1,\"dirtLevel\":1.6,\"extras\":[],\"modHydrolic\":-1,\"color2\":111,\"neonEnabled\":[false,false,false,false],\"modTurbo\":false,\"windowsBroken\":{\"1\":false,\"0\":false,\"3\":false,\"2\":false,\"5\":true,\"4\":true,\"7\":false,\"6\":false},\"modBackWheels\":-1,\"modPlateHolder\":-1,\"plate\":\"UQFA3216\",\"modLightbar\":-1,\"bodyHealth\":994.3,\"modExhaust\":-1,\"engineHealth\":991.5,\"fuelLevel\":51.6,\"windowTint\":-1,\"modSideSkirt\":-1,\"wheels\":5,\"modOrnaments\":-1,\"modTrimB\":-1,\"modSpeakers\":-1,\"modVanityPlate\":-1,\"modDoorR\":-1,\"modTransmission\":-1,\"modLivery\":-1,\"modXenon\":false,\"modRoof\":-1,\"modRightFender\":-1,\"modTrimA\":-1,\"color1\":15,\"modHorns\":-1,\"modTank\":-1,\"modGrille\":-1,\"modBrakes\":-1,\"modSeats\":-1,\"modDashboard\":-1,\"modAPlate\":-1,\"neonColor\":[255,0,255],\"modDoorSpeaker\":-1,\"modSpoilers\":-1,\"modStruts\":-1,\"modFrontWheels\":-1,\"xenonColor\":255,\"modFender\":-1,\"modArmor\":-1,\"modArchCover\":-1,\"tyreBurst\":{\"5\":false,\"4\":false,\"1\":false,\"0\":false},\"modRearBumper\":-1,\"wheelColor\":156,\"modAerials\":-1,\"modSmokeEnabled\":1,\"plateIndex\":0,\"model\":1118611807,\"modSteeringWheel\":-1,\"modHood\":-1,\"modFrame\":-1,\"doorsBroken\":{\"1\":false,\"0\":false,\"3\":false,\"2\":false,\"5\":false,\"4\":false},\"modFrontBumper\":-1,\"modDial\":-1,\"tyreSmokeColor\":[255,255,255],\"modEngine\":-1,\"tankHealth\":999.4,\"modShifterLeavers\":-1,\"modAirFilter\":-1}', 'car', NULL, 0, NULL, NULL, NULL, NULL, 0),
('e8e748059b1fed27c021331265dc0480d61be860', 'VZKN6333', '{\"modSeats\":-1,\"modStruts\":-1,\"modTank\":-1,\"modExhaust\":-1,\"modLivery\":-1,\"bodyHealth\":822.0,\"fuelLevel\":24.0,\"modAerials\":-1,\"modOrnaments\":-1,\"modBackWheels\":-1,\"modDoorSpeaker\":-1,\"windowTint\":-1,\"modDoorR\":-1,\"modLightbar\":-1,\"wheelColor\":154,\"modRightFender\":-1,\"plate\":\"VZKN6333\",\"modFrame\":-1,\"dirtLevel\":10.2,\"modRoof\":-1,\"modSteeringWheel\":-1,\"modTrunk\":-1,\"modSideSkirt\":-1,\"wheels\":4,\"modHood\":-1,\"color1\":154,\"modAirFilter\":-1,\"modTransmission\":-1,\"modEngine\":-1,\"modTrimA\":-1,\"doorsBroken\":[],\"modFrontBumper\":-1,\"modHorns\":-1,\"modHydrolic\":-1,\"modFrontWheels\":-1,\"modSpeakers\":-1,\"modTurbo\":false,\"modRearBumper\":-1,\"tyreBurst\":{\"4\":false,\"1\":false,\"5\":false,\"0\":false},\"color2\":0,\"modBrakes\":0,\"modSuspension\":-1,\"neonEnabled\":[false,false,false,false],\"modAPlate\":-1,\"modArmor\":-1,\"neonColor\":[0,0,0],\"modPlateHolder\":-1,\"plateIndex\":0,\"extras\":[],\"xenonColor\":255,\"modSmokeEnabled\":1,\"windowsBroken\":{\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"0\":true,\"1\":true,\"2\":true,\"3\":true},\"engineHealth\":989.0,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modArchCover\":-1,\"modXenon\":false,\"pearlescentColor\":4,\"modShifterLeavers\":-1,\"modEngineBlock\":-1,\"modSpoilers\":-1,\"modGrille\":-1,\"modVanityPlate\":-1,\"modDial\":-1,\"tankHealth\":1000.0,\"modDashboard\":-1,\"model\":298565713,\"modTrimB\":-1}', 'car', NULL, 0, NULL, NULL, NULL, NULL, 0);

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
(63, 'Vangelico Bijouterie', '{\"state\":1,\"groups\":{\"police\":0,\"bcso\":0},\"maxDistance\":2,\"lockpick\":true,\"doors\":[{\"coords\":{\"x\":-631.9553833007813,\"y\":-236.33326721191407,\"z\":38.2065315246582},\"heading\":306,\"model\":1425919976},{\"coords\":{\"x\":-630.426513671875,\"y\":-238.4375457763672,\"z\":38.2065315246582},\"heading\":306,\"model\":9467943}],\"coords\":{\"x\":-631.19091796875,\"y\":-237.38540649414063,\"z\":38.2065315246582},\"lockSound\":\"metal-locker\",\"lockpickDifficulty\":[\"medium\"],\"unlockSound\":\"metal-locker\"}'),
(64, 'Taxi', '{\"maxDistance\":2,\"groups\":{\"taxi\":0},\"lockpickDifficulty\":[\"medium\"],\"unlockSound\":\"door-bolt-4\",\"coords\":{\"x\":907.3790283203125,\"y\":-160.37454223632813,\"z\":74.54778289794922},\"state\":1,\"lockSound\":\"door-bolt-4\",\"lockpick\":true,\"doors\":[{\"heading\":58,\"model\":1519319655,\"coords\":{\"x\":908.1146850585938,\"y\":-159.1846923828125,\"z\":74.54778289794922}},{\"heading\":238,\"model\":1519319655,\"coords\":{\"x\":906.643310546875,\"y\":-161.5644073486328,\"z\":74.54778289794922}}]}'),
(65, 'Taxi2', '{\"maxDistance\":2,\"groups\":{\"taxi\":0},\"lockpickDifficulty\":[\"medium\"],\"unlockSound\":\"door-bolt-4\",\"coords\":{\"x\":894.4410400390625,\"y\":-179.3114013671875,\"z\":74.85623931884766},\"state\":1,\"lockSound\":\"door-bolt-4\",\"lockpick\":true,\"doors\":[{\"heading\":238,\"model\":-2023754432,\"coords\":{\"x\":895.1224975585938,\"y\":-178.2061004638672,\"z\":74.85623931884766}},{\"heading\":59,\"model\":-2023754432,\"coords\":{\"x\":893.7596435546875,\"y\":-180.4167022705078,\"z\":74.85623931884766}}]}'),
(66, 'Taxi3', '{\"maxDistance\":2,\"groups\":{\"taxi\":0},\"model\":-2023754432,\"lockpickDifficulty\":[\"medium\"],\"heading\":329,\"unlockSound\":\"door-bolt-4\",\"coords\":{\"x\":895.2413330078125,\"y\":-144.86509704589845,\"z\":77.0450439453125},\"state\":1,\"lockSound\":\"door-bolt-4\",\"lockpick\":true,\"doors\":false}'),
(67, 'Taxi4', '{\"maxDistance\":2,\"groups\":{\"taxi\":0},\"model\":2064385778,\"lockpickDifficulty\":[\"medium\"],\"state\":1,\"heading\":148,\"unlockSound\":\"door-bolt-4\",\"coords\":{\"x\":900.0850830078125,\"y\":-147.83041381835938,\"z\":77.32047271728516},\"lockSound\":\"door-bolt-4\",\"lockpick\":true,\"auto\":true,\"doors\":false}'),
(68, 'Ambulance', '{\"maxDistance\":2,\"groups\":{\"ambulance\":0},\"lockpickDifficulty\":[\"medium\"],\"unlockSound\":\"door-bolt-4\",\"coords\":{\"x\":-1845.986083984375,\"y\":-348.2978820800781,\"z\":49.48584747314453},\"state\":1,\"lockSound\":\"door-bolt-4\",\"lockpick\":true,\"doors\":[{\"heading\":49,\"model\":2047627247,\"coords\":{\"x\":-1845.143798828125,\"y\":-347.32470703125,\"z\":49.48414611816406}},{\"heading\":230,\"model\":667560812,\"coords\":{\"x\":-1846.8282470703126,\"y\":-349.27105712890627,\"z\":49.487548828125}}]}'),
(69, 'Ambulance', '{\"maxDistance\":2,\"groups\":{\"ambulance\":0},\"model\":1195683893,\"lockpickDifficulty\":[\"medium\"],\"heading\":141,\"unlockSound\":\"door-bolt-4\",\"coords\":{\"x\":-1825.0880126953126,\"y\":-338.6932373046875,\"z\":49.63963317871094},\"state\":1,\"lockSound\":\"door-bolt-4\",\"lockpick\":true,\"doors\":false}'),
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
(112, 'cardealer7', '{\"heading\":207,\"groups\":{\"cardealer\":0},\"state\":1,\"auto\":true,\"model\":1430328167,\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":-1237.8436279296876,\"y\":-338.19476318359377,\"z\":37.60727310180664},\"unlockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"lockSound\":\"door-bolt-4\"}'),
(113, 'Tribubal', '{\"coords\":{\"x\":417.0765380859375,\"y\":-1083.903564453125,\"z\":30.20900154113769},\"unlockSound\":\"door-bolt-4\",\"doors\":[{\"heading\":135,\"coords\":{\"x\":417.97857666015627,\"y\":-1084.7926025390626,\"z\":30.20900154113769},\"model\":-1653848565},{\"heading\":316,\"coords\":{\"x\":416.1744689941406,\"y\":-1083.0146484375,\"z\":30.20900154113769},\"model\":-1653848565}],\"groups\":{\"bcso\":0,\"police\":0},\"state\":1,\"lockpickDifficulty\":[\"medium\"],\"maxDistance\":2,\"lockpick\":true,\"lockSound\":\"door-bolt-4\"}'),
(114, 'Tribunal2', '{\"coords\":{\"x\":439.576171875,\"y\":-1091.8704833984376,\"z\":30.24800109863281},\"unlockSound\":\"door-bolt-4\",\"doors\":[{\"heading\":270,\"coords\":{\"x\":439.5694274902344,\"y\":-1090.613525390625,\"z\":30.24800109863281},\"model\":-1176919893},{\"heading\":90,\"coords\":{\"x\":439.58294677734377,\"y\":-1093.12744140625,\"z\":30.24800109863281},\"model\":-1176919893}],\"groups\":{\"bcso\":0,\"police\":0},\"state\":1,\"lockpickDifficulty\":[\"medium\"],\"maxDistance\":2,\"lockpick\":true,\"lockSound\":\"door-bolt-4\"}'),
(115, 'Tribunal3', '{\"coords\":{\"x\":428.4978942871094,\"y\":-1100.2022705078126,\"z\":30.21538734436035},\"unlockSound\":\"door-bolt-4\",\"doors\":false,\"groups\":{\"bcso\":0,\"police\":0},\"state\":1,\"model\":-1119680854,\"lockpickDifficulty\":[\"medium\"],\"heading\":270,\"maxDistance\":2,\"lockpick\":true,\"lockSound\":\"door-bolt-4\"}'),
(116, 'Ambulance', '{\"state\":1,\"groups\":{\"ambulance\":0},\"auto\":true,\"doors\":[{\"heading\":50,\"model\":1017047909,\"coords\":{\"x\":-1847.5513916015626,\"y\":-365.747314453125,\"z\":39.79301452636719}},{\"heading\":230,\"model\":1017047909,\"coords\":{\"x\":-1845.8717041015626,\"y\":-363.74127197265627,\"z\":39.79120635986328}}],\"coords\":{\"x\":-1846.7115478515626,\"y\":-364.7442932128906,\"z\":39.79211044311523},\"maxDistance\":2,\"lockSound\":\"door-bolt-4\",\"lockpick\":true,\"lockpickDifficulty\":[\"medium\"],\"unlockSound\":\"door-bolt-4\"}');

-- --------------------------------------------------------

--
-- Structure de la table `ox_inventory`
--

CREATE TABLE `ox_inventory` (
  `owner` varchar(46) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `data` longtext DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ox_inventory`
--

INSERT INTO `ox_inventory` (`owner`, `name`, `data`, `lastupdated`) VALUES
('', '2139002351', '[{\"metadata\":{\"playerInfo\":{\"firstname\":\"Franck\",\"height\":183,\"dateofbirth\":\"14/11/1997\",\"lastname\":\"Graves\",\"sex\":\"m\"},\"identifier\":\"96accefda755458c14ad75ae3824d5ecc56e8638\"},\"name\":\"drivers_license\",\"slot\":1,\"count\":1}]', '2023-04-04 11:17:39'),
('', 'mechaniclockermoteur', '[{\"name\":\"v8engine\",\"count\":1,\"slot\":1}]', '2023-04-12 11:31:49'),
('', 'mechaniclockertranssusp', '[{\"slot\":3,\"name\":\"hotdog\",\"count\":1},{\"slot\":2,\"name\":\"water\",\"count\":1}]', '2023-04-25 21:25:15'),
('', 'society_taxi', '[{\"slot\":1,\"name\":\"WEAPON_NIGHTSTICK\",\"metadata\":{\"durability\":100,\"components\":[]},\"count\":1}]', '2023-04-25 15:35:14'),
('', 'evidence-1', '[{\"slot\":7,\"name\":\"WEAPON_NIGHTSTICK\",\"metadata\":{\"durability\":93.90000000000036,\"components\":[]},\"count\":1},{\"slot\":8,\"name\":\"WEAPON_PISTOL\",\"metadata\":{\"durability\":93.6000000000004,\"registered\":\"Franck Graves\",\"components\":[],\"ammo\":0,\"serial\":\"623742POL159081\"},\"count\":1},{\"slot\":9,\"name\":\"WEAPON_STUNGUN\",\"metadata\":{\"durability\":100,\"registered\":\"Franck Graves\",\"components\":[]},\"count\":1},{\"slot\":17,\"name\":\"farmlicense\",\"metadata\":{\"identifier\":\"e8e748059b1fed27c021331265dc0480d61be860\",\"playerInfo\":{\"firstname\":\"Blanco\",\"height\":188,\"dateofbirth\":\"26/02/1998\",\"lastname\":\"Sno\",\"sex\":\"m\"}},\"count\":1},{\"slot\":6,\"name\":\"WEAPON_FLASHLIGHT\",\"metadata\":{\"durability\":71.10000000000163,\"components\":[]},\"count\":1}]', '2023-04-26 15:15:18');

-- --------------------------------------------------------

--
-- Structure de la table `pefcl_accounts`
--

CREATE TABLE `pefcl_accounts` (
  `id` int(11) NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `accountName` varchar(255) DEFAULT NULL,
  `isDefault` tinyint(1) DEFAULT 0,
  `ownerIdentifier` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT 'owner',
  `balance` int(11) DEFAULT 25000,
  `type` varchar(255) DEFAULT 'personal',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

--
-- Déchargement des données de la table `player_outfits`
--

INSERT INTO `player_outfits` (`id`, `citizenid`, `outfitname`, `model`, `props`, `components`) VALUES
(29, '96accefda755458c14ad75ae3824d5ecc56e8638', 'test', 'mp_m_freemode_01', '[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":-1,\"drawable\":-1,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":-1,\"drawable\":-1,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}]', '[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":1},{\"texture\":0,\"drawable\":0,\"component_id\":2},{\"texture\":0,\"drawable\":0,\"component_id\":3},{\"texture\":0,\"drawable\":0,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":0,\"component_id\":6},{\"texture\":0,\"drawable\":0,\"component_id\":7},{\"texture\":0,\"drawable\":0,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":0,\"drawable\":0,\"component_id\":11}]'),
(31, '802ae7807563388f110349e6e49299ca33f38712', 'moto', 'mp_m_freemode_01', '[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":-1,\"drawable\":-1},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":-1,\"drawable\":-1},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}]', '[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":1},{\"texture\":0,\"drawable\":16,\"component_id\":2},{\"texture\":0,\"drawable\":20,\"component_id\":3},{\"texture\":0,\"drawable\":28,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":10,\"component_id\":6},{\"texture\":0,\"drawable\":0,\"component_id\":7},{\"texture\":0,\"drawable\":22,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":0,\"drawable\":162,\"component_id\":11}]'),
(32, 'e8e748059b1fed27c021331265dc0480d61be860', 'Tenue Gangsta', 'mp_m_freemode_01', '[{\"drawable\":-1,\"texture\":-1,\"prop_id\":0},{\"drawable\":-1,\"texture\":-1,\"prop_id\":1},{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7}]', '[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":1},{\"drawable\":15,\"texture\":0,\"component_id\":2},{\"drawable\":4,\"texture\":0,\"component_id\":3},{\"drawable\":27,\"texture\":3,\"component_id\":4},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":31,\"texture\":2,\"component_id\":6},{\"drawable\":0,\"texture\":0,\"component_id\":7},{\"drawable\":15,\"texture\":0,\"component_id\":8},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":305,\"texture\":23,\"component_id\":11}]'),
(33, 'bcb294db06c3db5662aa1d59c8a70a4fde20455d', 'chill', 'mp_m_freemode_01', '[{\"drawable\":12,\"texture\":0,\"prop_id\":0},{\"drawable\":5,\"texture\":1,\"prop_id\":1},{\"drawable\":3,\"texture\":0,\"prop_id\":2},{\"drawable\":0,\"texture\":0,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7}]', '[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":1},{\"drawable\":9,\"texture\":1,\"component_id\":2},{\"drawable\":26,\"texture\":0,\"component_id\":3},{\"drawable\":10,\"texture\":0,\"component_id\":4},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":51,\"texture\":0,\"component_id\":6},{\"drawable\":0,\"texture\":0,\"component_id\":7},{\"drawable\":15,\"texture\":0,\"component_id\":8},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":44,\"texture\":3,\"component_id\":11}]'),
(34, '776f5aa08ac3ad3f772d266d7c51ec508a34bbd0', 'OClock BOys', 'mp_m_freemode_01', '[{\"drawable\":-1,\"texture\":-1,\"prop_id\":0},{\"drawable\":-1,\"texture\":-1,\"prop_id\":1},{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7}]', '[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":1},{\"drawable\":8,\"texture\":0,\"component_id\":2},{\"drawable\":0,\"texture\":0,\"component_id\":3},{\"drawable\":104,\"texture\":0,\"component_id\":4},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":7,\"texture\":2,\"component_id\":6},{\"drawable\":87,\"texture\":0,\"component_id\":7},{\"drawable\":15,\"texture\":0,\"component_id\":8},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":388,\"texture\":3,\"component_id\":11}]'),
(35, '776f5aa08ac3ad3f772d266d7c51ec508a34bbd0', '12OClockBoys', 'mp_m_freemode_01', '[{\"drawable\":160,\"texture\":18,\"prop_id\":0},{\"drawable\":-1,\"texture\":-1,\"prop_id\":1},{\"drawable\":8,\"texture\":0,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7}]', '[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":1},{\"drawable\":8,\"texture\":0,\"component_id\":2},{\"drawable\":0,\"texture\":0,\"component_id\":3},{\"drawable\":104,\"texture\":0,\"component_id\":4},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":7,\"texture\":2,\"component_id\":6},{\"drawable\":87,\"texture\":0,\"component_id\":7},{\"drawable\":15,\"texture\":0,\"component_id\":8},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":388,\"texture\":3,\"component_id\":11}]'),
(36, '9c9e1295d88065d75789d74b17abb9694d9e91e0', 'tenue police sergent', 'mp_m_freemode_01', '[{\"drawable\":10,\"texture\":6,\"prop_id\":0},{\"drawable\":5,\"texture\":5,\"prop_id\":1},{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":4,\"texture\":1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7}]', '[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":1},{\"drawable\":12,\"texture\":3,\"component_id\":2},{\"drawable\":19,\"texture\":0,\"component_id\":3},{\"drawable\":46,\"texture\":0,\"component_id\":4},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":25,\"texture\":0,\"component_id\":6},{\"drawable\":0,\"texture\":0,\"component_id\":7},{\"drawable\":105,\"texture\":0,\"component_id\":8},{\"drawable\":28,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":101,\"texture\":2,\"component_id\":11}]'),
(38, '802ae7807563388f110349e6e49299ca33f38712', 'Bloods', 'mp_m_freemode_01', '[{\"drawable\":-1,\"texture\":-1,\"prop_id\":0},{\"drawable\":6,\"texture\":0,\"prop_id\":1},{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7}]', '[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":111,\"texture\":9,\"component_id\":1},{\"drawable\":16,\"texture\":0,\"component_id\":2},{\"drawable\":15,\"texture\":0,\"component_id\":3},{\"drawable\":1,\"texture\":0,\"component_id\":4},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":6,\"texture\":0,\"component_id\":6},{\"drawable\":136,\"texture\":2,\"component_id\":7},{\"drawable\":15,\"texture\":0,\"component_id\":8},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":339,\"texture\":10,\"component_id\":11}]'),
(39, 'e35e3c5dd6739a99962e1d1591a32200e2b9118d', 'GANG', 'mp_m_freemode_01', '[{\"drawable\":-1,\"texture\":-1,\"prop_id\":0},{\"drawable\":-1,\"texture\":-1,\"prop_id\":1},{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7}]', '[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":169,\"texture\":0,\"component_id\":1},{\"drawable\":24,\"texture\":0,\"component_id\":2},{\"drawable\":0,\"texture\":0,\"component_id\":3},{\"drawable\":9,\"texture\":7,\"component_id\":4},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":2,\"texture\":0,\"component_id\":6},{\"drawable\":0,\"texture\":0,\"component_id\":7},{\"drawable\":0,\"texture\":2,\"component_id\":8},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":390,\"texture\":5,\"component_id\":11}]'),
(40, 'e35e3c5dd6739a99962e1d1591a32200e2b9118d', 'gang white', 'mp_m_freemode_01', '[{\"drawable\":-1,\"texture\":-1,\"prop_id\":0},{\"drawable\":-1,\"texture\":-1,\"prop_id\":1},{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7}]', '[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":169,\"texture\":2,\"component_id\":1},{\"drawable\":24,\"texture\":0,\"component_id\":2},{\"drawable\":0,\"texture\":0,\"component_id\":3},{\"drawable\":69,\"texture\":3,\"component_id\":4},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":7,\"texture\":0,\"component_id\":6},{\"drawable\":0,\"texture\":0,\"component_id\":7},{\"drawable\":15,\"texture\":0,\"component_id\":8},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":89,\"texture\":2,\"component_id\":11}]'),
(41, 'e8e748059b1fed27c021331265dc0480d61be860', 'Cat Cafe', 'mp_m_freemode_01', '[{\"texture\":2,\"prop_id\":0,\"drawable\":58},{\"texture\":5,\"prop_id\":1,\"drawable\":5},{\"texture\":-1,\"prop_id\":2,\"drawable\":-1},{\"texture\":-1,\"prop_id\":6,\"drawable\":-1},{\"texture\":-1,\"prop_id\":7,\"drawable\":-1}]', '[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":1},{\"texture\":0,\"drawable\":15,\"component_id\":2},{\"texture\":0,\"drawable\":4,\"component_id\":3},{\"texture\":2,\"drawable\":52,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":48,\"component_id\":6},{\"texture\":0,\"drawable\":0,\"component_id\":7},{\"texture\":0,\"drawable\":15,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":0,\"drawable\":182,\"component_id\":11}]'),
(42, '9c9e1295d88065d75789d74b17abb9694d9e91e0', 'banalisée flic', 'mp_m_freemode_01', '[{\"drawable\":-1,\"texture\":-1,\"prop_id\":0},{\"drawable\":5,\"texture\":5,\"prop_id\":1},{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":4,\"texture\":1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7}]', '[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":51,\"texture\":0,\"component_id\":1},{\"drawable\":12,\"texture\":3,\"component_id\":2},{\"drawable\":19,\"texture\":0,\"component_id\":3},{\"drawable\":129,\"texture\":1,\"component_id\":4},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":7,\"texture\":2,\"component_id\":6},{\"drawable\":0,\"texture\":0,\"component_id\":7},{\"drawable\":15,\"texture\":0,\"component_id\":8},{\"drawable\":28,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":182,\"texture\":0,\"component_id\":11}]'),
(43, 'e8e748059b1fed27c021331265dc0480d61be860', 'plaja', 'mp_m_freemode_01', '[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":-1,\"drawable\":-1},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":-1,\"drawable\":-1},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}]', '[{\"texture\":0,\"component_id\":0,\"drawable\":0},{\"texture\":0,\"component_id\":1,\"drawable\":0},{\"texture\":0,\"component_id\":2,\"drawable\":15},{\"texture\":0,\"component_id\":3,\"drawable\":11},{\"texture\":3,\"component_id\":4,\"drawable\":144},{\"texture\":0,\"component_id\":5,\"drawable\":0},{\"texture\":0,\"component_id\":6,\"drawable\":48},{\"texture\":0,\"component_id\":7,\"drawable\":0},{\"texture\":16,\"component_id\":8,\"drawable\":135},{\"texture\":0,\"component_id\":9,\"drawable\":0},{\"texture\":0,\"component_id\":10,\"drawable\":0},{\"texture\":11,\"component_id\":11,\"drawable\":355}]'),
(44, '990a2a48e4c40594a6158d037a570d920231a608', 'Agence immobilier', 'mp_m_freemode_01', '[{\"drawable\":-1,\"prop_id\":0,\"texture\":-1},{\"drawable\":-1,\"prop_id\":1,\"texture\":-1},{\"drawable\":-1,\"prop_id\":2,\"texture\":-1},{\"drawable\":-1,\"prop_id\":6,\"texture\":-1},{\"drawable\":-1,\"prop_id\":7,\"texture\":-1}]', '[{\"drawable\":0,\"component_id\":0,\"texture\":0},{\"drawable\":0,\"component_id\":1,\"texture\":0},{\"drawable\":8,\"component_id\":2,\"texture\":0},{\"drawable\":17,\"component_id\":3,\"texture\":0},{\"drawable\":10,\"component_id\":4,\"texture\":0},{\"drawable\":0,\"component_id\":5,\"texture\":0},{\"drawable\":10,\"component_id\":6,\"texture\":0},{\"drawable\":0,\"component_id\":7,\"texture\":0},{\"drawable\":10,\"component_id\":8,\"texture\":0},{\"drawable\":0,\"component_id\":9,\"texture\":0},{\"drawable\":0,\"component_id\":10,\"texture\":0},{\"drawable\":28,\"component_id\":11,\"texture\":0}]');

-- --------------------------------------------------------

--
-- Structure de la table `player_outfit_codes`
--

CREATE TABLE `player_outfit_codes` (
  `id` int(11) NOT NULL,
  `outfitid` int(11) NOT NULL,
  `code` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `player_outfit_codes`
--

INSERT INTO `player_outfit_codes` (`id`, `outfitid`, `code`) VALUES
(3, 29, 'aUY-YTtm-G'),
(4, 44, '_IrcxzWtDR');

-- --------------------------------------------------------

--
-- Structure de la table `properties`
--

CREATE TABLE `properties` (
  `propertyID` int(11) NOT NULL,
  `propertyOwner` varchar(100) DEFAULT '-',
  `ownerName` varchar(100) DEFAULT '-',
  `propertyLabel` varchar(100) DEFAULT NULL,
  `propertyInteriors` int(11) DEFAULT NULL,
  `propertyEntering` varchar(255) DEFAULT NULL,
  `propertyGarage` varchar(255) DEFAULT NULL,
  `propertyRented` varchar(255) DEFAULT NULL,
  `garageInteriors` int(11) DEFAULT NULL,
  `data` longtext DEFAULT '{}',
  `dataMoney` longtext DEFAULT '{"black_money":{"count":0},"cash":{"count":0}}',
  `maxStorage` int(11) DEFAULT NULL,
  `ownerList` longtext DEFAULT '{}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `properties_vehicles`
--

CREATE TABLE `properties_vehicles` (
  `propertyID` int(11) DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `data_vehicle` longtext NOT NULL,
  `stored` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rented_motor`
--

CREATE TABLE `rented_motor` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `renzu_tuner`
--

CREATE TABLE `renzu_tuner` (
  `id` int(11) NOT NULL,
  `plate` varchar(60) DEFAULT NULL,
  `mileages` int(11) DEFAULT 0,
  `vehiclestats` longtext DEFAULT NULL,
  `defaulthandling` longtext DEFAULT NULL,
  `vehicleupgrades` longtext DEFAULT NULL,
  `vehicletires` longtext DEFAULT NULL,
  `drivetrain` varchar(60) DEFAULT NULL,
  `advancedflags` longtext DEFAULT NULL,
  `ecu` longtext DEFAULT NULL,
  `nodegrade` int(11) DEFAULT 0,
  `currentengine` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `renzu_tuner`
--

INSERT INTO `renzu_tuner` (`id`, `plate`, `mileages`, `vehiclestats`, `defaulthandling`, `vehicleupgrades`, `vehicletires`, `drivetrain`, `advancedflags`, `ecu`, `nodegrade`, `currentengine`) VALUES
(1, 'CRAZIOZF', 0, '{\"engine_sparkplug\":100.02000000000001,\"oem_suspension\":100.02000000000001,\"engine_crankshaft\":100.02000000000001,\"engine_pistons\":100.02000000000001,\"transmition_clutch\":100.02000000000001,\"engine_oil\":100.02000000000001,\"engine_block\":100.02000000000001,\"oem_gearbox\":100.02000000000001,\"engine_airfilter\":100.02000000000001,\"engine_gasket\":100.02000000000001,\"engine_valves\":100.02000000000001,\"engine_camshaft\":100.02000000000001,\"engine_fuelinjector\":100.02000000000001,\"oem_brakes\":100.02000000000001,\"engine_flywheel\":100.02000000000001,\"engine_connectingrods\":100.02000000000001}', '{\"fSuspensionLowerLimit\":-0.28000000119209,\"fSuspensionUpperLimit\":0.23999999463558,\"fBrakeForce\":1.60000002384185,\"fInitialDriveMaxFlatVel\":135,\"fClutchChangeRateScaleDownShift\":3.40000009536743,\"fTractionLossMult\":0.10000000149011,\"fHandBrakeForce\":0.40000000596046,\"fAntiRollBarBiasFront\":0.40000000596046,\"fLowSpeedTractionLossMult\":1.20000004768371,\"fSuspensionCompDamp\":2.20000004768371,\"fTractionCurveLateral\":19,\"fSuspensionReboundDamp\":2.79999995231628,\"fClutchChangeRateScaleUpShift\":3.40000009536743,\"nInitialDriveGears\":5,\"fSuspensionBiasFront\":0.5,\"fSuspensionForce\":1.5,\"fDriveInertia\":1,\"fTractionCurveMax\":2.09999990463256,\"fRollCentreHeightRear\":0.47499999403953,\"fRollCentreHeightFront\":0.47499999403953,\"fSuspensionRaise\":0,\"fAntiRollBarForce\":0.60000002384185,\"fInitialDriveForce\":0.25999999046325,\"fTractionCurveMin\":1.71000003814697}', '[]', NULL, NULL, NULL, NULL, 0, NULL),
(2, 'ESXSZ918', 0, NULL, NULL, '{\"racing_oil\":true}', NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sprays`
--

CREATE TABLE `sprays` (
  `id` int(11) NOT NULL,
  `x` float(8,4) NOT NULL,
  `y` float(8,4) NOT NULL,
  `z` float(8,4) NOT NULL,
  `rx` float(8,4) NOT NULL,
  `ry` float(8,4) NOT NULL,
  `rz` float(8,4) NOT NULL,
  `scale` float(8,4) NOT NULL,
  `text` varchar(32) NOT NULL,
  `font` varchar(32) NOT NULL,
  `color` int(3) NOT NULL,
  `interior` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tomic_territories`
--

CREATE TABLE `tomic_territories` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT 'NewTerritory',
  `owner` text DEFAULT 'noone',
  `label` text DEFAULT 'NoOne',
  `radius` int(11) DEFAULT 50,
  `coords` longtext NOT NULL,
  `type` text DEFAULT 'default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tomic_territories`
--

INSERT INTO `tomic_territories` (`id`, `name`, `owner`, `label`, `radius`, `coords`, `type`) VALUES
(1, 'Motel', 'noone', 'Aucun', 20, '{\"x\":1564.87255859375,\"y\":3572.85205078125,\"z\":33.64614105224609}', 'default'),
(2, 'Chantier Nord', 'noone', 'Aucun', 30, '{\"x\":1042.6055908203126,\"y\":2279.70654296875,\"z\":49.62458419799805}', 'dealer'),
(3, 'Musée', 'noone', 'Aucun', 50, '{\"x\":-2247.855712890625,\"y\":268.8916320800781,\"z\":174.61045837402345}', 'market'),
(4, 'Tour Radio', 'noone', 'Aucun', 30, '{\"x\":748.3673706054688,\"y\":1287.9581298828126,\"z\":360.29638671875}', 'dealer'),
(6, 'Bateau', 'noone', 'Aucun', 5, '{\"x\":1241.2149658203126,\"y\":-2952.010986328125,\"z\":9.31925010681152}', 'default'),
(7, 'Decharge', 'lost', 'Lost MC', 30, '{\"x\":1535.658447265625,\"y\":-2138.922119140625,\"z\":77.18208312988281}', 'dealer'),
(8, 'Parcours', 'noone', 'Aucun', 30, '{\"x\":145.0903778076172,\"y\":6866.9111328125,\"z\":28.40591812133789}', 'default'),
(9, 'Usine', 'noone', 'Aucun', 20, '{\"x\":-83.86659240722656,\"y\":6232.66064453125,\"z\":31.09148406982422}', 'market'),
(10, 'Pecheur', 'noone', 'Aucun', 25, '{\"x\":1352.58740234375,\"y\":4362.23095703125,\"z\":44.25231552124023}', 'dealer'),
(11, 'HumanLabs', 'noone', 'Aucun', 20, '{\"x\":3539.07373046875,\"y\":3725.873046875,\"z\":36.44962310791015}', 'dealer');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(46) NOT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `position` varchar(255) DEFAULT '{"x":-269.4,"y":-955.3,"z":31.2,"heading":205.8}',
  `skin` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `faction` varchar(20) DEFAULT 'nofaction',
  `faction_grade` int(11) DEFAULT 0,
  `firstname` varchar(16) DEFAULT NULL,
  `lastname` varchar(16) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `pincode` int(11) DEFAULT NULL,
  `last_property` longtext DEFAULT NULL,
  `tattoos` longtext NOT NULL DEFAULT '[]',
  `disabled` tinyint(1) DEFAULT 0,
  `phone_number` varchar(20) DEFAULT NULL,
  `callsign` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `metadata` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`identifier`, `accounts`, `group`, `inventory`, `job`, `job_grade`, `loadout`, `position`, `skin`, `status`, `faction`, `faction_grade`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `pincode`, `last_property`, `tattoos`, `disabled`, `phone_number`, `callsign`, `metadata`) VALUES
('02092e91f72e417897845f65735abcc3b3bbcfac', '{\"bank\":945600,\"black_money\":0,\"money\":98617}', 'admin', '[{\"count\":98617,\"name\":\"money\",\"slot\":1},{\"count\":1,\"name\":\"phone\",\"slot\":2},{\"count\":10,\"name\":\"water\",\"slot\":4},{\"count\":10,\"name\":\"burger\",\"slot\":15},{\"count\":2,\"name\":\"safecracker\",\"slot\":5},{\"count\":1,\"name\":\"spray\",\"slot\":18}]', 'vigneron', 3, '[]', '{\"z\":58.5479736328125,\"y\":-110.07032775878906,\"x\":-1636.23291015625,\"heading\":19.84251976013183}', '{\"eyeColor\":-1,\"model\":\"mp_m_freemode_01\",\"tattoos\":[],\"headBlend\":{\"shapeThird\":0,\"thirdMix\":0,\"skinThird\":0,\"skinMix\":0,\"skinFirst\":0,\"shapeSecond\":0,\"shapeFirst\":0,\"skinSecond\":0,\"shapeMix\":0},\"headOverlays\":{\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"beard\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"chestHair\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"eyebrows\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"makeUp\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"complexion\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"lipstick\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blush\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0}},\"props\":[{\"drawable\":-1,\"texture\":-1,\"prop_id\":0},{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7},{\"drawable\":4,\"texture\":0,\"prop_id\":1}],\"components\":[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":1},{\"drawable\":0,\"texture\":0,\"component_id\":2},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":294,\"texture\":0,\"component_id\":11},{\"drawable\":10,\"texture\":1,\"component_id\":7},{\"drawable\":96,\"texture\":2,\"component_id\":8},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":22,\"texture\":0,\"component_id\":3},{\"drawable\":28,\"texture\":0,\"component_id\":4},{\"drawable\":10,\"texture\":0,\"component_id\":6}],\"faceFeatures\":{\"cheeksBoneWidth\":0,\"nosePeakHigh\":0,\"cheeksBoneHigh\":0,\"noseBoneHigh\":0,\"chinBoneSize\":0,\"eyeBrownHigh\":0,\"cheeksWidth\":0,\"nosePeakLowering\":0,\"eyesOpening\":0,\"chinHole\":0,\"noseBoneTwist\":0,\"eyeBrownForward\":0,\"neckThickness\":0,\"nosePeakSize\":0,\"chinBoneLowering\":0,\"chinBoneLenght\":0,\"lipsThickness\":0,\"jawBoneWidth\":0,\"noseWidth\":0,\"jawBoneBackSize\":0},\"hair\":{\"style\":19,\"color\":29,\"texture\":0,\"highlight\":29}}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"hunger\",\"val\":359400,\"percent\":35.94},{\"name\":\"thirst\",\"val\":519550,\"percent\":51.955}]', 'vagos', 3, 'Thoe', 'Berechit', '06/02/2004', 'm', 176, 0, NULL, NULL, '[]', 0, '329-904-6887', NULL, NULL),
('0d4b8d2201008faaf9bfa09c4011e39b527ea997', '{\"bank\":10000,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":34.94140625,\"y\":-1553.3275146484376,\"x\":-153.032958984375,\"heading\":8.50393676757812}', '{\"eyeColor\":-1,\"props\":[{\"drawable\":-1,\"texture\":-1,\"prop_id\":0},{\"drawable\":-1,\"texture\":-1,\"prop_id\":1},{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7}],\"tattoos\":{\"ZONE_HAIR\":[{\"hashMale\":\"FM_M_Hair_003_b\",\"zone\":\"ZONE_HAIR\",\"collection\":\"multiplayer_overlays\",\"label\":\"hair-0-187\",\"hashFemale\":\"FM_F_Hair_003_b\",\"name\":\"hair-0-187\"}]},\"headBlend\":{\"shapeThird\":0,\"thirdMix\":0,\"skinThird\":0,\"skinMix\":0,\"shapeMix\":0,\"shapeSecond\":17,\"shapeFirst\":4,\"skinFirst\":8,\"skinSecond\":0},\"headOverlays\":{\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"beard\":{\"style\":18,\"color\":0,\"opacity\":1,\"secondColor\":0},\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"chestHair\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"eyebrows\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"makeUp\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"complexion\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"lipstick\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blush\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0}},\"model\":\"mp_m_freemode_01\",\"components\":[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":1},{\"drawable\":0,\"texture\":0,\"component_id\":2},{\"drawable\":0,\"texture\":0,\"component_id\":3},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":0,\"texture\":0,\"component_id\":7},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":7,\"texture\":6,\"component_id\":11},{\"drawable\":0,\"texture\":0,\"component_id\":8},{\"drawable\":23,\"texture\":7,\"component_id\":4},{\"drawable\":77,\"texture\":1,\"component_id\":6},{\"drawable\":0,\"texture\":0,\"component_id\":10}],\"faceFeatures\":{\"cheeksBoneWidth\":0,\"nosePeakHigh\":0,\"jawBoneWidth\":0,\"chinBoneLenght\":0,\"chinBoneSize\":0,\"eyeBrownHigh\":0,\"cheeksWidth\":0,\"nosePeakLowering\":0,\"eyesOpening\":0,\"chinHole\":0,\"noseBoneTwist\":0,\"eyeBrownForward\":0,\"neckThickness\":0,\"nosePeakSize\":0,\"chinBoneLowering\":0,\"cheeksBoneHigh\":0,\"lipsThickness\":0,\"noseBoneHigh\":0,\"noseWidth\":0,\"jawBoneBackSize\":0},\"hair\":{\"style\":71,\"highlight\":0,\"texture\":0,\"color\":0}}', '[{\"name\":\"drunk\",\"percent\":0.0,\"val\":0},{\"name\":\"hunger\",\"percent\":79.27,\"val\":792700},{\"name\":\"thirst\",\"percent\":84.4525,\"val\":844525}]', 'families', 3, 'Walid', 'Gustavo', '04/10/1996', 'm', 190, 0, NULL, NULL, '[]', 0, '607-941-7934', NULL, NULL),
('10cf67e98ded97bd0d151dfb67bf95fd47bdbaf6', '{\"black_money\":0,\"bank\":9314,\"money\":617}', 'user', '[{\"name\":\"money\",\"slot\":1,\"count\":617}]', 'unemployed', 0, '[]', '{\"y\":-987.4417724609375,\"z\":31.06591796875,\"heading\":59.52755737304687,\"x\":-276.052734375}', '{\"faceFeatures\":{\"nosePeakHigh\":0,\"chinHole\":0,\"chinBoneLowering\":0,\"noseBoneTwist\":0,\"jawBoneBackSize\":0,\"chinBoneSize\":0,\"eyeBrownForward\":0,\"chinBoneLenght\":0,\"lipsThickness\":0,\"noseWidth\":0,\"nosePeakLowering\":0,\"cheeksBoneWidth\":0,\"noseBoneHigh\":0,\"neckThickness\":0,\"cheeksWidth\":0,\"eyeBrownHigh\":0,\"cheeksBoneHigh\":0,\"eyesOpening\":0,\"nosePeakSize\":0,\"jawBoneWidth\":0},\"hair\":{\"style\":21,\"texture\":4,\"highlight\":0,\"color\":4},\"headBlend\":{\"shapeFirst\":0,\"thirdMix\":0,\"skinThird\":0,\"shapeThird\":0,\"shapeSecond\":8,\"skinFirst\":9,\"shapeMix\":0,\"skinSecond\":15,\"skinMix\":0.5},\"tattoos\":[],\"headOverlays\":{\"lipstick\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"chestHair\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"bodyBlemishes\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"makeUp\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"eyebrows\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"blush\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"beard\":{\"secondColor\":0,\"color\":3,\"style\":10,\"opacity\":0.4},\"blemishes\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"complexion\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"moleAndFreckles\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"ageing\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"sunDamage\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0}},\"components\":[{\"texture\":0,\"component_id\":0,\"drawable\":0},{\"texture\":0,\"component_id\":2,\"drawable\":0},{\"texture\":0,\"component_id\":10,\"drawable\":0},{\"texture\":0,\"component_id\":1,\"drawable\":0},{\"texture\":0,\"component_id\":7,\"drawable\":0},{\"texture\":0,\"component_id\":3,\"drawable\":15},{\"texture\":2,\"component_id\":11,\"drawable\":355},{\"texture\":0,\"component_id\":8,\"drawable\":15},{\"texture\":0,\"component_id\":9,\"drawable\":0},{\"texture\":0,\"component_id\":4,\"drawable\":23},{\"texture\":0,\"component_id\":6,\"drawable\":6},{\"texture\":1,\"component_id\":5,\"drawable\":82}],\"model\":\"mp_m_freemode_01\",\"eyeColor\":4,\"props\":[{\"prop_id\":1,\"texture\":0,\"drawable\":5},{\"prop_id\":0,\"texture\":0,\"drawable\":-1},{\"prop_id\":2,\"texture\":0,\"drawable\":41},{\"prop_id\":6,\"texture\":2,\"drawable\":3},{\"prop_id\":7,\"texture\":0,\"drawable\":-1}]}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"hunger\",\"val\":818300,\"percent\":81.83},{\"name\":\"thirst\",\"val\":863725,\"percent\":86.3725}]', 'nofaction', 0, 'Charly', 'Alvarez', '17/11/1999', 'm', 189, 0, NULL, NULL, '[]', 0, '275-946-7263', NULL, '[]'),
('1456a4c928badecc8ef4fdb9c13083b2f0c41433', '{\"bank\":8000,\"black_money\":0,\"money\":1500}', 'user', '[{\"count\":1500,\"name\":\"money\",\"slot\":1},{\"count\":1,\"slot\":2,\"name\":\"idcard\",\"metadata\":{\"playerInfo\":{\"height\":160,\"firstname\":\"Rodrigo\",\"sex\":\"m\",\"lastname\":\"Santos\",\"dateofbirth\":\"20/05/2000\"},\"identifier\":\"1456a4c928badecc8ef4fdb9c13083b2f0c41433\"}}]', 'unemployed', 0, '[]', '{\"z\":30.86376953125,\"y\":-843.1516723632813,\"x\":45.74505615234375,\"heading\":82.20472717285156}', '{\"eyeColor\":-1,\"props\":[{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7},{\"drawable\":0,\"texture\":0,\"prop_id\":1},{\"drawable\":0,\"texture\":0,\"prop_id\":6},{\"drawable\":-1,\"texture\":0,\"prop_id\":0}],\"tattoos\":{\"ZONE_HAIR\":[{\"label\":\"hair-0-186\",\"hashMale\":\"FM_M_Hair_003_a\",\"collection\":\"multiplayer_overlays\",\"zone\":\"ZONE_HAIR\",\"hashFemale\":\"FM_F_Hair_003_a\",\"name\":\"hair-0-186\"}]},\"headBlend\":{\"shapeThird\":0,\"thirdMix\":0,\"skinThird\":0,\"skinMix\":0,\"skinSecond\":0,\"shapeSecond\":0,\"shapeFirst\":0,\"skinFirst\":5,\"shapeMix\":0},\"headOverlays\":{\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"beard\":{\"style\":3,\"color\":0,\"opacity\":1,\"secondColor\":0},\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"chestHair\":{\"style\":0,\"color\":0,\"opacity\":1,\"secondColor\":0},\"eyebrows\":{\"style\":0,\"color\":0,\"opacity\":1,\"secondColor\":0},\"makeUp\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blemishes\":{\"style\":1,\"color\":0,\"opacity\":0,\"secondColor\":0},\"complexion\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"lipstick\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blush\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0}},\"model\":\"mp_m_freemode_01\",\"components\":[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":2},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":0,\"texture\":0,\"component_id\":1},{\"drawable\":15,\"texture\":0,\"component_id\":8},{\"drawable\":299,\"texture\":19,\"component_id\":11},{\"drawable\":2,\"texture\":0,\"component_id\":3},{\"drawable\":0,\"texture\":1,\"component_id\":4},{\"drawable\":6,\"texture\":0,\"component_id\":6},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":7}],\"faceFeatures\":{\"cheeksBoneWidth\":0,\"nosePeakHigh\":0,\"jawBoneWidth\":0,\"jawBoneBackSize\":0,\"chinBoneSize\":0,\"eyeBrownHigh\":0,\"cheeksWidth\":0,\"nosePeakLowering\":0.3,\"eyesOpening\":0,\"chinHole\":0,\"noseBoneTwist\":-1,\"eyeBrownForward\":0,\"neckThickness\":0,\"nosePeakSize\":-0.1,\"chinBoneLowering\":0,\"chinBoneLenght\":0,\"lipsThickness\":0,\"cheeksBoneHigh\":0,\"noseWidth\":0,\"noseBoneHigh\":0},\"hair\":{\"style\":77,\"highlight\":0,\"texture\":0,\"color\":0}}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"hunger\",\"val\":788800,\"percent\":78.88},{\"name\":\"thirst\",\"val\":841600,\"percent\":84.16}]', 'nofaction', 0, 'Rodrigo', 'Santos', '20/05/2000', 'm', 160, 0, NULL, NULL, '[]', 0, '216-658-0519', NULL, NULL),
('230cdfa13129e5ad39faece17c502911cbaa784f', '{\"black_money\":0,\"bank\":8000,\"money\":1300}', 'user', '[{\"name\":\"money\",\"slot\":1,\"count\":1300}]', 'unemployed', 0, '[]', '{\"x\":204.34286499023438,\"heading\":334.4881896972656,\"z\":29.3472900390625,\"y\":-1314.804443359375}', '{\"faceFeatures\":{\"chinBoneSize\":0,\"nosePeakLowering\":0,\"noseBoneHigh\":0,\"eyeBrownForward\":0,\"noseBoneTwist\":0,\"cheeksWidth\":0,\"nosePeakSize\":0,\"chinBoneLenght\":0,\"cheeksBoneWidth\":0,\"cheeksBoneHigh\":0,\"nosePeakHigh\":0,\"noseWidth\":0,\"jawBoneWidth\":0,\"eyesOpening\":0,\"chinBoneLowering\":0,\"neckThickness\":0,\"eyeBrownHigh\":0,\"lipsThickness\":0,\"chinHole\":0,\"jawBoneBackSize\":0},\"props\":[{\"texture\":-1,\"prop_id\":2,\"drawable\":-1},{\"texture\":-1,\"prop_id\":6,\"drawable\":-1},{\"texture\":-1,\"prop_id\":7,\"drawable\":-1},{\"texture\":0,\"prop_id\":1,\"drawable\":5},{\"texture\":0,\"prop_id\":0,\"drawable\":12}],\"headOverlays\":{\"blush\":{\"color\":0,\"opacity\":0,\"style\":0,\"secondColor\":0},\"moleAndFreckles\":{\"color\":0,\"opacity\":0,\"style\":0,\"secondColor\":0},\"sunDamage\":{\"color\":0,\"opacity\":0,\"style\":0,\"secondColor\":0},\"beard\":{\"color\":0,\"opacity\":0,\"style\":0,\"secondColor\":0},\"bodyBlemishes\":{\"color\":0,\"opacity\":0,\"style\":0,\"secondColor\":0},\"lipstick\":{\"color\":0,\"opacity\":0,\"style\":0,\"secondColor\":0},\"eyebrows\":{\"color\":0,\"opacity\":0,\"style\":0,\"secondColor\":0},\"blemishes\":{\"color\":0,\"opacity\":0,\"style\":0,\"secondColor\":0},\"makeUp\":{\"color\":0,\"opacity\":0,\"style\":0,\"secondColor\":0},\"ageing\":{\"color\":0,\"opacity\":0,\"style\":0,\"secondColor\":0},\"complexion\":{\"color\":0,\"opacity\":0,\"style\":0,\"secondColor\":0},\"chestHair\":{\"color\":0,\"opacity\":0,\"style\":0,\"secondColor\":0}},\"tattoos\":[],\"hair\":{\"highlight\":0,\"color\":0,\"style\":43,\"texture\":0},\"model\":\"mp_m_freemode_01\",\"eyeColor\":-1,\"components\":[{\"drawable\":0,\"component_id\":0,\"texture\":0},{\"drawable\":0,\"component_id\":1,\"texture\":0},{\"drawable\":0,\"component_id\":2,\"texture\":0},{\"drawable\":0,\"component_id\":3,\"texture\":0},{\"drawable\":0,\"component_id\":5,\"texture\":0},{\"drawable\":0,\"component_id\":7,\"texture\":0},{\"drawable\":0,\"component_id\":9,\"texture\":0},{\"drawable\":0,\"component_id\":10,\"texture\":0},{\"drawable\":132,\"component_id\":11,\"texture\":0},{\"drawable\":15,\"component_id\":8,\"texture\":0},{\"drawable\":10,\"component_id\":6,\"texture\":0},{\"drawable\":28,\"component_id\":4,\"texture\":0}],\"headBlend\":{\"shapeFirst\":0,\"shapeMix\":0,\"skinFirst\":5,\"thirdMix\":0,\"shapeSecond\":0,\"skinSecond\":0,\"skinMix\":0,\"skinThird\":0,\"shapeThird\":0}}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"hunger\",\"val\":784900,\"percent\":78.49000000000001},{\"name\":\"thirst\",\"val\":838675,\"percent\":83.86749999999999}]', 'nofaction', 0, 'Vertugo', 'Fermino', '06/06/1995', 'm', 185, 0, 606, NULL, '[]', 0, '855-247-9358', NULL, NULL),
('232e57e11d80eb12e71995dcc7d3ec3d4b8429e5', '{\"black_money\":0,\"bank\":390,\"money\":4815}', 'user', '[{\"name\":\"money\",\"slot\":1,\"count\":4815},{\"name\":\"hotdog\",\"slot\":6,\"count\":5},{\"name\":\"cola\",\"slot\":7,\"count\":5},{\"name\":\"phone\",\"slot\":8,\"count\":1}]', 'ammunation', 4, '[]', '{\"y\":-2157.428466796875,\"z\":29.6168212890625,\"heading\":93.54330444335938,\"x\":817.2659301757813}', '{\"components\":[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":0},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":21},{\"component_id\":8,\"texture\":0,\"drawable\":7},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":5,\"texture\":0,\"drawable\":41},{\"component_id\":3,\"texture\":0,\"drawable\":0},{\"component_id\":4,\"texture\":0,\"drawable\":49},{\"component_id\":6,\"texture\":0,\"drawable\":9}],\"props\":[{\"texture\":-1,\"prop_id\":0,\"drawable\":-1},{\"texture\":-1,\"prop_id\":2,\"drawable\":-1},{\"texture\":0,\"prop_id\":6,\"drawable\":0},{\"texture\":0,\"prop_id\":7,\"drawable\":1},{\"texture\":0,\"prop_id\":1,\"drawable\":1}],\"faceFeatures\":{\"jawBoneBackSize\":0,\"nosePeakSize\":0,\"cheeksWidth\":0,\"cheeksBoneWidth\":0,\"chinBoneLenght\":0,\"nosePeakHigh\":0,\"eyeBrownHigh\":0,\"cheeksBoneHigh\":0,\"noseBoneHigh\":0,\"chinBoneLowering\":0,\"chinBoneSize\":0,\"jawBoneWidth\":0,\"neckThickness\":0,\"eyeBrownForward\":0,\"eyesOpening\":0,\"lipsThickness\":0,\"noseBoneTwist\":0,\"nosePeakLowering\":0,\"noseWidth\":0,\"chinHole\":0},\"headBlend\":{\"thirdMix\":0,\"skinSecond\":0,\"skinFirst\":0,\"shapeThird\":0,\"shapeMix\":0,\"skinMix\":0,\"skinThird\":0,\"shapeSecond\":0,\"shapeFirst\":0},\"tattoos\":{\"ZONE_HAIR\":[{\"collection\":\"multiplayer_overlays\",\"label\":\"hair-0-189\",\"name\":\"hair-0-189\",\"zone\":\"ZONE_HAIR\",\"hashFemale\":\"FM_F_Hair_003_d\",\"hashMale\":\"FM_M_Hair_003_d\"}]},\"headOverlays\":{\"makeUp\":{\"opacity\":0,\"color\":0,\"style\":0,\"secondColor\":0},\"moleAndFreckles\":{\"opacity\":0,\"color\":0,\"style\":0,\"secondColor\":0},\"sunDamage\":{\"opacity\":0,\"color\":0,\"style\":0,\"secondColor\":0},\"complexion\":{\"opacity\":0,\"color\":0,\"style\":0,\"secondColor\":0},\"blemishes\":{\"opacity\":0,\"color\":0,\"style\":0,\"secondColor\":0},\"bodyBlemishes\":{\"opacity\":0,\"color\":0,\"style\":0,\"secondColor\":0},\"beard\":{\"opacity\":0,\"color\":0,\"style\":0,\"secondColor\":0},\"blush\":{\"opacity\":0,\"color\":0,\"style\":0,\"secondColor\":0},\"eyebrows\":{\"opacity\":0,\"color\":0,\"style\":0,\"secondColor\":0},\"ageing\":{\"opacity\":0,\"color\":0,\"style\":0,\"secondColor\":0},\"lipstick\":{\"opacity\":0,\"color\":0,\"style\":0,\"secondColor\":0},\"chestHair\":{\"opacity\":0,\"color\":0,\"style\":0,\"secondColor\":0}},\"eyeColor\":-1,\"model\":\"mp_m_freemode_01\",\"hair\":{\"texture\":6,\"color\":1,\"style\":7,\"highlight\":0}}', '[{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"},{\"percent\":77.3,\"val\":773000,\"name\":\"hunger\"},{\"percent\":82.975,\"val\":829750,\"name\":\"thirst\"}]', 'nofaction', 0, 'Alexandr', 'Atar', '17/02/1985', 'm', 190, 0, 1702, NULL, '[]', 0, '128-859-7813', NULL, '[]'),
('273ecacb56a24adacf1cae85c4000a1cd6d62ffa', '{\"bank\":10000,\"money\":0,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":-268.69451904296877,\"heading\":201.2598419189453,\"z\":31.217529296875,\"y\":-957.098876953125}', '{\"tattoos\":[],\"eyeColor\":-1,\"faceFeatures\":{\"nosePeakHigh\":0,\"cheeksBoneHigh\":0,\"eyesOpening\":0,\"nosePeakLowering\":0,\"noseBoneHigh\":0,\"eyeBrownHigh\":0,\"chinBoneLowering\":0,\"neckThickness\":0,\"chinBoneLenght\":0,\"noseWidth\":0,\"cheeksWidth\":0,\"jawBoneBackSize\":0,\"jawBoneWidth\":0,\"lipsThickness\":0,\"cheeksBoneWidth\":0,\"nosePeakSize\":0,\"eyeBrownForward\":0,\"chinHole\":0,\"noseBoneTwist\":0,\"chinBoneSize\":0},\"model\":\"mp_m_freemode_01\",\"props\":[{\"texture\":-1,\"prop_id\":0,\"drawable\":-1},{\"texture\":-1,\"prop_id\":1,\"drawable\":-1},{\"texture\":-1,\"prop_id\":2,\"drawable\":-1},{\"texture\":-1,\"prop_id\":6,\"drawable\":-1},{\"texture\":-1,\"prop_id\":7,\"drawable\":-1}],\"components\":[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":0},{\"component_id\":3,\"texture\":0,\"drawable\":0},{\"component_id\":4,\"texture\":0,\"drawable\":0},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":0},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":8,\"texture\":0,\"drawable\":0},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":0}],\"headOverlays\":{\"blemishes\":{\"color\":0,\"style\":0,\"secondColor\":0,\"opacity\":0},\"complexion\":{\"color\":0,\"style\":0,\"secondColor\":0,\"opacity\":0},\"beard\":{\"color\":0,\"style\":0,\"secondColor\":0,\"opacity\":0},\"makeUp\":{\"color\":0,\"style\":0,\"secondColor\":0,\"opacity\":0},\"blush\":{\"color\":0,\"style\":0,\"secondColor\":0,\"opacity\":0},\"ageing\":{\"color\":0,\"style\":0,\"secondColor\":0,\"opacity\":0},\"chestHair\":{\"color\":0,\"style\":0,\"secondColor\":0,\"opacity\":0},\"bodyBlemishes\":{\"color\":0,\"style\":0,\"secondColor\":0,\"opacity\":0},\"moleAndFreckles\":{\"color\":0,\"style\":0,\"secondColor\":0,\"opacity\":0},\"eyebrows\":{\"color\":0,\"style\":0,\"secondColor\":0,\"opacity\":0},\"lipstick\":{\"color\":0,\"style\":0,\"secondColor\":0,\"opacity\":0},\"sunDamage\":{\"color\":0,\"style\":0,\"secondColor\":0,\"opacity\":0}},\"headBlend\":{\"shapeSecond\":0,\"skinMix\":0,\"skinFirst\":0,\"shapeThird\":0,\"shapeMix\":0,\"skinSecond\":0,\"skinThird\":0,\"shapeFirst\":0,\"thirdMix\":0},\"hair\":{\"color\":0,\"style\":0,\"texture\":0,\"highlight\":0}}', '[{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"},{\"val\":973400,\"percent\":97.34,\"name\":\"hunger\"},{\"val\":980050,\"percent\":98.005,\"name\":\"thirst\"}]', 'nofaction', 0, 'Matt', 'Matt', '05/09/1995', 'm', 190, 0, NULL, NULL, '[]', 0, '715-583-8552', NULL, NULL),
('2eb2d124b45e716869bdfa9b90abf6fd06afe7ae', '{\"bank\":5000,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":31.92529296875,\"y\":-1374.989013671875,\"x\":279.3890075683594,\"heading\":36.85039520263672}', '{\"eyeColor\":-1,\"model\":\"mp_m_freemode_01\",\"tattoos\":[],\"headBlend\":{\"shapeThird\":0,\"thirdMix\":0,\"skinThird\":0,\"skinMix\":0,\"skinFirst\":3,\"shapeSecond\":3,\"shapeFirst\":3,\"shapeMix\":1,\"skinSecond\":3},\"headOverlays\":{\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"beard\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"chestHair\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"eyebrows\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"makeUp\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"complexion\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"lipstick\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blush\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0}},\"props\":[{\"drawable\":-1,\"texture\":-1,\"prop_id\":0},{\"drawable\":-1,\"texture\":-1,\"prop_id\":1},{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7}],\"components\":[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":2},{\"drawable\":0,\"texture\":0,\"component_id\":4},{\"drawable\":0,\"texture\":0,\"component_id\":6},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":2,\"texture\":0,\"component_id\":1},{\"drawable\":5,\"texture\":0,\"component_id\":7},{\"drawable\":3,\"texture\":11,\"component_id\":11},{\"drawable\":0,\"texture\":12,\"component_id\":8},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":0,\"texture\":0,\"component_id\":3}],\"faceFeatures\":{\"cheeksBoneWidth\":0,\"nosePeakHigh\":0,\"jawBoneWidth\":0,\"noseBoneHigh\":0,\"chinBoneSize\":0,\"eyeBrownHigh\":0,\"cheeksWidth\":0,\"nosePeakLowering\":0,\"eyesOpening\":0,\"chinHole\":0,\"noseBoneTwist\":0,\"eyeBrownForward\":0,\"neckThickness\":0,\"nosePeakSize\":0,\"chinBoneLowering\":0,\"jawBoneBackSize\":0,\"lipsThickness\":0,\"cheeksBoneHigh\":0,\"noseWidth\":0,\"chinBoneLenght\":0},\"hair\":{\"style\":0,\"color\":0,\"texture\":0,\"highlight\":0}}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"hunger\",\"val\":815700,\"percent\":81.57},{\"name\":\"thirst\",\"val\":861775,\"percent\":86.1775}]', 'nofaction', 0, 'Walid', 'Gustavo', '03/02/1998', 'm', 141, 0, NULL, NULL, '[]', 0, '895-125-5103', NULL, NULL),
('3a220bbca68cafbdb31ed853099769f52d988c3d', '{\"bank\":11260,\"black_money\":0,\"money\":0}', 'user', '[{\"name\":\"WEAPON_STUNGUN\",\"metadata\":{\"components\":[],\"registered\":\"Azaria Gordon\",\"durability\":100},\"slot\":1,\"count\":1},{\"name\":\"WEAPON_COMBATPISTOL\",\"metadata\":{\"serial\":\"515558POL340207\",\"ammo\":12,\"components\":[],\"registered\":\"Azaria Gordon\",\"durability\":100},\"slot\":2,\"count\":1},{\"name\":\"ammo-9\",\"slot\":3,\"count\":38}]', 'bcso', 4, '[]', '{\"x\":-2.59780120849609,\"y\":-7.59560394287109,\"z\":-47.5889892578125,\"heading\":153.0708770751953}', '{\"eyeColor\":0,\"props\":[{\"drawable\":-1,\"texture\":-1,\"prop_id\":0},{\"drawable\":-1,\"texture\":-1,\"prop_id\":1},{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7}],\"tattoos\":[],\"headBlend\":{\"shapeThird\":15,\"thirdMix\":0,\"skinThird\":0,\"skinMix\":0,\"shapeMix\":0.7,\"shapeSecond\":0,\"shapeFirst\":42,\"skinSecond\":0,\"skinFirst\":0},\"headOverlays\":{\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"beard\":{\"style\":28,\"color\":0,\"opacity\":0.2,\"secondColor\":0},\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"chestHair\":{\"style\":13,\"color\":0,\"opacity\":0.9,\"secondColor\":0},\"eyebrows\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"makeUp\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"complexion\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"lipstick\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blush\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0}},\"model\":\"mp_m_freemode_01\",\"components\":[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":2},{\"drawable\":0,\"texture\":0,\"component_id\":1},{\"drawable\":0,\"texture\":0,\"component_id\":7},{\"drawable\":99,\"texture\":0,\"component_id\":11},{\"drawable\":0,\"texture\":0,\"component_id\":8},{\"drawable\":2,\"texture\":0,\"component_id\":9},{\"drawable\":85,\"texture\":0,\"component_id\":5},{\"drawable\":0,\"texture\":0,\"component_id\":3},{\"drawable\":119,\"texture\":0,\"component_id\":4},{\"drawable\":5,\"texture\":0,\"component_id\":6},{\"drawable\":0,\"texture\":0,\"component_id\":10}],\"faceFeatures\":{\"cheeksBoneWidth\":0,\"nosePeakHigh\":0,\"cheeksBoneHigh\":0,\"chinBoneLenght\":0,\"chinBoneSize\":0,\"eyeBrownHigh\":0,\"cheeksWidth\":0,\"nosePeakLowering\":0,\"eyesOpening\":0.7,\"chinHole\":0,\"noseBoneTwist\":0,\"eyeBrownForward\":0,\"neckThickness\":0,\"nosePeakSize\":0,\"chinBoneLowering\":0,\"jawBoneWidth\":0.8,\"lipsThickness\":0,\"noseBoneHigh\":0,\"noseWidth\":0,\"jawBoneBackSize\":0.1},\"hair\":{\"style\":23,\"color\":0,\"texture\":0,\"highlight\":0}}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"hunger\",\"val\":54900,\"percent\":5.48999999999999},{\"name\":\"thirst\",\"val\":291175,\"percent\":29.1175}]', 'nofaction', 0, 'Pascal', 'Hernandez', '10/02/1999', 'm', 189, 0, NULL, NULL, '[]', 0, '472-119-2068', NULL, '[]'),
('3c23ecfcaa92eb9850a615fdedfc208ee1e96ffa', '{\"black_money\":200001,\"bank\":110,\"money\":192028}', 'admin', '[{\"name\":\"WEAPON_NIGHTSTICK\",\"metadata\":{\"durability\":64.20000000000207,\"components\":[]},\"slot\":1,\"count\":1},{\"name\":\"WEAPON_FLASHLIGHT\",\"metadata\":{\"durability\":91.30000000000053,\"components\":[]},\"slot\":2,\"count\":1},{\"name\":\"ammo-9\",\"slot\":3,\"count\":33},{\"name\":\"spray_remover\",\"slot\":4,\"count\":1},{\"name\":\"WEAPON_TACTICALRIFLE\",\"metadata\":{\"ammo\":0,\"components\":[],\"serial\":\"895781POL699145\",\"registered\":\"Pablo Pereira\",\"durability\":66.99999999999874},\"slot\":5,\"count\":1},{\"name\":\"WEAPON_NIGHTSTICK\",\"metadata\":{\"durability\":100,\"components\":[]},\"slot\":7,\"count\":1},{\"name\":\"WEAPON_STUNGUN\",\"metadata\":{\"registered\":\"Pablo Pereira\",\"durability\":100,\"components\":[]},\"slot\":8,\"count\":1},{\"name\":\"handcuffs\",\"slot\":9,\"count\":1},{\"name\":\"black_money\",\"slot\":11,\"count\":200001},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"metadata\":{\"ammo\":0,\"components\":[],\"serial\":\"112747OAM123508\",\"registered\":\"Pablo Pereira\",\"durability\":100},\"slot\":12,\"count\":1},{\"name\":\"money\",\"slot\":13,\"count\":192028}]', 'police', 7, '[]', '{\"y\":-1984.5494384765626,\"z\":65.00146484375,\"heading\":70.86614227294922,\"x\":-299.037353515625}', '{\"model\":\"mp_m_freemode_01\",\"eyeColor\":0,\"props\":[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":-1,\"drawable\":-1},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":-1,\"drawable\":-1},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}],\"hair\":{\"highlight\":0,\"style\":2,\"texture\":0,\"color\":0},\"headBlend\":{\"shapeFirst\":0,\"thirdMix\":0,\"shapeSecond\":0,\"skinMix\":0,\"skinSecond\":0,\"skinFirst\":0,\"shapeMix\":0,\"skinThird\":0,\"shapeThird\":0},\"components\":[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":1},{\"drawable\":2,\"texture\":0,\"component_id\":2},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":0,\"texture\":0,\"component_id\":7},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":131,\"texture\":0,\"component_id\":11},{\"drawable\":15,\"texture\":0,\"component_id\":8},{\"drawable\":19,\"texture\":0,\"component_id\":3},{\"drawable\":35,\"texture\":0,\"component_id\":4},{\"drawable\":10,\"texture\":0,\"component_id\":6}],\"tattoos\":[],\"headOverlays\":{\"ageing\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"blemishes\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"chestHair\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"blush\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"beard\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"complexion\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"makeUp\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"bodyBlemishes\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"lipstick\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"moleAndFreckles\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"eyebrows\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"sunDamage\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0}},\"faceFeatures\":{\"nosePeakSize\":0,\"noseBoneTwist\":0,\"jawBoneBackSize\":0,\"chinHole\":0,\"cheeksWidth\":0,\"cheeksBoneWidth\":0,\"lipsThickness\":0,\"noseWidth\":0,\"nosePeakLowering\":0,\"chinBoneSize\":0,\"chinBoneLenght\":0,\"noseBoneHigh\":0,\"chinBoneLowering\":0,\"eyeBrownForward\":0,\"eyesOpening\":0,\"cheeksBoneHigh\":0,\"eyeBrownHigh\":0,\"nosePeakHigh\":0,\"jawBoneWidth\":0,\"neckThickness\":0}}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"hunger\",\"val\":265400,\"percent\":26.54},{\"name\":\"thirst\",\"val\":449050,\"percent\":44.905}]', 'marabunta', 3, 'Pablo', 'Pereira', '12/02/2000', 'm', 180, 0, 1000, NULL, '[]', 0, '081-351-9914', NULL, '[]'),
('3cd8319c594578ba2c343887ef2bbe838f0ec826', '{\"bank\":5600,\"black_money\":0,\"money\":9}', 'user', '[{\"count\":9,\"name\":\"money\",\"slot\":1}]', 'unemployed', 0, '[]', '{\"z\":70.5450439453125,\"y\":5376.791015625,\"x\":-540.5142822265625,\"heading\":82.20472717285156}', '{\"eyeColor\":0,\"model\":\"mp_m_freemode_01\",\"tattoos\":{\"ZONE_HAIR\":[{\"zone\":\"ZONE_HAIR\",\"hashMale\":\"FM_M_Hair_003_d\",\"collection\":\"multiplayer_overlays\",\"hashFemale\":\"FM_F_Hair_003_d\",\"label\":\"hair-0-189\",\"name\":\"hair-0-189\"}]},\"headBlend\":{\"shapeThird\":0,\"thirdMix\":0,\"skinThird\":0,\"skinMix\":0,\"skinFirst\":2,\"shapeSecond\":0,\"shapeFirst\":2,\"skinSecond\":0,\"shapeMix\":0},\"headOverlays\":{\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"beard\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"chestHair\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"eyebrows\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"makeUp\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"complexion\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"lipstick\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blush\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0}},\"props\":[{\"drawable\":-1,\"texture\":-1,\"prop_id\":1},{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":3,\"texture\":0,\"prop_id\":6},{\"drawable\":-1,\"texture\":0,\"prop_id\":7},{\"drawable\":-1,\"texture\":0,\"prop_id\":0}],\"components\":[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":2},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":8,\"texture\":0,\"component_id\":7},{\"drawable\":15,\"texture\":0,\"component_id\":8},{\"drawable\":242,\"texture\":0,\"component_id\":11},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":3},{\"drawable\":101,\"texture\":0,\"component_id\":6},{\"drawable\":141,\"texture\":0,\"component_id\":4},{\"drawable\":207,\"texture\":0,\"component_id\":1}],\"faceFeatures\":{\"cheeksBoneWidth\":0,\"nosePeakHigh\":0,\"jawBoneWidth\":0,\"noseBoneHigh\":0,\"chinBoneSize\":0,\"eyeBrownHigh\":0,\"cheeksWidth\":0,\"nosePeakLowering\":0,\"eyesOpening\":0,\"chinHole\":0,\"noseBoneTwist\":0,\"eyeBrownForward\":0,\"neckThickness\":0,\"nosePeakSize\":0,\"chinBoneLowering\":0,\"cheeksBoneHigh\":0,\"lipsThickness\":0,\"jawBoneBackSize\":0,\"noseWidth\":0,\"chinBoneLenght\":0},\"hair\":{\"style\":52,\"highlight\":0,\"texture\":0,\"color\":61}}', '[{\"name\":\"drunk\",\"percent\":0.0,\"val\":0},{\"name\":\"hunger\",\"percent\":89.86,\"val\":898600},{\"name\":\"thirst\",\"percent\":92.39500000000001,\"val\":923950}]', 'nofaction', 0, 'Sofiane', 'Fousouf', '10/02/1995', 'm', 185, 0, NULL, NULL, '[]', 0, '146-400-3857', NULL, NULL),
('4033ea29562af80cdf4e24bb7dbc5b712651d6d6', '{\"bank\":6420,\"money\":54,\"black_money\":0}', 'user', '[{\"name\":\"WEAPON_STUNGUN\",\"slot\":1,\"count\":1,\"metadata\":{\"registered\":\"Azaria Gordon\",\"durability\":100,\"components\":[]}},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"slot\":2,\"count\":1,\"metadata\":{\"registered\":\"Azaria Gordon\",\"serial\":\"454967POL997591\",\"ammo\":0,\"durability\":97.40000000000016,\"components\":[]}},{\"name\":\"WEAPON_CARBINERIFLE\",\"slot\":3,\"count\":1,\"metadata\":{\"registered\":\"Azaria Gordon\",\"serial\":\"991946POL122243\",\"ammo\":30,\"durability\":99.15999999999996,\"components\":[]}},{\"name\":\"WEAPON_COMBATPISTOL\",\"slot\":4,\"count\":1,\"metadata\":{\"registered\":\"Azaria Gordon\",\"serial\":\"857358POL235490\",\"ammo\":0,\"durability\":100,\"components\":[]}},{\"name\":\"ammo-rifle\",\"slot\":5,\"count\":223},{\"name\":\"money\",\"slot\":6,\"count\":54},{\"name\":\"idcard\",\"slot\":7,\"count\":1,\"metadata\":{\"identifier\":\"4033ea29562af80cdf4e24bb7dbc5b712651d6d6\",\"playerInfo\":{\"firstname\":\"Azaria\",\"dateofbirth\":\"17/06/1986\",\"sex\":\"m\",\"lastname\":\"Gordon\",\"height\":195}}},{\"name\":\"ammo-9\",\"slot\":9,\"count\":1},{\"name\":\"WEAPON_FLASHLIGHT\",\"slot\":10,\"count\":1,\"metadata\":{\"durability\":100,\"components\":[]}},{\"name\":\"WEAPON_PETROLCAN\",\"slot\":11,\"count\":1,\"metadata\":{\"ammo\":0,\"components\":[],\"durability\":0}}]', 'bcso', 6, '[]', '{\"z\":41.4791259765625,\"y\":-172.90548706054688,\"x\":-927.8637084960938,\"heading\":209.76377868652345}', '{\"eyeColor\":0,\"props\":[{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7},{\"drawable\":10,\"texture\":0,\"prop_id\":0},{\"drawable\":9,\"texture\":0,\"prop_id\":1}],\"tattoos\":[],\"headBlend\":{\"shapeThird\":0,\"thirdMix\":0,\"skinThird\":0,\"skinMix\":0,\"skinFirst\":3,\"shapeSecond\":0,\"shapeFirst\":1,\"shapeMix\":0,\"skinSecond\":0},\"headOverlays\":{\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"beard\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"chestHair\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"eyebrows\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"makeUp\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"complexion\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"lipstick\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blush\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0}},\"model\":\"mp_m_freemode_01\",\"components\":[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":8,\"texture\":0,\"component_id\":2},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":0,\"texture\":0,\"component_id\":7},{\"drawable\":15,\"texture\":0,\"component_id\":8},{\"drawable\":99,\"texture\":0,\"component_id\":11},{\"drawable\":17,\"texture\":0,\"component_id\":3},{\"drawable\":25,\"texture\":1,\"component_id\":4},{\"drawable\":12,\"texture\":6,\"component_id\":6},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":12,\"texture\":0,\"component_id\":9},{\"drawable\":116,\"texture\":3,\"component_id\":1}],\"faceFeatures\":{\"cheeksBoneWidth\":0,\"nosePeakHigh\":0,\"jawBoneWidth\":0,\"jawBoneBackSize\":0,\"chinBoneSize\":0,\"eyeBrownHigh\":0,\"cheeksWidth\":0,\"nosePeakLowering\":0,\"eyesOpening\":0,\"chinHole\":0,\"noseBoneTwist\":0,\"eyeBrownForward\":0,\"neckThickness\":0,\"nosePeakSize\":0,\"chinBoneLowering\":0,\"noseBoneHigh\":0,\"lipsThickness\":0,\"cheeksBoneHigh\":0,\"noseWidth\":0,\"chinBoneLenght\":0},\"hair\":{\"style\":8,\"color\":0,\"texture\":0,\"highlight\":0}}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0},{\"val\":524900,\"name\":\"hunger\",\"percent\":52.49},{\"val\":643675,\"name\":\"thirst\",\"percent\":64.3675}]', 'nofaction', 0, 'Azaria', 'Gordon', '17/06/1986', 'm', 195, 0, NULL, NULL, '[]', 0, '799-794-9956', NULL, NULL),
('41ce902204ac191b192307665631bb4e2b7f3944', '{\"bank\":43335,\"black_money\":0,\"money\":0}', 'user', '[{\"name\":\"phone\",\"count\":1,\"slot\":1},{\"name\":\"lockpick\",\"count\":1,\"slot\":2},{\"name\":\"vinblanc\",\"count\":28,\"slot\":3},{\"name\":\"raisinrouge\",\"count\":17,\"slot\":6},{\"name\":\"raisinblanc\",\"count\":6,\"slot\":7},{\"name\":\"epinette\",\"count\":1,\"slot\":21}]', 'vigneron', 3, '[]', '{\"heading\":277.7952880859375,\"z\":140.994140625,\"y\":2055.62646484375,\"x\":-1866.4351806640626}', '{\"eyeColor\":-1,\"headBlend\":{\"thirdMix\":0,\"shapeMix\":0,\"shapeFirst\":0,\"shapeThird\":0,\"skinFirst\":31,\"skinThird\":45,\"skinMix\":0,\"shapeSecond\":0,\"skinSecond\":0},\"hair\":{\"highlight\":0,\"texture\":0,\"color\":0,\"style\":2},\"tattoos\":[],\"props\":[{\"drawable\":-1,\"texture\":-1,\"prop_id\":0},{\"drawable\":-1,\"texture\":-1,\"prop_id\":1},{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7}],\"model\":\"mp_m_freemode_01\",\"headOverlays\":{\"moleAndFreckles\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"chestHair\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"ageing\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"blemishes\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"beard\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"bodyBlemishes\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"sunDamage\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"makeUp\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"blush\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"lipstick\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"eyebrows\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"complexion\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0}},\"faceFeatures\":{\"cheeksBoneHigh\":0,\"nosePeakLowering\":0,\"neckThickness\":0,\"jawBoneBackSize\":0,\"noseBoneHigh\":0,\"chinBoneSize\":0,\"noseBoneTwist\":0,\"cheeksBoneWidth\":0,\"chinBoneLenght\":0,\"chinHole\":0,\"nosePeakSize\":0,\"noseWidth\":0,\"nosePeakHigh\":0,\"lipsThickness\":0,\"eyeBrownForward\":0,\"eyesOpening\":0,\"chinBoneLowering\":0,\"cheeksWidth\":0,\"eyeBrownHigh\":0,\"jawBoneWidth\":0},\"components\":[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":56,\"texture\":0,\"component_id\":1},{\"drawable\":2,\"texture\":0,\"component_id\":2},{\"drawable\":30,\"texture\":0,\"component_id\":3},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":4,\"texture\":2,\"component_id\":6},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":126,\"texture\":5,\"component_id\":11},{\"drawable\":15,\"texture\":0,\"component_id\":8},{\"drawable\":0,\"texture\":0,\"component_id\":7},{\"drawable\":5,\"texture\":4,\"component_id\":4}]}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0},{\"val\":430000,\"name\":\"hunger\",\"percent\":43.0},{\"val\":572500,\"name\":\"thirst\",\"percent\":57.25}]', 'marabunta', 3, 'Miguel', 'Capone', '06/05/2000', 'm', 185, 0, 506, NULL, '[]', 0, '993-436-9247', NULL, NULL),
('4b4c70ccdce7ed24cc1de486f65d418f11ab6cf2', '{\"bank\":10000,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":29.2799072265625,\"y\":-1475.6571044921876,\"x\":49.96483612060547,\"heading\":204.094482421875}', '{\"eyeColor\":0,\"components\":[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":1},{\"drawable\":0,\"texture\":0,\"component_id\":2},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":0,\"texture\":0,\"component_id\":7},{\"drawable\":15,\"texture\":0,\"component_id\":3},{\"drawable\":15,\"texture\":0,\"component_id\":8},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":1,\"texture\":0,\"component_id\":4},{\"drawable\":2,\"texture\":0,\"component_id\":6},{\"drawable\":90,\"texture\":0,\"component_id\":11}],\"tattoos\":[],\"headBlend\":{\"shapeThird\":0,\"thirdMix\":0,\"skinThird\":0,\"skinMix\":0,\"shapeMix\":0,\"shapeSecond\":0,\"shapeFirst\":0,\"skinFirst\":0,\"skinSecond\":0},\"headOverlays\":{\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"beard\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"chestHair\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"eyebrows\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"makeUp\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"complexion\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"lipstick\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blush\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0}},\"props\":[{\"drawable\":-1,\"texture\":-1,\"prop_id\":0},{\"drawable\":-1,\"texture\":-1,\"prop_id\":1},{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7}],\"model\":\"mp_m_freemode_01\",\"faceFeatures\":{\"cheeksBoneWidth\":0,\"nosePeakHigh\":0,\"cheeksBoneHigh\":0,\"noseBoneHigh\":0,\"chinBoneSize\":0,\"eyeBrownHigh\":0,\"cheeksWidth\":0,\"nosePeakLowering\":0,\"eyesOpening\":0,\"chinHole\":0,\"noseBoneTwist\":0,\"eyeBrownForward\":0,\"neckThickness\":0,\"nosePeakSize\":0,\"chinBoneLowering\":0,\"jawBoneBackSize\":0,\"lipsThickness\":0,\"chinBoneLenght\":0,\"noseWidth\":0,\"jawBoneWidth\":0},\"hair\":{\"style\":7,\"highlight\":0,\"texture\":0,\"color\":0}}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"hunger\",\"val\":943600,\"percent\":94.36},{\"name\":\"thirst\",\"val\":957700,\"percent\":95.77}]', 'nofaction', 0, 'Tropico', 'Yoyo', '01/05/2001', 'm', 180, 0, NULL, NULL, '[]', 0, '997-961-5890', NULL, NULL);
INSERT INTO `users` (`identifier`, `accounts`, `group`, `inventory`, `job`, `job_grade`, `loadout`, `position`, `skin`, `status`, `faction`, `faction_grade`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `pincode`, `last_property`, `tattoos`, `disabled`, `phone_number`, `callsign`, `metadata`) VALUES
('552336394dc327ede208fb7fa97ff86088f4ac99', '{\"bank\":4850,\"money\":288,\"black_money\":0}', 'user', '[{\"name\":\"WEAPON_CARBINERIFLE\",\"slot\":1,\"metadata\":{\"ammo\":19,\"registered\":\"Azaria Gordon\",\"serial\":\"326277POL434741\",\"durability\":96.99999999999987,\"components\":[]},\"count\":1},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"slot\":2,\"metadata\":{\"ammo\":0,\"registered\":\"Azaria Gordon\",\"serial\":\"974989POL600387\",\"durability\":97.60000000000012,\"components\":[]},\"count\":1},{\"name\":\"WEAPON_STUNGUN\",\"slot\":3,\"metadata\":{\"registered\":\"nathanmasy\",\"components\":[],\"durability\":100},\"count\":1},{\"name\":\"WEAPON_COMBATPISTOL\",\"slot\":4,\"metadata\":{\"ammo\":0,\"registered\":\"Azaria Gordon\",\"serial\":\"893953POL107108\",\"durability\":100,\"components\":[]},\"count\":1},{\"name\":\"WEAPON_NIGHTSTICK\",\"slot\":5,\"metadata\":{\"durability\":100,\"components\":[]},\"count\":1},{\"name\":\"money\",\"slot\":6,\"count\":288}]', 'bcso', 5, '[]', '{\"y\":-417.78460693359377,\"z\":35.5311279296875,\"heading\":22.67716407775879,\"x\":-1462.773681640625}', '{\"components\":[{\"component_id\":0,\"drawable\":0,\"texture\":0},{\"component_id\":2,\"drawable\":73,\"texture\":0},{\"component_id\":3,\"drawable\":19,\"texture\":0},{\"component_id\":10,\"drawable\":0,\"texture\":0},{\"component_id\":1,\"drawable\":2,\"texture\":0},{\"component_id\":7,\"drawable\":0,\"texture\":0},{\"component_id\":9,\"drawable\":0,\"texture\":0},{\"component_id\":11,\"drawable\":10,\"texture\":0},{\"component_id\":8,\"drawable\":10,\"texture\":0},{\"component_id\":5,\"drawable\":0,\"texture\":0},{\"component_id\":4,\"drawable\":20,\"texture\":0},{\"component_id\":6,\"drawable\":21,\"texture\":0}],\"props\":[{\"prop_id\":0,\"drawable\":-1,\"texture\":-1},{\"prop_id\":1,\"drawable\":-1,\"texture\":-1},{\"prop_id\":2,\"drawable\":-1,\"texture\":-1},{\"prop_id\":6,\"drawable\":6,\"texture\":0},{\"prop_id\":7,\"drawable\":9,\"texture\":0}],\"headOverlays\":{\"chestHair\":{\"color\":0,\"style\":0,\"secondColor\":0,\"opacity\":0},\"blemishes\":{\"color\":0,\"style\":0,\"secondColor\":0,\"opacity\":0},\"makeUp\":{\"color\":0,\"style\":0,\"secondColor\":0,\"opacity\":0},\"sunDamage\":{\"color\":0,\"style\":0,\"secondColor\":0,\"opacity\":0},\"lipstick\":{\"color\":0,\"style\":0,\"secondColor\":0,\"opacity\":0},\"eyebrows\":{\"color\":61,\"style\":2,\"secondColor\":0,\"opacity\":1},\"ageing\":{\"color\":0,\"style\":0,\"secondColor\":0,\"opacity\":0},\"moleAndFreckles\":{\"color\":0,\"style\":0,\"secondColor\":0,\"opacity\":0},\"complexion\":{\"color\":0,\"style\":0,\"secondColor\":0,\"opacity\":0},\"beard\":{\"color\":61,\"style\":4,\"secondColor\":0,\"opacity\":1},\"bodyBlemishes\":{\"color\":0,\"style\":0,\"secondColor\":0,\"opacity\":0},\"blush\":{\"color\":0,\"style\":0,\"secondColor\":0,\"opacity\":0}},\"hair\":{\"color\":61,\"style\":73,\"highlight\":61,\"texture\":0},\"eyeColor\":0,\"headBlend\":{\"skinSecond\":0,\"shapeSecond\":0,\"skinMix\":0,\"shapeMix\":0,\"thirdMix\":0,\"skinThird\":0,\"shapeThird\":0,\"shapeFirst\":0,\"skinFirst\":0},\"tattoos\":{\"ZONE_HAIR\":[{\"collection\":\"multiplayer_overlays\",\"hashFemale\":\"FM_F_Hair_003_a\",\"name\":\"hair-0-186\",\"hashMale\":\"FM_M_Hair_003_a\",\"label\":\"hair-0-186\",\"zone\":\"ZONE_HAIR\"}]},\"model\":\"mp_m_freemode_01\",\"faceFeatures\":{\"chinBoneLenght\":0,\"chinBoneLowering\":0,\"jawBoneWidth\":0,\"eyeBrownForward\":0,\"nosePeakSize\":0,\"neckThickness\":0,\"noseBoneHigh\":0,\"lipsThickness\":0,\"chinHole\":0,\"cheeksWidth\":0,\"nosePeakLowering\":0,\"eyeBrownHigh\":0,\"noseBoneTwist\":0,\"chinBoneSize\":0,\"eyesOpening\":0,\"jawBoneBackSize\":0,\"cheeksBoneWidth\":0,\"noseWidth\":0,\"cheeksBoneHigh\":0,\"nosePeakHigh\":0}}', '[{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"},{\"percent\":36.29,\"val\":362900,\"name\":\"hunger\"},{\"percent\":52.21749999999999,\"val\":522175,\"name\":\"thirst\"}]', 'nofaction', 0, 'Pablo', 'Vaaubar', '28/02/2000', 'm', 200, 0, NULL, NULL, '[]', 0, '010-631-0718', NULL, NULL),
('630e51d91706e2e79529dc26831b96f71a1ebed1', '{\"bank\":0,\"black_money\":0,\"money\":3110}', 'user', '[{\"count\":3110,\"name\":\"money\",\"slot\":1},{\"count\":1,\"slot\":2,\"name\":\"idcard\",\"metadata\":{\"playerInfo\":{\"height\":180,\"firstname\":\"Tony\",\"sex\":\"m\",\"lastname\":\"Vasquez\",\"dateofbirth\":\"01/12/2000\"},\"identifier\":\"630e51d91706e2e79529dc26831b96f71a1ebed1\"}},{\"count\":1,\"name\":\"phone\",\"slot\":3},{\"count\":1,\"slot\":4,\"name\":\"drivers_license\",\"metadata\":{\"playerInfo\":{\"height\":180,\"firstname\":\"Tony\",\"sex\":\"m\",\"lastname\":\"Vasquez\",\"dateofbirth\":\"01/12/2000\"},\"identifier\":\"630e51d91706e2e79529dc26831b96f71a1ebed1\"}},{\"count\":1,\"name\":\"safecracker\",\"slot\":5}]', 'unemployed', 0, '[]', '{\"z\":45.91064453125,\"y\":3040.602294921875,\"x\":2305.9912109375,\"heading\":340.157470703125}', '{\"eyeColor\":0,\"components\":[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":9,\"texture\":0,\"component_id\":2},{\"drawable\":0,\"texture\":0,\"component_id\":3},{\"drawable\":12,\"texture\":0,\"component_id\":4},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":8,\"texture\":0,\"component_id\":6},{\"drawable\":0,\"texture\":0,\"component_id\":7},{\"drawable\":0,\"texture\":0,\"component_id\":8},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":0,\"texture\":2,\"component_id\":11},{\"drawable\":44,\"texture\":0,\"component_id\":1}],\"tattoos\":[],\"headBlend\":{\"shapeThird\":0,\"thirdMix\":0,\"skinThird\":0,\"skinMix\":0,\"skinSecond\":0,\"shapeSecond\":10,\"shapeFirst\":0,\"shapeMix\":0.5,\"skinFirst\":5},\"headOverlays\":{\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"beard\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"chestHair\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"eyebrows\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"makeUp\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"complexion\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"lipstick\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blush\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0}},\"props\":[{\"drawable\":-1,\"texture\":-1,\"prop_id\":0},{\"drawable\":5,\"texture\":0,\"prop_id\":1},{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7}],\"model\":\"mp_m_freemode_01\",\"faceFeatures\":{\"cheeksBoneWidth\":0,\"nosePeakHigh\":0,\"jawBoneWidth\":0,\"jawBoneBackSize\":0,\"chinBoneSize\":0,\"eyeBrownHigh\":0,\"cheeksWidth\":0,\"nosePeakLowering\":0,\"eyesOpening\":0,\"chinHole\":0,\"noseBoneTwist\":0,\"eyeBrownForward\":0,\"neckThickness\":0,\"nosePeakSize\":0,\"chinBoneLowering\":0,\"chinBoneLenght\":0,\"lipsThickness\":0,\"cheeksBoneHigh\":0,\"noseWidth\":0,\"noseBoneHigh\":0},\"hair\":{\"style\":9,\"highlight\":1,\"texture\":0,\"color\":0}}', '[{\"name\":\"drunk\",\"percent\":0.0,\"val\":0},{\"name\":\"hunger\",\"percent\":98.06,\"val\":980600},{\"name\":\"thirst\",\"percent\":98.545,\"val\":985450}]', 'nofaction', 0, 'Tony', 'Vasquez', '01/12/2000', 'm', 180, 0, 1234, NULL, '[]', 0, '788-109-2982', NULL, NULL),
('67ccb6ca9f520f0f4596141aae23e5b5e12f0dea', '{\"bank\":400,\"money\":71,\"black_money\":0}', 'user', '[{\"name\":\"money\",\"count\":71,\"slot\":1},{\"metadata\":{\"plate\":\"UQFA3216\"},\"name\":\"carkey\",\"count\":1,\"slot\":2},{\"name\":\"phone\",\"count\":1,\"slot\":3},{\"name\":\"hotdog\",\"count\":1,\"slot\":4},{\"name\":\"water\",\"count\":1,\"slot\":5},{\"metadata\":{\"identifier\":\"67ccb6ca9f520f0f4596141aae23e5b5e12f0dea\",\"playerInfo\":{\"dateofbirth\":\"29/04/2004\",\"lastname\":\"Coquillet\",\"sex\":\"m\",\"firstname\":\"Bryan\",\"height\":187}},\"name\":\"idcard\",\"count\":1,\"slot\":6},{\"metadata\":{\"components\":[],\"durability\":100},\"name\":\"WEAPON_SWITCHBLADE\",\"count\":1,\"slot\":7},{\"name\":\"mechanic_tools\",\"count\":1,\"slot\":9}]', 'mechanic', 4, '[]', '{\"heading\":82.20472717285156,\"z\":22.2872314453125,\"y\":-1088.5450439453126,\"x\":719.4593505859375}', '{\"model\":\"mp_m_freemode_01\",\"components\":[{\"texture\":0,\"component_id\":0,\"drawable\":0},{\"texture\":0,\"component_id\":2,\"drawable\":0},{\"texture\":0,\"component_id\":3,\"drawable\":0},{\"texture\":0,\"component_id\":7,\"drawable\":0},{\"texture\":2,\"component_id\":11,\"drawable\":72},{\"texture\":0,\"component_id\":8,\"drawable\":4},{\"texture\":0,\"component_id\":9,\"drawable\":0},{\"texture\":0,\"component_id\":5,\"drawable\":82},{\"texture\":3,\"component_id\":4,\"drawable\":10},{\"texture\":0,\"component_id\":6,\"drawable\":15},{\"texture\":0,\"component_id\":10,\"drawable\":0},{\"texture\":0,\"component_id\":1,\"drawable\":0}],\"headBlend\":{\"skinMix\":0,\"shapeThird\":0,\"shapeFirst\":6,\"skinFirst\":0,\"shapeSecond\":7,\"shapeMix\":0,\"skinSecond\":0,\"thirdMix\":0,\"skinThird\":0},\"tattoos\":{\"ZONE_HAIR\":[{\"label\":\"hair-0-188\",\"hashFemale\":\"FM_F_Hair_003_c\",\"hashMale\":\"FM_M_Hair_003_c\",\"zone\":\"ZONE_HAIR\",\"name\":\"hair-0-188\",\"collection\":\"multiplayer_overlays\"}]},\"faceFeatures\":{\"eyesOpening\":0,\"chinBoneLenght\":0,\"cheeksWidth\":0,\"nosePeakSize\":0,\"cheeksBoneHigh\":0,\"jawBoneBackSize\":0,\"eyeBrownHigh\":0,\"noseBoneTwist\":0,\"nosePeakLowering\":0,\"chinHole\":0,\"lipsThickness\":0,\"jawBoneWidth\":0,\"neckThickness\":0,\"nosePeakHigh\":0,\"cheeksBoneWidth\":0,\"chinBoneLowering\":0,\"eyeBrownForward\":0,\"noseWidth\":0,\"chinBoneSize\":0,\"noseBoneHigh\":0},\"headOverlays\":{\"blush\":{\"secondColor\":0,\"style\":0,\"color\":0,\"opacity\":0},\"eyebrows\":{\"secondColor\":0,\"style\":0,\"color\":0,\"opacity\":0},\"sunDamage\":{\"secondColor\":0,\"style\":0,\"color\":0,\"opacity\":0},\"makeUp\":{\"secondColor\":0,\"style\":0,\"color\":0,\"opacity\":0},\"beard\":{\"secondColor\":0,\"style\":0,\"color\":0,\"opacity\":0},\"chestHair\":{\"secondColor\":0,\"style\":0,\"color\":0,\"opacity\":0},\"complexion\":{\"secondColor\":0,\"style\":0,\"color\":0,\"opacity\":0},\"moleAndFreckles\":{\"secondColor\":0,\"style\":0,\"color\":0,\"opacity\":0},\"lipstick\":{\"secondColor\":0,\"style\":0,\"color\":0,\"opacity\":0},\"bodyBlemishes\":{\"secondColor\":0,\"style\":0,\"color\":0,\"opacity\":0},\"blemishes\":{\"secondColor\":0,\"style\":0,\"color\":0,\"opacity\":0},\"ageing\":{\"secondColor\":0,\"style\":0,\"color\":0,\"opacity\":0}},\"hair\":{\"texture\":0,\"highlight\":0,\"color\":0,\"style\":57},\"props\":[{\"texture\":-1,\"drawable\":-1,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":-1,\"drawable\":-1,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7},{\"texture\":0,\"drawable\":-1,\"prop_id\":0}],\"eyeColor\":0}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"hunger\",\"val\":481000,\"percent\":48.1},{\"name\":\"thirst\",\"val\":610750,\"percent\":61.075}]', 'nofaction', 0, 'Bryan', 'Coquillet', '29/04/2004', 'm', 187, 0, 2904, NULL, '[]', 0, '123-537-8827', NULL, '[]'),
('776f5aa08ac3ad3f772d266d7c51ec508a34bbd0', '{\"money\":1366,\"bank\":17952,\"black_money\":0}', 'user', '[{\"slot\":1,\"count\":1,\"name\":\"WEAPON_KNUCKLE\",\"metadata\":{\"components\":[],\"durability\":100}},{\"slot\":2,\"count\":1,\"name\":\"carkey\",\"metadata\":{\"plate\":\"EVDM1139\"}},{\"slot\":3,\"count\":1,\"name\":\"phone\"},{\"slot\":6,\"count\":1,\"name\":\"cola\"},{\"slot\":7,\"count\":4,\"name\":\"icetea\"},{\"slot\":8,\"count\":10,\"name\":\"spray\"},{\"slot\":9,\"count\":1,\"name\":\"safecracker\"},{\"slot\":10,\"count\":2,\"name\":\"drill\"},{\"slot\":11,\"count\":4,\"name\":\"lockpick\"},{\"slot\":12,\"count\":1366,\"name\":\"money\"},{\"slot\":13,\"count\":1,\"name\":\"WEAPON_KNIFE\",\"metadata\":{\"components\":[],\"durability\":100}},{\"slot\":14,\"count\":1,\"name\":\"WEAPON_HAMMER\",\"metadata\":{\"components\":[],\"durability\":100}},{\"slot\":15,\"count\":1,\"name\":\"WEAPON_BAT\",\"metadata\":{\"components\":[],\"durability\":100}},{\"slot\":16,\"count\":1,\"name\":\"idcard\",\"metadata\":{\"playerInfo\":{\"dateofbirth\":\"23/06/1990\",\"lastname\":\"Watson\",\"firstname\":\"Jaden\",\"sex\":\"m\",\"height\":185},\"identifier\":\"776f5aa08ac3ad3f772d266d7c51ec508a34bbd0\"}},{\"slot\":18,\"count\":1,\"name\":\"tacos\"},{\"slot\":19,\"count\":1,\"name\":\"WEAPON_CROWBAR\",\"metadata\":{\"components\":[],\"durability\":100}},{\"slot\":20,\"count\":1,\"name\":\"WEAPON_WRENCH\",\"metadata\":{\"components\":[],\"durability\":100}},{\"slot\":21,\"count\":1,\"name\":\"WEAPON_FLASHLIGHT\",\"metadata\":{\"components\":[],\"durability\":100}},{\"slot\":22,\"count\":1,\"name\":\"WEAPON_KNUCKLE\",\"metadata\":{\"components\":[],\"durability\":100}},{\"slot\":23,\"count\":1,\"name\":\"WEAPON_SWITCHBLADE\",\"metadata\":{\"components\":[],\"durability\":100}},{\"slot\":24,\"count\":1,\"name\":\"WEAPON_HATCHET\",\"metadata\":{\"components\":[],\"durability\":100}},{\"slot\":25,\"count\":1,\"name\":\"WEAPON_GOLFCLUB\",\"metadata\":{\"components\":[],\"durability\":100}}]', 'unemployed', 0, '[]', '{\"z\":31.3187255859375,\"heading\":70.86614227294922,\"x\":-172.44395446777345,\"y\":-1306.193359375}', '{\"eyeColor\":0,\"components\":[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":1},{\"drawable\":8,\"texture\":0,\"component_id\":2},{\"drawable\":0,\"texture\":0,\"component_id\":3},{\"drawable\":104,\"texture\":0,\"component_id\":4},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":7,\"texture\":2,\"component_id\":6},{\"drawable\":87,\"texture\":0,\"component_id\":7},{\"drawable\":15,\"texture\":0,\"component_id\":8},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":388,\"texture\":3,\"component_id\":11}],\"tattoos\":{\"ZONE_HEAD\":[{\"label\":\"$100\",\"opacity\":0.3,\"hashMale\":\"MP_Buis_M_Neck_003\",\"collection\":\"mpbusiness_overlays\",\"zone\":\"ZONE_HEAD\",\"hashFemale\":\"\",\"name\":\"TAT_BUS_008\"},{\"label\":\"FTW\",\"opacity\":0.3,\"hashMale\":\"MP_MP_Biker_Tat_038_M\",\"collection\":\"mpbiker_overlays\",\"zone\":\"ZONE_HEAD\",\"hashFemale\":\"MP_MP_Biker_Tat_038_F\",\"name\":\"TAT_BI_038\"},{\"label\":\"Western Stylized\",\"opacity\":0.2,\"hashMale\":\"MP_MP_Biker_Tat_051_M\",\"collection\":\"mpbiker_overlays\",\"zone\":\"ZONE_HEAD\",\"hashFemale\":\"MP_MP_Biker_Tat_051_F\",\"name\":\"TAT_BI_051\"},{\"label\":\"Animal\",\"opacity\":0.1,\"hashMale\":\"mpHeist3_Tat_002_M\",\"collection\":\"mpheist3_overlays\",\"zone\":\"ZONE_HEAD\",\"hashFemale\":\"mpHeist3_Tat_002_F\",\"name\":\"TAT_H3_002\"}]},\"headBlend\":{\"shapeThird\":0,\"thirdMix\":0,\"skinThird\":0,\"skinMix\":0,\"skinSecond\":0,\"shapeSecond\":0,\"shapeFirst\":0,\"skinFirst\":0,\"shapeMix\":0},\"headOverlays\":{\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"beard\":{\"style\":16,\"color\":0,\"opacity\":1,\"secondColor\":0},\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"chestHair\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"eyebrows\":{\"style\":16,\"color\":0,\"opacity\":1,\"secondColor\":0},\"makeUp\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"complexion\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"lipstick\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blush\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0}},\"model\":\"mp_m_freemode_01\",\"props\":[{\"drawable\":-1,\"texture\":-1,\"prop_id\":1},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7},{\"drawable\":8,\"texture\":0,\"prop_id\":2},{\"drawable\":160,\"texture\":18,\"prop_id\":0}],\"faceFeatures\":{\"cheeksBoneWidth\":0,\"nosePeakHigh\":0,\"jawBoneWidth\":0,\"chinBoneLenght\":0,\"chinBoneSize\":0,\"eyeBrownHigh\":0,\"cheeksWidth\":0,\"nosePeakLowering\":0,\"eyesOpening\":0,\"chinHole\":0,\"noseBoneTwist\":0,\"eyeBrownForward\":0,\"neckThickness\":0,\"nosePeakSize\":0,\"chinBoneLowering\":0,\"cheeksBoneHigh\":0,\"lipsThickness\":0,\"jawBoneBackSize\":0,\"noseWidth\":0,\"noseBoneHigh\":0},\"hair\":{\"style\":8,\"highlight\":0,\"texture\":0,\"color\":0}}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0},{\"percent\":92.91,\"name\":\"hunger\",\"val\":929100},{\"percent\":94.6825,\"name\":\"thirst\",\"val\":946825}]', 'nofaction', 0, 'Jaden', 'Watson', '23/06/1990', 'm', 185, 0, 1200, NULL, '[]', 0, '370-215-5115', NULL, NULL),
('7c37425743ff6fb7f740dce4492bea16acbb89df', '{\"black_money\":0,\"bank\":1520,\"money\":31135}', 'admin', '[{\"metadata\":{\"durability\":100,\"registered\":\"Lucas Frost\",\"components\":[]},\"count\":1,\"name\":\"WEAPON_STUNGUN\",\"slot\":1},{\"metadata\":{\"durability\":98.60000000000008,\"components\":[]},\"count\":1,\"name\":\"WEAPON_NIGHTSTICK\",\"slot\":2},{\"metadata\":{\"durability\":100,\"components\":[]},\"count\":1,\"name\":\"WEAPON_FLASHLIGHT\",\"slot\":3},{\"count\":17,\"name\":\"chips\",\"slot\":4},{\"count\":2,\"name\":\"water\",\"slot\":5},{\"count\":31135,\"name\":\"money\",\"slot\":6},{\"metadata\":{\"identifier\":\"7c37425743ff6fb7f740dce4492bea16acbb89df\",\"playerInfo\":{\"height\":190,\"sex\":\"m\",\"dateofbirth\":\"27/10/1985\",\"firstname\":\"Lucas\",\"lastname\":\"Frost\"}},\"count\":1,\"name\":\"idcard\",\"slot\":7},{\"count\":1,\"name\":\"phone\",\"slot\":8},{\"metadata\":{\"ammo\":0,\"durability\":0,\"components\":[]},\"count\":1,\"name\":\"WEAPON_PETROLCAN\",\"slot\":9},{\"metadata\":{\"identifier\":\"7c37425743ff6fb7f740dce4492bea16acbb89df\",\"playerInfo\":{\"height\":190,\"sex\":\"m\",\"dateofbirth\":\"27/10/1985\",\"firstname\":\"Lucas\",\"lastname\":\"Frost\"}},\"count\":1,\"name\":\"drivers_license\",\"slot\":10}]', 'gouvernement', 4, '[]', '{\"heading\":28.34645652770996,\"z\":20.113525390625,\"y\":-2013.046142578125,\"x\":302.8219909667969}', '{\"tattoos\":[],\"components\":[{\"texture\":0,\"component_id\":0,\"drawable\":0},{\"texture\":0,\"component_id\":2,\"drawable\":4},{\"texture\":0,\"component_id\":5,\"drawable\":0},{\"texture\":0,\"component_id\":1,\"drawable\":0},{\"texture\":0,\"component_id\":10,\"drawable\":0},{\"texture\":0,\"component_id\":9,\"drawable\":0},{\"texture\":0,\"component_id\":8,\"drawable\":13},{\"texture\":1,\"component_id\":7,\"drawable\":10},{\"texture\":1,\"component_id\":11,\"drawable\":28},{\"texture\":3,\"component_id\":4,\"drawable\":10},{\"texture\":0,\"component_id\":3,\"drawable\":1},{\"texture\":0,\"component_id\":6,\"drawable\":10}],\"eyeColor\":2,\"hair\":{\"highlight\":0,\"texture\":0,\"style\":4,\"color\":0},\"faceFeatures\":{\"nosePeakSize\":0,\"chinHole\":0,\"nosePeakLowering\":0,\"chinBoneLenght\":0,\"jawBoneBackSize\":0,\"cheeksBoneWidth\":0,\"jawBoneWidth\":0,\"eyesOpening\":0,\"chinBoneLowering\":0,\"noseBoneHigh\":0,\"neckThickness\":0,\"noseWidth\":0,\"lipsThickness\":0,\"noseBoneTwist\":0,\"chinBoneSize\":0,\"cheeksWidth\":0,\"nosePeakHigh\":0,\"eyeBrownForward\":0,\"eyeBrownHigh\":0,\"cheeksBoneHigh\":0},\"props\":[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":1,\"drawable\":5},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":0,\"drawable\":-1}],\"model\":\"mp_m_freemode_01\",\"headOverlays\":{\"blush\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"blemishes\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"chestHair\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"sunDamage\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"complexion\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"ageing\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"bodyBlemishes\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"makeUp\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"beard\":{\"opacity\":1,\"secondColor\":0,\"style\":10,\"color\":0},\"lipstick\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"eyebrows\":{\"opacity\":1,\"secondColor\":0,\"style\":2,\"color\":0},\"moleAndFreckles\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0}},\"headBlend\":{\"shapeFirst\":0,\"skinThird\":0,\"skinSecond\":0,\"skinFirst\":0,\"skinMix\":0,\"shapeSecond\":0,\"shapeMix\":0,\"thirdMix\":0,\"shapeThird\":0}}', '[{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"},{\"percent\":35.87,\"val\":358700,\"name\":\"hunger\"},{\"percent\":51.90249999999999,\"val\":519025,\"name\":\"thirst\"}]', 'nofaction', 0, 'Lucas', 'Frost', '27/10/1985', 'm', 190, 0, NULL, NULL, '[]', 0, '987-370-7997', NULL, NULL),
('802ae7807563388f110349e6e49299ca33f38712', '{\"bank\":1500,\"money\":2107,\"black_money\":5400}', 'user', '[{\"metadata\":{\"components\":[],\"durability\":96.00000000000024},\"slot\":1,\"count\":1,\"name\":\"WEAPON_KNUCKLE\"},{\"slot\":2,\"count\":10,\"name\":\"cigarette\"},{\"metadata\":{\"durability\":0,\"degrade\":6000},\"slot\":3,\"count\":1,\"name\":\"vape\"},{\"slot\":4,\"count\":2107,\"name\":\"money\"},{\"metadata\":{\"plate\":\"GHQB9472\"},\"slot\":5,\"count\":1,\"name\":\"carkey\"},{\"slot\":6,\"count\":3,\"name\":\"burger\"},{\"slot\":7,\"count\":6,\"name\":\"hotdog\"},{\"slot\":8,\"count\":5,\"name\":\"cola\"},{\"slot\":9,\"count\":4,\"name\":\"water\"},{\"slot\":10,\"count\":5400,\"name\":\"black_money\"},{\"slot\":11,\"count\":2,\"name\":\"redbull\"},{\"slot\":14,\"count\":1,\"name\":\"spray_remover\"},{\"slot\":15,\"count\":1,\"name\":\"lockpick\"},{\"slot\":19,\"count\":1,\"name\":\"ziptie\"},{\"slot\":20,\"count\":1,\"name\":\"drill\"},{\"slot\":23,\"count\":1,\"name\":\"skateboard\"},{\"metadata\":{\"durability\":100,\"ammo\":100,\"components\":[]},\"slot\":24,\"count\":1,\"name\":\"WEAPON_PETROLCAN\"},{\"slot\":25,\"count\":1,\"name\":\"phone\"}]', 'motorcycle', 3, '[]', '{\"x\":272.5054931640625,\"heading\":249.44882202148438,\"z\":29.2967529296875,\"y\":-1163.248291015625}', '{\"eyeColor\":5,\"components\":[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":1},{\"drawable\":59,\"texture\":0,\"component_id\":2},{\"drawable\":20,\"texture\":0,\"component_id\":3},{\"drawable\":28,\"texture\":0,\"component_id\":4},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":10,\"texture\":0,\"component_id\":6},{\"drawable\":0,\"texture\":0,\"component_id\":7},{\"drawable\":22,\"texture\":0,\"component_id\":8},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":162,\"texture\":0,\"component_id\":11}],\"tattoos\":{\"ZONE_HAIR\":[{\"zone\":\"ZONE_HAIR\",\"hashMale\":\"MP_Biker_Hair_002_M\",\"collection\":\"mpBiker_overlays\",\"hashFemale\":\"MP_Biker_Hair_002_F\",\"label\":\"hair-24-9\",\"name\":\"hair-24-9\"}]},\"headBlend\":{\"shapeThird\":0,\"thirdMix\":0.0,\"skinThird\":0,\"skinMix\":0.0,\"skinSecond\":0,\"shapeSecond\":0,\"shapeFirst\":0,\"shapeMix\":0.0,\"skinFirst\":8},\"headOverlays\":{\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"beard\":{\"style\":3,\"color\":3,\"opacity\":1.0,\"secondColor\":0},\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"chestHair\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"eyebrows\":{\"style\":0,\"color\":3,\"opacity\":1.0,\"secondColor\":0},\"makeUp\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"complexion\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"lipstick\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blush\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0}},\"props\":[{\"drawable\":-1,\"texture\":-1,\"prop_id\":0},{\"drawable\":-1,\"texture\":-1,\"prop_id\":1},{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7}],\"model\":\"mp_m_freemode_01\",\"faceFeatures\":{\"cheeksBoneWidth\":0.0,\"nosePeakHigh\":0.0,\"cheeksBoneHigh\":0.0,\"noseBoneHigh\":0.0,\"chinBoneSize\":0.0,\"eyeBrownHigh\":0.0,\"cheeksWidth\":0.0,\"nosePeakLowering\":0.0,\"eyesOpening\":0.0,\"chinHole\":0.0,\"noseBoneTwist\":0.0,\"eyeBrownForward\":0.0,\"neckThickness\":0.0,\"nosePeakSize\":0.0,\"chinBoneLowering\":0.0,\"chinBoneLenght\":0.0,\"lipsThickness\":0.0,\"jawBoneWidth\":0.0,\"noseWidth\":0.0,\"jawBoneBackSize\":0.0},\"hair\":{\"style\":59,\"highlight\":2,\"texture\":0,\"color\":3}}', '[{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"},{\"val\":227100,\"percent\":22.71,\"name\":\"hunger\"},{\"val\":308200,\"percent\":30.81999999999999,\"name\":\"thirst\"}]', 'nofaction', 0, 'Wes', 'Owens ', '20/01/2000', 'm', 185, 0, 1110, NULL, '[]', 0, '853-500-6651', NULL, NULL),
('8106dff4091f67c3d6fc1b736e35cb15cfde3032', '{\"black_money\":0,\"bank\":10000,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"x\":417.75823974609377,\"heading\":235.2755889892578,\"z\":28.5216064453125,\"y\":-1611.7978515625}', '{\"eyeColor\":-1,\"headOverlays\":{\"bodyBlemishes\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"moleAndFreckles\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"blemishes\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"blush\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"eyebrows\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"makeUp\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"chestHair\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"ageing\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"lipstick\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"sunDamage\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"complexion\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"beard\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0}},\"tattoos\":[],\"hair\":{\"color\":0,\"texture\":0,\"style\":45,\"highlight\":0},\"props\":[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":-1,\"drawable\":-1,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":-1,\"drawable\":-1,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}],\"model\":\"mp_m_freemode_01\",\"headBlend\":{\"skinSecond\":0,\"skinMix\":0,\"shapeThird\":0,\"skinFirst\":0,\"shapeFirst\":0,\"shapeSecond\":0,\"thirdMix\":0,\"shapeMix\":0,\"skinThird\":0},\"components\":[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":0},{\"component_id\":3,\"texture\":0,\"drawable\":0},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":20},{\"component_id\":8,\"texture\":0,\"drawable\":3},{\"component_id\":4,\"texture\":0,\"drawable\":20},{\"component_id\":6,\"texture\":0,\"drawable\":2}],\"faceFeatures\":{\"noseBoneHigh\":0,\"chinBoneSize\":0,\"chinBoneLenght\":0,\"chinBoneLowering\":0,\"jawBoneWidth\":0,\"cheeksWidth\":0,\"nosePeakLowering\":0,\"eyesOpening\":0,\"nosePeakHigh\":0,\"eyeBrownForward\":0,\"lipsThickness\":0,\"neckThickness\":0,\"cheeksBoneWidth\":0,\"eyeBrownHigh\":0,\"noseBoneTwist\":0,\"chinHole\":0,\"cheeksBoneHigh\":0,\"jawBoneBackSize\":0,\"nosePeakSize\":0,\"noseWidth\":0}}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"hunger\",\"val\":928600,\"percent\":92.86},{\"name\":\"thirst\",\"val\":946450,\"percent\":94.645}]', 'nofaction', 0, 'Pedro', 'Pereira', '07/02/2000', 'm', 185, 0, NULL, NULL, '[]', 0, '117-500-3713', NULL, NULL),
('96accefda755458c14ad75ae3824d5ecc56e8638', '{\"bank\":121943,\"black_money\":10022145,\"money\":1698988}', 'admin', '[{\"name\":\"WEAPON_STUNGUN\",\"metadata\":{\"durability\":100,\"registered\":\"Franck Graves\",\"components\":[]},\"slot\":1,\"count\":1},{\"name\":\"WEAPON_TACTICALRIFLE\",\"metadata\":{\"durability\":91.11999999999972,\"ammo\":20,\"registered\":\"Franck Graves\",\"components\":[],\"serial\":\"128077DJP787128\"},\"slot\":2,\"count\":1},{\"name\":\"WEAPON_COMBATPISTOL\",\"metadata\":{\"durability\":73.80000000000149,\"ammo\":12,\"registered\":\"Franck Graves\",\"components\":[\"at_flashlight\"],\"serial\":\"939297AHE254620\"},\"slot\":3,\"count\":1},{\"name\":\"WEAPON_BZGAS\",\"metadata\":{\"durability\":100,\"components\":[]},\"slot\":4,\"count\":9},{\"name\":\"badge_bcso\",\"slot\":5,\"count\":1},{\"name\":\"badge_lspd\",\"slot\":6,\"count\":1},{\"name\":\"phone\",\"slot\":7,\"count\":1},{\"name\":\"toolbox\",\"slot\":8,\"count\":2},{\"name\":\"badge_us\",\"slot\":9,\"count\":1},{\"name\":\"skateboard\",\"slot\":10,\"count\":1},{\"name\":\"WEAPON_FLASHLIGHT\",\"metadata\":{\"durability\":98.90000000000006,\"components\":[]},\"slot\":11,\"count\":1},{\"name\":\"safecracker\",\"slot\":16,\"count\":1},{\"name\":\"idcard\",\"metadata\":{\"playerInfo\":{\"firstname\":\"Franck\",\"lastname\":\"Graves\",\"sex\":\"m\",\"height\":183,\"dateofbirth\":\"14/11/1997\"},\"identifier\":\"96accefda755458c14ad75ae3824d5ecc56e8638\"},\"slot\":17,\"count\":1},{\"name\":\"ammo-9\",\"slot\":21,\"count\":90},{\"name\":\"lockpick\",\"slot\":22,\"count\":4},{\"name\":\"money\",\"slot\":23,\"count\":1698988},{\"name\":\"black_money\",\"slot\":24,\"count\":10022145},{\"name\":\"mechanic_tools\",\"slot\":25,\"count\":1}]', 'bahamas', 3, '[]', '{\"y\":-976.997802734375,\"x\":47.9076919555664,\"heading\":240.94488525390626,\"z\":36.019775390625}', '{\"components\":[{\"drawable\":0,\"component_id\":0,\"texture\":0},{\"drawable\":52,\"component_id\":1,\"texture\":0},{\"drawable\":0,\"component_id\":2,\"texture\":0},{\"drawable\":20,\"component_id\":3,\"texture\":0},{\"drawable\":46,\"component_id\":4,\"texture\":0},{\"drawable\":0,\"component_id\":5,\"texture\":0},{\"drawable\":25,\"component_id\":6,\"texture\":0},{\"drawable\":0,\"component_id\":7,\"texture\":0},{\"drawable\":105,\"component_id\":8,\"texture\":0},{\"drawable\":27,\"component_id\":9,\"texture\":0},{\"drawable\":0,\"component_id\":10,\"texture\":0},{\"drawable\":110,\"component_id\":11,\"texture\":0}],\"eyeColor\":-1,\"headOverlays\":{\"blemishes\":{\"style\":0,\"color\":0,\"secondColor\":0,\"opacity\":0},\"chestHair\":{\"style\":0,\"color\":0,\"secondColor\":0,\"opacity\":0},\"lipstick\":{\"style\":0,\"color\":0,\"secondColor\":0,\"opacity\":0},\"ageing\":{\"style\":0,\"color\":0,\"secondColor\":0,\"opacity\":0},\"makeUp\":{\"style\":0,\"color\":0,\"secondColor\":0,\"opacity\":0},\"bodyBlemishes\":{\"style\":0,\"color\":0,\"secondColor\":0,\"opacity\":0},\"blush\":{\"style\":0,\"color\":0,\"secondColor\":0,\"opacity\":0},\"eyebrows\":{\"style\":0,\"color\":0,\"secondColor\":0,\"opacity\":0},\"moleAndFreckles\":{\"style\":0,\"color\":0,\"secondColor\":0,\"opacity\":0},\"complexion\":{\"style\":0,\"color\":0,\"secondColor\":0,\"opacity\":0},\"beard\":{\"style\":0,\"color\":0,\"secondColor\":0,\"opacity\":0},\"sunDamage\":{\"style\":0,\"color\":0,\"secondColor\":0,\"opacity\":0}},\"model\":\"mp_m_freemode_01\",\"tattoos\":[],\"headBlend\":{\"skinSecond\":0,\"skinFirst\":0,\"skinMix\":0,\"shapeMix\":0,\"thirdMix\":0,\"shapeSecond\":0,\"skinThird\":0,\"shapeThird\":0,\"shapeFirst\":0},\"props\":[{\"prop_id\":0,\"drawable\":150,\"texture\":0},{\"prop_id\":1,\"drawable\":-1,\"texture\":-1},{\"prop_id\":2,\"drawable\":-1,\"texture\":-1},{\"prop_id\":6,\"drawable\":-1,\"texture\":-1},{\"prop_id\":7,\"drawable\":-1,\"texture\":-1}],\"hair\":{\"style\":0,\"color\":0,\"texture\":0,\"highlight\":0},\"faceFeatures\":{\"eyeBrownForward\":0,\"chinHole\":0,\"neckThickness\":0,\"noseWidth\":0,\"cheeksWidth\":0,\"noseBoneTwist\":0,\"cheeksBoneWidth\":0,\"jawBoneBackSize\":0,\"cheeksBoneHigh\":0,\"eyeBrownHigh\":0,\"eyesOpening\":0,\"chinBoneLowering\":0,\"chinBoneLenght\":0,\"nosePeakHigh\":0,\"nosePeakLowering\":0,\"jawBoneWidth\":0,\"lipsThickness\":0,\"nosePeakSize\":0,\"noseBoneHigh\":0,\"chinBoneSize\":0}}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0},{\"val\":999300,\"name\":\"hunger\",\"percent\":99.92999999999999},{\"val\":999475,\"name\":\"thirst\",\"percent\":99.9475}]', 'ballas', 3, 'Franck', 'Graves', '14/11/1997', 'm', 183, 0, 0, NULL, '[]', 0, '977-015-0768', NULL, '[]'),
('990a2a48e4c40594a6158d037a570d920231a608', '{\"bank\":5000,\"money\":3790,\"black_money\":0}', 'user', '[{\"count\":3790,\"slot\":1,\"name\":\"money\"},{\"count\":1,\"slot\":2,\"name\":\"phone\"},{\"count\":10,\"slot\":3,\"name\":\"burger\"},{\"count\":10,\"slot\":4,\"name\":\"water\"}]', 'realestateagent', 3, '[]', '{\"heading\":25.511812210083,\"x\":-214.06153869628907,\"y\":-604.5758056640625,\"z\":37.75537109375}', '{\"hair\":{\"highlight\":0,\"style\":8,\"texture\":0,\"color\":14},\"components\":[{\"drawable\":0,\"component_id\":0,\"texture\":0},{\"drawable\":0,\"component_id\":1,\"texture\":0},{\"drawable\":8,\"component_id\":2,\"texture\":0},{\"drawable\":10,\"component_id\":4,\"texture\":0},{\"drawable\":0,\"component_id\":5,\"texture\":0},{\"drawable\":10,\"component_id\":6,\"texture\":0},{\"drawable\":0,\"component_id\":7,\"texture\":0},{\"drawable\":0,\"component_id\":9,\"texture\":0},{\"drawable\":10,\"component_id\":8,\"texture\":0},{\"drawable\":28,\"component_id\":11,\"texture\":0},{\"drawable\":0,\"component_id\":10,\"texture\":0},{\"drawable\":17,\"component_id\":3,\"texture\":0}],\"props\":[{\"drawable\":-1,\"prop_id\":0,\"texture\":-1},{\"drawable\":-1,\"prop_id\":1,\"texture\":-1},{\"drawable\":-1,\"prop_id\":2,\"texture\":-1},{\"drawable\":-1,\"prop_id\":6,\"texture\":-1},{\"drawable\":-1,\"prop_id\":7,\"texture\":-1}],\"headOverlays\":{\"complexion\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"blush\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"ageing\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"lipstick\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"bodyBlemishes\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"moleAndFreckles\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"sunDamage\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"eyebrows\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"makeUp\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"chestHair\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"beard\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"blemishes\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0}},\"tattoos\":[],\"eyeColor\":-1,\"faceFeatures\":{\"jawBoneBackSize\":0,\"lipsThickness\":0,\"eyeBrownHigh\":0,\"nosePeakLowering\":0,\"chinBoneLenght\":0,\"jawBoneWidth\":0,\"noseWidth\":0,\"eyesOpening\":0,\"noseBoneHigh\":0,\"chinBoneLowering\":0,\"nosePeakSize\":0,\"cheeksWidth\":0,\"chinBoneSize\":0,\"cheeksBoneHigh\":0,\"cheeksBoneWidth\":0,\"neckThickness\":0,\"eyeBrownForward\":0,\"noseBoneTwist\":0,\"nosePeakHigh\":0,\"chinHole\":0},\"model\":\"mp_m_freemode_01\",\"headBlend\":{\"skinMix\":0,\"thirdMix\":0,\"skinFirst\":2,\"skinSecond\":9,\"shapeMix\":0,\"shapeThird\":0,\"skinThird\":0,\"shapeSecond\":0,\"shapeFirst\":0}}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"hunger\",\"val\":345200,\"percent\":34.52},{\"name\":\"thirst\",\"val\":508900,\"percent\":50.89}]', 'nofaction', 0, 'Isaac', 'James', '01/06/1997', 'm', 160, 0, 1234, NULL, '[]', 0, '448-593-4226', NULL, NULL),
('9c9e1295d88065d75789d74b17abb9694d9e91e0', '{\"bank\":4000,\"black_money\":0,\"money\":576}', 'user', '[{\"count\":1,\"slot\":1,\"name\":\"WEAPON_PISTOL\",\"metadata\":{\"serial\":\"680634POL643174\",\"ammo\":0,\"durability\":100,\"components\":[],\"registered\":\"Alvaro Perez\"}},{\"count\":1,\"slot\":2,\"name\":\"WEAPON_STUNGUN\",\"metadata\":{\"components\":[],\"durability\":100,\"registered\":\"Alvaro Perez\"}},{\"count\":1,\"slot\":3,\"name\":\"WEAPON_TACTICALRIFLE\",\"metadata\":{\"serial\":\"312074POL199427\",\"ammo\":0,\"durability\":99.7,\"components\":[],\"registered\":\"Alvaro Perez\"}},{\"count\":1,\"slot\":4,\"name\":\"WEAPON_NIGHTSTICK\",\"metadata\":{\"durability\":100,\"components\":[]}},{\"count\":1,\"slot\":5,\"name\":\"WEAPON_FLASHLIGHT\",\"metadata\":{\"durability\":100,\"components\":[]}},{\"count\":11,\"name\":\"hotdog\",\"slot\":6},{\"count\":1,\"slot\":7,\"name\":\"farmlicense\",\"metadata\":{\"playerInfo\":{\"height\":185,\"firstname\":\"Alvaro\",\"sex\":\"m\",\"lastname\":\"Perez\",\"dateofbirth\":\"25/03/2000\"},\"identifier\":\"9c9e1295d88065d75789d74b17abb9694d9e91e0\"}},{\"count\":576,\"name\":\"money\",\"slot\":8},{\"count\":9,\"name\":\"water\",\"slot\":9},{\"count\":221,\"name\":\"ammo-9\",\"slot\":10},{\"count\":100,\"name\":\"ammo-rifle\",\"slot\":11}]', 'police', 7, '[]', '{\"z\":25.6907958984375,\"y\":-981.3098754882813,\"x\":459.0989074707031,\"heading\":289.13385009765627}', '{\"eyeColor\":2,\"model\":\"mp_m_freemode_01\",\"tattoos\":{\"ZONE_HAIR\":[{\"hashFemale\":\"FM_F_Hair_003_a\",\"hashMale\":\"FM_M_Hair_003_a\",\"collection\":\"multiplayer_overlays\",\"zone\":\"ZONE_HAIR\",\"label\":\"hair-0-186\",\"name\":\"hair-0-186\"}]},\"headBlend\":{\"shapeThird\":8,\"thirdMix\":0.0,\"skinThird\":6,\"skinMix\":0.3,\"shapeMix\":0.0,\"shapeSecond\":19,\"shapeFirst\":0,\"skinFirst\":32,\"skinSecond\":0},\"headOverlays\":{\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"beard\":{\"style\":3,\"color\":61,\"opacity\":1.0,\"secondColor\":0},\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"chestHair\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"eyebrows\":{\"style\":12,\"color\":61,\"opacity\":1.0,\"secondColor\":0},\"makeUp\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"complexion\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"lipstick\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blush\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0}},\"props\":[{\"drawable\":10,\"texture\":6,\"prop_id\":0},{\"drawable\":5,\"texture\":5,\"prop_id\":1},{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":4,\"texture\":1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7}],\"components\":[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":1},{\"drawable\":12,\"texture\":3,\"component_id\":2},{\"drawable\":19,\"texture\":0,\"component_id\":3},{\"drawable\":46,\"texture\":0,\"component_id\":4},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":25,\"texture\":0,\"component_id\":6},{\"drawable\":0,\"texture\":0,\"component_id\":7},{\"drawable\":105,\"texture\":0,\"component_id\":8},{\"drawable\":28,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":101,\"texture\":2,\"component_id\":11}],\"faceFeatures\":{\"cheeksBoneWidth\":0.0,\"nosePeakHigh\":-0.1,\"jawBoneWidth\":-0.4,\"noseBoneHigh\":0.1,\"chinBoneSize\":0.0,\"eyeBrownHigh\":0.0,\"cheeksWidth\":0.1,\"nosePeakLowering\":0.0,\"eyesOpening\":0.0,\"chinHole\":0.0,\"noseBoneTwist\":0.0,\"eyeBrownForward\":0.0,\"neckThickness\":-1.0,\"nosePeakSize\":-0.2,\"chinBoneLowering\":0.0,\"jawBoneBackSize\":0.8,\"lipsThickness\":0.0,\"cheeksBoneHigh\":-0.3,\"noseWidth\":-0.5,\"chinBoneLenght\":0.0},\"hair\":{\"style\":12,\"color\":61,\"texture\":3,\"highlight\":61}}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"hunger\",\"val\":782500,\"percent\":78.25},{\"name\":\"thirst\",\"val\":836875,\"percent\":83.6875}]', 'nofaction', 0, 'Alvaro', 'Perez', '25/03/2000', 'm', 185, 0, 9898, NULL, '[]', 0, '810-688-8141', NULL, NULL),
('9e390c19582fb0a6402410b782e579bf267f6806', '{\"black_money\":0,\"bank\":8160,\"money\":0}', 'user', '[{\"count\":1,\"name\":\"safecracker\",\"slot\":1},{\"count\":1,\"name\":\"WEAPON_PISTOL\",\"slot\":2,\"metadata\":{\"ammo\":0,\"durability\":100,\"registered\":\"Njnd Sdfsdf\",\"serial\":\"298498TZT279261\",\"components\":[]}},{\"count\":9,\"name\":\"safecracker\",\"slot\":3}]', 'bcso', 6, '[]', '{\"heading\":138.8976287841797,\"z\":41.984619140625,\"y\":-412.31207275390627,\"x\":-1546.10107421875}', '{\"headOverlays\":{\"chestHair\":{\"secondColor\":0,\"opacity\":0,\"style\":0,\"color\":0},\"bodyBlemishes\":{\"secondColor\":0,\"opacity\":0,\"style\":0,\"color\":0},\"complexion\":{\"secondColor\":0,\"opacity\":0,\"style\":0,\"color\":0},\"eyebrows\":{\"secondColor\":0,\"opacity\":0,\"style\":0,\"color\":0},\"makeUp\":{\"secondColor\":0,\"opacity\":0,\"style\":0,\"color\":0},\"blush\":{\"secondColor\":0,\"opacity\":0,\"style\":0,\"color\":0},\"blemishes\":{\"secondColor\":0,\"opacity\":0,\"style\":0,\"color\":0},\"ageing\":{\"secondColor\":0,\"opacity\":0,\"style\":0,\"color\":0},\"lipstick\":{\"secondColor\":0,\"opacity\":0,\"style\":0,\"color\":0},\"beard\":{\"secondColor\":0,\"opacity\":0,\"style\":0,\"color\":0},\"moleAndFreckles\":{\"secondColor\":0,\"opacity\":0,\"style\":0,\"color\":0},\"sunDamage\":{\"secondColor\":0,\"opacity\":0,\"style\":0,\"color\":0}},\"model\":\"mp_m_freemode_01\",\"components\":[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":1},{\"texture\":0,\"drawable\":0,\"component_id\":2},{\"texture\":0,\"drawable\":0,\"component_id\":3},{\"texture\":0,\"drawable\":0,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":0,\"component_id\":6},{\"texture\":0,\"drawable\":0,\"component_id\":7},{\"texture\":0,\"drawable\":0,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":0,\"drawable\":0,\"component_id\":11}],\"headBlend\":{\"skinSecond\":0,\"skinMix\":0,\"skinFirst\":0,\"skinThird\":0,\"thirdMix\":0,\"shapeThird\":0,\"shapeFirst\":0,\"shapeSecond\":0,\"shapeMix\":0},\"faceFeatures\":{\"eyesOpening\":0,\"eyeBrownHigh\":0,\"chinHole\":0,\"noseBoneHigh\":0,\"cheeksBoneWidth\":0,\"jawBoneBackSize\":0,\"chinBoneLenght\":0,\"lipsThickness\":0,\"nosePeakSize\":0,\"noseWidth\":0,\"jawBoneWidth\":0,\"chinBoneSize\":0,\"chinBoneLowering\":0,\"cheeksWidth\":0,\"eyeBrownForward\":0,\"neckThickness\":0,\"nosePeakLowering\":0,\"nosePeakHigh\":0,\"noseBoneTwist\":0,\"cheeksBoneHigh\":0},\"tattoos\":[],\"props\":[{\"prop_id\":0,\"drawable\":-1,\"texture\":-1},{\"prop_id\":1,\"drawable\":-1,\"texture\":-1},{\"prop_id\":2,\"drawable\":-1,\"texture\":-1},{\"prop_id\":6,\"drawable\":-1,\"texture\":-1},{\"prop_id\":7,\"drawable\":-1,\"texture\":-1}],\"hair\":{\"texture\":0,\"color\":0,\"style\":0,\"highlight\":0},\"eyeColor\":-1}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0},{\"percent\":58.08999999999999,\"name\":\"hunger\",\"val\":580900},{\"percent\":68.56750000000001,\"name\":\"thirst\",\"val\":685675}]', 'nofaction', 0, 'Njnd', 'Sdfsdf', '05/11/2005', 'm', 165, 0, NULL, NULL, '[]', 0, '029-399-1638', NULL, NULL),
('a4a6f0488f06c1ebd4dac9b8542eae635b030699', '{\"bank\":10000,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":31.2,\"y\":-955.3,\"x\":-269.4,\"heading\":205.8}', NULL, '[{\"name\":\"drunk\",\"percent\":0.0,\"val\":0},{\"name\":\"hunger\",\"percent\":96.43,\"val\":964300},{\"name\":\"thirst\",\"percent\":97.3225,\"val\":973225}]', 'nofaction', 0, 'Carlos', 'Coquillet', '05/12/2000', 'm', 188, 0, NULL, NULL, '[]', 0, '488-338-9410', NULL, NULL),
('ac615aeca14e01bfd0b388f59dd5c8ee7e33c454', '{\"bank\":5000,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"heading\":306.1417236328125,\"x\":-1457.129638671875,\"y\":-716.887939453125,\"z\":24.056396484375}', '{\"model\":\"mp_m_freemode_01\",\"components\":[{\"texture\":0,\"component_id\":0,\"drawable\":0},{\"texture\":0,\"component_id\":2,\"drawable\":0},{\"texture\":0,\"component_id\":3,\"drawable\":0},{\"texture\":0,\"component_id\":4,\"drawable\":0},{\"texture\":0,\"component_id\":5,\"drawable\":0},{\"texture\":0,\"component_id\":6,\"drawable\":0},{\"texture\":0,\"component_id\":10,\"drawable\":0},{\"texture\":0,\"component_id\":1,\"drawable\":0},{\"texture\":0,\"component_id\":7,\"drawable\":0},{\"texture\":0,\"component_id\":9,\"drawable\":50},{\"texture\":0,\"component_id\":11,\"drawable\":405},{\"texture\":0,\"component_id\":8,\"drawable\":129}],\"headBlend\":{\"skinMix\":0,\"shapeThird\":0,\"thirdMix\":0,\"skinFirst\":37,\"shapeSecond\":2,\"shapeMix\":0,\"skinSecond\":0,\"shapeFirst\":10,\"skinThird\":0},\"tattoos\":[],\"faceFeatures\":{\"eyesOpening\":0,\"chinBoneLenght\":0,\"chinBoneLowering\":0,\"chinBoneSize\":0,\"cheeksBoneHigh\":0,\"jawBoneBackSize\":0,\"eyeBrownHigh\":0,\"noseBoneTwist\":0,\"nosePeakLowering\":0,\"eyeBrownForward\":0,\"lipsThickness\":0,\"chinHole\":0,\"nosePeakSize\":0,\"nosePeakHigh\":0,\"cheeksBoneWidth\":0,\"jawBoneWidth\":0,\"cheeksWidth\":0,\"noseWidth\":0,\"neckThickness\":0,\"noseBoneHigh\":0},\"headOverlays\":{\"blush\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"eyebrows\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"sunDamage\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"makeUp\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"beard\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"complexion\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"ageing\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"chestHair\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"moleAndFreckles\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"bodyBlemishes\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"blemishes\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"lipstick\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0}},\"eyeColor\":0,\"props\":[{\"texture\":-1,\"prop_id\":0,\"drawable\":-1},{\"texture\":-1,\"prop_id\":1,\"drawable\":-1},{\"texture\":-1,\"prop_id\":2,\"drawable\":-1},{\"texture\":-1,\"prop_id\":6,\"drawable\":-1},{\"texture\":-1,\"prop_id\":7,\"drawable\":-1}],\"hair\":{\"texture\":0,\"highlight\":0,\"style\":0,\"color\":0}}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"hunger\",\"val\":943300,\"percent\":94.33},{\"name\":\"thirst\",\"val\":957475,\"percent\":95.7475}]', 'nofaction', 0, 'Kenny', 'Legrand', '25/11/2005', 'm', 180, 0, NULL, NULL, '[]', 0, '663-939-7930', NULL, NULL);
INSERT INTO `users` (`identifier`, `accounts`, `group`, `inventory`, `job`, `job_grade`, `loadout`, `position`, `skin`, `status`, `faction`, `faction_grade`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `pincode`, `last_property`, `tattoos`, `disabled`, `phone_number`, `callsign`, `metadata`) VALUES
('b2a5a9483cf6dfa135c531f9f4161d674934e5b1', '{\"bank\":6350,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":30.7120361328125,\"y\":-871.5823974609375,\"x\":202.2989044189453,\"heading\":170.0787353515625}', '{\"eyeColor\":5,\"props\":[{\"drawable\":-1,\"texture\":-1,\"prop_id\":0},{\"drawable\":-1,\"texture\":-1,\"prop_id\":1},{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7}],\"tattoos\":[],\"headBlend\":{\"shapeThird\":0,\"thirdMix\":1,\"skinThird\":14,\"skinMix\":0,\"shapeMix\":0,\"shapeSecond\":0,\"shapeFirst\":0,\"skinFirst\":0,\"skinSecond\":0},\"headOverlays\":{\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"beard\":{\"style\":2,\"color\":0,\"opacity\":1,\"secondColor\":0},\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"chestHair\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"eyebrows\":{\"style\":0,\"color\":0,\"opacity\":1,\"secondColor\":0},\"makeUp\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"complexion\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"lipstick\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blush\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0}},\"components\":[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":1},{\"drawable\":0,\"texture\":0,\"component_id\":2},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":0,\"texture\":0,\"component_id\":7},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":14,\"texture\":0,\"component_id\":11},{\"drawable\":15,\"texture\":0,\"component_id\":8},{\"drawable\":3,\"texture\":0,\"component_id\":3},{\"drawable\":10,\"texture\":0,\"component_id\":4},{\"drawable\":7,\"texture\":0,\"component_id\":6}],\"model\":\"mp_m_freemode_01\",\"faceFeatures\":{\"cheeksBoneWidth\":0,\"nosePeakHigh\":0,\"cheeksBoneHigh\":0,\"jawBoneBackSize\":0,\"chinBoneSize\":0,\"eyeBrownHigh\":0,\"cheeksWidth\":0,\"nosePeakLowering\":0,\"eyesOpening\":0,\"chinHole\":0,\"noseBoneTwist\":0,\"eyeBrownForward\":0,\"neckThickness\":0,\"nosePeakSize\":0,\"chinBoneLowering\":0,\"noseBoneHigh\":0,\"lipsThickness\":0,\"chinBoneLenght\":0,\"noseWidth\":0,\"jawBoneWidth\":0},\"hair\":{\"style\":14,\"color\":0,\"texture\":0,\"highlight\":0}}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"hunger\",\"val\":916500,\"percent\":91.64999999999999},{\"name\":\"thirst\",\"val\":937375,\"percent\":93.7375}]', 'nofaction', 0, 'Johnson', 'Dwayne', '03/10/1995', 'm', 180, 0, NULL, NULL, '[]', 0, '035-885-2772', NULL, NULL),
('b85884b41c5619093ffb28377e571de704dd6bd6', '{\"black_money\":0,\"bank\":27724,\"money\":1000}', 'user', '[{\"name\":\"WEAPON_PISTOL\",\"metadata\":{\"durability\":100,\"ammo\":0,\"registered\":\"Juan Capone\",\"components\":[],\"serial\":\"277828QLL433441\"},\"count\":1,\"slot\":1},{\"name\":\"idcard\",\"metadata\":{\"playerInfo\":{\"lastname\":\"Capone\",\"height\":180,\"sex\":\"m\",\"firstname\":\"Juan\",\"dateofbirth\":\"27/06/2000\"},\"identifier\":\"b85884b41c5619093ffb28377e571de704dd6bd6\"},\"count\":1,\"slot\":2},{\"name\":\"epinette\",\"count\":1,\"slot\":3},{\"name\":\"raisinrouge\",\"count\":85,\"slot\":4},{\"name\":\"epinette\",\"count\":1,\"slot\":5},{\"name\":\"raisinblanc\",\"count\":246,\"slot\":6},{\"name\":\"money\",\"count\":1000,\"slot\":7},{\"name\":\"jusraisinblanc\",\"count\":4,\"slot\":8}]', 'vigneron', 3, '[]', '{\"x\":573.8109741210938,\"heading\":76.53543853759766,\"z\":24.7303466796875,\"y\":-408.1186828613281}', '{\"eyeColor\":2,\"model\":\"mp_m_freemode_01\",\"tattoos\":{\"ZONE_HAIR\":[{\"zone\":\"ZONE_HAIR\",\"hashMale\":\"FM_M_Hair_003_d\",\"collection\":\"multiplayer_overlays\",\"label\":\"hair-0-189\",\"hashFemale\":\"FM_F_Hair_003_d\",\"name\":\"hair-0-189\"}]},\"headBlend\":{\"shapeThird\":0,\"thirdMix\":0,\"skinThird\":0,\"skinMix\":0,\"shapeMix\":0.4,\"shapeSecond\":31,\"shapeFirst\":0,\"skinSecond\":0,\"skinFirst\":6},\"headOverlays\":{\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"beard\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"chestHair\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"eyebrows\":{\"style\":29,\"color\":0,\"opacity\":0.9,\"secondColor\":0},\"makeUp\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"complexion\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"lipstick\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blush\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0}},\"components\":[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":1},{\"drawable\":0,\"texture\":0,\"component_id\":2},{\"drawable\":0,\"texture\":0,\"component_id\":7},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":4,\"texture\":0,\"component_id\":3},{\"drawable\":142,\"texture\":0,\"component_id\":11},{\"drawable\":150,\"texture\":2,\"component_id\":8},{\"drawable\":49,\"texture\":1,\"component_id\":4},{\"drawable\":10,\"texture\":0,\"component_id\":6},{\"drawable\":0,\"texture\":0,\"component_id\":10}],\"props\":[{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7},{\"drawable\":7,\"texture\":0,\"prop_id\":1},{\"drawable\":-1,\"texture\":0,\"prop_id\":0}],\"faceFeatures\":{\"cheeksBoneWidth\":0,\"nosePeakHigh\":0,\"jawBoneWidth\":0,\"noseBoneHigh\":0,\"chinBoneSize\":0,\"eyeBrownHigh\":0,\"cheeksWidth\":0,\"nosePeakLowering\":0,\"eyesOpening\":0,\"chinHole\":0,\"noseBoneTwist\":0,\"eyeBrownForward\":0,\"neckThickness\":0,\"nosePeakSize\":0,\"chinBoneLowering\":0,\"chinBoneLenght\":0,\"lipsThickness\":0,\"cheeksBoneHigh\":0,\"noseWidth\":0,\"jawBoneBackSize\":0},\"hair\":{\"style\":77,\"highlight\":32,\"texture\":0,\"color\":0}}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0},{\"percent\":85.37,\"name\":\"hunger\",\"val\":853700},{\"percent\":89.0275,\"name\":\"thirst\",\"val\":890275}]', 'marabunta', 2, 'Juan', 'Capone', '27/06/2000', 'm', 180, 0, 2006, NULL, '[]', 0, '968-942-9582', NULL, NULL),
('bac5ad709b7410826ee1f7849b40d231b6b7895c', '{\"black_money\":0,\"bank\":0,\"money\":7138}', 'user', '[{\"count\":7138,\"name\":\"money\",\"slot\":1},{\"metadata\":{\"plate\":\"GDNV6843\"},\"count\":1,\"name\":\"carkey\",\"slot\":15},{\"count\":1,\"name\":\"drill\",\"slot\":16},{\"count\":1,\"name\":\"ziptie\",\"slot\":17},{\"metadata\":{\"identifier\":\"bac5ad709b7410826ee1f7849b40d231b6b7895c\",\"playerInfo\":{\"sex\":\"m\",\"dateofbirth\":\"21/09/2000\",\"lastname\":\"Ferrera\",\"height\":195,\"firstname\":\"Rico\"}},\"count\":1,\"name\":\"farmlicense\",\"slot\":4},{\"metadata\":{\"identifier\":\"bac5ad709b7410826ee1f7849b40d231b6b7895c\",\"playerInfo\":{\"sex\":\"m\",\"dateofbirth\":\"21/09/2000\",\"lastname\":\"Ferrera\",\"height\":195,\"firstname\":\"Rico\"}},\"count\":1,\"name\":\"idcard\",\"slot\":5},{\"count\":1,\"name\":\"safecracker\",\"slot\":21},{\"count\":1,\"name\":\"lockpick\",\"slot\":22},{\"metadata\":{\"degrade\":6000,\"durability\":0},\"count\":1,\"name\":\"vape\",\"slot\":24},{\"count\":1,\"name\":\"phone\",\"slot\":10},{\"metadata\":{\"components\":[],\"durability\":100},\"count\":1,\"name\":\"WEAPON_SWITCHBLADE\",\"slot\":19},{\"count\":6,\"name\":\"water\",\"slot\":20},{\"count\":5,\"name\":\"hotdog\",\"slot\":25}]', 'unemployed', 0, '[]', '{\"z\":23.97216796875,\"y\":-1000.1142578125,\"x\":-447.74505615234377,\"heading\":0.0}', '{\"eyeColor\":-1,\"components\":[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":1},{\"drawable\":43,\"texture\":0,\"component_id\":2},{\"drawable\":28,\"texture\":0,\"component_id\":4},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":21,\"texture\":0,\"component_id\":6},{\"drawable\":116,\"texture\":6,\"component_id\":7},{\"drawable\":15,\"texture\":0,\"component_id\":8},{\"drawable\":20,\"texture\":6,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":349,\"texture\":3,\"component_id\":11},{\"drawable\":96,\"texture\":0,\"component_id\":3}],\"tattoos\":{\"ZONE_TORSO\":[{\"opacity\":0.1,\"hashFemale\":\"FM_Tat_F_036\",\"zone\":\"ZONE_TORSO\",\"collection\":\"multiplayer_overlays\",\"hashMale\":\"FM_Tat_M_036\",\"label\":\"Way of the Gun\",\"name\":\"TAT_FM_237\"},{\"opacity\":0.1,\"hashFemale\":\"MP_Sum2_Tat_041_F\",\"zone\":\"ZONE_TORSO\",\"collection\":\"mpsum2_overlays\",\"hashMale\":\"MP_Sum2_Tat_041_M\",\"label\":\"Branched Werewolf\",\"name\":\"TAT_SB_041\"}],\"ZONE_LEFT_ARM\":[{\"opacity\":0.1,\"hashFemale\":\"MP_Sum2_Tat_049_F\",\"zone\":\"ZONE_LEFT_ARM\",\"collection\":\"mpsum2_overlays\",\"hashMale\":\"MP_Sum2_Tat_049_M\",\"label\":\"Demon Drummer\",\"name\":\"TAT_SB_049\"}],\"ZONE_RIGHT_ARM\":[{\"opacity\":0.1,\"hashFemale\":\"MP_Sum2_Tat_013_F\",\"zone\":\"ZONE_RIGHT_ARM\",\"collection\":\"mpsum2_overlays\",\"hashMale\":\"MP_Sum2_Tat_013_M\",\"label\":\"Weapon Sleeve\",\"name\":\"TAT_SB_013\"}],\"ZONE_HEAD\":[{\"opacity\":0.4,\"hashFemale\":\"MP_MP_Stunt_tat_004_F\",\"zone\":\"ZONE_HEAD\",\"collection\":\"mpstunt_overlays\",\"hashMale\":\"MP_MP_Stunt_tat_004_M\",\"label\":\"Scorpion\",\"name\":\"TAT_ST_004\"},{\"opacity\":0.1,\"hashFemale\":\"\",\"zone\":\"ZONE_HEAD\",\"collection\":\"mpbusiness_overlays\",\"hashMale\":\"MP_Buis_M_Neck_000\",\"label\":\"Cash is King\",\"name\":\"TAT_BUS_005\"}]},\"headBlend\":{\"shapeThird\":0,\"thirdMix\":0,\"skinThird\":0,\"skinMix\":0,\"skinSecond\":0,\"shapeSecond\":0,\"shapeFirst\":44,\"skinFirst\":5,\"shapeMix\":0},\"headOverlays\":{\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"beard\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"chestHair\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"eyebrows\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"makeUp\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"complexion\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"lipstick\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blush\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0}},\"model\":\"mp_m_freemode_01\",\"props\":[{\"drawable\":12,\"texture\":0,\"prop_id\":0},{\"drawable\":7,\"texture\":0,\"prop_id\":1},{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":6,\"texture\":0,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7}],\"faceFeatures\":{\"cheeksBoneWidth\":0,\"nosePeakHigh\":0,\"jawBoneWidth\":0,\"jawBoneBackSize\":0,\"chinBoneSize\":0,\"eyeBrownHigh\":0,\"cheeksWidth\":0,\"nosePeakLowering\":0,\"eyesOpening\":0,\"chinHole\":0,\"noseBoneTwist\":0,\"eyeBrownForward\":0,\"neckThickness\":0,\"nosePeakSize\":0,\"chinBoneLowering\":0,\"noseBoneHigh\":0,\"lipsThickness\":0,\"chinBoneLenght\":0,\"noseWidth\":0,\"cheeksBoneHigh\":0},\"hair\":{\"style\":43,\"color\":13,\"texture\":0,\"highlight\":0}}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0},{\"val\":251100,\"name\":\"hunger\",\"percent\":25.11},{\"val\":450825,\"name\":\"thirst\",\"percent\":45.08249999999999}]', 'vagos', 3, 'Rico', 'Ferrera', '21/09/2000', 'm', 195, 0, 2109, NULL, '[]', 0, '600-006-8904', NULL, '[]'),
('bcb294db06c3db5662aa1d59c8a70a4fde20455d', '{\"black_money\":0,\"bank\":5000,\"money\":2198}', 'user', '[{\"name\":\"money\",\"slot\":1,\"count\":2198},{\"name\":\"phone\",\"slot\":2,\"count\":1},{\"name\":\"WEAPON_SWITCHBLADE\",\"metadata\":{\"components\":[],\"durability\":99.80000000000001},\"slot\":3,\"count\":1},{\"name\":\"water\",\"slot\":5,\"count\":1}]', 'unemployed', 0, '[]', '{\"x\":-1154.5450439453126,\"heading\":0.0,\"z\":4.94873046875,\"y\":-1425.4022216796876}', '{\"components\":[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":1,\"drawable\":9},{\"component_id\":3,\"texture\":0,\"drawable\":26},{\"component_id\":4,\"texture\":0,\"drawable\":10},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":51},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":8,\"texture\":0,\"drawable\":15},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":3,\"drawable\":44}],\"headOverlays\":{\"bodyBlemishes\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"moleAndFreckles\":{\"opacity\":0.4,\"secondColor\":0,\"style\":2,\"color\":0},\"blemishes\":{\"opacity\":1,\"secondColor\":0,\"style\":5,\"color\":0},\"blush\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"eyebrows\":{\"opacity\":1,\"secondColor\":0,\"style\":12,\"color\":0},\"makeUp\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"complexion\":{\"opacity\":0.4,\"secondColor\":0,\"style\":2,\"color\":0},\"ageing\":{\"opacity\":0.8,\"secondColor\":0,\"style\":1,\"color\":0},\"lipstick\":{\"opacity\":0,\"secondColor\":0,\"style\":0,\"color\":0},\"chestHair\":{\"opacity\":1,\"secondColor\":0,\"style\":1,\"color\":0},\"sunDamage\":{\"opacity\":0.2,\"secondColor\":0,\"style\":2,\"color\":0},\"beard\":{\"opacity\":1,\"secondColor\":0,\"style\":3,\"color\":0}},\"tattoos\":[],\"hair\":{\"highlight\":0,\"texture\":1,\"style\":9,\"color\":0},\"props\":[{\"texture\":0,\"drawable\":12,\"prop_id\":0},{\"texture\":1,\"drawable\":5,\"prop_id\":1},{\"texture\":0,\"drawable\":3,\"prop_id\":2},{\"texture\":0,\"drawable\":0,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}],\"model\":\"mp_m_freemode_01\",\"headBlend\":{\"skinSecond\":0,\"skinMix\":0,\"shapeThird\":2,\"skinFirst\":4,\"thirdMix\":0,\"shapeSecond\":0,\"shapeFirst\":0,\"shapeMix\":0,\"skinThird\":0},\"eyeColor\":0,\"faceFeatures\":{\"noseBoneHigh\":0,\"chinBoneSize\":0,\"chinBoneLenght\":0,\"chinBoneLowering\":0,\"jawBoneWidth\":0,\"cheeksWidth\":0,\"chinHole\":0,\"eyesOpening\":0,\"nosePeakHigh\":0,\"eyeBrownForward\":-0.1,\"lipsThickness\":0,\"neckThickness\":0,\"cheeksBoneWidth\":0,\"cheeksBoneHigh\":0,\"noseBoneTwist\":0,\"noseWidth\":0,\"eyeBrownHigh\":0.1,\"jawBoneBackSize\":0,\"nosePeakSize\":0,\"nosePeakLowering\":0}}', '[{\"name\":\"drunk\",\"percent\":0.0,\"val\":0},{\"name\":\"hunger\",\"percent\":87.13,\"val\":871300},{\"name\":\"thirst\",\"percent\":90.3475,\"val\":903475}]', 'nofaction', 0, 'Diego', 'Fermino', '24/03/1995', 'm', 195, 0, 2330, NULL, '[]', 0, '269-371-4844', NULL, NULL),
('cbdb7c53e5efdca99eda924417c84d90cd7e28d3', '{\"black_money\":0,\"bank\":5000,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":2.050537109375,\"y\":-573.8241577148438,\"x\":490.1670227050781,\"heading\":93.54330444335938}', '{\"components\":[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":2},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":0,\"texture\":0,\"component_id\":1},{\"drawable\":15,\"texture\":0,\"component_id\":8},{\"drawable\":22,\"texture\":0,\"component_id\":6},{\"drawable\":8,\"texture\":0,\"component_id\":4},{\"drawable\":5,\"texture\":0,\"component_id\":3},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":37,\"texture\":0,\"component_id\":11},{\"drawable\":0,\"texture\":0,\"component_id\":7}],\"headOverlays\":{\"lipstick\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":0},\"moleAndFreckles\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":0},\"sunDamage\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":0},\"beard\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":0},\"ageing\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":0},\"chestHair\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":0},\"bodyBlemishes\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":0},\"makeUp\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":0},\"complexion\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":0},\"eyebrows\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":0},\"blush\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":0},\"blemishes\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":0}},\"headBlend\":{\"thirdMix\":0,\"skinSecond\":3,\"shapeMix\":0,\"skinFirst\":2,\"shapeThird\":2,\"skinThird\":7,\"shapeFirst\":6,\"skinMix\":0,\"shapeSecond\":6},\"faceFeatures\":{\"chinBoneLowering\":0,\"eyeBrownForward\":0,\"noseBoneTwist\":0,\"chinBoneSize\":0,\"nosePeakSize\":0.3,\"chinHole\":0,\"cheeksBoneHigh\":0,\"noseWidth\":0.9,\"lipsThickness\":0,\"jawBoneWidth\":0,\"neckThickness\":0,\"cheeksBoneWidth\":0,\"noseBoneHigh\":0.1,\"eyesOpening\":0,\"chinBoneLenght\":0,\"eyeBrownHigh\":0,\"jawBoneBackSize\":0,\"cheeksWidth\":0,\"nosePeakHigh\":-0.3,\"nosePeakLowering\":0},\"model\":\"mp_m_freemode_01\",\"hair\":{\"texture\":0,\"style\":25,\"color\":55,\"highlight\":10},\"eyeColor\":-1,\"props\":[{\"drawable\":-1,\"prop_id\":1,\"texture\":-1},{\"drawable\":-1,\"prop_id\":2,\"texture\":-1},{\"drawable\":-1,\"prop_id\":7,\"texture\":-1},{\"drawable\":7,\"prop_id\":0,\"texture\":0},{\"drawable\":7,\"prop_id\":6,\"texture\":0}],\"tattoos\":[]}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"hunger\",\"val\":866000,\"percent\":86.6},{\"name\":\"thirst\",\"val\":899500,\"percent\":89.95}]', 'nofaction', 0, 'Beben', 'Amaury', '01/02/2000', 'm', 180, 0, NULL, NULL, '[]', 0, '758-163-5371', NULL, NULL),
('ce71a2f5b6314cce16c9ec1dfa3a6be31a68d1c0', '{\"money\":0,\"bank\":6350,\"black_money\":0}', 'user', '[]', 'ambulance', 3, '[]', '{\"z\":40.6702880859375,\"heading\":195.59054565429688,\"x\":-1827.5076904296876,\"y\":-385.015380859375}', '{\"hair\":{\"highlight\":46,\"style\":73,\"texture\":0,\"color\":61},\"components\":[{\"drawable\":0,\"component_id\":0,\"texture\":0},{\"drawable\":0,\"component_id\":1,\"texture\":0},{\"drawable\":0,\"component_id\":2,\"texture\":0},{\"drawable\":0,\"component_id\":5,\"texture\":0},{\"drawable\":0,\"component_id\":9,\"texture\":0},{\"drawable\":0,\"component_id\":10,\"texture\":0},{\"drawable\":0,\"component_id\":7,\"texture\":0},{\"drawable\":191,\"component_id\":11,\"texture\":7},{\"drawable\":82,\"component_id\":8,\"texture\":3},{\"drawable\":22,\"component_id\":3,\"texture\":0},{\"drawable\":3,\"component_id\":4,\"texture\":2},{\"drawable\":6,\"component_id\":6,\"texture\":0}],\"props\":[{\"drawable\":-1,\"prop_id\":0,\"texture\":-1},{\"drawable\":-1,\"prop_id\":1,\"texture\":-1},{\"drawable\":-1,\"prop_id\":2,\"texture\":-1},{\"drawable\":-1,\"prop_id\":6,\"texture\":-1},{\"drawable\":-1,\"prop_id\":7,\"texture\":-1}],\"headOverlays\":{\"complexion\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"blemishes\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"ageing\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"sunDamage\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"bodyBlemishes\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"lipstick\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"makeUp\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"eyebrows\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"blush\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"chestHair\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"beard\":{\"opacity\":1,\"style\":3,\"secondColor\":0,\"color\":0},\"moleAndFreckles\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0}},\"tattoos\":{\"ZONE_HAIR\":[{\"hashFemale\":\"FM_F_Hair_003_a\",\"collection\":\"multiplayer_overlays\",\"name\":\"hair-0-186\",\"label\":\"hair-0-186\",\"hashMale\":\"FM_M_Hair_003_a\",\"zone\":\"ZONE_HAIR\"}]},\"eyeColor\":-1,\"faceFeatures\":{\"jawBoneBackSize\":0,\"lipsThickness\":0,\"eyeBrownHigh\":0,\"nosePeakLowering\":0,\"chinBoneLenght\":0,\"jawBoneWidth\":0,\"noseWidth\":0,\"eyesOpening\":0,\"noseBoneHigh\":0,\"chinBoneLowering\":0,\"nosePeakSize\":0,\"cheeksWidth\":0,\"chinBoneSize\":0,\"cheeksBoneHigh\":0,\"cheeksBoneWidth\":0,\"neckThickness\":0,\"eyeBrownForward\":0,\"noseBoneTwist\":0,\"nosePeakHigh\":0,\"chinHole\":0},\"model\":\"mp_m_freemode_01\",\"headBlend\":{\"skinMix\":0,\"thirdMix\":0,\"skinFirst\":2,\"skinSecond\":2,\"shapeMix\":0,\"shapeThird\":0,\"shapeSecond\":0,\"shapeFirst\":0,\"skinThird\":0}}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0},{\"percent\":73.91,\"name\":\"hunger\",\"val\":739100},{\"percent\":80.43249999999999,\"name\":\"thirst\",\"val\":804325}]', 'nofaction', 0, 'Aaron', 'James', '02/02/1988', 'm', 182, 0, NULL, NULL, '[]', 0, '033-576-4452', NULL, NULL),
('d441ef1737ac357b80a51415a3162e7a3e95387e', '{\"black_money\":0,\"money\":0,\"bank\":10000}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":29.060791015625,\"heading\":110.55118560791016,\"x\":414.3955993652344,\"y\":-970.7077026367188}', '{\"headOverlays\":{\"ageing\":{\"style\":0,\"secondColor\":0,\"color\":0,\"opacity\":0},\"blush\":{\"style\":0,\"secondColor\":0,\"color\":0,\"opacity\":0},\"lipstick\":{\"style\":0,\"secondColor\":0,\"color\":0,\"opacity\":0},\"beard\":{\"style\":0,\"secondColor\":0,\"color\":0,\"opacity\":0},\"blemishes\":{\"style\":0,\"secondColor\":0,\"color\":0,\"opacity\":0},\"chestHair\":{\"style\":0,\"secondColor\":0,\"color\":0,\"opacity\":0},\"makeUp\":{\"style\":0,\"secondColor\":0,\"color\":0,\"opacity\":0},\"sunDamage\":{\"style\":0,\"secondColor\":0,\"color\":0,\"opacity\":0},\"complexion\":{\"style\":0,\"secondColor\":0,\"color\":0,\"opacity\":0},\"eyebrows\":{\"style\":0,\"secondColor\":0,\"color\":0,\"opacity\":0},\"bodyBlemishes\":{\"style\":0,\"secondColor\":0,\"color\":0,\"opacity\":0},\"moleAndFreckles\":{\"style\":0,\"secondColor\":0,\"color\":0,\"opacity\":0}},\"model\":\"mp_m_freemode_01\",\"eyeColor\":-1,\"tattoos\":[],\"props\":[{\"texture\":-1,\"prop_id\":0,\"drawable\":-1},{\"texture\":-1,\"prop_id\":1,\"drawable\":-1},{\"texture\":-1,\"prop_id\":2,\"drawable\":-1},{\"texture\":-1,\"prop_id\":6,\"drawable\":-1},{\"texture\":-1,\"prop_id\":7,\"drawable\":-1}],\"headBlend\":{\"skinThird\":0,\"skinFirst\":0,\"shapeMix\":0,\"shapeThird\":0,\"skinMix\":0,\"shapeSecond\":0,\"shapeFirst\":0,\"skinSecond\":0,\"thirdMix\":0},\"components\":[{\"texture\":0,\"component_id\":0,\"drawable\":0},{\"texture\":0,\"component_id\":1,\"drawable\":0},{\"texture\":0,\"component_id\":2,\"drawable\":0},{\"texture\":0,\"component_id\":3,\"drawable\":0},{\"texture\":0,\"component_id\":4,\"drawable\":0},{\"texture\":0,\"component_id\":5,\"drawable\":0},{\"texture\":0,\"component_id\":6,\"drawable\":0},{\"texture\":0,\"component_id\":7,\"drawable\":0},{\"texture\":0,\"component_id\":8,\"drawable\":0},{\"texture\":0,\"component_id\":9,\"drawable\":0},{\"texture\":0,\"component_id\":10,\"drawable\":0},{\"texture\":0,\"component_id\":11,\"drawable\":0}],\"hair\":{\"style\":0,\"texture\":0,\"color\":0,\"highlight\":0},\"faceFeatures\":{\"cheeksWidth\":0,\"noseWidth\":0,\"cheeksBoneWidth\":0,\"chinBoneLenght\":0,\"eyeBrownHigh\":0,\"neckThickness\":0,\"jawBoneWidth\":0,\"chinBoneSize\":0,\"jawBoneBackSize\":0,\"noseBoneTwist\":0,\"lipsThickness\":0,\"chinBoneLowering\":0,\"cheeksBoneHigh\":0,\"nosePeakLowering\":0,\"eyeBrownForward\":0,\"noseBoneHigh\":0,\"nosePeakSize\":0,\"eyesOpening\":0,\"nosePeakHigh\":0,\"chinHole\":0}}', '[{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"},{\"val\":962400,\"percent\":96.24000000000001,\"name\":\"hunger\"},{\"val\":971800,\"percent\":97.18,\"name\":\"thirst\"}]', 'nofaction', 0, 'Qzdqzd', 'Qzdqzd', '10/12/1990', 'm', 180, 0, NULL, NULL, '[]', 0, '801-027-9348', NULL, '[]'),
('dc5ac57159d76b5b8d5d40279b81d323518b413e', '{\"bank\":4750,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":34.216796875,\"y\":-1556.6900634765626,\"x\":-159.982421875,\"heading\":164.40945434570313}', '{\"eyeColor\":-1,\"components\":[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":2},{\"drawable\":0,\"texture\":0,\"component_id\":3},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":0,\"texture\":0,\"component_id\":7},{\"drawable\":0,\"texture\":0,\"component_id\":8},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":169,\"texture\":0,\"component_id\":1},{\"drawable\":0,\"texture\":2,\"component_id\":11},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":25,\"texture\":0,\"component_id\":4},{\"drawable\":16,\"texture\":0,\"component_id\":6}],\"tattoos\":[],\"headBlend\":{\"shapeThird\":0,\"thirdMix\":0,\"skinThird\":0,\"skinMix\":0,\"skinFirst\":36,\"shapeSecond\":0,\"shapeFirst\":0,\"skinSecond\":0,\"shapeMix\":0},\"headOverlays\":{\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"beard\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"chestHair\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"eyebrows\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"makeUp\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"complexion\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"lipstick\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"blush\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0}},\"props\":[{\"drawable\":-1,\"texture\":-1,\"prop_id\":1},{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7},{\"drawable\":3,\"texture\":0,\"prop_id\":0}],\"model\":\"mp_m_freemode_01\",\"faceFeatures\":{\"cheeksBoneWidth\":0,\"nosePeakHigh\":0,\"cheeksBoneHigh\":0,\"jawBoneBackSize\":0,\"chinBoneSize\":0,\"eyeBrownHigh\":0,\"cheeksWidth\":0,\"nosePeakLowering\":0,\"eyesOpening\":0,\"chinHole\":0,\"noseBoneTwist\":0,\"eyeBrownForward\":0,\"neckThickness\":0,\"nosePeakSize\":0,\"chinBoneLowering\":0,\"jawBoneWidth\":0,\"lipsThickness\":0,\"chinBoneLenght\":0,\"noseWidth\":0,\"noseBoneHigh\":0},\"hair\":{\"style\":0,\"color\":0,\"texture\":0,\"highlight\":0}}', '[{\"name\":\"drunk\",\"percent\":0.0,\"val\":0},{\"name\":\"hunger\",\"percent\":62.96000000000001,\"val\":629600},{\"name\":\"thirst\",\"percent\":72.22,\"val\":722200}]', 'nofaction', 0, 'Prite', 'Bencouche', '02/11/1997', 'm', 170, 0, NULL, NULL, '[]', 0, '054-950-5914', NULL, NULL),
('de2a1ae89ae8829c0c7808904d1675e7e30816e6', '{\"black_money\":0,\"bank\":6200,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"z\":-3.2908935546875,\"y\":-572.4659423828125,\"x\":514.3384399414063,\"heading\":277.7952880859375}', '{\"components\":[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":1},{\"texture\":0,\"drawable\":0,\"component_id\":2},{\"texture\":0,\"drawable\":0,\"component_id\":3},{\"texture\":0,\"drawable\":0,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":0,\"component_id\":6},{\"texture\":0,\"drawable\":0,\"component_id\":7},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":0,\"drawable\":352,\"component_id\":11},{\"texture\":0,\"drawable\":15,\"component_id\":8}],\"headOverlays\":{\"lipstick\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":0},\"moleAndFreckles\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":0},\"sunDamage\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":0},\"beard\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":0},\"ageing\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":0},\"chestHair\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":0},\"bodyBlemishes\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":0},\"makeUp\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":5},\"blush\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":0},\"complexion\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":0},\"eyebrows\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":0},\"blemishes\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":0}},\"headBlend\":{\"thirdMix\":0,\"skinSecond\":0,\"shapeMix\":0,\"shapeSecond\":44,\"shapeThird\":0,\"skinThird\":0,\"shapeFirst\":42,\"skinMix\":0,\"skinFirst\":3},\"faceFeatures\":{\"nosePeakLowering\":0,\"eyeBrownForward\":0,\"noseBoneTwist\":0,\"eyesOpening\":0,\"nosePeakSize\":0,\"chinHole\":0,\"cheeksBoneHigh\":0,\"jawBoneBackSize\":0,\"lipsThickness\":0,\"jawBoneWidth\":0,\"nosePeakHigh\":0,\"cheeksBoneWidth\":0,\"noseBoneHigh\":0,\"noseWidth\":0,\"chinBoneLenght\":0,\"eyeBrownHigh\":0,\"neckThickness\":0,\"cheeksWidth\":0,\"chinBoneSize\":0,\"chinBoneLowering\":0},\"model\":\"mp_m_freemode_01\",\"hair\":{\"texture\":0,\"style\":1,\"color\":0,\"highlight\":0},\"eyeColor\":-1,\"props\":[{\"texture\":-1,\"prop_id\":0,\"drawable\":-1},{\"texture\":-1,\"prop_id\":1,\"drawable\":-1},{\"texture\":-1,\"prop_id\":2,\"drawable\":-1},{\"texture\":-1,\"prop_id\":6,\"drawable\":-1},{\"texture\":-1,\"prop_id\":7,\"drawable\":-1}],\"tattoos\":[]}', '[{\"val\":0,\"name\":\"drunk\",\"percent\":0.0},{\"val\":856900,\"name\":\"hunger\",\"percent\":85.69},{\"val\":892675,\"name\":\"thirst\",\"percent\":89.2675}]', 'nofaction', 0, 'Miguel', 'Coretto', '12/09/2000', 'm', 186, 0, NULL, NULL, '[]', 0, '829-476-9746', NULL, NULL),
('e35e3c5dd6739a99962e1d1591a32200e2b9118d', '{\"money\":2351,\"bank\":42000,\"black_money\":900}', 'user', '[{\"slot\":1,\"count\":1,\"name\":\"WEAPON_CROWBAR\",\"metadata\":{\"components\":[],\"durability\":94.70000000000032}},{\"slot\":2,\"count\":1,\"name\":\"phone\"},{\"slot\":3,\"count\":1,\"name\":\"idcard\",\"metadata\":{\"playerInfo\":{\"dateofbirth\":\"03/10/1995\",\"lastname\":\"Kenneth\",\"firstname\":\"Sean\",\"sex\":\"m\",\"height\":189},\"identifier\":\"e35e3c5dd6739a99962e1d1591a32200e2b9118d\"}},{\"slot\":4,\"count\":1,\"name\":\"drivers_license\",\"metadata\":{\"playerInfo\":{\"dateofbirth\":\"03/10/1995\",\"lastname\":\"Kenneth\",\"firstname\":\"Sean\",\"sex\":\"m\",\"height\":189},\"identifier\":\"e35e3c5dd6739a99962e1d1591a32200e2b9118d\"}},{\"slot\":6,\"count\":2351,\"name\":\"money\"},{\"slot\":7,\"count\":900,\"name\":\"black_money\"},{\"slot\":10,\"count\":2,\"name\":\"tacos\"},{\"slot\":9,\"count\":2,\"name\":\"water\"}]', 'unemployed', 0, '[]', '{\"z\":29.3472900390625,\"heading\":328.81890869140627,\"x\":274.8659362792969,\"y\":-1404.975830078125}', '{\"hair\":{\"highlight\":0,\"style\":0,\"texture\":0,\"color\":0},\"components\":[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":169,\"texture\":2,\"component_id\":1},{\"drawable\":0,\"texture\":0,\"component_id\":2},{\"drawable\":0,\"texture\":0,\"component_id\":3},{\"drawable\":69,\"texture\":3,\"component_id\":4},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":7,\"texture\":0,\"component_id\":6},{\"drawable\":0,\"texture\":0,\"component_id\":7},{\"drawable\":15,\"texture\":0,\"component_id\":8},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":89,\"texture\":2,\"component_id\":11}],\"props\":[{\"drawable\":-1,\"prop_id\":0,\"texture\":-1},{\"drawable\":-1,\"prop_id\":1,\"texture\":-1},{\"drawable\":-1,\"prop_id\":2,\"texture\":-1},{\"drawable\":-1,\"prop_id\":6,\"texture\":-1},{\"drawable\":-1,\"prop_id\":7,\"texture\":-1}],\"headOverlays\":{\"moleAndFreckles\":{\"style\":0,\"opacity\":0,\"secondColor\":0,\"color\":0},\"blemishes\":{\"style\":0,\"opacity\":0,\"secondColor\":0,\"color\":0},\"ageing\":{\"style\":0,\"opacity\":0,\"secondColor\":0,\"color\":0},\"lipstick\":{\"style\":0,\"opacity\":0,\"secondColor\":0,\"color\":0},\"bodyBlemishes\":{\"style\":0,\"opacity\":0,\"secondColor\":0,\"color\":0},\"complexion\":{\"style\":0,\"opacity\":0,\"secondColor\":0,\"color\":0},\"chestHair\":{\"style\":0,\"opacity\":0,\"secondColor\":0,\"color\":0},\"eyebrows\":{\"style\":30,\"opacity\":1.0,\"secondColor\":0,\"color\":0},\"blush\":{\"style\":0,\"opacity\":0,\"secondColor\":0,\"color\":0},\"makeUp\":{\"style\":0,\"opacity\":0,\"secondColor\":0,\"color\":0},\"beard\":{\"style\":3,\"opacity\":1.0,\"secondColor\":0,\"color\":0},\"sunDamage\":{\"style\":0,\"opacity\":0,\"secondColor\":0,\"color\":0}},\"tattoos\":{\"ZONE_HAIR\":[{\"hashFemale\":\"FM_F_Hair_001_a\",\"collection\":\"multiplayer_overlays\",\"name\":\"hair-0-181\",\"label\":\"hair-0-181\",\"hashMale\":\"FM_M_Hair_001_a\",\"zone\":\"ZONE_HAIR\"}]},\"eyeColor\":-1,\"faceFeatures\":{\"jawBoneBackSize\":0.0,\"lipsThickness\":0.0,\"eyeBrownHigh\":0.0,\"nosePeakLowering\":0.0,\"chinBoneLenght\":0.0,\"jawBoneWidth\":0.0,\"noseWidth\":0.0,\"eyesOpening\":0.0,\"noseBoneHigh\":0.0,\"chinBoneLowering\":0.0,\"nosePeakSize\":0.0,\"cheeksWidth\":1.0,\"chinBoneSize\":0.0,\"cheeksBoneHigh\":0.0,\"cheeksBoneWidth\":-1.0,\"neckThickness\":0.0,\"eyeBrownForward\":0.0,\"noseBoneTwist\":0.0,\"nosePeakHigh\":0.0,\"chinHole\":0.0},\"model\":\"mp_m_freemode_01\",\"headBlend\":{\"skinMix\":0.0,\"thirdMix\":0.0,\"skinFirst\":3,\"skinSecond\":0,\"shapeMix\":0.5,\"shapeFirst\":10,\"shapeThird\":45,\"skinThird\":0,\"shapeSecond\":0}}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0},{\"percent\":88.49000000000001,\"name\":\"hunger\",\"val\":884900},{\"percent\":91.3675,\"name\":\"thirst\",\"val\":913675}]', 'nofaction', 0, 'Sean', 'Kenneth', '03/10/1995', 'm', 189, 0, 1200, NULL, '[]', 0, '115-660-0933', NULL, NULL),
('e8e748059b1fed27c021331265dc0480d61be860', '{\"money\":2577,\"bank\":3957,\"black_money\":7400}', 'user', '[{\"slot\":1,\"count\":1,\"name\":\"WEAPON_FLASHLIGHT\",\"metadata\":{\"durability\":100,\"components\":[]}},{\"slot\":2,\"count\":1,\"name\":\"phone\"},{\"slot\":3,\"count\":1,\"name\":\"WEAPON_KNIFE\",\"metadata\":{\"durability\":69.9000000000017,\"components\":[]}},{\"slot\":21,\"count\":1,\"name\":\"drivers_license\",\"metadata\":{\"identifier\":\"e8e748059b1fed27c021331265dc0480d61be860\",\"playerInfo\":{\"lastname\":\"Sno\",\"firstname\":\"Blanco\",\"sex\":\"m\",\"height\":188,\"dateofbirth\":\"26/02/1998\"}}},{\"slot\":22,\"count\":14,\"name\":\"chips\"},{\"slot\":16,\"count\":1,\"name\":\"idcard\",\"metadata\":{\"identifier\":\"e8e748059b1fed27c021331265dc0480d61be860\",\"playerInfo\":{\"lastname\":\"Sno\",\"firstname\":\"Blanco\",\"sex\":\"m\",\"height\":188,\"dateofbirth\":\"26/02/1998\"}}},{\"slot\":24,\"count\":16,\"name\":\"hotdog\"},{\"slot\":25,\"count\":2577,\"name\":\"money\"},{\"slot\":23,\"count\":17,\"name\":\"cola\"},{\"slot\":6,\"count\":1,\"name\":\"skateboard\"},{\"slot\":20,\"count\":7400,\"name\":\"black_money\"}]', 'unemployed', 0, '[]', '{\"z\":21.5626220703125,\"y\":-1091.248291015625,\"x\":-602.967041015625,\"heading\":289.13385009765627}', '{\"props\":[{\"texture\":2,\"prop_id\":0,\"drawable\":58},{\"texture\":5,\"prop_id\":1,\"drawable\":5},{\"texture\":-1,\"prop_id\":2,\"drawable\":-1},{\"texture\":-1,\"prop_id\":6,\"drawable\":-1},{\"texture\":-1,\"prop_id\":7,\"drawable\":-1}],\"tattoos\":{\"ZONE_HAIR\":[{\"hashMale\":\"FM_M_Hair_003_a\",\"zone\":\"ZONE_HAIR\",\"hashFemale\":\"FM_F_Hair_003_a\",\"collection\":\"multiplayer_overlays\",\"name\":\"hair-0-186\",\"label\":\"hair-0-186\"}]},\"headOverlays\":{\"ageing\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"bodyBlemishes\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"blush\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"beard\":{\"color\":0,\"secondColor\":0,\"style\":11,\"opacity\":1.0},\"eyebrows\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":1.0},\"blemishes\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"sunDamage\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"moleAndFreckles\":{\"color\":0,\"secondColor\":0,\"style\":6,\"opacity\":1.0},\"lipstick\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"makeUp\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"chestHair\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0},\"complexion\":{\"color\":0,\"secondColor\":0,\"style\":0,\"opacity\":0}},\"model\":\"mp_m_freemode_01\",\"hair\":{\"texture\":0,\"color\":29,\"style\":15,\"highlight\":29},\"components\":[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":1},{\"texture\":0,\"drawable\":15,\"component_id\":2},{\"texture\":0,\"drawable\":4,\"component_id\":3},{\"texture\":2,\"drawable\":52,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":48,\"component_id\":6},{\"texture\":0,\"drawable\":0,\"component_id\":7},{\"texture\":0,\"drawable\":15,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":0,\"drawable\":182,\"component_id\":11}],\"eyeColor\":2,\"faceFeatures\":{\"jawBoneWidth\":0.0,\"chinHole\":0.0,\"nosePeakHigh\":0.0,\"lipsThickness\":0.0,\"chinBoneLowering\":0.0,\"cheeksBoneHigh\":0.0,\"noseBoneTwist\":0.0,\"cheeksWidth\":0.0,\"chinBoneSize\":0.0,\"chinBoneLenght\":0.0,\"nosePeakSize\":0.0,\"eyeBrownHigh\":0.0,\"nosePeakLowering\":0.0,\"eyesOpening\":0.0,\"jawBoneBackSize\":0.0,\"eyeBrownForward\":0.0,\"noseBoneHigh\":0.0,\"noseWidth\":0.0,\"cheeksBoneWidth\":0.0,\"neckThickness\":0.0},\"headBlend\":{\"shapeFirst\":0,\"shapeMix\":0.0,\"skinFirst\":8,\"thirdMix\":0.0,\"skinThird\":0,\"shapeSecond\":0,\"shapeThird\":0,\"skinSecond\":0,\"skinMix\":0.0}}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"hunger\",\"val\":718300,\"percent\":71.83},{\"name\":\"thirst\",\"val\":846700,\"percent\":84.67}]', 'nofaction', 0, 'Blanco', 'Sno', '26/02/1998', 'm', 188, 0, 2773, NULL, '[]', 0, '513-537-4268', NULL, NULL),
('eb2590ac498963958218b515bfd803b0776c9e08', '{\"black_money\":1800,\"bank\":1961,\"money\":9}', 'user', '[{\"count\":1800,\"name\":\"black_money\",\"slot\":1},{\"metadata\":{\"identifier\":\"eb2590ac498963958218b515bfd803b0776c9e08\",\"playerInfo\":{\"height\":197,\"sex\":\"m\",\"dateofbirth\":\"10/08/1991\",\"lastname\":\"Ferrera\",\"firstname\":\"Joni\"}},\"count\":1,\"name\":\"idcard\",\"slot\":2},{\"metadata\":{\"identifier\":\"eb2590ac498963958218b515bfd803b0776c9e08\",\"playerInfo\":{\"height\":197,\"sex\":\"m\",\"dateofbirth\":\"10/08/1991\",\"lastname\":\"Ferrera\",\"firstname\":\"Joni\"}},\"count\":1,\"name\":\"drivers_license\",\"slot\":3},{\"count\":9,\"name\":\"money\",\"slot\":4},{\"count\":1,\"name\":\"phone\",\"slot\":6},{\"count\":3,\"name\":\"hotdog\",\"slot\":7},{\"count\":5,\"name\":\"water\",\"slot\":8}]', 'unemployed', 0, '[]', '{\"heading\":150.23622131347657,\"z\":29.6336669921875,\"y\":-895.6615600585938,\"x\":128.7032928466797}', '{\"props\":[{\"texture\":0,\"prop_id\":0,\"drawable\":12},{\"texture\":0,\"prop_id\":1,\"drawable\":0},{\"texture\":-1,\"prop_id\":2,\"drawable\":-1},{\"texture\":0,\"prop_id\":6,\"drawable\":3},{\"texture\":-1,\"prop_id\":7,\"drawable\":-1}],\"eyeColor\":0,\"hair\":{\"texture\":0,\"highlight\":3,\"color\":1,\"style\":44},\"model\":\"mp_m_freemode_01\",\"headBlend\":{\"skinSecond\":0,\"thirdMix\":0,\"skinThird\":0,\"shapeThird\":0,\"shapeSecond\":0,\"shapeMix\":1,\"skinFirst\":11,\"shapeFirst\":44,\"skinMix\":0},\"faceFeatures\":{\"cheeksWidth\":0,\"eyeBrownHigh\":0,\"jawBoneWidth\":0,\"nosePeakHigh\":0.5,\"neckThickness\":0,\"cheeksBoneHigh\":-0.3,\"cheeksBoneWidth\":0,\"eyeBrownForward\":0,\"nosePeakSize\":1,\"nosePeakLowering\":0,\"lipsThickness\":0,\"chinBoneSize\":0,\"chinBoneLenght\":0,\"chinHole\":0,\"jawBoneBackSize\":0,\"noseBoneTwist\":0,\"chinBoneLowering\":0,\"eyesOpening\":0,\"noseBoneHigh\":-1,\"noseWidth\":-0.6},\"components\":[{\"texture\":0,\"component_id\":0,\"drawable\":0},{\"texture\":0,\"component_id\":1,\"drawable\":121},{\"texture\":0,\"component_id\":2,\"drawable\":44},{\"texture\":0,\"component_id\":3,\"drawable\":186},{\"texture\":0,\"component_id\":4,\"drawable\":28},{\"texture\":0,\"component_id\":5,\"drawable\":0},{\"texture\":0,\"component_id\":6,\"drawable\":10},{\"texture\":2,\"component_id\":7,\"drawable\":27},{\"texture\":0,\"component_id\":8,\"drawable\":15},{\"texture\":6,\"component_id\":9,\"drawable\":20},{\"texture\":0,\"component_id\":10,\"drawable\":0},{\"texture\":9,\"component_id\":11,\"drawable\":349}],\"headOverlays\":{\"moleAndFreckles\":{\"style\":0,\"secondColor\":0,\"color\":0,\"opacity\":0},\"eyebrows\":{\"style\":0,\"secondColor\":0,\"color\":3,\"opacity\":1},\"blemishes\":{\"style\":0,\"secondColor\":0,\"color\":0,\"opacity\":0},\"lipstick\":{\"style\":0,\"secondColor\":0,\"color\":0,\"opacity\":0},\"bodyBlemishes\":{\"style\":0,\"secondColor\":0,\"color\":0,\"opacity\":0},\"sunDamage\":{\"style\":0,\"secondColor\":0,\"color\":0,\"opacity\":0},\"complexion\":{\"style\":0,\"secondColor\":0,\"color\":0,\"opacity\":0},\"makeUp\":{\"style\":0,\"secondColor\":0,\"color\":0,\"opacity\":0},\"beard\":{\"style\":0,\"secondColor\":0,\"color\":0,\"opacity\":0},\"chestHair\":{\"style\":0,\"secondColor\":0,\"color\":0,\"opacity\":0},\"ageing\":{\"style\":0,\"secondColor\":0,\"color\":0,\"opacity\":0},\"blush\":{\"style\":0,\"secondColor\":0,\"color\":0,\"opacity\":0}},\"tattoos\":{\"ZONE_HEAD\":[{\"collection\":\"mpstunt_overlays\",\"hashMale\":\"MP_MP_Stunt_tat_004_M\",\"label\":\"Scorpion\",\"zone\":\"ZONE_HEAD\",\"hashFemale\":\"MP_MP_Stunt_tat_004_F\",\"name\":\"TAT_ST_004\",\"opacity\":0.7}]}}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0},{\"percent\":31.39,\"name\":\"hunger\",\"val\":313900},{\"percent\":38.695,\"name\":\"thirst\",\"val\":386950}]', 'vagos', 3, 'Joni', 'Ferrera', '10/08/1991', 'm', 197, 0, 3108, NULL, '[]', 0, '600-195-2005', NULL, NULL),
('f225082d5a50e4afb3e9850cda24d5f613da7ef3', '{\"bank\":2100,\"black_money\":0,\"money\":2712}', 'user', '[{\"name\":\"WEAPON_NIGHTSTICK\",\"slot\":1,\"count\":1,\"metadata\":{\"components\":[],\"durability\":100}},{\"name\":\"WEAPON_STUNGUN\",\"slot\":2,\"count\":1,\"metadata\":{\"components\":[],\"registered\":\"jordan dubois\",\"durability\":100}},{\"name\":\"WEAPON_COMBATPISTOL\",\"slot\":3,\"count\":1,\"metadata\":{\"components\":[],\"serial\":\"965862POL643452\",\"registered\":\"Jordan Gauthier\",\"ammo\":0,\"durability\":100}},{\"name\":\"WEAPON_CARBINERIFLE\",\"slot\":4,\"count\":1,\"metadata\":{\"components\":[],\"serial\":\"800847POL292327\",\"registered\":\"Azaria Gordon\",\"ammo\":17,\"durability\":99.33999999999998}},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"slot\":5,\"count\":1,\"metadata\":{\"components\":[],\"serial\":\"703351POL426899\",\"registered\":\"Jordan Gauthier\",\"ammo\":0,\"durability\":100}},{\"name\":\"money\",\"slot\":6,\"count\":2712},{\"name\":\"ammo-9\",\"slot\":7,\"count\":102},{\"name\":\"idcard\",\"slot\":8,\"count\":1,\"metadata\":{\"playerInfo\":{\"firstname\":\"Jordan\",\"height\":200,\"lastname\":\"Gauthier\",\"sex\":\"m\",\"dateofbirth\":\"03/09/2000\"},\"identifier\":\"f225082d5a50e4afb3e9850cda24d5f613da7ef3\"}},{\"name\":\"farmlicense\",\"slot\":9,\"count\":1,\"metadata\":{\"playerInfo\":{\"firstname\":\"Jordan\",\"height\":200,\"lastname\":\"Gauthier\",\"sex\":\"m\",\"dateofbirth\":\"03/09/2000\"},\"identifier\":\"f225082d5a50e4afb3e9850cda24d5f613da7ef3\"}},{\"name\":\"farmlicense\",\"slot\":10,\"count\":1,\"metadata\":{\"playerInfo\":{\"firstname\":\"Jordan\",\"height\":200,\"lastname\":\"Gauthier\",\"sex\":\"m\",\"dateofbirth\":\"03/09/2000\"},\"identifier\":\"f225082d5a50e4afb3e9850cda24d5f613da7ef3\"}},{\"name\":\"ammo-shotgun\",\"slot\":11,\"count\":100},{\"name\":\"ammo-rifle\",\"slot\":12,\"count\":100},{\"name\":\"phone\",\"slot\":13,\"count\":1}]', 'bcso', 5, '[]', '{\"heading\":42.51968383789062,\"z\":28.87548828125,\"y\":-1664.0439453125,\"x\":512.4791259765625}', '{\"model\":\"mp_m_freemode_01\",\"components\":[{\"texture\":0,\"component_id\":0,\"drawable\":0},{\"texture\":0,\"component_id\":1,\"drawable\":0},{\"texture\":0,\"component_id\":2,\"drawable\":0},{\"texture\":0,\"component_id\":3,\"drawable\":0},{\"texture\":0,\"component_id\":4,\"drawable\":0},{\"texture\":0,\"component_id\":5,\"drawable\":0},{\"texture\":0,\"component_id\":6,\"drawable\":0},{\"texture\":0,\"component_id\":7,\"drawable\":0},{\"texture\":0,\"component_id\":8,\"drawable\":0},{\"texture\":0,\"component_id\":9,\"drawable\":0},{\"texture\":0,\"component_id\":10,\"drawable\":0},{\"texture\":0,\"component_id\":11,\"drawable\":0}],\"headBlend\":{\"skinMix\":0,\"shapeThird\":0,\"shapeFirst\":0,\"skinFirst\":4,\"shapeSecond\":0,\"shapeMix\":0,\"skinSecond\":0,\"thirdMix\":0,\"skinThird\":0},\"headOverlays\":{\"blush\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"eyebrows\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":1},\"sunDamage\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"makeUp\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"beard\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"complexion\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"lipstick\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"moleAndFreckles\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"blemishes\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"bodyBlemishes\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"ageing\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0},\"chestHair\":{\"secondColor\":0,\"color\":0,\"style\":0,\"opacity\":0}},\"faceFeatures\":{\"eyesOpening\":0,\"chinBoneLenght\":0,\"chinBoneLowering\":0,\"nosePeakSize\":0,\"cheeksBoneHigh\":0,\"jawBoneBackSize\":0,\"eyeBrownHigh\":0,\"noseBoneTwist\":0,\"nosePeakLowering\":0,\"eyeBrownForward\":0,\"lipsThickness\":0,\"chinBoneSize\":0,\"neckThickness\":0,\"nosePeakHigh\":0,\"cheeksBoneWidth\":0,\"cheeksWidth\":0,\"noseWidth\":0,\"jawBoneWidth\":0,\"chinHole\":0,\"noseBoneHigh\":0},\"tattoos\":[],\"eyeColor\":0,\"props\":[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":-1,\"drawable\":-1,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":-1,\"drawable\":-1,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}],\"hair\":{\"texture\":0,\"highlight\":0,\"style\":3,\"color\":0}}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"hunger\",\"val\":581000,\"percent\":58.09999999999999},{\"name\":\"thirst\",\"val\":685750,\"percent\":68.575}]', 'nofaction', 0, 'Jordan', 'Gauthier', '03/09/2000', 'm', 200, 0, NULL, NULL, '[]', 0, '527-024-2655', NULL, NULL);
INSERT INTO `users` (`identifier`, `accounts`, `group`, `inventory`, `job`, `job_grade`, `loadout`, `position`, `skin`, `status`, `faction`, `faction_grade`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `pincode`, `last_property`, `tattoos`, `disabled`, `phone_number`, `callsign`, `metadata`) VALUES
('f2f9d66456cc94a664b2054a4f35af3b3c793bb6', '{\"bank\":8810,\"black_money\":0,\"money\":1354}', 'user', '[{\"name\":\"WEAPON_STUNGUN\",\"metadata\":{\"components\":[],\"registered\":\"Azaria Gordon\",\"durability\":100},\"slot\":1,\"count\":1},{\"name\":\"WEAPON_COMBATPISTOL\",\"metadata\":{\"serial\":\"171852POL676859\",\"ammo\":10,\"components\":[],\"registered\":\"Azaria Gordon\",\"durability\":94.80000000000031},\"slot\":2,\"count\":1},{\"name\":\"money\",\"slot\":3,\"count\":1354},{\"name\":\"ammo-9\",\"slot\":4,\"count\":14}]', 'bcso', 4, '[]', '{\"x\":-457.9252624511719,\"y\":6023.69677734375,\"z\":31.3355712890625,\"heading\":124.72441101074219}', '{\"components\":[{\"drawable\":0,\"component_id\":0,\"texture\":0},{\"drawable\":12,\"component_id\":2,\"texture\":0},{\"drawable\":1,\"component_id\":7,\"texture\":0},{\"drawable\":4,\"component_id\":1,\"texture\":0},{\"drawable\":95,\"component_id\":11,\"texture\":0},{\"drawable\":0,\"component_id\":9,\"texture\":0},{\"drawable\":15,\"component_id\":8,\"texture\":0},{\"drawable\":81,\"component_id\":5,\"texture\":0},{\"drawable\":126,\"component_id\":4,\"texture\":0},{\"drawable\":31,\"component_id\":6,\"texture\":0},{\"drawable\":0,\"component_id\":10,\"texture\":0},{\"drawable\":17,\"component_id\":3,\"texture\":0}],\"headBlend\":{\"skinSecond\":0,\"shapeSecond\":0,\"skinMix\":0,\"shapeMix\":0,\"thirdMix\":0,\"skinFirst\":0,\"skinThird\":0,\"shapeFirst\":0,\"shapeThird\":0},\"headOverlays\":{\"bodyBlemishes\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"blemishes\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"makeUp\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"sunDamage\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"lipstick\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"eyebrows\":{\"opacity\":1,\"style\":0,\"secondColor\":0,\"color\":0},\"ageing\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"complexion\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"moleAndFreckles\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"chestHair\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"beard\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"blush\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0}},\"hair\":{\"color\":0,\"style\":12,\"highlight\":0,\"texture\":0},\"model\":\"mp_m_freemode_01\",\"props\":[{\"prop_id\":0,\"drawable\":-1,\"texture\":-1},{\"prop_id\":1,\"drawable\":-1,\"texture\":-1},{\"prop_id\":2,\"drawable\":-1,\"texture\":-1},{\"prop_id\":7,\"drawable\":-1,\"texture\":-1},{\"prop_id\":6,\"drawable\":-1,\"texture\":0}],\"tattoos\":[],\"eyeColor\":1,\"faceFeatures\":{\"chinBoneLenght\":0,\"chinBoneLowering\":0,\"jawBoneWidth\":0,\"eyeBrownForward\":0,\"nosePeakSize\":0,\"neckThickness\":0,\"cheeksBoneWidth\":0,\"lipsThickness\":0,\"chinHole\":0,\"cheeksWidth\":0,\"nosePeakLowering\":0,\"eyeBrownHigh\":0,\"noseBoneTwist\":0,\"chinBoneSize\":0,\"cheeksBoneHigh\":0,\"jawBoneBackSize\":0,\"nosePeakHigh\":0,\"noseWidth\":0,\"eyesOpening\":0,\"noseBoneHigh\":0}}', '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"hunger\",\"val\":237400,\"percent\":23.74},{\"name\":\"thirst\",\"val\":428050,\"percent\":42.805}]', 'nofaction', 0, 'Mathis', 'Rottard', '28/05/2000', 'm', 185, 0, 1108, NULL, '[]', 0, '132-652-4133', NULL, '[]'),
('fa3b2adf818a43342884f080da7071dcd0a17133', '{\"bank\":10000,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"heading\":206.9291229248047,\"z\":31.217529296875,\"y\":-955.4769287109375,\"x\":-269.3274841308594}', NULL, '[{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"hunger\",\"val\":992900,\"percent\":99.29},{\"name\":\"thirst\",\"val\":994675,\"percent\":99.4675}]', 'nofaction', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[]', 0, '963-188-2196', NULL, NULL),
('ff0ab7f9e84f8f22595dade0e90f30cef2e02d08', '{\"black_money\":0,\"money\":0,\"bank\":10000}', 'user', '[]', 'unemployed', 0, '[]', '{\"heading\":155.905517578125,\"x\":-262.0879211425781,\"y\":-967.3054809570313,\"z\":31.217529296875}', '{\"headBlend\":{\"shapeMix\":0,\"thirdMix\":0,\"skinMix\":0,\"skinSecond\":0,\"skinThird\":0,\"skinFirst\":0,\"shapeFirst\":0,\"shapeThird\":0,\"shapeSecond\":0},\"faceFeatures\":{\"nosePeakLowering\":0,\"lipsThickness\":0,\"chinBoneLowering\":0,\"eyeBrownHigh\":0,\"neckThickness\":0,\"noseBoneHigh\":0,\"noseWidth\":0,\"chinHole\":0,\"jawBoneBackSize\":0,\"nosePeakSize\":0,\"chinBoneLenght\":0,\"eyesOpening\":0,\"eyeBrownForward\":0,\"noseBoneTwist\":0,\"cheeksWidth\":0,\"nosePeakHigh\":0,\"jawBoneWidth\":0,\"cheeksBoneHigh\":0,\"chinBoneSize\":0,\"cheeksBoneWidth\":0},\"eyeColor\":-1,\"model\":\"mp_m_freemode_01\",\"components\":[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":0},{\"component_id\":3,\"texture\":0,\"drawable\":0},{\"component_id\":4,\"texture\":0,\"drawable\":0},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":0},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":8,\"texture\":0,\"drawable\":0},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":7,\"drawable\":0}],\"headOverlays\":{\"bodyBlemishes\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"blemishes\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"eyebrows\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"moleAndFreckles\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"blush\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"complexion\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"ageing\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"lipstick\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"chestHair\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"makeUp\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"sunDamage\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0},\"beard\":{\"opacity\":0,\"style\":0,\"secondColor\":0,\"color\":0}},\"props\":[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":-1,\"drawable\":-1},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":-1,\"drawable\":-1},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}],\"hair\":{\"color\":0,\"highlight\":0,\"texture\":0,\"style\":0},\"tattoos\":[]}', '[{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"},{\"val\":782400,\"percent\":78.24,\"name\":\"hunger\"},{\"val\":836800,\"percent\":83.67999999999999,\"name\":\"thirst\"}]', 'nofaction', 0, 'Genzo', 'Esco', '01/09/1982', 'm', 200, 0, NULL, NULL, '[]', 0, '000-450-3864', NULL, '[]');

-- --------------------------------------------------------

--
-- Structure de la table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_licenses`
--

INSERT INTO `user_licenses` (`id`, `type`, `owner`) VALUES
(7, 'drive', '96accefda755458c14ad75ae3824d5ecc56e8638'),
(8, 'weapon', '96accefda755458c14ad75ae3824d5ecc56e8638'),
(9, 'weapon', 'bac5ad709b7410826ee1f7849b40d231b6b7895c'),
(10, 'weapon', '3c23ecfcaa92eb9850a615fdedfc208ee1e96ffa'),
(11, 'dmv', 'e8e748059b1fed27c021331265dc0480d61be860'),
(12, 'drive', 'e8e748059b1fed27c021331265dc0480d61be860'),
(13, 'weapon', '4033ea29562af80cdf4e24bb7dbc5b712651d6d6'),
(14, 'dmv', '7c37425743ff6fb7f740dce4492bea16acbb89df'),
(15, 'drive', '7c37425743ff6fb7f740dce4492bea16acbb89df'),
(16, 'dmv', 'eb2590ac498963958218b515bfd803b0776c9e08'),
(17, 'drive', 'eb2590ac498963958218b515bfd803b0776c9e08'),
(18, 'weapon', 'f225082d5a50e4afb3e9850cda24d5f613da7ef3'),
(19, 'dmv', 'bac5ad709b7410826ee1f7849b40d231b6b7895c'),
(20, 'dmv', 'bcb294db06c3db5662aa1d59c8a70a4fde20455d'),
(21, 'dmv', '230cdfa13129e5ad39faece17c502911cbaa784f'),
(22, 'drive', 'bcb294db06c3db5662aa1d59c8a70a4fde20455d'),
(23, 'drive', '230cdfa13129e5ad39faece17c502911cbaa784f'),
(24, 'weapon', 'e8e748059b1fed27c021331265dc0480d61be860'),
(25, 'dmv', '802ae7807563388f110349e6e49299ca33f38712'),
(26, 'drive', '802ae7807563388f110349e6e49299ca33f38712'),
(27, 'drive_bike', '802ae7807563388f110349e6e49299ca33f38712'),
(28, 'dmv', '630e51d91706e2e79529dc26831b96f71a1ebed1'),
(29, 'drive', '630e51d91706e2e79529dc26831b96f71a1ebed1'),
(30, 'dmv', 'e35e3c5dd6739a99962e1d1591a32200e2b9118d'),
(31, 'drive', 'e35e3c5dd6739a99962e1d1591a32200e2b9118d'),
(32, 'drive_bike', 'eb2590ac498963958218b515bfd803b0776c9e08'),
(33, 'weapon', '9c9e1295d88065d75789d74b17abb9694d9e91e0'),
(34, 'dmv', '96accefda755458c14ad75ae3824d5ecc56e8638'),
(35, 'dmv', '96accefda755458c14ad75ae3824d5ecc56e8638'),
(36, 'dmv', '232e57e11d80eb12e71995dcc7d3ec3d4b8429e5'),
(37, 'drive', '232e57e11d80eb12e71995dcc7d3ec3d4b8429e5');

-- --------------------------------------------------------

--
-- Structure de la table `user_sim`
--

CREATE TABLE `user_sim` (
  `id` int(11) NOT NULL,
  `identifier` varchar(555) NOT NULL,
  `number` varchar(20) NOT NULL,
  `label` varchar(555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
('Adder', 'adder', 64000, 'super'),
('Alpha', 'alpha', 60000, 'sports'),
('Ardent', 'ardent', 115000, 'sportsclassics'),
('Asbo', 'asbo', 8760, 'compacts'),
('Asea', 'asea', 11700, 'sedans'),
('Asterope', 'asterope', 13000, 'sedans'),
('Autarch', 'autarch', 1955000, 'super'),
('Baller', 'baller', 32000, 'suvs'),
('Baller2', 'baller2', 57000, 'suvs'),
('Baller Sport', 'baller3', 59000, 'suvs'),
('Baller4', 'baller4', 32000, 'suvs'),
('Banshee', 'banshee', 70000, 'sports'),
('Banshee 900R', 'banshee2', 255000, 'super'),
('Bestia GTS', 'bestiagts', 55000, 'sports'),
('Bf Injection', 'bfinjection', 16000, 'offroad'),
('Bifta', 'bifta', 12000, 'offroad'),
('Bison', 'bison', 26000, 'vans'),
('Bjxl', 'bjxl', 32000, 'suvs'),
('Blade', 'blade', 13541, 'muscle'),
('Blista', 'blista', 9250, 'compacts'),
('blista Compact', 'blista2', 70000, 'sports'),
('Bobcat XL', 'bobcatxl', 33000, 'vans'),
('Canis Bodhi', 'bodhi2', 27000, 'offroad'),
('Brawler', 'brawler', 45000, 'offroad'),
('Brickade', 'Brickade', 210000, 'vans'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Brioso2', 'brioso2', 15600, 'compacts'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 14250, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 17200, 'muscle'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Buffalo STX', 'buffalo4', 20000, 'sports'),
('Bullet', 'bullet', 90000, 'super'),
('Burrito', 'burrito3', 19000, 'vans'),
('Calico', 'calico', 131000, 'sports'),
('Camper', 'camper', 52000, 'vans'),
('Caracara', 'caracara2', 70000, 'offroad'),
('Carbonizzare', 'carbonizzare', 75000, 'sports'),
('Casco', 'casco', 30000, 'sportsclassics'),
('cavalcade', 'cavalcade', 32000, 'suvs'),
('Cavalcade2', 'cavalcade2', 34000, 'suvs'),
('Cheburek', 'cheburek', 21250, 'sportsclassics'),
('Cheetah', 'cheetah', 375000, 'super'),
('Chino', 'chino', 18650, 'muscle'),
('Chino Luxe', 'chino2', 21141, 'muscle'),
('Clique', 'clique', 37000, 'muscle'),
('Club', 'club', 11000, 'compacts'),
('Cognoscenti 55', 'cog55', 46000, 'sedans'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Cognoscenti', 'cognoscenti', 45000, 'sedans'),
('Comet', 'comet2', 65000, 'sports'),
('Comet Safari', 'comet4', 140000, 'sports'),
('Comet S2', 'comet6', 400000, 'sports'),
('Contender', 'contender', 41000, 'suvs'),
('Coquette', 'coquette', 65000, 'sports'),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 55000, 'sportsclassics'),
('Coquette DIO', 'coquette4', 137000, 'sports'),
('Cyclone', 'cyclone', 189000, 'super'),
('deveste', 'deveste', 450000, 'sports'),
('Deviant', 'deviant', 65000, 'muscle'),
('Dilettante', 'dilettante', 10200, 'compacts'),
('DuneLoader', 'dloader', 41000, 'offroad'),
('Dominator', 'dominator', 35000, 'muscle'),
('Dominator GTX', 'dominator3', 92410, 'muscle'),
('Dominator ASP', 'dominator7', 74200, 'muscle'),
('Drafter', 'drafter', 110000, 'sports'),
('Dubsta', 'dubsta', 44000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 64000, 'suvs'),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
('Dukes', 'dukes', 28000, 'muscle'),
('Dune Buggy', 'dune', 8000, 'offroad'),
('Dynasty', 'dynasty', 44000, 'sportsclassics'),
('Elegy', 'elegy', 81000, 'sports'),
('Elegy RH8', 'elegy2', 85000, 'sports'),
('Emerus', 'emerus', 383040, 'super'),
('Emperor', 'emperor', 17000, 'sedans'),
('Entity XF', 'entityxf', 425000, 'super'),
('Euros', 'euros', 133000, 'sports'),
('Everon', 'everon', 80000, 'offroad'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Faction', 'faction', 22000, 'muscle'),
('Faction Rider', 'faction2', 24000, 'muscle'),
('Faction XL', 'faction3', 37000, 'muscle'),
('Fagaloa', 'fagaloa', 24584, 'sportsclassics'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Flash GT', 'flashgt', 92000, 'sports'),
('FMJ', 'fmj', 185000, 'super'),
('Fhantom', 'fq2', 27400, 'suvs'),
('Freecrawler', 'freecrawler', 110000, 'offroad'),
('Fugitive', 'fugitive', 23010, 'sedans'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Futo', 'futo', 35000, 'sports'),
('Futo GTX', 'futo2', 92000, 'sports'),
('Gauntlet', 'gauntlet', 31150, 'muscle'),
('Gauntlet Clasique', 'gauntlet3', 41000, 'muscle'),
('Gauntlet Hellfire', 'gauntlet4', 48900, 'muscle'),
('Gauntlet Clasique Custom', 'gauntlet5', 52000, 'muscle'),
('Gb200', 'gb200', 41000, 'sports'),
('Gang Burrito', 'gburrito', 20000, 'vans'),
('Burrito', 'gburrito2', 21000, 'vans'),
('Glendale', 'glendale', 21000, 'sedans'),
('Glendale Custom', 'glendale2', 25410, 'sedans'),
('Gp1', 'gp1', 223040, 'super'),
('Grabger', 'granger', 24501, 'suvs'),
('Gresley', 'gresley', 21400, 'suvs'),
('Growler', 'growler', 410000, 'sports'),
('GT 500', 'gt500', 25000, 'sportsclassics'),
('Guardian', 'guardian', 35000, 'offroad'),
('Habanero', 'habanero', 32000, 'suvs'),
('Hellion', 'hellion', 26753, 'offroad'),
('Hermes', 'hermes', 53500, 'muscle'),
('Hotknife', 'hotknife', 27500, 'muscle'),
('Huntley S', 'huntley', 23541, 'suvs'),
('Hustler', 'hustler', 32500, 'muscle'),
('Declasse Impaler', 'impaler', 27800, 'muscle'),
('Imperator', 'imperator', 98000, 'muscle'),
('Infernus', 'infernus', 180000, 'super'),
('Infernus Classique', 'infernus2', 220000, 'sportsclassics'),
('Ingot', 'ingot', 12000, 'sedans'),
('Intruder', 'intruder', 24000, 'sedans'),
('Issi', 'issi2', 11000, 'compacts'),
('issi3', 'issi3', 12000, 'compacts'),
('Issi7', 'issi7', 70000, 'sports'),
('Progen itali GTB', 'italigtb', 383040, 'super'),
('Progen itali GTB Custom', 'italigtb2', 403040, 'super'),
('Italigto', 'italigto', 700000, 'sports'),
('Jackal', 'jackal', 38000, 'coupes'),
('Jb700', 'jb700', 85000, 'sportsclassics'),
('Jester', 'jester', 65000, 'sports'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Jester Classique', 'jester3', 95000, 'sports'),
('jester RR', 'jester4', 231000, 'sports'),
('Journey', 'journey', 40000, 'vans'),
('Jugular', 'jugular', 100000, 'sports'),
('Kalahari', 'kalahari', 14000, 'offroad'),
('Kamacho', 'kamacho', 74500, 'offroad'),
('Kanjo', 'kanjo', 21000, 'compacts'),
('Khamelion', 'khamelion', 38000, 'sports'),
('Komoda', 'komoda', 102000, 'sports'),
('Krieger', 'krieger', 433040, 'super'),
('Kuruma', 'kuruma', 30000, 'sports'),
('Landstalker', 'landstalker', 20300, 'suvs'),
('landstalker XL', 'landstalker2', 32000, 'suvs'),
('RE-7B', 'le7b', 325000, 'super'),
('Locust', 'locust', 200000, 'sports'),
('Albary Lurcher', 'lurcher', 40000, 'muscle'),
('Lynx', 'lynx', 40000, 'sports'),
('Mamba', 'mamba', 70000, 'sports'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Manana Custom', 'manana2', 14580, 'sportsclassics'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Michelli GT', 'michelli', 13250, 'sportsclassics'),
('Minivan', 'minivan', 20000, 'vans'),
('Minivan Custom', 'minivan2', 21000, 'vans'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('Moonbeam', 'moonbeam', 28600, 'vans'),
('Moonbeam Rider', 'moonbeam2', 29500, 'vans'),
('Nebula', 'nebula', 13400, 'sportsclassics'),
('Neo', 'neo', 231000, 'sports'),
('Neon', 'neon', 150000, 'sports'),
('Nero', 'nero', 213040, 'super'),
('Nightshade', 'nightshade', 41000, 'muscle'),
('9F', 'ninef', 65000, 'sports'),
('9F Cabrio', 'ninef2', 80000, 'sports'),
('Novak', 'novak', 32000, 'suvs'),
('Omnis', 'omnis', 35000, 'sports'),
('Oracle', 'oracle', 30000, 'coupes'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Osiris', 'osiris', 160000, 'super'),
('Panto', 'panto', 7600, 'compacts'),
('Paradise', 'paradise', 20000, 'vans'),
('Paragon', 'paragon', 210000, 'sports'),
('Pariah', 'pariah', 142000, 'sports'),
('Patriot', 'patriot', 55000, 'suvs'),
('Patriot Stretch', 'patriot2', 32000, 'suvs'),
('Penetrator', 'penetrator', 243040, 'super'),
('Penumbra', 'penumbra', 28000, 'sports'),
('Penumbra FF', 'penumbra2', 175000, 'sports'),
('Peyote', 'peyote', 14000, 'sportsclassics'),
('Peyote Gasser', 'peyote2', 31000, 'muscle'),
('Peyote Custom', 'peyote3', 220000, 'sportsclassics'),
('Pfister', 'pfister811', 85000, 'super'),
('Phoenix', 'phoenix', 27500, 'muscle'),
('Picador', 'picador', 24300, 'muscle'),
('Pigalle', 'pigalle', 20000, 'sportsclassics'),
('Pony', 'pony', 20000, 'vans'),
('Prairie', 'prairie', 16800, 'compacts'),
('Premier', 'premier', 14000, 'sedans'),
('Previon', 'previon', 45000, 'coupes'),
('Primo', 'primo', 17000, 'sedans'),
('Primo Custom', 'primo2', 19400, 'sedans'),
('X80 Proto', 'prototipo', 250000, 'super'),
('Radius', 'radi', 29000, 'suvs'),
('raiden', 'raiden', 137500, 'sports'),
('Rancher xl', 'rancherxl', 32000, 'offroad'),
('Rapid GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
('Rapid GT3', 'rapidgt3', 88500, 'sportsclassics'),
('Rat Truck', 'ratloader2', 43000, 'muscle'),
('Reaper', 'reaper', 150000, 'super'),
('Rebel', 'rebel', 28000, 'offroad'),
('Rebel2', 'rebel2', 33000, 'offroad'),
('Rebla', 'rebla', 32000, 'suvs'),
('Regina', 'regina', 10000, 'sedans'),
('Remus', 'remus', 82000, 'sports'),
('Retinue', 'retinue', 61500, 'sportsclassics'),
('Retinue MK2', 'retinue2', 17450, 'sportsclassics'),
('Revolter', 'revolter', 161000, 'sports'),
('Rhapsody', 'rhapsody', 11450, 'compacts'),
('riata', 'riata', 180000, 'offroad'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('Rt3000', 'rt3000', 187000, 'sports'),
('Rumpo', 'rumpo', 23000, 'vans'),
('Rumpo Trail', 'rumpo3', 46000, 'vans'),
('Ruston', 'ruston', 325000, 'sports'),
('s80', 's80', 683040, 'super'),
('Sabre Turbo', 'sabregt', 31000, 'muscle'),
('Sabre GT', 'sabregt2', 34000, 'muscle'),
('Sadler', 'sadler', 24500, 'offroad'),
('Sandking', 'sandking', 32000, 'offroad'),
('Sandking2', 'sandking2', 27500, 'offroad'),
('Savestra', 'savestra', 69000, 'sportsclassics'),
('Schafter', 'schafter2', 37000, 'sedans'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Schafter LWB', 'schafter4', 141000, 'sports'),
('Schlagen', 'schlagen', 220000, 'sports'),
('Schwarzer', 'schwarzer', 180000, 'sports'),
('Seminole', 'seminole', 25000, 'suvs'),
('Seminole2', 'seminole2', 32000, 'suvs'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Sentinel3', 'sentinel3', 65000, 'sports'),
('Serrano', 'serrano', 32000, 'suvs'),
('Seven 70', 'seven70', 39500, 'sports'),
('ETR1', 'sheava', 220000, 'super'),
('Slam Van', 'slamvan3', 37000, 'muscle'),
('Specter', 'specter', 175000, 'sports'),
('Speedo', 'speedo', 22000, 'vans'),
('Speedo Custom', 'speedo4', 24700, 'vans'),
('Stafford', 'stafford', 37500, 'sedans'),
('Stalion', 'stalion', 24800, 'muscle'),
('Stanier', 'stanier', 14000, 'sedans'),
('Stinger', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Stratum', 'stratum', 12100, 'sedans'),
('Streiter', 'streiter', 50000, 'sports'),
('Stretch', 'stretch', 75000, 'sedans'),
('Sugoi', 'sugoi', 125000, 'sports'),
('Sultan', 'sultan', 15000, 'sports'),
('Sultan Classique', 'sultan2', 65000, 'super'),
('Sultan RS Classique', 'sultan3', 65000, 'super'),
('Sultan RS', 'sultanrs', 65000, 'super'),
('Super Diamond', 'superd', 41000, 'sedans'),
('Surano', 'surano', 50000, 'sports'),
('Surfer', 'surfer', 23000, 'vans'),
('Surge', 'surge', 20000, 'sedans'),
('Swinger', 'swinger', 84025, 'sportsclassics'),
('T20', 't20', 300000, 'super'),
('Tailgater', 'tailgater', 64200, 'sedans'),
('Tailgater S', 'tailgater2', 67000, 'sedans'),
('Taipan', 'taipan', 313040, 'super'),
('Tampa', 'tampa', 26000, 'muscle'),
('Drift Tampa', 'tampa2', 80000, 'sports'),
('Thrax', 'thrax', 483040, 'super'),
('Tigon', 'tigon', 216040, 'super'),
('Torero', 'torero', 92000, 'sportsclassics'),
('Tornado', 'tornado', 22000, 'sportsclassics'),
('Toros', 'toros', 32000, 'suvs'),
('Trophy Truck', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 64000, 'offroad'),
('Tropos', 'tropos', 40000, 'sports'),
('Tulip', 'tulip', 31000, 'muscle'),
('Turismo Classique', 'turismo2', 78000, 'sportsclassics'),
('Turismo R', 'turismor', 350000, 'super'),
('Tyrant', 'tyrant', 603040, 'super'),
('Tyrus', 'tyrus', 600000, 'super'),
('Vacca', 'vacca', 120000, 'super'),
('Vagner', 'vagner', 803040, 'super'),
('Vagrant', 'vagrant', 37000, 'offroad'),
('Vamos', 'vamos', 37000, 'muscle'),
('Vectre', 'vectre', 254000, 'sports'),
('Verlierer', 'verlierer2', 101000, 'sports'),
('Vigero', 'vigero', 20000, 'muscle'),
('Albany Virgo', 'virgo', 22000, 'muscle'),
('Virgo Custom', 'virgo2', 23714, 'muscle'),
('Virgo Classique', 'virgo3', 20147, 'muscle'),
('Viseris', 'viseris', 87500, 'sportsclassics'),
('Visione', 'visione', 225000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('Voodoo', 'voodoo', 17700, 'muscle'),
('Vstr', 'vstr', 83000, 'sports'),
('Warrener', 'warrener', 18000, 'sedans'),
('Washington', 'washington', 16000, 'sedans'),
('Weevil', 'weevil', 16000, 'compacts'),
('Windsor', 'windsor', 95000, 'coupes'),
('Windsor Drop', 'windsor2', 125000, 'coupes'),
('Winky', 'winky', 21000, 'offroad'),
('Xa21', 'xa21', 703040, 'super'),
('XLS', 'xls', 32000, 'suvs'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Yosemite drift', 'yosemite2', 27000, 'muscle'),
('Yosemite Rancher', 'yosemite3', 31000, 'muscle'),
('Youga', 'youga', 28000, 'vans'),
('Youga Luxuary', 'youga2', 38000, 'vans'),
('youga 4x4 Classique', 'youga3', 31000, 'vans'),
('Z190', 'z190', 90000, 'sportsclassics'),
('Zentorno', 'zentorno', 150000, 'super'),
('Zion', 'zion', 36000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('Zion Classique', 'zion3', 52000, 'sportsclassics'),
('Z-Type', 'ztype', 75000, 'sportsclassics');

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
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_parts`
--

CREATE TABLE `vehicle_parts` (
  `id` int(11) NOT NULL,
  `plate` varchar(100) NOT NULL,
  `parts` longtext NOT NULL,
  `mileage` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `vehicle_parts`
--

INSERT INTO `vehicle_parts` (`id`, `plate`, `parts`, `mileage`) VALUES
(23, 'ESX3C971', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9970901035384},\"engine\":{\"type\":\"stock_engine\",\"health\":99.95548706054687},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99323988351321},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99316042272047},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9975348465421},\"oil\":{\"type\":\"stock_oil\",\"health\":99.97976927023716}}', 62.2896),
(24, 'ADMINCAR', '{\"suspension\":{\"health\":96.54793313464504,\"type\":\"stock_suspension\",\"label\":\"SUSPENSION D\'ORIGINE\"},\"turbo\":{\"health\":80.55972725834879,\"type\":\"turbo_lvl_1\",\"label\":\"GARET TURBO\"},\"oil\":{\"health\":69.03880723237512,\"type\":\"stock_oil\",\"label\":\"HUILE D\'ORIGINE\"},\"brakes\":{\"health\":91.28153249657287,\"type\":\"stock_brakes\",\"label\":\"FREINS D\'ORIGINE\"},\"transmition\":{\"health\":95.8522615361287,\"type\":\"stock_transmition\",\"label\":\"TRANSMISSION D\'ORIGINE\"},\"tires\":{\"health\":89.66666205806134,\"type\":\"michelin_tires\",\"label\":\"PNEUS MICHELIN\"},\"engine\":{\"type\":\"2jzengine\",\"health\":-1.50996341705322}}', 100985),
(25, 'ESX7W845', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99932854984786},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99821890387116},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99980228189607},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99979738589328},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99962376559458},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99932861328125}}', 0.157248),
(26, 'ESXWM636', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99959612575384},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99980622535129},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9993455863509},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9989501953125},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99980055925096},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99828918083021}}', 0.642175),
(27, 'ESX9H485', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99997673031089},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99997440334197},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99994027446459},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99976963007772},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9994873046875},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99997155926886}}', 0.125407),
(28, 'ESX2S957', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99636627426901},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9959266908982},\"oil\":{\"type\":\"stock_oil\",\"health\":99.989713797897},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99869189898344},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99846698759608},\"engine\":{\"type\":\"stock_engine\",\"health\":99.79146118164063}}', 31.2006),
(29, 'ESX0V812', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.95233850456309},\"tires\":{\"type\":\"stock_tires\",\"health\":99.87040447469157},\"oil\":{\"type\":\"stock_oil\",\"health\":99.97799004369162},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98610092501501},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98586633763682},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99957885742188}}', 49.0499),
(30, 'POURLUI', '{\"brakes\":{\"label\":\"FREINS D\'ORIGINE\",\"health\":99.98940648146548,\"type\":\"stock_brakes\"},\"tires\":{\"label\":\"PNEUS D\'ORIGINE\",\"health\":99.98192424061009,\"type\":\"stock_tires\"},\"engine\":{\"label\":\"MOTEUR 2JZ\",\"type\":\"2jzengine\",\"health\":100.0},\"transmition\":{\"label\":\"TRANSMISSION D\'ORIGINE\",\"health\":99.99601708932608,\"type\":\"stock_transmition\"},\"suspension\":{\"label\":\"SUSPENSION D\'ORIGINE\",\"health\":99.99645172164066,\"type\":\"stock_suspension\"},\"oil\":{\"label\":\"HUILE D\'ORIGINE\",\"health\":99.97920394073506,\"type\":\"stock_oil\"},\"turbo\":{\"health\":100.0,\"type\":\"turbo_lvl_1\"}}', 62.1585),
(31, 'ESXOP272', '{\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100},\"tires\":{\"type\":\"stock_tires\",\"health\":100},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100},\"oil\":{\"type\":\"stock_oil\",\"health\":100},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100}}', 0),
(32, 'ESXFN694', '{\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"},\"tires\":{\"health\":100,\"type\":\"stock_tires\"}}', 0),
(33, 'ESX2Y340', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99993668956776},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99971649734755},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99994240985217},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99939575195313},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99965319591317},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9998224596772}}', 0),
(34, 'ESX7V787', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.9930908203125},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9994958983093},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9983876095129},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99876312507027},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9968335491133},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9995644023337}}', 8.99813),
(35, 'ESX8C865', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.99945068359375},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9999753618089},\"tires\":{\"type\":\"stock_tires\",\"health\":99.999977825628},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99994825979866},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99980043065202},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99997984148}}', 1.28455),
(36, 'ESXGB762', '{\"suspension\":{\"health\":99.99954392600205,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99950197447949,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.98574112157233,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99789049673814,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99536743164063,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.9985799374022,\"type\":\"stock_brakes\"}}', 7.4777),
(37, 'ESX7T135', '{\"suspension\":{\"health\":99.9999078208066,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.9999078208066,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.9954371299283,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99991703872591,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99986572265625,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99967737282327,\"type\":\"stock_brakes\"}}', 0),
(38, 'ESX3J399', '{\"suspension\":{\"health\":99.99958597263817,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99956099726744,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.98445695040357,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99861587285928,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99710693359376,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99865580079103,\"type\":\"stock_brakes\"}}', 3.55779),
(39, 'ESXFJ924', '{\"suspension\":{\"health\":99.97199723849606,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.96633324141917,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.73673656607716,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.7454056330325,\"type\":\"stock_oil\"},\"engine\":{\"health\":97.9701171875,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.92577912246158,\"type\":\"stock_brakes\"}}', 168.974),
(40, 'ESXOD873', '{\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9999946220859},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999402453989},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999402453989},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99970421472445},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9999790858896}}', 0),
(41, 'ESX9H766', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.99486083984375},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99696779937037},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99663088819063},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99663088819063},\"tires\":{\"type\":\"stock_tires\",\"health\":99.83322896548965},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98820810867317}}', 0.000116348),
(42, 'ESX6S254', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.99999389648437},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99999354864493},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9999928318277},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9999928318277},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99964517547116},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99997491139695}}', 0),
(43, 'ESX3C015', '{\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100.0}}', 0),
(44, 'ESXKG289', '{\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100.0}}', 1.36781),
(45, 'ESX7Y989', '{\"oil\":{\"health\":99.99999653633046,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99999615147829,\"type\":\"stock_suspension\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99998653017402,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99980949817538,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99999615147829,\"type\":\"stock_transmition\"}}', 0),
(46, 'ESX3Q038', '{\"oil\":{\"health\":100.0,\"type\":\"stock_oil\"},\"suspension\":{\"health\":100.0,\"type\":\"stock_suspension\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"brakes\":{\"health\":100.0,\"type\":\"stock_brakes\"},\"tires\":{\"health\":100.0,\"type\":\"stock_tires\"},\"transmition\":{\"health\":100.0,\"type\":\"stock_transmition\"}}', 0.0808519),
(47, 'ESX1B946', '{\"oil\":{\"health\":99.95414327192236,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99459626045261,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.89898071289062,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.98533807510117,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.93317740176943,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99358407866288,\"type\":\"stock_transmition\"}}', 143.691),
(48, 'ESX9P613', '{\"oil\":{\"health\":98.87507631399552,\"type\":\"stock_oil\"},\"engine\":{\"health\":93.59983520507812,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.66447302403256,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.87415981579133,\"type\":\"stock_suspension\"},\"tires\":{\"health\":98.72302339312269,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.84918037084718,\"type\":\"stock_transmition\"}}', 3579.92),
(49, 'ESX2Q835', '{\"oil\":{\"type\":\"stock_oil\",\"health\":94.64124701396338},\"engine\":{\"type\":\"stock_engine\",\"health\":87.39425048828125},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.40127242200116},\"tires\":{\"type\":\"stock_tires\",\"health\":93.95638641096233},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.28226259074632},\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.40429476829174}}', 17045.7),
(50, 'ESX2G567', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9979008104595},\"tires\":{\"type\":\"stock_tires\",\"health\":99.95818681055938},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9939683947359},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98281860351563},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98542499033107},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.997587582334}}', 43.3079),
(51, 'ESX1K893', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99987190889297},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99622333681086},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99960599785448},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99837036132813},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99936094954407},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99985897633838}}', 295.661),
(52, 'ESX5U084', '{\"oil\":{\"health\":99.99877646363967,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99976537044836,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.99985961914062,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99928378306349,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99334138718966,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99974037366408,\"type\":\"stock_transmition\"}}', 310.602),
(53, 'ESX8M327', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.49486234136592},\"engine\":{\"type\":\"stock_engine\",\"health\":98.88244018554687},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.85199289631854},\"tires\":{\"type\":\"stock_tires\",\"health\":99.46646587051396},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.93299909793648},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9442323516429}}', 1647.63),
(54, 'ESXEU324', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.59683834223722},\"engine\":{\"type\":\"stock_engine\",\"health\":98.71997680664063},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.88584119760319},\"tires\":{\"type\":\"stock_tires\",\"health\":99.63371519550161},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94760507565664},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95659513186505}}', 1323.37),
(55, 'ESX7P109', '{\"oil\":{\"type\":\"stock_oil\",\"health\":98.6109692673881},\"engine\":{\"type\":\"stock_engine\",\"health\":74.5638916015625},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.58275584852906},\"tires\":{\"type\":\"stock_tires\",\"health\":98.3790695710206},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.81297048691363},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.84379634981315}}', 4533.81),
(56, 'LPLV5579', '{\"oil\":{\"health\":99.99963108005463,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.9999117486296,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.9992431640625,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99972114177383,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99704862888692,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99990460063671,\"type\":\"stock_transmition\"}}', 1.0095),
(57, 'TLBE5165', '{\"oil\":{\"health\":99.99917653497981,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99983136333245,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.99826049804688,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.9994794286137,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99494041739061,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99981477834432,\"type\":\"stock_transmition\"}}', 2.36937),
(58, 'XHLZ9282', '{\"oil\":{\"health\":99.99115443665997,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99860569709051,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.98081665039062,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99590712255845,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.96813843706322,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99841827262829,\"type\":\"stock_transmition\"}}', 26.6758),
(59, 'ESXXU516', '{\"oil\":{\"type\":\"stock_oil\",\"health\":98.14530466306883},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.75374956903211},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.4556648706022},\"tires\":{\"type\":\"stock_tires\",\"health\":98.02749753594567},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.79498870915988},\"engine\":{\"type\":\"stock_engine\",\"health\":95.9010009765625}}', 5863.15),
(60, 'UYXZ2414', '{\"tires\":{\"health\":99.99872028930133,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99990702439689,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99996554183501,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99993896484375,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99997313106424,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99997287733283,\"type\":\"stock_transmition\"}}', 0.0195787),
(61, 'JHCW1637', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99974786464593},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99984130859375},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99992247241407},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99992728975168},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99647647052683},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99992759501338}}', 0.0516381),
(62, 'ESX5T307', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9999141729053},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99967041015626},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99994837240365},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99997391406967},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99888486150643},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9999746249348}}', 2.26491),
(63, 'UDWX6210', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.71003261835962},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":98.92348913817138},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.86413906446076},\"tires\":{\"type\":\"stock_tires\",\"health\":99.24482278994505},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.88823593364859}}', 2180.36),
(64, 'ESXUL337', '{\"oil\":{\"health\":98.74250275262942,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.84288176078805,\"type\":\"stock_transmition\"},\"engine\":{\"health\":-0.61189107894897,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.66710382455195,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.87106587270945,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.20519042721382,\"type\":\"stock_tires\"}}', 83.8184),
(65, 'ESXOC238', '{\"oil\":{\"health\":99.99997578642186,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99999701066938,\"type\":\"stock_transmition\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99999372240568,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99999755418402,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99998668253203,\"type\":\"stock_tires\"}}', 3741.69),
(66, 'ESX1M227', '{\"oil\":{\"health\":98.97700980616571,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.85025740050726,\"type\":\"stock_transmition\"},\"engine\":{\"health\":24.32627410888671,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.64861070681389,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.87268724531242,\"type\":\"stock_suspension\"},\"tires\":{\"health\":98.14467930131933,\"type\":\"stock_tires\"}}', 2549.29),
(67, 'ESX1R607', '{\"oil\":{\"health\":99.99867053651133,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99968877172299,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.99708251953125,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.9991147428714,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99971527066337,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99115924652054,\"type\":\"stock_tires\"}}', 3.83383),
(68, 'ESX8K878', '{\"tires\":{\"type\":\"stock_tires\",\"health\":100},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":100},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100}}', 0),
(69, 'ESXMW225', '{\"engine\":{\"health\":99.986328125,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99372993254916,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99748002732079,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99911775457432,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.98313409937684,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99898254354794,\"type\":\"stock_transmition\"}}', 19.0601),
(70, 'ESXST750', '{\"engine\":{\"health\":99.96411743164063,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.98219432066652,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.97255980115871,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.64781326763337,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99184970860493,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99159117978827,\"type\":\"stock_transmition\"}}', 36.5986),
(71, 'ESX4W211', '{\"engine\":{\"health\":99.99990844726563,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99994247374339,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99979896262113,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99994239246804,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99717622821308,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99994225223402,\"type\":\"stock_transmition\"}}', 0.0349603),
(72, 'ESXJT626', '{\"engine\":{\"health\":99.99995727539063,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99997354530699,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99996700804218,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99999005508139,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99959340991299,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.9999896228773,\"type\":\"stock_transmition\"}}', 0.03214),
(73, 'ESX3C118', '{\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99999909398034,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99999812554637,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99999945220468,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99997490578495,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99999944200704,\"type\":\"stock_transmition\"}}', 0.00126791),
(74, 'ESX2H238', '{\"engine\":{\"health\":99.999951171875,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99996707682489,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99988693102712,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99996758351723,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99841373223032,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99996749096559,\"type\":\"stock_transmition\"}}', 0.0170141),
(75, 'ESX4S022', '{\"engine\":{\"health\":99.99995727539063,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99997791064154,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99996813979557,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99999049602428,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99959581084701,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99999016180749,\"type\":\"stock_transmition\"}}', 0.0289205),
(76, 'ESXPQ465', '{\"tires\":{\"health\":99.9981724015178,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99970383600352,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99981224751277,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99884643554688,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.9999332408351,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99993920247015,\"type\":\"stock_suspension\"}}', 2752.58),
(77, 'ESXNF115', '{\"tires\":{\"health\":99.89917717005739,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.9213542706737,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.97577291279375,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.8299072265625,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.9892464456182,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99098804992076,\"type\":\"stock_suspension\"}}', 243.49),
(78, 'ESXGS539', '{\"tires\":{\"health\":99.9998668186003,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99975785200059,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99993722088903,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99925537109375,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99997010518526,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99997554060612,\"type\":\"stock_suspension\"}}', 3688.99),
(79, 'ESXOS934', '{\"tires\":{\"health\":99.99986326015055,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99975138209192,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99993554350532,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99899291992188,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.9999693064311,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99997488707999,\"type\":\"stock_suspension\"}}', 1.88969),
(80, 'ESXKB386', '{\"tires\":{\"health\":99.99987974629745,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99978135690445,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.999943314753,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99942626953126,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99997300702523,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99997791483884,\"type\":\"stock_suspension\"}}', 17.8855),
(81, 'ESX6V651', '{\"tires\":{\"health\":99.99987976158654,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.9997813847028,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99994332195999,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99943237304687,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99997301045714,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99997791764675,\"type\":\"stock_suspension\"}}', 31.4862),
(82, 'ESXEI857', '{\"tires\":{\"health\":99.99987097852814,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.9997654155057,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99993918179777,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99935913085938,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99997103895132,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99997630459653,\"type\":\"stock_suspension\"}}', 1.93185),
(83, 'ESXEC698', '{\"tires\":{\"health\":99.99986940520248,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99976255491356,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99993844016278,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99927978515625,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99997068579182,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99997601564785,\"type\":\"stock_suspension\"}}', 1.91782),
(84, 'ESX6R960', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99963296358341},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99387177430637},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99950979234422},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99984719024542},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99985298589283},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99970703125}}', 2.01165),
(85, 'ESXHJ475', '{\"tires\":{\"health\":99.99987823796507,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99977861448193,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99994260375456,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99927978515625,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99997266845458,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99997763782645,\"type\":\"stock_suspension\"}}', 17.4696),
(86, 'ESXRY627', '{\"tires\":{\"health\":99.99403349713453,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.992087501372,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99784098054154,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.98224487304688,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99899386099092,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99917080476667,\"type\":\"stock_suspension\"}}', 22.3368),
(87, 'ESX0U055', '{\"tires\":{\"health\":99.9998767188476,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.9997758524502,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99994188767227,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99893798828126,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99997232746299,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99997735883334,\"type\":\"stock_suspension\"}}', 1.95607),
(88, 'ESXMW555', '{\"tires\":{\"health\":99.99989183706203,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.9998033401128,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99994901410332,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99950561523437,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99997572100158,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99998013536494,\"type\":\"stock_suspension\"}}', 33.7801),
(89, 'ESX3Q611', '{\"tires\":{\"health\":99.99987771142753,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99977765714096,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99994235555505,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99940185546875,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.9999725502643,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99997754112533,\"type\":\"stock_suspension\"}}', 1.94194),
(90, 'ESXDT074', '{\"tires\":{\"health\":99.9849051722783,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.9833105343419,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99527876696034,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.96040649414063,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99783227022646,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.9982044547937,\"type\":\"stock_suspension\"}}', 36.2902),
(91, 'ESX7C161', '{\"tires\":{\"health\":99.99071570405136,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.9913121806965,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99744723336392,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.98074340820313,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99884569664381,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99903885185297,\"type\":\"stock_suspension\"}}', 17.5487),
(92, 'ESXZX298', '{\"tires\":{\"health\":99.99987895899541,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99977992544622,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99994294363421,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.999365234375,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99997283030197,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99997777024709,\"type\":\"stock_suspension\"}}', 1.75797),
(93, 'ESXWK307', '{\"tires\":{\"health\":99.99191680571161,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99047381856943,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99734068230223,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.87872314453125,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.9987723453731,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99898500426869,\"type\":\"stock_suspension\"}}', 24.1866),
(94, 'ESX7K631', '{\"tires\":{\"health\":99.99988559745828,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99979199537867,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99994607287596,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99937744140625,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99997432041713,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.9999789894322,\"type\":\"stock_suspension\"}}', 1.84353),
(95, 'ESX6E397', '{\"tires\":{\"health\":99.94276936827157,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.90268044513597,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.97452203772494,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.79254760742188,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.98791803835258,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99010101283192,\"type\":\"stock_suspension\"}}', 0),
(96, 'ESXZK490', '{\"tires\":{\"health\":99.98632147822075,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.97512996040133,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99355221195592,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.9446533203125,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99692962474095,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99748787478797,\"type\":\"stock_suspension\"}}', 532.122),
(97, 'ESXVC442', '{\"tires\":{\"health\":99.99986919572,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99976217403635,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99993834141682,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99939575195313,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99997063876993,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.9999759771754,\"type\":\"stock_suspension\"}}', 24.0558),
(98, 'ESXMV628', '{\"tires\":{\"health\":100,\"type\":\"stock_tires\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"}}', 0),
(99, 'ESX6K773', '{\"suspension\":{\"health\":99.98284870989404,\"type\":\"stock_suspension\"},\"engine\":{\"health\":98.95147094726562,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.95414882181145,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.9794729153269,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.84784415893647,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.8202539732019,\"type\":\"stock_tires\"}}', 6769.24),
(100, 'ESXVP288', '{\"suspension\":{\"health\":99.99846603153708,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.97141723632812,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99582111540757,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99818269700656,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.9871443798995,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.9802389234115,\"type\":\"stock_tires\"}}', 27.4311),
(101, 'ESX8G346', '{\"suspension\":{\"health\":99.99995307743188,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.99961547851562,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99984037946945,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99995198017997,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99991333098746,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99789486032018,\"type\":\"stock_tires\"}}', 0.178382),
(102, 'ESXGC191', '{\"suspension\":{\"health\":99.99969776493998,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.99703369140625,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99906088143539,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.9996695020482,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99858334132964,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99064241216444,\"type\":\"stock_tires\"}}', 2.35595),
(103, 'ESXSH806', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9999912575335},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99997756100265},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99907836914062},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99991344958159},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99998931476317},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99995239726985}}', 0.346575),
(104, 'ESXEN185', '{\"suspension\":{\"health\":99.9999314933165,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.99967041015626,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99977146298223,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99992881798923,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99982999323048,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.9971392961086,\"type\":\"stock_tires\"}}', 5.69079),
(105, 'ESXQY059', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100.0},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100.0}}', 0),
(106, 'ESX4Y557', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96188929214674},\"tires\":{\"type\":\"stock_tires\",\"health\":99.69553988255926},\"engine\":{\"type\":\"stock_engine\",\"health\":99.36471557617188},\"oil\":{\"type\":\"stock_oil\",\"health\":99.7128300458422},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96827490621466},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.91578175083696}}', 904.165),
(107, 'ESXFZ053', '{\"suspension\":{\"health\":99.9999548633592,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.99921264648438,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99984591809738,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99995393565919,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.9999218051721,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99794965049263,\"type\":\"stock_tires\"}}', 0.245408),
(108, 'ESXGR311', '{\"suspension\":{\"health\":99.99992370988483,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.99955444335937,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99974072203666,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99992186763719,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99985672786863,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.9965888602781,\"type\":\"stock_tires\"}}', 0.348584),
(109, 'ESXBE308', '{\"suspension\":{\"health\":99.99961920618958,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.99779663085937,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99874398857458,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99960092835376,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.9989170332175,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.98477424165655,\"type\":\"stock_tires\"}}', 1.12999),
(110, 'ESXPL954', '{\"suspension\":{\"health\":99.99998535934673,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.99967651367187,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99996242232321,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.9999821058682,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.9998550575324,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99992028164282,\"type\":\"stock_tires\"}}', 0.443099),
(111, 'ESXZY410', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.16944580078125},\"oil\":{\"type\":\"stock_oil\",\"health\":99.6245864569324},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96088877178254},\"tires\":{\"type\":\"stock_tires\",\"health\":99.72933898064291},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.89839209477563},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.95248843998817}}', 0.303597),
(112, 'ESX8J041', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.96671943495393},\"tires\":{\"type\":\"stock_tires\",\"health\":99.96024107605769},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98994154374887},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99550212864424},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99624032260449},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 7.79656),
(113, 'ESXND935', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.950341796875},\"oil\":{\"type\":\"stock_oil\",\"health\":99.97724403193036},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99626281628693},\"tires\":{\"type\":\"stock_tires\",\"health\":99.90993570706596},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98893093136249},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9957839890591}}', 17.396),
(114, 'ESXSK535', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99970950667032},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98722954577198},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99903564453125},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99948137868621},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.999716001047},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99903328004688}}', 0.624509),
(115, 'ESXPS396', '{\"suspension\":{\"health\":99.99991021356242,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.99940185546875,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99970993998241,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99990445344003,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99968590725031,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99669750119883,\"type\":\"stock_tires\"}}', 8.23404),
(116, 'ESX0F137', '{\"suspension\":{\"health\":99.99998779166195,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.99971923828125,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99996866526564,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99998507869795,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99987913745322,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99993352559926,\"type\":\"stock_tires\"}}', 12.9942),
(117, 'ESX4C575', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94539311730385},\"tires\":{\"type\":\"stock_tires\",\"health\":99.6071265072767},\"engine\":{\"type\":\"stock_engine\",\"health\":98.69373168945313},\"oil\":{\"type\":\"stock_oil\",\"health\":99.58159631094986},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95471780151134},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.88067597896237}}', 1337.79),
(118, 'ESX9A547', '{\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"},\"tires\":{\"health\":100,\"type\":\"stock_tires\"}}', 0),
(119, 'ESXWG325', '{\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"},\"tires\":{\"health\":100,\"type\":\"stock_tires\"}}', 0),
(120, 'ESX4W070', '{\"suspension\":{\"health\":99.84634168989087,\"type\":\"stock_suspension\"},\"oil\":{\"health\":98.5292484147446,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.81344146504732,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.60037685896282,\"type\":\"stock_brakes\"},\"engine\":{\"health\":78.0544189453125,\"type\":\"stock_engine\"},\"tires\":{\"health\":98.91630097426202,\"type\":\"stock_tires\"}}', 2863.87),
(121, 'ESX8D500', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.86174329882705},\"tires\":{\"type\":\"stock_tires\",\"health\":98.99869411631069},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.88532537664537},\"engine\":{\"type\":\"stock_engine\",\"health\":97.65664672851563},\"oil\":{\"type\":\"stock_oil\",\"health\":98.94171868732691},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.6976835450985}}', 3338.42),
(122, 'ESXJT863', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99997340306888},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99988151067189},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99997823887456},\"engine\":{\"type\":\"stock_engine\",\"health\":null},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99978456485798},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99994414644468}}', 1.89732),
(123, 'ESX8K629', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.86706640792909},\"tires\":{\"type\":\"stock_tires\",\"health\":99.22765566332419},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.89050910047222},\"engine\":{\"type\":\"stock_engine\",\"health\":97.67504272460937},\"oil\":{\"type\":\"stock_oil\",\"health\":98.95202914242525},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.7152411603337}}', 5260.81),
(124, 'ESXSQ112', '{\"suspension\":{\"health\":99.8732601447402,\"type\":\"stock_suspension\"},\"oil\":{\"health\":98.8451679095045,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.84756221336356,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.66434181837734,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.0625244140625,\"type\":\"stock_engine\"},\"tires\":{\"health\":98.82092781530285,\"type\":\"stock_tires\"}}', 3642.82),
(125, 'ESXMH206', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9999824781728},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9999219402599},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99998566395958},\"engine\":{\"type\":\"stock_engine\",\"health\":null},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99985807319985},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99996320416293}}', 1.88997),
(126, 'ESX7X466', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9284641600246},\"tires\":{\"type\":\"stock_tires\",\"health\":99.45606454307498},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9405615116502},\"engine\":{\"type\":\"stock_engine\",\"health\":98.79789428710937},\"oil\":{\"type\":\"stock_oil\",\"health\":99.45656261964952},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.84277416760314}}', 1715.19),
(127, 'ESX1B919', '{\"oil\":{\"type\":\"stock_oil\",\"health\":100},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100}}', 0),
(128, 'ESXXA630', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.99971923828125},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99996702967136},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9999842998435},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9999300558028},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99998715441741},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99987282873238}}', 0.122654),
(129, 'ESX4T403', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.9981689453125},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99964116205305},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99986002222473},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99728873640052},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99987704615544},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99919987234539}}', 2.85093),
(130, 'ESXPJ631', '{\"oil\":{\"health\":99.96822548500674,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.94317626953125,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.97048669972426,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.97061832964178,\"type\":\"stock_suspension\"},\"tires\":{\"health\":98.57170261980215,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.89771699945055,\"type\":\"stock_brakes\"}}', 17.8466),
(131, 'ESXNO515', '{\"oil\":{\"health\":99.9165276952867,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.77946166992187,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.98776159587789,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.98959133681238,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.84751273811271,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.9712545907684,\"type\":\"stock_brakes\"}}', 1488.85),
(132, 'ESXPB129', '{\"oil\":{\"health\":99.98984595121537,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.9785400390625,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99771984578266,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99792443946926,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.93781994061222,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99359483162628,\"type\":\"stock_brakes\"}}', 2660.84),
(133, 'ESXFC405', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99725492779382},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99456787109375},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99860623245694},\"tires\":{\"type\":\"stock_tires\",\"health\":99.94033458224787},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99864387592705},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99541166832096}}', 2117.89),
(134, 'ESXAF704', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99976957374286},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99987326555856},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99994025985927},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99997155231391},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99997672462048},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 1.86164);
INSERT INTO `vehicle_parts` (`id`, `plate`, `parts`, `mileage`) VALUES
(135, 'ESX9U798', '{\"oil\":{\"type\":\"stock_oil\",\"health\":98.88358586793993},\"tires\":{\"type\":\"stock_tires\",\"health\":98.78018348615059},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.67017750360648},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.85118285113667},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.87599291926996},\"engine\":{\"type\":\"stock_engine\",\"health\":96.62914428710937}}', 3516.44),
(136, 'ESXIG266', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.93735840573453},\"tires\":{\"type\":\"stock_tires\",\"health\":99.83368163003692},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97496945075037},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98987459612344},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9912263317492},\"engine\":{\"type\":\"stock_engine\",\"health\":99.86333618164062}}', 189.48),
(137, 'ESX2S336', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.78571787868155},\"tires\":{\"type\":\"stock_tires\",\"health\":99.7729345871266},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.93716543572919},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97156448100532},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97632938388978},\"engine\":{\"type\":\"stock_engine\",\"health\":99.52631225585938}}', 674.019),
(138, 'ESX9P730', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99958960718674},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97775787264372},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99842599086587},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99954998428913},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99955012011422},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9992919921875}}', 0.0256178),
(139, 'ESXJM886', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.79971210777333},\"tires\":{\"type\":\"stock_tires\",\"health\":99.7633934979791},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.93964449210726},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97297948957086},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97742316211743},\"engine\":{\"type\":\"stock_engine\",\"health\":98.570703125}}', 779.111),
(140, 'ESX6Y447', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.82323676503786},\"tires\":{\"type\":\"stock_tires\",\"health\":99.80451072080271},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9476218630733},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97639489361981},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98032213198394},\"engine\":{\"type\":\"stock_engine\",\"health\":99.6091796875}}', 553.473),
(141, 'ESXLS373', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.78137404517598},\"tires\":{\"type\":\"stock_tires\",\"health\":99.77857983800796},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.93657482597597},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9711739384079},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97603965808939},\"engine\":{\"type\":\"stock_engine\",\"health\":97.09957885742188}}', 688.63),
(142, 'ESXYR317', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.75115762319521},\"tires\":{\"type\":\"stock_tires\",\"health\":99.72314896541924},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.92615374676231},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96673951810857},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97226749646979},\"engine\":{\"type\":\"stock_engine\",\"health\":99.44942626953125}}', 779.669),
(143, 'ESX2D631', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.58260170342794},\"tires\":{\"type\":\"stock_tires\",\"health\":99.59377312246605},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.88000964081798},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94526499617104},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9545613798359},\"engine\":{\"type\":\"stock_engine\",\"health\":98.48614501953125}}', 6123.78),
(144, 'ESX0F540', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.79944491811718},\"tires\":{\"type\":\"stock_tires\",\"health\":99.76600204438663},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.93975890201942},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97299648450121},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97744729050963},\"engine\":{\"type\":\"stock_engine\",\"health\":99.55682983398438}}', 622.96),
(145, 'ESXVU209', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.76657619030483},\"tires\":{\"type\":\"stock_tires\",\"health\":99.74120607768022},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.93078954793059},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96881675780524},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97400258840419},\"engine\":{\"type\":\"stock_engine\",\"health\":99.48419189453125}}', 1106.84),
(146, 'ESX4C395', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.70470286451557},\"tires\":{\"type\":\"stock_tires\",\"health\":99.70469153232267},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.91458271780454},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96113301506094},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.967706672865},\"engine\":{\"type\":\"stock_engine\",\"health\":99.34649047851562}}', 922.202),
(147, 'ESXPQ283', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.72976432085138},\"tires\":{\"type\":\"stock_tires\",\"health\":99.74826356432888},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.92306581185797},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96476734295418},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97079073406046},\"engine\":{\"type\":\"stock_engine\",\"health\":99.40203857421875}}', 845.656),
(148, 'ESX4D126', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.73510000477778},\"tires\":{\"type\":\"stock_tires\",\"health\":99.7526778039296},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9245477681522},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96545290768641},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97135714031619},\"engine\":{\"type\":\"stock_engine\",\"health\":99.41301879882812}}', 832.013),
(149, 'ESX7U162', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.8084632910231},\"tires\":{\"type\":\"stock_tires\",\"health\":99.80249739207689},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.94419913370129},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97468187339695},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97894324700892},\"engine\":{\"type\":\"stock_engine\",\"health\":99.57615356445312}}', 597.573),
(150, 'ESX6F478', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.6665852816925},\"tires\":{\"type\":\"stock_tires\",\"health\":99.64859436522466},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.90235845405303},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.95578988146444},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96320466963683},\"engine\":{\"type\":\"stock_engine\",\"health\":99.26345825195313}}', 1037.16),
(151, 'ESXIN096', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99978527471619},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98852118206354},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99918702648938},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99976742159196},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9997675580747},\"engine\":{\"type\":\"stock_engine\",\"health\":99.999609375}}', 0.0364399),
(152, 'ESX8M905', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99997969398896},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99998883169394},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999473547864},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999749308506},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999794888778},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 0.457239),
(153, 'ESXFA815', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.79954054847615},\"tires\":{\"type\":\"stock_tires\",\"health\":99.76451229931935},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.93968088278234},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97298031458407},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97742833818634},\"engine\":{\"type\":\"stock_engine\",\"health\":99.557421875}}', 622.956),
(154, 'ESXHZ106', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99975241881111},\"tires\":{\"type\":\"stock_tires\",\"health\":99.986992059828},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99907778180415},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99973595673933},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99973620780634},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99949340820312}}', 0.110082),
(155, 'ESX6Y721', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99981097553816},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99012010020538},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.999299331065},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99979934049202},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99979955339366},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99961547851562}}', 0.0747042),
(156, 'ESXAB545', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99984512579165},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99991481918542},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99995984742745},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99998087972738},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99998435614056},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 0),
(157, 'ESXNE386', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.97864657308372},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9616791918926},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99269234557512},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99688171165747},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99735006942027},\"engine\":{\"type\":\"stock_engine\",\"health\":99.95299682617187}}', 66.482),
(158, 'ESX0L389', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99993180565002},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99996249310753},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99998231998333},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999158094446},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999311168182},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 7.52034),
(159, 'ESX2Q204', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99929117256765},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99679851912308},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99962880733043},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.999861491095},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99987624284799},\"engine\":{\"type\":\"stock_engine\",\"health\":99.998876953125}}', 11.3029),
(160, 'ESXGF261', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99550878164212},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98581155416838},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99805447138107},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99923297385651},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99932895604913},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99013061523438}}', 13.7293),
(161, 'ESXLQ454', '{\"oil\":{\"type\":\"stock_oil\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100.0},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 0.00322914),
(162, 'ESX4T605', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.91948216614158},\"tires\":{\"type\":\"stock_tires\",\"health\":99.89757072114378},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97524910352137},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98900485933298},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99078824840517},\"engine\":{\"type\":\"stock_engine\",\"health\":99.8226806640625}}', 250.6),
(163, 'ESXXX784', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.76727889010209},\"tires\":{\"type\":\"stock_tires\",\"health\":99.7541980077513},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.93181200662943},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96913215774245},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97430741157754},\"engine\":{\"type\":\"stock_engine\",\"health\":99.4853515625}}', 726.592),
(164, 'ESXKE801', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99998938758805},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99999416317341},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999724863393},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999868982569},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999892803919},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 0.0523268),
(165, 'ESXKH706', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99981073913327},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99989590652329},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99995093236788},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9999766344609},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99998088274075},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 1.48086),
(166, 'ESXJD538', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99999175633923},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99999546598657},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999786275463},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9999989822641},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.999999167307},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 0.0408232),
(167, 'ESXQV775', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99942522379392},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97857565577448},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9984439130381},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99954616353668},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99955036362225},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9988525390625}}', 0.774067),
(168, 'ESX7E119', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99989561258093},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9999425869195},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99997293659506},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99998711266432},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99998945581625},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 5.3856),
(169, 'ESX0W678', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99999695285564},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9999983240706},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999920999962},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999962380935},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999969220764},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 0.0169874),
(170, 'ESXBC512', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.9998117421675},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99989645819213},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99995119241379},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99997675829229},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99998098405732},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9995361328125}}', 9.42091),
(171, 'ESX4T371', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99998817427185},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99999349584953},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999693407048},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999854003356},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999880548198},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 0.0504556),
(172, 'ESX5V652', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99967539869307},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98467166552972},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99890596023846},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99968512743324},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99968616824124},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99925537109375}}', 4.86382),
(173, 'ESX9R746', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99999139056082},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99999526480846},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999776792318},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999893710627},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999913035969},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 0.0571852),
(174, 'ESX7F585', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.9999926013379},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99999593073584},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999808182834},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999908658492},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999925266039},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 0.0444056),
(175, 'ESX6N100', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99999877256635},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99999932491149},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999968177646},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999984846498},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9999998760168},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 0.0293789),
(176, 'ESX8T500', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.9064061241516},\"tires\":{\"type\":\"stock_tires\",\"health\":99.89643026524101},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97226240187901},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98750029732958},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98957969489124},\"engine\":{\"type\":\"stock_engine\",\"health\":99.79288940429687}}', 296.516),
(177, 'ESXIU617', '{\"oil\":{\"type\":\"stock_oil\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100.0},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 0.00256443),
(178, 'ESX0S398', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.9999878359774},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99999330978756},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9999968463645},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999849826881},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999877131084},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 0.156176),
(179, 'ESXAC371', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99975707165732},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99986638941151},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99993701857781},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99997000884659},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99997546178357},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 8.06145),
(180, 'ESX3K597', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99983264279988},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99102059615828},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99936418105634},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99981813316416},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99981822601889},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9996826171875}}', 0.0338176),
(181, 'ESXGZ616', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99998802173136},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99999341195225},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999689452294},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9999985212014},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999879007388},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 0.0704938),
(182, 'ESXNE868', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99512961145075},\"tires\":{\"type\":\"stock_tires\",\"health\":99.74364976592598},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98182759746558},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99479743604384},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9948021855637},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99151611328125}}', 6.60093),
(183, 'ESXBB596', '{\"oil\":{\"type\":\"stock_oil\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100.0},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 0.00357056),
(184, 'ESXCG077', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.9997264007443},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98646987451183},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99903718147539},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99972353241351},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99972415813139},\"engine\":{\"type\":\"stock_engine\",\"health\":99.999462890625}}', 0.131821),
(185, 'ESX8Y862', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99942732176493},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98115985187431},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99861664220092},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9995932756732},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99959849351009},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99884033203125}}', 0.741117),
(186, 'ESXKY710', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.9998989672331},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9999444319782},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99997380631969},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9999875268189},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99998979467002},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 0.598326),
(187, 'ESXBH787', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99976448481384},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99987046664762},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99993894050729},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99997092405109},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99997621058725},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 1.44703),
(188, 'ESX1F192', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99987192420137},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99330523225926},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9995252184855},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99986403125382},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99986417529238},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99974365234375}}', 0.0453472),
(189, 'ESX9R999', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99967100787615},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99312675148625},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99946859774397},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99983799375592},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99984261967774},\"engine\":{\"type\":\"stock_engine\",\"health\":99.999267578125}}', 3.28807),
(190, 'ESXJE565', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99999766549945},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99999871602469},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999939475912},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999971179006},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999976419187},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 0.0143414),
(191, 'ESX6W182', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99984342749674},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99150700091733},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99939900536572},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9998281797856},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99982822863182},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99972534179688}}', 0.0150986),
(192, 'ESX5W583', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99970680051597},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98427874693893},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99888675826905},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99968156387965},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99968173072247},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99947509765625}}', 0.0469133),
(193, 'ESXHI459', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99954717350208},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98482494173219},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99888763515196},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9996733566135},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99967736791274},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99912719726562}}', 3.69533),
(194, 'ESXNC368', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.9999976916841},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99999873042626},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999940154773},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999971502273},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999976683678},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 0.0371609),
(195, 'ESXLE243', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99999723898202},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99999848144012},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999928418052},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999965913358},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999972110929},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 0.0173158),
(196, 'ESX7N131', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.99986196762404},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99944458007812},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99996901630169},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9997490320437},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99997464970139},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99993493423355}}', 0.264174),
(197, 'ESXUM407', '{\"suspension\":{\"health\":99.99998169912556,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99981882134289,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99995302775558,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99997763226458,\"type\":\"stock_transmition\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99990035173859,\"type\":\"stock_tires\"}}', 6.27703),
(198, 'ESXUS576', '{\"suspension\":{\"health\":99.99993796912414,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.9997393274739,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99980413509246,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99993291122937,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.9994140625,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99793218663618,\"type\":\"stock_tires\"}}', 6.08303),
(199, 'ESX9J742', '{\"suspension\":{\"health\":99.99998234716876,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99982523697061,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99995469106645,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99997842431736,\"type\":\"stock_transmition\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99990388033383,\"type\":\"stock_tires\"}}', 0.612359),
(200, 'ESX9I877', '{\"suspension\":{\"health\":99.99998052028302,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99980715080186,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99995000205972,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99997619145701,\"type\":\"stock_transmition\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99989393294104,\"type\":\"stock_tires\"}}', 6.96969),
(201, 'ESXAT383', '{\"suspension\":{\"health\":99.99998284064914,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99983012242633,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99995595766608,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99997902746003,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.99961547851562,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99990656733449,\"type\":\"stock_tires\"}}', 1.53338),
(202, 'ESX3M584', '{\"suspension\":{\"health\":99.99997754398834,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99977768548442,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99994236290336,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99997255376351,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.99938354492187,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99987772701641,\"type\":\"stock_tires\"}}', 1.61233),
(203, 'ESXRU490', '{\"suspension\":{\"health\":99.9999838116571,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99983973540542,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99995844991993,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99998021424759,\"type\":\"stock_transmition\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99991185447299,\"type\":\"stock_tires\"}}', 4.53559),
(204, 'ESXRV359', '{\"suspension\":{\"health\":99.99997952428342,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99979729040568,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99994744566074,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99997497412416,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.99948120117188,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.9998885097231,\"type\":\"stock_tires\"}}', 8.81196),
(205, 'ESX3U783', '{\"suspension\":{\"health\":99.99998139929956,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99981585306552,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99995225820216,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99997726581054,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.99943237304687,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99989871918604,\"type\":\"stock_tires\"}}', 4.68826),
(206, 'ESX7P186', '{\"suspension\":{\"health\":99.99998309286126,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99983261932646,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99995660501055,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.9999793357193,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.999560546875,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99990794062956,\"type\":\"stock_tires\"}}', 4.4616),
(207, 'ESX5U584', '{\"suspension\":{\"health\":99.99998098409178,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99981174250864,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99995119250225,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99997675833439,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.99953002929688,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99989645837974,\"type\":\"stock_tires\"}}', 6.78024),
(208, 'ESXSA536', '{\"suspension\":{\"health\":99.9999452547498,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99985836509278,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99981797013214,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99994297415272,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.99956665039062,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99774223278713,\"type\":\"stock_tires\"}}', 5.64206),
(209, 'ESXWT819', '{\"suspension\":{\"health\":99.99998071907462,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99980911883873,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99995051229154,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99997643442454,\"type\":\"stock_transmition\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.9998950153613,\"type\":\"stock_tires\"}}', 7.73226),
(210, 'ESXVM453', '{\"suspension\":{\"health\":99.99997806560524,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99978284949178,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.9999437017201,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.9999731912953,\"type\":\"stock_transmition\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99988056722049,\"type\":\"stock_tires\"}}', 17.052),
(211, 'ESXAZ662', '{\"suspension\":{\"health\":99.9997908318501,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99929656631319,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99932133779343,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99977811129819,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.99840087890625,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99216799419364,\"type\":\"stock_tires\"}}', 1.66873),
(212, 'ESX7H477', '{\"suspension\":{\"health\":99.9999800061483,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99980206086814,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.9999486824473,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99997556307015,\"type\":\"stock_transmition\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99989113347748,\"type\":\"stock_tires\"}}', 13.0137),
(213, 'ESXYC120', '{\"suspension\":{\"health\":99.99997983168201,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99980033365198,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.9999482346505,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99997534983359,\"type\":\"stock_transmition\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.9998901835086,\"type\":\"stock_tires\"}}', 17.687),
(214, 'ESXPM435', '{\"suspension\":{\"health\":99.99998744967128,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99987575174559,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99996778748963,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99998466070933,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.99966430664063,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99993166346005,\"type\":\"stock_tires\"}}', 0),
(215, 'ESX1E930', '{\"suspension\":{\"health\":99.99685247191168,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.98558897572856,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99018435899645,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99656658922057,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.96885986328125,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.9008728884658,\"type\":\"stock_tires\"}}', 59.6611),
(216, 'ESXLC330', '{\"suspension\":{\"health\":99.99519991919459,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.9799458221233,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.98483140215999,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99481142277112,\"type\":\"stock_transmition\"},\"engine\":{\"health\":0.0,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.83941444485557,\"type\":\"stock_tires\"}}', 41.3641),
(217, 'ESXQZ806', '{\"suspension\":{\"health\":99.98892267455318,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.9682357630854,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.96348954625342,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.98838453519508,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.9570556640625,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.55835717292539,\"type\":\"stock_tires\"}}', 75.0717),
(218, 'ESX7R544', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99971243403187},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99991783829478},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99593299559274},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99992605446528},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99991783829478},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99988403320313}}', 0),
(219, 'ESXEI239', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.7993398203324},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.91069484534965},\"tires\":{\"type\":\"stock_tires\",\"health\":99.18003029202508},\"oil\":{\"type\":\"stock_oil\",\"health\":99.34409921540721},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92522833387},\"engine\":{\"type\":\"stock_engine\",\"health\":96.69847412109375}}', 2096.67),
(220, 'ESX6V312', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.61368776616199},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.82750187873862},\"tires\":{\"type\":\"stock_tires\",\"health\":98.4571915543126},\"oil\":{\"type\":\"stock_oil\",\"health\":98.72653413933806},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.85573969569617},\"engine\":{\"type\":\"stock_engine\",\"health\":92.44508666992188}}', 4127.86),
(221, 'ESXWY185', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.55250507341489},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.7974805614344},\"tires\":{\"type\":\"stock_tires\",\"health\":98.38335880359385},\"oil\":{\"type\":\"stock_oil\",\"health\":98.47378509068993},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.83141862745956},\"engine\":{\"type\":\"stock_engine\",\"health\":96.57035522460937}}', 4967.35),
(222, 'ESXYC353', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.64156329630166},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.83770878811862},\"tires\":{\"type\":\"stock_tires\",\"health\":98.70990316836881},\"oil\":{\"type\":\"stock_oil\",\"health\":98.7760848573176},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.86492729953197},\"engine\":{\"type\":\"stock_engine\",\"health\":96.84906616210938}}', 3958.33),
(223, 'ESXIB361', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.3693083780313},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.71272642197921},\"tires\":{\"type\":\"stock_tires\",\"health\":97.83805075599497},\"oil\":{\"type\":\"stock_oil\",\"health\":97.81408628838716},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.76139731822626},\"engine\":{\"type\":\"stock_engine\",\"health\":95.18523559570312}}', 7072.77),
(224, 'ESXWD585', '{\"oil\":{\"health\":99.62738025128644,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.9506823508811,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.95897108483342,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.17593383789063,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.89121147951608,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.61228948343967,\"type\":\"stock_tires\"}}', 1171.97),
(225, 'CWER0212', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99445583771875},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99783771311624},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98764561248908},\"tires\":{\"type\":\"stock_tires\",\"health\":99.95808390953828},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98541870117188},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99810054971515}}', 37.2689),
(226, 'DPUP6623', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99979750656948},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99994148928276},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99993554223002},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99717753151315},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99988403320313},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99994178721519}}', 0.0506641),
(227, 'DIPC0084', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98552992370252},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99342111298999},\"oil\":{\"type\":\"stock_oil\",\"health\":99.95007657075466},\"tires\":{\"type\":\"stock_tires\",\"health\":99.94963530154834},\"engine\":{\"type\":\"stock_engine\",\"health\":99.89075317382813},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99453228548829}}', 119.146),
(228, 'ESXCB017', '{\"tires\":{\"health\":99.9956478603513,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99991207798687,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99992087018815,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99987182617187,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99969227295419,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99991207798687,\"type\":\"stock_suspension\"}}', 0),
(229, 'ESX3Z695', '{\"engine\":{\"health\":99.99988403320313,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99992029459682,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99605458254406,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99992826513712,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99972103108903,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99992029459682,\"type\":\"stock_transmition\"}}', 0),
(230, 'ESXGH828', '{\"engine\":{\"health\":99.671728515625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.98280436355548,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.80907460589443,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.84963963508565,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.9538032731078,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.97947388720697,\"type\":\"stock_transmition\"}}', 3341.27),
(231, 'ESX8I099', '{\"transmition\":{\"health\":99.73986277996045,\"type\":\"stock_transmition\"},\"oil\":{\"health\":98.03292228563012,\"type\":\"stock_oil\"},\"engine\":{\"health\":94.54039306640625,\"type\":\"stock_engine\"},\"tires\":{\"health\":97.9650024239895,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.42648304970496,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.7836242500698,\"type\":\"stock_suspension\"}}', 6233.58),
(232, 'ESXZJ391', '{\"engine\":{\"health\":98.7385986328125,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.97389624975438,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.74930122930236,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.76375139159093,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.93070037980459,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.96864303412004,\"type\":\"stock_transmition\"}}', 6231.37),
(233, 'ESXXY036', '{\"engine\":{\"health\":96.66353149414063,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.98462365864504,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.82047521955484,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.86734533432733,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.95850446020804,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.98168993127575,\"type\":\"stock_transmition\"}}', 1738.41),
(234, 'ESXTQ394', '{\"transmition\":{\"health\":99.82179618827442,\"type\":\"stock_transmition\"},\"oil\":{\"health\":98.6675823374348,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.60418220407432,\"type\":\"stock_brakes\"},\"tires\":{\"health\":98.51145048361215,\"type\":\"stock_tires\"},\"engine\":{\"health\":94.41644897460938,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.85139301231497,\"type\":\"stock_suspension\"}}', 4240.26),
(235, 'BCSO4', '{\"engine\":{\"health\":99.99987182617187,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9999155120791,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99581976156093,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99992356993273,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.9997043328188,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.9999155024263,\"type\":\"stock_transmition\"}}', 0.000958631),
(236, 'ESX4U563', '{\"transmition\":{\"health\":99.88836580653784,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.17176855757694,\"type\":\"stock_oil\"},\"engine\":{\"health\":98.17299194335938,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.02716010470266,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.75078934171917,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.90674360119198,\"type\":\"stock_suspension\"}}', 2623.92),
(237, 'ESXCH491', '{\"oil\":{\"health\":98.89736005988755,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.87748522273184,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.85298209580394,\"type\":\"stock_transmition\"},\"engine\":{\"health\":97.4494140625,\"type\":\"stock_engine\"},\"tires\":{\"health\":98.79320218082066,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.67411141265755,\"type\":\"stock_brakes\"}}', 3546.54),
(238, 'ESX8F977', '{\"engine\":{\"health\":99.88035888671875,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99250221442634,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.92601449390031,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.94575470950014,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.98299333339196,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99370164077705,\"type\":\"stock_suspension\"}}', 173.666),
(239, 'ESXJW759', '{\"engine\":{\"health\":-0.82775211334228,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.64964928426129,\"type\":\"stock_transmition\"},\"tires\":{\"health\":95.91661215829743,\"type\":\"stock_tires\"},\"oil\":{\"health\":97.56536805820541,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.18586177503981,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.70316737258512,\"type\":\"stock_suspension\"}}', 7617.16),
(240, 'ESX7N456', '{\"oil\":{\"health\":99.66076426198292,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.96299734418925,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.95544343436734,\"type\":\"stock_transmition\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.66591227478821,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.90221712591446,\"type\":\"stock_brakes\"}}', 1106.53),
(241, 'ESX7B389', '{\"oil\":{\"health\":99.95304478784914,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99462157528045,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99358170787547,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.89635620117187,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.93991908976024,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.98554295658275,\"type\":\"stock_brakes\"}}', 151.52),
(242, 'ESXTZ804', '{\"oil\":{\"health\":99.29599107831888,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.92168369395475,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.90604111997364,\"type\":\"stock_transmition\"},\"engine\":{\"health\":98.44308471679688,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.22444403612508,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.79159173956467,\"type\":\"stock_brakes\"}}', 2293.21),
(243, 'ESX9R163', '{\"engine\":{\"health\":99.24688110351562,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.96256850425974,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.72671723159283,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.64610356500289,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.96861886845777,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.9155775692338,\"type\":\"stock_brakes\"}}', 863.327),
(244, 'ESXLK449', '{\"engine\":{\"health\":95.63646240234375,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.8781309795203,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.15024766466017,\"type\":\"stock_oil\"},\"tires\":{\"health\":98.59754778088584,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.89681962136123,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.71736097051078,\"type\":\"stock_brakes\"}}', 2671.24),
(245, 'ESX8K079', '{\"engine\":{\"health\":90.05587158203125,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.65595641211655,\"type\":\"stock_transmition\"},\"oil\":{\"health\":97.39392881456448,\"type\":\"stock_oil\"},\"tires\":{\"health\":97.3368948266266,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.71394711808446,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.24237587836343,\"type\":\"stock_brakes\"}}', 8302.38),
(246, 'ESX7N215', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99629638574398},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99837508736661},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99944091155412},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99936188847623},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99392700195313},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98799124956438}}', 1722.29);
INSERT INTO `vehicle_parts` (`id`, `plate`, `parts`, `mileage`) VALUES
(247, 'ESXFX623', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99991312578395},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99971614371788},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99991849755287},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99991816367599},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9998779296875},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99603181912275}}', 0.0127827),
(248, 'ESXUT890', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99293019630542},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99767513716111},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99914897189243},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99899332057399},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9872802734375},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9887315934333}}', 811.507),
(249, 'ESXFR477', '{\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"tires\":{\"health\":100,\"type\":\"stock_tires\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"}}', 0),
(250, 'ESXHI700', '{\"engine\":{\"type\":\"stock_engine\",\"health\":92.60576171875},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.87761378720475},\"tires\":{\"type\":\"stock_tires\",\"health\":99.119047288517},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.89851072792804},\"oil\":{\"type\":\"stock_oil\",\"health\":99.06233355583626},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.73255469878737}}', 2966.65),
(251, 'ESXRP013', '{\"tires\":{\"health\":96.3689902588817,\"type\":\"stock_tires\"},\"oil\":{\"health\":96.18709218504842,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.50144743945134,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.58640225032086,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":98.90921808177913,\"type\":\"stock_brakes\"},\"engine\":{\"health\":91.25671997070313,\"type\":\"stock_engine\"}}', 12169.8),
(252, 'ESX8V324', '{\"tires\":{\"health\":95.37094226809445,\"type\":\"stock_tires\"},\"engine\":{\"health\":72.68955688476562,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.36329474722167,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":98.6072068998326,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.47182400495645,\"type\":\"stock_suspension\"},\"oil\":{\"health\":95.1292066662055,\"type\":\"stock_oil\"}}', 15446.1),
(253, 'ESXQI890', '{\"tires\":{\"health\":99.28940969056815,\"type\":\"stock_tires\"},\"engine\":{\"health\":98.7713134765625,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.92394874668736,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.82873737267754,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.44341053862756,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.9362755985408,\"type\":\"stock_suspension\"}}', 1769.78),
(254, 'ESX8A752', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.52763452145861},\"oil\":{\"type\":\"stock_oil\",\"health\":99.55655416206513},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94110943777395},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9509691431258},\"engine\":{\"type\":\"stock_engine\",\"health\":95.84752807617187},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.86980276341798}}', 1418.22),
(255, 'ESXQO891', '{\"tires\":{\"type\":\"stock_tires\",\"health\":98.22496396300972},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.88174436839192},\"oil\":{\"type\":\"stock_oil\",\"health\":99.06034874103206},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.67251341283394},\"engine\":{\"type\":\"stock_engine\",\"health\":97.93741455078126},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.8611710056632}}', 2900.99),
(256, 'ESXQC322', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.96328045570606},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9924147903186},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99847318051688},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9986300257731},\"engine\":{\"type\":\"stock_engine\",\"health\":97.8801513671875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99586384028243}}', 22.4974),
(257, 'ESXBG409', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.59470122157053},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96765162854766},\"oil\":{\"type\":\"stock_oil\",\"health\":99.72656662739844},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.91211757203767},\"engine\":{\"type\":\"stock_engine\",\"health\":95.30083618164062},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96161903994779}}', 867.965),
(258, 'ESXVT304', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.20602498829919},\"tires\":{\"type\":\"stock_tires\",\"health\":98.89756542380175},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.8899025588199},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.90745021828042},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.7497759337172},\"engine\":{\"type\":\"stock_engine\",\"health\":96.13032836914063}}', 2506.49),
(259, 'ESXHL181', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.46527244828947},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.75701863899296},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.79801957559232},\"tires\":{\"type\":\"stock_tires\",\"health\":98.1303021702628},\"engine\":{\"type\":\"stock_engine\",\"health\":83.42940063476563},\"oil\":{\"type\":\"stock_oil\",\"health\":98.15767968576688}}', 5914.68),
(260, 'ESX9O184', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.95174560546875},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99663359749933},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99190397631856},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9519725158627},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99711234880718},\"oil\":{\"type\":\"stock_oil\",\"health\":99.97801168595858}}', 68.8017),
(261, 'ESXYZ173', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.82995559512628},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.47448262231193},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.56140033880983},\"tires\":{\"type\":\"stock_tires\",\"health\":95.52053677246572},\"engine\":{\"type\":\"stock_engine\",\"health\":89.068017578125},\"oil\":{\"type\":\"stock_oil\",\"health\":96.08509278677447}}', 12555.2),
(262, 'ESX8D764', '{\"engine\":{\"type\":\"stock_engine\",\"health\":95.97246704101562},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.90267323615257},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.78433681891527},\"tires\":{\"type\":\"stock_tires\",\"health\":99.20357253190898},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.91890446892944},\"oil\":{\"type\":\"stock_oil\",\"health\":99.26964909457957}}', 2363.09),
(263, 'ESXEI134', '{\"engine\":{\"type\":\"stock_engine\",\"health\":97.8847412109375},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.87440080525225},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.7242559780873},\"tires\":{\"type\":\"stock_tires\",\"health\":99.05481527346896},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.89568043638266},\"oil\":{\"type\":\"stock_oil\",\"health\":99.04428733196355}}', 3116.39),
(264, 'ESX6O164', '{\"engine\":{\"type\":\"stock_engine\",\"health\":91.866943359375},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96728138555432},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.92783611842354},\"tires\":{\"type\":\"stock_tires\",\"health\":99.74308066448445},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97278155035728},\"oil\":{\"type\":\"stock_oil\",\"health\":99.7527467207972}}', 798.414),
(265, 'ESX0O871', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.2691162109375},\"oil\":{\"type\":\"stock_oil\",\"health\":99.7198995497011},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96781475057857},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96161391784252},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.91339512451822},\"tires\":{\"type\":\"stock_tires\",\"health\":99.63612974153407}}', 895.622),
(266, 'ESX5B440', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.78543701171876},\"oil\":{\"type\":\"stock_oil\",\"health\":99.90306471686636},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98937049040363},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98721323794688},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97185717673088},\"tires\":{\"type\":\"stock_tires\",\"health\":99.90150918139114}}', 313.033),
(267, 'ESXCD212', '{\"engine\":{\"type\":\"stock_engine\",\"health\":97.22493286132813},\"oil\":{\"type\":\"stock_oil\",\"health\":99.06390905777848},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.89825622240982},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.87740383864723},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.73147679023822},\"tires\":{\"type\":\"stock_tires\",\"health\":99.0976159592921}}', 2990.96),
(268, 'ESXFX639', '{\"engine\":{\"type\":\"stock_engine\",\"health\":77.04483642578126},\"oil\":{\"type\":\"stock_oil\",\"health\":97.41107951932489},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.70848532580362},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.65103946718878},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.22097124649838},\"tires\":{\"type\":\"stock_tires\",\"health\":96.95852148304168}}', 8219.94),
(269, 'ESX1E566', '{\"engine\":{\"type\":\"stock_engine\",\"health\":86.49102172851562},\"oil\":{\"type\":\"stock_oil\",\"health\":96.24071704969477},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.57742512212224},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.4939938737218},\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.87139917071464},\"tires\":{\"type\":\"stock_tires\",\"health\":95.6225799623513}}', 11957.4),
(270, 'ESXNQ864', '{\"engine\":{\"type\":\"stock_engine\",\"health\":85.89697265625},\"oil\":{\"type\":\"stock_oil\",\"health\":97.55696549604908},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.72791968150972},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.67364407120599},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.27567644856238},\"tires\":{\"type\":\"stock_tires\",\"health\":97.29202828847754}}', 7794.88),
(271, 'ESX3M875', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.961842236244},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98419528773519},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99313093824842},\"engine\":{\"type\":\"stock_engine\",\"health\":99.86686401367187},\"oil\":{\"type\":\"stock_oil\",\"health\":99.93979002328637},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99179691797342}}', 188.985),
(272, 'ESX7K011', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.97208101875497},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98740450493767},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9944831105852},\"engine\":{\"type\":\"stock_engine\",\"health\":99.89051513671875},\"oil\":{\"type\":\"stock_oil\",\"health\":99.95053910122904},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99338445136799}}', 159.238),
(273, 'ESXAJ119', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.97370422687219},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99053784367882},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99594660193275},\"engine\":{\"type\":\"stock_engine\",\"health\":0.0},\"oil\":{\"type\":\"stock_oil\",\"health\":99.96599901558308},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99519714696587}}', 101.173),
(274, 'ESX6K831', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.94933774815405},\"engine\":{\"type\":\"stock_engine\",\"health\":99.180615234375},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9732862700834},\"tires\":{\"type\":\"stock_tires\",\"health\":99.891028283179},\"oil\":{\"type\":\"stock_oil\",\"health\":99.7990840156518},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97775277582643}}', 634.672),
(275, 'EJCZ0919', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.77159942710073},\"engine\":{\"type\":\"stock_engine\",\"health\":99.69625854492188},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.8825459824988},\"tires\":{\"type\":\"stock_tires\",\"health\":99.41375261334267},\"oil\":{\"type\":\"stock_oil\",\"health\":99.15052250661968},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9013280248631}}', 2692.49),
(276, 'ESXNM918', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99291642303128},\"oil\":{\"type\":\"stock_oil\",\"health\":99.95488910442015},\"tires\":{\"type\":\"stock_tires\",\"health\":99.94530455301},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99389459667545},\"engine\":{\"type\":\"stock_engine\",\"health\":null},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98520521514523}}', 139.424),
(277, 'ESX5N821', '{\"oil\":{\"health\":99.99214236889395,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99649534172336,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.9822732813846,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.98463745117188,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99863535247565,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99847166239337,\"type\":\"stock_transmition\"}}', 282.059),
(278, 'ESX2U218', '{\"oil\":{\"health\":99.99856820998525,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99907615110108,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99424856084893,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.997021484375,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99965872755762,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99963095854986,\"type\":\"stock_transmition\"}}', 617.356),
(279, 'ESX3D605', '{\"oil\":{\"health\":99.99999098142591,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99997453758967,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99979014037689,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.9999755859375,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99999147270735,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.9999914395219,\"type\":\"stock_transmition\"}}', 271.701),
(280, 'ESXUO265', '{\"oil\":{\"health\":99.99847006101786,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99941204570372,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99738315822396,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99669799804687,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99976495166477,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99973239868996,\"type\":\"stock_transmition\"}}', 286.313),
(281, 'ESXJA682', '{\"oil\":{\"health\":98.0379892787709,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.53297861719254,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.18081121556253,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.9882568359375,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.79174599486845,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.74792915248288,\"type\":\"stock_transmition\"}}', 5029.83),
(282, 'ESXCM161', '{\"oil\":{\"health\":99.99854268742897,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99899163119116,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99354450921054,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99686279296876,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99963054944672,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.9996027764326,\"type\":\"stock_transmition\"}}', 2453.18),
(283, 'ESXAS993', '{\"oil\":{\"health\":99.74332066308866,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.93315224630858,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.84200534460159,\"type\":\"stock_tires\"},\"engine\":{\"health\":93.3009765625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.97088841079524,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.96519757359477,\"type\":\"stock_transmition\"}}', 966.115),
(284, 'ESXRI912', '{\"oil\":{\"health\":99.70241283580694,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.92287666828007,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.8201679499045,\"type\":\"stock_tires\"},\"engine\":{\"health\":98.747998046875,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.96637158308683,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.95977105002587,\"type\":\"stock_transmition\"}}', 937.188),
(285, 'ESX7Y131', '{\"oil\":{\"health\":99.72208198848164,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.93249222533327,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.87199042390924,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.24808959960937,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.97006116950885,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.96386430372918,\"type\":\"stock_transmition\"}}', 881.154),
(286, 'ESXDJ365', '{\"oil\":{\"health\":99.11241341326317,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.78304113770922,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.57916045083594,\"type\":\"stock_tires\"},\"engine\":{\"health\":47.99253845214844,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.90394303643569,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.88416191743477,\"type\":\"stock_transmition\"}}', 4224.87),
(287, 'ESXRR553', '{\"oil\":{\"health\":99.15001050679132,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.80411836584702,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.70206029578692,\"type\":\"stock_tires\"},\"engine\":{\"health\":92.34115600585938,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.91187134552863,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.8928423651786,\"type\":\"stock_transmition\"}}', 2093.48),
(288, 'ESXHF471', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.93142374997024},\"engine\":{\"type\":\"stock_engine\",\"health\":99.84874877929687},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99206539821118},\"tires\":{\"type\":\"stock_tires\",\"health\":99.95351619553915},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98165709315963},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99054848195387}}', 219.72),
(289, 'TXKJ6391', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.49722787786962},\"engine\":{\"type\":\"stock_engine\",\"health\":0.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94610763933248},\"tires\":{\"type\":\"stock_tires\",\"health\":99.77574489386685},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.87870238444391},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.93489112087478}}', 751.469),
(290, 'ESX3C022', '{\"engine\":{\"type\":\"stock_engine\",\"label\":\"MOTEUR D\'ORIGINE\",\"health\":99.99989013671875},\"brakes\":{\"type\":\"stock_brakes\",\"label\":\"FREINS D\'ORIGINE\",\"health\":99.99977094363757},\"suspension\":{\"type\":\"stock_suspension\",\"label\":\"SUSPENSION D\'ORIGINE\",\"health\":99.99992351983569},\"oil\":{\"type\":\"stock_oil\",\"label\":\"HUILE D\'ORIGINE\",\"health\":99.9999268463836},\"tires\":{\"type\":\"stock_tires\",\"label\":\"PNEUS D\'ORIGINE\",\"health\":99.99809867952291},\"transmition\":{\"type\":\"stock_transmition\",\"label\":\"TRANSMISSION D\'ORIGINE\",\"health\":99.99992341313275}}', 0.0101934),
(291, 'OMIQ5344', '{\"engine\":{\"health\":16.92770538330078,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.8890866670267,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.95115363650325,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.76968229352505,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.55524850078517,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.94125759274837,\"type\":\"stock_transmition\"}}', 866.957),
(292, 'ESXRW483', '{\"engine\":{\"health\":99.99700927734375,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99942109963077,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99977199799138,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.9986123595539,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99722320086198,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99974280197559,\"type\":\"stock_transmition\"}}', 12260.2),
(293, 'ESX3Z732', '{\"engine\":{\"health\":97.03941040039062,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.74831571489455,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.88715722446548,\"type\":\"stock_suspension\"},\"oil\":{\"health\":98.92144603516297,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.59428051580805,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.8630338796048,\"type\":\"stock_transmition\"}}', 167.535),
(294, 'ESX1P115', '{\"engine\":{\"health\":93.77927856445312,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.61278264730416,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.83206506862213,\"type\":\"stock_suspension\"},\"oil\":{\"health\":98.53724984558115,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.04421493055468,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.79967966822291,\"type\":\"stock_transmition\"}}', 4581.13),
(295, 'ESX1S867', '{\"engine\":{\"health\":96.36080322265625,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.59125830230421,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.8198328423989,\"type\":\"stock_suspension\"},\"oil\":{\"health\":98.35555208819454,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.16038980515899,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.78323290486861,\"type\":\"stock_transmition\"}}', 5230.02),
(296, 'ESXTL827', '{\"engine\":{\"health\":73.10393676757812,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.63908568324114,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.84231080951278,\"type\":\"stock_suspension\"},\"oil\":{\"health\":98.59635561314357,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.17703263427826,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.81115712765063,\"type\":\"stock_transmition\"}}', 4466.55),
(297, 'ESX6D073', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98853586519937},\"engine\":{\"type\":\"stock_engine\",\"health\":null},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99027810598087},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97710638475603},\"oil\":{\"type\":\"stock_oil\",\"health\":99.92068954373237},\"tires\":{\"type\":\"stock_tires\",\"health\":99.93139450776869}}', 438.84),
(298, 'ESXSZ459', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98270770267901},\"engine\":{\"type\":\"stock_engine\",\"health\":95.93197631835938},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98536185991556},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.96564054579842},\"oil\":{\"type\":\"stock_oil\",\"health\":99.87933230584349},\"tires\":{\"type\":\"stock_tires\",\"health\":99.8997939912006}}', 373.288),
(299, 'ESX4T885', '{\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"tires\":{\"health\":100.0,\"type\":\"stock_tires\"},\"transmition\":{\"health\":100.0,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":100.0,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":100.0,\"type\":\"stock_suspension\"},\"oil\":{\"health\":100.0,\"type\":\"stock_oil\"}}', 0.252507),
(300, 'ESXRD876', '{\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"tires\":{\"health\":100.0,\"type\":\"stock_tires\"},\"transmition\":{\"health\":100.0,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":100.0,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":100.0,\"type\":\"stock_suspension\"},\"oil\":{\"health\":100.0,\"type\":\"stock_oil\"}}', 0.20977),
(301, 'ESXXF644', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99997643162217},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99995757691994},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9998090961397},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99994697114993},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99998071678179}}', 1.76782),
(302, 'ESXXS630', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99596189610149},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99143656993008},\"oil\":{\"type\":\"stock_oil\",\"health\":99.97506041673852},\"engine\":{\"type\":\"stock_engine\",\"health\":99.94589233398438},\"tires\":{\"type\":\"stock_tires\",\"health\":99.96636620002335},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99649990846904}}', 75.5603),
(303, 'ESX0O151', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99924149445937},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99889993125703},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99972198395165},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99970099989489},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99768676757813},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99515062747689}}', 2.18255),
(304, 'ESX5J080', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99976761734917},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99993544926368},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99994835941091},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99997652700498},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9994873046875},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99997131078387}}', 0.121558),
(305, 'ESX3U258', '{\"tires\":{\"health\":99.9401694643609,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99195985003523,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.85867919921876,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.93566009328699,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99054988036247,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.98095544092746,\"type\":\"stock_brakes\"}}', 200.139),
(306, 'ESXUO162', '{\"tires\":{\"health\":99.84755713156378,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.9691611286562,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.05736083984375,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.72205354449054,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.96298356146369,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.92972262786192,\"type\":\"stock_brakes\"}}', 875.79),
(307, 'ESX1J756', '{\"suspension\":{\"health\":99.99453634732986,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.893896484375,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.97005418954295,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.95194520443219,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.98744348715984,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.9934712236715,\"type\":\"stock_transmition\"}}', 154.8),
(308, 'ESX3J999', '{\"suspension\":{\"health\":99.7872624630052,\"type\":\"stock_suspension\"},\"engine\":{\"health\":86.28204956054688,\"type\":\"stock_engine\"},\"tires\":{\"health\":98.89939024415392,\"type\":\"stock_tires\"},\"oil\":{\"health\":98.10244821575931,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.51343965576563,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.74513683335216,\"type\":\"stock_transmition\"}}', 6044.33),
(309, 'ESXMM020', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99996223609543},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99998867082863},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99968530079535},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99998741203182},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99998741203182}}', 0.210707),
(310, 'ESX9Z047', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99995776027514},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99998732808254},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99964800229295},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99998592009172},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99998592009172}}', 0.9101),
(311, 'ESX8Z782', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.91938698213856},\"oil\":{\"type\":\"stock_oil\",\"health\":99.68351021561641},\"tires\":{\"type\":\"stock_tires\",\"health\":99.82120103602057},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.95766307452108},\"engine\":{\"type\":\"stock_engine\",\"health\":99.30021362304687},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96469303794159}}', 1004.66),
(312, 'ESXIG848', '{\"oil\":{\"health\":99.9106860226094,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.98873212236915,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.98677723625741,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.91403603116288,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.97323395710942,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.803759765625,\"type\":\"stock_engine\"}}', 277.212),
(313, 'ESX4O075', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.45850029604294},\"oil\":{\"type\":\"stock_oil\",\"health\":98.05396141887948},\"tires\":{\"type\":\"stock_tires\",\"health\":98.49553891444578},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.7680256781925},\"engine\":{\"type\":\"stock_engine\",\"health\":95.70646362304687},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.7251303277852}}', 6106.97),
(314, 'ESX3F733', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999785426408},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99994635660201},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99999806883767},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999356279224},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999785426408}}', 0.259998),
(315, 'ESXYN858', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100.0},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":100.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100.0}}', 0.541961),
(316, 'ESXUE980', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99984652044962},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9961630112415},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99986186840461},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99953956134886},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99984652044962}}', 49.5497),
(317, 'ESX5T894', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94603930955283},\"tires\":{\"type\":\"stock_tires\",\"health\":99.73396784850753},\"engine\":{\"type\":\"stock_engine\",\"health\":89.58584594726563},\"oil\":{\"type\":\"stock_oil\",\"health\":99.51337398591532},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.87705671911913},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.93522297886928}}', 1519.74),
(318, 'ESX0O820', '{\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.9999917733015,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.9999908592239,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.9999908592239,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99977148059755,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.9999725776717,\"type\":\"stock_brakes\"}}', 2650.76),
(319, 'ESX7X173', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99983352814937},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9999500584448},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99861273457849},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99994450938313},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99994450938313}}', 0.481029),
(320, 'ESXDR029', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100.0},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100.0}}', 0),
(321, 'ESX0J575', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100.0},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100.0}}', 0),
(322, 'ESX6W852', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.76311886027496},\"oil\":{\"type\":\"stock_oil\",\"health\":99.072502184503},\"tires\":{\"type\":\"stock_tires\",\"health\":99.47037235257496},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.8757256796906},\"engine\":{\"type\":\"stock_engine\",\"health\":97.87487182617187},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.89632292532753}}', 2942.81),
(323, 'ESX7X330', '{\"suspension\":{\"health\":99.76681298028788,\"type\":\"stock_suspension\"},\"engine\":{\"health\":94.89994506835937,\"type\":\"stock_engine\"},\"tires\":{\"health\":98.9223363725514,\"type\":\"stock_tires\"},\"oil\":{\"health\":97.86796957942396,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.47129779444887,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.71935218762516,\"type\":\"stock_transmition\"}}', 6803.33),
(324, 'ESX9G115', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.87205351706223},\"oil\":{\"type\":\"stock_oil\",\"health\":99.50018870000462},\"tires\":{\"type\":\"stock_tires\",\"health\":99.71198020537752},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9440343655688},\"engine\":{\"type\":\"stock_engine\",\"health\":98.89505615234376},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.93293702658092}}', 1594.51),
(325, 'ESX0G397', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.80646060979578},\"oil\":{\"type\":\"stock_oil\",\"health\":98.26603681149354},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.76794757924431},\"engine\":{\"type\":\"stock_engine\",\"health\":94.70330810546875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.55802873937148},\"tires\":{\"type\":\"stock_tires\",\"health\":99.0176324288395}}', 5603.43),
(326, 'ESX7G152', '{\"oil\":{\"type\":\"stock_oil\",\"health\":92.27074173359449},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.15606589973229},\"transmition\":{\"type\":\"stock_transmition\",\"health\":98.98397410772823},\"tires\":{\"type\":\"stock_tires\",\"health\":96.13233816776754},\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.08772815041108},\"engine\":{\"type\":\"stock_engine\",\"health\":82.39849243164062}}', 24516.1),
(327, 'ESX4Q476', '{\"engine\":{\"health\":97.6943115234375,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.95144044062319,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.63305975384086,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.90819409565622,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.95960298210604,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.8073490186179,\"type\":\"stock_tires\"}}', 1162.18),
(328, 'BCSO7', '{\"engine\":{\"health\":99.99987182617187,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99991592136277,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99992949867833,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99992898935864,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99828846259315,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.9997903295859,\"type\":\"stock_brakes\"}}', 0.0680489),
(329, 'ESX9N442', '{\"engine\":{\"health\":99.901611328125,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.95527387141854,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99453190235207,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99354906677923,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.96170397052888,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.98713391511835,\"type\":\"stock_brakes\"}}', 139.04),
(330, 'ESXXG893', '{\"engine\":{\"health\":98.80206298828125,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.92882904260756,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.47463095096441,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.86337299238606,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.94047841602624,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.67835391420842,\"type\":\"stock_tires\"}}', 1658.75),
(331, 'ESXXG883', '{\"engine\":{\"health\":91.63258056640625,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.77393492787549,\"type\":\"stock_transmition\"},\"oil\":{\"health\":98.30234150418717,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.57083810544418,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.8116672493631,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.06962992300969,\"type\":\"stock_tires\"}}', 5415.71),
(332, 'ESX4E757', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.79612993980803},\"oil\":{\"type\":\"stock_oil\",\"health\":98.17368231649029},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.75556612179922},\"engine\":{\"type\":\"stock_engine\",\"health\":95.96348876953125},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.53441956425353},\"tires\":{\"type\":\"stock_tires\",\"health\":98.96470077327973}}', 6045.31),
(333, 'ESX8E695', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97977185426689},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.96189772653817},\"oil\":{\"type\":\"stock_oil\",\"health\":99.84630168641411},\"engine\":{\"type\":\"stock_engine\",\"health\":99.65986328125},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98319339422712},\"tires\":{\"type\":\"stock_tires\",\"health\":99.92241654419812}}', 485.619),
(334, 'ESXSN044', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97516616984932},\"oil\":{\"type\":\"stock_oil\",\"health\":99.77779043937},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97023137692355},\"engine\":{\"type\":\"stock_engine\",\"health\":99.50877685546875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.94326376408077},\"tires\":{\"type\":\"stock_tires\",\"health\":99.87325038792729}}', 688.329),
(335, 'ESX0B143', '{\"transmition\":{\"health\":99.99962825511948,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99123600338558,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99963248788989,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99949781189955,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99891270164307,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99906005859376,\"type\":\"stock_engine\"}}', 0.185227),
(336, 'ESX9F854', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99990688270357},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99996896090119},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99997206481106},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99922402252999},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99996896090119},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0}}', 0.259184),
(337, 'ESXLK075', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100.0},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0}}', 0.650311),
(338, 'ESXXD703', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99968844125887},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99989614708629},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99990653237762},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99740367715792},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99989614708629},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0}}', 1348.87),
(339, 'ESXBX727', '{\"transmition\":{\"health\":99.99997526240664,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99994434041492,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99997976015087,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99979962549364,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.9999554723319,\"type\":\"stock_brakes\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"}}', 6.75315),
(340, 'ESXDZ874', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.74254043528132},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.88714966762452},\"oil\":{\"type\":\"stock_oil\",\"health\":98.98615608627235},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.86462426973336},\"tires\":{\"type\":\"stock_tires\",\"health\":99.43409715446278},\"engine\":{\"type\":\"stock_engine\",\"health\":97.72050170898437}}', 3232.35),
(341, 'ESXPI323', '{\"transmition\":{\"health\":99.99999901982847,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99999779461406,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99999919804148,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.9999920606106,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99999823569125,\"type\":\"stock_brakes\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"}}', 0.0169191),
(342, 'ESXME119', '{\"engine\":{\"health\":99.16250610351563,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.9505543142471,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.62177156647754,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.9072841621319,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.95898177173058,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.81834347379523,\"type\":\"stock_tires\"}}', 1208.99),
(343, 'ESXUL551', '{\"engine\":{\"health\":93.02176513671876,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.76506486338043,\"type\":\"stock_transmition\"},\"oil\":{\"health\":98.20810822414171,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.55860294895798,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.80497522077707,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.12040505374836,\"type\":\"stock_tires\"}}', 5709.66),
(344, 'ESX6Y846', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99960000497853},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9989282266203},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99887073437259},\"engine\":{\"type\":\"stock_engine\",\"health\":null},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99961943099136},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99243080432012}}', 2.74888),
(345, 'ESXIF009', '{\"suspension\":{\"health\":99.99995975707449,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.99994506835938,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99996159504294,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99987946556341,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.9989993319416,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99995970309119,\"type\":\"stock_transmition\"}}', 0.00636935),
(346, 'ESXIH266', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9969911214823},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99384987211644},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98003296331656},\"engine\":{\"type\":\"stock_engine\",\"health\":99.95628051757812},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99742695597765},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97931182829312}}', 61.8534),
(347, 'ESX2Q180', '{\"suspension\":{\"health\":99.95331322956105,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.0808349609375,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.584093543672,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.89317420983307,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.75716585850305,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.94408141813077,\"type\":\"stock_transmition\"}}', 1352.21),
(348, 'ESXFE306', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.73863863510123},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.88588954937596},\"oil\":{\"type\":\"stock_oil\",\"health\":98.98638824098518},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.8633978863277},\"tires\":{\"type\":\"stock_tires\",\"health\":99.39921649710519},\"engine\":{\"type\":\"stock_engine\",\"health\":87.10654907226562}}', 3249.95),
(349, 'ESX7U150', '{\"transmition\":{\"health\":99.9975503616264,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.98743029416885,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.79356079101562,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99793934267344,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.9823916760016,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99521835978953,\"type\":\"stock_brakes\"}}', 18412.4),
(350, 'ESX0E447', '{\"engine\":{\"health\":98.5026123046875,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.91691503805883,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.36750785555602,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.84369772729306,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.93099876731907,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.68510257513639,\"type\":\"stock_tires\"}}', 2028.18),
(351, 'ESXUV240', '{\"oil\":{\"health\":99.99652152784093,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.999420482678,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.9993474726393,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99282219708083,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99852428417359,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.9925048828125,\"type\":\"stock_engine\"}}', 10.3895),
(352, 'ESXIZ275', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.61783259183976},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.955529184856},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94708119289233},\"tires\":{\"type\":\"stock_tires\",\"health\":99.7340848167763},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.89700032563712},\"engine\":{\"type\":\"stock_engine\",\"health\":95.18516235351562}}', 1202.9),
(353, 'ESX0P401', '{\"engine\":{\"health\":83.55191650390626,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.35967343820629,\"type\":\"stock_transmition\"},\"oil\":{\"health\":95.18710768357471,\"type\":\"stock_oil\"},\"brakes\":{\"health\":98.7851200497525,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.46665824655983,\"type\":\"stock_suspension\"},\"tires\":{\"health\":97.37831010044177,\"type\":\"stock_tires\"}}', 15299.1),
(354, 'ESXZX520', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99977187022245},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99958936640043},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99815214880199},\"engine\":{\"type\":\"stock_engine\",\"health\":null},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99981334836385},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99948670800053}}', 0.00469015),
(355, 'ESXBV982', '{\"suspension\":{\"health\":99.99790351147752,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.97133178710938,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.98675472879636,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99472017279129,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.97566835378744,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99762305637799,\"type\":\"stock_transmition\"}}', 40.5187),
(356, 'ESXAL870', '{\"suspension\":{\"health\":99.11431800110475,\"type\":\"stock_suspension\"},\"engine\":{\"health\":74.49994506835938,\"type\":\"stock_engine\"},\"oil\":{\"health\":91.8049227563389,\"type\":\"stock_oil\"},\"brakes\":{\"health\":98.00055075395014,\"type\":\"stock_brakes\"},\"tires\":{\"health\":96.14735965470656,\"type\":\"stock_tires\"},\"transmition\":{\"health\":98.93165223703912,\"type\":\"stock_transmition\"}}', 26604.2),
(357, 'ESXYO738', '{\"oil\":{\"type\":\"stock_oil\",\"health\":100},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100},\"tires\":{\"type\":\"stock_tires\",\"health\":100},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100}}', 0),
(358, 'ESX1V051', '{\"oil\":{\"type\":\"stock_oil\",\"health\":97.66499146644522},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.73937531098496},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.6875124390483},\"tires\":{\"type\":\"stock_tires\",\"health\":98.67715282732502},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.40483227192783},\"engine\":{\"type\":\"stock_engine\",\"health\":92.79927978515625}}', 7378.32);
INSERT INTO `vehicle_parts` (`id`, `plate`, `parts`, `mileage`) VALUES
(359, 'ESX5W718', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.37136731703211},\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.818996891617},\"engine\":{\"type\":\"stock_engine\",\"health\":86.94017333984375},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.47816958074744},\"oil\":{\"type\":\"stock_oil\",\"health\":95.20486094220446},\"tires\":{\"type\":\"stock_tires\",\"health\":97.64781617320895}}', 15109.2),
(360, 'ESX0X457', '{\"engine\":{\"health\":99.89100341796875,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99280953001004,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.94915556369436,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.98582409224926,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99393006064939,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.9604446464896,\"type\":\"stock_tires\"}}', 148.242),
(361, 'ESXNH905', '{\"engine\":{\"health\":97.59322509765625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.92954066541492,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.91516430379818,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.35434395339218,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.67794984226028,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.84037689806549,\"type\":\"stock_brakes\"}}', 2029.43),
(362, 'ESXWR250', '{\"engine\":{\"health\":97.78889770507813,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.90734915641629,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.88860558185798,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.15749947117175,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.56042931303127,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.7895243376573,\"type\":\"stock_brakes\"}}', 2695.71),
(363, 'ESXCW021', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.99994506835938},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9998804140159},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99900345013286},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9999601380053},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9999601380053},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99996412420477}}', 0),
(364, 'ESX1G266', '{\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9999760330838},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9998002756983},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999201102793},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999201102793},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99999280992513}}', 0.438704),
(365, 'ESXVM094', '{\"engine\":{\"health\":90.09842529296876,\"type\":\"stock_engine\"},\"oil\":{\"health\":95.52703631116708,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.41902317197047,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.51877278165732,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":98.91541693984525,\"type\":\"stock_brakes\"},\"tires\":{\"health\":97.95674921135275,\"type\":\"stock_tires\"}}', 14187.2),
(366, 'ESXBS019', '{\"engine\":{\"health\":99.99996337890625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99996964687942,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99996964687942,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99997268219147,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99924117198583,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99990894063828,\"type\":\"stock_brakes\"}}', 0),
(367, 'ESX5Y999', '{\"engine\":{\"health\":95.796728515625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.7875607402287,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.74532171791049,\"type\":\"stock_transmition\"},\"oil\":{\"health\":98.09812426232306,\"type\":\"stock_oil\"},\"tires\":{\"health\":98.91820061531725,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.5147427010313,\"type\":\"stock_brakes\"}}', 6055.84),
(368, 'UQFA3216', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99963108539441},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99366039342573},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99850171496353},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99960228880448},\"engine\":{\"type\":\"stock_engine\",\"health\":null},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99899692390693}}', 2977.01),
(369, 'ESX2E029', '{\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99997259318173,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99997259318173,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99997533386355,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.9993148295432,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99991777954516,\"type\":\"stock_brakes\"}}', 0.0798467),
(370, 'ESX1K146', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.25844244288659},\"tires\":{\"type\":\"stock_tires\",\"health\":99.61983432065215},\"engine\":{\"type\":\"stock_engine\",\"health\":94.94649047851563},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.90219415231029},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.81550450596218},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.91869749307247}}', 2363.69),
(371, 'ESXXP554', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.90319918442565},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.77992163928086},\"tires\":{\"type\":\"stock_tires\",\"health\":99.53586825263023},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.88366471609122},\"oil\":{\"type\":\"stock_oil\",\"health\":99.12173329843687},\"engine\":{\"type\":\"stock_engine\",\"health\":92.71748657226563}}', 2824.2),
(372, 'ESXTC508', '{\"transmition\":{\"health\":99.53548318776758,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.136746029678,\"type\":\"stock_brakes\"},\"engine\":{\"health\":91.98678588867188,\"type\":\"stock_engine\"},\"tires\":{\"health\":98.44061686921741,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.61583113721854,\"type\":\"stock_suspension\"},\"oil\":{\"health\":96.40015607074021,\"type\":\"stock_oil\"}}', 11976.4),
(373, 'ESXIJ187', '{\"transmition\":{\"health\":99.98831293453279,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.97778225253697,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99025891164482,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.95131374944475,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.91242094744918,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.80637817382812,\"type\":\"stock_engine\"}}', 284.763),
(374, 'ESXWE140', '{\"transmition\":{\"health\":99.54437118172624,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.15686488276563,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.62372744499692,\"type\":\"stock_suspension\"},\"tires\":{\"health\":98.53873198490749,\"type\":\"stock_tires\"},\"oil\":{\"health\":96.44742603803199,\"type\":\"stock_oil\"},\"engine\":{\"health\":91.9370849609375,\"type\":\"stock_engine\"}}', 11776.5),
(375, 'ESXDL427', '{\"suspension\":{\"health\":99.81367893051864,\"type\":\"stock_suspension\"},\"engine\":{\"health\":90.80913696289062,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.57706604532253,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.12528688335363,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.77589302669462,\"type\":\"stock_transmition\"},\"oil\":{\"health\":98.30198193258966,\"type\":\"stock_oil\"}}', 5417.61),
(376, 'ESXJP992', '{\"brakes\":{\"health\":99.9994685345965,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99634888217736,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99993286132812,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99980953559423,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.9993793941295,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99979844453485,\"type\":\"stock_transmition\"}}', 0.58904),
(377, 'ESXIU123', '{\"suspension\":{\"health\":99.65332823400509,\"type\":\"stock_suspension\"},\"engine\":{\"health\":76.46383056640625,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.21730807537891,\"type\":\"stock_brakes\"},\"tires\":{\"health\":98.49001217181656,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.58184951918129,\"type\":\"stock_transmition\"},\"oil\":{\"health\":96.79310746025684,\"type\":\"stock_oil\"}}', 10257.7),
(378, 'ESXRG507', '{\"transmition\":{\"health\":99.89964595893462,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.81198022930106,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.91677358810098,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.63424357279397,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.23142724805619,\"type\":\"stock_oil\"},\"engine\":{\"health\":94.52965698242187,\"type\":\"stock_engine\"}}', 2523.1),
(379, 'MOTORCYC', '{\"oil\":{\"health\":94.79834925117017,\"type\":\"stock_oil\"},\"brakes\":{\"health\":98.66231192957807,\"type\":\"stock_brakes\"},\"tires\":{\"health\":96.94841821982752,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.41556590069071,\"type\":\"stock_suspension\"},\"engine\":{\"health\":89.42012329101563,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.3001175041607,\"type\":\"stock_transmition\"}}', 16548.2),
(380, 'ESXOT049', '{\"transmition\":{\"health\":98.88333632253256,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":97.91095839235658,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.07438926567788,\"type\":\"stock_suspension\"},\"tires\":{\"health\":95.98890757439666,\"type\":\"stock_tires\"},\"oil\":{\"health\":91.42930614171857,\"type\":\"stock_oil\"},\"engine\":{\"health\":73.22929077148437,\"type\":\"stock_engine\"}}', 28241.5),
(381, 'ESX8R273', '{\"brakes\":{\"health\":99.99952235984029,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99655726351145,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99901733398437,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99983158707244,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99953794385766,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99982392078833,\"type\":\"stock_transmition\"}}', 14.6189),
(382, 'ESXYY680', '{\"brakes\":{\"health\":99.99995423774776,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.9999427971847,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99954223632813,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99997919897625,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99979406986495,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99997457652653,\"type\":\"stock_transmition\"}}', 1.38324),
(383, 'ESX1B980', '{\"brakes\":{\"health\":99.98006202885206,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.9494737262626,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.83531494140625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99137542590268,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.92546068294154,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.98972660614047,\"type\":\"stock_transmition\"}}', 2380.63),
(384, 'ESXNK888', '{\"suspension\":{\"health\":99.82061241479181,\"type\":\"stock_suspension\"},\"engine\":{\"health\":92.95789794921875,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.59449756635103,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.20492557474572,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.7837623253544,\"type\":\"stock_transmition\"},\"oil\":{\"health\":98.34612255108638,\"type\":\"stock_oil\"}}', 5307.81),
(385, 'ESXAN802', '{\"suspension\":{\"health\":99.93062126911862,\"type\":\"stock_suspension\"},\"engine\":{\"health\":98.58206787109376,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.84323158839318,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.69419813806974,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.9163524410525,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.35967160553447,\"type\":\"stock_oil\"}}', 2052.49),
(386, 'ESXQK066', '{\"transmition\":{\"health\":99.99904941224175,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99775529853332,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99914139130358,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.98774418615429,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99550210016972,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99052124023437,\"type\":\"stock_engine\"}}', 14.4348),
(387, 'ESX5E538', '{\"transmition\":{\"health\":99.99955307449001,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99902821080016,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99960898166126,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99582224705016,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99738384306053,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99434204101563,\"type\":\"stock_engine\"}}', 8.08158),
(388, 'ESXXG657', '{\"transmition\":{\"health\":99.99955418638185,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99901064062144,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99960692599942,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99545370419262,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.9975102788889,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99461059570312,\"type\":\"stock_engine\"}}', 7.87679),
(389, 'ESX7V228', '{\"transmition\":{\"health\":99.5508154016389,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.16461848605958,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.62841726241811,\"type\":\"stock_suspension\"},\"tires\":{\"health\":98.48031787097627,\"type\":\"stock_tires\"},\"oil\":{\"health\":96.52270017461773,\"type\":\"stock_oil\"},\"engine\":{\"health\":92.257177734375,\"type\":\"stock_engine\"}}', 11479.7),
(390, 'NCMS5071', '{\"brakes\":{\"health\":99.92370507970458,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.8049370591117,\"type\":\"stock_tires\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.96702648932903,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.71578570857956,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.96074159718549,\"type\":\"stock_transmition\"}}', 906.096),
(391, 'ESX7K283', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.44214574670944},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.89288073430092},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.87170592891578},\"engine\":{\"type\":\"stock_engine\",\"health\":97.3967041015625},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.75487150228905},\"oil\":{\"type\":\"stock_oil\",\"health\":99.04601304277198}}', 3029.42),
(392, 'ESXZY998', '{\"tires\":{\"type\":\"stock_tires\",\"health\":98.5449588453007},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.70255990102594},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.64282495650986},\"engine\":{\"type\":\"stock_engine\",\"health\":51.581298828125},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.32272550333465},\"oil\":{\"type\":\"stock_oil\",\"health\":97.31303865803088}}', 8543.22),
(393, 'ESXUO459', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.99059581994645},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99948766634863},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99945366723523},\"engine\":{\"type\":\"stock_engine\",\"health\":99.996142578125},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99858539585417},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99816193562119}}', 4.74786),
(394, 'ESX5P270', '{\"tires\":{\"health\":100,\"type\":\"stock_tires\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"}}', 0),
(395, 'ESXKT955', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.68432739524921},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.73794405816871},\"engine\":{\"type\":\"stock_engine\",\"health\":92.56146240234375},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.40685216101693},\"tires\":{\"type\":\"stock_tires\",\"health\":98.81696982905018},\"oil\":{\"type\":\"stock_oil\",\"health\":97.59267480410768}}', 7693.4),
(396, 'ESXXQ539', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.43973974705368},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.70171183706587},\"engine\":{\"type\":\"stock_engine\",\"health\":86.15074462890625},\"tires\":{\"type\":\"stock_tires\",\"health\":98.88633456475179},\"oil\":{\"type\":\"stock_oil\",\"health\":97.72391523822178},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.75240944855897}}', 7262.08),
(397, 'ESX1M290', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.80591304839864},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.8970698266976},\"engine\":{\"type\":\"stock_engine\",\"health\":98.27201538085937},\"tires\":{\"type\":\"stock_tires\",\"health\":99.60133414990114},\"oil\":{\"type\":\"stock_oil\",\"health\":99.21914143419511},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9144491552288}}', 2486.39),
(398, 'ESXOG765', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.8935167245522},\"engine\":{\"type\":\"stock_engine\",\"health\":95.4794189453125},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95315780731404},\"tires\":{\"type\":\"stock_tires\",\"health\":99.7757745366908},\"oil\":{\"type\":\"stock_oil\",\"health\":99.57485487222087},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94370133436695}}', 1344.63),
(399, 'ESX5S901', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.22626602315882},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.58747140755399},\"engine\":{\"type\":\"stock_engine\",\"health\":87.31600341796875},\"tires\":{\"type\":\"stock_tires\",\"health\":98.48064223993615},\"oil\":{\"type\":\"stock_oil\",\"health\":96.8456134638197},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.65775198338638}}', 10024.2),
(400, 'ESX2S158', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.93267621591106},\"engine\":{\"type\":\"stock_engine\",\"health\":98.92723999023437},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97039858127464},\"tires\":{\"type\":\"stock_tires\",\"health\":99.8573901617985},\"oil\":{\"type\":\"stock_oil\",\"health\":99.73170341216265},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96443178347255}}', 847.266),
(401, 'ESXGH279', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.95542111206052},\"engine\":{\"type\":\"stock_engine\",\"health\":99.62980346679687},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98068437696924},\"tires\":{\"type\":\"stock_tires\",\"health\":99.88890640004458},\"oil\":{\"type\":\"stock_oil\",\"health\":99.83222615130274},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97697104887132}}', 528.703),
(402, 'ESX5O587', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99700702792859},\"engine\":{\"type\":\"stock_engine\",\"health\":93.85376586914063},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99871822083085},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99166193446233},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98925728759177},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99848145265413}}', 33.6135),
(403, 'ESXGI701', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.95881015746484},\"engine\":{\"type\":\"stock_engine\",\"health\":99.65281982421875},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9820889147013},\"tires\":{\"type\":\"stock_tires\",\"health\":99.90108655163168},\"oil\":{\"type\":\"stock_oil\",\"health\":99.84276662292172},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97860463321219}}', 499.637),
(404, 'ESX4X606', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.7758795658875},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.88224474116734},\"engine\":{\"type\":\"stock_engine\",\"health\":93.81508178710938},\"tires\":{\"type\":\"stock_tires\",\"health\":99.50449897857772},\"oil\":{\"type\":\"stock_oil\",\"health\":99.11914821273638},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.90181221728638}}', 2771.29),
(405, 'ESXPM933', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.9823274195075},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9611083984375},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99504460903884},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99788107564778},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99749180284342},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9860028307274}}', 55.7016),
(406, 'ESXVL623', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.60525848516912},\"engine\":{\"type\":\"stock_engine\",\"health\":96.57738037109375},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.82715235201971},\"tires\":{\"type\":\"stock_tires\",\"health\":99.122036047616},\"oil\":{\"type\":\"stock_oil\",\"health\":98.45167103932909},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.79276306615597}}', 4865.4),
(407, 'ESXVF828', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.33933232009866},\"engine\":{\"type\":\"stock_engine\",\"health\":92.28006591796876},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.77814849606213},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.90890340262055},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.89461498923157},\"tires\":{\"type\":\"stock_tires\",\"health\":99.15321245621243}}', 2043.53),
(408, 'ESXPA910', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.88565419453109},\"engine\":{\"type\":\"stock_engine\",\"health\":98.98607177734375},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9496500008464},\"tires\":{\"type\":\"stock_tires\",\"health\":99.76208536093198},\"oil\":{\"type\":\"stock_oil\",\"health\":99.54176284085455},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.93945439195992}}', 1451.16),
(409, 'ESXBM699', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.49944458937914},\"engine\":{\"type\":\"stock_engine\",\"health\":91.6115966796875},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.77787053836822},\"tires\":{\"type\":\"stock_tires\",\"health\":99.05899305621864},\"oil\":{\"type\":\"stock_oil\",\"health\":97.93446252394176},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.73180582329207}}', 6574.81),
(410, 'ESXUV753', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.77894580092942},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.35253744496538},\"engine\":{\"type\":\"stock_engine\",\"health\":87.12096557617187},\"tires\":{\"type\":\"stock_tires\",\"health\":97.48871641767468},\"oil\":{\"type\":\"stock_oil\",\"health\":95.0892829042741},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.46183039436458}}', 15666.1),
(411, 'ESX0W387', '{\"oil\":{\"type\":\"stock_oil\",\"health\":98.14970273353419},\"engine\":{\"type\":\"stock_engine\",\"health\":94.1798583984375},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.71938665811834},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.75973376061175},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.42445085081406},\"tires\":{\"type\":\"stock_tires\",\"health\":98.03309765278503}}', 5810.62),
(412, 'ESXKA426', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.93991654082156},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96848785102414},\"engine\":{\"type\":\"stock_engine\",\"health\":98.91788940429687},\"tires\":{\"type\":\"stock_tires\",\"health\":99.86536750167868},\"oil\":{\"type\":\"stock_oil\",\"health\":99.76492113942796},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97370800068309}}', 751.481),
(413, 'ESX8H775', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.73312984584259},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.8629790781178},\"engine\":{\"type\":\"stock_engine\",\"health\":97.14854125976562},\"tires\":{\"type\":\"stock_tires\",\"health\":99.3081285457961},\"oil\":{\"type\":\"stock_oil\",\"health\":99.01152550136654},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.88482644349482}}', 3157.96),
(414, 'ESX0F327', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.78153617090507},\"engine\":{\"type\":\"stock_engine\",\"health\":94.96773681640625},\"oil\":{\"type\":\"stock_oil\",\"health\":98.03304028597037},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.73782401614358},\"tires\":{\"type\":\"stock_tires\",\"health\":98.91508376814473},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.50197226985657}}', 6268.74),
(415, 'ESX8Z070', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.86451712631603},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.92851666660802},\"engine\":{\"type\":\"stock_engine\",\"health\":98.80971069335938},\"tires\":{\"type\":\"stock_tires\",\"health\":99.71000177161464},\"oil\":{\"type\":\"stock_oil\",\"health\":99.46186224099447},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94048138274323}}', 1727.45),
(416, 'ESXAR001', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.47353378893127},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.72184655835344},\"engine\":{\"type\":\"stock_engine\",\"health\":93.31857299804688},\"tires\":{\"type\":\"stock_tires\",\"health\":98.88521903430603},\"oil\":{\"type\":\"stock_oil\",\"health\":97.90169721929336},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.76851233318206}}', 6679.54),
(417, 'ESX5Q163', '{\"suspension\":{\"health\":99.94032347021835,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.92825571583799,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.45754707079284,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.8644143264242,\"type\":\"stock_brakes\"},\"engine\":{\"health\":98.789892578125,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.71637066278965,\"type\":\"stock_tires\"}}', 1730.52),
(418, 'ESX0J218', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.71117429035687},\"engine\":{\"type\":\"stock_engine\",\"health\":91.73551635742187},\"oil\":{\"type\":\"stock_oil\",\"health\":97.3707377754338},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.65267258453261},\"tires\":{\"type\":\"stock_tires\",\"health\":98.63684055459173},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.34412901203869}}', 8447.37),
(419, 'ESX6K853', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.91179505093304},\"engine\":{\"type\":\"stock_engine\",\"health\":98.37601928710937},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96094842940539},\"tires\":{\"type\":\"stock_tires\",\"health\":99.8288760106951},\"oil\":{\"type\":\"stock_oil\",\"health\":99.6391687559015},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.95290682865081}}', 1159.98),
(420, 'ESX6W397', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.53766733422755},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.75998274429104},\"engine\":{\"type\":\"stock_engine\",\"health\":92.34652709960938},\"tires\":{\"type\":\"stock_tires\",\"health\":98.88549323713368},\"oil\":{\"type\":\"stock_oil\",\"health\":98.23766986173739},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.79903109298106}}', 5593.36),
(421, 'ESXGH110', '{\"suspension\":{\"health\":99.99998700793579,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99998700793579,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.9999883071422,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99996102380736,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99998779296875,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99967519839479,\"type\":\"stock_tires\"}}', 0),
(422, 'ESX6A249', '{\"suspension\":{\"health\":99.99994085161714,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99994085161714,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99994676645541,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99982255485142,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99991455078126,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99852129042887,\"type\":\"stock_tires\"}}', 0),
(423, 'ESXCW411', '{\"suspension\":{\"health\":99.99059416786683,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.98877176489447,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.91772743069751,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.97834315430117,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.81826171875,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.94732229428412,\"type\":\"stock_tires\"}}', 263.946),
(424, 'ESX6H404', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.068561626064},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.59270884218005},\"oil\":{\"type\":\"stock_oil\",\"health\":96.36604308832016},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.51203242564594},\"engine\":{\"type\":\"stock_engine\",\"health\":79.53999633789063},\"tires\":{\"type\":\"stock_tires\",\"health\":97.89544726001182}}', 11674.2),
(425, 'ESX6X777', '{\"suspension\":{\"health\":99.41564169395135,\"type\":\"stock_suspension\"},\"engine\":{\"health\":86.84111938476562,\"type\":\"stock_engine\"},\"tires\":{\"health\":97.1007831451672,\"type\":\"stock_tires\"},\"brakes\":{\"health\":98.66794947003554,\"type\":\"stock_brakes\"},\"oil\":{\"health\":94.73755315750293,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.29869047501122,\"type\":\"stock_transmition\"}}', 16934.7),
(426, 'ESXBC053', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99950766502092},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99891376947804},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99978623066684},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99748004684887},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99779663085937},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9998088023366}}', 3.25158),
(427, 'ESX8Y937', '{\"tires\":{\"health\":99.93998870699953,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99095477538414,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.98162666403701,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99228240233643,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.93928527053868,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.866650390625,\"type\":\"stock_engine\"}}', 188.197),
(428, 'ESX5A086', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.96936238274476},\"engine\":{\"type\":\"stock_engine\",\"health\":99.49107055664062},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98652484041561},\"tires\":{\"type\":\"stock_tires\",\"health\":99.93534590830231},\"oil\":{\"type\":\"stock_oil\",\"health\":99.87775891452174},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9838059899995}}', 390.033),
(429, 'ESXAJ238', '{\"oil\":{\"type\":\"stock_oil\",\"health\":94.67596722095299},\"engine\":{\"type\":\"stock_engine\",\"health\":69.98422241210938},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.29998573632385},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.41852159343869},\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.68229386592859},\"tires\":{\"type\":\"stock_tires\",\"health\":97.33144252957038}}', 16979),
(430, 'ESX3J150', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.4906435189705},\"engine\":{\"type\":\"stock_engine\",\"health\":96.86018676757813},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.86971910438929},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94300096517581},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.93169090715917},\"tires\":{\"type\":\"stock_tires\",\"health\":99.70744368835146}}', 1629.09),
(431, 'ESXCO691', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.1882347110529},\"engine\":{\"type\":\"stock_engine\",\"health\":98.0720458984375},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.79947605278224},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.91146725266535},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.89339105966902},\"tires\":{\"type\":\"stock_tires\",\"health\":99.59656014037785}}', 2597.32),
(432, 'EVDM1139', '{\"tires\":{\"health\":95.99197711448984,\"type\":\"stock_tires\"},\"oil\":{\"health\":92.72782901470127,\"type\":\"stock_oil\"},\"engine\":{\"health\":79.54928588867188,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.19241705788146,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.03080356806923,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":98.15905973696646,\"type\":\"stock_brakes\"}}', 22934),
(433, 'ESX5P764', '{\"oil\":{\"type\":\"stock_oil\",\"health\":97.69245542857225},\"engine\":{\"type\":\"stock_engine\",\"health\":76.09070434570313},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.42987661180982},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.74829920090716},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.6969161428269},\"tires\":{\"type\":\"stock_tires\",\"health\":98.85220871295066}}', 7379.31),
(434, 'ESX9E328', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.42712721461966},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.74765065054592},\"oil\":{\"type\":\"stock_oil\",\"health\":97.70091387694893},\"engine\":{\"type\":\"stock_engine\",\"health\":93.44257202148438},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.69649085527361},\"tires\":{\"type\":\"stock_tires\",\"health\":98.81364076532661}}', 7418.05),
(435, 'ESX2I179', '{\"oil\":{\"type\":\"stock_oil\",\"health\":98.16579695751725},\"engine\":{\"type\":\"stock_engine\",\"health\":92.06598510742188},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.75593091187666},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.79670214579511},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.53688287949186},\"tires\":{\"type\":\"stock_tires\",\"health\":98.99977344097366}}', 5840.03),
(436, 'ESX6A068', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.84088047480627},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92992189127075},\"oil\":{\"type\":\"stock_oil\",\"health\":99.36188819096168},\"engine\":{\"type\":\"stock_engine\",\"health\":97.68817138671875},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.91572333543917},\"tires\":{\"type\":\"stock_tires\",\"health\":99.66967768441504}}', 2062.3),
(437, 'GHQB9472', '{\"engine\":{\"type\":\"stock_engine\",\"health\":51.63200073242187},\"tires\":{\"type\":\"stock_tires\",\"health\":89.82743021783259},\"brakes\":{\"type\":\"stock_brakes\",\"health\":96.17599694458991},\"suspension\":{\"type\":\"stock_suspension\",\"health\":98.35409599665083},\"oil\":{\"type\":\"stock_oil\",\"health\":85.98946065727813},\"transmition\":{\"type\":\"stock_transmition\",\"health\":98.0447323981403}}', 44364),
(438, 'ESXBO173', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.73515094536022},\"engine\":{\"type\":\"stock_engine\",\"health\":83.2519775390625},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.8842061727563},\"tires\":{\"type\":\"stock_tires\",\"health\":99.40058744739129},\"oil\":{\"type\":\"stock_oil\",\"health\":98.96729575069988},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.86128049856403}}', 3267.17),
(439, 'ESXMY855', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98799674066473},\"oil\":{\"type\":\"stock_oil\",\"health\":99.95545773783788},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99383270803317},\"tires\":{\"type\":\"stock_tires\",\"health\":99.96902063987955},\"engine\":{\"type\":\"stock_engine\",\"health\":99.64088745117188},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99481734690669}}', 140.263),
(440, 'ESX7N341', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97214863397946},\"oil\":{\"type\":\"stock_oil\",\"health\":99.88843168746766},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98525521118224},\"tires\":{\"type\":\"stock_tires\",\"health\":99.94197466275975},\"engine\":{\"type\":\"stock_engine\",\"health\":99.75319213867188},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98773748397514}}', 356.866),
(441, 'ESX2M074', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.51866639599561},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.78912937248684},\"oil\":{\"type\":\"stock_oil\",\"health\":98.10833580171426},\"engine\":{\"type\":\"stock_engine\",\"health\":95.70401000976563},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.747107628449},\"tires\":{\"type\":\"stock_tires\",\"health\":98.93566143393737}}', 6040.24),
(442, 'ESXNL633', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.309748588771},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.64809599283386},\"engine\":{\"type\":\"stock_engine\",\"health\":91.36212158203125},\"tires\":{\"type\":\"stock_tires\",\"health\":98.13092389065179},\"oil\":{\"type\":\"stock_oil\",\"health\":97.49052273192292},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.70346881257172}}', 7940.33),
(443, 'ESXIH103', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.14754327139994},\"oil\":{\"type\":\"stock_oil\",\"health\":96.83275331554158},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.56179962666384},\"tires\":{\"type\":\"stock_tires\",\"health\":97.80647808710396},\"engine\":{\"type\":\"stock_engine\",\"health\":92.26085815429687},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.63182150415004}}', 10079.3),
(444, 'ESXWG768', '{\"oil\":{\"type\":\"stock_oil\",\"health\":98.10288564954236},\"engine\":{\"type\":\"stock_engine\",\"health\":95.807421875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.51695209326982},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.78841548914368},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.74627503752156},\"tires\":{\"type\":\"stock_tires\",\"health\":98.929699947233}}', 6040.75),
(445, 'AHDR6156', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99587348198689},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98062133789063},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98859867402264},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99041676541602},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99602169836008},\"tires\":{\"type\":\"stock_tires\",\"health\":99.91538262334886}}', 20.9842),
(446, 'ESX0N824', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.71697249304332},\"oil\":{\"type\":\"stock_oil\",\"health\":98.89402105158939},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.85163259311367},\"tires\":{\"type\":\"stock_tires\",\"health\":99.36348127511296},\"engine\":{\"type\":\"stock_engine\",\"health\":-1.76787681579589},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.87618936791708}}', 3508.69),
(447, 'ESX1T385', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.69265123223954},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.8366790888536},\"engine\":{\"type\":\"stock_engine\",\"health\":96.78053588867188},\"tires\":{\"type\":\"stock_tires\",\"health\":99.37903365400912},\"oil\":{\"type\":\"stock_oil\",\"health\":98.75732738589083},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.86434787153212}}', 3998.59),
(448, 'ESX5J694', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.85933404976444},\"oil\":{\"type\":\"stock_oil\",\"health\":98.91462500688107},\"tires\":{\"type\":\"stock_tires\",\"health\":99.51281593332634},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.8835455557721},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.73779808894393},\"engine\":{\"type\":\"stock_engine\",\"health\":95.10538330078126}}', 3422.47),
(449, 'AEVZ7477', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99111535706072},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99237798348224},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98167940556482},\"oil\":{\"type\":\"stock_oil\",\"health\":99.94200381505869},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9358700575227},\"engine\":{\"type\":\"stock_engine\",\"health\":99.84033813476563}}', 181.992),
(450, 'COPJ6518', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9999159222982},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99992132586998},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99978343046843},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99971034862522},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9985741793757},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9994140625}}', 0.689379),
(451, 'XTRV2923', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99998839140156},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99998840864162},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9999652879889},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99998886955624},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99971194219788},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99998779296875}}', 0.000371933),
(452, 'DAQV2471', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99835695583615},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99858315586794},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99656378771812},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98956373899445},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98722717487867},\"engine\":{\"type\":\"stock_engine\",\"health\":99.97720336914063}}', 32.5677),
(453, 'WMRB1401', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.39359377490587},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.14482592175505},\"engine\":{\"type\":\"stock_engine\",\"health\":80.33524780273437},\"tires\":{\"type\":\"stock_tires\",\"health\":96.80388906000894},\"oil\":{\"type\":\"stock_oil\",\"health\":93.47564727173114},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.29014652927651}}', 20792.2),
(454, 'CEHH1571', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.85162520775676},\"oil\":{\"type\":\"stock_oil\",\"health\":98.8975142375908},\"tires\":{\"type\":\"stock_tires\",\"health\":99.35223814166209},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.87609360294317},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.71636703150183},\"engine\":{\"type\":\"stock_engine\",\"health\":97.52763671875}}', 3486.7),
(455, 'ESX1A564', '{\"tires\":{\"type\":\"stock_tires\",\"health\":98.1256244814848},\"engine\":{\"type\":\"stock_engine\",\"health\":84.10487060546875},\"oil\":{\"type\":\"stock_oil\",\"health\":96.14647435462917},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.49538240595865},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.05270885299709},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.5812250779465}}', 12315.7),
(456, 'WPKS2825', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.33617079407346},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98008422851562},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.7084714071984},\"tires\":{\"type\":\"stock_tires\",\"health\":98.57345235202321},\"oil\":{\"type\":\"stock_oil\",\"health\":97.36661282609775},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.6499279148433}}', 8444.3),
(457, 'ESXIK606', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99927986128658},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99521208097903},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99507713182672},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99938440154364},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9985295495562},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98964233398438}}', 45.41),
(458, 'ESX3X290', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9993883098283},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99622555711517},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99489444284076},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99946972199318},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99870224977322},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99178466796875}}', 12.4372),
(459, 'ESX7V184', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.72306302099052},\"oil\":{\"type\":\"stock_oil\",\"health\":97.90190606376946},\"tires\":{\"type\":\"stock_tires\",\"health\":98.91843002532807},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.76975116884702},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.47733083882491},\"engine\":{\"type\":\"stock_engine\",\"health\":0.0}}', 6667.26),
(460, 'UZGG5596', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98251193062683},\"engine\":{\"type\":\"stock_engine\",\"health\":99.88397216796875},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99278997978628},\"tires\":{\"type\":\"stock_tires\",\"health\":99.93494862680234},\"oil\":{\"type\":\"stock_oil\",\"health\":99.94691358003986},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99163942665622}}', 166.449),
(461, 'ESXTY351', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9910668745493},\"oil\":{\"type\":\"stock_oil\",\"health\":99.93345665624638},\"tires\":{\"type\":\"stock_tires\",\"health\":99.96152677023042},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99254423643937},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98295121212252},\"engine\":{\"type\":\"stock_engine\",\"health\":99.85479736328125}}', 209.568),
(462, 'JVHC1311', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99988494761397},\"engine\":{\"type\":\"stock_engine\",\"health\":99.999951171875},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99996159984151},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99904411477562},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99996377385087},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99996155870552}}', 0.00226149),
(463, 'FCUC4910', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.78773438926634},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.88996695776727},\"engine\":{\"type\":\"stock_engine\",\"health\":97.53994140625},\"tires\":{\"type\":\"stock_tires\",\"health\":99.48310101768473},\"oil\":{\"type\":\"stock_oil\",\"health\":99.19396916620218},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.90782052079229}}', 2571.48),
(464, 'ZWUZ5341', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99937281038409},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99793090820313},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99976573477398},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99624616295459},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99893859309639},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99974473308999}}', 2.87877),
(465, 'APMZ6011', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9998564176373},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99993286132812},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99995211719751},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99880476680899},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99995616247344},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99995209885171}}', 0.000609173),
(466, 'ESX8X395', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99403529134578},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9628498691941},\"tires\":{\"type\":\"stock_tires\",\"health\":99.95130423727528},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99483786440172},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98740285620672},\"engine\":{\"type\":\"stock_engine\",\"health\":99.91873779296876}}', 151.632),
(467, 'XCET4363', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99689677569309},\"engine\":{\"type\":\"stock_engine\",\"health\":99.97779541015625},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99869719643088},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98982415753948},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98976912977973},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99847353354173}}', 31.9139),
(468, 'RKAK6296', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99998088111109},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999359810296},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99984236676068},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99999326176767},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999357399122}}', 0.00199959),
(469, 'MYCA0049', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99998519809309},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99993286132812},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999431156503},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99992073988202},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99996941718139},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999368284338}}', 0.111252);
INSERT INTO `vehicle_parts` (`id`, `plate`, `parts`, `mileage`) VALUES
(470, 'IRHM4901', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99556887681854},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9701416015625},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99816741190821},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98385125313117},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98635095841014},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99787112271543}}', 42.2137),
(471, 'ESXKU671', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.66987750010752},\"oil\":{\"type\":\"stock_oil\",\"health\":99.52473111768471},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.87197299889614},\"engine\":{\"type\":\"stock_engine\",\"health\":98.9511962890625},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9447165181895},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.93421000587635}}', 1498.65),
(472, 'TDRC1405', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.99792667104265},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9999218137011},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99975052387237},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99986572265625},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99991674479844},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99991666438815}}', 0.0141905),
(473, 'EWAQ4827', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.98855264675048},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98657316951616},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99614314883297},\"engine\":{\"type\":\"stock_engine\",\"health\":99.97044677734375},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99836027687985},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9980651884928}}', 42.3111),
(474, 'JSRH3264', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.93585226527036},\"oil\":{\"type\":\"stock_oil\",\"health\":99.95500971115374},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98415887680696},\"engine\":{\"type\":\"stock_engine\",\"health\":99.91073608398438},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99355835714965},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99259063343885}}', 136.916),
(475, 'ZMQV0507', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9919565324892},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99600040786143},\"engine\":{\"type\":\"stock_engine\",\"health\":99.94006958007813},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97499626118968},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99659969708944},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9726685136468}}', 85.2374),
(476, 'ESDP4814', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99461717592361},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99783075838924},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99751828595707},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97705526200234},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98598022460938},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98539254904775}}', 44.5515),
(477, 'ESX5E954', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.90525994698138},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95922728879029},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.95156671084277},\"tires\":{\"type\":\"stock_tires\",\"health\":99.74769758674452},\"engine\":{\"type\":\"stock_engine\",\"health\":98.65939331054688},\"oil\":{\"type\":\"stock_oil\",\"health\":99.65305115303926}}', 1092.51),
(478, 'ESX4B679', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.93348117816315},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.986872971407},\"oil\":{\"type\":\"stock_oil\",\"health\":99.8823469310356},\"engine\":{\"type\":\"stock_engine\",\"health\":99.73994140625},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9700268025083},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98425966910509}}', 374.89),
(479, 'CIUD5298', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99941825869267},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99977510762435},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99855346679688},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9961395988554},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99978918880915},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9992399819443}}', 1.85758),
(480, 'MFHN6748', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.16403195511183},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.63878367006703},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.56998340759287},\"tires\":{\"type\":\"stock_tires\",\"health\":97.85821803196558},\"engine\":{\"type\":\"stock_engine\",\"health\":86.130908203125},\"oil\":{\"type\":\"stock_oil\",\"health\":96.88849467283834}}', 9812.55),
(481, 'ESX0H943', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.81042277476444},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9626511863155},\"oil\":{\"type\":\"stock_oil\",\"health\":99.66538435748652},\"engine\":{\"type\":\"stock_engine\",\"health\":97.5798095703125},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.91470926651954},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.95521904532285}}', 1069.29),
(482, 'ESXJW826', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.73942034882487},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95810514563986},\"oil\":{\"type\":\"stock_oil\",\"health\":99.6440418054373},\"engine\":{\"type\":\"stock_engine\",\"health\":99.1589599609375},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9026045769756},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.95024705117943}}', 1135.43),
(483, 'ESX0M260', '{\"tires\":{\"type\":\"stock_tires\",\"health\":98.83623242038402},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.78158053096779},\"oil\":{\"type\":\"stock_oil\",\"health\":98.06542372211186},\"engine\":{\"type\":\"stock_engine\",\"health\":95.35938720703125},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.499230371193},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.73866698144325}}', 6135.07),
(484, 'LSLR4072', '{\"tires\":{\"type\":\"stock_tires\",\"health\":98.28700197796275},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.67790601351213},\"oil\":{\"type\":\"stock_oil\",\"health\":97.14588328806254},\"engine\":{\"type\":\"stock_engine\",\"health\":93.08104248046875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.26164978489996},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.61459164007754}}', 9030.79),
(485, 'GDRU2151', '{\"transmition\":{\"health\":99.99995322188025,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99986024399375,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99993896484375,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.9999544295738,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99995330950951,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99884151161599,\"type\":\"stock_tires\"}}', 0.0107987),
(486, 'VTJW1903', '{\"transmition\":{\"health\":99.99996805514562,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99990455854227,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99995727539063,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99996889099865,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99996811470705,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99920883126396,\"type\":\"stock_tires\"}}', 0.00483265),
(487, 'HOGI8465', '{\"transmition\":{\"health\":99.99929852158701,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99831228317292,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99326782226562,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99686835895544,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.9993616607403,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99036332623698,\"type\":\"stock_tires\"}}', 8.96798),
(488, 'ESXIS804', '{\"tires\":{\"type\":\"stock_tires\",\"health\":98.8816152461297},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.78329209207921},\"oil\":{\"type\":\"stock_oil\",\"health\":98.06591495041102},\"engine\":{\"type\":\"stock_engine\",\"health\":95.7264892578125},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.50445831467941},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.74035263695714}}', 6139.78),
(489, 'AMKS8954', '{\"transmition\":{\"health\":99.99982719650794,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99956325807776,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.998681640625,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99935446553333,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99983957053127,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.9972282123673,\"type\":\"stock_tires\"}}', 1.73919),
(490, 'WWWV9345', '{\"transmition\":{\"health\":99.99998297128785,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99994896663466,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99998168945312,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.9999843575327,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99998297928349,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99957528264803,\"type\":\"stock_tires\"}}', 0.000184548),
(491, 'EXGM2096', '{\"transmition\":{\"health\":99.99998868214313,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99996630167692,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.9999755859375,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99998828244347,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.999988720817,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.9997218926463,\"type\":\"stock_tires\"}}', 0.0140852),
(492, 'ANKK6384', '{\"transmition\":{\"health\":99.99989033169551,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99967123724993,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.9998046875,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99989984554557,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99989036838694,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99726288340291,\"type\":\"stock_tires\"}}', 0.0323666),
(493, 'YRLP1407', '{\"transmition\":{\"health\":99.99832364044205,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99656842314808,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.97559814453125,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.98890626546643,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99856568617263,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.98837698309194,\"type\":\"stock_tires\"}}', 34.4791),
(494, 'ESX4L401', '{\"tires\":{\"health\":99.83279272458188,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.312158203125,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.68899965345516,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.96561729134013,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.95870233063033,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.92174573257603,\"type\":\"stock_brakes\"}}', 1010.81),
(495, 'DFHO9179', '{\"transmition\":{\"health\":99.63614656882001,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.30058530412143,\"type\":\"stock_brakes\"},\"engine\":{\"health\":94.0769775390625,\"type\":\"stock_engine\"},\"oil\":{\"health\":97.3196583259705,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.69556256846626,\"type\":\"stock_suspension\"},\"tires\":{\"health\":98.33809117616164,\"type\":\"stock_tires\"}}', 8604.01),
(496, 'VZKN6333', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.5138068625424},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.79207359219486},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.75385523498402},\"tires\":{\"type\":\"stock_tires\",\"health\":98.62845282063363},\"engine\":{\"type\":\"stock_engine\",\"health\":94.40755615234375},\"oil\":{\"type\":\"stock_oil\",\"health\":98.26502276593819}}', 5479.85),
(497, 'GHMV3452', '{\"transmition\":{\"health\":99.99663599994874,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.98990799984621,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.994873046875,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99697239995267,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99663599994874,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.91589999874232,\"type\":\"stock_tires\"}}', 0.00000762939),
(498, 'ESX9T450', '{\"transmition\":{\"health\":99.59520566389716,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.23283740965263,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.66296633328543,\"type\":\"stock_suspension\"},\"tires\":{\"health\":98.35869535460928,\"type\":\"stock_tires\"},\"engine\":{\"health\":90.3537109375,\"type\":\"stock_engine\"},\"oil\":{\"health\":96.95236258974588,\"type\":\"stock_oil\"}}', 9714.7),
(499, 'MUJN2070', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.06719339416294},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.58527652488098},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.49878657501427},\"tires\":{\"type\":\"stock_tires\",\"health\":98.29171935242714},\"engine\":{\"type\":\"stock_engine\",\"health\":88.05098266601563},\"oil\":{\"type\":\"stock_oil\",\"health\":96.12390590279041}}', 12324.4),
(500, 'LZBT1057', '{\"brakes\":{\"health\":99.64444391834233,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.24670545234867,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.8121582378947,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.98636474609376,\"type\":\"stock_engine\"},\"oil\":{\"health\":98.58312718615577,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.84366872344883,\"type\":\"stock_suspension\"}}', 4541.08),
(501, 'ESX6O816', '{\"suspension\":{\"health\":99.99987903605219,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99963710815656,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99989113244692,\"type\":\"stock_oil\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99987903605219,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99697590130552,\"type\":\"stock_tires\"}}', 10047.8),
(502, 'ESXRP713', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.54237809228697},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.93762221796436},\"oil\":{\"type\":\"stock_oil\",\"health\":99.49817892702032},\"engine\":{\"type\":\"stock_engine\",\"health\":88.51427612304687},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.85248274892875},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.92661774712123}}', 1571.9),
(503, 'ESX1E635', '{\"suspension\":{\"health\":99.99312894045049,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.98388007282208,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.94326696736099,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.37147216796875,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.991880815042,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.95319206778872,\"type\":\"stock_tires\"}}', 175.747),
(504, 'ESXPD455', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.01676304001124},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.79494305313289},\"oil\":{\"type\":\"stock_oil\",\"health\":98.13955299927263},\"engine\":{\"type\":\"stock_engine\",\"health\":95.88401489257812},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.53379767038044},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.75356291119333}}', 5958.32),
(505, 'ESXZA296', '{\"transmition\":{\"health\":99.85232597628513,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.71368183083581,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.8760689917365,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.27899421550016,\"type\":\"stock_tires\"},\"engine\":{\"health\":47.84765625,\"type\":\"stock_engine\"},\"oil\":{\"health\":98.92686996677948,\"type\":\"stock_oil\"}}', 3396),
(506, 'ESX8S528', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.69310170532174},\"tires\":{\"type\":\"stock_tires\",\"health\":99.29980085752348},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.83943275207953},\"engine\":{\"type\":\"stock_engine\",\"health\":97.32955322265625},\"oil\":{\"type\":\"stock_oil\",\"health\":98.80666878237246},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.86591812315273}}', 3762.55),
(507, 'ESX4N796', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99973290214546},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99975961193081},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99973290214546},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99919870643635},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99960327148438},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99332255363803}}', 0),
(508, 'ESX3E218', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.9653260379249},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99387733248943},\"oil\":{\"type\":\"stock_oil\",\"health\":99.94660040682649},\"engine\":{\"type\":\"stock_engine\",\"health\":99.8821044921875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98588881457161},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99269488329399}}', 169.653),
(509, 'ESX6T141', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.5114009227533},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.89294266137736},\"oil\":{\"type\":\"stock_oil\",\"health\":99.01868167636934},\"engine\":{\"type\":\"stock_engine\",\"health\":97.75826416015625},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.75749169247566},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.8710916312817}}', 3131.5),
(510, 'ESXUB379', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.88609142670706},\"oil\":{\"type\":\"stock_oil\",\"health\":95.64316263794322},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.51260292030038},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.41585773535393},\"engine\":{\"type\":\"stock_engine\",\"health\":79.54299926757813},\"tires\":{\"type\":\"stock_tires\",\"health\":97.50168465029397}}', 13863),
(511, 'BZCI4659', '{\"transmition\":{\"health\":99.9971293791344,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99751210199816,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99391410830359,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.98226061581956,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.94659423828125,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.97612267667773,\"type\":\"stock_tires\"}}', 53.9753),
(512, 'NCMQ7382', '{\"transmition\":{\"health\":99.89383025998763,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.91124012904088,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.79639591571453,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.21501641948378,\"type\":\"stock_oil\"},\"engine\":{\"health\":98.38228149414063,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.52416636497479,\"type\":\"stock_tires\"}}', 2503.12),
(513, 'ESX1Z696', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.74115195849787},\"oil\":{\"type\":\"stock_oil\",\"health\":98.0788410559892},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.78378316321224},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.50482182660417},\"engine\":{\"type\":\"stock_engine\",\"health\":94.37246704101563},\"tires\":{\"type\":\"stock_tires\",\"health\":98.8630284522451}}', 6071.87),
(514, 'PWIW9792', '{\"oil\":{\"health\":99.95208600649433,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.186474609375,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99341146745518,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.93908124097081,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.98396634140681,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99237481772149,\"type\":\"stock_transmition\"}}', 149.331),
(515, 'VPJY9116', '{\"oil\":{\"health\":99.90052339059896,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.78176879882813,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.98716815837033,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.89658139598412,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.96932029306039,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.98499709782868,\"type\":\"stock_transmition\"}}', 311.414),
(516, 'WMKN5839', '{\"transmition\":{\"health\":99.99854459055668,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99868127814672,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99653590976419,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99327730293753,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.9914306640625,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.98071779861691,\"type\":\"stock_tires\"}}', 19.5514),
(517, 'ESX4S479', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94964343749075},\"engine\":{\"type\":\"stock_engine\",\"health\":99.025732421875},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9435434810909},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.87089015551237},\"tires\":{\"type\":\"stock_tires\",\"health\":99.35184407195378},\"oil\":{\"type\":\"stock_oil\",\"health\":99.70763085953445}}', 1338.17),
(518, 'ESX9M681', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.6306157850978},\"oil\":{\"type\":\"stock_oil\",\"health\":97.20612673878455},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.69277304438593},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.30208526659298},\"engine\":{\"type\":\"stock_engine\",\"health\":88.49678955078125},\"tires\":{\"type\":\"stock_tires\",\"health\":98.54282169585436}}', 8936.25),
(519, 'YOIO1232', '{\"transmition\":{\"health\":99.25774118958727,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.38450983641813,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":98.60989663784645,\"type\":\"stock_brakes\"},\"oil\":{\"health\":94.31192865612344,\"type\":\"stock_oil\"},\"engine\":{\"health\":84.85538940429687,\"type\":\"stock_engine\"},\"tires\":{\"health\":97.30545667440201,\"type\":\"stock_tires\"}}', 18140.3),
(520, 'ESXZQ469', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.69550234976633},\"oil\":{\"type\":\"stock_oil\",\"health\":98.8310536420139},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.8674013009202},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.84148506564115},\"engine\":{\"type\":\"stock_engine\",\"health\":96.535791015625},\"tires\":{\"type\":\"stock_tires\",\"health\":99.27989558036272}}', 3682.85),
(521, 'ESXVY741', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.85234663018054},\"oil\":{\"type\":\"stock_oil\",\"health\":98.90214237232391},\"tires\":{\"type\":\"stock_tires\",\"health\":99.35770162709695},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.8767145492422},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.7178681563483},\"engine\":{\"type\":\"stock_engine\",\"health\":83.38190307617188}}', 3494.54),
(522, 'RLCB1500', '{\"transmition\":{\"health\":99.9998999720631,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.9999000640125,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99970052305514,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99990633366255,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99984741210938,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.9975108067411,\"type\":\"stock_tires\"}}', 0.0117141),
(523, 'CQXG5453', '{\"transmition\":{\"health\":99.53263656752094,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.61218824104599,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.12295074783002,\"type\":\"stock_brakes\"},\"oil\":{\"health\":96.4291266391568,\"type\":\"stock_oil\"},\"engine\":{\"health\":91.46632080078125,\"type\":\"stock_engine\"},\"tires\":{\"health\":98.26981733794648,\"type\":\"stock_tires\"}}', 11360.7),
(524, 'ZZQC8950', '{\"transmition\":{\"health\":99.99994242837353,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.99992065429687,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99994818553616,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99982728512058,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99856070933856,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99994242837353,\"type\":\"stock_suspension\"}}', 0),
(525, 'PAWM6003', '{\"transmition\":{\"health\":99.84542032682829,\"type\":\"stock_transmition\"},\"engine\":{\"health\":95.41617431640626,\"type\":\"stock_engine\"},\"oil\":{\"health\":98.83310463074985,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.7075565910504,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.38298745435404,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.8713742072167,\"type\":\"stock_suspension\"}}', 33649.5),
(526, 'ESX7L999', '{\"tires\":{\"type\":\"stock_tires\",\"health\":98.08391486702203},\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.99448365398129},\"oil\":{\"type\":\"stock_oil\",\"health\":95.86603715942204},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.46206026895804},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.55422736700482},\"engine\":{\"type\":\"stock_engine\",\"health\":88.96513671875}}', 13047.4),
(527, 'EMYN5057', '{\"transmition\":{\"health\":99.99952895870548,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.9945068359375,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.9974707830132,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99893775608672,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.9948760670738,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99958212233733,\"type\":\"stock_suspension\"}}', 7.52383),
(528, 'DCNV4036', '{\"transmition\":{\"health\":99.9807872461541,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.69064331054688,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.8598418343456,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.96283951966099,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.90790575574632,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.98388994027515,\"type\":\"stock_suspension\"}}', 442.533),
(529, 'GNHI3415', '{\"transmition\":{\"health\":99.99994705449933,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.9999267578125,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99995144671714,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99984131388662,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99867921360168,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99994707728547,\"type\":\"stock_suspension\"}}', 0.000154495),
(530, 'EBUC4460', '{\"transmition\":{\"health\":99.99778274026133,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.96805419921876,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.98540826019716,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99544758845716,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.98436901866866,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99810082627245,\"type\":\"stock_suspension\"}}', 45.2719),
(531, 'ESXBX409', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":97.23868546433057},\"oil\":{\"type\":\"stock_oil\",\"health\":88.96786344814524},\"engine\":{\"type\":\"stock_engine\",\"health\":67.3617431640625},\"transmition\":{\"type\":\"stock_transmition\",\"health\":98.53968128222964},\"suspension\":{\"type\":\"stock_suspension\",\"health\":98.78508152732656},\"tires\":{\"type\":\"stock_tires\",\"health\":94.19773772359855}}', 35563.6),
(532, 'PMQB7631', '{\"transmition\":{\"health\":99.99998843973641,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.99994506835938,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99998059680374,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.9999668190357,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99973942762091,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99998866698286,\"type\":\"stock_suspension\"}}', 0.0544298),
(533, 'FRQY1822', '{\"transmition\":{\"health\":99.83128928322431,\"type\":\"stock_transmition\"},\"engine\":{\"health\":97.24428100585938,\"type\":\"stock_engine\"},\"oil\":{\"health\":98.75287893324779,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.67641475328199,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.24301712820707,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.85894790498354,\"type\":\"stock_suspension\"}}', 3958.06),
(534, 'ESXVI525', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.90749051490795},\"oil\":{\"type\":\"stock_oil\",\"health\":99.3116689175311},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92277012465228},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.82331696903754},\"engine\":{\"type\":\"stock_engine\",\"health\":98.4784912109375},\"tires\":{\"type\":\"stock_tires\",\"health\":99.59912404198873}}', 2187.86),
(535, 'ESX6J592', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94553356064263},\"oil\":{\"type\":\"stock_oil\",\"health\":99.6055628756178},\"tires\":{\"type\":\"stock_tires\",\"health\":99.72976182632633},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95425622046494},\"engine\":{\"type\":\"stock_engine\",\"health\":98.89998779296875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.89417023675445}}', 1248.92),
(536, 'ESX6G599', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99870312043307},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99306592392452},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99884874882865},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99707050871023},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98511352539063},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98579976382584}}', 20.7233),
(537, 'FGAS1706', '{\"transmition\":{\"health\":99.99998062181094,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.9999806532396,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99994207286206,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99998131505439,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99996948242188,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99951947778627,\"type\":\"stock_tires\"}}', 0.00912299),
(538, 'KMBB9533', '{\"transmition\":{\"health\":99.99999969857717,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99999975338132,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.9999994574389,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99999755847505,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99998779296875,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99999932179863,\"type\":\"stock_tires\"}}', 0.0163842),
(539, 'OLVP2199', '{\"transmition\":{\"health\":99.99999971033546,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99999976300174,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99999947860384,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99999765371726,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99998168945312,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99999934825479,\"type\":\"stock_tires\"}}', 0.0135105),
(540, 'AKPA8154', '{\"transmition\":{\"health\":99.99998337990641,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99998344151895,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99995054636197,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.9999826020594,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99996948242188,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99959220692894,\"type\":\"stock_tires\"}}', 0.013357),
(541, 'AWYD3099', '{\"transmition\":{\"health\":99.5759960484742,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.64789160983875,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.20249885042797,\"type\":\"stock_brakes\"},\"oil\":{\"health\":96.77133221359228,\"type\":\"stock_oil\"},\"engine\":{\"health\":83.38975219726562,\"type\":\"stock_engine\"},\"tires\":{\"health\":98.39583332759107,\"type\":\"stock_tires\"}}', 10281.2),
(542, 'KPXB7402', '{\"transmition\":{\"health\":99.71921769052831,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.76611023775189,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.46714388325974,\"type\":\"stock_brakes\"},\"oil\":{\"health\":97.8903510514265,\"type\":\"stock_oil\"},\"engine\":{\"health\":91.73685913085937,\"type\":\"stock_engine\"},\"tires\":{\"health\":98.84787223455617,\"type\":\"stock_tires\"}}', 6686.97),
(543, 'ESXZU095', '{\"transmition\":{\"health\":99.99997860036969,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99946500924227,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.9999755859375,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99993580110906,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.9999807403327,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99997860036969,\"type\":\"stock_suspension\"}}', 0),
(544, 'ESX3J235', '{\"transmition\":{\"health\":99.99968014996742,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99200374918763,\"type\":\"stock_tires\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99904044990228,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99971213497058,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99968014996742,\"type\":\"stock_suspension\"}}', 0.0803125),
(545, 'ESX1A196', '{\"transmition\":{\"health\":99.99987224364397,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99680609109982,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99981079101562,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99961673093188,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99988501927952,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99987224364397,\"type\":\"stock_suspension\"}}', 0),
(546, 'ESX8D847', '{\"transmition\":{\"health\":100.0,\"type\":\"stock_transmition\"},\"tires\":{\"health\":100.0,\"type\":\"stock_tires\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"brakes\":{\"health\":100.0,\"type\":\"stock_brakes\"},\"oil\":{\"health\":100.0,\"type\":\"stock_oil\"},\"suspension\":{\"health\":100.0,\"type\":\"stock_suspension\"}}', 0.160649),
(547, 'ESX9P639', '{\"transmition\":{\"health\":99.99999847912449,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99999657803009,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99996948242188,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99999726242409,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99998768090834,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99999875564731,\"type\":\"stock_suspension\"}}', 0.0188465),
(548, 'JSTU2372', '{\"transmition\":{\"health\":99.69843859735166,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.74868979204159,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.42697367700834,\"type\":\"stock_brakes\"},\"oil\":{\"health\":97.73864742789434,\"type\":\"stock_oil\"},\"engine\":{\"health\":95.03452758789062,\"type\":\"stock_engine\"},\"tires\":{\"health\":98.74864566937346,\"type\":\"stock_tires\"}}', 7164.31),
(549, 'ESXLL204', '{\"suspension\":{\"health\":99.98932030420467,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.97549341732806,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.90564759574973,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.79159545898438,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.987227941784,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.94250539247841,\"type\":\"stock_tires\"}}', 301.427),
(550, 'ESX9X992', '{\"suspension\":{\"health\":99.49680078469334,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":98.85608976357789,\"type\":\"stock_brakes\"},\"oil\":{\"health\":95.43313734938224,\"type\":\"stock_oil\"},\"engine\":{\"health\":86.79435424804687,\"type\":\"stock_engine\"},\"tires\":{\"health\":97.59070069398762,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.39522094872211,\"type\":\"stock_transmition\"}}', 14591.9),
(551, 'LKCU8876', '{\"transmition\":{\"health\":99.99987063759026,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99987071279462,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99961240911925,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99988059573986,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99981079101562,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99677534969742,\"type\":\"stock_tires\"}}', 0.00197201),
(552, 'IJMZ9470', '{\"transmition\":{\"health\":99.9999708279924,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99997084434064,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99991259187542,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99997309780393,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99996337890625,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99927274538038,\"type\":\"stock_tires\"}}', 0.00142813),
(553, 'XCZN6045', '{\"transmition\":{\"health\":99.48775518782046,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.57418254828099,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.03368614250026,\"type\":\"stock_brakes\"},\"oil\":{\"health\":96.11645619480908,\"type\":\"stock_oil\"},\"engine\":{\"health\":90.04580078125,\"type\":\"stock_engine\"},\"tires\":{\"health\":98.00810317311778,\"type\":\"stock_tires\"}}', 12400),
(554, 'ESX2O817', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.8398109103153},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.80825277511043},\"oil\":{\"type\":\"stock_oil\",\"health\":98.57772534347369},\"tires\":{\"type\":\"stock_tires\",\"health\":99.15503104531112},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.63304201768519},\"engine\":{\"type\":\"stock_engine\",\"health\":93.00134887695313}}', 4521.62),
(555, 'ESX1A144', '{\"transmition\":{\"health\":99.99854598905277,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.98899573208755,\"type\":\"stock_tires\"},\"engine\":{\"health\":98.54345703125,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99697489933064,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99066979711299,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99874855453338,\"type\":\"stock_suspension\"}}', 29.5364),
(556, 'VERC5078', '{\"transmition\":{\"health\":99.42836221737376,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.52511628648252,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":98.92366350823889,\"type\":\"stock_brakes\"},\"oil\":{\"health\":95.65406485893249,\"type\":\"stock_oil\"},\"engine\":{\"health\":84.20562133789062,\"type\":\"stock_engine\"},\"tires\":{\"health\":97.81540833158317,\"type\":\"stock_tires\"}}', 13908.2),
(557, 'ESXOP547', '{\"suspension\":{\"health\":99.86295105423587,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.68977810635696,\"type\":\"stock_brakes\"},\"oil\":{\"health\":98.74125033275976,\"type\":\"stock_oil\"},\"engine\":{\"health\":97.21575927734375,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.83491634766679,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.38075135113903,\"type\":\"stock_tires\"}}', 4005.05),
(558, 'ESXAP953', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95878900027808},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9509201651606},\"oil\":{\"type\":\"stock_oil\",\"health\":99.64422227799409},\"tires\":{\"type\":\"stock_tires\",\"health\":99.75759212308414},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.90469480725665},\"engine\":{\"type\":\"stock_engine\",\"health\":97.21433715820312}}', 1125.94),
(559, 'ESX1H922', '{\"tires\":{\"health\":99.99657984101573,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99903816505298,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99339599609375,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.9969868063991,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.999600755072,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99953522733954,\"type\":\"stock_transmition\"}}', 10.9766),
(560, 'ESX7Y285', '{\"suspension\":{\"health\":99.99268421052395,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.98324683460501,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.9349810053476,\"type\":\"stock_oil\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99124137634805,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.9615690349601,\"type\":\"stock_tires\"}}', 206.265),
(561, 'ESX9R363', '{\"suspension\":{\"health\":99.91248951995276,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.80175996096709,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.19796230548039,\"type\":\"stock_oil\"},\"engine\":{\"health\":98.22484130859375,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.60034259216394,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.89463079742262,\"type\":\"stock_transmition\"}}', 2553.62),
(562, 'ESXEC031', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98046747346764},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9624141143973},\"oil\":{\"type\":\"stock_oil\",\"health\":99.8563505621561},\"tires\":{\"type\":\"stock_tires\",\"health\":99.91003353533164},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98365106346685},\"engine\":{\"type\":\"stock_engine\",\"health\":99.6832275390625}}', 456.647),
(563, 'ESXJP787', '{\"suspension\":{\"health\":99.78380556457403,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.50437567757959,\"type\":\"stock_brakes\"},\"oil\":{\"health\":98.08463643971821,\"type\":\"stock_oil\"},\"engine\":{\"health\":93.8553955078125,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.74131695794712,\"type\":\"stock_transmition\"},\"tires\":{\"health\":98.84931085289633,\"type\":\"stock_tires\"}}', 6044.26),
(564, 'ESX2D360', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.91007851299927},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.81860253089768},\"oil\":{\"type\":\"stock_oil\",\"health\":99.38886871030113},\"tires\":{\"type\":\"stock_tires\",\"health\":99.42725371311936},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92346745116589},\"engine\":{\"type\":\"stock_engine\",\"health\":89.21149291992188}}', 1917.68),
(565, 'ESXCF180', '{\"suspension\":{\"health\":99.99998287129178,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99994861387535,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.9999845841626,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99998168945312,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99998287129178,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99957178229464,\"type\":\"stock_tires\"}}', 0),
(566, 'ESX8K548', '{\"suspension\":{\"health\":99.53343943226783,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":98.92937535367934,\"type\":\"stock_brakes\"},\"oil\":{\"health\":95.87820359916586,\"type\":\"stock_oil\"},\"engine\":{\"health\":90.89326782226563,\"type\":\"stock_engine\"},\"tires\":{\"health\":97.48788520112517,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.44203469424569,\"type\":\"stock_transmition\"}}', 13034.6),
(567, 'VIWV8839', '{\"transmition\":{\"health\":99.99999029968201,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.9999903714249,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.9999713725491,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.9999884286954,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99998168945312,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99976646887922,\"type\":\"stock_tires\"}}', 0.0136089),
(568, 'SIQR5626', '{\"transmition\":{\"health\":99.99984448615636,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99985569022056,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99960740529269,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99941635659843,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99878540039063,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99751406244089,\"type\":\"stock_tires\"}}', 1.59657),
(569, 'ARJE9006', '{\"transmition\":{\"health\":99.99972669851046,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99974137033724,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99927692958812,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99917302431907,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.9983154296875,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.9950032750868,\"type\":\"stock_tires\"}}', 2.04984),
(570, 'LYBL0476', '{\"transmition\":{\"health\":99.53271003550933,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.61222609260757,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.1229360833764,\"type\":\"stock_brakes\"},\"oil\":{\"health\":96.43060317086565,\"type\":\"stock_oil\"},\"engine\":{\"health\":90.51045532226563,\"type\":\"stock_engine\"},\"tires\":{\"health\":98.2671975321594,\"type\":\"stock_tires\"}}', 11420.8),
(571, 'PQRQ4611', '{\"transmition\":{\"health\":99.9020902241244,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.91823249100273,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.81280963376877,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.27264743333757,\"type\":\"stock_oil\"},\"engine\":{\"health\":89.57982788085937,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.57205674624152,\"type\":\"stock_tires\"}}', 2288.88),
(572, 'ESXGB636', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.59210210053606},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.78197786923397},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.81927612572415},\"oil\":{\"type\":\"stock_oil\",\"health\":98.32676912530859},\"engine\":{\"type\":\"stock_engine\",\"health\":96.29451904296875},\"tires\":{\"type\":\"stock_tires\",\"health\":99.21639107415843}}', 5348.72),
(573, 'ESX4I239', '{\"transmition\":{\"health\":99.90838448816851,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.62648084082956,\"type\":\"stock_tires\"},\"engine\":{\"health\":98.44237060546875,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.82626301896447,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.31088871259903,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.9237041176319,\"type\":\"stock_suspension\"}}', 2203.21),
(574, 'ESX8T040', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.51082004866086},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.74391193960169},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.78619742897385},\"oil\":{\"type\":\"stock_oil\",\"health\":98.09501536650636},\"engine\":{\"type\":\"stock_engine\",\"health\":95.79076538085937},\"tires\":{\"type\":\"stock_tires\",\"health\":98.88877034772529}}', 6058.11),
(575, 'UEXZ1703', '{\"transmition\":{\"health\":99.87235505696509,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.89291485308289,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.75275982527386,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.07095162499516,\"type\":\"stock_oil\"},\"engine\":{\"health\":97.64996948242188,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.38142091339147,\"type\":\"stock_tires\"}}', 2962.59),
(576, 'GASF5556', '{\"transmition\":{\"health\":99.57024787655704,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.64152151090411,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.18114961636222,\"type\":\"stock_brakes\"},\"oil\":{\"health\":96.79078716874523,\"type\":\"stock_oil\"},\"engine\":{\"health\":91.57811889648437,\"type\":\"stock_engine\"},\"tires\":{\"health\":98.17431041163495,\"type\":\"stock_tires\"}}', 10229.4),
(577, 'ESXQG397', '{\"engine\":{\"health\":92.19692993164063,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.67881322457966,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.61337275736062,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.27202535572715,\"type\":\"stock_brakes\"},\"tires\":{\"health\":98.52255739483474,\"type\":\"stock_tires\"},\"oil\":{\"health\":97.06059297974986,\"type\":\"stock_oil\"}}', 9270.22),
(578, 'ESXTQ669', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":100.0},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100.0}}', 0),
(579, 'ESXLE789', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":100.0},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100.0}}', 0.178106),
(580, 'ESX5R266', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":100.0},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100.0}}', 0.326756),
(581, 'ESX2E920', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":100.0},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100.0}}', 0.321452);
INSERT INTO `vehicle_parts` (`id`, `plate`, `parts`, `mileage`) VALUES
(582, 'ESXZV058', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":100.0},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100.0}}', 0.0370709),
(583, 'ESX2B554', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":100.0},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100.0}}', 0.667045),
(584, 'ESX4A213', '{\"suspension\":{\"health\":99.73069634461217,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.38846823018869,\"type\":\"stock_brakes\"},\"oil\":{\"health\":97.5483607511864,\"type\":\"stock_oil\"},\"engine\":{\"health\":93.99442749023437,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.67614656784765,\"type\":\"stock_transmition\"},\"tires\":{\"health\":98.72920501385217,\"type\":\"stock_tires\"}}', 7815.2),
(585, 'LPVY6860', '{\"transmition\":{\"health\":99.93018605767,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.94194112756799,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.86814163433685,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.47166668394218,\"type\":\"stock_oil\"},\"engine\":{\"health\":98.83095092773438,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.72550456273844,\"type\":\"stock_tires\"}}', 1686.89),
(586, 'DVAC4563', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.7999755859375},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98699270947636},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98475030925194},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.96905076923722},\"tires\":{\"type\":\"stock_tires\",\"health\":99.89933805939055},\"oil\":{\"type\":\"stock_oil\",\"health\":99.89747622943543}}', 323.441),
(587, 'ESX4V097', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.87346132519981},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.71048180000973},\"oil\":{\"type\":\"stock_oil\",\"health\":98.87251466806524},\"engine\":{\"type\":\"stock_engine\",\"health\":94.48602905273438},\"tires\":{\"type\":\"stock_tires\",\"health\":99.34237887141241},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.84843415175284}}', 3548.99),
(588, 'ESXBL779', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95914550138193},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.95231743039516},\"tires\":{\"type\":\"stock_tires\",\"health\":99.66229814212852},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.90201755969773},\"oil\":{\"type\":\"stock_oil\",\"health\":99.68669407628259},\"engine\":{\"type\":\"stock_engine\",\"health\":97.59523315429688}}', 979.15),
(589, 'ESX5T888', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.47003209436382},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.71167124520292},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.84513679255235},\"oil\":{\"type\":\"stock_oil\",\"health\":98.80305790802366},\"engine\":{\"type\":\"stock_engine\",\"health\":97.07188110351562},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.87184298460484}}', 3771.26),
(590, 'ESX5Q674', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.937709324793},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.92571379095536},\"tires\":{\"type\":\"stock_tires\",\"health\":99.64378594530997},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.85631189619382},\"oil\":{\"type\":\"stock_oil\",\"health\":99.45811927189765},\"engine\":{\"type\":\"stock_engine\",\"health\":98.8031982421875}}', 1717.16),
(591, 'JTVE4412', '{\"transmition\":{\"health\":99.77452637699304,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.81223629341777,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.57246457938146,\"type\":\"stock_brakes\"},\"oil\":{\"health\":98.3037610488813,\"type\":\"stock_oil\"},\"engine\":{\"health\":95.404638671875,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.08161271745314,\"type\":\"stock_tires\"}}', 5425.52),
(592, 'ESXLA262', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.66353261318783},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.59558206557306},\"tires\":{\"type\":\"stock_tires\",\"health\":98.39186390962733},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.23521981097652},\"oil\":{\"type\":\"stock_oil\",\"health\":96.9451821734718},\"engine\":{\"type\":\"stock_engine\",\"health\":97.70398559570313}}', 9735.11),
(593, 'ESXLR805', '{\"oil\":{\"type\":\"stock_oil\",\"health\":95.2380066809847},\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.78508107739447},\"tires\":{\"type\":\"stock_tires\",\"health\":97.29212404956532},\"engine\":{\"type\":\"stock_engine\",\"health\":83.3914306640625},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.46811453973055},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.36235413467465}}', 14964.9),
(594, 'BRBW1535', '{\"transmition\":{\"health\":99.39001729134238,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.49290479367225,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":98.84910938940554,\"type\":\"stock_brakes\"},\"oil\":{\"health\":95.37667046992689,\"type\":\"stock_oil\"},\"engine\":{\"health\":85.16632080078125,\"type\":\"stock_engine\"},\"tires\":{\"health\":97.62423101263843,\"type\":\"stock_tires\"}}', 14762.5),
(595, 'ESX3Y502', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.33811757286884},\"engine\":{\"type\":\"stock_engine\",\"health\":83.59976806640626},\"tires\":{\"type\":\"stock_tires\",\"health\":97.43109258046558},\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.75166190148505},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.44983108542646},\"oil\":{\"type\":\"stock_oil\",\"health\":94.98045071831408}}', 15885.3),
(596, 'ESX0N089', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99880761165443},\"engine\":{\"type\":\"stock_engine\",\"health\":99.980419921875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99717564979865},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99045768359098},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99112795396961},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99859849642239}}', 31.3816),
(597, 'ESXJH047', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99864880078536},\"engine\":{\"type\":\"stock_engine\",\"health\":99.97786254882813},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99676864606549},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98953367897505},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98908867280362},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99842039975495}}', 31.2272),
(598, 'ESX2Z813', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99846030482662},\"engine\":{\"type\":\"stock_engine\",\"health\":99.97526245117187},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99633222577234},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98791202230237},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98796596598948},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99819605168975}}', 36.2283),
(599, 'MYHW7746', '{\"transmition\":{\"health\":99.9583537164663,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.31158447265625,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.92069159019427,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.82392001840445,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.9652674196171,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.68873570004674,\"type\":\"stock_oil\"}}', 4770.96),
(600, 'ESXIT516', '{\"transmition\":{\"health\":99.80708480285863,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.83953516238754,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.63542678146537,\"type\":\"stock_brakes\"},\"oil\":{\"health\":98.54134208523478,\"type\":\"stock_oil\"},\"engine\":{\"health\":89.23073120117188,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.23747130749715,\"type\":\"stock_tires\"}}', 4657.63),
(601, 'ESXCC294', '{\"transmition\":{\"health\":99.99668079131692,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99710621354952,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99285016068606,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.98016599177457,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.96957397460938,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.9702507397786,\"type\":\"stock_tires\"}}', 61.5134),
(602, 'ESX5O157', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99980949795992},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99942982797411},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99982054359865},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9952627412021},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9998097000955},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99969482421875}}', 0.0156501),
(603, 'LQTB6518', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.49868804753064},\"oil\":{\"type\":\"stock_oil\",\"health\":96.30473045405442},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.58060948158897},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.03674560737902},\"engine\":{\"type\":\"stock_engine\",\"health\":82.82521362304688},\"tires\":{\"type\":\"stock_tires\",\"health\":97.71762062486254}}', 11869.8),
(604, 'ESX1Y515', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92964265582202},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.83784436661127},\"oil\":{\"type\":\"stock_oil\",\"health\":99.38636889985665},\"engine\":{\"type\":\"stock_engine\",\"health\":94.10208129882813},\"tires\":{\"type\":\"stock_tires\",\"health\":99.60155374678759},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.91605476717059}}', 1933.8),
(605, 'ESXWT901', '{\"transmition\":{\"health\":99.99904927794165,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.99376831054687,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99697657822618,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.9975091291451,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.98308150565522,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99910401965679,\"type\":\"stock_suspension\"}}', 9171.91),
(606, 'GDNV6843', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":95.53228107801755},\"transmition\":{\"type\":\"stock_transmition\",\"health\":97.65433260868996},\"engine\":{\"type\":\"stock_engine\",\"health\":97.03261108398438},\"oil\":{\"type\":\"stock_oil\",\"health\":82.47319983611682},\"tires\":{\"type\":\"stock_tires\",\"health\":90.06764353580879},\"suspension\":{\"type\":\"stock_suspension\",\"health\":98.04361794989458}}', 56086),
(607, 'ESXRA973', '{\"transmition\":{\"health\":99.82913445133461,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.85813686825796,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.67881930569568,\"type\":\"stock_brakes\"},\"oil\":{\"health\":98.69772529605018,\"type\":\"stock_oil\"},\"engine\":{\"health\":96.93349609375,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.35728870085832,\"type\":\"stock_tires\"}}', 4155.88),
(608, 'ESX5Q262', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99497461584606},\"engine\":{\"type\":\"stock_engine\",\"health\":99.90134887695312},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97355825132709},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98849033221872},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99398392565706},\"oil\":{\"type\":\"stock_oil\",\"health\":99.95535420160636}}', 138.96),
(609, 'ESXAJ783', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99346369524074},\"engine\":{\"type\":\"stock_engine\",\"health\":99.89262084960937},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99454214461646},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97153335915495},\"oil\":{\"type\":\"stock_oil\",\"health\":99.95141073043843},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98750885160193}}', 153.311),
(610, 'ESXUU058', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.80640519711668},\"engine\":{\"type\":\"stock_engine\",\"health\":86.05377197265625},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.83931417274579},\"tires\":{\"type\":\"stock_tires\",\"health\":99.27786550348975},\"oil\":{\"type\":\"stock_oil\",\"health\":98.5225692425014},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.63641483050161}}', 4693.86),
(611, 'ESX8N857', '{\"transmition\":{\"health\":99.98070537186658,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.9839583909098,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.85381528056857,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.92466830444802,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.6765380859375,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.9635860412851,\"type\":\"stock_brakes\"}}', 457.345),
(612, 'BCSO5', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99983032661383},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99949294675152},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99982978024991},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99982516621412},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99971923828125},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99581287003244}}', 0.0623781),
(613, 'ESX4I021', '{\"transmition\":{\"health\":99.99654039223057,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99708768679541,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99323332081957,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.9752134882407,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.94537353515625,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.98199003818759,\"type\":\"stock_tires\"}}', 78.3114),
(614, 'ESXQL317', '{\"transmition\":{\"health\":99.3888427060924,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.49060808901972,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":98.8381796455964,\"type\":\"stock_brakes\"},\"oil\":{\"health\":95.42004927156565,\"type\":\"stock_oil\"},\"engine\":{\"health\":82.43008422851563,\"type\":\"stock_engine\"},\"tires\":{\"health\":97.45446119110045,\"type\":\"stock_tires\"}}', 14608.3),
(615, 'ESX5O805', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.88867201001676},\"engine\":{\"type\":\"stock_engine\",\"health\":98.16569213867187},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.90708390262836},\"tires\":{\"type\":\"stock_tires\",\"health\":99.52058831345035},\"oil\":{\"type\":\"stock_oil\",\"health\":99.17069386159976},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.78753452128604}}', 2637.16),
(616, 'WBKL9585', '{\"transmition\":{\"health\":99.97172178638782,\"type\":\"stock_transmition\"},\"engine\":{\"health\":97.8007080078125,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.94535678956409,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.86542386104326,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.9762962455394,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.79340102534549,\"type\":\"stock_oil\"}}', 1981.34),
(617, 'ESXRO309', '{\"oil\":{\"type\":\"stock_oil\",\"health\":96.56501028759424},\"engine\":{\"type\":\"stock_engine\",\"health\":92.41320190429687},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.63126541252757},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.16962988946533},\"tires\":{\"type\":\"stock_tires\",\"health\":98.45325875618333},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.55464495367127}}', 11093),
(618, 'ESX2M828', '{\"brakes\":{\"health\":99.1518093933874,\"type\":\"stock_brakes\"},\"tires\":{\"health\":98.41896542943066,\"type\":\"stock_tires\"},\"engine\":{\"health\":92.248681640625,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.54512170416315,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.62337083763255,\"type\":\"stock_suspension\"},\"oil\":{\"health\":96.49194384836417,\"type\":\"stock_oil\"}}', 11116.1),
(619, 'ESX6W897', '{\"engine\":{\"health\":92.0393798828125,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.54425936908322,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.14881477445802,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.62244674290221,\"type\":\"stock_suspension\"},\"tires\":{\"health\":98.38967937624919,\"type\":\"stock_tires\"},\"oil\":{\"health\":96.49361342891963,\"type\":\"stock_oil\"}}', 11133.6),
(620, 'ESXOX437', '{\"brakes\":{\"health\":99.1527534590835,\"type\":\"stock_brakes\"},\"tires\":{\"health\":98.41121640109943,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.54592631406105,\"type\":\"stock_transmition\"},\"engine\":{\"health\":92.25010375976562,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.62395275601581,\"type\":\"stock_suspension\"},\"oil\":{\"health\":96.50148658125294,\"type\":\"stock_oil\"}}', 11104.2),
(621, 'ESXJY617', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.69282677075269},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.63238846508178},\"tires\":{\"type\":\"stock_tires\",\"health\":98.37205462420882},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.29605821267373},\"oil\":{\"type\":\"stock_oil\",\"health\":97.27579271399688},\"engine\":{\"type\":\"stock_engine\",\"health\":92.6388671875}}', 8701.21),
(622, 'ESXVD183', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999349563503},\"engine\":{\"type\":\"stock_engine\",\"health\":null},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99998211299634},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99998569039707},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9999920502206},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99993560678682}}', 0.255645),
(623, 'ESXAT964', '{\"tires\":{\"health\":99.745234247697,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.87226168244834,\"type\":\"stock_brakes\"},\"engine\":{\"health\":86.014794921875,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.48156204055072,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.94356438580344,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.93201757329308,\"type\":\"stock_transmition\"}}', 1339.46),
(624, 'AMBULANC', '{\"oil\":{\"health\":93.00810921961433,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.07830934640146,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.99334106445312,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.23392473004141,\"type\":\"stock_suspension\"},\"tires\":{\"health\":96.42910853801297,\"type\":\"stock_tires\"},\"brakes\":{\"health\":98.26198957122932,\"type\":\"stock_brakes\"}}', 22520),
(625, 'ESXED777', '{\"oil\":{\"health\":94.90961354558309,\"type\":\"stock_oil\"},\"brakes\":{\"health\":98.73139214471013,\"type\":\"stock_brakes\"},\"tires\":{\"health\":97.37138986297789,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.44120563271493,\"type\":\"stock_suspension\"},\"engine\":{\"health\":71.54351806640625,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.32793473089135,\"type\":\"stock_transmition\"}}', 16151.5),
(626, 'LLMF4509', '{\"transmition\":{\"health\":99.12885987395012,\"type\":\"stock_transmition\"},\"oil\":{\"health\":93.42731524733246,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.27503812241447,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":98.351356061719,\"type\":\"stock_brakes\"},\"engine\":{\"health\":85.55189208984375,\"type\":\"stock_engine\"},\"tires\":{\"health\":96.51205018796854,\"type\":\"stock_tires\"}}', 21284),
(627, 'ESXTY014', '{\"oil\":{\"health\":95.0901308098842,\"type\":\"stock_oil\"},\"brakes\":{\"health\":98.80787585682028,\"type\":\"stock_brakes\"},\"tires\":{\"health\":97.7430074478835,\"type\":\"stock_tires\"},\"engine\":{\"health\":85.12781372070313,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.47124774023448,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.3617664524237,\"type\":\"stock_transmition\"}}', 15632.3),
(628, 'ESX5H819', '{\"oil\":{\"health\":99.96223912081669,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.98872702387902,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.96403896564817,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.91712036132813,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99525016275489,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99442334730638,\"type\":\"stock_transmition\"}}', 119.234),
(629, 'ESXQY962', '{\"oil\":{\"health\":99.98936564221899,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.9964928362632,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.98693410648117,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.97671508789063,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9985544026026,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99832395025389,\"type\":\"stock_transmition\"}}', 32.9663),
(630, 'ESX1V630', '{\"oil\":{\"health\":99.680857997851,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.91949247265483,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.82660648314233,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.29395751953125,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.96465074502801,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.95755623459154,\"type\":\"stock_transmition\"}}', 1014.14),
(631, 'ESXIX058', '{\"transmition\":{\"health\":99.95983610440398,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.92379940412548,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.69810594848166,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.96654687575456,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.83558787533628,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.18234252929688,\"type\":\"stock_engine\"}}', 961.185),
(632, 'ESX6F030', '{\"transmition\":{\"health\":99.91119518027563,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.83370391248117,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.31936543232472,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.92636463052641,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.67795696949888,\"type\":\"stock_tires\"},\"engine\":{\"health\":98.49283447265626,\"type\":\"stock_engine\"}}', 2178.8),
(633, 'ESXVG765', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99167979807184},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99003465155842},\"tires\":{\"type\":\"stock_tires\",\"health\":99.95671524644493},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9809619216636},\"oil\":{\"type\":\"stock_oil\",\"health\":99.92588338447398},\"engine\":{\"type\":\"stock_engine\",\"health\":99.83619995117188}}', 236.59),
(634, 'ESX1O376', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95309372283417},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94362336249195},\"tires\":{\"type\":\"stock_tires\",\"health\":99.77556290010554},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.89337446573357},\"oil\":{\"type\":\"stock_oil\",\"health\":99.57423475669546},\"engine\":{\"type\":\"stock_engine\",\"health\":99.0579345703125}}', 1366.55),
(635, 'HKST1379', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.60835901609387},\"tires\":{\"type\":\"stock_tires\",\"health\":98.39774497594827},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.67380372797085},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.25701214666766},\"oil\":{\"type\":\"stock_oil\",\"health\":97.05591252416594},\"engine\":{\"type\":\"stock_engine\",\"health\":92.30331420898438}}', 9483.47),
(636, 'ESXKZ359', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":100.0},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0}}', 0),
(637, 'ESX5Z225', '{\"brakes\":{\"health\":99.71310166186771,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.38832613605351,\"type\":\"stock_tires\"},\"oil\":{\"health\":98.85900180123712,\"type\":\"stock_oil\"},\"engine\":{\"health\":97.13361206054688,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.87392194797258,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.8485508874309,\"type\":\"stock_transmition\"}}', 3622.63),
(638, 'ESXKF713', '{\"brakes\":{\"health\":99.82671740902951,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.62747002991925,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.31268372017296,\"type\":\"stock_oil\"},\"engine\":{\"health\":98.3299560546875,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.92390345084427,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.90862371292856,\"type\":\"stock_transmition\"}}', 2183.3),
(639, 'ESX6E794', '{\"brakes\":{\"health\":99.94727282265743,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.54347534179688,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.7934679617216,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.97692026599178,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.88224733626211,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.97233359246916,\"type\":\"stock_transmition\"}}', 653.114),
(640, 'ESX7A770', '{\"brakes\":{\"health\":99.91021623578006,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.79082212611763,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.6534576221619,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.15953369140625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9608482041757,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.95316164216095,\"type\":\"stock_transmition\"}}', 1095.95),
(641, 'ESXSR621', '{\"brakes\":{\"health\":99.86226745014045,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.67642991835662,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.46997742532749,\"type\":\"stock_oil\"},\"engine\":{\"health\":98.82861938476563,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9399851728545,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.92823185852763,\"type\":\"stock_transmition\"}}', 1684.02),
(642, 'ESXJM474', '{\"brakes\":{\"health\":99.445882782957,\"type\":\"stock_brakes\"},\"tires\":{\"health\":98.90995267334415,\"type\":\"stock_tires\"},\"oil\":{\"health\":97.74210782436691,\"type\":\"stock_oil\"},\"engine\":{\"health\":94.19415893554688,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.75492897929688,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.70462457788939,\"type\":\"stock_transmition\"}}', 7180.45),
(643, 'ESXKM866', '{\"brakes\":{\"health\":99.91441995242825,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.78032957571459,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.6817115081288,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.2087158203125,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.96302845520772,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.95599106998417,\"type\":\"stock_transmition\"}}', 1003.4),
(644, 'ESXAR546', '{\"oil\":{\"health\":96.68604990362218,\"type\":\"stock_oil\"},\"tires\":{\"health\":98.50556722538087,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.57025923097709,\"type\":\"stock_transmition\"},\"engine\":{\"health\":92.6586181640625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.64417800381193,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.19864159364065,\"type\":\"stock_brakes\"}}', 10364.8),
(645, 'ESXHP755', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":100},\"tires\":{\"type\":\"stock_tires\",\"health\":100},\"oil\":{\"type\":\"stock_oil\",\"health\":100},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100}}', 0),
(646, 'ESX4U419', '{\"brakes\":{\"health\":99.53684307913015,\"type\":\"stock_brakes\"},\"engine\":{\"health\":95.7831298828125,\"type\":\"stock_engine\"},\"oil\":{\"health\":98.11613697458744,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.79525603505896,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.08317358954506,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.753290764517,\"type\":\"stock_transmition\"}}', 5960.97),
(647, 'OKUP5570', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97873721837112},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98893143488898},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9497036112005},\"oil\":{\"type\":\"stock_oil\",\"health\":99.91838080917451},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9907409672684},\"engine\":{\"type\":\"stock_engine\",\"health\":99.82007446289063}}', 725.553),
(648, 'OSIF0253', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99992986525374},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99997651198176},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99941904268364},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99997688493279},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99997656187698},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99995727539063}}', 0.0130172),
(649, 'ESXMK030', '{\"oil\":{\"health\":98.98719658725524,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.73670330072136,\"type\":\"stock_brakes\"},\"engine\":{\"health\":97.7618896484375,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.38074624117614,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.88528452295462,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.86282626410494,\"type\":\"stock_transmition\"}}', 3201.77),
(650, 'TDFJ1618', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9999996420823},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999980115683},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99999955260287},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99999838937035},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999983731014},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99998779296875}}', 0.00948736),
(651, 'KTTM1659', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.19582847664864},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.0422126277246},\"tires\":{\"type\":\"stock_tires\",\"health\":96.32538736111947},\"oil\":{\"type\":\"stock_oil\",\"health\":92.72284780409822},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.20421120249321},\"engine\":{\"type\":\"stock_engine\",\"health\":80.68507080078125}}', 23108.2),
(652, 'ESX9P587', '{\"brakes\":{\"health\":99.82482464374955,\"type\":\"stock_brakes\"},\"engine\":{\"health\":98.038330078125,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.31901867972204,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.92347174377794,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.60005537726215,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.90835801810678,\"type\":\"stock_transmition\"}}', 2159.09),
(653, 'ESX5L826', '{\"oil\":{\"type\":\"stock_oil\",\"health\":96.72891619006338},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.19750142608344},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.57216533050634},\"tires\":{\"type\":\"stock_tires\",\"health\":98.42319462629169},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.6450449418039},\"engine\":{\"type\":\"stock_engine\",\"health\":92.75731201171875}}', 10438.1),
(654, 'ESXHN910', '{\"oil\":{\"health\":97.85836223321718,\"type\":\"stock_oil\"},\"tires\":{\"health\":98.88019318233681,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.46469702853658,\"type\":\"stock_brakes\"},\"engine\":{\"health\":84.46807861328125,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.76439260618329,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.716748381187,\"type\":\"stock_transmition\"}}', 6788.45),
(655, 'ESXPS023', '{\"transmition\":{\"health\":99.74031957283383,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.50545334116448,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.78342481869142,\"type\":\"stock_suspension\"},\"oil\":{\"health\":98.05931987956792,\"type\":\"stock_oil\"},\"engine\":{\"health\":95.70989990234375,\"type\":\"stock_engine\"},\"tires\":{\"health\":98.90153320883934,\"type\":\"stock_tires\"}}', 6225.37),
(656, 'ESXLN548', '{\"brakes\":{\"health\":99.79758444822007,\"type\":\"stock_brakes\"},\"engine\":{\"health\":97.41448974609375,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.17415505523153,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.91044675606656,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.60358515847874,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.8920455949499,\"type\":\"stock_transmition\"}}', 2644.57),
(657, 'ESX5J299', '{\"oil\":{\"health\":98.33878400854319,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.18112242005619,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.7820746607745,\"type\":\"stock_transmition\"},\"engine\":{\"health\":92.94004516601562,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.81907171092974,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.59040451334903,\"type\":\"stock_brakes\"}}', 5258.95),
(658, 'ESX1C403', '{\"oil\":{\"health\":95.2614132601992,\"type\":\"stock_oil\"},\"tires\":{\"health\":97.39390491721544,\"type\":\"stock_tires\"},\"brakes\":{\"health\":98.80106158235864,\"type\":\"stock_brakes\"},\"engine\":{\"health\":93.41731567382813,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.47397852992026,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.36866575419833,\"type\":\"stock_transmition\"}}', 15009.5),
(659, 'CCTW8540', '{\"brakes\":{\"health\":99.80330284679364,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.56808640636644,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.22517486312548,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.79163208007813,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9137758121083,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.89656042031148,\"type\":\"stock_transmition\"}}', 2451.3),
(660, 'TMIV2226', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.12022548601387},\"tires\":{\"type\":\"stock_tires\",\"health\":96.16303628632905},\"engine\":{\"type\":\"stock_engine\",\"health\":71.10597534179688},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.00233951014964},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.17100723069031},\"oil\":{\"type\":\"stock_oil\",\"health\":92.42286382575448}}', 24630.2),
(661, 'ESXBN188', '{\"brakes\":{\"health\":99.99702819672756,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.98518872204186,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99320647119086,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.9853759765625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99883906737019,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99869712442093,\"type\":\"stock_transmition\"}}', 20.3503),
(662, 'ESX4L499', '{\"oil\":{\"health\":98.839950309773,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.33218461326986,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.70311533297138,\"type\":\"stock_brakes\"},\"engine\":{\"health\":92.145166015625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.87012980680248,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.84437260886796,\"type\":\"stock_transmition\"}}', 3647.57),
(663, 'EPFG7221', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.79734512394762},\"engine\":{\"type\":\"stock_engine\",\"health\":99.55272827148437},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.94523658582223},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97189230893558},\"tires\":{\"type\":\"stock_tires\",\"health\":99.85770959223068},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97637104515005}}', 464.133),
(664, 'ESX3O143', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.91219745326808},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.8000602809052},\"oil\":{\"type\":\"stock_oil\",\"health\":99.20696359555447},\"tires\":{\"type\":\"stock_tires\",\"health\":99.57013788732805},\"engine\":{\"type\":\"stock_engine\",\"health\":98.24583129882812},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.8945674751845}}', 2516.33),
(665, 'ESXKU705', '{\"oil\":{\"health\":99.98005925375284,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.96922638350188,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.9966318891836,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.97578125,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99705889540869,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99271390863622,\"type\":\"stock_brakes\"}}', 59.1424),
(666, 'ESXTM970', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.74680573669449},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.42329450401636},\"oil\":{\"type\":\"stock_oil\",\"health\":97.71475560629108},\"tires\":{\"type\":\"stock_tires\",\"health\":98.75641815485547},\"engine\":{\"type\":\"stock_engine\",\"health\":87.15009155273438},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.6960064883802}}', 7244.36),
(667, 'ESX5M365', '{\"oil\":{\"health\":99.25694856172477,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.56355317254294,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.90000330525756,\"type\":\"stock_transmition\"},\"engine\":{\"health\":95.16547241210938,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.91649457831319,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.80885231794035,\"type\":\"stock_brakes\"}}', 2349.27),
(668, 'CMHC4991', '{\"oil\":{\"type\":\"stock_oil\",\"health\":95.7643202070064},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.54056136009882},\"engine\":{\"type\":\"stock_engine\",\"health\":90.6218017578125},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.44618642140527},\"tires\":{\"type\":\"stock_tires\",\"health\":97.96332473915578},\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.96143385959316}}', 14462),
(669, 'ESX4G891', '{\"oil\":{\"health\":96.88441874746873,\"type\":\"stock_oil\"},\"tires\":{\"health\":98.4886379732848,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.23457451714552,\"type\":\"stock_brakes\"},\"engine\":{\"health\":77.67476196289063,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.66156946797529,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.59216221430394,\"type\":\"stock_transmition\"}}', 9851.8),
(670, 'ESX8H108', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99033913844809},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97772009058045},\"oil\":{\"type\":\"stock_oil\",\"health\":99.91590012819703},\"tires\":{\"type\":\"stock_tires\",\"health\":99.94489661620644},\"engine\":{\"type\":\"stock_engine\",\"health\":96.10933837890625},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98847728421582}}', 265.164),
(671, 'ESXNU483', '{\"transmition\":{\"health\":99.99914359458015,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99925958552693,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99310323172287,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.98838500976562,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99463599362855,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99819632398934,\"type\":\"stock_brakes\"}}', 16.6437),
(672, 'ESXUT017', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99961505224526},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99901897102269},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99769813629244},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99521051598717},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9950439453125},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99956677049886}}', 6.87316),
(673, 'ESXGL788', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92111236336914},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.82041837893049},\"oil\":{\"type\":\"stock_oil\",\"health\":99.28683662777509},\"tires\":{\"type\":\"stock_tires\",\"health\":99.61538242961596},\"engine\":{\"type\":\"stock_engine\",\"health\":98.29629516601563},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.90525644980731}}', 2255.71),
(674, 'ESXXB556', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.52278963003934},\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.90952269290468},\"oil\":{\"type\":\"stock_oil\",\"health\":95.73253038568633},\"tires\":{\"type\":\"stock_tires\",\"health\":97.55808089106454},\"engine\":{\"type\":\"stock_engine\",\"health\":89.96649780273438},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.42802468482066}}', 13536),
(675, 'GPBV9439', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.71662430976368},\"oil\":{\"type\":\"stock_oil\",\"health\":97.48832639731993},\"tires\":{\"type\":\"stock_tires\",\"health\":98.49451212886589},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.66090491515989},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.3504627498661},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99994506835938}}', 7783.11),
(676, 'ESXKW216', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.84514211541287},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.64885774554792},\"oil\":{\"type\":\"stock_oil\",\"health\":98.58452466164388},\"tires\":{\"type\":\"stock_tires\",\"health\":99.28336367860942},\"engine\":{\"type\":\"stock_engine\",\"health\":94.574560546875},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.8136333933826}}', 4497.62),
(677, 'ESXAX494', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.8591839588404},\"tires\":{\"type\":\"stock_tires\",\"health\":99.36827927973137},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.68141453930639},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.83033321917776},\"engine\":{\"type\":\"stock_engine\",\"health\":96.72029418945313},\"oil\":{\"type\":\"stock_oil\",\"health\":98.70481060661797}}', 4172.37),
(678, 'ESXXR236', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.74284649750457},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.41386357706962},\"oil\":{\"type\":\"stock_oil\",\"health\":97.68366589650116},\"tires\":{\"type\":\"stock_tires\",\"health\":98.72548853934572},\"engine\":{\"type\":\"stock_engine\",\"health\":93.74876708984375},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.69136758512799}}', 7384.12),
(679, 'CIVA6294', '{\"engine\":{\"type\":\"stock_engine\",\"health\":29.74332885742187},\"tires\":{\"type\":\"stock_tires\",\"health\":99.2920633395295},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.80413375331098},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.76229885187006},\"oil\":{\"type\":\"stock_oil\",\"health\":98.1294068696296},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.5630069051197}}', 2335.68),
(680, 'JSVE0949', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.40382709614878},\"tires\":{\"type\":\"stock_tires\",\"health\":98.62131325185824},\"engine\":{\"type\":\"stock_engine\",\"health\":85.0211181640625},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.68866641921999},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.739852455355},\"oil\":{\"type\":\"stock_oil\",\"health\":97.69283274636843}}', 7425.69),
(681, 'ESXGN898', '{\"tires\":{\"health\":99.6057675887769,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.89943220732229,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.91637496381145,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.8101188147961,\"type\":\"stock_brakes\"},\"engine\":{\"health\":98.31530151367187,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.2385558296153,\"type\":\"stock_oil\"}}', 2436.91),
(682, 'ESXLX086', '{\"tires\":{\"health\":98.92527888326308,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.72686769859489,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.77285040723347,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.48408897279833,\"type\":\"stock_brakes\"},\"engine\":{\"health\":93.5780517578125,\"type\":\"stock_engine\"},\"oil\":{\"health\":97.93326566665334,\"type\":\"stock_oil\"}}', 6557.69),
(683, 'ESXSX135', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.8992958209811},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9792474453998},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.95277549344826},\"engine\":{\"type\":\"stock_engine\",\"health\":99.58463745117187},\"oil\":{\"type\":\"stock_oil\",\"health\":99.81219968180894},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97507156838612}}', 584.28),
(684, 'ESX7T803', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.9952006451783},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99971313476563},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99942407742124},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99980802580709},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9998272232263},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99980802580709}}', 0),
(685, 'ESXWK974', '{\"tires\":{\"type\":\"stock_tires\",\"health\":100.0},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100.0}}', 0.178443),
(686, 'ESX4U723', '{\"tires\":{\"type\":\"stock_tires\",\"health\":100.0},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100.0}}', 0.685232),
(687, 'ESX3W636', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.5377013790521},\"engine\":{\"type\":\"stock_engine\",\"health\":66.74981079101562},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.80154804197112},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.89646996862686},\"oil\":{\"type\":\"stock_oil\",\"health\":99.23399415522489},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.91346059530737}}', 2560.88),
(688, 'ESXAY011', '{\"transmition\":{\"health\":99.99992263046485,\"type\":\"stock_transmition\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99993036741835,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99806576162195,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99976789139457,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99992263046485,\"type\":\"stock_suspension\"}}', 0.582931),
(689, 'ESXAW645', '{\"transmition\":{\"health\":100.0,\"type\":\"stock_transmition\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"oil\":{\"health\":100.0,\"type\":\"stock_oil\"},\"tires\":{\"health\":100.0,\"type\":\"stock_tires\"},\"brakes\":{\"health\":100.0,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":100.0,\"type\":\"stock_suspension\"}}', 3.59478),
(690, 'ESXBS074', '{\"transmition\":{\"health\":100.0,\"type\":\"stock_transmition\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"oil\":{\"health\":100.0,\"type\":\"stock_oil\"},\"tires\":{\"health\":100.0,\"type\":\"stock_tires\"},\"brakes\":{\"health\":100.0,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":100.0,\"type\":\"stock_suspension\"}}', 3155.58),
(691, 'ESXKW285', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.22549819728322},\"engine\":{\"type\":\"stock_engine\",\"health\":82.25352783203125},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.66788005740814},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.82676270507965},\"oil\":{\"type\":\"stock_oil\",\"health\":98.71853478155696},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.8551857266204}}', 4313.46),
(692, 'ESXTL862', '{\"transmition\":{\"health\":99.4345782189915,\"type\":\"stock_transmition\"},\"oil\":{\"health\":95.71388154057523,\"type\":\"stock_oil\"},\"engine\":{\"health\":68.8626220703125,\"type\":\"stock_engine\"},\"brakes\":{\"health\":98.93327446639384,\"type\":\"stock_brakes\"},\"tires\":{\"health\":97.79948102837288,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.52996303860056,\"type\":\"stock_suspension\"}}', 13405.1),
(693, 'ESXTK368', '{\"suspension\":{\"health\":99.94176233397184,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.93022932624412,\"type\":\"stock_transmition\"},\"engine\":{\"health\":96.36620483398437,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.86680582973546,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.4804992876001,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.69880074804175,\"type\":\"stock_tires\"}}', 1726.88);
INSERT INTO `vehicle_parts` (`id`, `plate`, `parts`, `mileage`) VALUES
(694, 'ESX4E007', '{\"suspension\":{\"health\":99.91159172372977,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.89439027459646,\"type\":\"stock_transmition\"},\"engine\":{\"health\":95.70567016601562,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.79670038806904,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.22377386145966,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.51208818771869,\"type\":\"stock_tires\"}}', 2604.53),
(695, 'ESXSL278', '{\"suspension\":{\"health\":99.97607769799342,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.97168161675661,\"type\":\"stock_transmition\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.94405898643385,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.80042863809314,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.84210008369876,\"type\":\"stock_tires\"}}', 658.287),
(696, 'ESXNE992', '{\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.9999814081021,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99997934233568,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99993802700704,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99948355839213,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99997934233568,\"type\":\"stock_suspension\"}}', 0.261318),
(697, 'ESX3J929', '{\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"oil\":{\"health\":100.0,\"type\":\"stock_oil\"},\"transmition\":{\"health\":100.0,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":100.0,\"type\":\"stock_brakes\"},\"tires\":{\"health\":100.0,\"type\":\"stock_tires\"},\"suspension\":{\"health\":100.0,\"type\":\"stock_suspension\"}}', 1.00584),
(698, 'ESXSY158', '{\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"oil\":{\"health\":100.0,\"type\":\"stock_oil\"},\"transmition\":{\"health\":100.0,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":100.0,\"type\":\"stock_brakes\"},\"tires\":{\"health\":100.0,\"type\":\"stock_tires\"},\"suspension\":{\"health\":100.0,\"type\":\"stock_suspension\"}}', 826.638),
(699, 'ESXJZ080', '{\"engine\":{\"type\":\"stock_engine\",\"health\":76.38713989257812},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.92630863646144},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.85436049343316},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.93773811889298},\"tires\":{\"type\":\"stock_tires\",\"health\":99.58782990079783},\"oil\":{\"type\":\"stock_oil\",\"health\":99.4810702685204}}', 1617.25),
(700, 'ESXZS904', '{\"engine\":{\"type\":\"stock_engine\",\"health\":77.89954223632813},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.91047829749307},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.82396460001607},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9244979501502},\"tires\":{\"type\":\"stock_tires\",\"health\":99.51616647604546},\"oil\":{\"type\":\"stock_oil\",\"health\":99.36425222252542}}', 2116.3),
(701, 'ESX1Q997', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99914203954931},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99986825190088},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99813842773438},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9998499954278},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99853422689435},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99967047900599}}', 963.248),
(702, 'ESX9I502', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99936256502733},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99993561262905},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99924926757812},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99992130432435},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99982293472982},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99985834778384}}', 314.018),
(703, 'ESX0Y025', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99926612828038},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99988461108086},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99871826171875},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99986905498973},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99867283065047},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99970983517085}}', 4.1401),
(704, 'ESXJM120', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.90009854177711},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97334144408318},\"engine\":{\"type\":\"stock_engine\",\"health\":99.77621459960938},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98625117493522},\"tires\":{\"type\":\"stock_tires\",\"health\":99.93284200968134},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98846146573482}}', 334.672),
(705, 'ESXGW585', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99420134675572},\"oil\":{\"type\":\"stock_oil\",\"health\":99.97431654554437},\"tires\":{\"type\":\"stock_tires\",\"health\":99.90562687228746},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99369604634734},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98442312173668},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99533081054688}}', 75.1694),
(706, 'ESX3W114', '{\"oil\":{\"health\":99.6248557416461,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.94589714539933,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.89210005106684,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.17417602539062,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.95414087492502,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.67892529188272,\"type\":\"stock_tires\"}}', 2063.54),
(707, 'ESXYB059', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99994206560952},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9998068853651},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99839071137636},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99993562845504},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99990844726563},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99993562845504}}', 0),
(708, 'ESX1P753', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99999488551396},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9999829517132},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99985793094337},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999431723774},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999431723774}}', 0.501737),
(709, 'ESXEV131', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.2676945110774},\"engine\":{\"type\":\"stock_engine\",\"health\":98.38646240234375},\"tires\":{\"type\":\"stock_tires\",\"health\":99.50606192657594},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.91535867854559},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.80439855115748},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.89915797978934}}', 2280.43),
(710, 'ESXIV661', '{\"oil\":{\"health\":99.25563657881468,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.89493815511294,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.79311575880183,\"type\":\"stock_brakes\"},\"engine\":{\"health\":98.35989990234376,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.91134744200109,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.42666589975194,\"type\":\"stock_tires\"}}', 2617.63),
(711, 'BCSO', '{\"oil\":{\"health\":99.95681342364799,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99306998440092,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.90584106445313,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99400305415628,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.94349996316383,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.98536821358822,\"type\":\"stock_brakes\"}}', 135.198),
(712, 'ESXNJ084', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.96083520487844},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98992197063711},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97696915682886},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99559761542703},\"engine\":{\"type\":\"stock_engine\",\"health\":99.91611938476562},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99472841421701}}', 120.464),
(713, 'BDAJ6457', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.9803691769733},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99493922558745},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99792732465761},\"engine\":{\"type\":\"stock_engine\",\"health\":99.967529296875},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98511551152638},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9976058658757}}', 46.6167),
(714, 'BRINKS', '{\"oil\":{\"health\":99.75883004515981,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.96587596104534,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.93270426976638,\"type\":\"stock_brakes\"},\"engine\":{\"health\":97.82858276367188,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9711905650802,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.8118888560014,\"type\":\"stock_tires\"}}', 1614.74),
(715, 'KAKH6450', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99985112204195},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99998164558227},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99986836037361},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99995670198966},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99997837745925},\"engine\":{\"type\":\"stock_engine\",\"health\":64.12105102539063}}', 0),
(716, 'ESX6R664', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99992139730208},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99955236622017},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99896669172616},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99991209134274},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99979769335963},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99905395507813}}', 49.242),
(717, 'ESX7Z337', '{\"oil\":{\"type\":\"stock_oil\",\"health\":97.52512530145288},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.38625535315738},\"tires\":{\"type\":\"stock_tires\",\"health\":98.74883153190693},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.72930730229345},\"engine\":{\"type\":\"stock_engine\",\"health\":94.52302856445313},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.67421467832804}}', 7750.58),
(718, 'ESXFC582', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99788306176902},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99797831180095},\"tires\":{\"type\":\"stock_tires\",\"health\":99.94736441916642},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9978801866137},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9936595358662},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99994506835938}}', 7.7417),
(719, 'ESX5D827', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98575935796004},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9575943663673},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99286044846919},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99394802612868},\"oil\":{\"type\":\"stock_oil\",\"health\":99.95050632830926},\"engine\":{\"type\":\"stock_engine\",\"health\":99.891162109375}}', 157.543),
(720, 'ESXLT344', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.70934052295813},\"tires\":{\"type\":\"stock_tires\",\"health\":99.31652466767017},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.84856646525711},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.87336057543706},\"oil\":{\"type\":\"stock_oil\",\"health\":98.88186305561504},\"engine\":{\"type\":\"stock_engine\",\"health\":96.4465087890625}}', 3597.65),
(721, 'ESXCR689', '{\"oil\":{\"health\":98.27699424673915,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.02932010154388,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.80788492155392,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.56144162534337,\"type\":\"stock_brakes\"},\"engine\":{\"health\":58.02476196289062,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.7696107935873,\"type\":\"stock_transmition\"}}', 5425.47),
(722, 'FXPK0997', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99999744547466},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999974196712},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99999929040964},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999943232769},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9999996846265},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 0.00189384),
(723, 'SPSG1004', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.9843138147275},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99754165551467},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97185130719976},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99382262656499},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99720897217547},\"engine\":{\"type\":\"stock_engine\",\"health\":99.96602172851563}}', 47.5101),
(724, 'HYMO8099', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.9971932607274},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99953686844123},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99433012651515},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99882304273445},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9994778580494},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99396362304688}}', 8.45801),
(725, 'ZRWX4154', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99291091805438},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99892463617351},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98824900574459},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99731802003177},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99877349408703},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98461303710937}}', 21.7723),
(726, 'ESX0A990', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.6797591060326},\"tires\":{\"type\":\"stock_tires\",\"health\":99.79515422530497},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.95630193333044},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96339568671324},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.91572457231892},\"engine\":{\"type\":\"stock_engine\",\"health\":96.67511596679688}}', 1075.87),
(727, 'PDLH1046', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99996766406172},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99996492480483},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99912501943705},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9998948427045},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99996490583539},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99994506835938}}', 0.0106727),
(728, 'ESX1Z796', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99969687695348},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99800392099961},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99668222591981},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99965432711993},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9992438102611},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99567260742188}}', 9.5317),
(729, 'ESX4G665', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999612866967},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99996167382976},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99998935384162},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999526837405},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999148307329},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 0.147006),
(730, 'CRPW3973', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99341568475866},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9991025476573},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99184475042698},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99782111925029},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99895991535765},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98562622070313}}', 20.3341),
(731, 'MVYW3326', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9985750191828},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99099380822668},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98347020469197},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9983843103176},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99641160946276},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98046264648437}}', 27.7817),
(732, 'JAET9028', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.996720171269},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98128224274474},\"tires\":{\"type\":\"stock_tires\",\"health\":99.95698111823624},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99633088950609},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99156192815329},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98176879882813}}', 57.2082),
(733, 'RMHH8162', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99726034939823},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98505328378889},\"tires\":{\"type\":\"stock_tires\",\"health\":99.96236461633505},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99695217580138},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99289047314315},\"engine\":{\"type\":\"stock_engine\",\"health\":99.97244262695313}}', 45.8594),
(734, 'ESX7E481', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99997804038846},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99952656809639},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99998050484665},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99998061631062},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99994225020221},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99989624023438}}', 0.123964),
(735, 'ESXTJ447', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99865032872987},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98964642404505},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99676333035068},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99842467757397},\"engine\":{\"type\":\"stock_engine\",\"health\":99.97794799804687},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98885154022607}}', 31.7934),
(736, 'ESXAD928', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97074120243627},\"oil\":{\"type\":\"stock_oil\",\"health\":99.73592884649898},\"engine\":{\"type\":\"stock_engine\",\"health\":99.11586303710938},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96487112254266},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.93335589492631},\"tires\":{\"type\":\"stock_tires\",\"health\":99.85627181026332}}', 843.731),
(737, 'ESXBI834', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.59283773467149},\"tires\":{\"type\":\"stock_tires\",\"health\":99.15194450444166},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.7844372564303},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.82072906936672},\"oil\":{\"type\":\"stock_oil\",\"health\":98.36883773849941},\"engine\":{\"type\":\"stock_engine\",\"health\":89.56566162109375}}', 5249.99),
(738, 'ESX0T181', '{\"oil\":{\"type\":\"stock_oil\",\"health\":98.24218464263876},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.80106128607588},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.76207929805534},\"engine\":{\"type\":\"stock_engine\",\"health\":56.08701171875},\"tires\":{\"type\":\"stock_tires\",\"health\":98.92960370246218},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.54351901510157}}', 5488.93),
(739, 'ESXFK207', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9999552035598},\"oil\":{\"type\":\"stock_oil\",\"health\":99.999743885345},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99988479271134},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99994987521763},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99945068359375},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99941358925743}}', 2585.2),
(740, 'ESX7B911', '{\"suspension\":{\"health\":99.99607974336255,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.97321796217703,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99536838877464,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99080010660409,\"type\":\"stock_brakes\"},\"engine\":{\"health\":94.942333984375,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.96766190821629,\"type\":\"stock_oil\"}}', 106.327),
(741, 'ESX1N430', '{\"suspension\":{\"health\":99.90995724103452,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.22785751507608,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.8951864396439,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.78304660810808,\"type\":\"stock_brakes\"},\"engine\":{\"health\":98.45385131835937,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.32074406062162,\"type\":\"stock_oil\"}}', 2205.66),
(742, 'ESX9M304', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.86109602742225},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.83226372868505},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.687084357719},\"engine\":{\"type\":\"stock_engine\",\"health\":92.42300415039063},\"tires\":{\"type\":\"stock_tires\",\"health\":99.41423459658798},\"oil\":{\"type\":\"stock_oil\",\"health\":98.70727832583323}}', 4072.92),
(743, 'ESX4J490', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.8140583237521},\"tires\":{\"type\":\"stock_tires\",\"health\":99.36340481626714},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.65379413903463},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.84612183402169},\"oil\":{\"type\":\"stock_oil\",\"health\":98.56293748470682},\"engine\":{\"type\":\"stock_engine\",\"health\":96.77970581054687}}', 4527.59),
(744, 'ESX8D738', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.93886561955688},\"oil\":{\"type\":\"stock_oil\",\"health\":99.57637898538819},\"tires\":{\"type\":\"stock_tires\",\"health\":99.63631432821556},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94817370218853},\"engine\":{\"type\":\"stock_engine\",\"health\":96.03101806640625},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.87803020403946}}', 1301.45),
(745, 'ESXFE028', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.60397853765204},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.10329402813638},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.52304564454626},\"engine\":{\"type\":\"stock_engine\",\"health\":91.8584228515625},\"tires\":{\"type\":\"stock_tires\",\"health\":98.2028693635222},\"oil\":{\"type\":\"stock_oil\",\"health\":96.36579851310276}}', 11678.6),
(746, 'ESX6K654', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99998129970814},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9998148671105},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99995885935789},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99997714408772},\"engine\":{\"type\":\"stock_engine\",\"health\":null},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99994857419736}}', 1548.44),
(747, 'ESXJI903', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9432364825716},\"oil\":{\"type\":\"stock_oil\",\"health\":99.58765762848754},\"tires\":{\"type\":\"stock_tires\",\"health\":99.7223781660402},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95235908877933},\"engine\":{\"type\":\"stock_engine\",\"health\":86.38641357421875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.88991864868605}}', 1278.5),
(748, 'ESXLU882', '{\"oil\":{\"health\":99.99972295108295,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99996579642998,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99993843357398,\"type\":\"stock_brakes\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9999720152609,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99992304196749,\"type\":\"stock_tires\"}}', 2103.41),
(749, 'ESX7I496', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99817453665682},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9913209383762},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99514904504732},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99800080469105},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98170166015625},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97175832949627}}', 34.3032),
(750, 'ESXVC171', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94001631167053},\"engine\":{\"type\":\"stock_engine\",\"health\":98.99609985351563},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.88667892056587},\"oil\":{\"type\":\"stock_oil\",\"health\":99.54623476717738},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95011176402729},\"tires\":{\"type\":\"stock_tires\",\"health\":99.76360126789767}}', 1419.64),
(751, 'ESXMU291', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97243584885676},\"oil\":{\"type\":\"stock_oil\",\"health\":99.74695861756341},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.93759498180666},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96680045018005},\"engine\":{\"type\":\"stock_engine\",\"health\":99.43975830078125},\"tires\":{\"type\":\"stock_tires\",\"health\":99.87514051392872}}', 798.996),
(752, 'ESXLK395', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.63666253156009},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.91049565454705},\"engine\":{\"type\":\"stock_engine\",\"health\":94.25350341796875},\"oil\":{\"type\":\"stock_oil\",\"health\":99.32627015903863},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.83034961865076},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92547484470018}}', 2243.09),
(753, 'ESX8C867', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.97696057904884},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9967892455125},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.993386432339},\"oil\":{\"type\":\"stock_oil\",\"health\":99.97899814615228},\"engine\":{\"type\":\"stock_engine\",\"health\":99.91649780273437},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99724662366417}}', 68.1673),
(754, 'ESXGW776', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.99137374058151},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99875175627968},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9974462930284},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99173043551567},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9818359375},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99893221449018}}', 26.8019),
(755, 'ESXDC310', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.99243795304723},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99905618245221},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99801426472318},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9940762600071},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98699340820312},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99918432144713}}', 19.4273),
(756, 'ESX7R419', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.95981061988725},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99346197097074},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98688761026344},\"oil\":{\"type\":\"stock_oil\",\"health\":99.95510558976544},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9013427734375},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99444707663008}}', 147.903),
(757, 'ESX7U873', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.81021993084691},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.95469082225273},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.91381045574431},\"oil\":{\"type\":\"stock_oil\",\"health\":99.66079380611009},\"engine\":{\"type\":\"stock_engine\",\"health\":89.04442749023437},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96222688118989}}', 1129.23),
(758, 'ESX7M876', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.74483104065846},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94425197552768},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.89281034341629},\"oil\":{\"type\":\"stock_oil\",\"health\":99.58950027697381},\"engine\":{\"type\":\"stock_engine\",\"health\":94.26924438476563},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95335112959337}}', 1340.54),
(759, 'ESX6F517', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.96808342622703},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99343730876044},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9872825130356},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9522700573586},\"engine\":{\"type\":\"stock_engine\",\"health\":91.94765014648438},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99449345826865}}', 157.742),
(760, 'ESXYD877', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.77770823769282},\"oil\":{\"type\":\"stock_oil\",\"health\":99.10640550732305},\"tires\":{\"type\":\"stock_tires\",\"health\":99.54215380495445},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.90203818705253},\"engine\":{\"type\":\"stock_engine\",\"health\":95.14303588867188},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.88215105468164}}', 2878.09),
(761, 'ESXYZ785', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.78388983286146},\"oil\":{\"type\":\"stock_oil\",\"health\":99.1598973097446},\"tires\":{\"type\":\"stock_tires\",\"health\":99.506580341499},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.90558897343243},\"engine\":{\"type\":\"stock_engine\",\"health\":86.84697265625},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.88694371994275}}', 2663.11),
(762, 'ESX7P689', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.86722904634827},\"tires\":{\"type\":\"stock_tires\",\"health\":99.71522489044817},\"engine\":{\"type\":\"stock_engine\",\"health\":98.83419189453125},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.92996577610181},\"oil\":{\"type\":\"stock_oil\",\"health\":99.47297889023202},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94168270307793}}', 1680.9),
(763, 'ESXEV585', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.62694360470484},\"tires\":{\"type\":\"stock_tires\",\"health\":99.24186400119223},\"engine\":{\"type\":\"stock_engine\",\"health\":96.5452392578125},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.80190144328359},\"oil\":{\"type\":\"stock_oil\",\"health\":98.49427564983454},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.83542254553426}}', 4784.79),
(764, 'ESX8W467', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.71438175014204},\"tires\":{\"type\":\"stock_tires\",\"health\":99.44402312333638},\"engine\":{\"type\":\"stock_engine\",\"health\":90.16326904296875},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.8475648906596},\"oil\":{\"type\":\"stock_oil\",\"health\":98.83268593261428},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.87357808432066}}', 3797.17),
(765, 'ESXLB232', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.43630819575965},\"tires\":{\"type\":\"stock_tires\",\"health\":98.83955898739839},\"engine\":{\"type\":\"stock_engine\",\"health\":88.42643432617187},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.70113831813497},\"oil\":{\"type\":\"stock_oil\",\"health\":97.73366503819196},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.75157668803736}}', 7208.73),
(766, 'ESXUK532', '{\"brakes\":{\"health\":99.99983543787772,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99994514595925,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99862864898138,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99994514595925,\"type\":\"stock_suspension\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.9999506313633,\"type\":\"stock_oil\"}}', 807.507),
(767, 'ESXWJ419', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.51683639797243},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.87985459680827},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94704763671183},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.93629439041388},\"engine\":{\"type\":\"stock_engine\",\"health\":97.66841430664063},\"tires\":{\"type\":\"stock_tires\",\"health\":99.75285970338122}}', 1555.52),
(768, 'ESX9F315', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.79520119938643},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.94910288626065},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97756446377545},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97300627073804},\"engine\":{\"type\":\"stock_engine\",\"health\":99.59063720703125},\"tires\":{\"type\":\"stock_tires\",\"health\":99.8955006722471}}', 651.827),
(769, 'ESXFC609', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.98683532776971},\"engine\":{\"type\":\"stock_engine\",\"health\":99.96378784179687},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99537196351908},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99766038631988},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99802262943494},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98354952033127}}', 51.3724),
(770, 'ESX5T999', '{\"oil\":{\"type\":\"stock_oil\",\"health\":97.31366086213},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.32645086790849},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.7037873918067},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.64404053278185},\"engine\":{\"type\":\"stock_engine\",\"health\":77.0990478515625},\"tires\":{\"type\":\"stock_tires\",\"health\":98.57683905500483}}', 8633.47),
(771, 'ESXNW996', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.66594146815936},\"engine\":{\"type\":\"stock_engine\",\"health\":97.655224609375},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.83255287559449},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.91088753354211},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9260224236888},\"oil\":{\"type\":\"stock_oil\",\"health\":99.32045713037776}}', 2135.69),
(772, 'ESXUV436', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.26795203962469},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92047222350449},\"engine\":{\"type\":\"stock_engine\",\"health\":96.6596435546875},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.90416424914565},\"tires\":{\"type\":\"stock_tires\",\"health\":99.64464152027984},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.82012537820468}}', 2347.36),
(773, 'ESX1N528', '{\"suspension\":{\"health\":99.923819614429,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.90875277128412,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.60405803058426,\"type\":\"stock_tires\"},\"engine\":{\"health\":95.01399536132813,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.8256994786073,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.3212305056247,\"type\":\"stock_oil\"}}', 2170.79),
(774, 'ESXJS096', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99873196422112},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99977168491076},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99727783203125},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.999745449054},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99691898792654},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99940950381654}}', 781.225),
(775, 'ESX3T754', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96779921933086},\"engine\":{\"type\":\"stock_engine\",\"health\":98.987548828125},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97306937015839},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.93818065345381},\"oil\":{\"type\":\"stock_oil\",\"health\":99.76232132462858},\"tires\":{\"type\":\"stock_tires\",\"health\":99.85440810556134}}', 761.368),
(776, 'ESXQG096', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.78589915609989},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9762687939317},\"engine\":{\"type\":\"stock_engine\",\"health\":99.4515380859375},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97150971347645},\"tires\":{\"type\":\"stock_tires\",\"health\":99.88322277887765},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.94593907143417}}', 691.411),
(777, 'ESX1U266', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.86931500546821},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9853375468391},\"engine\":{\"type\":\"stock_engine\",\"health\":99.71119384765625},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98243658914312},\"tires\":{\"type\":\"stock_tires\",\"health\":99.92389706028733},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.96645608822276}}', 417.978),
(778, 'ESXCT137', '{\"suspension\":{\"health\":99.97923632192968,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.9750658239826,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.89847915517929,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.58505859375,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.95272275839784,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.81240752288497,\"type\":\"stock_oil\"}}', 600.618),
(779, 'ESXZU621', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":100},\"tires\":{\"type\":\"stock_tires\",\"health\":100},\"oil\":{\"type\":\"stock_oil\",\"health\":100},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100}}', 0),
(780, 'ESX3L777', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":97.90790610144356},\"tires\":{\"type\":\"stock_tires\",\"health\":96.0162730031575},\"engine\":{\"type\":\"stock_engine\",\"health\":79.6520263671875},\"oil\":{\"type\":\"stock_oil\",\"health\":91.39708245687889},\"transmition\":{\"type\":\"stock_transmition\",\"health\":98.88066238441992},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.07246828566002}}', 27390.4),
(781, 'ESX4J656', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.76093185825698},\"oil\":{\"type\":\"stock_oil\",\"health\":98.23796261562699},\"tires\":{\"type\":\"stock_tires\",\"health\":98.91099510814878},\"engine\":{\"type\":\"stock_engine\",\"health\":95.80888671875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.54060825090433},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.79999438494359}}', 5607.49),
(782, 'ESXPQ502', '{\"tires\":{\"health\":99.99328459145392,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99972639692472,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.9997251517977,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99918367323103,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.9997033295901,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99954833984376,\"type\":\"stock_engine\"}}', 0.26025),
(783, 'ESXSQ508', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.84407219449223},\"tires\":{\"type\":\"stock_tires\",\"health\":99.65506203222106},\"engine\":{\"type\":\"stock_engine\",\"health\":84.94596557617187},\"oil\":{\"type\":\"stock_oil\",\"health\":99.38728277908628},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.91808020878523},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.93169105244225}}', 1944.22),
(784, 'ESX9X717', '{\"tires\":{\"health\":99.99989070496982,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99996025635265,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99995142443102,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99991256397586,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99960653789133,\"type\":\"stock_oil\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"}}', 274.402),
(785, 'ESX5S275', '{\"tires\":{\"health\":99.66185277007738,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.91110583703169,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.89228729177069,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.80106427403602,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.15784417024851,\"type\":\"stock_oil\"},\"engine\":{\"health\":52.48602294921875,\"type\":\"stock_engine\"}}', 1357.52),
(786, 'ESXVG251', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.90632789611097},\"tires\":{\"type\":\"stock_tires\",\"health\":99.77718487592091},\"engine\":{\"type\":\"stock_engine\",\"health\":76.4448486328125},\"oil\":{\"type\":\"stock_oil\",\"health\":99.64116423495392},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.95127680484772},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95923096872152}}', 1135.71),
(787, 'ESXBN650', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.92426089461388},\"tires\":{\"type\":\"stock_tires\",\"health\":99.83626103034965},\"engine\":{\"type\":\"stock_engine\",\"health\":96.7783935546875},\"oil\":{\"type\":\"stock_oil\",\"health\":99.7001255602452},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96008946708612},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9667549963825}}', 954.452),
(788, 'ESX2K351', '{\"tires\":{\"health\":99.99994803825828,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99998110482118,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99997690589257,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99995843060661,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99981293772979,\"type\":\"stock_oil\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"}}', 0.539566),
(789, 'ESX2V610', '{\"tires\":{\"health\":99.85368553188931,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.96704120884287,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.96027311585107,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.92548876129958,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.69622932178545,\"type\":\"stock_oil\"},\"engine\":{\"health\":98.13455200195313,\"type\":\"stock_engine\"}}', 956.267),
(790, 'ESX7D736', '{\"tires\":{\"health\":99.90784183519162,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.98936597266197,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.98763121592143,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.97434304225163,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.9201717274056,\"type\":\"stock_oil\"},\"engine\":{\"health\":98.65341186523438,\"type\":\"stock_engine\"}}', 243.812),
(791, 'ESX4X222', '{\"tires\":{\"health\":99.99999662497857,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99999877271947,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99999849999048,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99999729998285,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99998784992279,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.9999755859375,\"type\":\"stock_engine\"}}', 0.0467062),
(792, 'ESXCX951', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100.0},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100.0}}', 0),
(793, 'ESXXL596', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.87207790394541},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.84672818265858},\"oil\":{\"type\":\"stock_oil\",\"health\":98.85820640143902},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.70749270846739},\"engine\":{\"type\":\"stock_engine\",\"health\":85.96328125},\"tires\":{\"type\":\"stock_tires\",\"health\":99.3400884424649}}', 3642.97),
(794, 'ESXUS886', '{\"engine\":{\"health\":98.72290649414063,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.42294561794972,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.71070433355254,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.93697328436417,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.92412562169813,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.85717143869096,\"type\":\"stock_brakes\"}}', 1883.17),
(795, 'ESX7G154', '{\"brakes\":{\"health\":99.93093662396905,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.72893780549025,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.10068969726562,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.96975396320748,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.96373320366688,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.84667762919884,\"type\":\"stock_tires\"}}', 879.23),
(796, 'ESX0A305', '{\"suspension\":{\"health\":99.99922546398966,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99910556347017,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99810803383899,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99444694655273,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99264163925176,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.987890625,\"type\":\"stock_engine\"}}', 16.7478),
(797, 'ESX3Z447', '{\"engine\":{\"health\":96.79368896484375,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.83222793592002,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.62981793621809,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.34017319372905,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.91182755604479,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.92648592995198,\"type\":\"stock_suspension\"}}', 2147.88),
(798, 'ESXEM075', '{\"tires\":{\"type\":\"stock_tires\",\"health\":96.81399515912955},\"oil\":{\"type\":\"stock_oil\",\"health\":93.5803228567505},\"engine\":{\"type\":\"stock_engine\",\"health\":85.25836791992188},\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.41470886384424},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.30002301803778},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.15706751533443}}', 20603.9),
(799, 'ESX5M374', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.05768753251616},\"oil\":{\"type\":\"stock_oil\",\"health\":98.04900026709849},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.74475673430898},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.52115033522364},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.78822342102076},\"engine\":{\"type\":\"stock_engine\",\"health\":95.68056640625}}', 6115.38),
(800, 'ESXXW321', '{\"oil\":{\"health\":99.97188642406693,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.9384765625,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.96740189956891,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.9909481521524,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99624972974834,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99563890671863,\"type\":\"stock_transmition\"}}', 85.4579),
(801, 'ESXZT696', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.9903333167069},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98025687320961},\"engine\":{\"type\":\"stock_engine\",\"health\":99.97908325195313},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99839701318479},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99592206134627},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99819395157594}}', 29.1289),
(802, 'ESXVY427', '{\"oil\":{\"health\":99.8729753441263,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.72269897460937,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.95120080347027,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.97024337765574,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.98667282374473,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.98383257196096,\"type\":\"stock_transmition\"}}', 13271),
(803, 'ESXQR243', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99730380187894},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99552816548762},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99415893554688},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99959091146288},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99897966936089},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99953342952615}}', 8.29496),
(804, 'ESXPN861', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99695633158207},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99539216645897},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9933837890625},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99955436333365},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99889798737152},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99948911406408}}', 9.78157),
(805, 'ESX8I800', '{\"oil\":{\"type\":\"stock_oil\",\"health\":89.97128864733257},\"tires\":{\"type\":\"stock_tires\",\"health\":95.47430588747591},\"engine\":{\"type\":\"stock_engine\",\"health\":75.65054321289063},\"suspension\":{\"type\":\"stock_suspension\",\"health\":98.9230891761667},\"brakes\":{\"type\":\"stock_brakes\",\"health\":97.57455567171881},\"transmition\":{\"type\":\"stock_transmition\",\"health\":98.69939802527253}}', 32653.1);
INSERT INTO `vehicle_parts` (`id`, `plate`, `parts`, `mileage`) VALUES
(806, 'ESX2I770', '{\"engine\":{\"health\":90.67056884765626,\"type\":\"stock_engine\"},\"brakes\":{\"health\":98.96798168782186,\"type\":\"stock_brakes\"},\"tires\":{\"health\":97.9682747630463,\"type\":\"stock_tires\"},\"oil\":{\"health\":95.79570345726045,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.449925586465,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.5435929998626,\"type\":\"stock_suspension\"}}', 13713.1),
(807, 'ESXAU620', '{\"oil\":{\"health\":99.42678247031083,\"type\":\"stock_oil\"},\"engine\":{\"health\":82.7765625,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.3905027352368,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.8216786707714,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.92556039008645,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.91306108438849,\"type\":\"stock_transmition\"}}', 2609.23),
(808, 'ESX0Y778', '{\"tires\":{\"health\":99.99537354286113,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99937554621524,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99870606128205,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99596145577597,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99946333752378,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.99117431640625,\"type\":\"stock_engine\"}}', 12.4228),
(809, 'ESX7L822', '{\"tires\":{\"health\":99.98823447191433,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99799985969472,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99601652745588,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.98609818349543,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.9983054579329,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.24043579101563,\"type\":\"stock_engine\"}}', 43.5847),
(810, 'ESXAO854', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99703835245446},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99447167177776},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99358520507812},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99952800076768},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99880949992412},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99946536253964}}', 9.29076),
(811, 'ESX2L863', '{\"oil\":{\"type\":\"stock_oil\",\"health\":96.55496918281709},\"tires\":{\"type\":\"stock_tires\",\"health\":98.42609780399167},\"engine\":{\"type\":\"stock_engine\",\"health\":90.82373046875},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.62935596185548},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.16464132404187},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.55253000672313}}', 11214.6),
(812, 'ESXFC803', '{\"engine\":{\"health\":76.75548095703125,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.72018832724918,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.38790803314957,\"type\":\"stock_tires\"},\"oil\":{\"health\":98.89639217551626,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.85277894915406,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.87730190063695,\"type\":\"stock_suspension\"}}', 3597.15),
(813, 'ESXYJ638', '{\"tires\":{\"health\":99.9318309901934,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.98965715712169,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.97901465706076,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.9304323272333,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99117885192386,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.84736328125,\"type\":\"stock_engine\"}}', 22006.8),
(814, 'ESXRV009', '{\"tires\":{\"type\":\"stock_tires\",\"health\":98.58516084479727},\"oil\":{\"type\":\"stock_oil\",\"health\":97.0551140877682},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.27806241085912},\"engine\":{\"type\":\"stock_engine\",\"health\":89.56591186523437},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.6806151864337},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.61499939433479}}', 9621.24),
(815, 'ESXZZ609', '{\"tires\":{\"health\":99.9950909030244,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99949002020688,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99888362006786,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99705966150353,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99955268072921,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.99363403320312,\"type\":\"stock_engine\"}}', 9.02025),
(816, 'ESX4O390', '{\"tires\":{\"health\":99.99407631497479,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99930567959965,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99852016802896,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.9957563362608,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99939706281633,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.990771484375,\"type\":\"stock_engine\"}}', 12.9152),
(817, 'ESXIO162', '{\"tires\":{\"health\":99.99414199523791,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.9994736409319,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99880602900791,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99721563956533,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.999531990358,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.99400634765625,\"type\":\"stock_engine\"}}', 8.25063),
(818, 'ESX4C288', '{\"tires\":{\"health\":99.98070576881344,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99681940697991,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99363469184864,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.9780786408278,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99730069045093,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.95181274414063,\"type\":\"stock_engine\"}}', 68.3526),
(819, 'ESX2E012', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.89414352887789},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95357446267485},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94429109021555},\"oil\":{\"type\":\"stock_oil\",\"health\":99.582240431807},\"engine\":{\"type\":\"stock_engine\",\"health\":98.66373901367187},\"tires\":{\"type\":\"stock_tires\",\"health\":99.76885923435647}}', 1333.15),
(820, 'ESX7K690', '{\"tires\":{\"health\":100.0,\"type\":\"stock_tires\"},\"transmition\":{\"health\":100.0,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":100.0,\"type\":\"stock_brakes\"},\"oil\":{\"health\":100.0,\"type\":\"stock_oil\"},\"suspension\":{\"health\":100.0,\"type\":\"stock_suspension\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"}}', 0),
(821, 'ESX9K826', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.65022607799358},\"oil\":{\"type\":\"stock_oil\",\"health\":99.36657413667794},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.8395739527458},\"engine\":{\"type\":\"stock_engine\",\"health\":98.59898071289062},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92963293232516},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.91555650016685}}', 2056.88),
(822, 'ESXDZ177', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9007150245811},\"oil\":{\"type\":\"stock_oil\",\"health\":99.24895855593695},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.91742424089884},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.81242590144088},\"tires\":{\"type\":\"stock_tires\",\"health\":99.60861630629948},\"engine\":{\"type\":\"stock_engine\",\"health\":97.70345458984375}}', 2357.01),
(823, 'ESXUL714', '{\"tires\":{\"health\":99.9935527467874,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99924984639782,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99434691651877,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99819202321479,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99912693416968,\"type\":\"stock_transmition\"},\"engine\":{\"health\":91.3445556640625,\"type\":\"stock_engine\"}}', 17.372),
(824, 'ESXGB363', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.1677876624313},\"oil\":{\"type\":\"stock_oil\",\"health\":98.35282384272519},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.5915746909493},\"engine\":{\"type\":\"stock_engine\",\"health\":94.00352783203125},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.81985682874213},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.78318899409627}}', 5356.09),
(825, 'ESX1X772', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.85850971127825},\"oil\":{\"type\":\"stock_oil\",\"health\":98.93310156260434},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.88223590263054},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.73212199675979},\"tires\":{\"type\":\"stock_tires\",\"health\":99.43148247490668},\"engine\":{\"type\":\"stock_engine\",\"health\":95.308251953125}}', 3353.61),
(826, 'ESX8P575', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.95142653349184},\"oil\":{\"type\":\"stock_oil\",\"health\":99.65981841294551},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95891303518894},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.90369051167524},\"tires\":{\"type\":\"stock_tires\",\"health\":99.72241186212495},\"engine\":{\"type\":\"stock_engine\",\"health\":95.27476196289062}}', 1053.3),
(827, 'ESXRQ171', '{\"tires\":{\"health\":99.9945482922866,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99948926371914,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99658077358224,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.9987308634921,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99941618807061,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.99464721679688,\"type\":\"stock_engine\"}}', 13386.4),
(828, 'ESXNF544', '{\"tires\":{\"type\":\"stock_tires\",\"health\":97.86459600630784},\"oil\":{\"type\":\"stock_oil\",\"health\":95.73928834305844},\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.94548854742404},\"engine\":{\"type\":\"stock_engine\",\"health\":72.57537841796875},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.5346618903773},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.43979998029617}}', 13901.7),
(829, 'ESXAF471', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.71873925675699},\"oil\":{\"type\":\"stock_oil\",\"health\":99.4191411374738},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.85735455718478},\"engine\":{\"type\":\"stock_engine\",\"health\":98.71401977539063},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.93692294100448},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.92398245929013}}', 1891.82),
(830, 'ESX6S410', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.2455904557161},\"oil\":{\"type\":\"stock_oil\",\"health\":98.42156264884288},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.61349177131227},\"engine\":{\"type\":\"stock_engine\",\"health\":76.47374267578125},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.82895656785296},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.7937837712551}}', 5121),
(831, 'ESXMT148', '{\"suspension\":{\"health\":99.99601438382997,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.96808578326194,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99531494772667,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99056112146191,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.92991333007812,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.97039063559609,\"type\":\"stock_tires\"}}', 99.2208),
(832, 'ESXYF377', '{\"brakes\":{\"health\":99.99642277341045,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99847508017592,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.98962088769949,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99819798770851,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.98740532722738,\"type\":\"stock_oil\"},\"engine\":{\"health\":97.92171020507813,\"type\":\"stock_engine\"}}', 37.3967),
(833, 'ESX9F632', '{\"suspension\":{\"health\":99.99259490007093,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.86185913085937,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.9534031343819,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.98276557689082,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.93730054743557,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99121132321592,\"type\":\"stock_transmition\"}}', 202.864),
(834, 'ESX4F152', '{\"suspension\":{\"health\":99.86801050760148,\"type\":\"stock_suspension\"},\"engine\":{\"health\":97.33735961914063,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.38131681509796,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.70042897449214,\"type\":\"stock_brakes\"},\"oil\":{\"health\":98.79673812535708,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.84123343768828,\"type\":\"stock_transmition\"}}', 3918.07),
(835, 'ESXSK040', '{\"suspension\":{\"health\":99.95265155616315,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.0466552734375,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.77620721175716,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.8924685851702,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.56910483789156,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.94306435708532,\"type\":\"stock_transmition\"}}', 1407.26),
(836, 'ESXGY345', '{\"suspension\":{\"health\":99.5774648908666,\"type\":\"stock_suspension\"},\"engine\":{\"health\":88.44666137695313,\"type\":\"stock_engine\"},\"tires\":{\"health\":98.12903917240708,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.0449310106042,\"type\":\"stock_brakes\"},\"oil\":{\"health\":96.10368459923358,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.4906492414209,\"type\":\"stock_transmition\"}}', 12716.9),
(837, 'ESX1D520', '{\"suspension\":{\"health\":99.80937950700447,\"type\":\"stock_suspension\"},\"engine\":{\"health\":96.080078125,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.18565315636514,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.57020289786745,\"type\":\"stock_brakes\"},\"oil\":{\"health\":98.230217316695,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.76991718010034,\"type\":\"stock_transmition\"}}', 5784.74),
(838, 'ESXZH714', '{\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"tires\":{\"health\":100.0,\"type\":\"stock_tires\"},\"suspension\":{\"health\":100.0,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":100.0,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":100.0,\"type\":\"stock_transmition\"},\"oil\":{\"health\":100.0,\"type\":\"stock_oil\"}}', 0),
(839, 'ESXLJ578', '{\"engine\":{\"health\":99.99608154296875,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99248207876193,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99956047136101,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.9988061887252,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99952581173818,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99820070950028,\"type\":\"stock_oil\"}}', 4.34631),
(840, 'ESX8L271', '{\"engine\":{\"health\":86.23480834960938,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.88679187310517,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.98174814847984,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.95758019954701,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.97832155011686,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.84479609992532,\"type\":\"stock_oil\"}}', 443.388),
(841, 'ESXHH198', '{\"suspension\":{\"health\":99.98455144805233,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.98152388860797,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.91692059067403,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.66096801757813,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.86348014575107,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.96455355815668,\"type\":\"stock_brakes\"}}', 438.656),
(842, 'ESX0D434', '{\"tires\":{\"health\":100,\"type\":\"stock_tires\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"}}', 0),
(843, 'ESXJH467', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.85497963870681},\"tires\":{\"type\":\"stock_tires\",\"health\":98.28844836339272},\"engine\":{\"type\":\"stock_engine\",\"health\":97.52188720703126},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.63375536179628},\"oil\":{\"type\":\"stock_oil\",\"health\":99.09529666095665},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.83586395935207}}', 22585.2),
(844, 'ESX5O159', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.88795028433585},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95047005765299},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9403200267151},\"engine\":{\"type\":\"stock_engine\",\"health\":98.72838134765625},\"tires\":{\"type\":\"stock_tires\",\"health\":99.77802328898882},\"oil\":{\"type\":\"stock_oil\",\"health\":99.54434679890048}}', 1450.62),
(845, 'ESXGW482', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.01002543914673},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.11708927820331},\"transmition\":{\"type\":\"stock_transmition\",\"health\":98.93410105472113},\"engine\":{\"type\":\"stock_engine\",\"health\":77.68807983398438},\"tires\":{\"type\":\"stock_tires\",\"health\":96.24892783127948},\"oil\":{\"type\":\"stock_oil\",\"health\":91.79435729934458}}', 25823),
(846, 'ESXZM531', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.95679061913356},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.53947357824991},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.44548194369823},\"engine\":{\"type\":\"stock_engine\",\"health\":77.56233520507813},\"tires\":{\"type\":\"stock_tires\",\"health\":97.89775186570503},\"oil\":{\"type\":\"stock_oil\",\"health\":95.77886502109254}}', 13254.1),
(847, 'ESX6H996', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.43360823017818},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.74475249816344},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.68937729380532},\"engine\":{\"type\":\"stock_engine\",\"health\":94.5118408203125},\"tires\":{\"type\":\"stock_tires\",\"health\":99.16325479041854},\"oil\":{\"type\":\"stock_oil\",\"health\":97.5275814718509}}', 6504),
(848, 'ESX5R865', '{\"tires\":{\"type\":\"stock_tires\",\"health\":100},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100},\"oil\":{\"type\":\"stock_oil\",\"health\":100},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0}}', 0),
(849, 'ESXQP140', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999538939035},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9999873208235},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99954833984376},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99998985665879},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99995435496455},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999436481044}}', 14.2454),
(850, 'ESXAR775', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99990232155895},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9985183497515},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99898681640625},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99974149270482},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9995236490884},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99989273044004}}', 15.497),
(851, 'ESXYW630', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94764460944683},\"tires\":{\"type\":\"stock_tires\",\"health\":99.7797475655756},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.88207566490353},\"engine\":{\"type\":\"stock_engine\",\"health\":null},\"oil\":{\"type\":\"stock_oil\",\"health\":99.51253448717044},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.93677187706841}}', 1580.53),
(852, 'ESXNN708', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.91251654194065},\"tires\":{\"type\":\"stock_tires\",\"health\":99.6147689644529},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.80233543852973},\"engine\":{\"type\":\"stock_engine\",\"health\":96.09620361328125},\"oil\":{\"type\":\"stock_oil\",\"health\":99.19242449478381},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.89452048285527}}', 2619.8),
(853, 'ESX7M526', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.67237157628263},\"tires\":{\"type\":\"stock_tires\",\"health\":98.97214932700757},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.27465575967762},\"engine\":{\"type\":\"stock_engine\",\"health\":92.91194458007813},\"oil\":{\"type\":\"stock_oil\",\"health\":96.80779782182523},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.6008324010525}}', 6001.92),
(854, 'ESXUF257', '{\"oil\":{\"health\":99.31757189730513,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.92571684699014,\"type\":\"stock_suspension\"},\"engine\":{\"health\":97.74110717773438,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.66475507985899,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.91051750711417,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.83186816452494,\"type\":\"stock_brakes\"}}', 2175.52),
(855, 'ESXPH147', '{\"oil\":{\"health\":98.96322281354047,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.8846099350194,\"type\":\"stock_suspension\"},\"engine\":{\"health\":97.25776977539063,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.42164908075933,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.86157472198285,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.73675657198906,\"type\":\"stock_brakes\"}}', 3282.22),
(856, 'ESX2I157', '{\"oil\":{\"health\":99.91194077959007,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.98836240540469,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.8072021484375,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.90086844871469,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.98644671687949,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.9719836949053,\"type\":\"stock_brakes\"}}', 272.396),
(857, 'OKTM3028', '{\"suspension\":{\"health\":99.99991493066249,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99987604440045,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99991376046012,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.99979248046876,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.9979904330742,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.999749004716,\"type\":\"stock_brakes\"}}', 0.157365),
(858, 'XDNS3584', '{\"suspension\":{\"health\":99.99968118062624,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99969929208668,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99968084061446,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.99948120117188,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99206355933694,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.9990447659211,\"type\":\"stock_brakes\"}}', 0.055518),
(859, 'ESX8S695', '{\"oil\":{\"health\":99.1907259345608,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.91070943487496,\"type\":\"stock_suspension\"},\"engine\":{\"health\":97.47485961914063,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.56976969292326,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.89271159396565,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.79692053189823,\"type\":\"stock_brakes\"}}', 2633.43),
(860, 'ESXSZ219', '{\"brakes\":{\"health\":99.94476826038945,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.9711213612341,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.78558416498805,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.87340488054777,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.526025390625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.97587956982307,\"type\":\"stock_suspension\"}}', 685.052),
(861, 'ESX1U656', '{\"oil\":{\"health\":97.8032410296348,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.7599621095952,\"type\":\"stock_suspension\"},\"engine\":{\"health\":92.82721557617188,\"type\":\"stock_engine\"},\"tires\":{\"health\":98.89584477713854,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.71105532270625,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.45595076158571,\"type\":\"stock_brakes\"}}', 7024.9),
(862, 'ESX4S426', '{\"oil\":{\"health\":99.63410198995469,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.95640583121728,\"type\":\"stock_suspension\"},\"engine\":{\"health\":95.539306640625,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.71772994639592,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.94834007175676,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.89825422770849,\"type\":\"stock_brakes\"}}', 1141.79),
(863, 'ESX6L782', '{\"oil\":{\"health\":98.28308766761401,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.80704296547907,\"type\":\"stock_suspension\"},\"engine\":{\"health\":95.23777465820312,\"type\":\"stock_engine\"},\"tires\":{\"health\":98.99133355689868,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.76893800248345,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.55830676322062,\"type\":\"stock_brakes\"}}', 5462.39),
(864, 'ESXBR278', '{\"oil\":{\"health\":99.26863788857472,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.91437482415178,\"type\":\"stock_suspension\"},\"engine\":{\"health\":98.34877319335938,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.47694425189437,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.89821928209861,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.80128442384813,\"type\":\"stock_brakes\"}}', 2301.97),
(865, 'ESXZH281', '{\"brakes\":{\"health\":99.69817868418761,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.8412814621561,\"type\":\"stock_transmition\"},\"oil\":{\"health\":98.81114752962205,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.33712428150482,\"type\":\"stock_tires\"},\"engine\":{\"health\":95.53956298828125,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.86769574968963,\"type\":\"stock_suspension\"}}', 3786.71),
(866, 'ESXVO313', '{\"brakes\":{\"health\":99.88235863478916,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.93892915274992,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.55160917823928,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.71634904064124,\"type\":\"stock_tires\"},\"engine\":{\"health\":98.99637451171876,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.94886417949839,\"type\":\"stock_suspension\"}}', 1412.17),
(867, 'ESX5K639', '{\"oil\":{\"health\":99.96564466772927,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99488804740389,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.9254638671875,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.94576110646345,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.9941533665413,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.98730899331702,\"type\":\"stock_brakes\"}}', 104.213),
(868, 'ESXKS071', '{\"oil\":{\"health\":99.65879003122838,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.96291353467916,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.24461669921875,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.83386784888457,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.95531274085248,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.91610346181412,\"type\":\"stock_brakes\"}}', 1083.25),
(869, 'ESXAG994', '{\"brakes\":{\"health\":99.55967568753873,\"type\":\"stock_brakes\"},\"oil\":{\"health\":98.2382820202789,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.7670019124611,\"type\":\"stock_transmition\"},\"engine\":{\"health\":90.91268310546875,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.07899894991144,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.80619432915131,\"type\":\"stock_suspension\"}}', 5536.33),
(870, 'ESXFG330', '{\"transmition\":{\"health\":99.9727094754462,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.84664264756036,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.57716674804688,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.80804857264462,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.97693649451814,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.9460267522147,\"type\":\"stock_brakes\"}}', 603.225),
(871, 'ESX3D489', '{\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"tires\":{\"health\":100,\"type\":\"stock_tires\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"}}', 0),
(872, 'ESXUO179', '{\"suspension\":{\"health\":99.93109846481105,\"type\":\"stock_suspension\"},\"engine\":{\"health\":97.47769775390626,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.69197773741914,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.84415440089231,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.9169709630169,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.36582479566543,\"type\":\"stock_oil\"}}', 2004.58),
(873, 'ESXMA205', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999969423327},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999986101513},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99999862404971},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99999389648437},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9999998301296},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99999961779159}}', 0.000747681),
(874, 'ESX3S692', '{\"oil\":{\"health\":99.84226442326873,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99959716796875,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.86060470957558,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.97709375003505,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.95413457539893,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.98055637507957,\"type\":\"stock_suspension\"}}', 530.608),
(875, 'ESXRD232', '{\"oil\":{\"health\":98.93933949843502,\"type\":\"stock_oil\"},\"engine\":{\"health\":97.72892456054687,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.39986341680697,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.85808200618684,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.72973506974924,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.88164095333655,\"type\":\"stock_suspension\"}}', 3513.54),
(876, 'ESXIG720', '{\"oil\":{\"health\":99.99998199999972,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.9999755859375,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99949999999252,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.9999799999997,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99993999999909,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.9999799999997,\"type\":\"stock_suspension\"}}', 0),
(877, 'ESXMH961', '{\"oil\":{\"health\":99.9999933325077,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99999389648437,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99981479188054,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99999259167523,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99997777502566,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99999259167523,\"type\":\"stock_suspension\"}}', 0),
(878, 'ESX4R418', '{\"oil\":{\"health\":99.99995990451699,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99993896484375,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99888623658376,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99995544946335,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99986634839002,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99995544946335,\"type\":\"stock_suspension\"}}', 0),
(879, 'ESXGC364', '{\"oil\":{\"health\":99.99996456082816,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99994506835938,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99901557856049,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99996062314242,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99988186942723,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99996062314242,\"type\":\"stock_suspension\"}}', 0),
(880, 'ESX7Y580', '{\"oil\":{\"health\":100.0,\"type\":\"stock_oil\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"tires\":{\"health\":100.0,\"type\":\"stock_tires\"},\"transmition\":{\"health\":100.0,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":100.0,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":100.0,\"type\":\"stock_suspension\"}}', 0),
(881, 'ESX4S712', '{\"oil\":{\"health\":99.99990749408743,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.999853515625,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99743039131896,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99989721565273,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99969164695819,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99989721565273,\"type\":\"stock_suspension\"}}', 0),
(882, 'ESX3T324', '{\"oil\":{\"health\":100.0,\"type\":\"stock_oil\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"tires\":{\"health\":100.0,\"type\":\"stock_tires\"},\"transmition\":{\"health\":100.0,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":100.0,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":100.0,\"type\":\"stock_suspension\"}}', 0),
(883, 'ESX0J979', '{\"oil\":{\"health\":99.99992161231892,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99987182617187,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99782256441552,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.9999129025766,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99973870772979,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.9999129025766,\"type\":\"stock_suspension\"}}', 0),
(884, 'ESXLZ865', '{\"oil\":{\"health\":100.0,\"type\":\"stock_oil\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"tires\":{\"health\":100.0,\"type\":\"stock_tires\"},\"transmition\":{\"health\":100.0,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":100.0,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":100.0,\"type\":\"stock_suspension\"}}', 0),
(885, 'ESXJA583', '{\"oil\":{\"health\":99.99998783357849,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99998779296875,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99966204384713,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99998648175388,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99995944526165,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99998648175388,\"type\":\"stock_suspension\"}}', 0),
(886, 'ESXAA749', '{\"oil\":{\"health\":99.99997882895973,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99996948242188,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99941191554813,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99997647662193,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99992942986576,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99997647662193,\"type\":\"stock_suspension\"}}', 0),
(887, 'ESXMI101', '{\"oil\":{\"health\":99.91763498141178,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.52741088867188,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.92422838317305,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.98793186275583,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.97571287077878,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.98973751162109,\"type\":\"stock_suspension\"}}', 260.081),
(888, 'ESX6E965', '{\"oil\":{\"health\":99.96918177823918,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.93410034179688,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.91422622379879,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99342219362146,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.9844162802011,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99405093594506,\"type\":\"stock_suspension\"}}', 97.6029),
(889, 'ESXJM065', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.71097759352409},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.65206808426277},\"engine\":{\"type\":\"stock_engine\",\"health\":95.2657470703125},\"oil\":{\"type\":\"stock_oil\",\"health\":97.35404470908512},\"tires\":{\"type\":\"stock_tires\",\"health\":98.67275445289902},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.34500701391284}}', 8315.99),
(890, 'ESXRM891', '{\"brakes\":{\"health\":99.15714820320457,\"type\":\"stock_brakes\"},\"tires\":{\"health\":98.4497489062349,\"type\":\"stock_tires\"},\"oil\":{\"health\":96.5016727018056,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.54733131857314,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.62538499243445,\"type\":\"stock_suspension\"},\"engine\":{\"health\":92.2490966796875,\"type\":\"stock_engine\"}}', 11277.8),
(891, 'ESX1K977', '{\"brakes\":{\"health\":99.99773504113569,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.9853619974932,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99680842532219,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99911209905484,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99917251480807,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.99995727539063,\"type\":\"stock_engine\"}}', 8.54239),
(892, 'ESXCW633', '{\"engine\":{\"type\":\"stock_engine\",\"health\":89.99990844726563},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.52074969952058},\"oil\":{\"type\":\"stock_oil\",\"health\":96.32823904767248},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.60257888340667},\"tires\":{\"type\":\"stock_tires\",\"health\":98.25761912180113},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.10232171221034}}', 11641.4),
(893, 'ESXAV984', '{\"brakes\":{\"health\":99.99446517308002,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.97161226362043,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.98782325318511,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99759863977065,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99785155700815,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.99388427734375,\"type\":\"stock_engine\"}}', 41.3875),
(894, 'ESX3L061', '{\"brakes\":{\"health\":99.99853086951247,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99090000481815,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99769578970572,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99941169348043,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.9994565100064,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.63840942382812,\"type\":\"stock_engine\"}}', 6.41746),
(895, 'ESX8I088', '{\"engine\":{\"type\":\"stock_engine\",\"health\":95.77024536132812},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.8817092033212},\"oil\":{\"type\":\"stock_oil\",\"health\":99.12519972353273},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.90111169219644},\"tires\":{\"type\":\"stock_tires\",\"health\":99.47046650353862},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.77318403653983}}', 2753.51),
(896, 'ESX5E802', '{\"transmition\":{\"health\":99.97667107906666,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.98050513479558,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.8271753642948,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.95531800501085,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.61819458007813,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.89651319974748,\"type\":\"stock_tires\"}}', 567.205),
(897, 'ESX7Y107', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999993840612},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999997200279},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99999992300764},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99999972282748},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999996578117},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0}}', 0.000354864),
(898, 'ESX1A224', '{\"transmition\":{\"health\":99.96203379864666,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.96830125542503,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.71763913036124,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.92746661067706,\"type\":\"stock_brakes\"},\"engine\":{\"health\":95.31990356445313,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.83506049555584,\"type\":\"stock_tires\"}}', 913.426),
(899, 'ESX5A562', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9995789198264},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99984375461044},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9974192976251},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99932324920431},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99983051683401},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99859008789062}}', 1.76067),
(900, 'ESXRC753', '{\"transmition\":{\"health\":99.99998354715976,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99998519244379,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.9995886789942,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99995064147929,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99998168945312,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99998354715976,\"type\":\"stock_suspension\"}}', 0),
(901, 'ESXKX277', '{\"transmition\":{\"health\":100.0,\"type\":\"stock_transmition\"},\"oil\":{\"health\":100.0,\"type\":\"stock_oil\"},\"tires\":{\"health\":100.0,\"type\":\"stock_tires\"},\"brakes\":{\"health\":100.0,\"type\":\"stock_brakes\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"suspension\":{\"health\":100.0,\"type\":\"stock_suspension\"}}', 0),
(902, 'ESX2N164', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.30629061650135},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.69237962045203},\"tires\":{\"type\":\"stock_tires\",\"health\":98.68277370128986},\"engine\":{\"type\":\"stock_engine\",\"health\":93.36336669921875},\"oil\":{\"type\":\"stock_oil\",\"health\":97.14518441302205},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.62872635513394}}', 9028.81),
(903, 'ESX8Y847', '{\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100},\"oil\":{\"type\":\"stock_oil\",\"health\":100},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100},\"tires\":{\"type\":\"stock_tires\",\"health\":100},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100}}', 0),
(904, 'ESXKH463', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99984651539171},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99984651539171},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99986186385249},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99616288479398},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99953954617514}}', 2.35881),
(905, 'ESX2H566', '{\"engine\":{\"health\":99.924755859375,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.97813590865991,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99610136337854,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.9953462889796,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99102235797192,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.96591071388289,\"type\":\"stock_oil\"}}', 107.549),
(906, 'ESXDL419', '{\"engine\":{\"health\":86.00433349609375,\"type\":\"stock_engine\"},\"tires\":{\"health\":98.53930110379958,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.67113173876338,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.6036060695031,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.25648762562808,\"type\":\"stock_brakes\"},\"oil\":{\"health\":96.9692289598376,\"type\":\"stock_oil\"}}', 9663.09),
(907, 'ESXXS753', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.95330842627409},\"engine\":{\"type\":\"stock_engine\",\"health\":99.57908935546875},\"oil\":{\"type\":\"stock_oil\",\"health\":99.80987011793239},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97511749606226},\"tires\":{\"type\":\"stock_tires\",\"health\":99.90793539446152},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97935324425728}}', 605.336),
(908, 'ESXUD426', '{\"transmition\":{\"health\":99.91412478986442,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.9283778621629,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.35829064785612,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.8364446467633,\"type\":\"stock_brakes\"},\"engine\":{\"health\":98.65390625,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.63653541796278,\"type\":\"stock_tires\"}}', 1790.22),
(909, 'ESXRA099', '{\"engine\":{\"health\":99.16321411132813,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.45462204447269,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.94519340947662,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.93695583836555,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.86523548443017,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.61705243852258,\"type\":\"stock_oil\"}}', 1175.52),
(910, 'ESX3Q326', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.24995480162818},\"engine\":{\"type\":\"stock_engine\",\"health\":82.81363525390626},\"oil\":{\"type\":\"stock_oil\",\"health\":97.11940297358707},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.60947787213563},\"tires\":{\"type\":\"stock_tires\",\"health\":98.22828593994537},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.673344718381}}', 9148.93),
(911, 'GOUV', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.98313598632812},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.90945496896267},\"tires\":{\"type\":\"stock_tires\",\"health\":99.57151477568073},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92412142691737},\"oil\":{\"type\":\"stock_oil\",\"health\":99.33771773705344},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.82516352938949}}', 2061.07),
(912, 'ESX1F921', '{\"engine\":{\"health\":99.30260620117187,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.87177409605806,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.97282317240703,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.9673181058814,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.93828775671354,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.75258566087692,\"type\":\"stock_oil\"}}', 789.598),
(913, 'ESXBI415', '{\"engine\":{\"health\":98.83976440429687,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.6810328496026,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.9405993014191,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.92895335570998,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.86372330880987,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.47487857005859,\"type\":\"stock_oil\"}}', 1688.18),
(914, 'ESXSY442', '{\"engine\":{\"health\":94.62462158203125,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.03307303983174,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.79882651552676,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.75825313074155,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.54254373180815,\"type\":\"stock_brakes\"},\"oil\":{\"health\":98.17572178016188,\"type\":\"stock_oil\"}}', 5806.65),
(915, 'ESXCW616', '{\"engine\":{\"health\":99.39885864257812,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.85287609172643,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.96991616269978,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.96387399516688,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.93150029121782,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.72821676134733,\"type\":\"stock_oil\"}}', 864.346),
(916, 'ESXQN026', '{\"engine\":{\"health\":82.66499633789063,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.39417891250382,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.85815532997489,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.82878908115464,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.68018448567769,\"type\":\"stock_brakes\"},\"oil\":{\"health\":98.683006719755,\"type\":\"stock_oil\"}}', 4188.39),
(917, 'ESXSH966', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.86038150939551},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.83197718587694},\"engine\":{\"type\":\"stock_engine\",\"health\":95.99953002929688},\"oil\":{\"type\":\"stock_oil\",\"health\":98.72396825596248},\"tires\":{\"type\":\"stock_tires\",\"health\":99.35352062716909},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.68340009285282}}', 4046.84),
(918, 'ESXJW941', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.993206653999},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99208152155259},\"engine\":{\"type\":\"stock_engine\",\"health\":99.88650512695313},\"oil\":{\"type\":\"stock_oil\",\"health\":99.94831812452219},\"tires\":{\"type\":\"stock_tires\",\"health\":99.94282023616792},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98367043880359}}', 159.973);
INSERT INTO `vehicle_parts` (`id`, `plate`, `parts`, `mileage`) VALUES
(919, 'ESX7M942', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.993115234375},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99895055643788},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98086102177237},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99900727660433},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99680938220415},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99722602241188}}', 251.54),
(920, 'ESX5E074', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.1081298828125},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94749487274604},\"tires\":{\"type\":\"stock_tires\",\"health\":99.81042921101748},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95647035640127},\"oil\":{\"type\":\"stock_oil\",\"health\":99.59731623272295},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.90172281036303}}', 924.422),
(921, 'ESXCV745', '{\"engine\":{\"type\":\"stock_engine\",\"health\":94.97496948242187},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98755216683016},\"tires\":{\"type\":\"stock_tires\",\"health\":99.93701484060988},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98953586848735},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9102423645223},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9757489314279}}', 235.088),
(922, 'ESXJG545', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.35855451691228},\"engine\":{\"type\":\"stock_engine\",\"health\":94.48146362304688},\"oil\":{\"type\":\"stock_oil\",\"health\":97.50447965538864},\"tires\":{\"type\":\"stock_tires\",\"health\":98.53879497179878},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.71971769035079},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.66432839983392}}', 7927.54),
(923, 'ESXGV931', '{\"engine\":{\"health\":99.85809326171875,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99274548693048,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.96130798329186,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99132055998889,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.93576139710176,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.98336619778124,\"type\":\"stock_brakes\"}}', 205.325),
(924, 'ESXKG754', '{\"engine\":{\"health\":97.64996337890625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.94020153153272,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.72392554783603,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.92802787600692,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.45314832958506,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.86442975449087,\"type\":\"stock_brakes\"}}', 1771.91),
(925, 'ESXTT156', '{\"engine\":{\"health\":86.85785522460938,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.82973186700187,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.21080458326435,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.7951000776564,\"type\":\"stock_transmition\"},\"oil\":{\"health\":98.44417121181066,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.61387004264941,\"type\":\"stock_brakes\"}}', 5014.06),
(926, 'ESXAM767', '{\"engine\":{\"health\":94.31754760742187,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.94249573567844,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.68822698927079,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.93125145505602,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.49285279690605,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.86796661727553,\"type\":\"stock_brakes\"}}', 1618.99),
(927, 'ESX7Z140', '{\"engine\":{\"health\":98.95332641601563,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.96479394812377,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.83394271171483,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.95766192306889,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.67946753858809,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.92005713456894,\"type\":\"stock_brakes\"}}', 1027.67),
(928, 'ESX7L954', '{\"oil\":{\"type\":\"stock_oil\",\"health\":100},\"tires\":{\"type\":\"stock_tires\",\"health\":100},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100}}', 0),
(929, 'ESXRA212', '{\"engine\":{\"health\":92.42964477539063,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.8173656193262,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.14933308762747,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.7802600752116,\"type\":\"stock_transmition\"},\"oil\":{\"health\":98.33285452075244,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.58567681679104,\"type\":\"stock_brakes\"}}', 5342.89),
(930, 'ESXKE364', '{\"engine\":{\"health\":98.921728515625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.94495340151602,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.71397259973571,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.93406563560505,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.50950354197349,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.87405616182712,\"type\":\"stock_brakes\"}}', 1533.73),
(931, 'ESXAE857', '{\"suspension\":{\"health\":99.99286585723314,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.95928409932337,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.93790560784842,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99149119887109,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.86298828125,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.98354634180254,\"type\":\"stock_brakes\"}}', 197.247),
(932, 'ESXQY725', '{\"suspension\":{\"health\":99.99987566768994,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99689908610618,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.9998851101473,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99987559384369,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.99981079101562,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99962726891634,\"type\":\"stock_brakes\"}}', 0.00774162),
(933, 'ESXWG461', '{\"engine\":{\"health\":93.21561279296876,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.76089899473499,\"type\":\"stock_suspension\"},\"tires\":{\"health\":98.96369023653425,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.71154852913512,\"type\":\"stock_transmition\"},\"oil\":{\"health\":97.78611523847663,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.46035866036326,\"type\":\"stock_brakes\"}}', 7084.34),
(934, 'ESX5Y670', '{\"suspension\":{\"health\":99.90020493918026,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.49838800094747,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.10392014445564,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.8802971786667,\"type\":\"stock_transmition\"},\"engine\":{\"health\":93.0781005859375,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.77228275539035,\"type\":\"stock_brakes\"}}', 2890.19),
(935, 'ESXAO148', '{\"oil\":{\"type\":\"stock_oil\",\"health\":100},\"tires\":{\"type\":\"stock_tires\",\"health\":100},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100}}', 0),
(936, 'ESX5R884', '{\"suspension\":{\"health\":99.86695163925151,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.3769306868835,\"type\":\"stock_tires\"},\"oil\":{\"health\":98.7868516505941,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.8399539892581,\"type\":\"stock_transmition\"},\"engine\":{\"health\":95.65515747070313,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.69804645773026,\"type\":\"stock_brakes\"}}', 3903.37),
(937, 'ESXCN769', '{\"oil\":{\"type\":\"stock_oil\",\"health\":100},\"tires\":{\"type\":\"stock_tires\",\"health\":100},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100}}', 0),
(938, 'ESX6S276', '{\"suspension\":{\"health\":99.99991991870762,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99799796769017,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99992792683683,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99991991870762,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.99990844726563,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.9997597561228,\"type\":\"stock_brakes\"}}', 0),
(939, 'ESXAC955', '{\"suspension\":{\"health\":99.87520400398066,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.43711805930922,\"type\":\"stock_tires\"},\"oil\":{\"health\":98.85338420411832,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.84966574720395,\"type\":\"stock_transmition\"},\"engine\":{\"health\":89.26856079101563,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.71754973633948,\"type\":\"stock_brakes\"}}', 3728.49),
(940, 'ESX3T067', '{\"suspension\":{\"health\":99.9213554047432,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.66185718409156,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.2707143096799,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.9050960083336,\"type\":\"stock_transmition\"},\"engine\":{\"health\":97.87437133789062,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.82260004130422,\"type\":\"stock_brakes\"}}', 2368.63),
(941, 'ESX7M554', '{\"oil\":{\"health\":99.99975479980144,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99996972837055,\"type\":\"stock_transmition\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99997523230319,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99993188883373,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.999945511067,\"type\":\"stock_brakes\"}}', 1.28745),
(942, 'ESXLK243', '{\"oil\":{\"health\":99.99941412497219,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99992766974965,\"type\":\"stock_transmition\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9999408207043,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99983725693673,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99986980554941,\"type\":\"stock_brakes\"}}', 5.55794),
(943, 'EMS372', '{\"oil\":{\"health\":99.9852533657531,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99782234256463,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.96763916015625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99814524010388,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.98596111871706,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99559815145307,\"type\":\"stock_brakes\"}}', 45.1018),
(944, 'COK7830', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.88430786132813},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9473737247548},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99340855187897},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99225561430036},\"tires\":{\"type\":\"stock_tires\",\"health\":99.95065167204246},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98437623092008}}', 5150.48),
(945, 'ESXJV278', '{\"transmition\":{\"health\":99.95442858931,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.91265868293589,\"type\":\"stock_brakes\"},\"engine\":{\"health\":98.93931274414062,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.7967429130739,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.66274824034194,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.9619093340079,\"type\":\"stock_suspension\"}}', 1056.82),
(946, 'ESX0A750', '{\"tires\":{\"health\":99.22250347702091,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.88397516969445,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.86277043326868,\"type\":\"stock_transmition\"},\"engine\":{\"health\":90.20594482421875,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.03678582747844,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.72826256021674,\"type\":\"stock_brakes\"}}', 3056.61),
(947, 'COKE2262', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.99464721679688},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99745597617151},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9992156235841},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9992620398733},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98619842779621},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99795321826119}}', 6.53795),
(948, 'COKE4911', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.99923706054688},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99954999999297},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99949999999238},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99949999999238},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98749999981307},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99849999997714}}', 0.000038147),
(949, 'COKE3295', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.9843017578125},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99256884117625},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99835055950099},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99850072774275},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97755378878152},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99604278889864}}', 20.899),
(950, 'COKE3592', '{\"engine\":{\"type\":\"stock_engine\",\"health\":95.40355224609375},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9622861107986},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99530171842702},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99447491754347},\"tires\":{\"type\":\"stock_tires\",\"health\":99.96532639914851},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98888163846206}}', 4429.04),
(951, 'COKE2698', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.86953735351563},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99483995568201},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99909149459406},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99920115089337},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9910081093031},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99799821535771}}', 2462.14),
(952, 'COKE9798', '{\"engine\":{\"type\":\"stock_engine\",\"health\":98.11414184570313},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99641444475467},\"oil\":{\"type\":\"stock_oil\",\"health\":99.973783247808},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99584679654552},\"tires\":{\"type\":\"stock_tires\",\"health\":99.96719689581073},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99128686781704}}', 5159.7),
(953, 'ESX7B699', '{\"tires\":{\"health\":98.53771880396028,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.70227071127866,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.64253586961078,\"type\":\"stock_transmition\"},\"engine\":{\"health\":89.13783569335938,\"type\":\"stock_engine\"},\"oil\":{\"health\":97.31278255260087,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.32185756383945,\"type\":\"stock_brakes\"}}', 8585.2),
(954, 'ESX2Y611', '{\"tires\":{\"health\":98.75420313469913,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.76396303110217,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.71746987397742,\"type\":\"stock_transmition\"},\"engine\":{\"health\":75.89713745117187,\"type\":\"stock_engine\"},\"oil\":{\"health\":97.9045938644332,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.4592644589569,\"type\":\"stock_brakes\"}}', 6527.54),
(955, 'ESXVA335', '{\"tires\":{\"health\":99.44386899266012,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.8877714762815,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.86530374009567,\"type\":\"stock_transmition\"},\"engine\":{\"health\":95.67779541015625,\"type\":\"stock_engine\"},\"oil\":{\"health\":98.98905101312733,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.74419827911338,\"type\":\"stock_brakes\"}}', 3227.64),
(956, 'ESX5S163', '{\"tires\":{\"health\":98.61175982169626,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.71103026433024,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.65274309116231,\"type\":\"stock_transmition\"},\"engine\":{\"health\":91.75724487304687,\"type\":\"stock_engine\"},\"oil\":{\"health\":97.37929672459627,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.34292461639528,\"type\":\"stock_brakes\"}}', 8360.06),
(957, 'ESX2P639', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":100},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100},\"oil\":{\"type\":\"stock_oil\",\"health\":100}}', 0),
(958, 'ESX0L011', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":100},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100},\"oil\":{\"type\":\"stock_oil\",\"health\":100}}', 0),
(959, 'ESX6Q753', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":100},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100},\"oil\":{\"type\":\"stock_oil\",\"health\":100}}', 0),
(960, 'ESX2X709', '{\"engine\":{\"health\":91.34530639648438,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.32760176998427,\"type\":\"stock_tires\"},\"oil\":{\"health\":98.64331955503983,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.82189426422758,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.85210601379265,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.66508033981042,\"type\":\"stock_brakes\"}}', 4335.49),
(961, 'ESXNL941', '{\"engine\":{\"health\":84.57540893554688,\"type\":\"stock_engine\"},\"tires\":{\"health\":97.03009645295997,\"type\":\"stock_tires\"},\"oil\":{\"health\":96.34144471800008,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.47816217380596,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.55868998285722,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":98.96597006115413,\"type\":\"stock_brakes\"}}', 11595.1),
(962, 'ESX0J545', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":100},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100},\"oil\":{\"type\":\"stock_oil\",\"health\":100}}', 0),
(963, 'ESXUM967', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.76552663731535},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94451362128913},\"oil\":{\"type\":\"stock_oil\",\"health\":99.58525610722004},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.89434188919064},\"engine\":{\"type\":\"stock_engine\",\"health\":98.74564819335937},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95372589785335}}', 1320.49),
(964, 'ESX0N291', '{\"brakes\":{\"health\":99.99502572031288,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99763468795446,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.98514128046105,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.9979561510529,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.98109026905147,\"type\":\"stock_tires\"},\"engine\":{\"health\":98.60642700195312,\"type\":\"stock_engine\"}}', 44.6124),
(965, 'ESXVO771', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.90894660611632},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98925404974576},\"engine\":{\"type\":\"stock_engine\",\"health\":null},\"tires\":{\"type\":\"stock_tires\",\"health\":99.93254572809673},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97499610822884},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98724461669259}}', 287.959),
(966, 'ESXAY654', '{\"engine\":{\"health\":98.72373046875,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.78048434912304,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.65674443543641,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.9607669537009,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.95316335313558,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.9096738231376,\"type\":\"stock_brakes\"}}', 1086.31),
(967, 'ESX5Q447', '{\"oil\":{\"health\":99.88920522319617,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.96940798294998,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.916444691122,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.98686998647567,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.71842041015626,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.9844260910527,\"type\":\"stock_transmition\"}}', 350.461),
(968, 'ESXNE249', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.93101921277663},\"tires\":{\"type\":\"stock_tires\",\"health\":99.83622028030823},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96411039880516},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96997221946595},\"engine\":{\"type\":\"stock_engine\",\"health\":99.41600952148437},\"oil\":{\"type\":\"stock_oil\",\"health\":99.73557126075846}}', 856.156),
(969, 'ESX1V662', '{\"tires\":{\"type\":\"stock_tires\",\"health\":100},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100},\"oil\":{\"type\":\"stock_oil\",\"health\":100}}', 0),
(970, 'ESX2Z475', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.76314018430526},\"engine\":{\"type\":\"stock_engine\",\"health\":90.670166015625},\"oil\":{\"type\":\"stock_oil\",\"health\":98.20922814165988},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.80297851825033},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.55235355695207},\"tires\":{\"type\":\"stock_tires\",\"health\":99.06327614248765}}', 5818.74),
(971, 'ESX0X748', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.92795347249167},\"engine\":{\"type\":\"stock_engine\",\"health\":98.78694458007813},\"oil\":{\"type\":\"stock_oil\",\"health\":99.47136993435467},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.93966529549388},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.86115844928954},\"tires\":{\"type\":\"stock_tires\",\"health\":99.66427866544592}}', 1712.54),
(972, 'ESX8B851', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98721776049834},\"engine\":{\"type\":\"stock_engine\",\"health\":95.8970703125},\"oil\":{\"type\":\"stock_oil\",\"health\":99.91353958491192},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98911059887044},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97414601475109},\"tires\":{\"type\":\"stock_tires\",\"health\":99.91728541377165}}', 277.489),
(973, 'ESXEG066', '{\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"},\"tires\":{\"health\":100,\"type\":\"stock_tires\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"}}', 0),
(974, 'ESXUY499', '{\"suspension\":{\"health\":99.99999210597146,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.9999826331372,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.9999782914215,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99999035174287,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99992184911734,\"type\":\"stock_oil\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"}}', 0.485872),
(975, 'ESXTN918', '{\"suspension\":{\"health\":99.98963749329674,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.97523358374166,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.91674303329234,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.9878816311158,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.91956132563687,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.82327880859376,\"type\":\"stock_engine\"}}', 262.123),
(976, 'ESX1A575', '{\"suspension\":{\"health\":99.99999465292747,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99998823644042,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99998529555053,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99999346468913,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99994706398192,\"type\":\"stock_oil\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"}}', 27.7401),
(977, 'ESX9G143', '{\"suspension\":{\"health\":99.99998244364484,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99995497601856,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99977372002067,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99998032001038,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99989819208501,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99964599609375,\"type\":\"stock_engine\"}}', 0.409379),
(978, 'ESXPB441', '{\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100},\"oil\":{\"type\":\"stock_oil\",\"health\":100},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100}}', 0),
(979, 'ESX5E931', '{\"suspension\":{\"health\":99.99998617106169,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99998755395552,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99995851318508,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99965427654235,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99998779296875,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99998617106169,\"type\":\"stock_transmition\"}}', 0),
(980, 'ESXHY357', '{\"suspension\":{\"health\":99.99999583728794,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99999625355915,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99998751186382,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.9998959321985,\"type\":\"stock_tires\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99999583728794,\"type\":\"stock_transmition\"}}', 0.616702),
(981, 'ESX4V716', '{\"suspension\":{\"health\":100.0,\"type\":\"stock_suspension\"},\"oil\":{\"health\":100.0,\"type\":\"stock_oil\"},\"brakes\":{\"health\":100.0,\"type\":\"stock_brakes\"},\"tires\":{\"health\":100.0,\"type\":\"stock_tires\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"transmition\":{\"health\":100.0,\"type\":\"stock_transmition\"}}', 0),
(982, 'ESXPX738', '{\"suspension\":{\"health\":100.0,\"type\":\"stock_suspension\"},\"oil\":{\"health\":100.0,\"type\":\"stock_oil\"},\"brakes\":{\"health\":100.0,\"type\":\"stock_brakes\"},\"tires\":{\"health\":100.0,\"type\":\"stock_tires\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"transmition\":{\"health\":100.0,\"type\":\"stock_transmition\"}}', 0.291445),
(983, 'ESXSV229', '{\"suspension\":{\"health\":100.0,\"type\":\"stock_suspension\"},\"oil\":{\"health\":100.0,\"type\":\"stock_oil\"},\"brakes\":{\"health\":100.0,\"type\":\"stock_brakes\"},\"tires\":{\"health\":100.0,\"type\":\"stock_tires\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"transmition\":{\"health\":100.0,\"type\":\"stock_transmition\"}}', 0.357553),
(984, 'ESXSZ253', '{\"suspension\":{\"health\":99.99991164833469,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99992048350119,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99973494500405,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99779120836767,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99987182617187,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99991164833469,\"type\":\"stock_transmition\"}}', 0),
(985, 'ESX9C747', '{\"suspension\":{\"health\":99.99979678362709,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99981710526432,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99939035088124,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99491959067831,\"type\":\"stock_tires\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99979678362709,\"type\":\"stock_transmition\"}}', 548.376),
(986, 'ESX0B221', '{\"suspension\":{\"health\":99.55976761701311,\"type\":\"stock_suspension\"},\"tires\":{\"health\":97.78633326019437,\"type\":\"stock_tires\"},\"brakes\":{\"health\":98.99542484060732,\"type\":\"stock_brakes\"},\"oil\":{\"health\":96.04741847267252,\"type\":\"stock_oil\"},\"engine\":{\"health\":72.6216796875,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.47195595324442,\"type\":\"stock_transmition\"}}', 12372.7),
(987, 'ESX9B217', '{\"engine\":{\"health\":99.99999389648437,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.9999894746238,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.9999894746238,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99999052716142,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99973686559497,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.9999684238714,\"type\":\"stock_brakes\"}}', 0),
(988, 'ESX0F459', '{\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"transmition\":{\"health\":100.0,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":100.0,\"type\":\"stock_suspension\"},\"oil\":{\"health\":100.0,\"type\":\"stock_oil\"},\"tires\":{\"health\":100.0,\"type\":\"stock_tires\"},\"brakes\":{\"health\":100.0,\"type\":\"stock_brakes\"}}', 0.180466),
(989, 'ESXZP215', '{\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.9999985298559,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.9999985298559,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99999867687032,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99996324639767,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99999558956772,\"type\":\"stock_brakes\"}}', 0),
(990, 'ESXZK410', '{\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"transmition\":{\"health\":100.0,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":100.0,\"type\":\"stock_suspension\"},\"oil\":{\"health\":100.0,\"type\":\"stock_oil\"},\"tires\":{\"health\":100.0,\"type\":\"stock_tires\"},\"brakes\":{\"health\":100.0,\"type\":\"stock_brakes\"}}', 1200.74),
(991, 'ESXYP074', '{\"engine\":{\"health\":91.86472778320312,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.89049513248279,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.90870265226448,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.18042783587701,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.54059422475797,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.79165502800749,\"type\":\"stock_brakes\"}}', 2594.71),
(992, 'ESXRS803', '{\"engine\":{\"health\":59.08750610351562,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.67401215394928,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.72795049760319,\"type\":\"stock_suspension\"},\"oil\":{\"health\":97.57065252987356,\"type\":\"stock_oil\"},\"tires\":{\"health\":98.59933909838149,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.37802952996101,\"type\":\"stock_brakes\"}}', 7523.15),
(993, 'ESX3Q819', '{\"suspension\":{\"health\":99.91233206158155,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.45678435266218,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.79626747690264,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.25429681865708,\"type\":\"stock_oil\"},\"engine\":{\"health\":90.5350830078125,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.89586781376056,\"type\":\"stock_transmition\"}}', 2311.03),
(994, 'ESXQK033', '{\"oil\":{\"health\":99.3734892692435,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.91275559262509,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.82959857189523,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.92659374323407,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.5503884105895,\"type\":\"stock_tires\"},\"engine\":{\"health\":97.64267578125,\"type\":\"stock_engine\"}}', 1963.44),
(995, 'ESXGI191', '{\"oil\":{\"type\":\"stock_oil\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100.0},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":100.0}}', 0),
(996, 'ESX9T953', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99994794612312},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99994216235904},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99982648707712},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99994216235904},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99992065429687},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9985540589764}}', 0),
(997, 'ESXPX668', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99999792760234},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999769733593},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999309200779},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999769733593},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99994243339822}}', 0),
(998, 'ESX9B963', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.52856088483876},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.79156323959144},\"tires\":{\"type\":\"stock_tires\",\"health\":99.0686227959796},\"engine\":{\"type\":\"stock_engine\",\"health\":93.119580078125},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.74882124901782},\"oil\":{\"type\":\"stock_oil\",\"health\":98.08135629740296}}', 6145.7),
(999, 'ESX3X456', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.95194438577495},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97473909529126},\"tires\":{\"type\":\"stock_tires\",\"health\":99.89413698457588},\"engine\":{\"type\":\"stock_engine\",\"health\":99.58172607421875},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97894017103391},\"oil\":{\"type\":\"stock_oil\",\"health\":99.81090258635439}}', 604.397),
(1000, 'ESX9G224', '{\"tires\":{\"health\":99.97660166907898,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.9538330078125,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99722518331719,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99332847889173,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.97890721440824,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99676603638935,\"type\":\"stock_transmition\"}}', 65.529),
(1001, 'ESX1B674', '{\"tires\":{\"health\":99.97626043427917,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.92346801757813,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99597902428808,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99069787563566,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.96532209068222,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99521213462941,\"type\":\"stock_transmition\"}}', 109.83),
(1002, 'ESX2F456', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99915175716463},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99963539283957},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99983937112181},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99985714073908},\"engine\":{\"type\":\"stock_engine\",\"health\":99.998193359375},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99820770140927}}', 2.58378),
(1003, 'ESX3G586', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.46710591269849},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.87874874947714},\"engine\":{\"type\":\"stock_engine\",\"health\":77.7141845703125},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.7680293082525},\"oil\":{\"type\":\"stock_oil\",\"health\":99.10017551560654},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.89871587975331}}', 2862.73),
(1004, 'ESX1I851', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.99969975849605},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99998789266673},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99998168945312},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99996380679989},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99998833060171},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99998791218182}}', 0.00566496),
(1005, 'ESXRY301', '{\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"tires\":{\"health\":100,\"type\":\"stock_tires\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"}}', 0),
(1006, 'ESX7A362', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99980132868042},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99847981921889},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9999295279586},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99974975585937},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99986010633528},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9999314589896}}', 0.263024),
(1007, 'ESX1B632', '{\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99965875788469,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99989762736537,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99715631570652,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99988625262823,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99988625262823,\"type\":\"stock_transmition\"}}', 817.789),
(1008, 'ESXZK509', '{\"engine\":{\"health\":98.40203247070312,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.90127466671257,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.61630620309096,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.7744412055108,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.95687290630898,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.94835736525757,\"type\":\"stock_transmition\"}}', 1240.07),
(1009, 'ESXKH649', '{\"engine\":{\"health\":95.85899658203125,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.52388280046049,\"type\":\"stock_brakes\"},\"oil\":{\"health\":98.12653539719202,\"type\":\"stock_oil\"},\"tires\":{\"health\":98.95107696118855,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.79134825115071,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.74972657142595,\"type\":\"stock_transmition\"}}', 6047.12),
(1010, 'ESXPZ597', '{\"engine\":{\"health\":95.27960815429688,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.63501136327476,\"type\":\"stock_brakes\"},\"oil\":{\"health\":98.56453762093305,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.19467985237637,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.840069710181,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.80818020108903,\"type\":\"stock_transmition\"}}', 4630.82),
(1011, 'ESX0G290', '{\"brakes\":{\"health\":99.90118837649311,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.6043446895709,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.94769708722375,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.95649968037846,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.12470092773438,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.79385164908976,\"type\":\"stock_tires\"}}', 1289.84),
(1012, 'ESXHC298', '{\"engine\":{\"health\":99.9999755859375,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99948260299114,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99997930411964,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99993791235892,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99998137370767,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99997930411964,\"type\":\"stock_suspension\"}}', 0),
(1013, 'ESXWW505', '{\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99987449009902,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99999497960396,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99998493881188,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99999548164357,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99999497960396,\"type\":\"stock_suspension\"}}', 528.05),
(1014, 'ESXZH319', '{\"engine\":{\"health\":96.80762939453125,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.47864299002576,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.88094414438899,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.77232901586415,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.11587023376767,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.90056483873711,\"type\":\"stock_suspension\"}}', 2787),
(1015, 'ESX6Z215', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.76744296084101},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.72866260605679},\"oil\":{\"type\":\"stock_oil\",\"health\":98.22009429598059},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.44193815974623},\"engine\":{\"type\":\"stock_engine\",\"health\":96.0814453125},\"tires\":{\"type\":\"stock_tires\",\"health\":98.06895704408592}}', 5590.65),
(1016, 'ESXVN221', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.86029430979461},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.83259534017337},\"oil\":{\"type\":\"stock_oil\",\"health\":98.752456609156},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.68059922001967},\"engine\":{\"type\":\"stock_engine\",\"health\":97.20405883789063},\"tires\":{\"type\":\"stock_tires\",\"health\":99.28071707819913}}', 3982.87),
(1017, 'ESXEN518', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.89441288296105},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.87287703751633},\"oil\":{\"type\":\"stock_oil\",\"health\":99.03276985414661},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.7607676924852},\"engine\":{\"type\":\"stock_engine\",\"health\":97.596533203125},\"tires\":{\"type\":\"stock_tires\",\"health\":99.51659859920344}}', 3081.34),
(1018, 'ESX1J871', '{\"transmition\":{\"health\":99.99997377864939,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99978760706016,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.9999785461677,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99995280156893,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99994100196116,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99952392578125,\"type\":\"stock_engine\"}}', 0.0970701),
(1019, 'ESXJL508', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99980799999708},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99990844726563},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9999423999991},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99839999997607},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99993599999903},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99993599999903}}', 0),
(1020, 'ESXFZ345', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.94344915491583},\"engine\":{\"type\":\"stock_engine\",\"health\":99.49624633789063},\"oil\":{\"type\":\"stock_oil\",\"health\":99.77029243196194},\"tires\":{\"type\":\"stock_tires\",\"health\":99.88753455948847},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9750099689687},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9698935111881}}', 3689.2),
(1021, 'ESX3K635', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99995357717364},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99979109728139},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99994197146705},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99997889871529},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99997420954091},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 1.38253),
(1022, 'ESXFI133', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99629014240793},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99666313531351},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97283515756715},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99869919877064},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.998645713744},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99326782226562}}', 7.59349),
(1023, 'CRAZIOZF', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97953631180363},\"oil\":{\"type\":\"stock_oil\",\"health\":99.93634231620428},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9264748022109},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99151878279929},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99013545963102},\"engine\":{\"type\":\"stock_engine\",\"health\":99.924755859375}}', 5193.71),
(1024, 'ESX2Q511', '{\"brakes\":{\"health\":99.99995071305726,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.9999775968442,\"type\":\"stock_suspension\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99993839132157,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99997261836515,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99977820875762,\"type\":\"stock_oil\"}}', 0.707193),
(1025, 'ESX3K225', '{\"brakes\":{\"health\":99.99709796193585,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.9989310867213,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.99064331054687,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.98175168606802,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99884644734017,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99561008311454,\"type\":\"stock_oil\"}}', 13.1407),
(1026, 'ESXTM049', '{\"transmition\":{\"health\":99.98231960114589,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.91556599811278,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.95837907725856,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.7744993864984,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.98404994566397,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.8203125,\"type\":\"stock_engine\"}}', 246.63),
(1027, 'ESXFL565', '{\"engine\":{\"health\":99.99945068359375,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99975525190098,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99997527796978,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99996978418531,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99993201441694,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99994561153355,\"type\":\"stock_brakes\"}}', 0.129732),
(1028, 'ESXMQ123', '{\"brakes\":{\"health\":99.97881425465215,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99099444077462,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.93703382475064,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.83765869140625,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.92629700800335,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.98937473735015,\"type\":\"stock_transmition\"}}', 230.269),
(1029, 'ESXID965', '{\"oil\":{\"health\":99.77238641331748,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.94014929372593,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.9739990178277,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.96895672887165,\"type\":\"stock_transmition\"},\"engine\":{\"health\":98.56946411132813,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.85483462743922,\"type\":\"stock_tires\"}}', 713.9),
(1030, 'ESX3J578', '{\"suspension\":{\"health\":99.99995201898847,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.9995249879858,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99994135654144,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99989444177463,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99986805221828,\"type\":\"stock_tires\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"}}', 0);

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vehicle_sold`
--

INSERT INTO `vehicle_sold` (`client`, `model`, `plate`, `soldby`, `date`) VALUES
('Pablo Pereira', 'Tropos', 'BEUO0814', 'Pablo Pereira', '2023-04-23 22:04'),
('Bryan Coquillet', 'Asbo', 'UQFA3216', 'Pablo Pereira', '2023-04-24 20:06');

-- --------------------------------------------------------

--
-- Structure de la table `weekly_run`
--

CREATE TABLE `weekly_run` (
  `id` int(11) NOT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `start_date` int(11) NOT NULL,
  `harvest` int(11) NOT NULL,
  `sell` int(11) NOT NULL,
  `malus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `weekly_run`
--

INSERT INTO `weekly_run` (`id`, `company`, `start_date`, `harvest`, `sell`, `malus`) VALUES
(1, 'brinks', 0, 0, 0, 0);

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
-- Index pour la table `bike`
--
ALTER TABLE `bike`
  ADD PRIMARY KEY (`model`);

--
-- Index pour la table `bike_categories`
--
ALTER TABLE `bike_categories`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
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
-- Index pour la table `fine_types`
--
ALTER TABLE `fine_types`
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
-- Index pour la table `motorcycle_bike`
--
ALTER TABLE `motorcycle_bike`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `motorcycle_vehicles`
--
ALTER TABLE `motorcycle_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `motor_sold`
--
ALTER TABLE `motor_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `npwd_calls`
--
ALTER TABLE `npwd_calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Index pour la table `npwd_darkchat_channels`
--
ALTER TABLE `npwd_darkchat_channels`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `darkchat_channels_channel_identifier_uindex` (`channel_identifier`) USING BTREE;

--
-- Index pour la table `npwd_darkchat_channel_members`
--
ALTER TABLE `npwd_darkchat_channel_members`
  ADD KEY `npwd_darkchat_channel_members_npwd_darkchat_channels_id_fk` (`channel_id`) USING BTREE;

--
-- Index pour la table `npwd_darkchat_messages`
--
ALTER TABLE `npwd_darkchat_messages`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `darkchat_messages_darkchat_channels_id_fk` (`channel_id`) USING BTREE;

--
-- Index pour la table `npwd_marketplace_listings`
--
ALTER TABLE `npwd_marketplace_listings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Index pour la table `npwd_match_profiles`
--
ALTER TABLE `npwd_match_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identifier_UNIQUE` (`identifier`);

--
-- Index pour la table `npwd_match_views`
--
ALTER TABLE `npwd_match_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `match_profile_idx` (`profile`),
  ADD KEY `identifier` (`identifier`);

--
-- Index pour la table `npwd_messages`
--
ALTER TABLE `npwd_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_identifier` (`user_identifier`);

--
-- Index pour la table `npwd_messages_conversations`
--
ALTER TABLE `npwd_messages_conversations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `npwd_messages_participants`
--
ALTER TABLE `npwd_messages_participants`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `message_participants_npwd_messages_conversations_id_fk` (`conversation_id`) USING BTREE;

--
-- Index pour la table `npwd_notes`
--
ALTER TABLE `npwd_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Index pour la table `npwd_phone_contacts`
--
ALTER TABLE `npwd_phone_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Index pour la table `npwd_phone_gallery`
--
ALTER TABLE `npwd_phone_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Index pour la table `npwd_twitter_likes`
--
ALTER TABLE `npwd_twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_combination` (`profile_id`,`tweet_id`),
  ADD KEY `profile_idx` (`profile_id`),
  ADD KEY `tweet_idx` (`tweet_id`);

--
-- Index pour la table `npwd_twitter_profiles`
--
ALTER TABLE `npwd_twitter_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profile_name_UNIQUE` (`profile_name`),
  ADD KEY `identifier` (`identifier`);

--
-- Index pour la table `npwd_twitter_reports`
--
ALTER TABLE `npwd_twitter_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_combination` (`profile_id`,`tweet_id`),
  ADD KEY `profile_idx` (`profile_id`),
  ADD KEY `tweet_idx` (`tweet_id`);

--
-- Index pour la table `npwd_twitter_tweets`
--
ALTER TABLE `npwd_twitter_tweets`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `npwd_twitter_tweets_npwd_twitter_profiles_id_fk` (`profile_id`) USING BTREE;

--
-- Index pour la table `open_car`
--
ALTER TABLE `open_car`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `ox_doorlock`
--
ALTER TABLE `ox_doorlock`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ox_inventory`
--
ALTER TABLE `ox_inventory`
  ADD UNIQUE KEY `owner` (`owner`,`name`);

--
-- Index pour la table `pefcl_accounts`
--
ALTER TABLE `pefcl_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number` (`number`),
  ADD UNIQUE KEY `number_2` (`number`);

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
-- Index pour la table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`propertyID`) USING BTREE;

--
-- Index pour la table `rented_motor`
--
ALTER TABLE `rented_motor`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `renzu_tuner`
--
ALTER TABLE `renzu_tuner`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sprays`
--
ALTER TABLE `sprays`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tomic_territories`
--
ALTER TABLE `tomic_territories`
  ADD PRIMARY KEY (`id`);

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
-- Index pour la table `user_sim`
--
ALTER TABLE `user_sim`
  ADD PRIMARY KEY (`id`);

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
-- Index pour la table `vehicle_parts`
--
ALTER TABLE `vehicle_parts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `weekly_run`
--
ALTER TABLE `weekly_run`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `banking`
--
ALTER TABLE `banking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT pour la table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=504;

--
-- AUTO_INCREMENT pour la table `faction_grades`
--
ALTER TABLE `faction_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- AUTO_INCREMENT pour la table `management_outfits`
--
ALTER TABLE `management_outfits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `motorcycle_bike`
--
ALTER TABLE `motorcycle_bike`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `motorcycle_vehicles`
--
ALTER TABLE `motorcycle_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `npwd_calls`
--
ALTER TABLE `npwd_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `npwd_darkchat_channels`
--
ALTER TABLE `npwd_darkchat_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `npwd_darkchat_messages`
--
ALTER TABLE `npwd_darkchat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `npwd_marketplace_listings`
--
ALTER TABLE `npwd_marketplace_listings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `npwd_match_profiles`
--
ALTER TABLE `npwd_match_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT pour la table `npwd_match_views`
--
ALTER TABLE `npwd_match_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT pour la table `npwd_messages`
--
ALTER TABLE `npwd_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `npwd_messages_conversations`
--
ALTER TABLE `npwd_messages_conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `npwd_messages_participants`
--
ALTER TABLE `npwd_messages_participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `npwd_notes`
--
ALTER TABLE `npwd_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `npwd_phone_contacts`
--
ALTER TABLE `npwd_phone_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `npwd_phone_gallery`
--
ALTER TABLE `npwd_phone_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `npwd_twitter_likes`
--
ALTER TABLE `npwd_twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `npwd_twitter_profiles`
--
ALTER TABLE `npwd_twitter_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT pour la table `npwd_twitter_reports`
--
ALTER TABLE `npwd_twitter_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `npwd_twitter_tweets`
--
ALTER TABLE `npwd_twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `open_car`
--
ALTER TABLE `open_car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `ox_doorlock`
--
ALTER TABLE `ox_doorlock`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT pour la table `pefcl_accounts`
--
ALTER TABLE `pefcl_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `playerskins`
--
ALTER TABLE `playerskins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `player_outfits`
--
ALTER TABLE `player_outfits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `player_outfit_codes`
--
ALTER TABLE `player_outfit_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `properties`
--
ALTER TABLE `properties`
  MODIFY `propertyID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `renzu_tuner`
--
ALTER TABLE `renzu_tuner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sprays`
--
ALTER TABLE `sprays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `tomic_territories`
--
ALTER TABLE `tomic_territories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `user_sim`
--
ALTER TABLE `user_sim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `vehicle_parts`
--
ALTER TABLE `vehicle_parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1031;

--
-- AUTO_INCREMENT pour la table `weekly_run`
--
ALTER TABLE `weekly_run`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `npwd_darkchat_channel_members`
--
ALTER TABLE `npwd_darkchat_channel_members`
  ADD CONSTRAINT `npwd_darkchat_channel_members_npwd_darkchat_channels_id_fk` FOREIGN KEY (`channel_id`) REFERENCES `npwd_darkchat_channels` (`id`);

--
-- Contraintes pour la table `npwd_darkchat_messages`
--
ALTER TABLE `npwd_darkchat_messages`
  ADD CONSTRAINT `darkchat_messages_darkchat_channels_id_fk` FOREIGN KEY (`channel_id`) REFERENCES `npwd_darkchat_channels` (`id`);

--
-- Contraintes pour la table `npwd_match_views`
--
ALTER TABLE `npwd_match_views`
  ADD CONSTRAINT `match_profile` FOREIGN KEY (`profile`) REFERENCES `npwd_match_profiles` (`id`);

--
-- Contraintes pour la table `npwd_messages_participants`
--
ALTER TABLE `npwd_messages_participants`
  ADD CONSTRAINT `message_participants_npwd_messages_conversations_id_fk` FOREIGN KEY (`conversation_id`) REFERENCES `npwd_messages_conversations` (`id`);

--
-- Contraintes pour la table `npwd_twitter_likes`
--
ALTER TABLE `npwd_twitter_likes`
  ADD CONSTRAINT `profile` FOREIGN KEY (`profile_id`) REFERENCES `npwd_twitter_profiles` (`id`),
  ADD CONSTRAINT `tweet` FOREIGN KEY (`tweet_id`) REFERENCES `npwd_twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `npwd_twitter_reports`
--
ALTER TABLE `npwd_twitter_reports`
  ADD CONSTRAINT `report_profile` FOREIGN KEY (`profile_id`) REFERENCES `npwd_twitter_profiles` (`id`),
  ADD CONSTRAINT `report_tweet` FOREIGN KEY (`tweet_id`) REFERENCES `npwd_twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `npwd_twitter_tweets`
--
ALTER TABLE `npwd_twitter_tweets`
  ADD CONSTRAINT `npwd_twitter_tweets_npwd_twitter_profiles_id_fk` FOREIGN KEY (`profile_id`) REFERENCES `npwd_twitter_profiles` (`id`);

--
-- Contraintes pour la table `player_outfit_codes`
--
ALTER TABLE `player_outfit_codes`
  ADD CONSTRAINT `FK_player_outfit_codes_player_outfits` FOREIGN KEY (`outfitid`) REFERENCES `player_outfits` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
