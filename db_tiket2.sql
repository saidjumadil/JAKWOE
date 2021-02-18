-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2018 at 07:23 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tiket2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `email`, `password`, `no_telp`, `nama_lengkap`) VALUES
(1, 'test@team2travel.net', 'TheOne123@', '85766667009', 'Mohammad Aziz Fikri'),
(2, 'selamatriady@team2travel.net', '126sg1', '7868698129', 'Selamat Riady'),
(3, 'ochifeb@team2travel.net', 'polinela123', '089876542321', 'Ochi Febrianti'),
(4, 'lubna@team2travel.net', 'lubna0990', '0980970709', 'Lubna Abidah'),
(5, 'test@localhost', 'qwerty123', '75689709', 'Test Aja'),
(6, 'alay@alay', 'alay', '082367275998', 'Emang Lagi Syantik');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_kota_asal` int(11) NOT NULL,
  `id_kota_tujuan` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `tgl_berangkat` date NOT NULL,
  `jam_berangkat` time NOT NULL,
  `id_mobil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_kota_asal`, `id_kota_tujuan`, `harga`, `tgl_berangkat`, `jam_berangkat`, `id_mobil`) VALUES
(1, 1, 2, 60000, '2017-01-07', '08:21:00', 2),
(2, 1, 3, 50000, '2017-01-15', '06:31:00', 1),
(3, 1, 9, 70000, '2017-01-16', '08:00:00', 1),
(4, 1, 5, 40000, '2017-01-17', '01:01:00', 2),
(5, 1, 7, 50000, '2017-01-06', '02:01:00', 1),
(6, 1, 6, 80000, '2017-01-31', '10:00:00', 2),
(7, 5, 18, 500000, '2018-06-04', '12:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `keluhan`
--

CREATE TABLE `keluhan` (
  `id_keluhan` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `j_keluhan` varchar(20) NOT NULL,
  `d_keluhan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keluhan`
--

INSERT INTO `keluhan` (`id_keluhan`, `id_member`, `j_keluhan`, `d_keluhan`) VALUES
(9, 4, 'akun saya', 'diblokir loh'),
(10, 25, 'akun saya', 'diblokir loh');

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `id_mobil` int(11) NOT NULL,
  `jenis_mobil` varchar(20) NOT NULL,
  `nomor_polisi` varchar(20) NOT NULL,
  `warna_mobil` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kendaraan`
--

INSERT INTO `kendaraan` (`id_mobil`, `jenis_mobil`, `nomor_polisi`, `warna_mobil`) VALUES
(1, 'Toyota Avanza', 'BE 1212 AT', 'Hitam'),
(2, 'Daihatsu Xenia', 'BE 4677 DT', 'Biru');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi_pesan`
--

CREATE TABLE `konfirmasi_pesan` (
  `no_resi` varchar(20) NOT NULL,
  `no_rek` int(20) NOT NULL,
  `tgl_transfer` date NOT NULL,
  `jam_transfer` time NOT NULL,
  `id_pesan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfirmasi_pesan`
--

INSERT INTO `konfirmasi_pesan` (`no_resi`, `no_rek`, `tgl_transfer`, `jam_transfer`, `id_pesan`) VALUES
('041422680263', 0, '2017-01-06', '17:38:00', 115),
('109238012831213', 0, '2017-06-14', '12:00:00', 119),
('120', 0, '2018-06-15', '02:13:00', 120),
('2147483647', 2147483647, '2017-01-04', '13:40:00', 108),
('35666777', 234556677, '2017-01-02', '04:02:00', 107),
('4344546687768', 0, '2017-04-13', '01:02:00', 117),
('532334545', 2147483647, '2017-01-01', '20:25:00', 4),
('675485944', 757484859, '2017-01-02', '09:04:00', 106),
('7487384', 7457585, '2017-01-02', '03:03:00', 109),
('769785858555555', 0, '2017-01-09', '11:00:00', 116),
('789878976897', 0, '0000-00-00', '00:00:00', 122),
('980213091238912030', 0, '2018-06-14', '21:03:00', 121);

-- --------------------------------------------------------

--
-- Table structure for table `kota_asal`
--

CREATE TABLE `kota_asal` (
  `id_kota_asal` int(11) NOT NULL,
  `nm_kota_asal` varchar(27) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota_asal`
--

INSERT INTO `kota_asal` (`id_kota_asal`, `nm_kota_asal`) VALUES
(1, 'Banda Aceh'),
(2, 'Sigli'),
(3, 'Bireun'),
(4, 'Lhokseumawe'),
(5, 'Langsa'),
(6, 'Calang'),
(7, 'Meulaboh'),
(8, 'Blang Pidie'),
(9, 'Tapak Tuan'),
(10, 'Kutacane'),
(11, 'Singkil'),
(12, 'Idi'),
(13, 'Lhoksukon'),
(14, 'Takengon'),
(15, 'Kotafajar'),
(16, 'Labuhanhaji'),
(17, 'Manggeng'),
(18, 'Blang Pidie'),
(19, 'Babahrot'),
(20, 'Tangse'),
(22, 'Panton Labu'),
(23, 'Matang'),
(24, 'Peureulak'),
(25, 'Krueng Geukuh'),
(26, 'Bayu'),
(27, 'Kota Agung'),
(28, 'Blambangan Umpu'),
(29, 'Tanjung Karang');

