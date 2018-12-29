-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Des 2018 pada 19.03
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `id_configarasi_company`
--

CREATE TABLE `id_configarasi_company` (
  `configurasi_id` int(11) NOT NULL,
  `configurasi_idx` varchar(100) NOT NULL,
  `nama_web` varchar(100) NOT NULL,
  `tagline` varchar(255) NOT NULL,
  `email_company` varchar(100) NOT NULL,
  `website_url` varchar(255) NOT NULL,
  `keywords_company` varchar(255) NOT NULL,
  `meta_text` varchar(255) NOT NULL,
  `telepon_company` varchar(20) NOT NULL,
  `alamat_company` varchar(255) NOT NULL,
  `facebook_url` varchar(150) NOT NULL,
  `instagram_url` varchar(150) NOT NULL,
  `description_company` text NOT NULL,
  `logo_company` varchar(25) NOT NULL,
  `icon_company` varchar(25) NOT NULL,
  `creationAt` datetime NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(1, '::1', 'assa', 1545545991);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_blog_berita`
--

CREATE TABLE `tb_blog_berita` (
  `berita_id` int(11) NOT NULL,
  `berita_idx` varchar(100) NOT NULL,
  `jenis_berita` varchar(100) NOT NULL,
  `judul_berita` varchar(100) NOT NULL,
  `slug_berita` varchar(100) NOT NULL,
  `keywords_berita` varchar(255) NOT NULL,
  `status_berita` tinyint(1) NOT NULL,
  `isi_berita` text NOT NULL,
  `gambar_berita` varchar(20) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gambar`
--

CREATE TABLE `tb_gambar` (
  `gambar_id` int(11) NOT NULL,
  `gambar_idx` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `judul_gambar` varchar(25) NOT NULL,
  `gambar` varchar(32) NOT NULL,
  `creationAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_header_transaksi`
--

CREATE TABLE `tb_header_transaksi` (
  `header_transaksi_id` int(11) NOT NULL,
  `header_transaksi_idx` varchar(100) NOT NULL,
  `kode_transaksi` varchar(25) NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL,
  `jumlah_transaksi` int(11) NOT NULL,
  `status_bayar` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `rekening_pembayaran` varchar(25) NOT NULL,
  `rekening_pelanggan` int(11) NOT NULL,
  `bukti_bayar` varchar(64) NOT NULL,
  `tanggal_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_idx` varchar(100) NOT NULL,
  `slug_kategori` varchar(100) NOT NULL,
  `nama_kategori` varchar(64) NOT NULL,
  `urutan_kategori` int(11) NOT NULL,
  `creationAt` datetime NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `pelanggan_id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status_pelanggan` tinyint(1) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(255) NOT NULL,
  `telepon_pelanggan` varchar(25) NOT NULL,
  `alamat_pelanggan` varchar(255) NOT NULL,
  `tanggal_daftar` datetime NOT NULL,
  `tanggal_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_produk`
--

CREATE TABLE `tb_produk` (
  `product_id` int(11) NOT NULL,
  `product_idx` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `nama_product` varchar(100) NOT NULL,
  `slug_product` varchar(100) NOT NULL,
  `keterangan_product` text NOT NULL,
  `keywords_product` varchar(100) NOT NULL,
  `harga_product` int(11) NOT NULL,
  `stock_product` int(11) NOT NULL,
  `gambar_product` varchar(64) NOT NULL,
  `berat_product` int(11) NOT NULL,
  `ukuran_product` varchar(25) NOT NULL,
  `status_product` tinyint(1) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_idx` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `kode_transaksi` varchar(25) NOT NULL,
  `product_id` int(11) NOT NULL,
  `harga_product` int(11) NOT NULL,
  `jumlah_product` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL,
  `tanggal_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$SqAwz6Dih9aY0zSlKLoKFOGvIx0fqNNUBIgEMGvWt4bSG9OaITpzC', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1545558640, 1, 'Admin', 'istrator', 'ADMIN', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `id_configarasi_company`
--
ALTER TABLE `id_configarasi_company`
  ADD PRIMARY KEY (`configurasi_id`),
  ADD KEY `configurasi_idx` (`configurasi_idx`);

--
-- Indeks untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_blog_berita`
--
ALTER TABLE `tb_blog_berita`
  ADD PRIMARY KEY (`berita_id`),
  ADD KEY `berita_idx` (`berita_idx`);

--
-- Indeks untuk tabel `tb_gambar`
--
ALTER TABLE `tb_gambar`
  ADD PRIMARY KEY (`gambar_id`),
  ADD KEY `gambar_idx` (`gambar_idx`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `judul_gambar` (`judul_gambar`);

--
-- Indeks untuk tabel `tb_header_transaksi`
--
ALTER TABLE `tb_header_transaksi`
  ADD PRIMARY KEY (`header_transaksi_id`),
  ADD KEY `header_transaksi_idx` (`header_transaksi_idx`),
  ADD KEY `kode_transaksi` (`kode_transaksi`),
  ADD KEY `pelanggan_id` (`pelanggan_id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `tanggal_transaksi` (`tanggal_transaksi`),
  ADD KEY `status_bayar` (`status_bayar`);

--
-- Indeks untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`kategori_id`),
  ADD KEY `kategori_idx` (`kategori_idx`),
  ADD KEY `slug_kategori` (`slug_kategori`);

--
-- Indeks untuk tabel `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`pelanggan_id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `keywords_product` (`keywords_product`),
  ADD KEY `slug_product` (`slug_product`),
  ADD KEY `kategori_id` (`kategori_id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `product_idx` (`product_idx`),
  ADD KEY `tanggal_post` (`tanggal_post`);

--
-- Indeks untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`transaksi_id`),
  ADD UNIQUE KEY `kode_transaksi` (`kode_transaksi`),
  ADD KEY `transaksi_idx` (`transaksi_idx`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `pelanggan_id` (`pelanggan_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indeks untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `id_configarasi_company`
--
ALTER TABLE `id_configarasi_company`
  MODIFY `configurasi_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_blog_berita`
--
ALTER TABLE `tb_blog_berita`
  MODIFY `berita_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_gambar`
--
ALTER TABLE `tb_gambar`
  MODIFY `gambar_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  MODIFY `pelanggan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
