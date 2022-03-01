-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 27 fév. 2022 à 23:29
-- Version du serveur :  10.1.38-MariaDB
-- Version de PHP :  7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestion_magasine`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `codeClient` char(4) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(250) DEFAULT NULL,
  `adrese` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mot_passe` varchar(200) DEFAULT NULL,
  `telephone` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`codeClient`, `nom`, `prenom`, `adrese`, `email`, `mot_passe`, `telephone`) VALUES
('223', 'harak', 'souhaila', 'Mers 02  N° 644 tanger ', 'souhailaharrak@gmail.com', 'souhailaKZE', '052398364'),
('434', 'FADILI', 'hanae', 'rabat 02 noeee number 3', 'qkjhjundej@gmail.ma', 'ERZEREFDFSA', '2232252'),
('531', 'boulif', 'sara', 'fes N6789 bn souda 1190 ', 'ereeezfds@gmail.com', 'dfdfdzeqdc', '94594234'),
('652', 'boulif', 'salma', 'tanger 05 N° 749 benkje', 'sojerds@gmail.com', 'ererrrke', '84794424'),
('745', 'brn', 'wassima', 'tafv nfdd Rabat', 'qrtrte@gmail.com', 'tyttrerer', '02247456'),
('750', 'boulif', 'sara', 'ytytry y y sale', 'tyety@hotmail.ma', 'uyuruyuyuy', '04257586');

-- --------------------------------------------------------

--
-- Structure de la table `commende`
--

CREATE TABLE `commende` (
  `idComm` char(5) NOT NULL,
  `lDate` date DEFAULT NULL,
  `adreesCmd` varchar(25) DEFAULT NULL,
  `idClient` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commende`
--

INSERT INTO `commende` (`idComm`, `lDate`, `adreesCmd`, `idClient`) VALUES
('101', '2011-01-03', 'zizeekr 32 tanger', '750'),
('240', '2020-04-11', 'zizeekr 32 RABAT', '745'),
('580', '2003-05-04', 'zkr 32 tanger', '531'),
('742', '2011-05-03', 'zizeekr 32 RABAT', '750'),
('755', '2001-05-03', 'zizeekr 32 RABAT', '434');

-- --------------------------------------------------------

--
-- Structure de la table `deteilscomm`
--

CREATE TABLE `deteilscomm` (
  `idComm` char(5) NOT NULL,
  `codePreduit` char(5) NOT NULL,
  `qteComm` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `deteilscomm`
--

INSERT INTO `deteilscomm` (`idComm`, `codePreduit`, `qteComm`) VALUES
('1234', '221', 13478),
('223', '1239', 32422),
('2343', '123', 442);

-- --------------------------------------------------------

--
-- Structure de la table `preduits`
--

CREATE TABLE `preduits` (
  `codePreduit` char(5) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `prix` int(60) DEFAULT NULL,
  `stock` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `preduits`
--

INSERT INTO `preduits` (`codePreduit`, `libelle`, `description`, `prix`, `stock`) VALUES
('221', 'DFSD', 'Sequi veniam ducimus officia illum cum unde modi, doloribus temporibus repudiandae pariatur ratione molestias quis vero? Voluptas nobis doloremque animi, modi id at enim neque eius corporis accusantium eveniet amet', 200, 74),
('2323', 'maquillage ', 'Vitae omnis iusto labore, asperiores amet distinctio quos vo\r\n Sequi veniam ducimus officia illum cum unde modi, doloribus temporibus repudiandae pariatur ratione molestias quis vero? Voluptas nobis doloremque animi, modi id at enim neque eius corporis ac', 1200, 0),
('457', 'DFSD', 'hgcdjd uyuyuyuj uuyy', 1507, 1),
('542', 'Vitae', 'veniam ducimus officia illum cum unde modi, doloribus temporibus repudiandae pariatur ratione molestias quis vero? Voluptas nobis doloremque animi, modi id at enim neque eius corporis accusantium eveniet amet', 2354, 1233),
('856', 'tizh', 'tytystyetysystyt', 200, 10);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`codeClient`);

--
-- Index pour la table `commende`
--
ALTER TABLE `commende`
  ADD PRIMARY KEY (`idComm`),
  ADD KEY `idClient` (`idClient`);

--
-- Index pour la table `deteilscomm`
--
ALTER TABLE `deteilscomm`
  ADD PRIMARY KEY (`idComm`,`codePreduit`);

--
-- Index pour la table `preduits`
--
ALTER TABLE `preduits`
  ADD PRIMARY KEY (`codePreduit`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commende`
--
ALTER TABLE `commende`
  ADD CONSTRAINT `commende_ibfk_1` FOREIGN KEY (`idClient`) REFERENCES `clients` (`codeClient`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