-- --------------------------------------------------------

--
-- Table structure for table `kota_tujuan`
--

CREATE TABLE `kota_tujuan` (
  `id_kota_tujuan` int(11) NOT NULL,
  `nm_kota_tujuan` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota_tujuan`
--

INSERT INTO `kota_tujuan` (`id_kota_tujuan`, `nm_kota_tujuan`) VALUES
(1, 'Banda Aceh'),
(2, 'Sigli'),
(3, 'Bireun'),
(4, 'Lhokseumawe'),
(5, 'Langsa'),
(6, 'Calang'),
(7, 'Meulaboh'),
(8, 'Blang Pidie'),
(9, 'Tapak Tuan'),
(10, 'Kutacane'),
(11, 'Singkil'),
(12, 'Idi'),
(13, 'Lhoksukon'),
(14, 'Takengon'),
(15, 'Kotafajar'),
(16, 'Labuhanhaji'),
(17, 'Manggeng'),
(18, 'Blang Pidie'),
(19, 'Babahrot'),
(20, 'Tangse'),
(21, 'Panton Labu'),
(22, 'Matang'),
(23, 'Peureulak'),
(24, 'Krueng Geukug'),
(25, 'Bayu'),
(26, 'Blambangan Umpu'),
(27, 'Tanjung Karang');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `jen_kelamin` enum('L','P') NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nama`, `alamat`, `telepon`, `jen_kelamin`, `username`, `password`) VALUES
(1, 'aziz@localhost', 'Rajabasa', '085745509897', 'L', 'aziz', '42066c'),
(2, 'selamat@localhost', 'Samping Poltek', '13254565', 'L', 'selamat', 'riady'),
(3, 'ochi@localhost', 'bandar lampung', '4343', 'P', 'ochi', '3f6fa433d4'),
(4, 'lubna@localhost', 'liwa', '085768039510', 'P', 'Lubna', '4ad0af'),
(20, 'aqin@localhost', 'bataranila', '08977849549', 'L', 'aqinnn', 'aqin123'),
(22, 'shinta12@gmail.com', 'Rajabasa', '085647354611', 'P', 'Shinta Anisa', '123'),
(25, 'doni@localhost', 'Way Halim', '08566747488', 'L', 'doni', '123'),
(26, 'muhamadalmuhtadi@gmail.com', 'kajhu', '082367275998', 'L', 'almuhtadi', 'c80554'),
(27, 'a@a.com', 'aaaaaaaaaaa', '102983120983012830', 'L', 'a', 'a'),
(28, 'b@b.com', 'b', '0921021932190', 'L', 'b', 'b'),
(29, 'test@test.com', 'Langsa, Seuriget', '123123123123', 'L', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `operator_loket`
--

CREATE TABLE `operator_loket` (
  `id_opr` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operator_loket`
--

INSERT INTO `operator_loket` (`id_opr`, `user`, `password`, `nama`) VALUES
(1, 'operatortiket@localhost', 'qwerty', 'Loket');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(11) NOT NULL,
  `nomor_kursi` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15') NOT NULL,
  `status` varchar(100) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id_pesan`, `nomor_kursi`, `status`, `id_jadwal`, `id_member`) VALUES
(4, '3', 'Lunas', 1, 4),
(106, '1', 'Lunas', 1, 3),
(108, '5', 'Lunas', 2, 1),
(109, '2', 'Lunas', 1, 17),
(115, '4', 'Lunas', 2, 20),
(116, '3', 'Dalam Proses', 2, 22),
(117, '3', 'Lunas', 3, 4),
(118, '4', 'Belum Bayar', 3, 25),
(119, '1', 'Dalam Proses', 3, 26),
(120, '1', 'Lunas', 2, 27),
(121, '5', 'Lunas', 6, 29),
(122, '8', 'Lunas', 4, 27);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `id_admin` (`id_admin`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `keluhan`
--
ALTER TABLE `keluhan`
  ADD PRIMARY KEY (`id_keluhan`);

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `konfirmasi_pesan`
--
ALTER TABLE `konfirmasi_pesan`
  ADD PRIMARY KEY (`no_resi`);

--
-- Indexes for table `kota_asal`
--
ALTER TABLE `kota_asal`
  ADD PRIMARY KEY (`id_kota_asal`);

--
-- Indexes for table `kota_tujuan`
--
ALTER TABLE `kota_tujuan`
  ADD PRIMARY KEY (`id_kota_tujuan`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `operator_loket`
--
ALTER TABLE `operator_loket`
  ADD PRIMARY KEY (`id_opr`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `keluhan`
--
ALTER TABLE `keluhan`
  MODIFY `id_keluhan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kendaraan`
--
ALTER TABLE `kendaraan`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kota_asal`
--
ALTER TABLE `kota_asal`
  MODIFY `id_kota_asal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `kota_tujuan`
--
ALTER TABLE `kota_tujuan`
  MODIFY `id_kota_tujuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `operator_loket`
--
ALTER TABLE `operator_loket`
  MODIFY `id_opr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
