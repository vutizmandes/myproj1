-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2019 at 10:27 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `klienti`
--

CREATE TABLE `klienti` (
  `id` int(11) UNSIGNED NOT NULL,
  `Name` varchar(30) COLLATE utf8_latvian_ci NOT NULL,
  `SelectedTest` int(3) NOT NULL,
  `testResult` int(3) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_latvian_ci;

--
-- Dumping data for table `klienti`
--

INSERT INTO `klienti` (`id`, `Name`, `SelectedTest`, `testResult`, `date`) VALUES
(13, 'VÄrds...', 1, 0, '2019-01-28 09:20:18'),
(15, ' viktors bel', 1, 0, '2019-01-28 09:16:43'),
(24, 'VÄrds...', 1, 0, '2019-01-28 09:23:55'),
(68, 'VÄrds...', 1, 0, '2019-01-28 09:24:38'),
(75, 'VÄrds...', 1, 0, '2019-01-28 08:55:17'),
(99, ' brosi', 1, 0, '2019-01-28 09:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `test1`
--

CREATE TABLE `test1` (
  `id` int(11) UNSIGNED NOT NULL,
  `jautajums` varchar(30) NOT NULL,
  `pareizaAtbilde` int(3) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test1_atbildes`
--

CREATE TABLE `test1_atbildes` (
  `id` int(11) UNSIGNED NOT NULL,
  `jautajums` varchar(30) CHARACTER SET utf8 COLLATE utf8_latvian_ci NOT NULL,
  `atbilde` varchar(60) CHARACTER SET utf8 COLLATE utf8_latvian_ci NOT NULL,
  `jaut_num` int(3) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test1_atbildes`
--

INSERT INTO `test1_atbildes` (`id`, `jautajums`, `atbilde`, `jaut_num`, `date`) VALUES
(1, 'Kāda ir FULL HD izķirtspēja?', '1366x768', 1, '2019-01-28 06:49:58'),
(2, 'Kāda ir FULL HD izķirtspēja?', '1920x768', 1, '2019-01-28 06:51:34'),
(3, 'Kāda ir FULL HD izķirtspēja?', '1920x1080', 1, '2019-01-28 06:51:49'),
(4, 'Kāda ir FULL HD izķirtspēja?', '1600x1400', 1, '2019-01-28 06:51:58'),
(5, 'Kas ir IPS matrica?', 'IPS', 2, '2019-01-28 06:52:47'),
(6, 'Kas ir IPS matrica?', 'LCD', 2, '2019-01-28 06:53:08'),
(7, 'Kas ir IPS matrica?', 'CRT', 2, '2019-01-28 06:53:19'),
(8, 'Kas ir IPS matrica?', 'Plasma', 2, '2019-01-28 06:53:33'),
(9, 'Kāds procesors ir jaudīgāks Pe', 'Pentium', 3, '2019-01-28 06:54:12'),
(10, 'Kāds procesors ir jaudīgāks Pe', 'Celeron', 3, '2019-01-28 06:54:23'),
(11, 'Kāds procesors ir jaudīgāks Pe', 'XEON', 3, '2019-01-28 06:54:33'),
(12, 'Kāds procesors ir jaudīgāks Pe', 'Pentium vai Celeron', 3, '2019-01-28 06:54:58'),
(13, 'Kāds procesors ir jaudīgāks Pe', 'Atkarīgs no procesora modeļa. Celeron var būt jaudīgāks par ', 3, '2019-01-28 06:55:33'),
(14, 'Kas ir tālāk no Zemes?', 'Saule', 4, '2019-01-28 06:55:51'),
(15, 'Kas ir tālāk no Zemes?', 'Mēness', 4, '2019-01-28 06:56:00'),
(16, 'Kas ir tālāk no Zemes?', 'Vienādi', 4, '2019-01-28 06:56:12'),
(17, 'Kas ir tālāk no Zemes?', 'Saturns', 4, '2019-01-28 06:56:22'),
(18, ' 	Kura no šīm valodām nav OOP?', 'Assembler', NULL, '2019-01-25 08:36:28'),
(19, ' 	Kura no šīm valodām nav OOP?', 'PHP', NULL, '2019-01-25 08:36:46'),
(20, ' 	Kura no šīm valodām nav OOP?', 'Kas ir oop?', NULL, '2019-01-25 08:37:03'),
(21, ' 	Kura no šīm valodām nav OOP?', 'Java', NULL, '2019-01-25 08:37:16'),
(22, ' 	Cik būs 2+2?', '4', NULL, '2019-01-25 08:38:26'),
(23, ' 	Cik būs 2+2?', '5', NULL, '2019-01-25 08:38:37'),
(24, ' 	Cik būs 2+2?', 'Matemātiski var pierādīt, ka tas ir 5', NULL, '2019-01-25 08:39:01'),
(25, ' Kas ir PDO?', 'PDO', NULL, '2019-01-25 08:40:21'),
(26, ' Kas ir PDO?', 'PDA', NULL, '2019-01-25 08:40:34'),
(27, ' Kas ir PDO?', 'PDP', NULL, '2019-01-25 08:40:45'),
(28, ' Kas ir PDO?', 'PDO + PDP', NULL, '2019-01-25 08:40:57');

-- --------------------------------------------------------

--
-- Table structure for table `test1_jautajumi`
--

CREATE TABLE `test1_jautajumi` (
  `id` int(11) UNSIGNED NOT NULL,
  `jautajums` varchar(60) CHARACTER SET utf8 COLLATE utf8_latvian_ci NOT NULL,
  `pareizaAtbilde` int(3) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test1_jautajumi`
--

INSERT INTO `test1_jautajumi` (`id`, `jautajums`, `pareizaAtbilde`, `date`) VALUES
(2, 'Kas ir LED IPS, domÄ?', 444, '2019-01-27 18:54:51'),
(3, 'KÄds procesors ir jaudÄ«gÄks Pentium vai Celeron', 13, '2019-01-25 17:46:06'),
(5, 'Kas ir tÄlÄk no Zemes?', 1417, '2019-01-25 17:51:25'),
(7, 'Kura no Å¡Ä«m valodÄm nav OOP?', 18, '2019-01-25 17:52:53'),
(8, 'Cik bÅ«s 2+2?', 2224, '2019-01-25 17:53:31'),
(10, 'Kas ir PDO?', 25, '2019-01-25 17:56:49'),
(1, 'Kāda ir FULL HD izķirtspēja?', 3, '2019-01-27 12:47:21');

-- --------------------------------------------------------

--
-- Table structure for table `test1_pareizas_atbildes`
--

CREATE TABLE `test1_pareizas_atbildes` (
  `jaut_id` int(11) NOT NULL,
  `pareizaAtbilde` varchar(60) CHARACTER SET utf8 COLLATE utf8_latvian_ci NOT NULL,
  `pareizaAtbilde_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test1_pareizas_atbildes`
--

INSERT INTO `test1_pareizas_atbildes` (`jaut_id`, `pareizaAtbilde`, `pareizaAtbilde_id`) VALUES
(1, '1920x1080', 3),
(2, 'IPS matrica', 2),
(3, 'Pentium', 1),
(5, 'Saule', 1),
(7, 'Assembler', 4),
(8, '4', 3);

-- --------------------------------------------------------

--
-- Table structure for table `test2_atbildes`
--

CREATE TABLE `test2_atbildes` (
  `id` int(11) UNSIGNED NOT NULL,
  `jautajums` varchar(30) CHARACTER SET utf8 COLLATE utf8_latvian_ci NOT NULL,
  `atbilde` varchar(60) CHARACTER SET utf8 COLLATE utf8_latvian_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test2_atbildes`
--

INSERT INTO `test2_atbildes` (`id`, `jautajums`, `atbilde`, `date`) VALUES
(3, 'Kāda ir FULL HD izķirtspēja?', '1920x1080', '2019-01-24 17:52:48'),
(4, 'Kāda ir FULL HD izķirtspēja?', '1600x1400', '2019-01-24 17:52:49'),
(5, 'Kas ir IPS matrica?', 'IPS', '2019-01-25 08:07:53'),
(6, 'Kas ir IPS matrica?', 'LCD', '2019-01-25 08:08:32'),
(7, 'Kas ir IPS matrica?', 'CRT', '2019-01-25 08:08:44'),
(8, 'Kas ir IPS matrica?', 'Plasma', '2019-01-25 08:08:57'),
(9, 'Kāds procesors ir jaudīgāks Pe', 'Pentium', '2019-01-25 08:10:25'),
(10, 'Kāds procesors ir jaudīgāks Pe', 'Celeron', '2019-01-25 08:10:46'),
(11, 'Kāds procesors ir jaudīgāks Pe', 'XEON', '2019-01-25 08:10:57'),
(12, 'Kāds procesors ir jaudīgāks Pe', 'Pentium vai Celeron', '2019-01-25 08:11:12'),
(13, 'Kāds procesors ir jaudīgāks Pe', 'Atkarīgs no procesora modeļa. Celeron var būt jaudīgāks par ', '2019-01-25 08:11:51'),
(14, 'Kas ir tālāk no Zemes?', 'Saule', '2019-01-25 08:34:42'),
(15, 'Kas ir tālāk no Zemes?', 'Mēness', '2019-01-25 08:34:59'),
(16, 'Kas ir tālāk no Zemes?', 'Vienādi', '2019-01-25 08:35:15'),
(17, 'Kas ir tālāk no Zemes?', 'Saturns', '2019-01-25 08:35:32'),
(18, ' 	Kura no šīm valodām nav OOP?', 'Assembler', '2019-01-25 08:36:28'),
(19, ' 	Kura no šīm valodām nav OOP?', 'PHP', '2019-01-25 08:36:46'),
(20, ' 	Kura no šīm valodām nav OOP?', 'Kas ir oop?', '2019-01-25 08:37:03'),
(21, ' 	Kura no šīm valodām nav OOP?', 'Java', '2019-01-25 08:37:16'),
(22, ' 	Cik būs 2+2?', '4', '2019-01-25 08:38:26'),
(23, ' 	Cik būs 2+2?', '5', '2019-01-25 08:38:37'),
(24, ' 	Cik būs 2+2?', 'Matemātiski var pierādīt, ka tas ir 5', '2019-01-25 08:39:01'),
(25, ' Kas ir PDO?', 'PDO', '2019-01-25 08:40:21'),
(26, ' Kas ir PDO?', 'PDA', '2019-01-25 08:40:34'),
(27, ' Kas ir PDO?', 'PDP', '2019-01-25 08:40:45'),
(28, ' Kas ir PDO?', 'PDO + PDP', '2019-01-25 08:40:57'),
(1, 'TEST2', '1920x768', '2019-01-27 11:30:51');

-- --------------------------------------------------------

--
-- Table structure for table `test2_jautajumi`
--

CREATE TABLE `test2_jautajumi` (
  `id` int(11) UNSIGNED NOT NULL,
  `jautajums` varchar(60) CHARACTER SET utf8 COLLATE utf8_latvian_ci NOT NULL,
  `pareizaAtbilde` int(3) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test2_jautajumi`
--

INSERT INTO `test2_jautajumi` (`id`, `jautajums`, `pareizaAtbilde`, `date`) VALUES
(1, 'jautajums1', 1234, '2019-01-25 19:22:36'),
(2, 'jautajums2', 2, '2019-01-25 19:21:15'),
(3, 'jautajums3', 1, '2019-01-25 19:21:32'),
(5, 'jautajums4', 5, '2019-01-25 19:21:47'),
(7, 'jautajums5', 4, '2019-01-25 19:22:02');

-- --------------------------------------------------------

--
-- Table structure for table `test2_pareizas_atbildes`
--

CREATE TABLE `test2_pareizas_atbildes` (
  `jaut_id` int(11) NOT NULL,
  `pareizaAtbilde` varchar(60) CHARACTER SET utf8 COLLATE utf8_latvian_ci NOT NULL,
  `pareizaAtbilde_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test2_pareizas_atbildes`
--

INSERT INTO `test2_pareizas_atbildes` (`jaut_id`, `pareizaAtbilde`, `pareizaAtbilde_id`) VALUES
(1, '1920x1080', 3),
(2, 'IPS matrica', 2),
(3, 'Pentium', 1),
(5, 'Saule', 1),
(7, 'Assembler', 4),
(8, '4', 3);

-- --------------------------------------------------------

--
-- Table structure for table `test3_atbildes`
--

CREATE TABLE `test3_atbildes` (
  `id` int(11) UNSIGNED NOT NULL,
  `jautajums` varchar(30) CHARACTER SET utf8 COLLATE utf8_latvian_ci NOT NULL,
  `atbilde` varchar(60) CHARACTER SET utf8 COLLATE utf8_latvian_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test3_atbildes`
--

INSERT INTO `test3_atbildes` (`id`, `jautajums`, `atbilde`, `date`) VALUES
(1, 'Kāda ir FULL HD izķirtspēja?', '1366x768', '2019-01-24 17:47:49'),
(2, 'Kāda ir FULL HD izķirtspēja?', '1920x768', '2019-01-24 17:52:48'),
(3, 'Kāda ir FULL HD izķirtspēja?', '1920x1080', '2019-01-24 17:52:48'),
(4, 'Kāda ir FULL HD izķirtspēja?', '1600x1400', '2019-01-24 17:52:49'),
(5, 'Kas ir IPS matrica?', 'IPS', '2019-01-25 08:07:53'),
(6, 'Kas ir IPS matrica?', 'LCD', '2019-01-25 08:08:32'),
(7, 'Kas ir IPS matrica?', 'CRT', '2019-01-25 08:08:44'),
(8, 'Kas ir IPS matrica?', 'Plasma', '2019-01-25 08:08:57'),
(9, 'Kāds procesors ir jaudīgāks Pe', 'Pentium', '2019-01-25 08:10:25'),
(10, 'Kāds procesors ir jaudīgāks Pe', 'Celeron', '2019-01-25 08:10:46'),
(11, 'Kāds procesors ir jaudīgāks Pe', 'XEON', '2019-01-25 08:10:57'),
(12, 'Kāds procesors ir jaudīgāks Pe', 'Pentium vai Celeron', '2019-01-25 08:11:12'),
(13, 'Kāds procesors ir jaudīgāks Pe', 'Atkarīgs no procesora modeļa. Celeron var būt jaudīgāks par ', '2019-01-25 08:11:51'),
(14, 'Kas ir tālāk no Zemes?', 'Saule', '2019-01-25 08:34:42'),
(15, 'Kas ir tālāk no Zemes?', 'Mēness', '2019-01-25 08:34:59'),
(16, 'Kas ir tālāk no Zemes?', 'Vienādi', '2019-01-25 08:35:15'),
(17, 'Kas ir tālāk no Zemes?', 'Saturns', '2019-01-25 08:35:32'),
(18, ' 	Kura no šīm valodām nav OOP?', 'Assembler', '2019-01-25 08:36:28'),
(19, ' 	Kura no šīm valodām nav OOP?', 'PHP', '2019-01-25 08:36:46'),
(20, ' 	Kura no šīm valodām nav OOP?', 'Kas ir oop?', '2019-01-25 08:37:03'),
(21, ' 	Kura no šīm valodām nav OOP?', 'Java', '2019-01-25 08:37:16'),
(22, ' 	Cik būs 2+2?', '4', '2019-01-25 08:38:26'),
(23, ' 	Cik būs 2+2?', '5', '2019-01-25 08:38:37'),
(24, ' 	Cik būs 2+2?', 'Matemātiski var pierādīt, ka tas ir 5', '2019-01-25 08:39:01'),
(25, ' Kas ir PDO?', 'PDO', '2019-01-25 08:40:21'),
(26, ' Kas ir PDO?', 'PDA', '2019-01-25 08:40:34'),
(27, ' Kas ir PDO?', 'PDP', '2019-01-25 08:40:45'),
(28, ' Kas ir PDO?', 'PDO + PDP', '2019-01-25 08:40:57'),
(1, 'TEST3', '1920x768', '2019-01-27 11:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `test3_jautajumi`
--

CREATE TABLE `test3_jautajumi` (
  `id` int(11) UNSIGNED NOT NULL,
  `jautajums` varchar(60) CHARACTER SET utf8 COLLATE utf8_latvian_ci NOT NULL,
  `pareizaAtbilde` int(3) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test3_jautajumi`
--

INSERT INTO `test3_jautajumi` (`id`, `jautajums`, `pareizaAtbilde`, `date`) VALUES
(1, 'KÄda ir FULL HD izÅ¡Ä·irtspÄ“ja?', 3, '2019-01-25 05:10:19'),
(2, 'Kas ir LED IPS, domÄ?', 2, '2019-01-25 05:10:46'),
(7, 'Kura no Å¡Ä«m valodÄm nav OOP?', 4, '2019-01-25 04:44:49'),
(10, 'Kas ir PDO?', 4, '2019-01-25 05:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `test3_pareizas_atbildes`
--

CREATE TABLE `test3_pareizas_atbildes` (
  `jaut_id` int(11) NOT NULL,
  `pareizaAtbilde` varchar(60) CHARACTER SET utf8 COLLATE utf8_latvian_ci NOT NULL,
  `pareizaAtbilde_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test3_pareizas_atbildes`
--

INSERT INTO `test3_pareizas_atbildes` (`jaut_id`, `pareizaAtbilde`, `pareizaAtbilde_id`) VALUES
(1, '1920x1080', 3),
(2, 'IPS matrica', 2),
(3, 'Pentium', 1),
(5, 'Saule', 1),
(7, 'Assembler', 4),
(8, '4', 3);

-- --------------------------------------------------------

--
-- Table structure for table `test_process`
--

CREATE TABLE `test_process` (
  `id` int(11) UNSIGNED NOT NULL,
  `jaut_id` int(3) NOT NULL,
  `pareizaAtbilde` int(6) NOT NULL,
  `klientaAtbilde` int(6) NOT NULL,
  `vaiPareizi` tinyint(1) NOT NULL,
  `testResult` int(3) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_latvian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `age` int(3) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `age`, `location`, `date`) VALUES
(1, 'asd', 'dsa', 'sadf@asd', 44, 'chicago', '2019-01-24 13:37:11'),
(2, 'asdfasdf', 'asdfsfzvc', '444@44420', 54, 'chicago', '2019-01-24 13:38:19'),
(0, 'asdfasdf', 'asdfsfzvc', 'sadf@asd', 54, 'chicago', '2019-01-25 10:51:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `klienti`
--
ALTER TABLE `klienti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_process`
--
ALTER TABLE `test_process`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klienti`
--
ALTER TABLE `klienti`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `test_process`
--
ALTER TABLE `test_process`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
