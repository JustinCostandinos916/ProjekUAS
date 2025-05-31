-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2025 at 05:40 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sm_ubm`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `email` varchar(100) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `bio` varchar(200) DEFAULT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`email`, `username`, `fullname`, `bio`, `password`) VALUES
('ccostandinosjustin@', 'JustinCostand', 'Justin Costandinos', 'asda', '202cb962ac59075b964b07152d234b70'),
('s12345@student.ubm.ac.id', 'lisa', 'Lisa Hartanto', 'Berpikir positif', 'e9803a706f81a40884b8aeafafb2cfd3'),
('s12346@student.ubm.ac.id', 'justin', 'Justin Costandinos', 'Tampan dan Berani', 'f6eca4dbc78df78d63fba980e448185f'),
('s12367@student.ubm.ac.id', 'ahmad', 'Ahmad Yanto', 'baik', '8de13959395270bf9d6819f818ab1a00'),
('s12467@student.ubm.ac.id', 'kevin', 'Kevin Lie', 'kacamata', 'd2e7a2105d0fb461fe6f2858cc33942f');

-- --------------------------------------------------------

--
-- Table structure for table `posting`
--

CREATE TABLE `posting` (
  `idposting` int(12) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `publish_data` datetime NOT NULL DEFAULT current_timestamp(),
  `userpost` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posting`
--

INSERT INTO `posting` (`idposting`, `title`, `image`, `content`, `publish_data`, `userpost`) VALUES
(7, 'kehidupan di kampus antara tugas dan sosialisasi\r\n', 'tugas_dan_sosialisasi.jpg', 'Kehidupan mahasiswa penuh dengan tugas kuliah, tetapi juga ada waktu untuk bersosialisasi', '2025-03-05 12:11:50', 'lisa'),
(8, 'Menghadapi Ujian Strategi Jitu', 'ujian_mahasiswa.jpg', 'Kehidupan mahasiswa penuh dengan tugas kuliah, tetapi juga ada waktu untuk bersosialisasi', '2025-03-09 12:12:39', 'ahmad'),
(9, 'Rencana Karir Setelah Lulus: Perspektif Mahasiswa', 'rencana_karir.jpg', 'Menjelang ujian, mahasiswa harus mempersiapkan diri dengan baik dan menjaga kesehatan', '2025-03-11 12:13:18', 'justin'),
(10, 'The Best Travel Destinations', 'travel_destinations.jpg', 'Mahasiswa mulai memikirkan langkah-langkah karir mereka setelah lulus, baik itu melanjutkan studi atau terjun ke dunia kerja', '2025-03-12 20:22:49', 'ahmad'),
(11, 'The Future of Artificial Intelligence', 'ai_future.jpg', 'AI is transforming industries in ways we never happened', '2025-03-04 12:15:12', 'ahmad'),
(12, 'Cara Mengatur Keuangan Pribadi', 'finance_tips.jpg', 'Artikel ini menjelaskan cara-cara mengatur keuangan pribadi untuk mencapai kebebasan finansial', '2025-03-10 00:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `posting`
--
ALTER TABLE `posting`
  ADD PRIMARY KEY (`idposting`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `userpost` (`userpost`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posting`
--
ALTER TABLE `posting`
  MODIFY `idposting` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posting`
--
ALTER TABLE `posting`
  ADD CONSTRAINT `posting_ibfk_1` FOREIGN KEY (`userpost`) REFERENCES `account` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
