-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jul 2020 pada 16.53
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawab`
--

CREATE TABLE `jawab` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pertanyaan_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jawab`
--

INSERT INTO `jawab` (`id`, `isi`, `created_at`, `updated_at`, `pertanyaan_id`) VALUES
(10, 'PPKI', '2020-07-03 14:44:53', '2020-07-03 14:44:53', 1),
(11, 'BPUPKI', '2020-07-03 14:45:04', '2020-07-03 14:45:04', 1),
(12, 'MPRS', '2020-07-03 14:45:13', '2020-07-03 14:45:13', 1),
(13, 'MPR', '2020-07-03 14:45:25', '2020-07-03 14:45:25', 1),
(14, 'Zona Ekonomi Eksklusif', '2020-07-03 14:47:06', '2020-07-03 14:47:06', 2),
(15, 'Batas Landas Kontinen', '2020-07-03 14:47:35', '2020-07-03 14:47:35', 2),
(16, 'Batas Landas Benua', '2020-07-03 14:48:08', '2020-07-03 14:48:08', 2),
(17, 'Lautan Teritorial', '2020-07-03 14:48:34', '2020-07-03 14:48:34', 2),
(18, 'Sulawesi Utara', '2020-07-03 14:49:43', '2020-07-03 14:49:43', 3),
(19, 'Sulawesi Tenggara', '2020-07-03 14:49:54', '2020-07-03 14:49:54', 3),
(20, 'Sulawesi Tengah', '2020-07-03 14:50:01', '2020-07-03 14:50:01', 3),
(21, 'Sulawesi Selatan', '2020-07-03 14:50:09', '2020-07-03 14:50:09', 3),
(22, 'London', '2020-07-03 14:50:41', '2020-07-03 14:50:41', 4),
(23, 'Greenwich', '2020-07-03 14:50:52', '2020-07-03 14:50:52', 4),
(24, 'Manchester', '2020-07-03 14:51:00', '2020-07-03 14:51:00', 4),
(25, 'Liverpool', '2020-07-03 14:51:07', '2020-07-03 14:51:07', 4),
(26, 'Tionghoa', '2020-07-03 14:51:29', '2020-07-03 14:51:29', 11),
(27, 'Indian', '2020-07-03 14:51:37', '2020-07-03 14:51:37', 11),
(28, 'Aborigin', '2020-07-03 14:51:45', '2020-07-03 14:51:45', 11),
(29, 'Negro', '2020-07-03 14:51:53', '2020-07-03 14:51:53', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_02_132523_create_tanya_table', 1),
(5, '2020_07_02_140105_create_jawab_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanya`
--

CREATE TABLE `tanya` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tanya`
--

INSERT INTO `tanya` (`id`, `judul`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'Sejarah', 'Provinsi pertama di Indonesia terbentuk berdasarkan hasil sidang', '2020-07-03 03:26:28', '2020-07-03 14:31:54'),
(2, 'Geografi', 'Wilayah lautan selebar 12 mil laut yang diukur berdasarkan garis lurus yang ditarik dari garis dasr ke arah laut bebas pada saat air surut disebut', '2020-07-03 03:35:03', '2020-07-03 14:32:16'),
(3, 'Geografi', 'Provinsi Gorontalo merupakan pemekaran dari wilayah Provinsi', '2020-07-03 03:46:48', '2020-07-03 14:32:39'),
(4, 'Sejarah', 'Kota di Inggris yang menjadi batas pergantian tanggal internasional adalah', '2020-07-03 03:59:12', '2020-07-03 14:33:06'),
(11, 'Sosial', 'Penduduk asli Amerika adalah suku', '2020-07-03 14:37:20', '2020-07-03 14:37:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jawab`
--
ALTER TABLE `jawab`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jawab_pertanyaan_id_foreign` (`pertanyaan_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `tanya`
--
ALTER TABLE `tanya`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jawab`
--
ALTER TABLE `jawab`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tanya`
--
ALTER TABLE `tanya`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jawab`
--
ALTER TABLE `jawab`
  ADD CONSTRAINT `jawab_pertanyaan_id_foreign` FOREIGN KEY (`pertanyaan_id`) REFERENCES `tanya` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
