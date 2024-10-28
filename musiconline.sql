-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 08, 2024 at 11:56 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vintagevinyl`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `albName` varchar(64) DEFAULT NULL,
  `albDescription` tinytext,
  `release_date` date DEFAULT NULL,
  `fk_genre_id` int(11) DEFAULT NULL,
  `fk_artist_id` int(11) DEFAULT NULL,
  `fk_record_label_id` int(11) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  `image` varchar(64) DEFAULT NULL,
  `fk_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `albName`, `albDescription`, `release_date`, `fk_genre_id`, `fk_artist_id`, `fk_record_label_id`, `is_active`, `image`, `fk_user_id`) VALUES
(121, 'Ruins', 'Description', NULL, 2, 135, 5, 1, 'firstaid.jpg', 27),
(130, 'Changing Horses', 'Description', NULL, 2, 144, 3, 1, 'benkweller_changinhorses.jpg', 27),
(131, 'O brother where art thou', 'Description', NULL, 11, 145, 4, 1, 'br.jpg', 27),
(132, 'Sgt Pepper', 'Description', NULL, 1, 146, 5, 1, 'bratles_sgtpr.jpg', 27),
(133, 'Tapestry', 'Description', NULL, 11, 147, 7, 1, 'caroleking_tapestry.jpg', 27),
(134, 'Colour by numbers', 'Description', NULL, 1, 148, 6, 1, 'cc.jpg', 27),
(136, 'The Collection', 'Description', NULL, 1, 150, 7, 1, 'dodgy_thecollection.jpg', 27),
(137, 'Move your feet', 'Description', NULL, 1, 151, 8, 1, 'juniorsenior_move_your_feet.jpg', 27),
(138, 'Misunderstood', 'Description', NULL, 3, 152, 9, 1, 'pink_misunderstood.jpg', 27),
(139, 'The Riddle', 'Description', NULL, 1, 153, 7, 1, 'nikkershaw_riddle.jpg', 27),
(140, 'Get behind me satan', 'Description', NULL, 3, 154, 5, 1, 'thewhitestripes_satan.jpg', 27),
(141, 'Up at the Lake', 'Description', NULL, 2, 155, 5, 1, 'thecharlatans_upatthelake.jpg', 27),
(142, 'Yellow Submarine', 'Description', NULL, 1, 156, 7, 1, 'thebeatles_yellow_submarine.jpg', 27),
(143, 'Greatest Hits', 'Description', NULL, 1, 157, 7, 1, 'elvis_greatest_hits.jpg', 27);

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `id` int(11) NOT NULL,
  `artName` varchar(132) NOT NULL,
  `artDescription` tinytext,
  `image` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`id`, `artName`, `artDescription`, `image`) VALUES
(135, 'First Aid kit', '', NULL),
(136, 'test', 'test', NULL),
(137, 'test 2', 'test 2', NULL),
(138, 'Artist Two', 'Two', NULL),
(139, 'artist three', 'three', NULL),
(141, 'test user 2 artist 2', 's', NULL),
(142, 'test user 3 artist one', 'd', NULL),
(143, 'test user 3 artist two', 'd', NULL),
(144, 'Ben Kweller', 'Artist Info', NULL),
(145, 'Various', 'Artist info', NULL),
(146, 'The Beatles', 'Artist Info', NULL),
(147, 'Carole King', 'Artist Info', NULL),
(148, 'Culture Club', 'Artist Info', NULL),
(149, 'Creedence Clearwater Revival', 'Artist Info', NULL),
(150, 'Dodgy', 'Artist Info', NULL),
(151, 'Junior Senior', 'Artist Info', NULL),
(152, 'Pink', 'Artist Info', NULL),
(153, 'Nik Kershaw', 'Artist Info', NULL),
(154, 'The White Stripes', 'Artist Info', NULL),
(155, 'The Charlatans', '', NULL),
(156, 'The Beatles', 'Artist Info', NULL),
(157, 'Elvis', 'Artist Info', NULL),
(158, 'jlkj', 'lkjl', NULL),
(159, 'kjh', 'khj', NULL),
(160, 'hkh', 'hkjh', NULL),
(161, 'jj', 'pp', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `genreName` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `genreName`) VALUES
(1, 'Pop Music'),
(2, 'Indie'),
(3, 'Rock Music'),
(5, 'Folk Music'),
(7, 'Folk Music'),
(8, 'Blues'),
(9, 'Soul Music'),
(10, 'Funk'),
(11, 'Country Music'),
(12, 'Rhythm & Blues'),
(13, 'Electronic Music'),
(14, 'Dance Music'),
(15, 'Punk Rock'),
(16, 'House Music');

-- --------------------------------------------------------

--
-- Table structure for table `record_label`
--

CREATE TABLE `record_label` (
  `id` int(11) NOT NULL,
  `rlName` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `record_label`
--

INSERT INTO `record_label` (`id`, `rlName`) VALUES
(3, 'Warner Music Group'),
(4, 'EMI'),
(5, 'Sony Music'),
(6, 'BMG'),
(7, 'Universal Music Group'),
(8, 'PolyGram'),
(9, 'Released Independently');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `password` varchar(132) DEFAULT NULL,
  `is_admin` tinyint(4) DEFAULT NULL,
  `email` varchar(132) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `pw` varchar(132) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `is_admin`, `email`, `is_active`, `username`, `pw`) VALUES
(26, '$2y$10$UcV3.Pvs9b7Jw5IHcaHgbuNw1d765BsUyED29ueHy9eamVMmLHr3u', 1, 'admin@email.com', 1, 'admin', NULL),
(27, '$2y$10$BQ.jxuz7e12MGFNDSNMKH.sivaZV2/PH5oDWbosc58EpVIWCWvXIC', 0, 'user@email.com', 1, 'user', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_genre_id` (`fk_genre_id`),
  ADD KEY `fk_record_label_id` (`fk_record_label_id`),
  ADD KEY `fk_artist_id` (`fk_artist_id`),
  ADD KEY `fk_user_id` (`fk_user_id`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `record_label`
--
ALTER TABLE `record_label`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `record_label`
--
ALTER TABLE `record_label`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`fk_genre_id`) REFERENCES `genre` (`id`),
  ADD CONSTRAINT `album_ibfk_2` FOREIGN KEY (`fk_record_label_id`) REFERENCES `record_label` (`id`),
  ADD CONSTRAINT `album_ibfk_3` FOREIGN KEY (`fk_artist_id`) REFERENCES `artist` (`id`),
  ADD CONSTRAINT `album_ibfk_4` FOREIGN KEY (`fk_user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
