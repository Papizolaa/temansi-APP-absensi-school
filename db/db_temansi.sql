-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Aug 07, 2024 at 03:30 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_temansi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `aktif` varchar(5) NOT NULL,
  `foto` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_lengkap`, `username`, `password`, `aktif`, `foto`) VALUES
(1, ' admin', 'admin1', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Y', 'admin.png'),
(2, ' admin', 'admin2', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Y', 'admin.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_guru` int(11) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `nama_guru` varchar(120) NOT NULL,
  `email` varchar(65) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nip`, `nama_guru`, `email`, `password`, `foto`, `status`) VALUES
(9, '197802012009021003', 'BAHRUN, S.Pd', '', 'f18ecc720818abf508d056a647b7372cc160cc18', 'kepala.png', 'Y'),
(10, '196505061987032013', 'NETTI ASLAMIAH, S.Pd', '', '7314217070e149ea5973e4b0b094d78d5573299d', 'guru.png', 'Y'),
(12, '197710212008011010', 'HERRY BAMBANG ROSNANTO Ar, S.Pd', '', 'dc5947d495812e0430a73a83dd96be023c9d5462', 'kepala.png', 'Y'),
(13, '199206112020121001', 'ANGGA ADHARULLAH, S.Pd', '', '68202ce8b7419396e79c751cfef03a4ef211a790', 'kepala.png', 'Y'),
(14, '198909232019021004', 'YOGA DWI TANJUNG, S.Pd', '', '357501895c59b970fc8a627d278210abe57e0a9f', 'kepala.png', 'Y'),
(16, '198309252022212016', 'SUMITRIANI DEWI, S.T', '', 'fc0057062f29329ed1cae8141c3025cfffaf24de', 'guru.png', 'Y'),
(17, '199209272023212023', 'KHAIRUN NISAQ, S.Pd', '', 'a0806a510b705847e8b00cf53a3de4f3920bc78d', 'kepala.png', 'Y'),
(18, '51212042', 'RASYIDIN, A.Md', '', '60de53c8ff34b7aafb28e2317c0783d7fb71b3f3', 'kepala.png', 'Y'),
(19, '197908122008032002', 'EVA WIDARSIH, SE', '', '91c977906c389bb4ffc993aff59bcac2f6febc7a', 'guru.png', 'Y'),
(20, '198308232010011017', 'MUJUR ADILAN SIRAIT, S.Pd', '', '7f4b230cd010896ee91abcdbc421b5264ab8b65a', 'kepala.png', 'Y'),
(21, '198311162022211002', 'NOVRIYANTORO, S.Sos', '', 'fa47939dc4d0468f56d17421b4e8b77ce492d047', 'kepala.png', 'Y'),
(24, '3221005', 'as', 'as@gmail.com', '3b4b95a2b237bccb49251227d12b133c85b6d810', 'GUSDUR 1.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tb_master_mapel`
--

