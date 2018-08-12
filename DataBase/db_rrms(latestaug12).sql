-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2018 at 05:09 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rrms`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `g_name` varchar(25) NOT NULL,
  `u_name` varchar(12) NOT NULL,
  `password` varchar(12) NOT NULL,
  `activate` tinyint(4) NOT NULL,
  `type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `g_name`, `u_name`, `password`, `activate`, `type`) VALUES
(1, 'voidmain', 'loyd', 'admin', 1, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `acesskey`
--

CREATE TABLE `acesskey` (
  `id` int(11) NOT NULL,
  `acesskey` varchar(8) NOT NULL,
  `type` varchar(10) NOT NULL,
  `used` tinyint(4) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acesskey`
--

INSERT INTO `acesskey` (`id`, `acesskey`, `type`, `used`, `date`) VALUES
(1, 'ZOmW9U2a', 'instructor', 1, '2018-08-08'),
(2, 'U5Ly68hY', 'instructor', 1, '2018-08-08'),
(3, '6rWtD08y', 'instructor', 0, '2018-08-08'),
(4, 'CgpGzbrG', 'instructor', 1, '2018-08-08'),
(5, '3V3IlxpT', 'instructor', 0, '2018-08-08'),
(6, 'ZLVDyVO9', 'instructor', 0, '2018-08-08'),
(7, 'gLwbcWGu', 'instructor', 1, '2018-08-08'),
(8, 'kOACCyx7', 'instructor', 0, '2018-08-08'),
(9, '6PAR39Zt', 'instructor', 1, '2018-08-08'),
(10, 'NyEN53Tm', 'instructor', 0, '2018-08-08'),
(11, 'EdaIXUOC', 'instructor', 0, '2018-08-08'),
(12, '2moWuTWH', 'instructor', 0, '2018-08-08'),
(13, 'FQWd7ZYB', 'instructor', 0, '2018-08-08'),
(14, 'OjU8pubk', 'instructor', 0, '2018-08-08'),
(15, 'Nw4e893a', 'instructor', 0, '2018-08-08'),
(16, '8fkZcnpF', 'instructor', 0, '2018-08-08'),
(17, '77HjnS2u', 'instructor', 0, '2018-08-08'),
(18, 'uOCIRYdv', 'instructor', 0, '2018-08-08'),
(19, 'QuCDTGvl', 'instructor', 1, '2018-08-08'),
(20, 'KfhEAHYG', 'instructor', 0, '2018-08-08'),
(21, 'WiqCFsXy', 'instructor', 0, '2018-08-08'),
(22, '8a2XbWmU', 'instructor', 0, '2018-08-08'),
(23, 'mklvV7AE', 'instructor', 0, '2018-08-08'),
(24, 'TGODI1KG', 'instructor', 0, '2018-08-08'),
(25, 'HmTHazzK', 'instructor', 0, '2018-08-08'),
(26, 'lOr61KNJ', 'instructor', 0, '2018-08-08'),
(27, 'NR9i2t95', 'instructor', 0, '2018-08-08'),
(28, 'itwILbMp', 'instructor', 0, '2018-08-08'),
(29, 'Fhx4SYcl', 'instructor', 0, '2018-08-08'),
(30, 'nw3lc0pP', 'instructor', 0, '2018-08-08'),
(31, 'zfbmZPSd', 'instructor', 0, '2018-08-08'),
(32, '4HxiLJGW', 'instructor', 0, '2018-08-08'),
(33, 'NtW1bKzF', 'instructor', 0, '2018-08-08'),
(34, 'agjwH88O', 'instructor', 0, '2018-08-08'),
(35, 'FOMWtd8r', 'instructor', 0, '2018-08-08'),
(36, 'uUSNebUR', 'instructor', 0, '2018-08-08'),
(37, 'otelAiqf', 'instructor', 0, '2018-08-08'),
(38, 'QpSwk45c', 'instructor', 0, '2018-08-08'),
(39, 't4161FSo', 'instructor', 0, '2018-08-08'),
(40, 'tpU2TYsM', 'instructor', 0, '2018-08-08'),
(41, 'QSArTq69', 'instructor', 0, '2018-08-08'),
(42, 'ui5rL8pY', 'instructor', 0, '2018-08-08'),
(43, 'jrkfQZAd', 'instructor', 0, '2018-08-08'),
(44, 'RizH03ju', 'instructor', 0, '2018-08-08'),
(45, 'dVyA6LqE', 'instructor', 0, '2018-08-08'),
(965, 'bQdlvrZJ', 'STUDENT', 1, '2018-08-10'),
(966, 'LKw9p44l', 'STUDENT', 0, '2018-08-10'),
(967, '08LT1Cll', 'STUDENT', 0, '2018-08-10'),
(968, 'EmzsXzre', 'STUDENT', 0, '2018-08-10'),
(969, '3VwIvLms', 'STUDENT', 0, '2018-08-10'),
(970, 'y63lsuK0', 'STUDENT', 0, '2018-08-10'),
(971, '9zsVW87W', 'STUDENT', 0, '2018-08-10'),
(972, 'hOARIZWC', 'STUDENT', 0, '2018-08-10'),
(973, 'TPHvbks2', 'STUDENT', 0, '2018-08-10'),
(974, 'eJZzdmxm', 'STUDENT', 0, '2018-08-10'),
(975, 'OG7C3rdY', 'STUDENT', 0, '2018-08-10'),
(976, '7WIEXaIC', 'STUDENT', 0, '2018-08-10'),
(977, 'S2cVygja', 'STUDENT', 0, '2018-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `adviser`
--

CREATE TABLE `adviser` (
  `adv_id` smallint(6) NOT NULL,
  `adv_fname` varchar(20) NOT NULL,
  `adv_midName` varchar(20) NOT NULL,
  `adv_Lname` varchar(20) NOT NULL,
  `adv_suff` varchar(5) NOT NULL,
  `adv_email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `authentication`
--

CREATE TABLE `authentication` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `a_id` int(11) NOT NULL,
  `a_fname` varchar(20) NOT NULL,
  `a_mname` varchar(20) NOT NULL,
  `a_lname` varchar(20) NOT NULL,
  `a_suffix` varchar(5) NOT NULL,
  `a_add` varchar(50) NOT NULL,
  `a_contact` varchar(15) NOT NULL,
  `a_email` varchar(25) NOT NULL,
  `a_pic` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `book_title` varchar(150) NOT NULL,
  `abstract` varchar(1000) DEFAULT NULL,
  `pub_date` date NOT NULL,
  `department` smallint(6) NOT NULL,
  `rev_count` smallint(6) DEFAULT NULL,
  `status` varchar(15) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `views_count` smallint(6) DEFAULT NULL,
  `cited` int(11) NOT NULL,
  `cover` varchar(80) NOT NULL,
  `docloc` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `section` varchar(15) NOT NULL,
  `description` varchar(40) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` smallint(6) NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `college` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dictionary`
--

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL,
  `word` varchar(45) NOT NULL,
  `index_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `disseminated`
--

CREATE TABLE `disseminated` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `location` varchar(15) NOT NULL,
  `description` varchar(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groupdoc`
--

CREATE TABLE `groupdoc` (
  `id` int(11) NOT NULL,
  `accid` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `indexes`
--

CREATE TABLE `indexes` (
  `index_id` bigint(20) NOT NULL,
  `word_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `offset` int(11) NOT NULL,
  `end` tinyint(4) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `junc_advicerbook`
--

CREATE TABLE `junc_advicerbook` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `adv_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `junc_authorbook`
--

CREATE TABLE `junc_authorbook` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `aut_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `junc_bookkeywords`
--

CREATE TABLE `junc_bookkeywords` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `keywords_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `junk_accountbook`
--

CREATE TABLE `junk_accountbook` (
  `id` int(11) NOT NULL,
  `acc_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `junk_bookref`
--

CREATE TABLE `junk_bookref` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `webref_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` int(11) NOT NULL,
  `key_words` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `published`
--

CREATE TABLE `published` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `issn` varchar(50) NOT NULL,
  `journal` varchar(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ref`
--

CREATE TABLE `ref` (
  `id` int(11) NOT NULL,
  `link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `referencekey`
--

CREATE TABLE `referencekey` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `refkey` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username and password unique` (`u_name`,`password`);

--
-- Indexes for table `acesskey`
--
ALTER TABLE `acesskey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adviser`
--
ALTER TABLE `adviser`
  ADD PRIMARY KEY (`adv_id`),
  ADD UNIQUE KEY `adv_name` (`adv_fname`);

--
-- Indexes for table `authentication`
--
ALTER TABLE `authentication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`a_id`),
  ADD UNIQUE KEY `author name unique` (`a_fname`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `book name unique` (`book_title`),
  ADD KEY `Book Has a Category` (`department`) USING BTREE;

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dictionary`
--
ALTER TABLE `dictionary`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `word must unique` (`word`);

--
-- Indexes for table `disseminated`
--
ALTER TABLE `disseminated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disseminated_ibfk_1` (`book_id`);

--
-- Indexes for table `groupdoc`
--
ALTER TABLE `groupdoc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accid` (`accid`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `indexes`
--
ALTER TABLE `indexes`
  ADD PRIMARY KEY (`index_id`),
  ADD UNIQUE KEY `word id book id offset unique` (`word_id`,`book_id`,`offset`),
  ADD KEY `word_id` (`word_id`),
  ADD KEY `index_id` (`index_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `offset` (`offset`);

--
-- Indexes for table `junc_advicerbook`
--
ALTER TABLE `junc_advicerbook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `adv_id` (`adv_id`);

--
-- Indexes for table `junc_authorbook`
--
ALTER TABLE `junc_authorbook`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `AuthorBook` (`book_id`,`aut_id`),
  ADD KEY `Pk_author_id` (`aut_id`);

--
-- Indexes for table `junc_bookkeywords`
--
ALTER TABLE `junc_bookkeywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book have manay key words` (`book_id`),
  ADD KEY `many to many` (`keywords_id`);

--
-- Indexes for table `junk_accountbook`
--
ALTER TABLE `junk_accountbook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `junction author` (`acc_id`),
  ADD KEY `junction book` (`book_id`);

--
-- Indexes for table `junk_bookref`
--
ALTER TABLE `junk_bookref`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Book` (`book_id`),
  ADD KEY `WebRefence` (`webref_id`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywordsUnique` (`key_words`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `published`
--
ALTER TABLE `published`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `ref`
--
ALTER TABLE `ref`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referencekey`
--
ALTER TABLE `referencekey`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `acesskey`
--
ALTER TABLE `acesskey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=978;

--
-- AUTO_INCREMENT for table `adviser`
--
ALTER TABLE `adviser`
  MODIFY `adv_id` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authentication`
--
ALTER TABLE `authentication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dictionary`
--
ALTER TABLE `dictionary`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disseminated`
--
ALTER TABLE `disseminated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groupdoc`
--
ALTER TABLE `groupdoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `indexes`
--
ALTER TABLE `indexes`
  MODIFY `index_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `junc_advicerbook`
--
ALTER TABLE `junc_advicerbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `junc_authorbook`
--
ALTER TABLE `junc_authorbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `junc_bookkeywords`
--
ALTER TABLE `junc_bookkeywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `junk_accountbook`
--
ALTER TABLE `junk_accountbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `junk_bookref`
--
ALTER TABLE `junk_bookref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `published`
--
ALTER TABLE `published`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ref`
--
ALTER TABLE `ref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referencekey`
--
ALTER TABLE `referencekey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `Book Has a Category` FOREIGN KEY (`department`) REFERENCES `department` (`id`);

--
-- Constraints for table `disseminated`
--
ALTER TABLE `disseminated`
  ADD CONSTRAINT `disseminated_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`);

--
-- Constraints for table `groupdoc`
--
ALTER TABLE `groupdoc`
  ADD CONSTRAINT `groupdoc_ibfk_1` FOREIGN KEY (`accid`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `groupdoc_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`);

--
-- Constraints for table `indexes`
--
ALTER TABLE `indexes`
  ADD CONSTRAINT `fk book id` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk word id` FOREIGN KEY (`word_id`) REFERENCES `dictionary` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `junc_advicerbook`
--
ALTER TABLE `junc_advicerbook`
  ADD CONSTRAINT `Pk_Advicer` FOREIGN KEY (`adv_id`) REFERENCES `adviser` (`adv_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Pk_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `junc_authorbook`
--
ALTER TABLE `junc_authorbook`
  ADD CONSTRAINT `Pk_author_id` FOREIGN KEY (`aut_id`) REFERENCES `author` (`a_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `Pk_book_id` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `junc_bookkeywords`
--
ALTER TABLE `junc_bookkeywords`
  ADD CONSTRAINT `book have manay key words` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `many to many` FOREIGN KEY (`keywords_id`) REFERENCES `keywords` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `junk_accountbook`
--
ALTER TABLE `junk_accountbook`
  ADD CONSTRAINT `junction author` FOREIGN KEY (`acc_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `junction book` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `junk_bookref`
--
ALTER TABLE `junk_bookref`
  ADD CONSTRAINT `Book` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `WebRefence` FOREIGN KEY (`webref_id`) REFERENCES `ref` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `published`
--
ALTER TABLE `published`
  ADD CONSTRAINT `published_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`);

--
-- Constraints for table `referencekey`
--
ALTER TABLE `referencekey`
  ADD CONSTRAINT `referencekey_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
