-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 02 mars 2023 à 19:24
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pidev`
--

-- --------------------------------------------------------

--
-- Structure de la table `typevehicule`
--

CREATE TABLE `typevehicule` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `typevehicule`
--

INSERT INTO `typevehicule` (`id`, `nom`, `description`) VALUES
(2, 'voiture normal', 'voiture qui offre un niveau conduite exceptionnelle, un confort poussé'),
(3, 'voiture luxe', 'voiture qui offre un niveau conduite exceptionnelle, un confort poussé'),
(4, 'voiture 90s', 'voiture qui offre un niveau conduite exceptionnelle, un confort poussé'),
(5, 'voiture course', 'voiture qui offre un niveau conduite exceptionnelle, un confort poussé'),
(6, 'voiture limousins', 'voiture qui offre un niveau conduite exceptionnelle, un confort poussé'),
(7, 'hbc<hbjcs', 'kjscnkscj'),
(8, 'fef', 'njfe');

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

CREATE TABLE `vehicule` (
  `immatriculation` varchar(255) NOT NULL,
  `marque` varchar(255) NOT NULL,
  `puissance` varchar(255) NOT NULL,
  `kilometrage` varchar(255) NOT NULL,
  `nbrdeplace` int(11) NOT NULL,
  `prix` float NOT NULL,
  `typevehicule_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vehicule`
--

INSERT INTO `vehicule` (`immatriculation`, `marque`, `puissance`, `kilometrage`, `nbrdeplace`, `prix`, `typevehicule_id`) VALUES
('201tunis2555', 'clio', '15c', '80', 5, 25500, 4),
('201tunis5555', 'jaguar', '3', '50', 5, 50000, 6),
('250jmt1511', 'mercedes', '5ch', '20km', 5, 500, 3),
('260tunis2569', 'fehuehfuie', '15', '20', 5, 500, 5),
('5152', 'cccc', '1551', '5', 1515, 5000, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `typevehicule`
--
ALTER TABLE `typevehicule`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vehicule`
--
ALTER TABLE `vehicule`
  ADD PRIMARY KEY (`immatriculation`),
  ADD KEY `typevehicule_id` (`typevehicule_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `typevehicule`
--
ALTER TABLE `typevehicule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `vehicule`
--
ALTER TABLE `vehicule`
  ADD CONSTRAINT `vehicule_ibfk_1` FOREIGN KEY (`typevehicule_id`) REFERENCES `typevehicule` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
