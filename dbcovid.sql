-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql112.epizy.com
-- Creato il: Ott 25, 2020 alle 06:28
-- Versione del server: 5.6.48-88.0
-- Versione PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_25393865_dbcovid`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `aggiornamento`
--

CREATE TABLE `aggiornamento` (
  `data` varchar(64) CHARACTER SET utf8 NOT NULL,
  `ora` varchar(64) CHARACTER SET utf8 NOT NULL,
  `id` int(11) NOT NULL,
  `nota` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `aggiornamento`
--

INSERT INTO `aggiornamento` (`data`, `ora`, `id`, `nota`) VALUES
('01/04/2020', '21:30', 1, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `comuni`
--

CREATE TABLE `comuni` (
  `comune` varchar(64) NOT NULL,
  `positivi` int(11) DEFAULT NULL,
  `nuovi_positivi` varchar(11) DEFAULT NULL,
  `deceduti` int(11) DEFAULT NULL,
  `nuovi_deceduti` varchar(11) DEFAULT NULL,
  `map_name` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `comuni`
--

INSERT INTO `comuni` (`comune`, `positivi`, `nuovi_positivi`, `deceduti`, `nuovi_deceduti`, `map_name`) VALUES
('Bagno a Ripoli', 30, '+4', NULL, '', 'BAGNO_A_RIPOLI'),
('Barberino del Mugello', 6, NULL, NULL, '', 'BARBERINO_DI_MUGELLO'),
('Barberino e Tavarnelle', 7, '', 1, '', 'BARBERINO_VAL_D-ELSA'),
('Borgo San Lorenzo', 5, '+1', NULL, NULL, 'BORGO_SAN_LORENZO'),
('Calenzano', 18, '', 1, '', 'CALENZANO'),
('Campi Bisenzio', 23, '+1', 4, '', 'CAMPI_BISENZIO'),
('Dicomano', 39, '+1', 1, '', 'DICOMANO'),
('Fiesole', 22, '', 1, '', 'FIESOLE'),
('Figline e Incisa', 14, '', 1, NULL, 'FIGLINE'),
('Firenze', 385, '+15', 11, '', 'FIRENZE'),
('Firenzuola', 3, NULL, NULL, NULL, 'FIRENZUOLA'),
('Greve in Chianti', 12, '', NULL, NULL, 'GREVE_IN_CHIANTI'),
('Impruneta', 10, '+1', NULL, NULL, 'IMPRUNETA'),
('Lastra a Signa', 7, '+1', NULL, NULL, 'LASTRA_A_SIGNA'),
('Londa', 5, NULL, NULL, NULL, 'LONDA'),
('Marradi', 1, NULL, NULL, NULL, 'MARRADI'),
('Palazzuolo sul Senio', NULL, NULL, NULL, NULL, 'PALAZZUOLO_SUL_SENIO'),
('Pelago', 17, '', NULL, NULL, 'PELAGO'),
('Pontassieve', 46, '', 1, '', 'PONTASSIEVE'),
('Reggello', 8, '', 1, NULL, 'REGGELLO'),
('Rignano sull\'Arno', 6, NULL, 1, '', 'RIGNANO_SULL-ARNO'),
('Rufina', 13, '', NULL, NULL, 'RUFINA'),
('San Casciano', 4, '', NULL, NULL, 'SAN_CASCIANO_IN_VAL_DI_PESA'),
('San Godenzo', 18, '', NULL, NULL, 'SAN_GODENZO'),
('Scandicci', 48, '', 2, '+1', 'SCANDICCI'),
('Scarperia e San Piero', 5, '', NULL, NULL, 'SCARPERIA'),
('Sesto Fiorentino', 38, '', 1, '', 'SESTO_FIORENTINO'),
('Signa', 50, '', 3, '+1', 'SIGNA'),
('Vaglia', 6, '', 1, '', 'VAGLIA'),
('Vicchio', 4, '', 1, '', 'VICCHIO');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `aggiornamento`
--
ALTER TABLE `aggiornamento`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `comuni`
--
ALTER TABLE `comuni`
  ADD PRIMARY KEY (`comune`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `aggiornamento`
--
ALTER TABLE `aggiornamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
