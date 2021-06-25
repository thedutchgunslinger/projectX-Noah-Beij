-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 25 jun 2021 om 15:56
-- Serverversie: 10.4.19-MariaDB
-- PHP-versie: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jackydev`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `art`
--

CREATE TABLE `art` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `art`
--

INSERT INTO `art` (`id`, `name`, `image`, `title`) VALUES
(5, 'WhatsApp Image 2021-06-20 at 19.42.41.jpeg', 'upload/WhatsApp Image 2021-06-20 at 19.42.41.jpeg', 'artwork 01'),
(6, 'WhatsApp Image 2021-06-20 at 19.42.41(1).jpeg', 'upload/WhatsApp Image 2021-06-20 at 19.42.41(1).jpeg', 'artwork 02');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gebruikers`
--

CREATE TABLE `gebruikers` (
  `id` int(11) NOT NULL,
  `voornaam` varchar(255) DEFAULT NULL,
  `achternaam` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `wachtwoord` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `gebruikers`
--

INSERT INTO `gebruikers` (`id`, `voornaam`, `achternaam`, `email`, `datum`, `wachtwoord`) VALUES
(1, 'dev', 'dev', 'dev@dev.com', '2020-12-24', 'ef260e9aa3c673af240d17a2660480361a8e081d1ffeca2a5ed0e3219fc18567');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `images`
--

INSERT INTO `images` (`id`, `name`, `image`, `title`) VALUES
(44, 'WhatsApp Image 2021-06-22 at 23.48.15.jpeg', 'upload/WhatsApp Image 2021-06-22 at 23.48.15.jpeg', 'Colorado kever'),
(45, 'WhatsApp Image 2021-06-22 at 23.47.42.jpeg', 'upload/WhatsApp Image 2021-06-22 at 23.47.42.jpeg', 'Penseel kever'),
(46, 'WhatsApp Image 2021-06-22 at 23.47.16.jpeg', 'upload/WhatsApp Image 2021-06-22 at 23.47.16.jpeg', 'Tweestippelig lieveheersbeestje'),
(47, 'WhatsApp Image 2021-06-22 at 23.46.07.jpeg', 'upload/WhatsApp Image 2021-06-22 at 23.46.07.jpeg', 'Rozenkever'),
(48, 'WhatsApp Image 2021-06-22 at 23.45.34.jpeg', 'upload/WhatsApp Image 2021-06-22 at 23.45.34.jpeg', 'Langpootmug'),
(49, 'WhatsApp Image 2021-06-22 at 23.44.44.jpeg', 'upload/WhatsApp Image 2021-06-22 at 23.44.44.jpeg', 'Dagpauwoog vlinder');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `video`
--

INSERT INTO `video` (`id`, `title`, `url`) VALUES
(9, 'Penseel kever', 'https://www.youtube.com/embed/fzVhIt_Kb2U'),
(10, 'Jonge oorworm (geen albino)', 'https://www.youtube.com/embed/6De0RVSS_2M'),
(11, 'Colorado kever', 'https://www.youtube.com/embed/91UCFVcBpnA'),
(12, 'Sluipwesp', 'https://www.youtube.com/embed/fb9BULfnbpc'),
(13, 'Grote rupsendoder', 'https://www.youtube.com/embed/PqS-2huMdTY');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `art`
--
ALTER TABLE `art`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `gebruikers`
--
ALTER TABLE `gebruikers`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `art`
--
ALTER TABLE `art`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `gebruikers`
--
ALTER TABLE `gebruikers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT voor een tabel `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