CREATE TABLE `tb_master_mapel` (
  `id_mapel` int(11) NOT NULL,
  `kode_mapel` varchar(40) NOT NULL,
  `mapel` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_master_mapel`
--

INSERT INTO `tb_master_mapel` (`id_mapel`, `kode_mapel`, `mapel`) VALUES
(1, 'MP-1561560093', 'Bahasa Indonesia'),
(2, 'MP-1561560129', 'Matematika'),
(3, 'MP-1561871991', 'Pendidikan Agama Islam'),
(4, 'MP-1561872004', 'Ilmu Pengetahuan Alam'),
(5, 'MP-1561872013', 'Teknologi Informasi Komputer'),
(6, 'MP-1561872026', 'Budaya Melayu'),
(7, 'MP-1561872043', 'Bahasa Inggris'),
(9, 'MP-1710436146', 'Ilmu Pengetahuan Sosial'),
(10, 'MP-1710436203', 'Pendidikan Kewarganegaraan'),
(11, 'MP-1710436225', 'Pendidikan Jasmani'),
(12, 'MP-1710436239', 'Kesenian'),
(13, 'MP-1710436250', 'Prakarya');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mengajar`
--

CREATE TABLE `tb_mengajar` (
  `id_mengajar` int(11) NOT NULL,
  `kode_pelajaran` varchar(30) NOT NULL,
  `hari` varchar(40) NOT NULL,
  `jam_mengajar` varchar(60) NOT NULL,
  `jamke` varchar(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_mkelas` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `id_thajaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mengajar`
--

INSERT INTO `tb_mengajar` (`id_mengajar`, `kode_pelajaran`, `hari`, `jam_mengajar`, `jamke`, `id_guru`, `id_mapel`, `id_mkelas`, `id_semester`, `id_thajaran`) VALUES
(11, 'MPL-1710436463', 'Senin', '07-30-10.10', '1-4', 13, 1, 5, 4, 9),
(12, 'MPL-1710436550', 'Senin', '10.10-11.20', '5-6', 11, 2, 5, 4, 9),
(13, 'MPL-1710436606', 'Senin', '11.20-113.35', '7-9', 18, 3, 5, 4, 9),
(14, 'MPL-1710436687', 'Senin', '08.05-09.15', '2-3', 11, 2, 6, 4, 9),
(15, 'MPL-1710436759', 'Selasa', '07.30-08.40', '1-2', 14, 11, 5, 4, 9),
(16, 'MPL-1710436867', 'Senin', '09.35-11.20', '4-6', 12, 7, 6, 4, 9),
(17, 'MPL-1710437013', 'Senin', '11.20-13.35', '7-9', 13, 1, 6, 4, 9),
(18, 'MPL-1710437051', 'Senin', '08.05-10.10', '2-4', 18, 3, 7, 4, 9),
(19, 'MPL-1710437102', 'Senin', '10.10-11.20', '5-6', 17, 8, 7, 4, 9),
(20, 'MPL-1710437149', 'Senin', '11.20-13.35', '7-9', 15, 10, 7, 4, 9),
(22, 'MPL-1710481088', 'Selasa', '10.10-11.20', '5-6', 16, 5, 5, 4, 9),
(23, 'MPL-1710481152', 'Selasa', '11.20-13.00', '7-8', 13, 6, 5, 4, 9),
(25, 'MPL-1710481285', 'Selasa', '08.40-10.10', '3-4', 16, 5, 6, 4, 9),
(26, 'MPL-1710481331', 'Selasa', '10.10-11.20', '5-6', 13, 6, 6, 4, 9),
(27, 'MPL-1710481366', 'Selasa', '11.20-13.00', '7-8', 15, 10, 6, 4, 9),
(28, 'MPL-1710481406', 'Selasa', '07.30-09.15', '1-3', 13, 1, 7, 4, 9),
(29, 'MPL-1710481461', 'Selasa', '09.35-11.20', '4-6', 10, 12, 7, 4, 9),
(31, 'MPL-1710481568', 'Rabu', '07.30-08.40', '1-2', 11, 2, 5, 4, 9),
(32, 'MPL-1710481606', 'Rabu', '08.40-10.45', '3-5', 12, 7, 5, 4, 9),
(33, 'MPL-1710481705', 'Rabu', '10.45-11.55', '6-7', 10, 12, 5, 4, 9),
(34, 'MPL-1710481790', 'Rabu', '12.25-13.35', '8-9', 15, 10, 5, 4, 9),
(35, 'MPL-1710481832', 'Rabu', '07.30-08.40', '1-2', 14, 11, 6, 4, 9),
(36, 'MPL-1710481890', 'Rabu', '08.40-10.10', '3-4', 11, 2, 6, 4, 9),
(37, 'MPL-1710481955', 'Rabu', '10.10-11.20', '5-7', 17, 9, 6, 4, 9),
(38, 'MPL-1710482013', 'Rabu', '12.25-13.35', '8-9', 10, 12, 6, 4, 9),
(39, 'MPL-1710482046', 'Rabu', '07.30-08.40', '1-2', 17, 9, 7, 4, 9),
(41, 'MPL-1710482145', 'Rabu', '08.40-10.10', '3-4', 16, 13, 7, 4, 9),
(42, 'MPL-1710482210', 'Rabu', '10.10-11.55', '5-7', 11, 2, 7, 4, 9),
(43, 'MPL-1710482253', 'Rabu', '12.25-13.35', '8-9', 12, 7, 7, 4, 9),
(45, 'MPL-1710482488', 'Kamis', '10.10-11.55', '5-7', 17, 9, 5, 4, 9),
(46, 'MPL-1710482585', 'Kamis', '12.25-13.35', '8-9', 13, 1, 5, 4, 9),
(47, 'MPL-1710482630', 'Kamis', '08.40-10.10', '3-4', 13, 1, 6, 4, 9),
(48, 'MPL-1710482680', 'Kamis', '10.10-11.55', '5-7', 18, 3, 6, 4, 9),
(50, 'MPL-1710482894', 'Kamis', '08.05-10.10', '2-4', 14, 11, 7, 4, 9),
(52, 'MPL-1710482994', 'Kamis', '12.25-13.35', '8-9', 12, 7, 7, 4, 9),
(53, 'MPL-1710485906', 'Senin', '10.10-11.20', '5-6', 17, 9, 7, 4, 9),
(54, 'MPL-1710567644', 'Selasa', '08.40-10.10', '3-4', 9, 4, 5, 4, 9),
(55, 'MPL-1710567829', 'Kamis', '08.40-10.10', '3-4', 9, 4, 5, 4, 9),
(56, 'MPL-1710567866', 'Selasa', '07.30-08.40', '1-2', 9, 4, 6, 4, 9),
(57, 'MPL-1710567905', 'Kamis', '12.25-13.35', '8-9', 9, 4, 6, 4, 9),
(58, 'MPL-1710567944', 'Selasa', '11.20-13.00', '7-8', 9, 4, 7, 4, 9),
(59, 'MPL-1710568012', 'Kamis', '10.10-11.55', '5-7', 9, 4, 7, 4, 9),
(62, 'MPL-1710582462', 'Rabu', '12.25-13.35', '8-9', 21, 10, 5, 4, 9),
(63, 'MPL-1710582519', 'Selasa', '11.20-13.00', '7-8', 21, 10, 6, 4, 9),
(64, 'MPL-1710582565', 'Senin', '11.20-13.35', '7-9', 21, 10, 7, 4, 9),
(65, 'MPL-1710583134', 'Senin', '10.10-11.20', '5-6', 20, 2, 5, 4, 9),
(66, 'MPL-1710583204', 'Rabu', '07.30-08.40', '1-2', 20, 2, 5, 4, 9),
(67, 'MPL-1710583244', 'Senin', '08.05-09.15', '2-3', 20, 2, 6, 4, 9),
(68, 'MPL-1710583312', 'Rabu', '08.40-10.10', '3-4', 20, 2, 6, 4, 9),
(69, 'MPL-1710583377', 'Rabu', '10.10-11.55', '5-7', 20, 2, 7, 4, 9),
(71, 'MPL-1710583940', 'Jumat', '07.30-08.40', '1-2', 20, 2, 7, 4, 9),
(72, 'MPL-1710584173', 'Jumat', '08.40-10.45', '3-5', 13, 1, 7, 4, 9),
(74, 'MPL-1717122436', 'Senin', '07.30-08.40', '1-2', 24, 13, 5, 4, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tb_mkelas`
--

CREATE TABLE `tb_mkelas` (
  `id_mkelas` int(11) NOT NULL,
  `kd_kelas` varchar(40) NOT NULL,
  `nama_kelas` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mkelas`
--

INSERT INTO `tb_mkelas` (`id_mkelas`, `kd_kelas`, `nama_kelas`) VALUES
(5, 'KL-1616673105', 'VII'),
(6, 'KL-1616673114', 'VIII'),
(7, 'KL-1616673120', 'IX');

-- --------------------------------------------------------

--
-- Table structure for table `tb_semester`
--

CREATE TABLE `tb_semester` (
  `id_semester` int(11) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_semester`
--

INSERT INTO `tb_semester` (`id_semester`, `semester`, `status`) VALUES
(4, 'Ganjil', 1),
(5, 'Genap', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(60) NOT NULL,
  `nama_siswa` varchar(200) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL,
  `th_angkatan` year(4) NOT NULL,
  `id_mkelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nis`, `nama_siswa`, `tempat_lahir`, `tgl_lahir`, `jk`, `alamat`, `password`, `foto`, `status`, `th_angkatan`, `id_mkelas`) VALUES
(7, '0108253734/1604', 'ARSA SYAHIRA RAMADHANI', 'Penyengat', '2010-08-20', 'P', '', '00efe92650de51ad60707f4c0e1dbb47c9814690', '17603.png', '1', 2023, 5),
(8, '0112358271/1605', 'AURELIA ASTIASYA QIANUM', 'Tanjungpinang', '2011-10-26', 'P', '', 'faaaaa3f374efbf6baaa9ddd17c9d70cc0a6cdb6', '17603.png', '1', 2023, 5),
(9, '0102921643/1606', 'CANTHIKA ZAHWATU MELLODIANI', 'Tanjungpinang', '2010-12-31', 'P', '', '7bbe36fa1bbeb8a6f5c1af1b10c167b9aac72788', '17603.png', '1', 2023, 5),
(10, '0096571367/1607', 'CHARLIE TREE SAKTI', 'Penyengat', '2008-11-13', 'L', '', 'd934c1e00160422f3aaf219efd8fa0c8a119da7a', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2023, 5),
(11, '0118845948/1608', 'CHIKA AULIA SUCI OKTAVIANY', 'Tanjungpinang', '2011-10-09', 'P', '', '977e1b6bb643e51838c6b5faf977c594ec877ba3', '17603.png', '1', 2023, 5),
(12, '0091666592/1609', 'CILSA ASSYIFA', 'Tanjungpinang', '2009-10-28', 'P', '', '1925f126e2ec69bcb248e0b65638ac51e6744a13', '17603.png', '1', 2023, 5),
(13, '0104120584/1610', 'DUDE RADITYA SAHPUTRA', 'Tanjungpinang', '2010-12-23', 'L', '', 'a46a19ced5eec92ce99af186020bb27108057bef', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2023, 5),
(14, '0105325676/1611', 'FATHIR REZKY SYAHPUTRA', 'Penyengat', '2010-10-01', 'L', '', '389178ac4d6b971d259d56bb2eaad165905cd8ab', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2023, 5),
(15, '0103872117/1612', 'FATIMA AZZAHRA', 'Penyengat', '2010-09-26', 'P', '', '1749c5eb2b704c61f72fddf0b9e5a456472a837b', '17603.png', '1', 2023, 5),
(16, '0116669887/1613', 'FIQIH ANUGRAH', 'Tanjungpinang', '2011-07-07', 'L', '', '4f4bcd448dd564ae69da4b158fbe3273b59505e1', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2023, 5),
(17, '0103961763/1614', 'GWEN MADANIA', 'Tanjungpinang', '2010-10-20', 'P', '', '895d6cd7a9947ee8efcd6f825111553d4a358a5b', '17603.png', '1', 2023, 5),
(18, '0093044177/1615', 'M. DAFA HAJIANSYAH', 'Penyengat', '2009-12-08', 'L', '', '044e538f3c28a3637a07504dadbb6ade5c17a67b', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2023, 5),
(19, '0106331794/1616', 'MOHD.WAFA HAFIZUL MALIK', 'Penyengat', '2010-10-15', 'L', '', '6c29e38c2f5d5dca2e99342ab243b3b8d6fc163d', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2023, 5),
(20, '0106603447/1617', 'MUHAMMAD DESPIAN BUCHTIAR', 'Tanjung Uban', '2010-12-12', 'L', '', 'c5ad56198dbf6d192ee8956c941369a5c8b42878', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2023, 5),
(21, '0119357965/1618', 'MUHAMMAD EVAN ADRIANSYAH', 'Tanjungpinang', '2011-07-17', 'L', '', 'f9c585c522daa3d76070a47842cf525a494d38d1', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2023, 5),
(22, '0117462332/1619', 'MUHAMMAD HALIKKAL FIRDAUS', 'Tanjungpinang', '2011-05-03', 'L', '', 'bb3b4848da25b4453234795ffdedda2a9205c7f0', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2023, 5),
(23, '0114689830/1620', 'MUHAMMAD RIFKY FAHRIZI', 'Batam', '2011-04-03', 'L', '', 'ee396ae44b80704a23dcd30d4cc09047701d60ad', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2023, 5),
(24, '0102604173/1621', 'NAZWA RAMADHANI', 'Penyengat', '2010-08-30', 'P', '', '6a62c03c8b5466749ff206135288b066fd7e6e10', '17603.png', '1', 2023, 5),
(25, '0117674766/1622', 'NUR HAFIZAH', 'Tanjungpinang', '2011-07-21', 'P', '', '5eeaaadb0673c32caca002aa16b9ef06535c606e', '17603.png', '1', 2023, 5),
(26, '0116634517/1623', 'NUR SYAFINAZ MOHD. SAID', 'Singapore', '2011-06-18', 'P', '', 'c50a44e22e253b74cc0af7ecc28993e655214ba6', '17603.png', '1', 2023, 5),
(27, '0114039082/1624', 'SY. NAJLA QOTRUNNADA ZAHIRA. AA', 'Tanjungpinang', '2011-06-25', 'P', '', 'e10bac434592b8a1ab462b34ccadbcfa37a8d69c', '17603.png', '1', 2023, 5),
(28, '0111469495/1625', 'SYARZILA NURANI ARAFAH', 'Tanjungpinang', '2011-02-27', 'P', '', '5200005ac56454803f912f1a9b6065ea11fa647c', '17603.png', '1', 2023, 5),
(29, '0119017171/1626', 'ZHIFILIA DELFA ENGKU PUTRI', 'Batam', '2011-10-15', 'P', '', 'ee4602e32f19c3dba6e758a2fbcddf218cc3e68d', '17603.png', '1', 2023, 5),
(30, '0111213234/1627', 'ZULFIKAR', 'Tanjung Balai Karimun', '2011-03-29', 'L', '', '95b9c7ebd9ee520ba7955400a8472bbe7dca2d84', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2023, 5),
(31, '0096670681/1571', 'ALIF ASSIDIQ', 'Penyengat', '2009-08-18', 'L', '', '4242e17667b2402f333d1f2ba9d088a08cd16be7', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2022, 6),
(32, '0108519496/1572', 'AZANIL RAFA', 'Penyengat', '2010-05-14', 'L', '', '1fe0410ca368f88e0439bd64c993c8df90b8eff5', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2022, 6),
(33, '0094622468/1573', 'CEMERLANG JUNIOR ZARODTI', 'Tanjungpinang', '2009-06-04', 'L', '', '888089b0377d37699067a53e11b83481d1b54fd0', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2022, 6),
(34, '0094557612/1574', 'DAFFA ZHIKRI', 'Tanjungpinang', '2009-10-17', 'L', '', 'f933452151535b77acdacbef05291feb273e4cb3', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2022, 6),
(35, '0094546397/1575', 'DHESEA ANANDA PUTRI', 'Penyengat', '2009-10-28', 'P', '', '9e4396fb8822e06baed5b853e9265d8fe989f35b', '17603.png', '1', 2022, 6),
(36, '0092572846/1576', 'DINDA DELICIANA', 'Penyengat', '2009-10-17', 'P', '', 'ef32d1942609dcce804ddea76f1338c41e810402', '17603.png', '1', 2022, 6),
(37, '0103507227/1577', 'DONI CHANDRA WIJAYA TANJUNG', 'Penyengat', '2010-03-23', 'L', '', 'bf071bc74cd2268b7d69dc7f139b443ea9cd1e09', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2022, 6),
(38, '0170194990/1578', 'Harry Aldiansyah', 'Batam', '2010-10-16', 'L', '', 'bca59c030161f77639af883375ca158aee7b22bf', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2022, 6),
(39, '0099817476/1579', 'INDRI SELVIANI', 'Tanjungpinang', '2009-10-21', 'P', '', '1f6c8f36806f0ed9a7fb6681cf73fc1bc6f04200', '17603.png', '1', 2022, 6),
(40, '0102721217/1580', 'JULIANI AMIRA SYAHPUTRI', 'Batam', '2010-07-11', 'P', '', '27c9c8b8e27c29d25d806b3af88714a214a7f072', '17603.png', '1', 2022, 6),
(41, '0104754663/1581', 'LAURA ANTARISKA', 'Tanjungpinang', '2010-03-23', 'P', '', '6b971a68a23738c03bdf7972c59cc10e6fe4809b', '17603.png', '1', 2022, 6),
(42, '0089388717/1582', 'LUTFIANSYAH', 'Penyengat', '2008-11-19', 'L', '', '2c1750feb45d43b65ed382e5b8bfebd8b1048d2c', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2022, 6),
(43, '0093435920/1583', 'M. NOVTA FERDIANSYAH', 'Penyengat', '2009-11-18', 'L', '', '195ceebafd3322d3baf6c039d89a2069d40b4642', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2022, 6),
(44, '0107845797/1584', 'M. RIZKI', 'Penyengat', '2010-06-05', 'L', '', 'ad8b7b256b09fb1a38e0d26cfc7f735487b3f50a', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2022, 6),
(45, '0103425519/1586', 'MUHAMAD RASYA ARDYAN', 'Tanjungpinang', '2010-07-14', 'L', '', '820da6aff2c8519474653fbc06ece76dfce92ca1', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2022, 6),
(46, '0091614971/1587', 'MUHAMMAD ASHRAF', 'Penyengat', '2009-06-25', 'L', '', '5dfad7b7d9471b719ffab8fbbc74b670c3b6e0e1', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2022, 6),
(47, '0108362959/1588', 'MUHAMMAD CHALIF', 'Penyengat', '2010-06-21', 'L', '', '969bb51c9af9e80c834f3ea3c833f076945dc2bc', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2022, 6),
(48, '0101255691/1589', 'MUHAMMAD FIQRI  SYAHBANA', 'Penyengat', '2010-04-08', 'L', '', 'b904b80037ece564b1b33450db70231983bf278f', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2022, 6),
(49, '0097609162/1590', 'MUHAMMAD HAFIDH ALVARO', 'Tanjungpinang', '2009-12-15', 'L', '', '8eee3226beacdc929bfcf6a9de8701e65d096333', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2022, 6),
(50, '0091925356/1591', 'MUHAMMAD HAIQAL RAMADHAN', 'Tanjungpinang', '2009-09-18', 'L', '', '8b3c1ce3cdf2a68a7c65271dfe646a58ab27a1df', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2022, 6),
(51, '0099396375/1592', 'NURAIDA AZAHRA', 'Tanjungpinang', '2009-11-16', 'P', '', 'd49f07bfa2ef40ca0025dd05ec3635ad2af913e8', '17603.png', '1', 2022, 6),
(52, '0083500682/1593', 'PUTRI MAULIANA', 'Tanjungpinang', '2008-03-20', 'P', '', '7cacea612afc0aaef869c0ffa94315fe705cf134', '17603.png', '1', 2022, 6),
(53, '0084909355/1594', 'RHEYHAN ARYA PRATAMA', 'Tanjungpinang', '2008-04-13', 'L', '', 'bef88cf35b6b4ceb960849288429b21da2fb8cdb', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2022, 6),
(54, '0096518826/1595', 'SAID RAFAGAN AL HAS', 'Penyengat', '2009-09-26', 'L', '', '6c7569e1f9a82a7282c89198d8e7b11c0d49dd16', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2022, 6),
(55, '0086402618/1596', 'SAIPUL SAPUTRA', 'Subang Mas', '2008-12-29', 'L', '', 'fca72fe7229f9572616e21680d2393a7b2688820', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2022, 6),
(56, '0081407923/1597', 'SYIEVHA NUR SYUHADDA', 'Penyengat', '2008-11-15', 'P', '', 'a0791b40b1accdb6d9d101b8112876f43a8928f6', '17603.png', '1', 2022, 6),
(57, '0084621771/1598', 'T. NAZIRA', 'Penyengat', '2008-05-11', 'P', '', '98088ec5f1182e3e51677dc15c21045d06850971', '17603.png', '1', 2022, 6),
(58, '0096543786/1599', 'VINO OCTA RYADI', 'Penyengat', '2009-10-09', 'L', '', 'f969bdfe7e1bcda711e601cb95bf8a9e23470d0c', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2022, 6),
(59, '0107722811/1600', 'YENVI MEITHA SUPRIATNA', 'Penyengat', '2010-05-21', 'P', '', '5f8ef6c09eaee4e695054cd75d982a42c944e6f1', '17603.png', '1', 2022, 6),
(60, '0102552798/1601', 'ZALFA FADLILLAH PALLOGE', 'Tanjungpinang', '2010-04-21', 'L', '', 'd4b11af4a8ec71ffdde655c56fd6c8762655fb8e', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2022, 6),
(61, '0101681656/1602', 'ZIRA INDAH SYAFITRI', 'Penyengat', '2010-10-06', 'P', '', '49ddf161d62a1e942143cb90863e8374ffa238e5', '17603.png', '1', 2022, 6),
(62, '0093308032/1532', 'ADAM PAMELA', 'Penyengat', '2009-01-30', 'L', '', 'be9a3c7cc2efbd6f688ea38ca926dd7cf764644c', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2021, 7),
(63, '0099400667/1533', 'AHMAD BAGIR', 'Penyengat', '2009-09-14', 'L', '', '989d4aa5b806eb770fb18144758b4d638d91da2b', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2021, 7),
(64, '0097666565/1534', 'ALMIRA JUMAZLINA', 'Penyengat', '2009-07-19', 'P', '', 'bdc6fd4dec04574c4bacaab973c540c9705d6d5b', '17603.png', '1', 2021, 7),
(65, '0098005065/1535', 'AMELDA SAFYRA', 'Penyengat', '2009-03-15', 'P', '', '783ec34ea95bef1fe0ef880912f0a542c2a71927', '17603.png', '1', 2021, 7),
(66, '0093810659/1536', 'AMIRAH USNAINI', 'Penyengat', '2009-08-17', 'P', '', '50cfa46eb2d25dee2ccc1a81f318cbad35841d9d', '17603.png', '1', 2021, 7),
(67, '0089809746/1537', 'ANSYAR MAULANA', 'Penyengat', '2008-04-20', 'L', '', '7186664ef315bac777f33f135aa34ff9a62c9cbc', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2021, 7),
(68, '0079820574/1538', 'AULIA AGUSTINA', 'Tanjungpinang', '2009-08-01', 'P', '', '359c23326802fc22038246b65fe9a32a160baead', '17603.png', '1', 2021, 7),
(69, '0091229069/1539', 'ELGA NAURA FAHZURA', 'Penyengat', '2009-11-30', 'P', '', '583a9c9b9b38ba1b0d36dd2fb2b3453978bb4295', '17603.png', '1', 2021, 7),
(70, '0093637812/1540', 'FARA NABILA', 'Tanjungpinang', '2009-02-03', 'P', '', '0846ed91a8ae91bfcbc85501360c34f8abd83803', '17603.png', '1', 2021, 7),
(71, '0091646782/1542', 'INDRI JULIA SYAHFITRI', 'Penyengat', '2009-07-30', 'P', '', 'ebb274e1908e8deff6e8829cff4b4f4c649d82c9', '17603.png', '1', 2021, 7),
(72, '0062673328/1543', 'KARTIKA CRECIA', 'Penyengat', '2006-10-02', 'P', '', '6c995885cee42340279b0ebdef1f7cb8c5472d82', '17603.png', '1', 2021, 7),
(73, '0098723721/1544', 'KHAIRUNNISA AZIMAH', 'Tanjungpinang', '2009-07-02', 'P', '', 'd7aaa119d79b365fc4cb5d813d29059870ecdc4f', '17603.png', '1', 2021, 7),
(74, '0086103082/1545', 'M. FACHRI FERDIANSYAH', 'Tanjungpinang', '2008-08-05', 'L', '', 'eff58a17d91cff36769b47708217b8c41acbb0ff', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2021, 7),
(75, '0077970648/1546', 'M. FITTO HERNANDO', 'Penyengat', '2007-08-11', 'L', '', '26854a19e5457c42d09488ffe85648d611c1d14f', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2021, 7),
(76, '0087159273/1547', 'M. NASRULLAH', 'Penyengat', '2008-10-18', 'L', '', '465226dca25c1ceb362557336d5ba8079dbeb83e', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2021, 7),
(77, '0085222632/1548', 'MUHAMAD IQBAL SYAHPUTRA', 'Tanjungpinang', '2008-10-28', 'L', '', 'ea4b9968b3effd8ed24327461f92c12994eccc8f', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2021, 7),
(78, '0053957657/1549', 'MUHAMMAD AR RAFIQ', 'Tanjungpinang', '2005-07-15', 'L', '', '7af2266488a40efda8a9c2b5974ac76299f5e99b', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2021, 7),
(79, '0095832149/1550', 'MUHAMMAD RESKI MARDIANSYAH', 'Penyengat', '2009-03-22', 'L', '', '6c7ea784f7826102ebbc8b8acdc9e4abedf6b14a', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2021, 7),
(80, '0095551154/1551', 'MUHAMMAD RIF AT ATHALAH', 'Penyengat', '2009-06-06', 'L', '', '162e5e9e389d6f5c77139e8978a42ab425d01c36', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2021, 7),
(81, '0089560372/1552', 'MUHAMMAD ROLAND AL FETRIZAL', 'Penyengat', '2008-05-25', 'L', '', '60de6f063abd17741c0ad7670e1804282f454139', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2021, 7),
(82, '0077145626/1553', 'MUHAMMAD ZULFIKAR AKBAR', 'Penyengat', '2007-11-12', 'L', '', 'fbff2005426991b2e88d66130305d5b251fb11cc', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2021, 7),
(83, '0084512375/1554', 'NUR ATIKAH', 'Penyengat', '2008-12-14', 'P', '', '308aa1b063fc2cd20acc254c8064b9c79b11a6a9', '17603.png', '1', 2021, 7),
(84, '0082745162/1555', 'NURSYAHIRA PUTRI', 'Tanjungpinang', '2008-08-16', 'P', '', '5e69ea221ed07b6ef12d1764e69628b7668048e1', '17603.png', '1', 2021, 7),
(85, '0082387159/1556', 'NURUL FARIHA KIRANA PUTRI', 'Tanjungpinang', '2008-12-10', 'P', '', 'a3f9578df1f2bf6efb15e13cfcb3e2ed4144ccd5', '17603.png', '1', 2021, 7),
(86, '0096381339/1557', 'NURUL KHOTIMAH', 'Tanjungpinang', '2009-07-05', 'P', '', '5200e786613c844e6da683ae4255a94000b4ba84', '17603.png', '1', 2021, 7),
(87, '0088884769/1558', 'OSAMA KHADAFI', 'Penyengat', '2008-12-12', 'L', '', '576724b395754161c3dc799b4afab759782bf536', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2021, 7),
(88, '0071282167/1559', 'RADEN ANGGI PRATIWI', 'Penyengat', '2007-06-28', 'P', '', '299ba0765148100a51a4da3762662d9dea987a92', '17603.png', '1', 2021, 7),
(89, '0082290742/1560', 'RAJA ALIFIA RIZKA NAISYARA', 'Penyengat', '2008-11-10', 'P', '', 'acfcd68f32238b2e52f7cfc7561f08e7331d0491', '17603.png', '1', 2021, 7),
(90, '0081448855/1561', 'RHAYEN RAYHANO', 'Penyengat', '2008-12-20', 'L', '', '1d65643d33f928ea4d18cde029f83f28f8171370', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2021, 7),
(91, '0099263302/1562', 'ROZITA AMANDA BORU PANGGABEAN', 'Tanjungpinang', '2009-01-25', 'P', '', '27517e0ecdb30c4f0cc0ffa6e6c3663be6e0cbaa', '17603.png', '1', 2021, 7),
(92, '0094010627/1565', 'SYAFIKA HUMAIRA', 'Penyengat', '2009-01-25', 'P', '', 'a88c28fdfb864424197b636c8f58728b5a783b23', '17603.png', '1', 2021, 7),
(93, '0073213503/1564', 'SYALSABILA ROMAULI RAHMADANI', 'Tanjungpinang', '2007-09-25', 'P', '', 'ac42215cf13b69a1ab8df025d2266e18e7110045', '17603.png', '1', 2021, 7),
(94, '0094010627/1565', 'SYIFA ASURA', 'Penyengat', '2009-04-08', 'P', '', 'a88c28fdfb864424197b636c8f58728b5a783b23', '17603.png', '1', 2021, 7),
(95, '0087003502/1566', 'TENGKU FAZIRA ZASKIA RAMADHANI', 'Tanjungpinang', '2008-09-09', 'P', '', 'd37aecc08d73eef85800aed742d8ae5f58406413', '17603.png', '1', 2021, 7),
(96, '0092743507/1603', 'VIDI EKA PUTRA WIDODO', 'Penyengat', '2009-06-28', 'L', '', 'b2239a216b08818132c1a056a14e522bfc15dddf', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2021, 7),
(97, '0085517135/1567', 'WA ODE ANISA RAMADANI', 'Tanjungpinang', '2008-09-23', 'P', '', '13edd8c8978b3c3dabfd1322e50b452c8bd576f2', '17603.png', '1', 2021, 7),
(98, '0092538726/1569', 'ZAHRA MASYURA PUTRI', 'Tanjungpinang', '2009-08-03', 'P', '', '31d865a4e6e1e3e4a36d99966a3fc74b952e85f1', '17603.png', '1', 2021, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tb_thajaran`
--

CREATE TABLE `tb_thajaran` (
  `id_thajaran` int(11) NOT NULL,
  `tahun_ajaran` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_thajaran`
--

INSERT INTO `tb_thajaran` (`id_thajaran`, `tahun_ajaran`, `status`) VALUES
(9, '2024/2025', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_walikelas`
--

CREATE TABLE `tb_walikelas` (
  `id_walikelas` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mkelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_walikelas`
--

INSERT INTO `tb_walikelas` (`id_walikelas`, `id_guru`, `id_mkelas`) VALUES
(9, 16, 6),
(10, 13, 7),
(11, 20, 5);

-- --------------------------------------------------------

--
-- Table structure for table `_logabsensi`
--

CREATE TABLE `_logabsensi` (
  `id_presensi` int(11) NOT NULL,
  `id_mengajar` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `tgl_absen` date NOT NULL,
  `ket` enum('H','I','S','T','A','C') NOT NULL,
  `pertemuan_ke` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_logabsensi`
--

INSERT INTO `_logabsensi` (`id_presensi`, `id_mengajar`, `id_siswa`, `tgl_absen`, `ket`, `pertemuan_ke`) VALUES
(26, 54, 7, '2024-03-17', 'H', '1'),
(27, 54, 8, '2024-03-17', 'H', '1'),
(28, 54, 9, '2024-03-17', 'H', '1'),
(29, 54, 10, '2024-03-17', 'H', '1'),
(30, 54, 11, '2024-03-17', 'H', '1'),
(31, 54, 12, '2024-03-17', 'I', '1'),
(32, 54, 13, '2024-03-17', 'T', '1'),
(33, 54, 14, '2024-03-17', 'H', '1'),
(34, 54, 15, '2024-03-17', 'H', '1'),
(35, 54, 16, '2024-03-17', 'H', '1'),
(36, 54, 17, '2024-03-17', 'H', '1'),
(37, 54, 18, '2024-03-17', 'H', '1'),
(38, 54, 19, '2024-03-17', 'H', '1'),
(39, 54, 20, '2024-03-17', 'H', '1'),
(40, 54, 21, '2024-03-17', 'S', '1'),
(41, 54, 22, '2024-03-17', 'H', '1'),
(42, 54, 23, '2024-03-17', 'H', '1'),
(43, 54, 24, '2024-03-17', 'H', '1'),
(44, 54, 25, '2024-03-17', 'H', '1'),
(45, 54, 26, '2024-03-17', 'H', '1'),
(46, 54, 27, '2024-03-17', 'H', '1'),
(47, 54, 28, '2024-03-17', 'H', '1'),
(48, 54, 29, '2024-03-17', 'H', '1'),
(49, 54, 30, '2024-03-17', 'H', '1'),
(50, 33, 7, '2024-03-21', 'H', '1'),
(51, 33, 8, '2024-03-21', 'H', '1'),
(52, 33, 9, '2024-03-21', 'S', '1'),
(53, 33, 10, '2024-03-21', 'H', '1'),
(54, 33, 11, '2024-03-21', 'H', '1'),
(55, 33, 12, '2024-03-21', 'H', '1'),
(56, 33, 13, '2024-03-21', '', '1'),
(57, 33, 14, '2024-03-21', '', '1'),
(58, 33, 15, '2024-03-21', '', '1'),
(59, 33, 16, '2024-03-21', '', '1'),
(60, 33, 17, '2024-03-21', '', '1'),
(61, 33, 18, '2024-03-21', '', '1'),
(62, 33, 19, '2024-03-21', '', '1'),
(63, 33, 20, '2024-03-21', '', '1'),
(64, 33, 21, '2024-03-21', '', '1'),
(65, 33, 22, '2024-03-21', '', '1'),
(66, 33, 23, '2024-03-21', '', '1'),
(67, 33, 24, '2024-03-21', '', '1'),
(68, 33, 25, '2024-03-21', '', '1'),
(69, 33, 26, '2024-03-21', '', '1'),
(70, 33, 27, '2024-03-21', 'I', '1'),
(71, 33, 28, '2024-03-21', '', '1'),
(72, 33, 29, '2024-03-21', '', '1'),
(73, 33, 30, '2024-03-21', '', '1'),
(74, 54, 7, '2024-03-23', 'H', '2'),
(75, 54, 8, '2024-03-23', '', '2'),
(76, 54, 9, '2024-03-23', '', '2'),
(77, 54, 10, '2024-03-23', '', '2'),
(78, 54, 11, '2024-03-23', '', '2'),
(79, 54, 12, '2024-03-23', '', '2'),
(80, 54, 13, '2024-03-23', '', '2'),
(81, 54, 14, '2024-03-23', '', '2'),
(82, 54, 15, '2024-03-23', '', '2'),
(83, 54, 16, '2024-03-23', '', '2'),
(84, 54, 17, '2024-03-23', '', '2'),
(85, 54, 18, '2024-03-23', '', '2'),
(86, 54, 19, '2024-03-23', '', '2'),
(87, 54, 20, '2024-03-23', '', '2'),
(88, 54, 21, '2024-03-23', '', '2'),
(89, 54, 22, '2024-03-23', '', '2'),
(90, 54, 23, '2024-03-23', '', '2'),
(91, 54, 24, '2024-03-23', '', '2'),
(92, 54, 25, '2024-03-23', '', '2'),
(93, 54, 26, '2024-03-23', '', '2'),
(94, 54, 27, '2024-03-23', '', '2'),
(95, 54, 28, '2024-03-23', '', '2'),
(96, 54, 29, '2024-03-23', '', '2'),
(97, 54, 30, '2024-03-23', '', '2'),
(98, 54, 7, '2024-05-05', 'H', '3'),
(99, 54, 8, '2024-05-05', '', '3'),
(100, 54, 9, '2024-05-05', '', '3'),
(101, 54, 10, '2024-05-05', '', '3'),
(102, 54, 11, '2024-05-05', '', '3'),
(103, 54, 12, '2024-05-05', '', '3'),
(104, 54, 13, '2024-05-05', '', '3'),
(105, 54, 14, '2024-05-05', '', '3'),
(106, 54, 15, '2024-05-05', '', '3'),
(107, 54, 16, '2024-05-05', '', '3'),
(108, 54, 17, '2024-05-05', '', '3'),
(109, 54, 18, '2024-05-05', '', '3'),
(110, 54, 19, '2024-05-05', '', '3'),
(111, 54, 20, '2024-05-05', '', '3'),
(112, 54, 21, '2024-05-05', '', '3'),
(113, 54, 22, '2024-05-05', '', '3'),
(114, 54, 23, '2024-05-05', '', '3'),
(115, 54, 24, '2024-05-05', '', '3'),
(116, 54, 25, '2024-05-05', '', '3'),
(117, 54, 26, '2024-05-05', '', '3'),
(118, 54, 27, '2024-05-05', '', '3'),
(119, 54, 28, '2024-05-05', '', '3'),
(120, 54, 29, '2024-05-05', '', '3'),
(121, 54, 30, '2024-05-05', '', '3'),
(122, 54, 7, '2024-05-06', '', '4'),
(123, 54, 8, '2024-05-06', '', '4'),
(124, 54, 9, '2024-05-06', 'H', '4'),
(125, 54, 10, '2024-05-06', '', '4'),
(126, 54, 11, '2024-05-06', '', '4'),
(127, 54, 12, '2024-05-06', '', '4'),
(128, 54, 13, '2024-05-06', '', '4'),
(129, 54, 14, '2024-05-06', '', '4'),
(130, 54, 15, '2024-05-06', '', '4'),
(131, 54, 16, '2024-05-06', '', '4'),
(132, 54, 17, '2024-05-06', '', '4'),
(133, 54, 18, '2024-05-06', '', '4'),
(134, 54, 19, '2024-05-06', '', '4'),
(135, 54, 20, '2024-05-06', '', '4'),
(136, 54, 21, '2024-05-06', '', '4'),
(137, 54, 22, '2024-05-06', '', '4'),
(138, 54, 23, '2024-05-06', '', '4'),
(139, 54, 24, '2024-05-06', '', '4'),
(140, 54, 25, '2024-05-06', '', '4'),
(141, 54, 26, '2024-05-06', '', '4'),
(142, 54, 27, '2024-05-06', '', '4'),
(143, 54, 28, '2024-05-06', '', '4'),
(144, 54, 29, '2024-05-06', '', '4'),
(145, 54, 30, '2024-05-06', '', '4'),
(146, 53, 62, '2024-05-30', 'H', '1'),
(147, 53, 63, '2024-05-30', '', '1'),
(148, 53, 64, '2024-05-30', '', '1'),
(149, 53, 65, '2024-05-30', '', '1'),
(150, 53, 66, '2024-05-30', '', '1'),
(151, 53, 67, '2024-05-30', '', '1'),
(152, 53, 68, '2024-05-30', '', '1'),
(153, 53, 69, '2024-05-30', '', '1'),
(154, 53, 70, '2024-05-30', '', '1'),
(155, 53, 71, '2024-05-30', '', '1'),
(156, 53, 72, '2024-05-30', '', '1'),
(157, 53, 73, '2024-05-30', '', '1'),
(158, 53, 74, '2024-05-30', '', '1'),
(159, 53, 75, '2024-05-30', '', '1'),
(160, 53, 76, '2024-05-30', '', '1'),
(161, 53, 77, '2024-05-30', '', '1'),
(162, 53, 78, '2024-05-30', '', '1'),
(163, 53, 79, '2024-05-30', '', '1'),
(164, 53, 80, '2024-05-30', '', '1'),
(165, 53, 81, '2024-05-30', '', '1'),
(166, 53, 82, '2024-05-30', '', '1'),
(167, 53, 83, '2024-05-30', '', '1'),
(168, 53, 84, '2024-05-30', '', '1'),
(169, 53, 85, '2024-05-30', '', '1'),
(170, 53, 86, '2024-05-30', '', '1'),
(171, 53, 87, '2024-05-30', '', '1'),
(172, 53, 88, '2024-05-30', '', '1'),
(173, 53, 89, '2024-05-30', '', '1'),
(174, 53, 90, '2024-05-30', '', '1'),
(175, 53, 91, '2024-05-30', '', '1'),
(176, 53, 92, '2024-05-30', '', '1'),
(177, 53, 93, '2024-05-30', '', '1'),
(178, 53, 94, '2024-05-30', '', '1'),
(179, 53, 95, '2024-05-30', '', '1'),
(180, 53, 96, '2024-05-30', '', '1'),
(181, 53, 97, '2024-05-30', '', '1'),
(182, 53, 98, '2024-05-30', '', '1'),
(183, 74, 7, '2024-05-31', 'H', '1'),
(184, 74, 8, '2024-05-31', 'I', '1'),
(185, 74, 9, '2024-05-31', 'C', '1'),
(186, 74, 10, '2024-05-31', 'C', '1'),
(187, 74, 11, '2024-05-31', '', '1'),
(188, 74, 12, '2024-05-31', '', '1'),
(189, 74, 13, '2024-05-31', '', '1'),
(190, 74, 14, '2024-05-31', '', '1'),
(191, 74, 15, '2024-05-31', '', '1'),
(192, 74, 16, '2024-05-31', '', '1'),
(193, 74, 17, '2024-05-31', '', '1'),
(194, 74, 18, '2024-05-31', '', '1'),
(195, 74, 19, '2024-05-31', '', '1'),
(196, 74, 20, '2024-05-31', '', '1'),
(197, 74, 21, '2024-05-31', '', '1'),
(198, 74, 22, '2024-05-31', '', '1'),
(199, 74, 23, '2024-05-31', '', '1'),
(200, 74, 24, '2024-05-31', '', '1'),
(201, 74, 25, '2024-05-31', '', '1'),
(202, 74, 26, '2024-05-31', '', '1'),
(203, 74, 27, '2024-05-31', '', '1'),
(204, 74, 28, '2024-05-31', '', '1'),
(205, 74, 29, '2024-05-31', '', '1'),
(206, 74, 30, '2024-05-31', '', '1'),
(207, 74, 7, '2024-06-04', 'H', '2'),
(208, 74, 8, '2024-06-04', 'H', '2'),
(209, 74, 9, '2024-06-04', 'C', '2'),
(210, 74, 10, '2024-06-04', 'A', '2'),
(211, 74, 11, '2024-06-04', 'A', '2'),
(212, 74, 12, '2024-06-04', 'S', '2'),
(213, 74, 13, '2024-06-04', 'C', '2'),
(214, 74, 14, '2024-06-04', '', '2'),
(215, 74, 15, '2024-06-04', '', '2'),
(216, 74, 16, '2024-06-04', '', '2'),
(217, 74, 17, '2024-06-04', '', '2'),
(218, 74, 18, '2024-06-04', '', '2'),
(219, 74, 19, '2024-06-04', '', '2'),
(220, 74, 20, '2024-06-04', '', '2'),
(221, 74, 21, '2024-06-04', '', '2'),
(222, 74, 22, '2024-06-04', '', '2'),
(223, 74, 23, '2024-06-04', '', '2'),
(224, 74, 24, '2024-06-04', '', '2'),
(225, 74, 25, '2024-06-04', '', '2'),
(226, 74, 26, '2024-06-04', '', '2'),
(227, 74, 27, '2024-06-04', '', '2'),
(228, 74, 28, '2024-06-04', '', '2'),
(229, 74, 29, '2024-06-04', '', '2'),
(230, 74, 30, '2024-06-04', '', '2'),
(231, 74, 7, '2024-06-05', 'I', '3'),
(232, 74, 8, '2024-06-05', 'I', '3'),
(233, 74, 9, '2024-06-05', 'H', '3'),
(234, 74, 10, '2024-06-05', 'C', '3'),
(235, 74, 11, '2024-06-05', 'C', '3'),
(236, 74, 12, '2024-06-05', '', '3'),
(237, 74, 13, '2024-06-05', '', '3'),
(238, 74, 14, '2024-06-05', '', '3'),
(239, 74, 15, '2024-06-05', '', '3'),
(240, 74, 16, '2024-06-05', '', '3'),
(241, 74, 17, '2024-06-05', '', '3'),
(242, 74, 18, '2024-06-05', '', '3'),
(243, 74, 19, '2024-06-05', '', '3'),
(244, 74, 20, '2024-06-05', '', '3'),
(245, 74, 21, '2024-06-05', '', '3'),
(246, 74, 22, '2024-06-05', '', '3'),
(247, 74, 23, '2024-06-05', '', '3'),
(248, 74, 24, '2024-06-05', '', '3'),
(249, 74, 25, '2024-06-05', '', '3'),
(250, 74, 26, '2024-06-05', '', '3'),
(251, 74, 27, '2024-06-05', '', '3'),
(252, 74, 28, '2024-06-05', '', '3'),
(253, 74, 29, '2024-06-05', '', '3'),
(254, 74, 30, '2024-06-05', '', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tb_master_mapel`
--
ALTER TABLE `tb_master_mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `tb_mengajar`
--
ALTER TABLE `tb_mengajar`
  ADD PRIMARY KEY (`id_mengajar`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `tb_mkelas`
--
ALTER TABLE `tb_mkelas`
  ADD PRIMARY KEY (`id_mkelas`);

--
-- Indexes for table `tb_semester`
--
ALTER TABLE `tb_semester`
  ADD PRIMARY KEY (`id_semester`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tb_thajaran`
--
ALTER TABLE `tb_thajaran`
  ADD PRIMARY KEY (`id_thajaran`);

--
-- Indexes for table `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  ADD PRIMARY KEY (`id_walikelas`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `_logabsensi`
--
ALTER TABLE `_logabsensi`
  ADD PRIMARY KEY (`id_presensi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tb_master_mapel`
--
ALTER TABLE `tb_master_mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_mengajar`
--
ALTER TABLE `tb_mengajar`
  MODIFY `id_mengajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `tb_mkelas`
--
ALTER TABLE `tb_mkelas`
  MODIFY `id_mkelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_semester`
--
ALTER TABLE `tb_semester`
  MODIFY `id_semester` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `tb_thajaran`
--
ALTER TABLE `tb_thajaran`
  MODIFY `id_thajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  MODIFY `id_walikelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `_logabsensi`
--
ALTER TABLE `_logabsensi`
  MODIFY `id_presensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
