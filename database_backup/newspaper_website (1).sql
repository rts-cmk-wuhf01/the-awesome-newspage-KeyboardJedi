-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 20. 06 2019 kl. 19:04:07
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
  `article_title` varchar(30) NOT NULL,
  `article_authors_fk` int(11) NOT NULL,
  `article_text` varchar(3000) NOT NULL,
  `article_date` datetime NOT NULL,
  `article_images_fk` int(11) NOT NULL,
  `article_category_fk` int(11) NOT NULL,
  `article_comments_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `articles`
--

INSERT INTO `articles` (`id`, `article_title`, `article_authors_fk`, `article_text`, `article_date`, `article_images_fk`, `article_category_fk`, `article_comments_fk`) VALUES
(1, 'Iran skyder militær drone', 1, 'Iranerne hævder, at dronen befandt sig i iransk luftrum, men det amerikanske militær afviser: Den var i internationalt luftrum.\r\n\r\nEn militær drone fra USA er torsdag skudt ned over Hormuzstrædet af et iransk jord-til-luft missil. Det oplyser amerikanske og iranske kilder, som giver forskellige udlægninger af omstændighederne ved nedskydningen.\r\n\r\nTidligt torsdag eftermiddag bekræfter Pentagon officielt, at Iran har nedskudt et amerikansk overvågningsdrone.\'\r\n\r\n XXX\r\nSE OGSÅ\r\nUSA frigiver nye billeder efter angreb på tankskibe\r\nIranske kilder siger, at Irans Revolutionsgarde nedskød en RQ-4 Global Hawk drone i iransk luftrum, men amerikansk militær siger ifølge nyhedsbureauet dpa, at nedskydningen skete i internationalt luftrum, og at der er tale om et \"uprovokeret angreb\".\r\n\r\nDer skal ifølge amerikanerne være tale om en af flådens droner, en MQ-4C Triton - den kan holde sig flyvende i over 24 timer ad gangen.\r\n\r\nUSA har oprustet markant i Mellemøsten\r\nTidligere har det amerikanske militær påstået, at Iran affyrede et missil mod en anden drone i sidste uge, da denne reagerede på et angreb mod to olietankere ved Omanbugten.\r\n\r\nRapporten om nedskydningen af dronen kommer på et tidspunkt, hvor forholdet mellem Iran og USA er højspændt, og det amerikanske forsvarsministerium annoncerede mandag, at det vil sende yderligere 1000 soldater til Mellemøsten.\r\n\r\n  Kokuka Courageous, det ene af de skibe, som blev angrebet.\r\nSE OGSÅ\r\nBritisk udenrigsministerium bakker op om USA-anklager mod Iran\r\nDen fungerende amerikanske forsvarsminister, Patrick Shanahan, kalder troppeforøgelsen et forsøg på at \"øge sikkerheden omkring amerikanske interesser\" i regionen.\r\n\r\nUSA beskylder blandt andet Iran for at stå bag angreb på to tankskibe i Omanbugten i sidste uge. Iran nægter enhver indblanding.\r\n\r\nI forvejen har USA oprustet markant i Mellemøsten, siden præsident Donald Trump valgte at trække sig ud af den internationale aftale om Irans atomprogram, der blev indgået i 2015.\r\n\r\nI øjeblikket består oprustningen af omtrent 10.000 soldater, flere langtrækkende bombefly samt et hangarskib med støttefartøjer.', '2019-06-07 17:31:00', 1, 3, 1),
(2, 'Topsprinter er ’fifty-fifty’ ', 13, 'En af verdens bedste sprintere Fernando Gaviria er tiltænkt en stor rolle for UAE Emirates, men knæproblemer kan sætte en stopper for ambitionerne.\r\n\r\nHurtige Fernando Gaviria vandt i fjor to Tour de France-etaper, men målet om at tilføje yderligere er i fare.\r\n\r\nDet fortæller UAE Emirates-team manager Joxean Fernandez Matxin til Cyclingnews.\r\n\r\n- Helt ærligt, så er det lige nu fifty-fifty, siger spanieren adspurgt om chancen for at se Gaviria i årets Tour de France.\r\n\r\n .\r\nSE OGSÅ\r\nDanskere sender stærkt signal: Vi er værd at satse på til Touren\r\nDet er ikke nogen ny skade, som den 24-årige colombianer har pådraget sig. Knæproblemer har nemlig plaget ham længe. Det var også skyld i, at han udgik af årets Giro d’Italia på 7. etape.\r\n\r\nHer kunne han ikke længere holde smerterne ud under løbet, hvor han trods problemerne vandt en etape.\r\n\r\nSiden har han ikke kørt et løb for at kunne blive helt klar til årets højdepunkt i Frankrig.\r\n\r\n- Vi ved ikke helt, hvordan træningen går. I de kommende dage skal lave specifik træning, så vi kan blive klogere, siger Joxean Fernandez Matxin.\r\n\r\nHan tilføjer, at colombianerens mulige Tour-deltagelse kommer til at afhænge af data, som de løbende indsamler inden Touren.\r\n\r\nUdover to etapesejre i sidste års Tour de France nåede Gaviria også at køre i den gule førertrøje. Dengang kørte han for Quick-Step. I denne sæson har han skiftet det belgiske hold ud med UAE Emirates.\r\n\r\nHoldet fra oliestaten har også en anden hurtig herre på holdet i form af norske Alexander Kristoff. Han er tiltænkt en rolle som værdifuld hjælper for sin colombianske kollega i massespurterne under Tour de France.\r\n\r\nMed eller uden Gaviria tager feltet hul på de tre uger på de franske landeveje i Belgiens hovedstad, Bruxelles, den 6. juni.', '2019-06-12 13:01:52', 2, 1, 1),
(3, 'HPV-vaccine bliver gratis', 10, 'Fra den 1. juli bliver HPV-vaccinationen ikke længere kun tilbudt gratis til piger, men også til drenge mellem 12 og 18 år. Vaccinen beskytter mod kønsvorter og forskellige former for kræft.\r\n\r\nHPV-vaccinationen er allerede gratis for piger, og fra den 1. juli 2019 bliver den nu også gratis for drenge mellem 12 og 18 år, skriver DR. Det gælder dog kun dem, der fylder 12 år efter denne dato.\r\n\r\nDerfor bør drenge også vaccineres\r\nDer findes forskellige typer HPV-virus, og i mange tilfælde er de ikke farlige og forsvinder igen af sig selv efter 8-12 måneder. Det er dog ikke altid, at HPV er ufarlig, og derfor er vaccinationen vigtig.\r\n\r\nI dag er vaccinen bedst kendt for at beskytte piger mod livmoderhalskræft. Men i nogle tilfælde kan en HPV-infektion også føre til kønsvorter og i sjældnere tilfælde kræft ved eksempelvis endetarmsåbningen og i penis. Hvert år rammes cirka 40 danske mænd af analkræft, og 8.000 mænd behandles for kønsvorter.\r\n\r\nNår man får HPV-vaccinationen, danner kroppen antistoffer mod HPV, så immunforsvaret kan bekæmpe virussen, hvis man bliver udsat for smitte. Med denne vaccination er det forventet, at man kan undgå 85 procent af tilfældene med analkræft og 90 procent af tilfældene med kønsvorter.\r\n\r\nLæs mere om HPV\r\n\r\nSådan smitter HPV\r\nRisikoen for at blive smittet med HPV er stor, hvis man har et aktivt sexliv med skiftende partnere. Det skønnes, at cirka 80 procent bliver smittet i løbet af deres liv. HPV smitter ved samleje, oral- og analsex, ved at kønsorganerne berører hinanden og endda ved dybe kys. Virussen findes tilmed ikke kun på selve kønsorganerne, men også på huden omkring. Derfor er man heller ikke fuldstændig beskyttet mod HPV, hvis man bruger kondom.\r\n\r\n', '2019-06-13 19:54:00', 4, 4, 1),
(4, 'Danske Bank skandale', 1, 'På syv måneder strømmede 169 millioner kroner gennem en konto i Danske Bank.\r\n\r\nEt vekselbureau i København er lige nu tiltalt for hvidvask i Danmarkshistoriens mest omfattende sag om skattesvindel og hvidvask, som går under navnet Operation Greed.\r\n\r\nNu kan TV 2 og Operation X afsløre, at vekselbureauet brugte en konto i Danske Bank til formodet hvidvask for millioner.\r\n\r\nPå syv måneder strømmede der 169 millioner kroner gennem kontoen. Politiet mener, at størstedelen af de penge er blevet brugt til hvidvask. Pengestrømmen er en del af anklageskriftet i Operation Greed.\r\n\r\nPengetransportfirma fik oprettet kontoen\r\nEn kontrakt mellem vekselbureauet og det pengetransportfirma, som leverede deres kontanter, viser, at det ikke var vekselbureauet selv, der fik oprettet kontoen i Danske Bank.\r\n\r\nDet var i stedet det verdensomspændende pengetransportfirma Loomis.\r\n\r\nEt sådan set-up er i strid med Danske Banks retningslinjer, skriver Philippe Vollot, bankdirektør og chef for Group Compliance i Danske Bank i en mail til TV 2.\r\n\r\n Loomis tager hvidvask meget alvorligt bedyrer selskabets direktør over for Morten Spiegelhauer. \r\nSE OGSÅ\r\nOperation X afslører: Pengetransportfirma er involveret i omfattende hvidvasksag\r\n- For at sikre at vi kender vores kunder, indhenter og analyserer vi oplysninger, herunder formålet med kundens engagement hos Danske Bank. Vi forventer at modtage fyldestgørende og transparent information i den proces, men vi kan desværre ikke altid have tillid til, at vi får det.\r\n\r\nBanken understreger, at den ikke kan udtale sig om enkeltsager.\r\n\r\nVekselbureauet smidt ud af Nordea\r\nVekselbureauet havde, som TV 2 tidligere har beskrevet, været kunde i Nordea, men her blev de opsagt blandt andet med begrundelsen, at vekselbureauets forretningsmodel- og omfang var en alt for stor risiko for banken at være involveret i.\r\n\r\nMisbrug af en konto til mulige kriminelle aktiviteter er noget, vi på ingen måde vil acceptere\r\n\r\nPhilippe Vollot, bankdirektør og chef for Group Compliance i Danske Bank\r\nOg da andre banker ikke ville åbne en konto for vekselbureauet, trådte Loomis til og hjalp med at skaffe en konto i Danske Bank.\r\n\r\n- Vi ville aldrig tillade, at en kunde misbruger en af vores konti til de facto at fungere som en bank for en tredjepart, som ikke kan få adgang til en bank på anden vis. Sådan et setup ville være i direkte strid med Danske Banks principper og compliance (efterlevelse af krav og regler, red.) standarder, skriver Philippe Vollot, bankdirektør og chef for Group Compliance i Danske Bank.', '2019-06-22 09:41:00', 1, 2, 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `author_name` varchar(50) NOT NULL,
  `author_job` varchar(50) NOT NULL,
  `author_avatar_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `authors`
