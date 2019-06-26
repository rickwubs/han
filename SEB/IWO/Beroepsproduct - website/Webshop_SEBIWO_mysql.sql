-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 03 jun 2019 om 09:48
-- Serverversie: 10.1.33-MariaDB
-- PHP-versie: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Webshop SEB-IWO`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gebruikers`
--

CREATE TABLE `gebruikers` (
  `gebruikersnaam` varchar(15) NOT NULL,
  `voornaam` varchar(100) NOT NULL,
  `achternaam` varchar(100) NOT NULL,
  `tussenvoegsel` varchar(15) DEFAULT '',
  `plaats` varchar(100) DEFAULT NULL,
  `telefoon` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `wachtwoord` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `gebruikers`
--

INSERT INTO `gebruikers` (`gebruikersnaam`, `voornaam`, `achternaam`, `tussenvoegsel`, `plaats`, `telefoon`, `email`, `wachtwoord`) VALUES
('Borst', 'Pieter', 'Borst', '', 'Naarden', '06-23455989', 'pieter.borst@kpn.nl', 'jajajeweetwel'),
('Kenny', 'Kenny', 'Schaijk', 'van', 'Oosterbeek', '026-8769121', 'kvschaijk@ziggo.nl', 'heelbijzonder123');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `producten`
--

CREATE TABLE `producten` (
  `nummer` int(11) NOT NULL,
  `naam` varchar(100) NOT NULL,
  `omschrijving` text NOT NULL,
  `categorie` varchar(15) NOT NULL,
  `prijs` decimal(5,2) NOT NULL,
  `voorrad` int(10) NOT NULL,
  `afbeelding` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `producten`
--

INSERT INTO `producten` (`nummer`, `naam`, `omschrijving`, `categorie`, `prijs`, `voorrad`, `afbeelding`) VALUES
(1, 'Product 1', 'Een bijzonder mooi exemplaar van een speciale lichting. Dit moet je hebben. ', 'vazen', '21.50', 3, 'product1.jpg'),
(2, 'Product 2', 'Een eigen character. Op de foto is de schoonheid alleen beperkt te zien. ', 'vazen', '8.20', 8, 'product2.jpg');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `gebruikers`
--
ALTER TABLE `gebruikers`
  ADD PRIMARY KEY (`gebruikersnaam`);

--
-- Indexen voor tabel `producten`
--
ALTER TABLE `producten`
  ADD PRIMARY KEY (`nummer`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `producten`
--
ALTER TABLE `producten`
  MODIFY `nummer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
