-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2022 at 04:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `id_bank` int(11) NOT NULL,
  `nama_pemilik_rekening` varchar(50) NOT NULL,
  `nama_bank` varchar(50) NOT NULL,
  `nomor_rekening` varchar(50) NOT NULL,
  `logo_bank` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`id_bank`, `nama_pemilik_rekening`, `nama_bank`, `nomor_rekening`, `logo_bank`, `id_user`, `tanggal_update`) VALUES
(1, 'Purnama Amelia', 'BNI', '0395019090', '1200px-BNI_logo.svg.png', 1, '2021-07-22 09:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `id` int(11) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`id`, `gambar`) VALUES
(1, 'hawas.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_pengiriman`
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
-- Dumping data for table `tbl_data_pengiriman`
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
(22, 5, '2022-01-23 10:13:20', '2022-01-24 10:13:20', 'Belum Bayar', '', 0, 172000, 52000, 224000, '', 'Kalimantan Timur', 'Berau', 'Kabupaten', '77311', 'TIKI', 'ECO', 4, 'Alwi Ahmad', '082158408140', 'Banjarbaru', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gambar`
--

CREATE TABLE `tbl_gambar` (
  `id_gambar` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_gambar`
--

INSERT INTO `tbl_gambar` (`id_gambar`, `id_produk`, `judul`, `gambar`) VALUES
(1, 15, 'Baju Gamis Wanita Tania Set Setelan Celana Muslim Muslimah', 'batch-upload_e8977e53-fba5-4dd6-b982-a217298a28b9.jpg'),
(2, 15, 'Baju Gamis Wanita Tania Set Setelan Celana Muslim Muslimah', 'batch-upload_a27f2f57-2b8f-4a51-8710-0f0395f4fa2c.jpg'),
(3, 15, 'Baju Gamis Wanita Tania Set Setelan Celana Muslim Muslimah', 'batch-upload_44f4d942-6850-4837-b4b3-40c7a229e003.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_instansi`
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
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_instansi`
--

INSERT INTO `tbl_instansi` (`id_instansi`, `nama_instansi`, `pimpinan_instansi`, `email_instansi`, `telepon_instansi`, `facebook`, `instagram`, `website`, `logo_instansi`, `alamat_instansi`, `maps`, `tentang`, `id_user`, `tanggal_update`) VALUES
(1, 'Hawamini Store', 'PURNAMA AMELIA', 'hawamini@gmail.com', '08981189598', 'https://www.facebook.com/hawamini', 'https://www.instagram.com/hawamini', 'https://www.hawamini.com', 'HAWAMINI STORE_free-file (2) (1).png', 'Kemuning, Kec. Banjarbaru Selatan, Kota Banjar Baru, Kalimantan Selatan 70732', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3982.540783583551!2d114.84866421417036!3d-3.4611411428396486!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2de68165c96774bd%3A0xdd80a6570c3dd6e9!2sButik%20Hawamini%20New!5e0!3m2!1sid!2sid!4v1628029441492!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', ' Toko Hawa Mini merupakan toko baju yang bergerak di bidang produk dan jasa pembuatan/penjualan pakaian muslim dan formal yang berlokasi di Jalan Kelapa Sawit Kecamatan Banjarbaru Selatan Kota Banjarbaru. Pengalaman menekuni bidang usaha sejak 2015 hingga sekarang. Perusahaan ini berkonsentrasi pada penjualan pakaian seperti Jasko, gamis, blazer, tunik dan\r\nberbagai macam pakaian orang dewasa dan anak-anak', 1, '2021-08-17 07:25:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`, `id_user`, `tanggal_update`) VALUES
(20, 'Bawahan', 1, '2021-08-03 19:22:29'),
(21, 'Atasan', 1, '2021-08-03 19:22:24'),
(22, 'Gamis Set', 1, '2021-08-03 19:24:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logo`
--

CREATE TABLE `tbl_logo` (
  `id` int(11) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_logo`
--

INSERT INTO `tbl_logo` (`id`, `gambar`) VALUES
(1, 'HAWAMINI STORE_free-file (1).png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notifikasi`
--

CREATE TABLE `tbl_notifikasi` (
  `id_notifikasi` int(11) NOT NULL,
  `id_pengiriman` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_notifikasi`
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
(18, 22, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `email_pelanggan` varchar(50) NOT NULL,
  `password_pelanggan` varchar(60) NOT NULL,
  `telepon_pelanggan` varchar(15) NOT NULL,
  `foto_pelanggan` text NOT NULL,
  `alamat_pelanggan` text NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `email_pelanggan`, `password_pelanggan`, `telepon_pelanggan`, `foto_pelanggan`, `alamat_pelanggan`, `tanggal_update`) VALUES
(4, 'Rastafarcode', 'rastafarcode@gmail.com', '850317d79a1089be19b3cb1b6380ec304dadfcc3', '089531290044', '', 'Jl. Sekumpul Gg. Purnama RT/RW 002/001 Kec. Martapura Kab. Banjar Kalimantan Selatan', '2021-08-17 06:54:23'),
(5, 'Alwi Ahmad', 'alwia19@gmail.com', '356a192b7913b04c54574d18c28d46e6395428ab', '082158408140', 'DSC_0408.JPG', 'Banjarbaru', '2021-08-17 07:05:14'),
(6, 'Raisa', 'raisa@gmail.com', 'c7b98d6f01d551cb329bf2bec57f97406b9a46d7', '082158408140', '', 'Banjarbaru', '2021-08-18 00:46:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembayaran`
--

CREATE TABLE `tbl_pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pengiriman` int(11) NOT NULL,
  `tgl_konfirmasi` datetime NOT NULL,
  `tgl_verifikasi` datetime NOT NULL,
  `bukti` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pembayaran`
--

INSERT INTO `tbl_pembayaran` (`id_pembayaran`, `id_pengiriman`, `tgl_konfirmasi`, `tgl_verifikasi`, `bukti`) VALUES
(13, 12, '2021-08-03 00:00:00', '2021-08-03 00:00:00', 'Struk ATM Untuk Modus Tipu2.jpg'),
(14, 13, '2021-08-04 00:00:00', '2021-08-04 00:00:00', 'download1111.jpg'),
(15, 14, '2021-08-04 00:00:00', '2021-08-04 00:00:00', 'rompi.jpg'),
(16, 15, '2021-08-17 00:00:00', '2021-08-17 00:00:00', '5cc7ac5b09dfb (1).jpg'),
(17, 16, '2021-08-18 00:00:00', '2021-08-18 00:00:00', '5cc7ac5b09dfb (1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembelian`
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
-- Dumping data for table `tbl_pembelian`
--

INSERT INTO `tbl_pembelian` (`id_pembelian`, `id_pengiriman`, `id_produk`, `nama_produk`, `harga_produk`, `berat_produk`, `jumlah_produk`, `subberat_produk`, `subharga_produk`) VALUES
(7, 12, 18, 'Rok plisket panjang / rok plisket mayung - Cokelat, all size', 105000, 250, 1, 250, 105000),
(8, 13, 17, 'Baju Atasan Tunik Bahan Tebal Muslimah', 86000, 250, 1, 250, 86000),
(9, 14, 14, 'Viona Baju Atasan Muslimah', 119000, 250, 1, 250, 119000),
(10, 15, 18, 'Rok plisket panjang / rok plisket mayung - Cokelat, all size', 105000, 250, 1, 250, 105000),
(11, 16, 18, 'Rok plisket panjang / rok plisket mayung - Cokelat, all size', 105000, 250, 98, 24500, 10290000),
(13, 18, 18, 'Rok plisket panjang / rok plisket mayung - Cokelat, all size', 105000, 250, 10, 250, 0),
(14, 19, 17, 'Baju Atasan Tunik Bahan Tebal Muslimah', 86000, 250, 1, 250, 86000),
(15, 20, 14, 'Viona Baju Atasan Muslimah', 119000, 250, 10, 250, 0),
(16, 21, 14, 'Viona Baju Atasan Muslimah', 119000, 250, 10, 250, 0),
(17, 22, 17, 'Baju Atasan Tunik Bahan Tebal Muslimah', 86000, 250, 2, 500, 172000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengadaan_produk`
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
-- Table structure for table `tbl_pengadaan_produk_detail`
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
-- Table structure for table `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id_produk` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_produk` tinytext NOT NULL,
  `harga_produk` int(11) NOT NULL DEFAULT 0,
  `berat_produk` int(11) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `gambar_produk` text NOT NULL,
  `terjual` int(11) NOT NULL DEFAULT 0,
  `stok` int(11) NOT NULL DEFAULT 0,
  `id_user` int(11) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `id_kategori`, `nama_produk`, `harga_produk`, `berat_produk`, `deskripsi_produk`, `gambar_produk`, `terjual`, `stok`, `id_user`, `tanggal_update`) VALUES
(14, 21, 'Viona Baju Atasan Muslimah', 0, 250, '<p>Viona Baju Atasan Muslimah</p>\r\n', 'batch-upload_e9aca544-4cea-4158-b23d-267a20e33a11.jpg', 1, 989, 1, '2022-01-23 03:10:25'),
(15, 22, 'Baju Gamis Wanita Tania Set Setelan Celana Muslim Muslimah', 119000, 250, '<p>Baju Gamis Wanita Tania Set Setelan Celana Muslim Muslimah</p>\r\n', 'batch-upload_6c43f92a-fde6-408d-9cde-f292f49e21bf.jpg', 0, 100, 1, '2021-08-03 19:26:00'),
(16, 21, 'Baju Atasan Tunik Kombi Muslimah', 0, 250, '<p>Baju Atasan Tunik Kombi Muslimah</p>\r\n', 'batch-upload_079efee6-34e5-4f0f-a0e3-d4433263a808.jpg', 0, 0, 1, '2021-08-03 19:29:00'),
(17, 21, 'Baju Atasan Tunik Bahan Tebal Muslimah', 86000, 250, '<p>Baju Atasan Tunik Bahan Tebal Muslimah</p>\r\n', 'batch-upload_47621dad-0b56-46e9-8e96-f3dd0cc47137.jpg', 1, 54, 1, '2021-08-03 22:11:45'),
(18, 20, 'Rok plisket panjang / rok plisket mayung - Cokelat, all size', 105000, 250, '<h3>Rok plisket panjang / rok plisket mayung - Cokelat, all size</h3>\r\n', '79832d9f-8a0f-4f1b-8012-f40fdfa3db18.jpg', 100, 0, 1, '2021-08-18 01:01:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promo`
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
-- Dumping data for table `tbl_promo`
--

INSERT INTO `tbl_promo` (`id_promo`, `kode_promo`, `tgl_promo`, `diskon`, `foto_promo`, `keterangan`) VALUES
(3, '10hawa', '2021-08-04', 15, 'promo.jpg', 'Promo 15%');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_return`
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
-- Dumping data for table `tbl_return`
--

INSERT INTO `tbl_return` (`id_retur`, `id_pengiriman`, `alasan`, `bukti`, `jenis_retur`, `status`) VALUES
(5, 9, 'Barang Rusak', 'promo.jpg', 'Tukar Barang', 'Ditolak'),
(18, 10, 'Sobek', 'promo.jpg', 'Tukar Barang', 'Disetujui'),
(19, 12, 'Barang cacat dan/atau rusak saat diterima;', 'batch-upload_079efee6-34e5-4f0f-a0e3-d4433263a808.jpg', 'Tukar Barang', 'Pending'),
(21, 13, 'Ukuran yang di kirimkan tidak sesuai dengan yg saya mau, jdi tolong untuk di tukarkan, Terimakasih.', 'rompi.jpg', 'Tukar Barang', 'Disetujui'),
(22, 14, 'Barang yang di kirimkan tidak sesuai ukuran nya, Mohon untuk di tukarkan dengan ukuran sesuai pesanan.', 'rompi.jpg', 'Tukar Barang', 'Disetujui'),
(23, 14, 'Barang Cacat stelah diterima', 'rompi.jpg', 'Tukar Barang', 'Ditolak'),
(24, 14, 'Barang Cacat', 'rompi.jpg', 'Tukar Barang', 'Ditolak'),
(25, 15, 'Rusak', '5cc7ac5b09dfb (1).jpg', 'Tukar Barang', 'Disetujui');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `telepon_supplier` varchar(15) NOT NULL,
  `alamat_supplier` text NOT NULL,
  `keterangan` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`id_supplier`, `nama_supplier`, `telepon_supplier`, `alamat_supplier`, `keterangan`, `id_user`, `tanggal_update`) VALUES
(1, 'PT. Clothes Production', '08981189598', 'Bandung', 'Supplier Baju', 1, '2021-07-12 09:37:13'),
(3, 'PT. Bandung Procution', '082155588822', 'Bandung', 'Supplier Baju Anak', 1, '2021-07-12 09:39:43'),
(4, 'Ocik Stock', '0821111111778', 'Jakarta', 'Supplier Dress', 1, '2021-07-12 09:41:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimoni`
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
-- Dumping data for table `tbl_testimoni`
--

INSERT INTO `tbl_testimoni` (`id_testimoni`, `id_pengiriman`, `id_pelanggan`, `testimoni`, `gambar`, `tanggal_ulasan`) VALUES
(1, 1, 1, 'Keren Banget!', '', '0000-00-00 00:00:00'),
(2, 2, 1, 'Barangnya bagus banget!', '', '0000-00-00 00:00:00'),
(4, 3, 1, 'asdasdasd', 'screencapture-localhost-hawamini-2021-07-12-14_54_39.png', '0000-00-00 00:00:00'),
(5, 5, 3, '', '', '0000-00-00 00:00:00'),
(6, 6, 3, '', '', '0000-00-00 00:00:00'),
(7, 7, 3, 'Barang nya bagus!!!', '', '0000-00-00 00:00:00'),
(8, 8, 3, '', '', '0000-00-00 00:00:00'),
(9, 14, 5, 'Recommended', '5cc7ac5b09dfb (1).jpg', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
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
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama`, `username`, `password`, `telepon`, `jk`, `foto`, `alamat`, `level`, `tanggal_update`) VALUES
(1, 'Ahmad Alwi', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '0812345689', 'Laki-Laki', 'DSC_0408.JPG', 'Banjarbaru', 'Admin', '2021-08-03 23:03:30'),
(2, 'Aris Abdul Ajis', 'owner', '579233b2c479241523cba5e3af55d0f50f2d6414', '08213456879', 'Laki-Laki', '', 'Banjarmasin', 'Owner', '2022-01-09 00:31:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`id_bank`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_data_pengiriman`
--
ALTER TABLE `tbl_data_pengiriman`
  ADD PRIMARY KEY (`id_pengiriman`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  ADD PRIMARY KEY (`id_gambar`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  ADD PRIMARY KEY (`id_instansi`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notifikasi`
--
ALTER TABLE `tbl_notifikasi`
  ADD PRIMARY KEY (`id_notifikasi`),
  ADD KEY `id_pengiriman` (`id_pengiriman`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tbl_pembayaran`
--
ALTER TABLE `tbl_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_pengiriman` (`id_pengiriman`);

--
-- Indexes for table `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `id_pengiriman` (`id_pengiriman`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `tbl_pengadaan_produk`
--
ALTER TABLE `tbl_pengadaan_produk`
  ADD PRIMARY KEY (`id_pengadaan`);

--
-- Indexes for table `tbl_pengadaan_produk_detail`
--
ALTER TABLE `tbl_pengadaan_produk_detail`
  ADD PRIMARY KEY (`id_pengadaan_detail`),
  ADD KEY `id_pengadaan` (`id_pengadaan`);

--
-- Indexes for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tbl_promo`
--
ALTER TABLE `tbl_promo`
  ADD PRIMARY KEY (`id_promo`);

--
-- Indexes for table `tbl_return`
--
ALTER TABLE `tbl_return`
  ADD PRIMARY KEY (`id_retur`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`id_supplier`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`id_testimoni`),
  ADD KEY `id_pengiriman` (`id_pengiriman`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_data_pengiriman`
--
ALTER TABLE `tbl_data_pengiriman`
  MODIFY `id_pengiriman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  MODIFY `id_instansi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_notifikasi`
--
ALTER TABLE `tbl_notifikasi`
  MODIFY `id_notifikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_pembayaran`
--
ALTER TABLE `tbl_pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_pengadaan_produk`
--
ALTER TABLE `tbl_pengadaan_produk`
  MODIFY `id_pengadaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_pengadaan_produk_detail`
--
ALTER TABLE `tbl_pengadaan_produk_detail`
  MODIFY `id_pengadaan_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_promo`
--
ALTER TABLE `tbl_promo`
  MODIFY `id_promo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_return`
--
ALTER TABLE `tbl_return`
  MODIFY `id_retur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `id_testimoni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
