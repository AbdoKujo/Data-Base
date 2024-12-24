-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 21 nov. 2024 à 14:17
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `td4_exercice2`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `cod_art` int NOT NULL,
  `nom_art` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pu` float DEFAULT NULL,
  `qte_stock` float DEFAULT NULL,
  PRIMARY KEY (`cod_art`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`cod_art`, `nom_art`, `pu`, `qte_stock`) VALUES
(1, 'PC', 9034, 40),
(2, 'souris', 56, 123),
(3, 'Ecran TFT', 1020, 134),
(4, 'clavier usb', 60, 300),
(5, 'Ecran 17', 700, 230),
(6, 'Imprimante', 1345, 400),
(7, 'souris Optique', 155, 234),
(8, 'Scaner Hp', 680, 650),
(9, 'Graveur DVD', 350, 156);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `cod_cli` int NOT NULL,
  `nom_cli` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pre_cli` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `adr_cli` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tel_cli` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ville_cli` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`cod_cli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`cod_cli`, `nom_cli`, `pre_cli`, `adr_cli`, `tel_cli`, `ville_cli`, `age`) VALUES
(1, 'ELYUSUFI', 'yasyn', 'boughaz', '065787890', 'Tanger', 33),
(2, 'ES-SALMI', 'Otman', 'Maariif', '056778945', 'Casablanca', 25),
(3, 'SAMADI', 'mohcine', 'Boulvard', '065435655', 'Tanger', 35),
(4, 'NOURI', 'souhaib', 'Castilla', '065987687', 'Tanger', 22),
(5, 'AMRANI', 'jaber', 'Mhannech', '062456534', 'Tetouan', 32),
(6, 'TANTAOUI', 'marouan', 'Agdal', '045798675', 'Rabat', 34),
(7, 'SBAI', 'lamiae', 'Takadoum', '063879654', 'Kenitra', 24),
(8, 'ALAOUI', 'Anas', 'Hay Riad', '06765432', 'Rabat', 29);

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `num_cmd` int NOT NULL,
  `date_cmd` date DEFAULT NULL,
  `cod_cli` int DEFAULT NULL,
  PRIMARY KEY (`num_cmd`),
  KEY `fk6` (`cod_cli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`num_cmd`, `date_cmd`, `cod_cli`) VALUES
(1, '1999-12-11', 2),
(2, '1929-12-14', 2),
(3, '1999-12-02', 5),
(4, '2002-06-03', 4),
(5, '2007-05-03', 3),
(6, '2003-05-02', 5);

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
CREATE TABLE IF NOT EXISTS `fournisseur` (
  `cod_four` int NOT NULL,
  `nom_four` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ville_four` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tel_four` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`cod_four`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`cod_four`, `nom_four`, `ville_four`, `tel_four`) VALUES
(1, 'STM', 'Tanger', '065789654'),
(2, 'Dynasoft', 'tanger', '064565323'),
(3, 'Uptech', 'tanger', '063456765'),
(4, 'Eac', 'fes', '064354787'),
(5, 'Racing', 'Rabat', '065789537');

-- --------------------------------------------------------

--
-- Structure de la table `ligne_cmd`
--

DROP TABLE IF EXISTS `ligne_cmd`;
CREATE TABLE IF NOT EXISTS `ligne_cmd` (
  `num_ligne` int NOT NULL,
  `cod_art` int DEFAULT NULL,
  `num_cmd` int DEFAULT NULL,
  `qte_cmd` int DEFAULT NULL,
  PRIMARY KEY (`num_ligne`),
  KEY `fk1` (`num_cmd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ligne_cmd`
--

INSERT INTO `ligne_cmd` (`num_ligne`, `cod_art`, `num_cmd`, `qte_cmd`) VALUES
(1, 1, 1, 12),
(3, 2, 6, 76),
(4, 3, 1, 4567),
(5, 3, 4, 120),
(6, 2, 5, 1),
(7, 4, 5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ligne_liv`
--

DROP TABLE IF EXISTS `ligne_liv`;
CREATE TABLE IF NOT EXISTS `ligne_liv` (
  `cod_art` int NOT NULL,
  `num_liv` int DEFAULT NULL,
  `qte_liv` int DEFAULT NULL,
  PRIMARY KEY (`cod_art`),
  KEY `fk9` (`num_liv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `livraison`
--

DROP TABLE IF EXISTS `livraison`;
CREATE TABLE IF NOT EXISTS `livraison` (
  `num_liv` int NOT NULL,
  `date_live` date DEFAULT NULL,
  `cod_four` int DEFAULT NULL,
  PRIMARY KEY (`num_liv`),
  KEY `fk5` (`cod_four`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `livraison`
--

INSERT INTO `livraison` (`num_liv`, `date_live`, `cod_four`) VALUES
(1, '1999-03-02', 1),
(2, '1999-06-03', 3),
(3, '2002-06-03', 4),
(4, '2003-05-04', 5),
(5, '2002-04-08', 4),
(6, '1999-03-06', 2);

-- --------------------------------------------------------

--
-- Structure de la table `societe`
--

DROP TABLE IF EXISTS `societe`;
CREATE TABLE IF NOT EXISTS `societe` (
  `nom_ste` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `tel_ste` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fax_ste` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ville_ste` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cod_four` int DEFAULT NULL,
  PRIMARY KEY (`nom_ste`),
  KEY `fk` (`cod_four`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `fk6` FOREIGN KEY (`cod_cli`) REFERENCES `client` (`cod_cli`);

--
-- Contraintes pour la table `ligne_cmd`
--
ALTER TABLE `ligne_cmd`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`num_cmd`) REFERENCES `commande` (`num_cmd`);

--
-- Contraintes pour la table `ligne_liv`
--
ALTER TABLE `ligne_liv`
  ADD CONSTRAINT `fk9` FOREIGN KEY (`num_liv`) REFERENCES `livraison` (`num_liv`);

--
-- Contraintes pour la table `livraison`
--
ALTER TABLE `livraison`
  ADD CONSTRAINT `fk5` FOREIGN KEY (`cod_four`) REFERENCES `fournisseur` (`cod_four`);

--
-- Contraintes pour la table `societe`
--
ALTER TABLE `societe`
  ADD CONSTRAINT `fk` FOREIGN KEY (`cod_four`) REFERENCES `fournisseur` (`cod_four`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
