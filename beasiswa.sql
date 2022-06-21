-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jun 2022 pada 16.07
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `beasiswa`
--

CREATE TABLE `beasiswa` (
  `kd_beasiswa` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `beasiswa`
--

INSERT INTO `beasiswa` (`kd_beasiswa`, `nama`) VALUES
(7, 'Beasiswa ITB');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `kd_hasil` int(11) NOT NULL,
  `kd_beasiswa` int(11) NOT NULL,
  `nim` char(9) NOT NULL,
  `nilai` float DEFAULT NULL,
  `tahun` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`kd_hasil`, `kd_beasiswa`, `nim`, `nilai`, `tahun`) VALUES
(31, 7, '201602475', 9.33333, '2022'),
(32, 7, '201602478', 8.58333, '2022'),
(33, 7, '201635363', 8.58333, '2022'),
(34, 7, '201602471', 8.20833, '2022'),
(35, 7, '201635369', 8.125, '2022'),
(36, 7, '201711106', 8.08333, '2022'),
(37, 7, '201711105', 7.70833, '2022'),
(38, 7, '201711102', 7.70833, '2022'),
(39, 7, '201811102', 7.70833, '2022'),
(40, 7, '196120102', 7.08333, '2022'),
(41, 7, '201711101', 6.83333, '2022'),
(42, 7, '196220102', 6.70833, '2022'),
(43, 7, '201635361', 6.70833, '2022'),
(44, 7, '201711107', 6.58333, '2022');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `kd_kriteria` int(11) NOT NULL,
  `kd_beasiswa` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `sifat` enum('min','max') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`kd_kriteria`, `kd_beasiswa`, `nama`, `sifat`) VALUES
