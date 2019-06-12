-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 12. 06 2019 kl. 14:47:13
-- Serverversion: 10.1.30-MariaDB
-- PHP-version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newspaper_website`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `authors_fk` int(11) NOT NULL,
  `text` varchar(3000) NOT NULL,
  `date` date NOT NULL,
  `images_fk` int(11) NOT NULL,
  `category_fk` int(11) NOT NULL,
  `comments_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `articles`
--

INSERT INTO `articles` (`id`, `title`, `authors_fk`, `text`, `date`, `images_fk`, `category_fk`, `comments_fk`) VALUES
(1, 'Russia Invades Denmark', 1, 'Lorem Ipsum.', '2019-06-07', 1, 3, 1),
(3, 'Rock, Paper, Scissor champion!', 13, 'Hans Petersen from Aarhus in Denmark won the title of world champion last saturday against the defending world champion Epic Eric', '2019-06-12', 1, 1, 1),
(4, 'Too much sugar is unhealthy', 10, 'Studies have found sugar to be unhealthy', '2019-06-13', 1, 4, 1),
(5, 'Stones are the new currency', 1, 'Stoness value has increased dramatically and people are now using stones as currency instead of coins and bills. ', '2019-06-22', 1, 2, 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `job/position` varchar(50) NOT NULL,
  `avatar_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `authors`
--

INSERT INTO `authors` (`id`, `name`, `job/position`, `avatar_fk`) VALUES
(1, 'Torben', 'Author', 1),
(8, 'Tobias', 'Author', 1),
(9, 'Thor', 'Author', 1),
(10, 'Thorbjørn', 'Author', 1),
(11, 'Tristan', 'Author', 1),
(12, 'Trine', 'Author', 1),
(13, 'Thrall', 'Author', 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Sport'),
(2, 'Finance'),
(3, 'Politics'),
(4, 'Health');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_fk` int(11) NOT NULL,
  `text` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `comments`
--

INSERT INTO `comments` (`id`, `user_fk`, `text`, `date`) VALUES
(1, 1, 'oawhidoawdhawodhoawhdoawhdo', '2019-06-20');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `src` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `images`
--

INSERT INTO `images` (`id`, `src`) VALUES
(1, '1.jpg');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(5) NOT NULL,
  `email` varchar(100) NOT NULL,
  `avatar_fk` int(11) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`id`, `name`, `age`, `email`, `avatar_fk`, `password`) VALUES
(1, 'Anders', 17, 'anders@gmail.com', 1, '123'),
(2, 'Svend', 48, 'svenderikden3@hotnmail.com', 1, 'expresso1'),
(3, 'Kenneth', 13, 'kenneth@hotmail.com', 1, 'storebryster69'),
(4, 'Egon', 72, 'egon@olsenbanden.dk', 1, 'hundehovederbegge2'),
(5, 'Yvonne', 85, 'yvonne@olsenbanden.dk', 1, 'ejaltsaa1');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authors_fk` (`authors_fk`),
  ADD KEY `images_fk` (`images_fk`),
  ADD KEY `category_fk` (`category_fk`),
  ADD KEY `comments_fk` (`comments_fk`);

--
-- Indeks for tabel `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `avatar_fk` (`avatar_fk`);

--
-- Indeks for tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_fk` (`user_fk`);

--
-- Indeks for tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `avatar_fk` (`avatar_fk`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tilføj AUTO_INCREMENT i tabel `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tilføj AUTO_INCREMENT i tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tilføj AUTO_INCREMENT i tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tilføj AUTO_INCREMENT i tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Begrænsninger for dumpede tabeller
--

--
-- Begrænsninger for tabel `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`category_fk`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`authors_fk`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `articles_ibfk_3` FOREIGN KEY (`images_fk`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `articles_ibfk_4` FOREIGN KEY (`comments_fk`) REFERENCES `comments` (`id`);

--
-- Begrænsninger for tabel `authors`
--
ALTER TABLE `authors`
  ADD CONSTRAINT `authors_ibfk_1` FOREIGN KEY (`avatar_fk`) REFERENCES `images` (`id`);

--
-- Begrænsninger for tabel `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_fk`) REFERENCES `users` (`id`);

--
-- Begrænsninger for tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`avatar_fk`) REFERENCES `images` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
