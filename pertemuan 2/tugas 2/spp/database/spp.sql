-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2022 at 01:29 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`idadmin` int(5) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `namalengkap` varchar(40) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`, `namalengkap`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'sunandar'),
(3, 'operator', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'meyki ardiansyah'),
(4, 'operator', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Awaludin'),
(5, 'admin', '6c7ca345f63f835cb353ff15bd6c5e052ec08e7a', 'wali barsan'),
(6, 'user', '12dea96fec20593566ab75692c9949596833adc9', 'sapria');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE IF NOT EXISTS `guru` (
`idguru` int(5) NOT NULL,
  `namaguru` varchar(40) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`idguru`, `namaguru`) VALUES
(1, 'SUPRIANTO, SPd'),
(4, 'MEYKI ARDIANSYAH'),
(5, 'JERRY SANJAYA'),
(6, 'REZA ADSIANSYAH'),
(7, 'HONGKY WIRANATA'),
(8, 'WAHYU CHANDRA'),
(9, 'JAPRIANNSYAH'),
(11, 'NEDI RENALDI'),
(15, ' ERICK IRWANSYAH '),
(16, 'Awaludin');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
`idsiswa` int(10) NOT NULL,
  `nis` varchar(10) DEFAULT NULL,
  `namasiswa` varchar(40) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `tahunajaran` varchar(10) DEFAULT NULL,
  `biaya` int(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`idsiswa`, `nis`, `namasiswa`, `kelas`, `tahunajaran`, `biaya`) VALUES
(23, '201810001', 'hanggara P A', 'IX A', '2021/2022', 300000),
(24, '201810002', 'Meyki Ardiansyah', 'IX A', '2021/2022', 300000),
(25, '201810003', 'Chandra Wijaya', 'IX A', '2021/2022', 300000),
(26, '201810004', 'Dedi Marlin Hidayat', 'IX A', '2021/2022', 300000),
(27, '201810005', 'Novian Sandi Putra', 'IX A', '2021/2022', 300000),
(28, '201810006', 'Rina Puspita Sari', 'IX A', '2021/2022', 300000),
(29, '201810007', 'Jeki Sanjaka', 'IX A', '2021/2022', 300000),
(30, '201810008', 'Andry Al-febri', 'IX A', '2021/2022', 300000),
(31, '201810009', 'Atang Al-Farizi', 'IX A', '2021/2022', 300000);

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE IF NOT EXISTS `spp` (
`idspp` int(5) NOT NULL,
  `idsiswa` int(10) DEFAULT NULL,
  `jatuhtempo` date DEFAULT NULL,
  `bulan` varchar(20) DEFAULT NULL,
  `nobayar` varchar(10) DEFAULT NULL,
  `tglbayar` date DEFAULT NULL,
  `jumlah` int(20) DEFAULT NULL,
  `ket` varchar(20) DEFAULT NULL,
  `idadmin` int(5) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`idspp`, `idsiswa`, `jatuhtempo`, `bulan`, `nobayar`, `tglbayar`, `jumlah`, `ket`, `idadmin`) VALUES
(1, 23, '2018-10-10', 'Oktober  2018', '20170919', '2018-09-24', 250000, 'LUNAS', 1),
(2, 23, '2018-11-10', 'November  2018', '1809240001', '2018-09-24', 250000, 'LUNAS', 1),
(3, 23, '2018-12-10', 'Desember  2018', '1809240002', '2018-09-24', 250000, 'LUNAS', 1),
(4, 23, '2019-01-10', 'januari  2019', NULL, NULL, 250000, NULL, NULL),
(5, 23, '2019-02-10', 'Februari  2019', NULL, NULL, 250000, NULL, NULL),
(6, 23, '2019-03-10', 'Maret  2019', NULL, NULL, 250000, NULL, NULL),
(7, 23, '2019-04-10', 'April  2019', NULL, NULL, 250000, NULL, NULL),
(8, 23, '2019-05-10', 'Mei  2019', NULL, NULL, 250000, NULL, NULL),
(9, 23, '2019-06-10', 'Juni  2019', NULL, NULL, 250000, NULL, NULL),
(10, 23, '2019-07-10', 'Juli  2019', NULL, NULL, 250000, NULL, NULL),
(11, 23, '2019-08-10', 'Agustus  2019', NULL, NULL, 250000, NULL, NULL),
(12, 23, '2019-09-10', 'September  2019', NULL, NULL, 250000, NULL, NULL),
(13, 24, '2018-10-10', 'Oktober  2018', '1809250004', '2018-09-25', 250000, 'LUNAS', 1),
(14, 24, '2018-11-10', 'November  2018', '1809240011', '2018-09-24', 250000, 'LUNAS', 1),
(15, 24, '2018-12-10', 'Desember  2018', '1809240012', '2018-09-24', 250000, 'LUNAS', 1),
(16, 24, '2019-01-10', 'januari  2019', '1809240014', '2018-09-24', 250000, 'LUNAS', 1),
(17, 24, '2019-02-10', 'Februari  2019', '1809240015', '2018-09-24', 250000, 'LUNAS', 1),
(18, 24, '2019-03-10', 'Maret  2019', NULL, NULL, 250000, NULL, NULL),
(19, 24, '2019-04-10', 'April  2019', NULL, NULL, 250000, NULL, NULL),
(20, 24, '2019-05-10', 'Mei  2019', NULL, NULL, 250000, NULL, NULL),
(21, 24, '2019-06-10', 'Juni  2019', NULL, NULL, 250000, NULL, NULL),
(22, 24, '2019-07-10', 'Juli  2019', NULL, NULL, 250000, NULL, NULL),
(23, 24, '2019-08-10', 'Agustus  2019', NULL, NULL, 250000, NULL, NULL),
(24, 24, '2019-09-10', 'September  2019', NULL, NULL, 250000, NULL, NULL),
(25, 25, '2018-10-10', 'Oktober  2018', NULL, NULL, 250000, NULL, NULL),
(26, 25, '2018-11-10', 'November  2018', NULL, NULL, 250000, NULL, NULL),
(27, 25, '2018-12-10', 'Desember  2018', NULL, NULL, 250000, NULL, NULL),
(28, 25, '2019-01-10', 'januari  2019', NULL, NULL, 250000, NULL, NULL),
(29, 25, '2019-02-10', 'Februari  2019', NULL, NULL, 250000, NULL, NULL),
(30, 25, '2019-03-10', 'Maret  2019', NULL, NULL, 250000, NULL, NULL),
(31, 25, '2019-04-10', 'April  2019', NULL, NULL, 250000, NULL, NULL),
(32, 25, '2019-05-10', 'Mei  2019', NULL, NULL, 250000, NULL, NULL),
(33, 25, '2019-06-10', 'Juni  2019', NULL, NULL, 250000, NULL, NULL),
(34, 25, '2019-07-10', 'Juli  2019', NULL, NULL, 250000, NULL, NULL),
(35, 25, '2019-08-10', 'Agustus  2019', NULL, NULL, 250000, NULL, NULL),
(36, 25, '2019-09-10', 'September  2019', NULL, NULL, 250000, NULL, NULL),
(37, 26, '2018-10-10', 'Oktober  2018', NULL, NULL, 250000, NULL, NULL),
(38, 26, '2018-11-10', 'November  2018', NULL, NULL, 250000, NULL, NULL),
(39, 26, '2018-12-10', 'Desember  2018', NULL, NULL, 250000, NULL, NULL),
(40, 26, '2019-01-10', 'januari  2019', NULL, NULL, 250000, NULL, NULL),
(41, 26, '2019-02-10', 'Februari  2019', NULL, NULL, 250000, NULL, NULL),
(42, 26, '2019-03-10', 'Maret  2019', NULL, NULL, 250000, NULL, NULL),
(43, 26, '2019-04-10', 'April  2019', NULL, NULL, 250000, NULL, NULL),
(44, 26, '2019-05-10', 'Mei  2019', NULL, NULL, 250000, NULL, NULL),
(45, 26, '2019-06-10', 'Juni  2019', NULL, NULL, 250000, NULL, NULL),
(46, 26, '2019-07-10', 'Juli  2019', NULL, NULL, 250000, NULL, NULL),
(47, 26, '2019-08-10', 'Agustus  2019', NULL, NULL, 250000, NULL, NULL),
(48, 26, '2019-09-10', 'September  2019', NULL, NULL, 250000, NULL, NULL),
(49, 27, '2018-10-10', 'Oktober  2018', NULL, NULL, 250000, NULL, NULL),
(50, 27, '2018-11-10', 'November  2018', NULL, NULL, 250000, NULL, NULL),
(51, 27, '2018-12-10', 'Desember  2018', NULL, NULL, 250000, NULL, NULL),
(52, 27, '2019-01-10', 'januari  2019', NULL, NULL, 250000, NULL, NULL),
(53, 27, '2019-02-10', 'Februari  2019', NULL, NULL, 250000, NULL, NULL),
(54, 27, '2019-03-10', 'Maret  2019', NULL, NULL, 250000, NULL, NULL),
(55, 27, '2019-04-10', 'April  2019', NULL, NULL, 250000, NULL, NULL),
(56, 27, '2019-05-10', 'Mei  2019', NULL, NULL, 250000, NULL, NULL),
(57, 27, '2019-06-10', 'Juni  2019', NULL, NULL, 250000, NULL, NULL),
(58, 27, '2019-07-10', 'Juli  2019', NULL, NULL, 250000, NULL, NULL),
(59, 27, '2019-08-10', 'Agustus  2019', NULL, NULL, 250000, NULL, NULL),
(60, 27, '2019-09-10', 'September  2019', NULL, NULL, 250000, NULL, NULL),
(61, 28, '2018-10-10', 'Oktober  2018', NULL, NULL, 250000, NULL, NULL),
(62, 28, '2018-11-10', 'November  2018', NULL, NULL, 250000, NULL, NULL),
(63, 28, '2018-12-10', 'Desember  2018', NULL, NULL, 250000, NULL, NULL),
(64, 28, '2019-01-10', 'januari  2019', NULL, NULL, 250000, NULL, NULL),
(65, 28, '2019-02-10', 'Februari  2019', NULL, NULL, 250000, NULL, NULL),
(66, 28, '2019-03-10', 'Maret  2019', NULL, NULL, 250000, NULL, NULL),
(67, 28, '2019-04-10', 'April  2019', NULL, NULL, 250000, NULL, NULL),
(68, 28, '2019-05-10', 'Mei  2019', NULL, NULL, 250000, NULL, NULL),
(69, 28, '2019-06-10', 'Juni  2019', NULL, NULL, 250000, NULL, NULL),
(70, 28, '2019-07-10', 'Juli  2019', NULL, NULL, 250000, NULL, NULL),
(71, 28, '2019-08-10', 'Agustus  2019', NULL, NULL, 250000, NULL, NULL),
(72, 28, '2019-09-10', 'September  2019', NULL, NULL, 250000, NULL, NULL),
(73, 29, '2018-10-10', 'Oktober  2018', '1809250007', '2018-09-25', 250000, 'LUNAS', 1),
(74, 29, '2018-11-10', 'November  2018', NULL, NULL, 250000, NULL, NULL),
(75, 29, '2018-12-10', 'Desember  2018', NULL, NULL, 250000, NULL, NULL),
(76, 29, '2019-01-10', 'januari  2019', NULL, NULL, 250000, NULL, NULL),
(77, 29, '2019-02-10', 'Februari  2019', NULL, NULL, 250000, NULL, NULL),
(78, 29, '2019-03-10', 'Maret  2019', NULL, NULL, 250000, NULL, NULL),
(79, 29, '2019-04-10', 'April  2019', NULL, NULL, 250000, NULL, NULL),
(80, 29, '2019-05-10', 'Mei  2019', NULL, NULL, 250000, NULL, NULL),
(81, 29, '2019-06-10', 'Juni  2019', NULL, NULL, 250000, NULL, NULL),
(82, 29, '2019-07-10', 'Juli  2019', NULL, NULL, 250000, NULL, NULL),
(83, 29, '2019-08-10', 'Agustus  2019', NULL, NULL, 250000, NULL, NULL),
(84, 29, '2019-09-10', 'September  2019', NULL, NULL, 250000, NULL, NULL),
(85, 30, '2018-10-10', 'Oktober  2018', NULL, NULL, 250000, NULL, NULL),
(86, 30, '2018-11-10', 'November  2018', NULL, NULL, 250000, NULL, NULL),
(87, 30, '2018-12-10', 'Desember  2018', NULL, NULL, 250000, NULL, NULL),
(88, 30, '2019-01-10', 'januari  2019', NULL, NULL, 250000, NULL, NULL),
(89, 30, '2019-02-10', 'Februari  2019', NULL, NULL, 250000, NULL, NULL),
(90, 30, '2019-03-10', 'Maret  2019', NULL, NULL, 250000, NULL, NULL),
(91, 30, '2019-04-10', 'April  2019', NULL, NULL, 250000, NULL, NULL),
(92, 30, '2019-05-10', 'Mei  2019', NULL, NULL, 250000, NULL, NULL),
(93, 30, '2019-06-10', 'Juni  2019', NULL, NULL, 250000, NULL, NULL),
(94, 30, '2019-07-10', 'Juli  2019', NULL, NULL, 250000, NULL, NULL),
(95, 30, '2019-08-10', 'Agustus  2019', NULL, NULL, 250000, NULL, NULL),
(96, 30, '2019-09-10', 'September  2019', NULL, NULL, 250000, NULL, NULL),
(97, 31, '2018-10-10', 'Oktober  2018', '1809250005', '2018-09-25', 250000, 'LUNAS', 1),
(98, 31, '2018-11-10', 'November  2018', '1809250006', '2018-09-25', 250000, 'LUNAS', 1),
(99, 31, '2018-12-10', 'Desember  2018', NULL, NULL, 250000, NULL, NULL),
(100, 31, '2019-01-10', 'januari  2019', NULL, NULL, 250000, NULL, NULL),
(101, 31, '2019-02-10', 'Februari  2019', NULL, NULL, 250000, NULL, NULL),
(102, 31, '2019-03-10', 'Maret  2019', NULL, NULL, 250000, NULL, NULL),
(103, 31, '2019-04-10', 'April  2019', NULL, NULL, 250000, NULL, NULL),
(104, 31, '2019-05-10', 'Mei  2019', NULL, NULL, 250000, NULL, NULL),
(105, 31, '2019-06-10', 'Juni  2019', NULL, NULL, 250000, NULL, NULL),
(106, 31, '2019-07-10', 'Juli  2019', NULL, NULL, 250000, NULL, NULL),
(107, 31, '2019-08-10', 'Agustus  2019', NULL, NULL, 250000, NULL, NULL),
(108, 31, '2019-09-10', 'September  2019', NULL, NULL, 250000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `walikelas`
--

CREATE TABLE IF NOT EXISTS `walikelas` (
  `kelas` varchar(10) NOT NULL,
  `idguru` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `walikelas`
--

INSERT INTO `walikelas` (`kelas`, `idguru`) VALUES
('IX A', 1),
('VII C', 1),
('VIII B', 1),
('VII B', 4),
('X A', 5),
('VIII C', 6),
('VIII A', 7),
('IX B', 9),
('VII A', 11),
('X B', 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
 ADD PRIMARY KEY (`idguru`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
 ADD PRIMARY KEY (`idsiswa`), ADD KEY `fk_kelas` (`kelas`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
 ADD PRIMARY KEY (`idspp`), ADD KEY `fk_admin` (`idadmin`), ADD KEY `fk_siswa` (`idsiswa`);

--
-- Indexes for table `walikelas`
--
ALTER TABLE `walikelas`
 ADD PRIMARY KEY (`kelas`), ADD KEY `fk_guru` (`idguru`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `idadmin` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
MODIFY `idguru` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
MODIFY `idsiswa` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
MODIFY `idspp` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=109;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
ADD CONSTRAINT `fk_kelas` FOREIGN KEY (`kelas`) REFERENCES `walikelas` (`kelas`) ON UPDATE CASCADE;

--
-- Constraints for table `spp`
--
ALTER TABLE `spp`
ADD CONSTRAINT `fk_admin` FOREIGN KEY (`idadmin`) REFERENCES `admin` (`idadmin`) ON UPDATE CASCADE,
ADD CONSTRAINT `fk_siswa` FOREIGN KEY (`idsiswa`) REFERENCES `siswa` (`idsiswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `walikelas`
--
ALTER TABLE `walikelas`
ADD CONSTRAINT `fk_guru` FOREIGN KEY (`idguru`) REFERENCES `guru` (`idguru`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