(17, 7, 'IPK', 'max'),
(18, 7, 'Semester', 'max'),
(19, 7, 'Penghasilan Orang Tua', 'min'),
(20, 7, 'Tanggungan Orang Tua', 'max'),
(21, 7, 'Prestasi', 'max');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` char(9) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `tahun_mengajukan` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `alamat`, `jenis_kelamin`, `tahun_mengajukan`) VALUES
('', '', '', '', '2022'),
('196120102', 'JAMILATUS SUAIDAH', 'Jl. Kh Zhen RT 01 RW 04, Desa Paciran, Kecamatan Paciran', 'Perempuan', '2022'),
('196220102', 'EVA SEPTYA NURMA', 'JL. Pondok RT 04 RW 05, Desa Paciran, Kec Paciran', 'Perempuan', '2022'),
('201602471', 'MUSTOFA HARTAMAN', 'Beringin Prikanan, Kel, Lansek Kadok, Kec. Rao Selatan', 'Laki-laki', '2022'),
('201602475', 'AISYAH', 'Jl. Pondok RT 03 RW 06 Paciran, Lamongan', 'Perempuan', '2022'),
('201602478', 'FAHMI MUBAROK', 'Jl. Kh Zhen RT 01 RW 05 Desa Paciran, Kec Paciran', 'Laki-laki', '2022'),
('201635361', 'INTI WULAN MUSTIKA WATI', 'Jl. Tegal Rotan, Gg.Hj shaleh RT01/08,Sawah Baru, Kecamatan Ciputat, Kabupaten Banten', 'Perempuan', '2022'),
('201635363', 'WENNY NILA SARI', 'Jl. Kramat No. 57 RT 03/02, Pondok Petir, Bojongsari', 'Perempuan', '2022'),
('201635369', 'RIKA DAMAYANTI', 'Jl.Damai RT.01/06 Jombang Rawa Lele. Kecamatan Ciputat', 'Perempuan', '2022'),
('201711101', 'ALFA RULIANDI', 'Kp. Petakan, RT 01, RW 03, Ds. Sarimukti, Kec. Karangnunggal, Kab. Tasikmalaya, Prov. Jawa Barat', 'Laki-laki', '2022'),
('201711102', 'MUHAMAD NUR RAJAB', 'Jalan Kebon Nanas 3 RT 004 RW 02 No. 45 Grogol Utara Kebayoran Lama', 'Laki-laki', '2022'),
('201711105', 'NINA RIFANTI', 'Jl. Pasar Lama 1 RT. 04 RW. 04 Paciran', 'Perempuan', '2022'),
('201711106', 'AULIA DEVI KUMALASARI', 'Jl. Kh Zhen RT 06 RW 06 Desa Paciran, Kec Paciran', 'Perempuan', '2022'),
('201711107', 'AGUS ARDIANSYAH', 'Lingkungan Semangu - RT 02 RW 06', 'Laki-laki', '2022'),
('201811102', 'WIDAD AZAHRI', 'Jl. Pondok RT 02 RW 05 Paciran Lamongan', 'Laki-laki', '2022');

-- --------------------------------------------------------

--
-- Struktur dari tabel `model`
--

CREATE TABLE `model` (
  `kd_model` int(11) NOT NULL,
  `kd_beasiswa` int(11) NOT NULL,
  `kd_kriteria` int(11) NOT NULL,
  `bobot` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `model`
--

INSERT INTO `model` (`kd_model`, `kd_beasiswa`, `kd_kriteria`, `bobot`) VALUES
(25, 7, 17, '3'),
(26, 7, 18, '2'),
(27, 7, 19, '2'),
(28, 7, 20, '1.5'),
(29, 7, 21, '1.5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `kd_nilai` int(11) NOT NULL,
  `kd_beasiswa` int(11) DEFAULT NULL,
  `kd_kriteria` int(11) NOT NULL,
  `nim` char(9) NOT NULL,
  `nilai` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`kd_nilai`, `kd_beasiswa`, `kd_kriteria`, `nim`, `nilai`) VALUES
(93, 7, 17, '201602471', 4),
(94, 7, 18, '201602471', 4),
(95, 7, 19, '201602471', 3),
(96, 7, 20, '201602471', 1),
(97, 7, 21, '201602471', 1),
(98, 7, 17, '201602475', 4),
(99, 7, 18, '201602475', 4),
(100, 7, 19, '201602475', 3),
(101, 7, 20, '201602475', 4),
(102, 7, 21, '201602475', 1),
(103, 7, 17, '201602478', 4),
(104, 7, 18, '201602478', 4),
(105, 7, 19, '201602478', 3),
(106, 7, 20, '201602478', 2),
(107, 7, 21, '201602478', 1),
(108, 7, 17, '201635361', 2),
(109, 7, 18, '201635361', 4),
(110, 7, 19, '201635361', 3),
(111, 7, 20, '201635361', 1),
(112, 7, 21, '201635361', 1),
(113, 7, 17, '201635363', 4),
(114, 7, 18, '201635363', 4),
(115, 7, 19, '201635363', 3),
(116, 7, 20, '201635363', 2),
(117, 7, 21, '201635363', 1),
(118, 7, 17, '201711101', 3),
(119, 7, 18, '201711101', 2),
(120, 7, 19, '201711101', 3),
(121, 7, 20, '201711101', 2),
(122, 7, 21, '201711101', 1),
(123, 7, 17, '201711102', 4),
(124, 7, 18, '201711102', 3),
(125, 7, 19, '201711102', 3),
(126, 7, 20, '201711102', 1),
(127, 7, 21, '201711102', 1),
(128, 7, 17, '201711105', 4),
(129, 7, 18, '201711105', 3),
(130, 7, 19, '201711105', 3),
(131, 7, 20, '201711105', 1),
(132, 7, 21, '201711105', 1),
(133, 7, 17, '201711106', 4),
(134, 7, 18, '201711106', 3),
(135, 7, 19, '201711106', 3),
(136, 7, 20, '201711106', 2),
(137, 7, 21, '201711106', 1),
(138, 7, 17, '201711107', 2),
(139, 7, 18, '201711107', 3),
(140, 7, 19, '201711107', 3),
(141, 7, 20, '201711107', 2),
(142, 7, 21, '201711107', 1),
(143, 7, 17, '201811102', 4),
(144, 7, 18, '201811102', 3),
(145, 7, 19, '201811102', 3),
(146, 7, 20, '201811102', 1),
(147, 7, 21, '201811102', 1),
(148, 7, 17, '196120102', 4),
(149, 7, 18, '196120102', 1),
(150, 7, 19, '196120102', 3),
(151, 7, 20, '196120102', 2),
(152, 7, 21, '196120102', 1),
(153, 7, 17, '196220102', 4),
(154, 7, 18, '196220102', 1),
(155, 7, 19, '196220102', 3),
(156, 7, 20, '196220102', 1),
(157, 7, 21, '196220102', 1),
(158, 7, 17, '201635369', 3),
(159, 7, 18, '201635369', 4),
(160, 7, 19, '201635369', 2),
(161, 7, 20, '201635369', 1),
(162, 7, 21, '201635369', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `kd_pengguna` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `status` enum('petugas','puket','mahasiswa') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`kd_pengguna`, `username`, `password`, `status`) VALUES
(1, 'petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c', 'petugas'),
(2, 'puket', 'b679a71646e932b7c4647a081ee2a148', 'puket');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE `penilaian` (
  `kd_penilaian` int(11) NOT NULL,
  `kd_beasiswa` int(11) DEFAULT NULL,
  `kd_kriteria` int(11) NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  `bobot` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penilaian`
