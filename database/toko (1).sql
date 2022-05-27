-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Bulan Mei 2022 pada 16.18
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `id_bank` int(11) NOT NULL,
  `nama_pemilik_rekening` varchar(50) NOT NULL,
  `nama_bank` varchar(50) NOT NULL,
  `nomor_rekening` varchar(50) NOT NULL,
  `logo_bank` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_bank`
--

INSERT INTO `tbl_bank` (`id_bank`, `nama_pemilik_rekening`, `nama_bank`, `nomor_rekening`, `logo_bank`, `id_user`, `tanggal_update`) VALUES
(1, 'Suloi', 'BNI', '0395019090', '1200px-BNI_logo.svg.png', 1, '2022-05-25 14:02:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `id` int(11) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_banner`
--

INSERT INTO `tbl_banner` (`id`, `gambar`) VALUES
(1, '51b8ef8e27aee7d0a3d27c63919dd9c9.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_data_pengiriman`
--

CREATE TABLE `tbl_data_pengiriman` (
  `id_pengiriman` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `tanggal_pembelian` datetime NOT NULL,
  `deadline_pembayaran` datetime NOT NULL,
  `status_pembelian` varchar(30) NOT NULL,
  `alasan_ditolak` text NOT NULL,
  `promo` int(11) NOT NULL,
  `total_belanja` int(11) NOT NULL,
  `total_ongkir` int(11) NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `catatan` text NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `distrik` varchar(150) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `kodepos_pengiriman` varchar(10) NOT NULL,
  `ekspedisi_pengiriman` varchar(100) NOT NULL,
  `paket_pengiriman` varchar(100) NOT NULL,
  `lama_pengiriman` int(50) NOT NULL,
  `nama_penerima` varchar(50) NOT NULL,
  `telepon_penerima` varchar(15) NOT NULL,
  `alamat_penerima` text NOT NULL,
  `tanggal_pengiriman` datetime NOT NULL,
  `tanggal_diterima` datetime NOT NULL,
  `resi_pengiriman` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_data_pengiriman`
--

INSERT INTO `tbl_data_pengiriman` (`id_pengiriman`, `id_pelanggan`, `tanggal_pembelian`, `deadline_pembayaran`, `status_pembelian`, `alasan_ditolak`, `promo`, `total_belanja`, `total_ongkir`, `total_pembelian`, `catatan`, `provinsi`, `distrik`, `tipe`, `kodepos_pengiriman`, `ekspedisi_pengiriman`, `paket_pengiriman`, `lama_pengiriman`, `nama_penerima`, `telepon_penerima`, `alamat_penerima`, `tanggal_pengiriman`, `tanggal_diterima`, `resi_pengiriman`) VALUES
(12, 4, '2021-08-04 02:56:18', '2021-08-05 02:56:18', 'Barang return disetujui', '', 0, 105000, 39000, 144000, '', 'Kalimantan Selatan', 'Banjarbaru', 'Kota', '70712', 'JNE', 'REG', 2, 'Rastafarcode', '089531290044', 'Jl. Sekumpul Gg. Purnama RT/RW 002/001 Kec. Martapura Kab. Banjar Kalimantan Selatan', '2021-08-03 22:01:46', '0000-00-00 00:00:00', '123456789'),
(13, 5, '2021-08-04 05:09:59', '2021-08-05 05:09:59', 'Barang return disetujui', '', 19950, 86000, 47000, 113050, '', 'Kalimantan Selatan', 'Banjar', 'Kabupaten', '70619', 'JNE', 'REG', 5, 'Alwi Ahmad', '082158408140', 'Banjarbaru', '2021-08-04 00:11:53', '0000-00-00 00:00:00', '1234986498895'),
(14, 5, '2021-08-04 07:19:23', '2021-08-05 07:19:23', 'Selesai', '', 23250, 119000, 36000, 131750, '', 'Kalimantan Selatan', 'Banjarbaru', 'Kota', '70712', 'JNE', 'OKE', 4, 'Alwi Ahmad', '082158408140', 'Banjarbaru', '2021-08-04 02:20:35', '2021-08-17 09:50:51', '1234986498895'),
(15, 5, '2021-08-17 14:38:26', '2021-08-18 14:38:26', 'Barang return disetujui', '', 18000, 105000, 15000, 102000, '', 'Jawa Timur', 'Gresik', 'Kabupaten', '61115', 'TIKI', 'ECO', 5, 'Alwi Ahmad', '082158408140', 'Banjarbaru', '2021-08-17 09:42:07', '0000-00-00 00:00:00', '1234986498895'),
(16, 6, '2021-08-18 07:56:37', '2021-08-19 07:56:37', 'Dikirim', '', 1678500, 10290000, 900000, 9511500, '', 'Kalimantan Selatan', 'Banjarbaru', 'Kota', '70712', 'JNE', 'OKE', 4, 'Raisa', '082158408140', 'Banjarbaru', '2021-08-18 03:01:59', '0000-00-00 00:00:00', '1234986498895'),
(18, 0, '2022-01-04 00:00:00', '0000-00-00 00:00:00', 'Selesai', '', 0, 0, 0, 1050000, '', '', '', '', '', '', '', 0, 'Aris', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(19, 5, '2022-01-23 08:55:42', '2022-01-24 08:55:42', 'Batal', '', 0, 86000, 19000, 105000, '', 'Banten', 'Pandeglang', 'Kabupaten', '42212', 'JNE', 'OKE', 6, 'Alwi Ahmad', '082158408140', 'Banjarbaru', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(20, 0, '2022-01-23 00:00:00', '0000-00-00 00:00:00', 'Selesai', '', 0, 0, 0, 1190000, '', '', '', '', '', '', '', 0, 'Bandung', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(21, 0, '2022-01-23 00:00:00', '0000-00-00 00:00:00', 'Selesai', '', 0, 0, 0, 1190000, '', '', '', '', '', '', '', 0, 'Bandung', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(22, 5, '2022-01-23 10:13:20', '2022-01-24 10:13:20', 'Belum Bayar', '', 0, 172000, 52000, 224000, '', 'Kalimantan Timur', 'Berau', 'Kabupaten', '77311', 'TIKI', 'ECO', 4, 'Alwi Ahmad', '082158408140', 'Banjarbaru', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(23, 7, '2022-05-11 10:02:13', '2022-05-12 10:02:13', 'Dikirim', '', 0, 86000, 115000, 201000, '', 'Papua', 'Jayapura', 'Kota', '99114', 'POS', 'Paket Kilat Khusus', 5, 'Ahmad Junaidi', '082250037030', 'klopkam', '2022-05-11 05:32:32', '0000-00-00 00:00:00', '192309128'),
(24, 7, '2022-05-13 20:57:45', '2022-05-14 20:57:45', 'Pembayaran Ditolak', 'maaf warna kosong', 0, 86000, 115000, 201000, '', 'Papua', 'Jayapura', 'Kota', '99114', 'POS', 'Paket Kilat Khusus', 5, 'Ahmad Junaidi', '082250037030', 'klopkam', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(25, 7, '2022-05-13 23:49:30', '2022-05-14 23:49:30', 'Barang return disetujui', '', 0, 258000, 115000, 373000, 'tes', 'Papua', 'Jayapura', 'Kota', '99114', 'POS', 'Paket Kilat Khusus', 5, 'Ahmad Junaidi', '082250037030', 'klopkam', '2022-05-13 18:50:11', '0000-00-00 00:00:00', '13213123'),
(26, 7, '2022-05-14 09:42:31', '2022-05-15 09:42:31', 'Menunggu Konfirmasi', '', 0, 86000, 53000, 139000, '', 'Kalimantan Barat', 'Ketapang', 'Kabupaten', '78874', 'POS', 'Paket Kilat Khusus', 10, 'Ahmad Junaidi', '082250037030', 'klopkam', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(27, 7, '2022-05-15 09:39:23', '2022-05-16 09:39:23', 'Dikirim', '', 60300, 86000, 115000, 140700, '', 'Papua', 'Jayapura', 'Kota', '99114', 'POS', 'Paket Kilat Khusus', 5, 'Ahmad Junaidi', '082250037030', 'klopkam', '2022-05-15 06:07:35', '0000-00-00 00:00:00', 'asdasd'),
(28, 7, '2022-05-22 09:59:35', '2022-05-23 09:59:35', 'Dikirim', '', 0, 105000, 38000, 143000, '', 'Bangka Belitung', 'Bangka Barat', 'Kabupaten', '33315', 'POS', 'Paket Kilat Khusus', 7, 'Ahmad Junaidi', '082250037030', 'klopkam', '2022-05-22 06:37:57', '0000-00-00 00:00:00', 's123'),
(29, 7, '2022-05-25 20:59:23', '2022-05-26 20:59:23', 'Menunggu Konfirmasi', '', 0, 120000, 33000, 153000, '', 'Lampung', 'Tanggamus', 'Kabupaten', '35619', 'POS', 'Paket Kilat Khusus', 6, 'Ahmad Junaidi', '082250037030', 'klopkam', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(30, 7, '2022-05-26 05:49:25', '2022-05-27 05:49:25', 'Selesai', '', 0, 120000, 146000, 266000, '', 'Maluku Utara', 'Halmahera Barat', 'Kabupaten', '97757', 'TIKI', 'ECO', 6, 'Ahmad Junaidi', '082250037030', 'klopkam', '2022-05-26 02:31:08', '2022-05-26 02:31:36', '31'),
(31, 7, '2022-05-26 09:06:09', '2022-05-27 09:06:09', 'Selesai', '', 0, 120000, 37500, 157500, 'wqeqweqw', 'Kepulauan Riau', 'Bintan', 'Kabupaten', '29135', 'POS', 'Paket Kilat Khusus', 6, 'Ahmad Junaidi', '082250037030', 'klopkam', '2022-05-26 20:15:03', '2022-05-26 20:15:56', '12323'),
(32, 7, '2022-05-27 01:09:45', '2022-05-28 01:09:45', 'Pembayaran Ditolak', '', 0, 300000, 38000, 338000, '', 'Bangka Belitung', 'Bangka Barat', 'Kabupaten', '33315', 'POS', 'Paket Kilat Khusus', 7, 'Ahmad Junaidi', '082250037030', 'klopkam', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(33, 7, '2022-05-27 01:12:42', '2022-05-28 01:12:42', 'Menunggu Konfirmasi', '', 0, 150000, 115000, 265000, '', 'Papua', 'Jayapura', 'Kota', '99114', 'POS', 'Paket Kilat Khusus', 5, 'Ahmad Junaidi', '082250037030', 'klopkam', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(34, 7, '2022-05-27 01:28:14', '2022-05-28 01:28:14', 'Belum Bayar', '', 0, 120000, 115000, 235000, '', 'Papua', 'Jayapura', 'Kota', '99114', 'POS', 'Paket Kilat Khusus', 5, 'Ahmad Junaidi', '082250037030', 'klopkam', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gambar`
--

CREATE TABLE `tbl_gambar` (
  `id_gambar` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_gambar`
--

INSERT INTO `tbl_gambar` (`id_gambar`, `id_produk`, `judul`, `gambar`) VALUES
(1, 15, 'Baju Gamis Wanita Tania Set Setelan Celana Muslim Muslimah', 'batch-upload_e8977e53-fba5-4dd6-b982-a217298a28b9.jpg'),
(2, 15, 'Baju Gamis Wanita Tania Set Setelan Celana Muslim Muslimah', 'batch-upload_a27f2f57-2b8f-4a51-8710-0f0395f4fa2c.jpg'),
(3, 15, 'Baju Gamis Wanita Tania Set Setelan Celana Muslim Muslimah', 'batch-upload_44f4d942-6850-4837-b4b3-40c7a229e003.jpg'),
(5, 20, 'Bagian Kantong', 'Screenshot_2022-05-20-13-38-34-011_com.instagram.android.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_instansi`
--

CREATE TABLE `tbl_instansi` (
  `id_instansi` int(11) NOT NULL,
  `nama_instansi` varchar(50) NOT NULL,
  `pimpinan_instansi` varchar(50) NOT NULL,
  `email_instansi` varchar(50) NOT NULL,
  `telepon_instansi` varchar(15) NOT NULL,
  `facebook` varchar(50) NOT NULL,
  `instagram` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `logo_instansi` text NOT NULL,
  `alamat_instansi` text NOT NULL,
  `maps` text NOT NULL,
  `tentang` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_instansi`
--

INSERT INTO `tbl_instansi` (`id_instansi`, `nama_instansi`, `pimpinan_instansi`, `email_instansi`, `telepon_instansi`, `facebook`, `instagram`, `website`, `logo_instansi`, `alamat_instansi`, `maps`, `tentang`, `id_user`, `tanggal_update`) VALUES
(1, 'Luumode Store', 'Pak Suloi', 'luumodestorei@gmail.com', '0812307911000', 'https://www.facebook.com/luumodestore', 'https://www.instagram.com/luumodestore', 'https://www.luumodestore.com', 'Hijau dan Putih Anggun Salon Kecantikan Logo2.png', 'APO, Jl. Samratulangi, Bayangkaran Kec. Jayapura Utara, Kota Jayapura, Papua 99112', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3985.9159133942535!2d140.70369371380676!3d-2.5343275981533364!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x686c5905275926bb%3A0x1c6512175743ae4e!2sJyp%20sneakers!5e0!3m2!1sid!2sid!4v1653590655564!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Luumode Store merupakan toko yang menjual berbagai jenis macam pakaian distro mulai dari baju, jaket, celana dan tas selempang. Toko luumode sudah berdiri sejak 2019 sampai sekarang, pendiri dari toko ini adalah Pak Suloi. Toko ini terletak di jalan Kab. 1, Bayangkara, Jayapura Utara, Kota Jayapura.', 3, '2022-05-26 18:45:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`, `id_user`, `tanggal_update`) VALUES
(20, 'Tas', 1, '2022-05-25 05:24:40'),
(21, 'Celana', 1, '2022-05-25 05:24:32'),
(22, 'Baju', 1, '2022-05-25 05:24:26'),
(23, 'Jaket', 1, '2022-05-25 05:29:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_logo`
--

CREATE TABLE `tbl_logo` (
  `id` int(11) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_logo`
--

INSERT INTO `tbl_logo` (`id`, `gambar`) VALUES
(1, 'HAWAMINI STORE_free-file (1).png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_notifikasi`
--

CREATE TABLE `tbl_notifikasi` (
  `id_notifikasi` int(11) NOT NULL,
  `id_pengiriman` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_notifikasi`
--

INSERT INTO `tbl_notifikasi` (`id_notifikasi`, `id_pengiriman`, `id_pelanggan`, `status`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 0),
(3, 3, 1, 0),
(4, 4, 1, 0),
(5, 5, 3, 1),
(6, 6, 3, 1),
(7, 7, 3, 1),
(8, 8, 3, 1),
(9, 9, 3, 1),
(10, 10, 3, 1),
(11, 11, 3, 1),
(12, 12, 4, 0),
(13, 13, 5, 1),
(14, 14, 5, 1),
(15, 15, 5, 1),
(16, 16, 6, 1),
(17, 19, 5, 1),
(18, 22, 5, 0),
(19, 23, 7, 1),
(20, 24, 7, 1),
(21, 25, 7, 1),
(22, 26, 7, 1),
(23, 27, 7, 1),
(24, 28, 7, 1),
(25, 29, 7, 1),
(26, 30, 7, 1),
(27, 31, 7, 0),
(28, 32, 7, 0),
(29, 33, 7, 0),
(30, 34, 7, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `email_pelanggan` varchar(50) NOT NULL,
  `password_pelanggan` varchar(60) NOT NULL,
  `telepon_pelanggan` varchar(15) NOT NULL,
  `foto_pelanggan` text NOT NULL,
  `alamat_pelanggan` text NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `email_pelanggan`, `password_pelanggan`, `telepon_pelanggan`, `foto_pelanggan`, `alamat_pelanggan`, `tanggal_update`) VALUES
(7, 'Ahmad Junaidi', 'ahmad@gmail.com', 'c5838049ea75542b37bc369f31a7793bcdf2bb7b', '082250037030', '', 'klopkam', '2022-05-11 02:37:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pembayaran`
--

CREATE TABLE `tbl_pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pengiriman` int(11) NOT NULL,
  `tgl_konfirmasi` datetime NOT NULL,
  `tgl_verifikasi` datetime NOT NULL,
  `bukti` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pembayaran`
--

INSERT INTO `tbl_pembayaran` (`id_pembayaran`, `id_pengiriman`, `tgl_konfirmasi`, `tgl_verifikasi`, `bukti`) VALUES
(13, 12, '2021-08-03 00:00:00', '2021-08-03 00:00:00', 'Struk ATM Untuk Modus Tipu2.jpg'),
(14, 13, '2021-08-04 00:00:00', '2021-08-04 00:00:00', 'download1111.jpg'),
(15, 14, '2021-08-04 00:00:00', '2021-08-04 00:00:00', 'rompi.jpg'),
(16, 15, '2021-08-17 00:00:00', '2021-08-17 00:00:00', '5cc7ac5b09dfb (1).jpg'),
(17, 16, '2021-08-18 00:00:00', '2021-08-18 00:00:00', '5cc7ac5b09dfb (1).jpg'),
(18, 23, '2022-05-11 00:00:00', '2022-05-11 00:00:00', '51b8ef8e27aee7d0a3d27c63919dd9c9.jpg'),
(19, 24, '2022-05-13 00:00:00', '2022-05-13 00:00:00', '51b8ef8e27aee7d0a3d27c63919dd9c9.jpg'),
(20, 25, '2022-05-13 00:00:00', '2022-05-13 00:00:00', '76cab30defe0b96a3d7ea3b9e9f1f40e.png'),
(21, 26, '2022-05-14 00:00:00', '0000-00-00 00:00:00', '51b8ef8e27aee7d0a3d27c63919dd9c9.jpg'),
(22, 27, '2022-05-15 00:00:00', '2022-05-15 00:00:00', '76cab30defe0b96a3d7ea3b9e9f1f40e.png'),
(23, 28, '2022-05-22 00:00:00', '2022-05-22 00:00:00', ''),
(24, 29, '2022-05-25 00:00:00', '0000-00-00 00:00:00', 'Kaos Polos Abu-abu.png'),
(25, 30, '2022-05-26 00:00:00', '2022-05-26 00:00:00', 'Screenshot_2022-05-20-13-38-37-883_com.instagram.android.jpg'),
(26, 31, '2022-05-26 00:00:00', '2022-05-26 00:00:00', 'Kaos Polos Abu-abu.png'),
(27, 32, '2022-05-26 00:00:00', '2022-05-26 00:00:00', ''),
(28, 33, '2022-05-26 00:00:00', '0000-00-00 00:00:00', 'WhatsApp Image 2022-05-27 at 03.11.30.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pembelian`
--

CREATE TABLE `tbl_pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pengiriman` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama_produk` tinytext NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `berat_produk` int(11) NOT NULL,
  `jumlah_produk` int(11) NOT NULL,
  `subberat_produk` int(11) NOT NULL,
  `subharga_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pembelian`
--

INSERT INTO `tbl_pembelian` (`id_pembelian`, `id_pengiriman`, `id_produk`, `nama_produk`, `harga_produk`, `berat_produk`, `jumlah_produk`, `subberat_produk`, `subharga_produk`) VALUES
(24, 29, 22, 'Baju Polos', 120000, 500, 1, 500, 120000),
(25, 30, 22, 'Baju Polos', 120000, 500, 1, 500, 120000),
(26, 31, 22, 'Baju Polos', 120000, 500, 1, 500, 120000),
(27, 32, 43, 'Celana Cargo Panjang || Hitam', 300000, 700, 1, 700, 300000),
(28, 33, 39, 'Baju Polos Kuning', 150000, 200, 1, 200, 150000),
(29, 34, 22, 'Baju Polos', 120000, 500, 1, 500, 120000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengadaan_produk`
--

CREATE TABLE `tbl_pengadaan_produk` (
  `id_pengadaan` int(11) NOT NULL,
  `nomor_transaksi` varchar(30) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `total` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengadaan_produk_detail`
--

CREATE TABLE `tbl_pengadaan_produk_detail` (
  `id_pengadaan_detail` int(11) NOT NULL,
  `id_pengadaan` int(11) NOT NULL,
  `nama_produk` varchar(150) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pesan`
--

CREATE TABLE `tbl_pesan` (
  `id_pesan` int(11) NOT NULL,
  `nama_pesan` varchar(50) NOT NULL,
  `email_pesan` varchar(50) NOT NULL,
  `kontak_pesan` varchar(30) NOT NULL,
  `saran_pesan` text NOT NULL,
  `tgl_pesan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pesan`
--

INSERT INTO `tbl_pesan` (`id_pesan`, `nama_pesan`, `email_pesan`, `kontak_pesan`, `saran_pesan`, `tgl_pesan`) VALUES
(1, 'ajun', 'ajun@gmail.com', '082389812031', 'buatkan fitur cod', '2022-05-27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id_produk` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_produk` tinytext NOT NULL,
  `harga_produk` int(11) NOT NULL DEFAULT '0',
  `berat_produk` int(11) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `gambar_produk` text NOT NULL,
  `terjual` int(11) NOT NULL DEFAULT '0',
  `stok` int(11) NOT NULL DEFAULT '0',
  `id_user` int(11) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `id_kategori`, `nama_produk`, `harga_produk`, `berat_produk`, `deskripsi_produk`, `gambar_produk`, `terjual`, `stok`, `id_user`, `tanggal_update`) VALUES
(20, 22, 'Baju Distro Untold', 150000, 500, '<p>Hai,selamat datang diolshop kami.Nikmati dan rasakan belanja mudah,simple,praktis dan tentunya dengan kwalitas barang yang kami tawarkan.</p>\r\n\r\n<p>DETAIL SIZE</p>\r\n\r\n<p>&bull; L = Lebar Dada 52cm x Panjang 72cm</p>\r\n\r\n<p>&bull; XL = Lebar Dada 54cm x Panjang 74cm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>* BAHAN = KATUN COMBAT 30s</p>\r\n\r\n<p>* SABLON = PALSTISOL (Aman di CUCI )</p>\r\n\r\n<p>* FULLTAGE LUAR DALAM</p>\r\n', 'Screenshot_2022-05-20-13-38-18-427_com.instagram.android.jpg', 0, 10, 1, '2022-05-25 05:44:32'),
(21, 0, 'Kaos Polos', 120000, 500, '<p>Hai,selamat datang diolshop kami.Nikmati dan rasakan belanja mudah,simple,praktis dan tentunya dengan kwalitas barang yang kami tawarkan.</p>\r\n\r\n<p>DETAIL SIZE</p>\r\n\r\n<p>&bull; L = Lebar Dada 52cm x Panjang 72cm</p>\r\n\r\n<p>&bull; XL = Lebar Dada 54cm x Panjang 74cm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>* BAHAN = KATUN COMBAT 30s</p>\r\n\r\n<p>* SABLON = PALSTISOL (Aman di CUCI )</p>\r\n\r\n<p>* FULLTAGE LUAR DALAM</p>\r\n', 'Kaos Polos Abu-abu.png', 0, 10, 1, '2022-05-25 05:51:44'),
(22, 22, 'Baju Polos', 120000, 500, '<p>Hai,selamat datang diolshop kami.Nikmati dan rasakan belanja mudah,simple,praktis dan tentunya dengan kwalitas barang yang kami tawarkan.</p>\r\n\r\n<p>DETAIL SIZE</p>\r\n\r\n<p>&bull; L = Lebar Dada 52cm x Panjang 72cm</p>\r\n\r\n<p>&bull; XL = Lebar Dada 54cm x Panjang 74cm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>* BAHAN = KATUN COMBAT 30s</p>\r\n\r\n<p>* SABLON = PALSTISOL (Aman di CUCI )</p>\r\n\r\n<p>* FULLTAGE LUAR DALAM</p>\r\n', 'Kaos Polos Abu-abu.png', 2, 8, 1, '2022-05-26 02:13:56'),
(23, 23, 'Jaket Epidemic', 350000, 700, '<p>Jaket Epidemic</p>\r\n', 'IMG_20220525_162945.jpg', 0, 3, 1, '2022-05-26 16:14:41'),
(24, 23, 'Crewneck', 300000, 700, '', 'IMG_20220525_163551.jpg', 0, 6, 1, '2022-05-26 16:15:33'),
(25, 23, 'Sweater Chicago', 175000, 1000, '', 'IMG_20220525_163856.jpg', 0, 4, 1, '2022-05-26 16:18:57'),
(26, 23, 'Jaket Pull and Bear', 200000, 1000, '', 'IMG_20220525_163916.jpg', 0, 7, 1, '2022-05-26 16:17:56'),
(27, 0, 'Sweater Bulls', 175000, 1000, '', 'IMG_20220525_163906.jpg', 0, 10, 1, '2022-05-26 16:18:38'),
(28, 22, 'Baju Polos Oversize Hitam', 100000, 200, '', 'IMG_20220525_162806.jpg', 0, 27, 1, '2022-05-26 16:20:35'),
(29, 0, 'Baju Anime One Piece', 75000, 200, '', 'IMG_20220525_162241.jpg', 0, 15, 1, '2022-05-26 16:21:22'),
(30, 20, 'Tas Selempang', 120000, 300, '', 'IMG_20220525_162138.jpg', 0, 8, 1, '2022-05-26 16:23:34'),
(31, 22, 'Baju Anime', 75000, 200, '', 'IMG_20220525_162614.jpg', 0, 20, 1, '2022-05-26 16:24:09'),
(33, 22, 'Baju Distro Motif Kucing', 175000, 200, '', 'IMG_20220525_162124.jpg', 0, 25, 1, '2022-05-26 16:27:02'),
(34, 23, 'Jaket Bomber', 250000, 1000, '', 'Screenshot_2022-05-23-15-46-54-938_com.instagram.android.jpg', 0, 12, 1, '2022-05-26 16:33:50'),
(35, 23, 'Jaket Bomber 2', 250000, 1000, '', 'Screenshot_2022-05-23-15-46-49-306_com.instagram.android.jpg', 0, 10, 1, '2022-05-26 16:36:19'),
(36, 0, 'Jaket Bomber 3', 250000, 700, '', 'Screenshot_2022-05-23-15-46-51-993_com.instagram.android.jpg', 0, 10, 1, '2022-05-26 16:40:49'),
(37, 23, 'Jaket Bomber 3', 250000, 700, '', 'Screenshot_2022-05-23-15-46-51-993_com.instagram.android.jpg', 0, 10, 1, '2022-05-26 16:43:05'),
(38, 0, 'Baju Polos Kuning', 150000, 200, '', 'IMG_20220525_162208.jpg', 0, 20, 1, '2022-05-26 16:44:26'),
(39, 22, 'Baju Polos Kuning', 150000, 200, '', 'IMG_20220525_162208.jpg', 0, 20, 1, '2022-05-26 16:45:23'),
(40, 21, 'Celana Cargo Pendek || Hitam', 135000, 300, '', 'IMG_20220525_163651.jpg', 0, 12, 1, '2022-05-26 16:50:31'),
(41, 21, 'Celana Cargo Pendek || Army', 135000, 400, '', 'IMG_20220525_163747.jpg', 0, 12, 1, '2022-05-26 16:51:16'),
(42, 21, 'Celana Cargo Panjang || Army', 300000, 700, '', 'IMG_20220525_163625.jpg', 0, 5, 1, '2022-05-26 16:51:53'),
(43, 21, 'Celana Cargo Panjang || Hitam', 300000, 700, '', 'IMG_20220525_163615.jpg', 0, 12, 1, '2022-05-26 16:52:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_promo`
--

CREATE TABLE `tbl_promo` (
  `id_promo` int(11) NOT NULL,
  `kode_promo` varchar(20) NOT NULL,
  `tgl_promo` date NOT NULL,
  `diskon` int(11) NOT NULL,
  `foto_promo` text NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_promo`
--

INSERT INTO `tbl_promo` (`id_promo`, `kode_promo`, `tgl_promo`, `diskon`, `foto_promo`, `keterangan`) VALUES
(5, '50raya', '2022-05-27', 50, 'promo.png', 'Spesial Promo Hari Raya 50% Untuk semua produk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_return`
--

CREATE TABLE `tbl_return` (
  `id_retur` int(11) NOT NULL,
  `id_pengiriman` int(11) NOT NULL,
  `alasan` text NOT NULL,
  `bukti` text NOT NULL,
  `jenis_retur` enum('Tukar Barang','Uang Kembali','Kirim Kembali','') NOT NULL,
  `status` enum('Disetujui','Ditolak','Pending','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_return`
--

INSERT INTO `tbl_return` (`id_retur`, `id_pengiriman`, `alasan`, `bukti`, `jenis_retur`, `status`) VALUES
(5, 9, 'Barang Rusak', 'promo.jpg', 'Tukar Barang', 'Ditolak'),
(18, 10, 'Sobek', 'promo.jpg', 'Tukar Barang', 'Disetujui'),
(19, 12, 'Barang cacat dan/atau rusak saat diterima;', 'batch-upload_079efee6-34e5-4f0f-a0e3-d4433263a808.jpg', 'Tukar Barang', 'Pending'),
(21, 13, 'Ukuran yang di kirimkan tidak sesuai dengan yg saya mau, jdi tolong untuk di tukarkan, Terimakasih.', 'rompi.jpg', 'Tukar Barang', 'Disetujui'),
(22, 14, 'Barang yang di kirimkan tidak sesuai ukuran nya, Mohon untuk di tukarkan dengan ukuran sesuai pesanan.', 'rompi.jpg', 'Tukar Barang', 'Disetujui'),
(23, 14, 'Barang Cacat stelah diterima', 'rompi.jpg', 'Tukar Barang', 'Ditolak'),
(24, 14, 'Barang Cacat', 'rompi.jpg', 'Tukar Barang', 'Ditolak'),
(25, 15, 'Rusak', '5cc7ac5b09dfb (1).jpg', 'Tukar Barang', 'Disetujui'),
(26, 25, 'barang rusak', '51b8ef8e27aee7d0a3d27c63919dd9c9.jpg', 'Kirim Kembali', 'Disetujui');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `telepon_supplier` varchar(15) NOT NULL,
  `alamat_supplier` text NOT NULL,
  `keterangan` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`id_supplier`, `nama_supplier`, `telepon_supplier`, `alamat_supplier`, `keterangan`, `id_user`, `tanggal_update`) VALUES
(1, 'PT. Clothes Production', '08981189598', 'Bandung', 'Supplier Baju', 1, '2021-07-12 09:37:13'),
(3, 'PT. Bandung Procution', '082155588822', 'Bandung', 'Supplier Baju Anak', 1, '2021-07-12 09:39:43'),
(4, 'Ocik Stock', '0821111111778', 'Jakarta', 'Supplier Dress', 1, '2021-07-12 09:41:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `id_testimoni` int(11) NOT NULL,
  `id_pengiriman` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `testimoni` text NOT NULL,
  `gambar` text NOT NULL,
  `tanggal_ulasan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_testimoni`
--

INSERT INTO `tbl_testimoni` (`id_testimoni`, `id_pengiriman`, `id_pelanggan`, `testimoni`, `gambar`, `tanggal_ulasan`) VALUES
(1, 1, 1, 'Keren Banget!', '', '0000-00-00 00:00:00'),
(2, 2, 1, 'Barangnya bagus banget!', '', '0000-00-00 00:00:00'),
(4, 3, 1, 'asdasdasd', 'screencapture-localhost-hawamini-2021-07-12-14_54_39.png', '0000-00-00 00:00:00'),
(5, 5, 3, '', '', '0000-00-00 00:00:00'),
(6, 6, 3, '', '', '0000-00-00 00:00:00'),
(7, 7, 3, 'Barang nya bagus!!!', '', '0000-00-00 00:00:00'),
(8, 8, 3, '', '', '0000-00-00 00:00:00'),
(9, 14, 5, 'Recommended', '5cc7ac5b09dfb (1).jpg', '0000-00-00 00:00:00'),
(11, 31, 7, 'Mohon untuk buatkan fitur COD agar memudahkan kami para pelanggan', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(60) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `jk` enum('Laki-Laki','Perempuan','','') NOT NULL,
  `foto` text NOT NULL,
  `alamat` text NOT NULL,
  `level` enum('Admin','Owner','','') NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama`, `username`, `password`, `telepon`, `jk`, `foto`, `alamat`, `level`, `tanggal_update`) VALUES
(2, 'Ahmad', 'owner', '579233b2c479241523cba5e3af55d0f50f2d6414', '08213456879', 'Laki-Laki', '', 'Banjarmasin', 'Owner', '2022-05-26 22:29:58'),
(3, 'Junaidi', 'ahmadjunaidi', 'c5838049ea75542b37bc369f31a7793bcdf2bb7b', '082318203123', 'Laki-Laki', '34085af3fb9ae9177727f45f73d40f95.jpg', 'klopkam', 'Admin', '2022-05-26 17:58:19');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`id_bank`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_data_pengiriman`
--
ALTER TABLE `tbl_data_pengiriman`
  ADD PRIMARY KEY (`id_pengiriman`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indeks untuk tabel `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  ADD PRIMARY KEY (`id_gambar`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indeks untuk tabel `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  ADD PRIMARY KEY (`id_instansi`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tbl_logo`
--
ALTER TABLE `tbl_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_notifikasi`
--
ALTER TABLE `tbl_notifikasi`
  ADD PRIMARY KEY (`id_notifikasi`),
  ADD KEY `id_pengiriman` (`id_pengiriman`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indeks untuk tabel `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `tbl_pembayaran`
--
ALTER TABLE `tbl_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_pengiriman` (`id_pengiriman`);

--
-- Indeks untuk tabel `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `id_pengiriman` (`id_pengiriman`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indeks untuk tabel `tbl_pengadaan_produk`
--
ALTER TABLE `tbl_pengadaan_produk`
  ADD PRIMARY KEY (`id_pengadaan`);

--
-- Indeks untuk tabel `tbl_pengadaan_produk_detail`
--
ALTER TABLE `tbl_pengadaan_produk_detail`
  ADD PRIMARY KEY (`id_pengadaan_detail`),
  ADD KEY `id_pengadaan` (`id_pengadaan`);

--
-- Indeks untuk tabel `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indeks untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tbl_promo`
--
ALTER TABLE `tbl_promo`
  ADD PRIMARY KEY (`id_promo`);

--
-- Indeks untuk tabel `tbl_return`
--
ALTER TABLE `tbl_return`
  ADD PRIMARY KEY (`id_retur`);

--
-- Indeks untuk tabel `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`id_supplier`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`id_testimoni`),
  ADD KEY `id_pengiriman` (`id_pengiriman`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_data_pengiriman`
--
ALTER TABLE `tbl_data_pengiriman`
  MODIFY `id_pengiriman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  MODIFY `id_instansi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `tbl_logo`
--
ALTER TABLE `tbl_logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_notifikasi`
--
ALTER TABLE `tbl_notifikasi`
  MODIFY `id_notifikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_pembayaran`
--
ALTER TABLE `tbl_pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengadaan_produk`
--
ALTER TABLE `tbl_pengadaan_produk`
  MODIFY `id_pengadaan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengadaan_produk_detail`
--
ALTER TABLE `tbl_pengadaan_produk_detail`
  MODIFY `id_pengadaan_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `tbl_promo`
--
ALTER TABLE `tbl_promo`
  MODIFY `id_promo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_return`
--
ALTER TABLE `tbl_return`
  MODIFY `id_retur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `id_testimoni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