--

INSERT INTO `authors` (`id`, `author_name`, `author_job`, `author_avatar_fk`) VALUES
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
  `category_title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `categories`
--

INSERT INTO `categories` (`id`, `category_title`) VALUES
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
  `comments_user_fk` int(11) NOT NULL,
  `comments_text` varchar(200) NOT NULL,
  `comments_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `comments`
--

INSERT INTO `comments` (`id`, `comments_user_fk`, `comments_text`, `comments_date`) VALUES
(1, 1, 'oawhidoawdhawodhoawhdoawhdo', '2019-06-20'),
(2, 4, 'Hundehoveder!', '2013-01-22'),
(3, 3, 'Ehehehe', '2019-03-13'),
(4, 2, 'Skide godt!', '2017-11-03'),
(5, 5, 'Jøses!', '2019-12-11');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `images_src` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `images`
--

INSERT INTO `images` (`id`, `images_src`) VALUES
(1, '1.jpg'),
(2, '31.jpg'),
(3, '32.jpg'),
(4, '30.jpg'),
(5, '29.jpg');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `messages_text` varchar(1000) NOT NULL,
  `messages_sender` varchar(50) NOT NULL,
  `messages_email` varchar(300) NOT NULL,
  `messages_subject` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `messages`
--

INSERT INTO `messages` (`id`, `messages_text`, `messages_sender`, `messages_email`, `messages_subject`) VALUES
(1, 'asdasdasdasdasd fv', 'Jonas Knudsen', 'jonasknudsen93@live.dk', 'asdasdasd');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `users_name` varchar(50) NOT NULL,
  `users_age` int(5) NOT NULL,
  `users_email` varchar(100) NOT NULL,
  `users_avatar_fk` int(11) NOT NULL,
  `users_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`id`, `users_name`, `users_age`, `users_email`, `users_avatar_fk`, `users_password`) VALUES
(1, 'Anders', 17, 'anders@gmail.com', 5, '123'),
(2, 'Svend', 48, 'svenderikden3@hotnmail.com', 3, 'expresso1'),
(3, 'Kenneth', 13, 'kenneth@hotmail.com', 2, 'storebryster69'),
(4, 'Egon', 72, 'egon@olsenbanden.dk', 4, 'hundehovederbegge2'),
(5, 'Yvonne', 85, 'yvonne@olsenbanden.dk', 1, 'ejaltsaa1');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authors_fk` (`article_authors_fk`),
  ADD KEY `images_fk` (`article_images_fk`),
  ADD KEY `category_fk` (`article_category_fk`),
  ADD KEY `comments_fk` (`article_comments_fk`);

--
-- Indeks for tabel `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `avatar_fk` (`author_avatar_fk`);

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
  ADD KEY `user_fk` (`comments_user_fk`);

--
-- Indeks for tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `avatar_fk` (`users_avatar_fk`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tilføj AUTO_INCREMENT i tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tilføj AUTO_INCREMENT i tabel `messages`
--
ALTER TABLE `messages`
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
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`article_category_fk`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`article_authors_fk`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `articles_ibfk_3` FOREIGN KEY (`article_images_fk`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `articles_ibfk_4` FOREIGN KEY (`article_comments_fk`) REFERENCES `comments` (`id`);

--
-- Begrænsninger for tabel `authors`
--
ALTER TABLE `authors`
  ADD CONSTRAINT `authors_ibfk_1` FOREIGN KEY (`author_avatar_fk`) REFERENCES `images` (`id`);

--
-- Begrænsninger for tabel `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`comments_user_fk`) REFERENCES `users` (`id`);

--
-- Begrænsninger for tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`users_avatar_fk`) REFERENCES `images` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