--

INSERT INTO `penilaian` (`kd_penilaian`, `kd_beasiswa`, `kd_kriteria`, `keterangan`, `bobot`) VALUES
(109, 7, 17, '<= 3.00', 1),
(110, 7, 17, '3.01 - 3.25', 2),
(111, 7, 17, '3.26 - 3.50', 3),
(112, 7, 17, '>= 3.51', 4),
(113, 7, 18, '2', 1),
(114, 7, 18, '3 - 4', 2),
(115, 7, 18, '5 - 6', 3),
(116, 7, 18, '7 - 8', 4),
(117, 7, 19, '>= 2600000', 1),
(118, 7, 19, '1600000 - 2500000', 2),
(119, 7, 19, '600000 - 1500000', 3),
(120, 7, 19, '<= 500000', 4),
(121, 7, 20, '1 - 2 Anak', 1),
(122, 7, 20, '3 - 4 Anak', 2),
(123, 7, 20, '5 - 6 Anak', 3),
(124, 7, 20, '>= 7', 4),
(125, 7, 21, '1', 1),
(126, 7, 21, '2', 2),
(128, 7, 21, '3', 3),
(129, 7, 21, '>= 4', 4);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `beasiswa`
--
ALTER TABLE `beasiswa`
  ADD PRIMARY KEY (`kd_beasiswa`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`kd_hasil`),
  ADD KEY `fk_mahasiswa` (`nim`),
  ADD KEY `fk_beasiswa` (`kd_beasiswa`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`kd_kriteria`),
  ADD KEY `kd_beasiswa` (`kd_beasiswa`),
  ADD KEY `kd_beasiswa_2` (`kd_beasiswa`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`kd_model`),
  ADD KEY `fk_kriteria` (`kd_kriteria`),
  ADD KEY `fk_beasiswa` (`kd_beasiswa`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`kd_nilai`),
  ADD KEY `fk_kriteria` (`kd_kriteria`),
  ADD KEY `fk_mahasiswa` (`nim`),
  ADD KEY `fk_beasiswa` (`kd_beasiswa`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`kd_pengguna`);

--
-- Indeks untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`kd_penilaian`),
  ADD KEY `fk_kriteria` (`kd_kriteria`),
  ADD KEY `fk_beasiswa` (`kd_beasiswa`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `beasiswa`
--
ALTER TABLE `beasiswa`
  MODIFY `kd_beasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `kd_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `kd_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `model`
--
ALTER TABLE `model`
  MODIFY `kd_model` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `kd_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `kd_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `kd_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD CONSTRAINT `hasil_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hasil_ibfk_2` FOREIGN KEY (`kd_beasiswa`) REFERENCES `beasiswa` (`kd_beasiswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD CONSTRAINT `fk_beasiswa` FOREIGN KEY (`kd_beasiswa`) REFERENCES `beasiswa` (`kd_beasiswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `model_ibfk_1` FOREIGN KEY (`kd_kriteria`) REFERENCES `kriteria` (`kd_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `model_ibfk_2` FOREIGN KEY (`kd_beasiswa`) REFERENCES `beasiswa` (`kd_beasiswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`kd_kriteria`) REFERENCES `kriteria` (`kd_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_ibfk_3` FOREIGN KEY (`kd_beasiswa`) REFERENCES `beasiswa` (`kd_beasiswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `penilaian_ibfk_1` FOREIGN KEY (`kd_kriteria`) REFERENCES `kriteria` (`kd_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_2` FOREIGN KEY (`kd_beasiswa`) REFERENCES `beasiswa` (`kd_beasiswa`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
