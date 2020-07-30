-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18 Jan 2017 pada 09.30
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ppdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ppdb_admin`
--

CREATE TABLE IF NOT EXISTS `ppdb_admin` (
`admin_id` int(11) NOT NULL,
  `username` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `name` int(11) NOT NULL,
  `alamat` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `last_login` datetime NOT NULL,
  `islogin` int(11) NOT NULL,
  `isenable` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `ppdb_admin`
--

INSERT INTO `ppdb_admin` (`admin_id`, `username`, `password`, `name`, `alamat`, `last_login`, `islogin`, `isenable`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 0, 'bandung', '2017-01-18 09:57:52', 1, 1),
(22, 'opix', 'adb81d738d2dccc004ab8773beb8a226', 1, 'Jl. Antapani No.10 Bandung', '2012-05-26 23:15:24', 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ppdb_adm_siswa`
--

CREATE TABLE IF NOT EXISTS `ppdb_adm_siswa` (
`adm_id` int(11) NOT NULL,
  `no_peserta` bigint(11) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nisn` bigint(10) NOT NULL,
  `asal_skl` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `pass_view` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tgl_daftar` date DEFAULT NULL,
  `status` int(11) NOT NULL,
  `sts_verifikasi` int(11) NOT NULL DEFAULT '0',
  `sts_seleksi` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `ppdb_adm_siswa`
--

INSERT INTO `ppdb_adm_siswa` (`adm_id`, `no_peserta`, `nama`, `nisn`, `asal_skl`, `email`, `password`, `pass_view`, `tgl_daftar`, `status`, `sts_verifikasi`, `sts_seleksi`) VALUES
(2, 201204002, 'Ainur Rofiq', 1233465789, 'SMPN 12 Bandung', 'fxcs@yahoo.com', '992a6d18b2a148cf20d9014c3524aa11', '34567', '2012-04-17', 0, 1, 1),
(9, 201204004, 'Avika Mawar', 2157485264, 'SMPN 6 Bandung', 'avika@gmail.com', '65fb0544e2bdfceda0dabe46ed51f61e', 'gIXkU', '2012-04-22', 0, 0, 0),
(101, 201701007, 'sahal ma''nun', 2015150057, 'smp keliwatan', 'sahal@gmail.com', '9ed10138484ce9aa114850d4b961847b', 'fxtLn', '2017-01-18', 0, 0, 0),
(11, 201209005, 'Sarwo Prayitno', 1234567890, 'SMP Pasundan 6', 'up2u.hack@yahoo.com', '20bc43214fb501f76ddec99e197e3e63', 'nfrep', '2012-09-18', 1, 0, 0),
(12, 201209006, 'Andika Pratama', 2342354567, 'SMPN 1 Bandung', 'andika@gmail.com', 'd42013b09af8814b229dbfc7570c718e', 'BGVxI', '2012-09-19', 0, 0, 0),
(13, 201302007, 'Genta Rahmat', 1234567865, 'SMP Bunga Bangsa', 'gentarahmat@gmail.com', '0727b0a22f6475ae42b0a198215c6e6a', '7ULFV', '2013-02-27', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ppdb_bind`
--

CREATE TABLE IF NOT EXISTS `ppdb_bind` (
`bind_id` int(11) NOT NULL,
  `nisn` bigint(10) NOT NULL DEFAULT '0',
  `sem_1` int(3) DEFAULT NULL,
  `sem_2` int(3) DEFAULT NULL,
  `sem_3` int(3) DEFAULT NULL,
  `sem_4` int(3) DEFAULT NULL,
  `sem_5` int(3) DEFAULT NULL,
  `rata_rata` float(3,1) DEFAULT NULL,
  `sts_bind` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=167 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `ppdb_bind`
--

INSERT INTO `ppdb_bind` (`bind_id`, `nisn`, `sem_1`, `sem_2`, `sem_3`, `sem_4`, `sem_5`, `rata_rata`, `sts_bind`) VALUES
(2, 1233465789, 76, 77, 84, 88, 88, 83.0, 1),
(9, 2157485264, 77, 88, 88, 76, 76, 81.0, 1),
(164, 2015150053, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(163, 2015150054, 80, 87, 94, 90, 88, 87.8, 1),
(165, 1234543255, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(166, 2015150057, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ppdb_bing`
--

CREATE TABLE IF NOT EXISTS `ppdb_bing` (
`bing_id` int(11) NOT NULL,
  `nisn` bigint(10) NOT NULL,
  `sem_1` int(3) DEFAULT NULL,
  `sem_2` int(3) DEFAULT NULL,
  `sem_3` int(3) DEFAULT NULL,
  `sem_4` int(3) DEFAULT NULL,
  `sem_5` int(3) DEFAULT NULL,
  `rata_rata` float(3,1) DEFAULT NULL,
  `sts_bing` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=167 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `ppdb_bing`
--

INSERT INTO `ppdb_bing` (`bing_id`, `nisn`, `sem_1`, `sem_2`, `sem_3`, `sem_4`, `sem_5`, `rata_rata`, `sts_bing`) VALUES
(15, 2015150049, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 1233465789, 76, 76, 84, 80, 87, 81.0, 1),
(9, 2157485264, 75, 80, 80, 95, 100, 86.0, 1),
(164, 2015150053, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(163, 2015150054, 88, 85, 86, 89, 85, 86.6, 1),
(165, 1234543255, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(166, 2015150057, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ppdb_biodata`
--

CREATE TABLE IF NOT EXISTS `ppdb_biodata` (
`bio_id` int(11) NOT NULL,
  `nisn` bigint(10) NOT NULL,
  `nm_siswa` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `tmp_lahir` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jns_kelamin` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `agama` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `ank_ke` int(11) DEFAULT NULL,
  `jml_saudara` int(11) DEFAULT NULL,
  `sts_siswa` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `hp_siswa` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `almt_siswa` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `tmpt_siswa` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `kendaraan` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `brt_badan` int(11) DEFAULT NULL,
  `tgi_badan` int(11) DEFAULT NULL,
  `gol_darah` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `asl_sekolah` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `almt_sekolah` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `kpl_sekolah` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `asl_kls_smp` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `tlp_skl` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `nm_ayah` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `nm_ibu` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `almt_ortu` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `hp_ortu` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `kerja_ayah` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `kerja_ibu` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `hasil_ortu` varchar(35) COLLATE latin1_general_ci DEFAULT NULL,
  `tgung_biaya` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `sts_bio` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `ppdb_biodata`
--

INSERT INTO `ppdb_biodata` (`bio_id`, `nisn`, `nm_siswa`, `tmp_lahir`, `tgl_lahir`, `jns_kelamin`, `agama`, `ank_ke`, `jml_saudara`, `sts_siswa`, `hp_siswa`, `almt_siswa`, `tmpt_siswa`, `kendaraan`, `brt_badan`, `tgi_badan`, `gol_darah`, `asl_sekolah`, `almt_sekolah`, `kpl_sekolah`, `asl_kls_smp`, `tlp_skl`, `nm_ayah`, `nm_ibu`, `almt_ortu`, `hp_ortu`, `kerja_ayah`, `kerja_ibu`, `hasil_ortu`, `tgung_biaya`, `sts_bio`) VALUES
(15, 2015150049, 'ANGGUN SUHADA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTS MAARIF SUKOHARJO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(17, 1234567894, 'ma''ruf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'smp kalibeber', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(18, 1234567899, 'ma''ruf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'smp kalibeber', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 1233465789, 'Ainur Rofiq', 'Bandung', '1984-02-11', 'Pria', 'islam', 5, 5, 'Kandung', '023265989826', 'Jl Antapani No. 21 Bandung', 'Orang Tua', 'Mobil', 70, 170, 'A', 'SMPN 12 Bandung', 'Jl. Cikutra No. 1 Bandung', 'Akhmad Anshari', '3 F', '0225423453', 'Muhammad Rofiq', 'Siti Rufaidah', 'Jl. Antapani', '021654684321', 'Swasta', 'Ibu Rumah Tangga', '1500000', 'Orang Tua', 1),
(9, 2157485264, 'Avika Mawar', 'Bandung', '1985-08-07', 'Wanita', 'islam', 1, 1, 'Kandung', '078567575675', 'jl. jeruk purut', 'orang tua', 'Mobil', 45, 160, 'A', 'SMPN 6 Bandung', 'Jl. apel mangga', 'FFFFFFFFFFFF', '3 c', '0224536563', 'GGGGGGGG', 'HHHHHHHHH', 'jl. jeruk purut', '067564634634', 'swasta', 'irt', '2500000', 'orang tua', 1),
(28, 1234543255, 'na''am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mts marif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(29, 2015150057, 'sahal ma''nun', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'smp keliwatan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(11, 1234567890, 'Sarwo Prayitno', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMP Pasundan 6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(12, 2342354567, 'Andika Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMPN 1 Bandung', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(13, 1234567865, 'Genta Rahmat', 'Bandung', '1994-02-15', 'Pria', 'islam', 2, 3, 'Kandung', '08329780901', 'Jl. Sudirman No. 5 Bandung', 'Orang Tua', 'Mobil', 50, 170, 'A', 'SMP Bunga Bangsa', 'Jl. KS. Tubun No. 71', 'Rudy Wiwaha', '3 C', '0225550940', 'Edy Prayitno', 'Susilawati', 'Jl. Sudirman No. 5', '08346763781', 'Wiraswasta', 'Ibu Rumah Tangga', '1000000', 'Orang Tua', 1),
(19, 1234567590, 'ma''ruf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'smp kalibeber', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(20, 1234567550, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'smp kalibeber', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(21, 1234567898, 'ma''ruf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'smp kalibeber', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(22, 1234557550, 'panji', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'smp kalibeber', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(23, 1234557320, 'an''sdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'smp kalibeber', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(27, 2015150053, 'zen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'smp sukoharjo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(25, 2015150089, 'as''ad pambudi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'smp kalibeber', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ppdb_info`
--

CREATE TABLE IF NOT EXISTS `ppdb_info` (
`info_id` int(11) NOT NULL,
  `info` text COLLATE latin1_general_ci NOT NULL,
  `aktif` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `ppdb_info`
--

INSERT INTO `ppdb_info` (`info_id`, `info`, `aktif`) VALUES
(1, 'Penerimaan Peserta Didik Baru SMKN 1 Sukoharjo Tahun Ajaran 2017/2018 Telah Dimulai.', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ppdb_ipa`
--

CREATE TABLE IF NOT EXISTS `ppdb_ipa` (
`ipa_id` int(11) NOT NULL,
  `nisn` bigint(10) NOT NULL,
  `sem_1` int(3) DEFAULT NULL,
  `sem_2` int(3) DEFAULT NULL,
  `sem_3` int(3) DEFAULT NULL,
  `sem_4` int(3) DEFAULT NULL,
  `sem_5` int(3) DEFAULT NULL,
  `rata_rata` float(3,1) DEFAULT NULL,
  `sts_ipa` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=167 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `ppdb_ipa`
--

INSERT INTO `ppdb_ipa` (`ipa_id`, `nisn`, `sem_1`, `sem_2`, `sem_3`, `sem_4`, `sem_5`, `rata_rata`, `sts_ipa`) VALUES
(15, 2015150049, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 1233465789, 80, 82, 79, 87, 76, 81.0, 1),
(9, 2157485264, 80, 80, 80, 80, 80, 80.0, 1),
(164, 2015150053, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(163, 2015150054, 90, 80, 87, 85, 85, 85.4, 1),
(165, 1234543255, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(166, 2015150057, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ppdb_ips`
--

CREATE TABLE IF NOT EXISTS `ppdb_ips` (
`ips_id` int(11) NOT NULL,
  `nisn` bigint(10) NOT NULL,
  `sem_1` int(3) DEFAULT NULL,
  `sem_2` int(3) DEFAULT NULL,
  `sem_3` int(3) DEFAULT NULL,
  `sem_4` int(3) DEFAULT NULL,
  `sem_5` int(3) DEFAULT NULL,
  `rata_rata` float(3,1) DEFAULT NULL,
  `sts_ips` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=167 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `ppdb_ips`
--

INSERT INTO `ppdb_ips` (`ips_id`, `nisn`, `sem_1`, `sem_2`, `sem_3`, `sem_4`, `sem_5`, `rata_rata`, `sts_ips`) VALUES
(15, 2015150049, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 1233465789, 86, 85, 85, 85, 85, 85.0, 1),
(9, 2157485264, 77, 77, 77, 77, 77, 77.0, 1),
(164, 2015150053, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(163, 2015150054, 90, 89, 95, 89, 93, 91.2, 1),
(165, 1234543255, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(166, 2015150057, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ppdb_kontak`
--

CREATE TABLE IF NOT EXISTS `ppdb_kontak` (
`ktk_id` int(11) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tggl` date NOT NULL,
  `aktif` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `ppdb_kontak`
--

INSERT INTO `ppdb_kontak` (`ktk_id`, `nama`, `email`, `subjek`, `pesan`, `tggl`, `aktif`) VALUES
(1, 'opix', 'fxcs_dispose@yahoo.com', 'Alur PDB', 'Bagaimana bla bla bla', '2011-10-10', 1),
(2, 'Widya', 'widya@yahoo.com', 'Verifikasi', 'Bagaimana Cara Verifikasi?', '2011-10-11', 1),
(8, 'fxcs', 'fxcs@opix.com', 'maknyusss', 'minta sourcenya dung', '2012-03-27', 1),
(9, 'asdasd', 'asdasd@dfsfsf.dfgd', 'fgdgsdghsdhs', 'hsghsghghsdhg', '2012-04-16', 1),
(15, 'zaenal abidin', 'zainalgo@gmail.com', 'tanya', 'berapa biaya persemester?', '2017-01-01', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ppdb_mat`
--

CREATE TABLE IF NOT EXISTS `ppdb_mat` (
`mat_id` int(11) NOT NULL,
  `nisn` bigint(10) NOT NULL,
  `sem_1` int(3) DEFAULT NULL,
  `sem_2` int(3) DEFAULT NULL,
  `sem_3` int(3) DEFAULT NULL,
  `sem_4` int(3) DEFAULT NULL,
  `sem_5` mediumint(3) DEFAULT NULL,
  `rata_rata` float(3,1) DEFAULT NULL,
  `sts_mat` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=167 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `ppdb_mat`
--

INSERT INTO `ppdb_mat` (`mat_id`, `nisn`, `sem_1`, `sem_2`, `sem_3`, `sem_4`, `sem_5`, `rata_rata`, `sts_mat`) VALUES
(15, 2015150049, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 1233465789, 97, 75, 85, 81, 80, 84.0, 1),
(9, 2157485264, 76, 77, 78, 88, 88, 81.0, 1),
(164, 2015150053, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(163, 2015150054, 90, 77, 79, 80, 85, 82.2, 1),
(165, 1234543255, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(166, 2015150057, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ppdb_menu`
--

CREATE TABLE IF NOT EXISTS `ppdb_menu` (
`main_id` int(5) NOT NULL,
  `menu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  `status_in` int(11) NOT NULL,
  `status_out` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ppdb_menu`
--

INSERT INTO `ppdb_menu` (`main_id`, `menu`, `link`, `aktif`, `status_in`, `status_out`) VALUES
(1, 'Home', '?module=home', 'Y', 1, 1),
(2, 'Daftar', '?module=daftar', 'Y', 0, 1),
(3, 'Pendaftar', '?module=pendaftar', 'Y', 1, 0),
(4, 'Pengumuman', '?module=pengumuman', 'N', 1, 1),
(5, 'Akun', '?module=akun', 'Y', 1, 0),
(6, 'Login', '?module=login', 'Y', 0, 1),
(8, 'Logout', '?module=logout', 'Y', 1, 0),
(7, 'Bantuan', '?module=pesan', 'N', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ppdb_submenu`
--

CREATE TABLE IF NOT EXISTS `ppdb_submenu` (
`sub_id` int(5) NOT NULL,
  `nama_sub` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link_sub` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `main_id` int(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ppdb_submenu`
--

INSERT INTO `ppdb_submenu` (`sub_id`, `nama_sub`, `link_sub`, `main_id`) VALUES
(1, 'Lengkapi Biodata', '?module=biodata', 5),
(2, 'Nilai Rapor', '?module=rapor', 5),
(3, 'Cetak Dokumen', '?module=dokumen', 5),
(10, 'Alur PPDB', '?module=alur', 15),
(11, 'Persyaratan', '?module=syarat', 15),
(12, 'Kirim Pesan', '?module=pesan', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ppdb_admin`
--
ALTER TABLE `ppdb_admin`
 ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `ppdb_adm_siswa`
--
ALTER TABLE `ppdb_adm_siswa`
 ADD PRIMARY KEY (`adm_id`), ADD KEY `nisn` (`nisn`);

--
-- Indexes for table `ppdb_bind`
--
ALTER TABLE `ppdb_bind`
 ADD PRIMARY KEY (`bind_id`), ADD KEY `nisn` (`nisn`);

--
-- Indexes for table `ppdb_bing`
--
ALTER TABLE `ppdb_bing`
 ADD PRIMARY KEY (`bing_id`), ADD KEY `nisn` (`nisn`);

--
-- Indexes for table `ppdb_biodata`
--
ALTER TABLE `ppdb_biodata`
 ADD PRIMARY KEY (`bio_id`), ADD UNIQUE KEY `nisn` (`nisn`);

--
-- Indexes for table `ppdb_info`
--
ALTER TABLE `ppdb_info`
 ADD PRIMARY KEY (`info_id`);

--
-- Indexes for table `ppdb_ipa`
--
ALTER TABLE `ppdb_ipa`
 ADD PRIMARY KEY (`ipa_id`), ADD KEY `nisn` (`nisn`);

--
-- Indexes for table `ppdb_ips`
--
ALTER TABLE `ppdb_ips`
 ADD PRIMARY KEY (`ips_id`), ADD KEY `nisn` (`nisn`);

--
-- Indexes for table `ppdb_kontak`
--
ALTER TABLE `ppdb_kontak`
 ADD PRIMARY KEY (`ktk_id`);

--
-- Indexes for table `ppdb_mat`
--
ALTER TABLE `ppdb_mat`
 ADD PRIMARY KEY (`mat_id`), ADD KEY `nisn` (`nisn`);

--
-- Indexes for table `ppdb_menu`
--
ALTER TABLE `ppdb_menu`
 ADD PRIMARY KEY (`main_id`);

--
-- Indexes for table `ppdb_submenu`
--
ALTER TABLE `ppdb_submenu`
 ADD PRIMARY KEY (`sub_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ppdb_admin`
--
ALTER TABLE `ppdb_admin`
MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `ppdb_adm_siswa`
--
ALTER TABLE `ppdb_adm_siswa`
MODIFY `adm_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `ppdb_bind`
--
ALTER TABLE `ppdb_bind`
MODIFY `bind_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT for table `ppdb_bing`
--
ALTER TABLE `ppdb_bing`
MODIFY `bing_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT for table `ppdb_biodata`
--
ALTER TABLE `ppdb_biodata`
MODIFY `bio_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `ppdb_info`
--
ALTER TABLE `ppdb_info`
MODIFY `info_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ppdb_ipa`
--
ALTER TABLE `ppdb_ipa`
MODIFY `ipa_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT for table `ppdb_ips`
--
ALTER TABLE `ppdb_ips`
MODIFY `ips_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT for table `ppdb_kontak`
--
ALTER TABLE `ppdb_kontak`
MODIFY `ktk_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `ppdb_mat`
--
ALTER TABLE `ppdb_mat`
MODIFY `mat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT for table `ppdb_menu`
--
ALTER TABLE `ppdb_menu`
MODIFY `main_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ppdb_submenu`
--
ALTER TABLE `ppdb_submenu`
MODIFY `sub_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
