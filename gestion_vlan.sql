-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 27 avr. 2018 à 15:47
-- Version du serveur :  10.1.25-MariaDB
-- Version de PHP :  7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestion_vlan`
--

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE `employe` (
  `code_emp` int(2) NOT NULL DEFAULT '0',
  `nom_prenom` varchar(23) DEFAULT NULL,
  `division` varchar(18) DEFAULT NULL,
  `service` varchar(59) DEFAULT NULL,
  `fonction` varchar(41) DEFAULT NULL,
  `tel` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`code_emp`, `nom_prenom`, `division`, `service`, `fonction`, `tel`) VALUES
(0, NULL, NULL, NULL, NULL, NULL),
(1, 'Hassan MAAZOUZ', 'DBMRHMG', 'DBMRHMG', 'B Personnel', ''),
(2, 'Miloud EL KIDADI', 'DCL', 'DCL', 'Chef DCL', '06.61.63.01.46'),
(3, 'Mohamed OUHA', 'DCL', 'planification ', '', '06.66.53.23.07'),
(4, 'Mohamed BIFERAOUN', 'DCL', 'planification ', '', '06.78.43.57.77'),
(5, 'Rachi AGHMANE', '', '', '', '06.67.72.52.38'),
(6, 'Mohamed AMRAOUI', 'DCL', 'Personnel communal finance locale', '', '06.71.10.00.84'),
(7, 'Mohamed OUZAITE', '', '', '', '06.62.09.22.27'),
(8, 'Said FADEL', '', '', '', '06.76.06.03.81'),
(9, 'Jamaa OULAOUINA', 'DCL', 'Etat civil', 'inspecteur ', '06.72.50.78.43'),
(10, 'Aicha ESSABAR', 'DAEC', '', '', ''),
(11, 'Fatima EL JAOUHARI', 'DCL', 'DCL', '', ''),
(12, 'Mustapha TAHIRI', 'DAR', 'DAR', 'Adjoint Administratif 2eme grade', '06.59.77.42.15'),
(13, 'Ali BOUTAYEB', 'DCL', 'Personnel communal finance locale', '', '06.71.75.10.46'),
(14, 'Hamid RAFYA', 'DCL', 'Assembl', '', '06.67.03.31.90'),
(15, 'Khalid EL FIZAZI', '', '', '', '06.78.80.21.48'),
(16, 'Otmane AAHID', 'DCL', 'Assembl', '', '06.73.65.75.26'),
(17, 'Mohamed IMOURIG', '', '', '', '06.22.48.90.92'),
(18, 'Larbi BOUTCHALHIT', 'DCL', 'Etat civil', '', '06.66.55.79.92'),
(19, 'Mohamed BOUDERBAL', 'DAR', 'DAR', 'Chef DAR', ''),
(20, 'Soufiane MEKAOUI', 'DAR', 'DAR', 'Administrateur', '06.68.33.64.15'),
(21, 'Mohamed IDNBELAID', 'DAR', 'DAR', 'Administrateur Adjoint', '06.61.93.57.07'),
(22, 'Brahim IHALMI', 'DAR', 'DAR', 'Administrateur Adjoint', ''),
(23, 'Keltouma MAAZOUZ', 'DAR', 'DAR', 'Adjoint Administratif 2eme grade', ''),
(24, 'Nouaman ABAKARIMI', 'DAEC', 'DAEC', 'Chef de Division', '06.61.65.49.13'),
(25, 'Brahim AIT BARI', 'DAEC', '', 'Chef de service', ''),
(26, 'Saidia LATIFY', 'Conseil Provincial', 'Conseil Provincial', 'Technicienne', ''),
(27, 'Lahoucine IDLAIDINE', 'Conseil Provincial', 'Conseil Provincial', 'Administrateur', '06.78.54.07.63'),
(28, 'Kamal ASNIBI', 'Conseil Provincial', 'Conseil Provincial', 'Administrateur Adjoint', '06.61.65.56.26'),
(29, 'Elyazid HAFDI', 'Conseil Provincial', 'Conseil Provincial', 'Administrateur', '06.61.65.66.24'),
(30, 'Abdellah SHAJI', 'Conseil Provincial', 'Conseil Provincial', 'Pr', ''),
(31, 'Abdelilah KASSIMI', 'DAEC', 'Action ', 'Contr', ''),
(32, 'Abdelkader GHOUBACHE', 'DAEC', 'Action ', 'Contr', ''),
(33, 'Saadia OUCHIKH', 'DBMRHMG', 'DBMRHMG', 'Personnel BG', ''),
(34, 'Lahoucine BOUSSOUAB', 'DBMRHMG', 'DBMRHMG', 'SRH', '06.61.81.96.79'),
(35, 'Malika ACHKAR', 'DBMRHMG', 'DBMRHMG', 'Personnel BG', ''),
(36, 'Abdelaali NACHIT', 'DBMRHMG', 'DBMRHMG', 'Materiel', ''),
(37, 'Lahcen BAKRIM', 'DBMRHMG', 'DBMRHMG', 'Adjoint Chef DBM', ''),
(38, 'El Moukhtar ZIGHEM', 'DBMRHMG', 'DBMRHMG', 'Chef service Budg et Compt', '06.61.22.27.19'),
(39, 'Lahcen OUBASSIN', 'DBMRHMG', 'DBMRHMG', 'Comptabilit', ''),
(40, 'Mohamed IDELKADI', 'DAI', 'Documentation', 'Chef de service', ''),
(41, 'Elhoussine EL ASSILI', 'DAI', 'Affaires G', 'Chef de service', ''),
(42, 'Brahim ELKATMOUR', 'DAI', 'R', 'Chef de service', ''),
(43, 'Mohamed AHMAMCHA', 'Cabinet', 'Cabinet', 'A.A 3', '06.67.13.24.86'),
(44, 'Ahmed TAHIRI', 'Cabinet', 'Cabinet', 'Photographe', '06.68.69.77.96'),
(45, 'Brahim KAHLI', 'DAI', 'Dactylographe', '', ''),
(46, 'Mohamed JYMY', 'DAI', 'Elections', '', ''),
(47, 'Ahmed CHARMAQE', 'Transmission', 'Transmission', 'Responsable', '06.68.13.82.46'),
(48, 'Abdelouahed DIFRI', 'Transmission', 'Transmission', 'Op', '06.71.55.47.47'),
(49, 'Abdelghani ZERROUG', 'Transmission', 'Transmission', 'Op', '06.70.07.22.60'),
(50, 'Brahim KAFIF', 'Transmission', 'Transmission', 'Op', '06.63.29.06.44'),
(51, 'Elhassan BOUKECHAB', 'Transmission', 'Transmission', 'Op', '06.76.22.62.13'),
(52, 'Ahmed EL MGHARI', 'DAI', 'P', '', ''),
(53, 'Ahmed IMILI', 'Cabinet', 'Cabinet', 'R. Bureau Ordre', ''),
(54, 'Lahoucine SABRI', 'Cabinet', 'Cabinet', 'Ad. Principal', '06.61.38.54.61'),
(55, 'Lahoucine AIT IHIA', 'Cabinet', 'Cabinet', 'Chef Cabinet', ''),
(56, 'Latifa MARGAL', 'Cabinet', 'Cabinet', 'Administrateur', '06.71.18.56.87'),
(57, 'GMOUSSA M\'barek', 'Cabinet', 'Cabinet', 'CAID', ''),
(58, 'Aicha ELARROUGUI', 'Cabinet', 'Cabinet', 'Technicienne', '06.71.18.20.54'),
(59, 'Fatima ELAAROUSSI', 'DBMRHMG', 'DBMRHMG', 'Budget G', ''),
(60, 'Mustafa BOUTAAME', 'DBMRHMG', 'DBMRHMG', 'Budget G', '06.66.85.67.41'),
(61, 'Hemma IMAALLATEN', 'DBMRHMG', 'DBMRHMG', 'Secretariatn chef DBM', '06.73.36.77.33'),
(62, 'Abdellah HILAL', 'DBMRHMG', 'DBMRHMG', 'Chef DBMRHMG', '06.66.15.73.37'),
(63, 'Gouverneur', 'Cabinet', 'Gouverneur', '', ''),
(64, 'El Madani MOUASSIS', 'DBMRHMG', 'DBMRHMG', 'service des march', ''),
(65, 'El Houssine TOUFIKA', 'DBMRHMG', 'DBMRHMG', 'service des march', '06.68.58.99.84'),
(66, 'Abdelhafid LKHOU', 'DAI', 'Passeports', 'Chef de service', ''),
(67, 'Fadma EL ASRI', 'DAI', 'Passeports', 'Pr', ''),
(68, 'Fatiha ELHADI', 'DAI', 'Passeports', 'Poste DGSN', ''),
(69, 'Mohamed ASSKOU', 'DAI', 'Passeports', 'Gestion P.P.A- Validation', ''),
(70, 'Ahmed BORJA', 'DAI', 'Passeports', 'Num', ''),
(71, 'Mustapha EL YOUSSOUFI', 'CPFA', 'Transmission', 'Chef Station Radio', ''),
(72, 'Driss MERZOUG', 'CPFA', 'EFFECTIF', 'Agent Admnistratif charg', ''),
(73, 'Mustapha ZOUBIR', 'CPFA', 'COMPTABILITE', 'Agent Admnistratif comptable', ''),
(74, 'Mohamed ALAOUI MEDAGHRI', 'CPFA', 'CPFA', 'Commandant Provincial des F.A- Cdt.M.A', ''),
(75, 'Lahoucine HAFDAOUI', 'CPFA', 'Bureau d\'Ordre', 'Agent Administratif charg', ''),
(76, 'Youssef SBAI', 'CPFA', 'SECURITE', 'SECURITE', ''),
(77, 'Hassan AIT EL CADI', 'RAMED', 'RAMED', 'Chef RAMED', ''),
(78, 'Abderrahman TAISA', 'DAS', 'Communication', 'Chef de service', '06.67.38.19.94'),
(79, 'Abdellah SAAD', 'DAS', 'DAS', 'Chef de service', '06.62.17.60.58'),
(80, 'Hssaine KOALI', 'RAMED', 'RAMED', 'Distributeur des cartes', ''),
(81, 'Abdellah BAHNINI', 'DAS', 'suivi et evaluation', 'Chef bureau', '06.60.75.44.86'),
(82, 'M\'barek ABICHMOU', 'DAS', 'AGR', 'Chef bureau', '06.67.23.30.87'),
(83, 'Yamna OTAIRA', 'DAS', 'suivi et evaluation', 'Chef de service', '06.66.04.44.56'),
(84, 'mina HAMZI', 'DAS', 'DAS', 'op', '06.77.39.03.57'),
(85, 'Abdessalam BEN SELLAM', 'DAS', 'DAS', 'Chef DAS', '06.61.63.60.87'),
(86, 'Abdelaziz SOUISSY', 'RAMED', 'Bureau', 'Reception des dossiers', ''),
(87, 'Mohamed SADIKI', 'SSIC', 'SSIC', 'Chef de service', ''),
(88, 'Brahim azafad', 'Cabinet', 'standard', 'Standardiste', '06.70.10.98.47'),
(89, 'Mohamed ID BELHAJ', 'Cabinet', 'Cabinet', 'Bureau d\'ordre central', '');

-- --------------------------------------------------------

--
-- Structure de la table `interface`
--

CREATE TABLE `interface` (
  `code_int` int(3) NOT NULL DEFAULT '0',
  `id_vlan` int(3) DEFAULT NULL,
  `code_switch` int(2) DEFAULT NULL,
  `nom_int` varchar(16) DEFAULT NULL,
  `remarque` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `interface`
--

INSERT INTO `interface` (`code_int`, `id_vlan`, `code_switch`, `nom_int`, `remarque`) VALUES
(0, NULL, NULL, NULL, NULL),
(1, 70, 11, 'FastEthernet0/22', ''),
(2, 70, 11, 'FastEthernet0/23', ''),
(3, 70, 11, 'FastEthernet0/15', ''),
(4, 70, 11, 'FastEthernet0/16', ''),
(5, 40, 11, 'FastEthernet0/19', ''),
(6, 74, 11, 'FastEthernet0/17', ''),
(7, 74, 11, 'FastEthernet0/18', ''),
(8, 54, 11, 'FastEthernet0/21', ''),
(9, 54, 11, 'FastEthernet0/20', ''),
(10, 1, 11, 'FastEthernet0/2', ''),
(11, 1, 11, 'FastEthernet0/6', ''),
(12, 1, 11, 'FastEthernet0/4', ''),
(13, 54, 11, 'FastEthernet0/1', ''),
(14, 54, 11, 'FastEthernet0/8', ''),
(15, 72, 11, 'FastEthernet0/5', ''),
(16, 54, 11, 'FastEthernet0/3', ''),
(17, 60, 11, 'FastEthernet0/24', ''),
(18, 40, 11, 'FastEthernet0/14', ''),
(19, 40, 11, 'FastEthernet0/13', ''),
(20, 40, 11, 'FastEthernet0/10', ''),
(21, 40, 11, 'FastEthernet0/11', ''),
(22, 50, 11, 'FastEthernet0/12', ''),
(23, 40, 11, 'FastEthernet0/7', ''),
(24, 40, 11, 'FastEthernet0/9', ''),
(25, 40, 10, 'FastEthernet0/11', ''),
(26, 40, 10, 'FastEthernet0/8', ''),
(27, 40, 10, 'FastEthernet0/3', ''),
(28, 40, 10, 'FastEthernet0/12', ''),
(29, 40, 10, 'FastEthernet0/13', ''),
(30, 40, 10, 'FastEthernet0/7', ''),
(31, 40, 10, 'FastEthernet0/18', ''),
(32, 40, 10, 'FastEthernet0/21', ''),
(33, 40, 10, 'FastEthernet0/20', ''),
(34, 70, 10, 'FastEthernet0/27', ''),
(35, 74, 10, 'FastEthernet0/31', ''),
(36, 74, 10, 'FastEthernet0/25', ''),
(37, 74, 10, 'FastEthernet0/29', ''),
(38, 74, 10, 'FastEthernet0/28', ''),
(39, 70, 10, 'FastEthernet0/26', ''),
(40, 70, 10, 'FastEthernet0/30', ''),
(41, 74, 10, 'FastEthernet0/5', ''),
(42, 74, 10, 'FastEthernet0/10', ''),
(43, 74, 10, 'FastEthernet0/9', ''),
(44, 74, 10, 'FastEthernet0/1', ''),
(45, 74, 10, 'FastEthernet0/6', ''),
(46, 74, 10, 'FastEthernet0/4', ''),
(47, 70, 10, 'FastEthernet0/23', ''),
(48, 70, 10, 'FastEthernet0/15', ''),
(49, 70, 10, 'FastEthernet0/22', ''),
(50, 70, 10, 'FastEthernet0/16', ''),
(51, 70, 10, 'FastEthernet0/19', ''),
(52, 70, 10, 'FastEthernet0/14', ''),
(53, 70, 10, 'FastEthernet0/24', ''),
(54, 74, 10, 'FastEthernet0/2', ''),
(55, 70, 10, 'FastEthernet0/32', ''),
(56, 70, 10, 'FastEthernet0/34', ''),
(57, 54, 10, 'FastEthernet0/38', ''),
(58, 1, 10, 'FastEthernet0/35', ''),
(59, 1, 10, 'FastEthernet0/39', ''),
(60, 1, 10, 'FastEthernet0/37', ''),
(61, 54, 10, 'FastEthernet0/42', ''),
(62, 54, 10, 'FastEthernet0/33', ''),
(63, 40, 10, 'FastEthernet0/46', ''),
(64, 40, 10, 'FastEthernet0/45', ''),
(65, 1, 10, 'FastEthernet0/36', ''),
(66, 72, 10, 'FastEthernet0/40', ''),
(67, 54, 10, 'FastEthernet0/41', ''),
(68, 54, 10, 'FastEthernet0/47', ''),
(69, 54, 10, 'FastEthernet0/17', ''),
(70, 54, 10, 'FastEthernet0/43', ''),
(71, 54, 10, 'FastEthernet0/44', ''),
(72, 60, 10, 'FastEthernet0/48', ''),
(73, 40, 9, 'FastEthernet0/42', ''),
(74, 55, 9, 'FastEthernet0/33', ''),
(75, 55, 9, 'FastEthernet0/47', ''),
(76, 55, 9, 'FastEthernet0/35', ''),
(77, 40, 9, 'FastEthernet0/31', ''),
(78, 40, 9, 'FastEthernet0/36', ''),
(79, 40, 9, 'FastEthernet0/28', ''),
(80, 40, 9, 'FastEthernet0/29', ''),
(81, 40, 9, 'FastEthernet0/26', ''),
(82, 40, 9, 'FastEthernet0/25', ''),
(83, 40, 9, 'FastEthernet0/20', ''),
(84, 51, 9, 'FastEthernet0/41', ''),
(85, 51, 9, 'FastEthernet0/34', ''),
(86, 51, 9, 'FastEthernet0/32', ''),
(87, 51, 9, 'FastEthernet0/30', ''),
(88, 51, 9, 'FastEthernet0/21', ''),
(89, 51, 9, 'FastEthernet0/24', ''),
(90, 51, 9, 'FastEthernet0/22', ''),
(91, 51, 9, 'FastEthernet0/23', ''),
(92, 51, 9, 'FastEthernet0/27', ''),
(93, 75, 8, 'FastEthernet0/5', ''),
(94, 51, 8, 'FastEthernet0/6', ''),
(95, 51, 8, 'FastEthernet0/9', ''),
(96, 51, 8, 'FastEthernet0/7', ''),
(97, 51, 8, 'FastEthernet0/11', ''),
(98, 51, 8, 'FastEthernet0/2', ''),
(99, 51, 8, 'FastEthernet0/4', ''),
(100, 50, 8, 'FastEthernet0/15', ''),
(101, 50, 8, 'FastEthernet0/13', ''),
(102, 50, 8, 'FastEthernet0/12', ''),
(103, 51, 8, 'FastEthernet0/10', ''),
(104, 51, 8, 'FastEthernet0/14', ''),
(105, 51, 8, 'FastEthernet0/8', ''),
(106, 51, 8, 'FastEthernet0/17', ''),
(107, 50, 8, 'FastEthernet0/19', ''),
(108, 50, 8, 'FastEthernet0/18', ''),
(109, 77, 7, 'FastEthernet0/3', ''),
(110, 75, 7, 'FastEthernet0/37', ''),
(111, 96, 7, 'FastEthernet0/38', ''),
(112, 96, 7, 'FastEthernet0/39', ''),
(113, 96, 7, 'FastEthernet0/40', ''),
(114, 96, 7, 'FastEthernet0/44', ''),
(115, 172, 7, 'FastEthernet0/48', ''),
(116, 75, 7, 'FastEthernet0/1', ''),
(117, 96, 7, 'FastEthernet0/46', ''),
(118, 96, 7, 'FastEthernet0/45', ''),
(119, 96, 7, 'FastEthernet0/43', ''),
(120, 40, 7, 'FastEthernet0/16', ''),
(121, 77, 6, 'FastEthernet0/7', ''),
(122, 40, 6, 'FastEthernet0/12', ''),
(123, 40, 6, 'FastEthernet0/8', ''),
(124, 40, 6, 'FastEthernet0/11', ''),
(125, 40, 6, 'FastEthernet0/9', ''),
(126, 40, 6, 'FastEthernet0/10', ''),
(127, 55, 5, 'FastEthernet0/6', ''),
(128, 55, 5, 'FastEthernet0/5', ''),
(129, 40, 5, 'FastEthernet0/3', ''),
(130, 40, 5, 'FastEthernet0/4', ''),
(131, 40, 5, 'FastEthernet0/2', ''),
(132, 51, 5, 'FastEthernet0/1', ''),
(133, 75, 4, 'FastEthernet0/28', ''),
(134, 100, 4, 'FastEthernet0/13', ''),
(135, 75, 4, 'FastEthernet0/32', ''),
(136, 75, 4, 'FastEthernet0/35', ''),
(137, 75, 4, 'FastEthernet0/37', ''),
(138, 40, 4, 'FastEthernet0/42', ''),
(139, 40, 4, 'FastEthernet0/23', ''),
(140, 40, 4, 'FastEthernet0/30', ''),
(141, 40, 4, 'FastEthernet0/24', ''),
(142, 40, 4, 'FastEthernet0/26', ''),
(143, 40, 4, 'FastEthernet0/25', ''),
(144, 40, 4, 'FastEthernet0/31', ''),
(145, 75, 4, 'FastEthernet0/39', ''),
(146, 50, 4, 'FastEthernet0/21', ''),
(147, 50, 4, 'FastEthernet0/22', ''),
(148, 50, 4, 'FastEthernet0/29', ''),
(149, 40, 4, 'FastEthernet0/27', ''),
(150, 40, 4, 'FastEthernet0/33', ''),
(151, 40, 4, 'FastEthernet0/34', ''),
(152, 40, 4, 'FastEthernet0/36', ''),
(153, 50, 4, 'FastEthernet0/38', ''),
(154, 50, 4, 'FastEthernet0/40', ''),
(155, 50, 4, 'FastEthernet0/44', ''),
(156, 50, 4, 'FastEthernet0/43', ''),
(157, 50, 4, 'FastEthernet0/41', ''),
(158, 1, 3, 'FastEthernet0/6', ''),
(159, 72, 3, 'FastEthernet0/2', ''),
(160, 72, 3, 'FastEthernet0/16', ''),
(161, 72, 3, 'FastEthernet0/14', ''),
(162, 75, 3, 'FastEthernet0/17', ''),
(163, 73, 3, 'FastEthernet0/18', ''),
(164, 40, 3, 'FastEthernet0/5', ''),
(165, 40, 3, 'FastEthernet0/3', ''),
(166, 40, 3, 'FastEthernet0/1', ''),
(167, 40, 3, 'FastEthernet0/12', ''),
(168, 1, 3, 'FastEthernet0/9', ''),
(169, 40, 3, 'FastEthernet0/4', ''),
(170, 40, 3, 'FastEthernet0/7', ''),
(171, 40, 3, 'FastEthernet0/10', ''),
(172, 40, 3, 'FastEthernet0/11', ''),
(173, 40, 3, 'FastEthernet0/8', ''),
(174, 40, 3, 'FastEthernet0/19', ''),
(175, 72, 3, 'FastEthernet0/20', ''),
(176, 72, 3, 'FastEthernet0/15', ''),
(177, 75, 2, 'FastEthernet0/23', ''),
(178, 88, 2, 'FastEthernet0/26', ''),
(179, 40, 2, 'FastEthernet0/24', ''),
(180, 75, 2, 'FastEthernet0/21', ''),
(181, 75, 2, 'FastEthernet0/30', ''),
(182, 76, 2, 'FastEthernet0/27', ''),
(183, 76, 2, 'FastEthernet0/28', ''),
(184, 96, 2, 'FastEthernet0/46', ''),
(185, 96, 2, 'FastEthernet0/45', ''),
(186, 51, 1, 'FastEthernet0/32', ''),
(187, 51, 1, 'FastEthernet0/35', ''),
(188, 40, 1, 'FastEthernet0/20', ''),
(189, 40, 1, 'FastEthernet0/42', ''),
(190, 40, 1, 'FastEthernet0/19', ''),
(191, 40, 1, 'FastEthernet0/41', ''),
(192, 40, 1, 'FastEthernet0/38', ''),
(193, 40, 1, 'FastEthernet0/22', ''),
(194, 54, 1, 'FastEthernet0/31', ''),
(195, 54, 1, 'FastEthernet0/36', ''),
(196, 73, 1, 'FastEthernet0/29', ''),
(197, 73, 1, 'FastEthernet0/37', ''),
(198, 73, 1, 'FastEthernet0/25', ''),
(199, 73, 1, 'FastEthernet0/34', ''),
(200, 73, 1, 'FastEthernet0/33', ''),
(201, 72, 1, 'FastEthernet0/40', ''),
(202, 72, 1, 'FastEthernet0/43', ''),
(203, 72, 1, 'FastEthernet0/39', '');

-- --------------------------------------------------------

--
-- Structure de la table `local_technique`
--

CREATE TABLE `local_technique` (
  `code_local` int(1) NOT NULL,
  `nom_local` varchar(4) DEFAULT NULL,
  `etage` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `local_technique`
--

INSERT INTO `local_technique` (`code_local`, `nom_local`, `etage`) VALUES
(1, 'LTP', '1 ER'),
(2, 'LTS1', '1 ER'),
(3, 'LTP', '2 EME'),
(4, 'LTS1', '2 EME'),
(5, 'LTS1', 'RDC'),
(6, 'LTS2', 'RDC');

-- --------------------------------------------------------

--
-- Structure de la table `password`
--

CREATE TABLE `password` (
  `password` int(6) NOT NULL,
  `nom_communaute` varchar(7) DEFAULT NULL,
  `login` varchar(255) NOT NULL DEFAULT 'brahim'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `password`
--

INSERT INTO `password` (`password`, `nom_communaute`, `login`) VALUES
(123, 'private', 'brahim');

-- --------------------------------------------------------

--
-- Structure de la table `prise`
--

CREATE TABLE `prise` (
  `code_prise` int(3) NOT NULL DEFAULT '0',
  `code_local` int(1) DEFAULT NULL,
  `code_int` int(3) DEFAULT NULL,
  `code_emp` int(2) DEFAULT NULL,
  `nom_prise` varchar(3) DEFAULT NULL,
  `statut` varchar(1) DEFAULT NULL,
  `nom_pc` varchar(255) NOT NULL DEFAULT 'PC_E'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `prise`
--

INSERT INTO `prise` (`code_prise`, `code_local`, `code_int`, `code_emp`, `nom_prise`, `statut`, `nom_pc`) VALUES
(0, NULL, NULL, NULL, NULL, NULL, 'PC_E'),
(1, 6, 1, 0, 'A39', 'R', 'PC_E'),
(2, 6, 2, 0, 'A45', 'R', 'PC_E'),
(3, 6, 3, 86, 'B35', 'R', 'PC_E'),
(4, 6, 4, 86, 'B36', 'R', 'PC_E'),
(5, 6, 5, 0, 'A03', 'R', 'PC_E'),
(6, 6, 6, 0, 'A15', 'R', 'PC_E'),
(7, 6, 7, 0, 'A25', 'R', 'PC_E'),
(8, 6, 8, 87, 'A46', 'R', 'PC_E'),
(9, 6, 9, 87, 'A48', 'R', 'PC_E'),
(10, 6, 10, 0, 'B03', 'R', 'PC_E'),
(11, 6, 11, 0, 'B04', 'R', 'PC_E'),
(12, 6, 12, 0, 'B05', 'R', 'PC_E'),
(13, 6, 13, 0, 'B25', 'R', 'PC_E'),
(14, 6, 14, 0, 'B27', 'R', 'PC_E'),
(15, 6, 15, 0, 'B28', 'R', 'PC_E'),
(16, 6, 16, 0, 'B29', 'R', 'PC_E'),
(17, 6, 17, 0, 'B30', 'R', 'PC_E'),
(18, 6, 18, 0, 'B31', 'R', 'PC_E'),
(19, 6, 19, 0, 'B32', 'R', 'PC_E'),
(20, 6, 20, 0, 'B33', 'R', 'PC_E'),
(21, 6, 21, 0, 'B34', 'R', 'PC_E'),
(22, 6, 22, 88, 'B37', 'R', 'PC_E'),
(23, 6, 23, 89, 'B39', 'R', 'PC_E'),
(24, 6, 24, 0, 'B41', 'R', 'PC_E'),
(25, 6, 25, 71, 'A01', 'R', 'PC_E'),
(26, 6, 26, 71, 'A02', 'R', 'PC_E'),
(27, 6, 27, 72, 'A05', 'R', 'PC_E'),
(28, 6, 28, 73, 'A06', 'R', 'PC_E'),
(29, 6, 29, 74, 'A07', 'R', 'PC_E'),
(30, 6, 30, 74, 'A09', 'R', 'PC_E'),
(31, 6, 31, 75, 'A11', 'R', 'PC_E'),
(32, 6, 32, 76, 'A12', 'R', 'PC_E'),
(33, 6, 33, 76, 'A14', 'R', 'PC_E'),
(34, 6, 34, 77, 'A18', 'R', 'PC_E'),
(35, 6, 35, 78, 'A19', 'R', 'PC_E'),
(36, 6, 36, 78, 'A20', 'R', 'PC_E'),
(37, 6, 37, 79, 'A21', 'R', 'PC_E'),
(38, 6, 38, 79, 'A22', 'R', 'PC_E'),
(39, 6, 39, 80, 'A23', 'R', 'PC_E'),
(40, 6, 40, 80, 'A24', 'R', 'PC_E'),
(41, 6, 41, 81, 'A27', 'R', 'PC_E'),
(42, 6, 42, 82, 'A28', 'R', 'PC_E'),
(43, 6, 43, 83, 'A30', 'R', 'PC_E'),
(44, 6, 44, 84, 'A31', 'R', 'PC_E'),
(45, 6, 45, 85, 'A33', 'R', 'PC_E'),
(46, 6, 46, 85, 'A34', 'R', 'PC_E'),
(47, 6, 47, 0, 'A36', 'R', 'PC_E'),
(48, 6, 48, 0, 'A37', 'R', 'PC_E'),
(49, 6, 49, 0, 'A38', 'R', 'PC_E'),
(50, 6, 50, 0, 'A40', 'R', 'PC_E'),
(51, 6, 51, 0, 'A41', 'R', 'PC_E'),
(52, 6, 52, 0, 'A42', 'R', 'PC_E'),
(53, 6, 53, 0, 'A43', 'R', 'PC_E'),
(54, 6, 54, 84, 'A32', 'R', 'PC_E'),
(55, 6, 55, 0, 'B06', 'R', 'PC_E'),
(56, 6, 56, 0, 'B07', 'R', 'PC_E'),
(57, 6, 57, 0, 'B08', 'R', 'PC_E'),
(58, 6, 58, 0, 'B09', 'R', 'PC_E'),
(59, 6, 59, 0, 'B10', 'R', 'PC_E'),
(60, 6, 60, 0, 'B11', 'R', 'PC_E'),
(61, 6, 61, 0, 'B12', 'R', 'PC_E'),
(62, 6, 62, 0, 'B13', 'R', 'PC_E'),
(63, 6, 63, 0, 'B14', 'R', 'PC_E'),
(64, 6, 64, 0, 'B15', 'R', 'PC_E'),
(65, 6, 65, 0, 'B16', 'R', 'PC_E'),
(66, 6, 66, 0, 'B17', 'R', 'PC_E'),
(67, 6, 67, 0, 'B18', 'R', 'PC_E'),
(68, 6, 68, 0, 'B19', 'R', 'PC_E'),
(69, 6, 69, 0, 'B20', 'R', 'PC_E'),
(70, 6, 70, 0, 'B21', 'R', 'PC_E'),
(71, 6, 71, 0, 'B22', 'R', 'PC_E'),
(72, 6, 72, 0, 'B24', 'R', 'PC_E'),
(73, 2, 73, 0, 'A07', 'R', 'PC_E'),
(74, 2, 74, 0, 'A09', 'R', 'PC_E'),
(75, 2, 75, 0, 'A10', 'R', 'PC_E'),
(76, 2, 76, 0, 'A11', 'R', 'PC_E'),
(77, 2, 77, 0, 'A13', 'R', 'PC_E'),
(78, 2, 78, 0, 'A14', 'R', 'PC_E'),
(79, 2, 79, 0, 'A15', 'R', 'PC_E'),
(80, 2, 80, 0, 'A17', 'R', 'PC_E'),
(81, 2, 81, 0, 'A19', 'R', 'PC_E'),
(82, 2, 82, 0, 'A21', 'R', 'PC_E'),
(83, 2, 83, 0, 'A23', 'R', 'PC_E'),
(84, 2, 84, 34, 'A30', 'R', 'PC_E'),
(85, 2, 85, 35, 'A32', 'R', 'PC_E'),
(86, 2, 86, 35, 'A33', 'R', 'PC_E'),
(87, 2, 87, 0, 'A35', 'R', 'PC_E'),
(88, 2, 88, 0, 'A37', 'R', 'PC_E'),
(89, 2, 89, 36, 'A39', 'R', 'PC_E'),
(90, 2, 90, 37, 'A41', 'R', 'PC_E'),
(91, 2, 91, 38, 'A42', 'R', 'PC_E'),
(92, 2, 92, 39, 'A44', 'R', 'PC_E'),
(93, 4, 93, 0, 'B02', 'R', 'PC_E'),
(94, 4, 94, 59, 'B03', 'R', 'PC_E'),
(95, 4, 95, 60, 'B05', 'R', 'PC_E'),
(96, 4, 96, 60, 'B06', 'R', 'PC_E'),
(97, 4, 97, 61, 'B09', 'R', 'PC_E'),
(98, 4, 98, 62, 'B10', 'R', 'PC_E'),
(99, 4, 99, 62, 'B12', 'R', 'PC_E'),
(100, 4, 100, 0, 'B21', 'R', 'PC_E'),
(101, 4, 101, 63, 'B23', 'R', 'PC_E'),
(102, 4, 102, 0, 'B25', 'R', 'PC_E'),
(103, 4, 103, 64, 'B13', 'R', 'PC_E'),
(104, 4, 104, 65, 'B15', 'R', 'PC_E'),
(105, 4, 105, 65, 'B16', 'R', 'PC_E'),
(106, 4, 106, 65, 'B17', 'R', 'PC_E'),
(107, 4, 107, 0, 'B18', 'R', 'PC_E'),
(108, 4, 108, 0, 'B19', 'R', 'PC_E'),
(109, 5, 109, 0, 'B27', 'R', 'PC_E'),
(110, 5, 110, 66, 'B28', 'R', 'PC_E'),
(111, 5, 111, 66, 'B29', 'R', 'PC_E'),
(112, 5, 112, 66, 'B30', 'R', 'PC_E'),
(113, 5, 113, 0, 'B31', 'R', 'PC_E'),
(114, 5, 114, 67, 'B32', 'R', 'PC_E'),
(115, 5, 115, 68, 'B33', 'R', 'PC_E'),
(116, 5, 116, 69, 'B35', 'R', 'PC_E'),
(117, 5, 117, 69, 'B36', 'R', 'PC_E'),
(118, 5, 118, 43, 'B38', 'R', 'PC_E'),
(119, 5, 119, 70, 'B39', 'R', 'PC_E'),
(120, 5, 120, 0, 'B41', 'R', 'PC_E'),
(121, 5, 121, 0, 'B26', 'R', 'PC_E'),
(122, 5, 122, 0, 'B43', 'R', 'PC_E'),
(123, 5, 123, 0, 'B44', 'R', 'PC_E'),
(124, 5, 124, 0, 'B45', 'R', 'PC_E'),
(125, 5, 125, 0, 'B46', 'R', 'PC_E'),
(126, 5, 126, 0, 'B48', 'R', 'PC_E'),
(127, 2, 127, 0, 'A01', 'R', 'PC_E'),
(128, 2, 128, 0, 'A03', 'R', 'PC_E'),
(129, 2, 129, 0, 'A04', 'R', 'PC_E'),
(130, 2, 130, 0, 'A05', 'R', 'PC_E'),
(131, 2, 131, 0, 'A25', 'R', 'PC_E'),
(132, 2, 132, 33, 'A27', 'R', 'PC_E'),
(133, 3, 133, 0, 'B10', 'R', 'PC_E'),
(134, 3, 134, 0, 'B11', 'R', 'PC_E'),
(135, 3, 135, 40, 'B13', 'R', 'PC_E'),
(136, 3, 136, 41, 'B15', 'R', 'PC_E'),
(137, 3, 137, 42, 'B17', 'R', 'PC_E'),
(138, 3, 138, 0, 'B20', 'R', 'PC_E'),
(139, 3, 139, 0, 'B25', 'R', 'PC_E'),
(140, 3, 140, 0, 'B31', 'R', 'PC_E'),
(141, 3, 141, 47, 'B01', 'R', 'PC_E'),
(142, 3, 142, 48, 'B02', 'R', 'PC_E'),
(143, 3, 143, 49, 'B03', 'R', 'PC_E'),
(144, 3, 144, 0, 'B07', 'R', 'PC_E'),
(145, 3, 145, 52, 'B23', 'R', 'PC_E'),
(146, 3, 146, 53, 'B27', 'R', 'PC_E'),
(147, 3, 147, 54, 'B29', 'R', 'PC_E'),
(148, 3, 148, 55, 'B33', 'R', 'PC_E'),
(149, 3, 149, 0, 'B36', 'R', 'PC_E'),
(150, 3, 150, 0, 'B37', 'R', 'PC_E'),
(151, 3, 151, 0, 'B39', 'R', 'PC_E'),
(152, 3, 152, 0, 'B40', 'R', 'PC_E'),
(153, 3, 153, 56, 'B42', 'R', 'PC_E'),
(154, 3, 154, 56, 'B44', 'R', 'PC_E'),
(155, 3, 155, 0, 'B45', 'R', 'PC_E'),
(156, 3, 156, 0, 'B46', 'R', 'PC_E'),
(157, 3, 157, 57, 'B47', 'R', 'PC_E'),
(158, 1, 158, 0, 'C01', 'R', 'PC_E'),
(159, 1, 159, 0, 'C03', 'R', 'PC_E'),
(160, 1, 160, 24, 'C17', 'R', 'PC_E'),
(161, 1, 161, 10, 'C19', 'R', 'PC_E'),
(162, 1, 162, 11, 'C21', 'R', 'PC_E'),
(163, 1, 163, 12, 'C23', 'R', 'PC_E'),
(164, 1, 164, 0, 'C25', 'R', 'PC_E'),
(166, 1, 165, 13, 'C29', 'R', 'PC_E'),
(167, 1, 166, 14, 'C31', 'R', 'PC_E'),
(168, 1, 167, 16, 'C33', 'R', 'PC_E'),
(169, 1, 168, 18, 'C34', 'R', 'PC_E'),
(170, 1, 169, 26, 'C06', 'R', 'PC_E'),
(171, 1, 170, 27, 'C07', 'R', 'PC_E'),
(172, 1, 171, 28, 'C09', 'R', 'PC_E'),
(173, 1, 172, 29, 'C10', 'R', 'PC_E'),
(174, 1, 173, 30, 'C11', 'R', 'PC_E'),
(175, 1, 174, 30, 'C12', 'R', 'PC_E'),
(176, 1, 175, 31, 'C14', 'R', 'PC_E'),
(177, 1, 176, 32, 'C16', 'R', 'PC_E'),
(178, 3, 177, 43, 'A05', 'R', 'PC_E'),
(179, 3, 178, 44, 'A01', 'R', 'PC_E'),
(180, 3, 179, 45, 'A03', 'R', 'PC_E'),
(181, 3, 180, 45, 'A07', 'R', 'PC_E'),
(182, 3, 181, 0, 'A09', 'R', 'PC_E'),
(183, 3, 182, 0, 'A11', 'R', 'PC_E'),
(184, 3, 183, 46, 'A12', 'R', 'PC_E'),
(185, 3, 184, 50, 'B04', 'R', 'PC_E'),
(186, 1, 185, 51, 'B05', 'R', 'PC_E'),
(187, 1, 186, 1, 'A15', 'R', 'PC_E'),
(188, 1, 187, 1, 'A17', 'R', 'PC_E'),
(189, 1, 188, 2, 'A19', 'R', 'PC_E'),
(190, 1, 189, 2, 'A20', 'R', 'PC_E'),
(191, 1, 190, 3, 'A23', 'R', 'PC_E'),
(192, 1, 191, 4, 'A24', 'R', 'PC_E'),
(193, 1, 192, 6, 'A27', 'R', 'PC_E'),
(194, 1, 193, 9, 'A30', 'R', 'PC_E'),
(195, 1, 194, 0, 'A39', 'R', 'PC_E'),
(196, 1, 195, 0, 'A40', 'R', 'PC_E'),
(197, 1, 196, 19, 'A33', 'R', 'PC_E'),
(198, 1, 197, 20, 'A35', 'R', 'PC_E'),
(199, 1, 198, 21, 'A37', 'R', 'PC_E'),
(200, 1, 199, 22, 'A38', 'R', 'PC_E'),
(201, 1, 200, 23, 'A41', 'R', 'PC_E'),
(202, 1, 201, 24, 'A44', 'R', 'PC_E'),
(203, 1, 202, 25, 'A46', 'R', 'PC_E'),
(204, 1, 203, 25, 'A48', 'R', 'PC_E'),
(205, 6, 0, 77, 'A17', 'L', 'PC_E'),
(206, 6, 0, 83, 'A29', 'L', 'PC_E'),
(207, 6, 0, 85, 'A35', 'L', 'PC_E'),
(208, 6, 0, 0, 'A44', 'L', 'PC_E'),
(209, 6, 0, 0, 'A04', 'L', 'PC_E'),
(210, 6, 0, 0, 'A08', 'L', 'PC_E'),
(211, 6, 0, 0, 'A10', 'L', 'PC_E'),
(212, 6, 0, 0, 'A13', 'L', 'PC_E'),
(213, 6, 0, 0, 'A16', 'L', 'PC_E'),
(214, 6, 0, 0, 'A26', 'L', 'PC_E'),
(215, 6, 0, 87, 'A47', 'L', 'PC_E'),
(216, 6, 0, 0, 'B01', 'L', 'PC_E'),
(217, 6, 0, 0, 'B02', 'L', 'PC_E'),
(218, 6, 0, 0, 'B23', 'L', 'PC_E'),
(219, 6, 0, 0, 'B26', 'L', 'PC_E'),
(220, 6, 0, 89, 'B40', 'L', 'PC_E'),
(221, 6, 0, 0, 'B42', 'L', 'PC_E'),
(222, 5, 0, 0, 'A45', 'L', 'PC_E'),
(223, 5, 0, 0, 'A46', 'L', 'PC_E'),
(224, 5, 0, 0, 'A47', 'L', 'PC_E'),
(225, 5, 0, 0, 'B34', 'L', 'PC_E'),
(226, 5, 0, 0, 'B37', 'L', 'PC_E'),
(227, 5, 0, 0, 'B40', 'L', 'PC_E'),
(228, 4, 0, 0, 'B01', 'L', 'PC_E'),
(229, 4, 0, 59, 'B04', 'L', 'PC_E'),
(230, 4, 0, 0, 'B07', 'L', 'PC_E'),
(231, 4, 0, 0, 'B20', 'L', 'PC_E'),
(232, 4, 0, 0, 'B22', 'L', 'PC_E'),
(233, 4, 0, 0, 'B24', 'L', 'PC_E'),
(234, 4, 0, 0, 'B14', 'L', 'PC_E'),
(235, 3, 0, 0, 'A06', 'L', 'PC_E'),
(236, 3, 0, 0, 'A08', 'L', 'PC_E'),
(237, 3, 0, 0, 'A13', 'L', 'PC_E'),
(238, 3, 0, 0, 'A14', 'L', 'PC_E'),
(239, 3, 0, 0, 'B09', 'L', 'PC_E'),
(240, 3, 0, 40, 'B12', 'L', 'PC_E'),
(241, 3, 0, 41, 'B14', 'L', 'PC_E'),
(242, 3, 0, 42, 'B16', 'L', 'PC_E'),
(243, 3, 0, 42, 'B18', 'L', 'PC_E'),
(244, 3, 0, 0, 'B19', 'L', 'PC_E'),
(245, 3, 0, 0, 'B21', 'L', 'PC_E'),
(246, 3, 0, 0, 'B24', 'L', 'PC_E'),
(247, 3, 0, 43, 'A02', 'L', 'PC_E'),
(248, 3, 0, 44, 'A04', 'L', 'PC_E'),
(249, 3, 0, 0, 'A10', 'L', 'PC_E'),
(250, 3, 0, 51, 'B06', 'L', 'PC_E'),
(251, 3, 0, 0, 'B08', 'L', 'PC_E'),
(252, 3, 0, 52, 'B22', 'L', 'PC_E'),
(253, 3, 0, 53, 'B26', 'L', 'PC_E'),
(254, 3, 0, 54, 'B28', 'L', 'PC_E'),
(255, 3, 0, 54, 'B30', 'L', 'PC_E'),
(256, 3, 0, 55, 'B32', 'L', 'PC_E'),
(257, 3, 0, 55, 'B34', 'L', 'PC_E'),
(258, 3, 0, 0, 'B35', 'L', 'PC_E'),
(259, 3, 0, 0, 'B38', 'L', 'PC_E'),
(260, 3, 0, 0, 'B41', 'L', 'PC_E'),
(261, 3, 0, 56, 'B43', 'L', 'PC_E'),
(262, 3, 0, 58, 'B48', 'L', 'PC_E'),
(263, 2, 0, 0, 'A02', 'L', 'PC_E'),
(264, 2, 0, 0, 'A06', 'L', 'PC_E'),
(265, 2, 0, 0, 'A08', 'L', 'PC_E'),
(266, 2, 0, 0, 'A12', 'L', 'PC_E'),
(267, 2, 0, 0, 'A16', 'L', 'PC_E'),
(268, 2, 0, 0, 'A18', 'L', 'PC_E'),
(269, 2, 0, 0, 'A20', 'L', 'PC_E'),
(270, 2, 0, 0, 'A22', 'L', 'PC_E'),
(271, 2, 0, 0, 'A24', 'L', 'PC_E'),
(272, 2, 0, 0, 'A26', 'L', 'PC_E'),
(273, 2, 0, 33, 'A28', 'L', 'PC_E'),
(274, 2, 0, 34, 'A29', 'L', 'PC_E'),
(275, 2, 0, 34, 'A31', 'L', 'PC_E'),
(276, 2, 0, 0, 'A34', 'L', 'PC_E'),
(277, 2, 0, 0, 'A36', 'L', 'PC_E'),
(278, 2, 0, 36, 'A38', 'L', 'PC_E'),
(279, 2, 0, 37, 'A40', 'L', 'PC_E'),
(280, 2, 0, 38, 'A43', 'L', 'PC_E'),
(281, 1, 0, 1, 'A16', 'L', 'PC_E'),
(282, 1, 0, 0, 'A18', 'L', 'PC_E'),
(283, 1, 0, 0, 'A21', 'L', 'PC_E'),
(284, 1, 0, 0, 'A22', 'L', 'PC_E'),
(285, 1, 0, 0, 'A25', 'L', 'PC_E'),
(286, 1, 0, 0, 'A26', 'L', 'PC_E'),
(287, 1, 0, 0, 'A28', 'L', 'PC_E'),
(288, 1, 0, 0, 'A29', 'L', 'PC_E'),
(289, 1, 0, 0, 'A31', 'L', 'PC_E'),
(290, 1, 0, 0, 'A43', 'L', 'PC_E'),
(291, 1, 0, 0, 'A45', 'L', 'PC_E'),
(292, 1, 0, 0, 'A47', 'L', 'PC_E'),
(293, 1, 0, 0, 'C02', 'L', 'PC_E'),
(294, 1, 0, 0, 'C04', 'L', 'PC_E'),
(295, 1, 0, 0, 'C05', 'L', 'PC_E'),
(296, 1, 0, 0, 'C08', 'L', 'PC_E'),
(297, 1, 0, 0, 'C13', 'L', 'PC_E'),
(298, 1, 0, 0, 'C18', 'L', 'PC_E'),
(299, 1, 0, 0, 'C20', 'L', 'PC_E'),
(300, 1, 0, 0, 'C22', 'L', 'PC_E'),
(301, 1, 0, 0, 'C24', 'L', 'PC_E'),
(302, 1, 0, 0, 'C26', 'L', 'PC_E'),
(303, 1, 0, 13, 'C28', 'L', 'PC_E'),
(304, 1, 0, 0, 'C30', 'L', 'PC_E'),
(305, 1, 0, 0, 'C32', 'L', 'PC_E'),
(306, 1, 0, 0, 'C35', 'L', 'PC_E'),
(307, 1, 0, 19, 'A32', 'L', 'PC_E'),
(308, 1, 0, 19, 'A34', 'L', 'PC_E'),
(309, 1, 0, 0, 'A36', 'L', 'PC_E'),
(310, 1, 0, 23, 'A42', 'L', 'PC_E'),
(311, 1, 0, 0, 'C15', 'L', 'PC_E');

-- --------------------------------------------------------

--
-- Structure de la table `switch`
--

CREATE TABLE `switch` (
  `code_switch` int(2) NOT NULL,
  `nom_switch` varchar(15) DEFAULT NULL,
  `adresse_ip` varchar(10) DEFAULT NULL,
  `nbre_port` int(2) DEFAULT NULL,
  `code_local` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `switch`
--

INSERT INTO `switch` (`code_switch`, `nom_switch`, `adresse_ip`, `nbre_port`, `code_local`) VALUES
(1, 'SW1-SM-19.2.2', '10.19.2.2', 48, 1),
(2, 'SW1-SM-19.2.2', '10.19.2.2', 48, 3),
(3, 'SW2-SM-19.2.3', '10.19.2.3', 48, 1),
(4, 'SW2-SM-19.2.3', '10.19.2.3', 48, 3),
(5, 'SW2-LT1-19.2.11', '10.19.2.11', 24, 2),
(6, 'SW2-LT1-19.2.11', '10.19.2.11', 24, 5),
(7, 'SW1-LT1-19.2.10', '10.19.2.10', 48, 5),
(8, 'SW1-LT1-19.2.10', '10.19.2.10', 48, 4),
(9, 'SW1-LT1-19.2.10', '10.19.2.10', 48, 2),
(10, 'SW1-LT2-19.2.20', '10.19.2.20', 48, 6),
(11, 'SW2-LT2-19.2.21', '10.19.2.21', 24, 6);

-- --------------------------------------------------------

--
-- Structure de la table `vlan`
--

CREATE TABLE `vlan` (
  `id_vlan` int(3) NOT NULL DEFAULT '0',
  `nom_vlan` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `vlan`
--

INSERT INTO `vlan` (`id_vlan`, `nom_vlan`) VALUES
(0, NULL),
(1, 'DCL'),
(20, 'ADMINISTRATION DES COMMUTATEURS'),
(30, 'VLAN NIVEAU 2'),
(40, 'UTILISATEURS LOCAUX'),
(50, 'CABINET GOUVERNEUR'),
(51, 'DRH'),
(52, 'DUE'),
(53, 'TRANSMISSION LOCAL'),
(54, 'DSIC'),
(55, 'DIVISION 2'),
(56, 'DIVISION 3'),
(57, 'DIVISION 4'),
(60, 'SERVEURS'),
(70, 'RAMED1'),
(71, 'RAMED2'),
(72, 'DCAE'),
(73, 'DAR'),
(74, 'DAS'),
(75, 'DAI'),
(76, 'ELECTION & PELERINAGE'),
(77, 'PROMOTION NATIONALE'),
(88, 'vlan-trans-2'),
(90, 'INTERCONNEXION '),
(96, 'PASSEPORT BIOMETRIQUE & TRANSMISSION'),
(100, 'MONITORING'),
(172, 'PASSEPORT ORDINAIRE'),
(600, 'REPLICATION SERVEURS');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`code_emp`);

--
-- Index pour la table `interface`
--
ALTER TABLE `interface`
  ADD PRIMARY KEY (`code_int`),
  ADD KEY `id_vlan` (`id_vlan`),
  ADD KEY `code_switch` (`code_switch`);

--
-- Index pour la table `local_technique`
--
ALTER TABLE `local_technique`
  ADD PRIMARY KEY (`code_local`);

--
-- Index pour la table `password`
--
ALTER TABLE `password`
  ADD PRIMARY KEY (`password`);

--
-- Index pour la table `prise`
--
ALTER TABLE `prise`
  ADD PRIMARY KEY (`code_prise`),
  ADD KEY `code_local` (`code_local`),
  ADD KEY `code_int` (`code_int`),
  ADD KEY `code_emp` (`code_emp`);

--
-- Index pour la table `switch`
--
ALTER TABLE `switch`
  ADD PRIMARY KEY (`code_switch`);

--
-- Index pour la table `vlan`
--
ALTER TABLE `vlan`
  ADD PRIMARY KEY (`id_vlan`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `interface`
--
ALTER TABLE `interface`
  ADD CONSTRAINT `interface_ibfk_1` FOREIGN KEY (`id_vlan`) REFERENCES `vlan` (`id_vlan`) ON UPDATE CASCADE,
  ADD CONSTRAINT `interface_ibfk_2` FOREIGN KEY (`code_switch`) REFERENCES `switch` (`code_switch`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `prise`
--
ALTER TABLE `prise`
  ADD CONSTRAINT `prise_ibfk_1` FOREIGN KEY (`code_local`) REFERENCES `local_technique` (`code_local`) ON UPDATE CASCADE,
  ADD CONSTRAINT `prise_ibfk_2` FOREIGN KEY (`code_int`) REFERENCES `interface` (`code_int`) ON UPDATE CASCADE,
  ADD CONSTRAINT `prise_ibfk_3` FOREIGN KEY (`code_emp`) REFERENCES `employe` (`code_emp`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
