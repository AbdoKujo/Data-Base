-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 09 déc. 2024 à 22:19
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `2`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `IdArticle` int NOT NULL AUTO_INCREMENT,
  `Designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Prix_Unit` float NOT NULL,
  `Qtestock` int NOT NULL,
  PRIMARY KEY (`IdArticle`)
) ENGINE=InnoDB AUTO_INCREMENT=445 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`IdArticle`, `Designation`, `Prix_Unit`, `Qtestock`) VALUES
(200, 'Tapis', 100, 30),
(201, 'Lecteur Disk', 1025.7, 2),
(202, 'Imprimante Matricielle', 3210.25, 15),
(203, 'Imprimante Lazer', 7000, 2),
(204, 'Souris', 700, 10),
(205, 'Disque Dur', 1200, 9),
(207, 'Imprimante Jet d\'encre', 5524.5, 6),
(208, 'Clavier', 3000, 27),
(209, 'Carte Vidéo', 220.5, 3),
(210, 'Modem', 3420.5, 12),
(212, 'CD.ROM', 310, 10),
(213, 'Carte Mère', 725.6, 7),
(214, 'Scanner', 12000, 4),
(217, 'Kit Multimédia', 325, 15),
(222, 'Mise à jour Office 2016', 3020, 5),
(301, 'Serveur HP', 14720, 5),
(444, 'Ordinateur HP', 15000, 2);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `IdClient` int NOT NULL AUTO_INCREMENT,
  `Nom` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `Adresse` varchar(70) COLLATE utf8mb4_general_ci NOT NULL,
  `Ville` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Téléphone` varchar(35) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`IdClient`)
) ENGINE=InnoDB AUTO_INCREMENT=998751 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`IdClient`, `Nom`, `Adresse`, `Ville`, `Téléphone`) VALUES
(21489, 'SAHEL', '6 Bd Hassany', 'Rabat', '(0537) 95.25.14'),
(23156, 'MIKOU', '15 Bd 2 Mars', 'Ouarzazate', '(0522) 94.22.36'),
(57423, 'ADAMI', '27 Bd Zerktouni', 'Ouarzazate', '(0522) 30.34.55'),
(80877, 'CHENAOUI', '28 Bd Md V', 'Ouarzazate', '(0522) 43.02.57'),
(105874, 'ALAOUI', '73 Avenue Lala Yacout', 'Ouarzazate', '(0522) 29.65.14'),
(110175, 'BENYAHYA', '23 Rue La Fayette', 'Ouarzazate', '(0522) 30.28.51'),
(210279, 'CHAKIR', '354 Bd D\'Anfa', 'Ouarzazate', '(0522) 90.31.07'),
(326598, 'BENMOUSSA', '13 Bd My Ismail', 'Ouarzazate', '(0522) 32.12.55'),
(336941, 'BENAZOUZ', '13 Bd My Youssef', 'Rabat', '(0537) 82.15.33'),
(365722, 'OUMARI', '55 Rue Faidi Khalifa', 'Marrakech', '(0524) 24.13.90'),
(657251, 'RIAD', '84 Bd 11 janvier', 'Rabat', '(0537) 30.38.55'),
(698725, 'MANSOUR', '12 Avenue des FAR', 'Fès', '(0535) 27.69.87'),
(987265, 'IDRISSI', '99 Rue Colbert', 'Oujda', '(0536) 61.25.33'),
(987542, 'BORJA', '62 Hay El Hana', 'Fès', '(0535) 80.37.08'),
(998750, 'FARABI', '53 Maarif', 'Kénitra', '(0537) 98.25.47');

-- --------------------------------------------------------

--
-- Structure de la table `clientscasablancais`
--

DROP TABLE IF EXISTS `clientscasablancais`;
CREATE TABLE IF NOT EXISTS `clientscasablancais` (
  `IdClient` int NOT NULL DEFAULT '0',
  `Nom` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `Adresse` varchar(70) COLLATE utf8mb4_general_ci NOT NULL,
  `Ville` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Téléphone` varchar(35) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `clientscasablancais`
--

INSERT INTO `clientscasablancais` (`IdClient`, `Nom`, `Adresse`, `Ville`, `Téléphone`) VALUES
(23156, 'MIKOU', '15 Bd 2 Mars', 'Casablanca', '(0522) 94.22.36'),
(57423, 'ADAMI', '27 Bd Zerktouni', 'Casablanca', '(0522) 30.34.55'),
(80877, 'CHENAOUI', '28 Bd Md V', 'Casablanca', '(0522) 43.02.57'),
(105874, 'ALAOUI', '73 Avenue Lala Yacout', 'Casablanca', '(0522) 29.65.14'),
(110175, 'BENYAHYA', '23 Rue La Fayette', 'Casablanca', '(0522) 30.28.51'),
(210279, 'CHAKIR', '354 Bd D\'Anfa', 'Casablanca', '(0522) 90.31.07'),
(326598, 'BENMOUSSA', '13 Bd My Ismail', 'Casablanca', '(0522) 32.12.55');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `Numcom` int NOT NULL AUTO_INCREMENT,
  `IdClient` int NOT NULL,
  `Datecom` date NOT NULL,
  PRIMARY KEY (`Numcom`),
  KEY `IdClient` (`IdClient`)
) ENGINE=InnoDB AUTO_INCREMENT=972 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`Numcom`, `IdClient`, `Datecom`) VALUES
(125, 110175, '2015-03-08'),
(159, 105874, '2016-11-10'),
(208, 105874, '2017-08-02'),
(349, 80877, '2017-09-23'),
(789, 336941, '2018-01-07'),
(854, 210279, '2018-05-15'),
(937, 21489, '2018-08-13'),
(971, 110175, '2019-01-28');

-- --------------------------------------------------------

--
-- Structure de la table `ligne_commande`
--

DROP TABLE IF EXISTS `ligne_commande`;
CREATE TABLE IF NOT EXISTS `ligne_commande` (
  `NuLigne` int NOT NULL AUTO_INCREMENT,
  `Numcom` int NOT NULL,
  `IdArticle` int NOT NULL,
  `Qtecom` int NOT NULL,
  PRIMARY KEY (`NuLigne`),
  KEY `Numcom` (`Numcom`,`IdArticle`),
  KEY `IdArticle` (`IdArticle`),
  KEY `NuLigne` (`NuLigne`,`Numcom`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ligne_commande`
--

INSERT INTO `ligne_commande` (`NuLigne`, `Numcom`, `IdArticle`, `Qtecom`) VALUES
(1, 159, 444, 9),
(2, 208, 217, 1),
(3, 349, 210, 14),
(4, 789, 222, 5),
(5, 937, 301, 7),
(6, 971, 214, 12);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`IdClient`) REFERENCES `client` (`IdClient`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `ligne_commande`
--
ALTER TABLE `ligne_commande`
  ADD CONSTRAINT `ligne_commande_ibfk_1` FOREIGN KEY (`IdArticle`) REFERENCES `article` (`IdArticle`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ligne_commande_ibfk_2` FOREIGN KEY (`Numcom`) REFERENCES `commande` (`Numcom`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
