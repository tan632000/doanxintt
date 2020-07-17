-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 09, 2020 lúc 05:45 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doanxinviec`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) CHARACTER SET utf8 NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(2, 'Bánh mì ngon', '<ol>\r\n	<li>Ngon</li>\r\n	<li>Bo</li>\r\n	<li>Re</li>\r\n</ol>', 1, '2020-06-12 20:59:16', '2020-06-28 13:47:08'),
(3, 'Đồ uống có ga', '<ul>\r\n	<li>Pepsi</li>\r\n	<li>Coca</li>\r\n	<li>Fanta</li>\r\n	<li>Sprite</li>\r\n	<li>Anything</li>\r\n</ul>', 1, '2020-06-12 21:10:53', '2020-06-14 18:44:18'),
(4, 'Các loại giày', '<p><strong>C&aacute;c loại gi&agrave;y được b&aacute;n tại <em>đ&acirc;y</em></strong></p>', 1, '2020-06-13 22:09:39', '2020-06-14 18:43:36'),
(5, 'Các loại hạt tiêu ngon', '<p>Hạt ti&ecirc;u cay ngon đủ loại tr&ecirc;n Việt Nam</p>', 0, '2020-06-13 22:10:30', '2020-06-28 13:49:54'),
(6, 'Gái xinh hen', '<p>hihi</p>', 1, '2020-06-14 01:47:56', '2020-06-14 01:47:56'),
(7, 'Sách', '<p><strong>All kinds of books stored </strong><em>here</em></p>', 1, '2020-06-14 18:26:19', '2020-06-14 18:26:19'),
(8, 'Quần', '<p><strong><em>Quần đủ loại cho a/c e</em></strong></p>', 1, '2020-06-14 18:27:02', '2020-06-14 18:27:02'),
(9, 'Japanese music love', 'Ahihi hôho', 1, '2020-06-28 08:52:49', '2020-06-28 13:51:48'),
(10, 'Thit ga', 'Ngon khung khiep', 1, '2020-06-28 08:58:42', '2020-06-28 08:58:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) CHARACTER SET utf8 NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8 NOT NULL,
  `email_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email_address`, `phone_number`, `password`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Hoang', 'Tan', 'tanhaudue@gmail.com', '0971416727', '$2y$10$UuSQZ.2tFQh/PFzTLQMU/Od5V2RYWWizSLz0QS06Wm07KZkpqsLsy', 'Đông Giao, Lương Điền, Cẩm Giàng, Hải Dương', '2020-06-15 20:52:49', '2020-06-15 20:52:49'),
(2, 'Hoàng', 'Trang', 'hauduethantoc@gmail.com', '0971416727', '$2y$10$AI14ryoHATlaqOAKqcoZT.eAH1pqD50AcsvK00uH6051K6ltCgwb.', 'Đông Giao, Lương Điền, Cẩm Giàng, Hải Dương', '2020-06-15 21:13:34', '2020-06-15 21:13:34'),
(3, 'Hoàng', 'Trang', 'hauduethantoc@gmail.com', '0971416727', '$2y$10$rF4rx2IlQZ2ZGilXoBDd7O6j65EYGCO7pcWhhQRTnhT4gc3UlmEcG', 'Đông Giao, Lương Điền, Cẩm Giàng, Hải Dương', '2020-06-15 21:16:57', '2020-06-15 21:16:57'),
(4, 'Hoang', 'Tan', 'hauduethantoc@gmail.com', '0971416727', '$2y$10$1zWSsgRYzqA.9bCUZja.9OGiuQJP0a3n0fa7ylDhQ45O0HUB.8BsW', 'Hải Dương', '2020-06-15 21:33:18', '2020-06-15 21:33:18'),
(5, 'Hoang', 'Tan', 'hauduethantoc@gmail.com', '0971416727', '$2y$10$EyGgDWhfnEijHzFJdtNk..vEA2eShKN3e04sWG9fDDWehYMpSnKGq', 'Hải Dương', '2020-06-15 21:37:02', '2020-06-15 21:37:02'),
(6, 'Hoang', 'Tan', 'hauduethantoc@gmail.com', '0971416727', '$2y$10$q/ubNcEXWKSMOqrnByrANuJT9nqBxsl0FgjAPnH5H7yO9AUG1zpFq', 'Hải Dương', '2020-06-15 21:43:09', '2020-06-15 21:43:09'),
(7, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$JMm8M0.DiTHMFGjXsJCEOe6WY.mXxHsVWOnHQlumyrciTfxP9Vfwm', 'Hải Dương', '2020-06-15 21:45:21', '2020-06-15 21:45:21'),
(8, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$icSYe3qWHDdRFfjJyMKF2OMalBKRwF71CHAOsVn4x.0ARZb8p5Ery', 'HD', '2020-06-15 21:49:02', '2020-06-15 21:49:02'),
(9, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$JYckEjz6qVJV2CCYpfi.KumYSw2rRByR8771NKrp6fY.O/g20nTdW', 'HD', '2020-06-15 21:51:15', '2020-06-15 21:51:15'),
(10, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$xo49oEPywLdw3FvG2jFqpOx7npRaQ9ipXbI9Tp6oU8tIQsrY16682', 'HD', '2020-06-15 22:03:57', '2020-06-15 22:03:57'),
(11, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$kV2ugMlvNxXnPHEYQeRxFeCNAZ7Fld3qR6lO0Z5GWS9BFl6nMI/7m', 'HD', '2020-06-15 22:07:14', '2020-06-15 22:07:14'),
(12, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$wNzptIb/ranG5gqVi6fEKuFtFfKKL1spd3m5nDeCWmZyAR0ubtUBK', 'HD', '2020-06-15 22:08:04', '2020-06-15 22:08:04'),
(13, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$vciQ9J.Btjc2vRA3xNyP0uuxutrpVp6ciHd/X4zKUohtRUbU7T0ve', 'HD', '2020-06-15 22:09:13', '2020-06-15 22:09:13'),
(14, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$WKRyzxy1fJVjeORp6yaWc.c4Cj6bm5ZoSm7OOsL4oTO7okV.bYGdS', 'HD', '2020-06-15 22:16:31', '2020-06-15 22:16:31'),
(15, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$6rSfWtARxB5ImPCEOrfyieSx5nD8AUurTV2R6ghda8ppI7eGWYopm', 'HD', '2020-06-15 22:16:48', '2020-06-15 22:16:48'),
(16, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$kOxnll/.ZytV2P1uefHljuW4.N/T7DTI.gk95VQyaMyu3l3EdzYgC', 'HD', '2020-06-15 22:17:15', '2020-06-15 22:17:15'),
(17, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$E9U1kvwDavGSo17j8RevEukjScooVqntslt.YCdNGzzi.7WMHIlFG', 'HD', '2020-06-15 22:18:29', '2020-06-15 22:18:29'),
(18, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$k0ZP7FrukRxOMQ5oN7eSNuijjd5ePclcurscya7f8qEdNeh/Flq3m', 'HD', '2020-06-15 22:18:39', '2020-06-15 22:18:39'),
(19, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$POVklvZt26/XYhu2ZJDETuDNVQ0k6BZhILnvwaWG/gRC3yJudxFoG', 'HD', '2020-06-15 22:19:51', '2020-06-15 22:19:51'),
(20, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$0Hox2/V0hvKB1XCAJx2iX.1TJ3L/Dn9.6J2jyTIdrbHUOqxTIyJl2', 'HD', '2020-06-15 22:22:09', '2020-06-15 22:22:09'),
(21, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$O0CFvzBEvOD1OmRQOyKEbePIV0kTipoVdZm5x4B29gVVDh62Auogy', 'HD', '2020-06-15 22:32:33', '2020-06-15 22:32:33'),
(22, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$.2uXbKOd9YIimvgdDkjFZOFYY7.4uq/v8F3vZHrqxkYJsWzMaSmL6', 'HD', '2020-06-15 22:38:13', '2020-06-15 22:38:13'),
(23, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$cQcyfhX1dl6GoTcsW2oCNeBIOFVLHFE69miO9ZpcBfHPvrFGtWxM.', 'HD', '2020-06-15 22:38:51', '2020-06-15 22:38:51'),
(24, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$X.t8s3M0RcsiV3SbKE6TMu3ypok4icXFMu/nA75k/QxEQi.6R1pDS', 'HD', '2020-06-15 22:39:09', '2020-06-15 22:39:09'),
(25, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$auBDEu3UtV203hTiX3NeJu0EPM7JwtSBBqJGCEQxeDE.NjLA1Gp.K', 'HD', '2020-06-15 22:48:33', '2020-06-15 22:48:33'),
(26, 'Hoang', 'Larra', 'hvtan632000@gmail.com', '0971416727', '$2y$10$ryrtDEbfpnJE12wXry2c3OHVkGjTCLCxIZj/lD3lsYACzltTTCUJa', 'HD', '2020-06-15 22:51:59', '2020-06-15 22:51:59'),
(27, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$LoNtR56Zc4XPm57lTG5LcuzSUn0sQlxfBlVkmEYG3J1zFTgnr3.RC', 'HD', '2020-06-15 22:52:35', '2020-06-15 22:52:35'),
(28, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$fp.WD66yjtMWQJ0R7gKjTeKwRNibgbaxtnxBrPK.3VAtnG8OPSAL.', 'HD', '2020-06-16 07:23:50', '2020-06-16 07:23:50'),
(29, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$ptfW8EoFfOTb0P2inz8siOiwE07BNNm/91k5MYHLRusrvBwMnrpyS', 'Hải Dương', '2020-06-16 07:34:32', '2020-06-16 07:34:32'),
(30, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$uOqZXbBe5XfOT0fxIvTlXuFyBaHTQAY1asM78NG5aOa8OdcFpFp0a', 'Hải Dương', '2020-06-16 07:35:50', '2020-06-16 07:35:50'),
(31, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$1CwNBiEs3KfVZ3fqCwMyUumIl.02P0/xlkItjK/VTBIt31Qy2VuPa', 'Hải Dương', '2020-06-16 07:38:19', '2020-06-16 07:38:19'),
(32, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$SJsQmCrvY2Nzt34c0B.kbOPSKJiO441s.EA6NDo0kNcsyzwSxbS4W', 'Hải Dương', '2020-06-16 07:38:55', '2020-06-16 07:38:55'),
(33, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$nFUtXeVq8fzeBhztsGtNou38GsClv3PmNOPkmJ.6YilHrlVjOruR6', 'Hai Duong', '2020-06-16 07:41:35', '2020-06-16 07:41:35'),
(34, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$CWi/Lefsdd5XvwZ4.EDeU.994jwlM8b9bbUkMQ5TFy7rx9Mj298iq', 'Hai Duong', '2020-06-16 07:42:01', '2020-06-16 07:42:01'),
(35, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$Ya2xene7ckl9l7icRyb3WOz0uC2683Sf36FJ/aafwzizi2CX.ebXO', 'Hai Duong', '2020-06-16 07:42:56', '2020-06-16 07:42:56'),
(36, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$ho5CE/.nb3mBKfsoSqFPZ.6OXz7qBM/iojqUcF7nGRUFl3Dlw7oWC', 'Hai Duong', '2020-06-16 07:45:24', '2020-06-16 07:45:24'),
(37, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$sSxa.do2krkphhFhTNxIs.GlAN56a14/NHq.mrp45d/trBUurAhmC', 'Hai Duong', '2020-06-16 07:46:32', '2020-06-16 07:46:32'),
(38, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$aVMSJcyJYxXB6B5/IruIVOtMQTqEFnkRpaKgEZuD.8U4T/U0XX7Mi', 'Hai Duong', '2020-06-16 07:46:44', '2020-06-16 07:46:44'),
(39, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$/zhx2MGtII8pzqLN.qZ1bODz5BhvRbI4T8oG6sCznONCNQktvTkwq', 'Hai Duong', '2020-06-16 07:46:53', '2020-06-16 07:46:53'),
(40, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$/yfhn5dlk4rBt56W/bL6/e14CQG1qR6DDWodA8bI586cDnzqx3Oea', 'Hai Duong', '2020-06-16 07:47:05', '2020-06-16 07:47:05'),
(41, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$J/UuClxbMlA1o9..TsWA1.5PnL2fS.6mGE2HHBvni/gIxnGekl5CO', 'Hai Duong', '2020-06-16 07:50:58', '2020-06-16 07:50:58'),
(42, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$/kuOo1.87lBHO/.bHKwlc.55XFMhkmG/dSKZFxUeZbRdnqUGJ9TFq', 'HA', '2020-06-16 07:54:07', '2020-06-16 07:54:07'),
(43, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$1PJTw6U5Jt9.hAOv4S8P5emJk9Kax.eCCyUt/HZb.IH7LmZ.GGMtK', 'HA', '2020-06-16 08:02:34', '2020-06-16 08:02:34'),
(44, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$NzDf78eIGD5KOlYWWbXoxeCalfOUyWl/EFkeEF.WwdXAEuDlJ6yE.', 'HA', '2020-06-16 08:03:08', '2020-06-16 08:03:08'),
(45, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$Lz0b/AIDkZ.SIrvGjohkN.ziEIWF9az8fcEfm11PpjyRpXggTUcim', 'HD', '2020-06-16 14:12:51', '2020-06-16 14:12:51'),
(46, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$/mRMrw5eDvRNCV6fLF5WtuxsGa6kHMU7Jt0kWM6HX3I.CtCmB1Yvi', 'Hải Dương', '2020-06-17 01:33:35', '2020-06-17 01:33:35'),
(47, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$QCQW6hwcN2BnHGceF1h10ue/J5dWr26JStQSITLXx4CnDbIRjK.8a', 'Hà Nội', '2020-06-17 01:57:43', '2020-06-17 01:57:43'),
(48, 'Trần', 'Loan', 'hvtan632000@gmail.com', '0338441269', '$2y$10$STJKU2uUgnpw4N40CX6TBOTPGaS.v91pkl5XaiTOwShGRKwVNYOxK', 'Hải Dương', '2020-06-17 02:44:25', '2020-06-17 02:44:25'),
(49, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$mINPSn4j7WsTOlwNzqC5PeHsJWkL4OIjIk/wf6x77C262NtxHM4Fa', 'Hai Duong', '2020-06-17 08:25:44', '2020-06-17 08:25:44'),
(50, 'Hoang', 'Tan', 'hvtan632000@gmail.com', '0971416727', '$2y$10$BR8MGly7IXB8cJbXRREJb.kv5HuLXy4Pg.uMMR5GMkKLVqXq4FZIy', 'Hung Yen', '2020-06-17 08:29:31', '2020-06-17 08:29:31'),
(51, 'Tom', 'Cruise', 'hvtan632000@gmail.com', '012365478', '$2y$10$Tveh.RWp/YIG2iVWV7bFLeYMUFor5B8mFVPfcM3Zu0jDNEnjnfBnW', 'Los Angeles', '2020-06-17 08:35:02', '2020-06-17 08:35:02'),
(52, 'Cristiano', 'Ronaldo', 'hauduethantoc@gmail.com', '0121354566', '$2y$10$FY76qWLGeA4oex5QDfhL1.IcNh60T2SvV.cf8BYhh.1yNAdapvcV.', 'Portugal', '2020-06-17 08:37:53', '2020-06-17 08:37:53'),
(53, 'Cristiano', 'Ronaldo', 'hvtan632000@gmail.com', '0971416727', '$2y$10$Rn01D2NPO85hv/gLtgHaaetDx5UwI4PbOy4Tv2NnZcuScDtruTkiK', 'VietNam', '2020-06-17 08:39:07', '2020-06-17 08:39:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_06_13_033030_create_categories_table', 2),
(4, '2020_06_13_033138_create_customers_table', 2),
(5, '2020_06_13_033158_create_multiple_images_table', 2),
(6, '2020_06_13_033210_create_orders_table', 2),
(7, '2020_06_13_033226_create_order_details_table', 2),
(8, '2020_06_13_033239_create_products_table', 2),
(9, '2020_06_13_033255_create_shippings_table', 2),
(10, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(11, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(12, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(13, '2016_06_01_000004_create_oauth_clients_table', 3),
(14, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `multiple_images`
--

CREATE TABLE `multiple_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('01530ad9791b5a691f4f1424daf26fbd86da620bb4553576a0b5981a5f08ac44161eec9dda1594db', 2, 4, NULL, '[]', 0, '2020-06-26 09:44:16', '2020-06-26 09:44:16', '2021-06-26 16:44:16'),
('0499678c793b4eab48aabf75962703a1a0efadf74f52941d5b924432ad401fe83b008690163df3db', 5, 4, NULL, '[]', 0, '2020-06-28 14:13:09', '2020-06-28 14:13:09', '2021-06-28 21:13:09'),
('06d31ebcedb57d7740df5305b2e542e6d097d61e932448c33e88048c9ff0d4b51c2dacfae536af56', 4, 4, NULL, '[]', 0, '2020-06-28 14:14:09', '2020-06-28 14:14:09', '2021-06-28 21:14:09'),
('09130a9dd850e9a7931185210c91640741491cf6c7b582205d77a7a407ccfabdbcc0e2ccbac7bcaf', 1, 4, NULL, '[]', 0, '2020-06-26 08:01:45', '2020-06-26 08:01:45', '2021-06-26 15:01:45'),
('0a52c7066f2fb362c9156adf5ef04f17a5ff67488f80ceda26d5b0fe233a5512446c8d10822514c4', 5, 4, NULL, '[]', 0, '2020-06-28 07:32:59', '2020-06-28 07:32:59', '2021-06-28 14:32:59'),
('1feb37efeb3bc90ce2bf02f53157f045dd180a48c25eff33672ddf7f54212e92c7d6a577024ff1c1', 4, 4, NULL, '[]', 0, '2020-06-28 01:16:32', '2020-06-28 01:16:32', '2021-06-28 08:16:32'),
('40024641141df0602eee2ab75b1a5e29d23ca6eed85f23112147446c5f321e9f58885cadb615df9c', 1, 4, NULL, '[]', 0, '2020-06-26 07:42:02', '2020-06-26 07:42:02', '2021-06-26 14:42:02'),
('43d0714ab037955c25ac67dfc5d02a7c24912cd8946a635d78d2507275221cdaf8e957ba018a8888', 5, 4, NULL, '[]', 0, '2020-06-28 07:38:15', '2020-06-28 07:38:15', '2021-06-28 14:38:15'),
('4623ca3d0067e4d9233be386b350901df901afde505a90fac5781e4b2671edde0c576d361ed6c75c', 5, 4, NULL, '[]', 0, '2020-06-28 08:29:35', '2020-06-28 08:29:35', '2021-06-28 15:29:35'),
('5183e3d4f397e02821834d5b9dfb46c1efd8a650ce8fe0e74eedc98d6508cc8b38cf34c7f8b1e159', 5, 4, NULL, '[]', 0, '2020-06-28 06:55:09', '2020-06-28 06:55:09', '2021-06-28 13:55:09'),
('60d7c52952a3ba3393233a96a72ad2d94eb00c75e6e7c9e0286c475c4c01226de8e8459a640b6188', 5, 4, NULL, '[]', 0, '2020-06-28 07:39:29', '2020-06-28 07:39:29', '2021-06-28 14:39:29'),
('6a7af2951611dcc26540180d08b56274f2a321786cdb93f66850763bcf66d6747b87032f9db065f3', 1, 4, NULL, '[]', 0, '2020-07-01 06:59:16', '2020-07-01 06:59:16', '2021-07-01 13:59:16'),
('6a8a4e80f762f1a9bd76303d0206c210f898c03d29f0d407401c647e1ac2eb2fb9dd17c0d2f0b782', 8, 4, NULL, '[]', 0, '2020-06-28 07:23:21', '2020-06-28 07:23:21', '2021-06-28 14:23:21'),
('76f2e6b9cb4b10833ce47b2523e108481b3c0a3a76ff425a16338ecb51a230b767bb76b56e803273', 9, 4, NULL, '[]', 0, '2020-06-28 07:26:47', '2020-06-28 07:26:47', '2021-06-28 14:26:47'),
('7841d79c531bdbca47b75556bbcdfe9895331aceec586b10379ca0b893d71598291606385f7ad81a', 5, 4, NULL, '[]', 0, '2020-06-28 07:35:15', '2020-06-28 07:35:15', '2021-06-28 14:35:15'),
('802c692b519501ff28579e5f9ce2f3b293df4bbe03a44ad1518d2ea3197aa9d0fde506715ef653ad', 1, 4, NULL, '[]', 0, '2020-06-28 15:20:56', '2020-06-28 15:20:56', '2021-06-28 22:20:56'),
('810e06941c3de58eb129d0002da816650b7b3dc716613144718c5d407329b30b2cd06a13633f75e0', 1, 4, NULL, '[]', 0, '2020-06-26 09:37:37', '2020-06-26 09:37:37', '2021-06-26 16:37:37'),
('824def73e2b400cdf9bc5977322aa8005c6a3e98ee4e9d9b58f6820cd239f9d1b6b14dbcada86686', 1, 4, NULL, '[]', 0, '2020-06-29 08:39:30', '2020-06-29 08:39:30', '2021-06-29 15:39:30'),
('95e64f84ddbc8d7fcfdc4b4f3f96d1a174b717d04d818b22a7d40f56f9ee5a3fc8fb272ebea0da70', 10, 4, NULL, '[]', 0, '2020-06-28 14:11:14', '2020-06-28 14:11:14', '2021-06-28 21:11:14'),
('a4815250ae30929bb9030223e3831e64065caedfac1a5ba150b73dd48e8136c0c8222fdc8aacd5f6', 3, 4, NULL, '[]', 0, '2020-06-26 09:49:12', '2020-06-26 09:49:12', '2021-06-26 16:49:12'),
('b4565646047bcb9f8df269df3028983aa483caa8f3b5bba864b357b895c6daa35d0572d2a2b46fd9', 1, 4, NULL, '[]', 0, '2020-06-29 08:39:26', '2020-06-29 08:39:26', '2021-06-29 15:39:26'),
('c4ce00e0d8095ddc48c6d06d6afe5f52c2867fd148837ce5fd850c49f867f51f288b6d080459403c', 5, 4, NULL, '[]', 0, '2020-06-28 08:29:41', '2020-06-28 08:29:41', '2021-06-28 15:29:41'),
('c72c6d5f7462af70dfdf474d2f95db402f1c1d9ae94769d5b2e20e66d3bff19f5a2468fbb04f52fb', 5, 4, NULL, '[]', 0, '2020-06-28 14:16:35', '2020-06-28 14:16:35', '2021-06-28 21:16:35'),
('ca4bcfd3d7fe12f16b523796bff32d68f3d7d071670bcdda8882cae4875cb7ff16e36069b5372b9c', 5, 4, NULL, '[]', 0, '2020-06-28 14:14:38', '2020-06-28 14:14:38', '2021-06-28 21:14:38'),
('d2ceb73251a8f60f0f7e8f4047bca73d935831227d7ec34e86dca2ca6edb0478b0cba1110c307a9c', 5, 4, NULL, '[]', 0, '2020-06-28 07:37:32', '2020-06-28 07:37:32', '2021-06-28 14:37:32'),
('d8507f1653d7da8a59b4234ad0b3bbfb9466b278a066f144315fc04021a4e985e6aef3aaedea1632', 5, 4, NULL, '[]', 0, '2020-06-28 14:12:07', '2020-06-28 14:12:07', '2021-06-28 21:12:07'),
('d8f06adacc18e6314907198b25b9e99f029c46d0ffbbcc144c2e46d6f627643f95c0f18153ee5822', 6, 4, NULL, '[]', 0, '2020-06-28 07:06:04', '2020-06-28 07:06:04', '2021-06-28 14:06:04'),
('e209c23d0a9aaef139606d7c2a9496d4c08685eb232423d7659face3c2fcbd1d7ea3b6f1b11ebdfd', 3, 4, NULL, '[]', 0, '2020-06-26 10:20:20', '2020-06-26 10:20:20', '2021-06-26 17:20:20'),
('e85aa1707dcb3d94fd8211f748a722157800adf38b04030a4e72d68927186d355a23a4d17d9477aa', 3, 4, NULL, '[]', 0, '2020-06-26 10:23:47', '2020-06-26 10:23:47', '2021-06-26 17:23:47'),
('ea08b854dc81564f885369f1fe2f07ad878bc9d6b88a3bc6fa3ec9d626dbc7ae8cb6d349b7205858', 1, 4, NULL, '[]', 0, '2020-06-28 14:18:31', '2020-06-28 14:18:31', '2021-06-28 21:18:31'),
('ebb4f73e68ef950ae3c00ad01a07f29c45c5f9d8ee29603615f956828555d61f98b55ee60bf4367f', 5, 4, NULL, '[]', 0, '2020-06-28 07:36:46', '2020-06-28 07:36:46', '2021-06-28 14:36:46'),
('edd460485dafdc42364db6b1812910a7a77d44c51c97353b820789aad3c298bbe0b18240a71d47e9', 1, 4, NULL, '[]', 0, '2020-06-29 08:40:23', '2020-06-29 08:40:23', '2021-06-29 15:40:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'B5Kt62dzhiIlJtpTRD1kiUB362tVNJUq6CYS1GwU', 'http://localhost', 1, 0, 0, '2020-06-26 07:01:27', '2020-06-26 07:01:27'),
(2, NULL, 'Laravel Password Grant Client', '8oLC3gKwRpSCErNwgLH6IZGfDSKs3FaniJq8yezm', 'http://localhost', 0, 1, 0, '2020-06-26 07:01:28', '2020-06-26 07:01:28'),
(3, NULL, 'Laravel Personal Access Client', 'lNEMy9jjOK61So27n0Vu27DdfN8PMDxkwjRfSfIN', 'http://localhost', 1, 0, 0, '2020-06-26 07:37:49', '2020-06-26 07:37:49'),
(4, NULL, 'Laravel Password Grant Client', 'G9s1tXwAruFZ1KKxdbgrUF3JXsRYI9aPdzuSi3PN', 'http://localhost', 0, 1, 0, '2020-06-26 07:37:49', '2020-06-26 07:37:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-06-26 07:01:28', '2020-06-26 07:01:28'),
(2, 3, '2020-06-26 07:37:49', '2020-06-26 07:37:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('023453f7708c562b4b8d4c389a505c0e90f452a08c835d1a67e7c54ab1b42051e5303d9b4ec599e4', 'b4565646047bcb9f8df269df3028983aa483caa8f3b5bba864b357b895c6daa35d0572d2a2b46fd9', 0, '2021-06-29 15:39:26'),
('04141f7fb73685f42d70e43aacea27a81a6f29eddcb2268d45f054e3ab84f13d58de798837018a91', '40024641141df0602eee2ab75b1a5e29d23ca6eed85f23112147446c5f321e9f58885cadb615df9c', 0, '2021-06-26 14:42:02'),
('051751e3513e7e2dae80b3e6d19dd49ca33e93406f4e199110db5ff3235045b6496aef4c82d05fd7', '5183e3d4f397e02821834d5b9dfb46c1efd8a650ce8fe0e74eedc98d6508cc8b38cf34c7f8b1e159', 0, '2021-06-28 13:55:09'),
('085d4ac19593e8cef23913a342e246f0eca50f8f1b8bc64a7be207273c66053c0bd85ad2b9116b45', '802c692b519501ff28579e5f9ce2f3b293df4bbe03a44ad1518d2ea3197aa9d0fde506715ef653ad', 0, '2021-06-28 22:20:56'),
('0b8fa2ccac6c7303cb9b9946780038cda0aade9eb7d66d51a9f9e8084a330e022b6c2d5f0fab4bc9', '7841d79c531bdbca47b75556bbcdfe9895331aceec586b10379ca0b893d71598291606385f7ad81a', 0, '2021-06-28 14:35:15'),
('13e1134f65da5ea199855fd22c28c95cd5a1eb25009d15c35b1d7f60dd8aeb4c7c98b3ea253f5515', '01530ad9791b5a691f4f1424daf26fbd86da620bb4553576a0b5981a5f08ac44161eec9dda1594db', 0, '2021-06-26 16:44:16'),
('1cd19ef9a250879501192d979239b5a09f1294e93c5b988dde6436d8949a5a90afbfdbced11ee14b', 'd8507f1653d7da8a59b4234ad0b3bbfb9466b278a066f144315fc04021a4e985e6aef3aaedea1632', 0, '2021-06-28 21:12:07'),
('22368932bed74eb2bba571e4f0c261ef782a7b0c7a0ecd150fc22607013e19a1148af92471abc750', '0a52c7066f2fb362c9156adf5ef04f17a5ff67488f80ceda26d5b0fe233a5512446c8d10822514c4', 0, '2021-06-28 14:32:59'),
('29ec333215d7286e00ed5e123fab4b27f7211a7b64cead5837173033e6ef57fb6a431334f828293a', 'e209c23d0a9aaef139606d7c2a9496d4c08685eb232423d7659face3c2fcbd1d7ea3b6f1b11ebdfd', 0, '2021-06-26 17:20:20'),
('43918330967bd1d789395ca6393b07f15565a18ae7fd80f75deaec9aa9274d6217f8e34509a3c366', '95e64f84ddbc8d7fcfdc4b4f3f96d1a174b717d04d818b22a7d40f56f9ee5a3fc8fb272ebea0da70', 0, '2021-06-28 21:11:15'),
('4fa7f9d251355d6102135eee560d45c0f23a60312f8136137f01705dd07f4189f7b4c83293cb1949', 'edd460485dafdc42364db6b1812910a7a77d44c51c97353b820789aad3c298bbe0b18240a71d47e9', 0, '2021-06-29 15:40:23'),
('7136ee3cef17be576336c7c961226c8a4879d1670bc49c2f79a6da68258f710c69f333f470e141ab', '0499678c793b4eab48aabf75962703a1a0efadf74f52941d5b924432ad401fe83b008690163df3db', 0, '2021-06-28 21:13:09'),
('7d3a47510c704f1fc809c490554fab3225d72a4de064bc3513fc97fcb0d89535e8280f76bc408cb1', '810e06941c3de58eb129d0002da816650b7b3dc716613144718c5d407329b30b2cd06a13633f75e0', 0, '2021-06-26 16:37:37'),
('81fe5eb43dd3ce806f738f9e92a5a78998dc1fce19aaba60aa445c556ba20e454a059526d68eed5e', '09130a9dd850e9a7931185210c91640741491cf6c7b582205d77a7a407ccfabdbcc0e2ccbac7bcaf', 0, '2021-06-26 15:01:45'),
('8361eb3bdc4a0ddd681ccd430ad707e840e61e9f9b90a451e376a9caaeed06eefb34b7a39921679b', '06d31ebcedb57d7740df5305b2e542e6d097d61e932448c33e88048c9ff0d4b51c2dacfae536af56', 0, '2021-06-28 21:14:09'),
('8da24a60de0fdcac05f6184ede684d96b03e9076652c321c4d66b5ada85ad367b756652dc2fd9392', 'e85aa1707dcb3d94fd8211f748a722157800adf38b04030a4e72d68927186d355a23a4d17d9477aa', 0, '2021-06-26 17:23:47'),
('91198e9bcdd9555f527c498d4929578043f19246e7b2f6bbcb748c3e3e32165d1c0e54eae1ba620f', 'ca4bcfd3d7fe12f16b523796bff32d68f3d7d071670bcdda8882cae4875cb7ff16e36069b5372b9c', 0, '2021-06-28 21:14:38'),
('95f28487047adaff40f0a2e5e64de18d62cdb5e02d95b0334772c9e42d45beccbdecbf30334ffba8', 'ea08b854dc81564f885369f1fe2f07ad878bc9d6b88a3bc6fa3ec9d626dbc7ae8cb6d349b7205858', 0, '2021-06-28 21:18:31'),
('9c5f0d1efe566372e71edc466efca8cd0e00d1fca71b490b5ce52dfb4510dccb87eba7389f4fce23', '6a8a4e80f762f1a9bd76303d0206c210f898c03d29f0d407401c647e1ac2eb2fb9dd17c0d2f0b782', 0, '2021-06-28 14:23:21'),
('9dfff48c4b4e50c84f5188e571cfcf94a45ea71c609618bb6ae49892cf4c2de57570182a136b6a65', 'a4815250ae30929bb9030223e3831e64065caedfac1a5ba150b73dd48e8136c0c8222fdc8aacd5f6', 0, '2021-06-26 16:49:12'),
('a960e02a60f3d6aea0f71e7f0f632952b8e427e6248a99abe1d0f6087f6f09c52f2ea0e3a2ff7442', '60d7c52952a3ba3393233a96a72ad2d94eb00c75e6e7c9e0286c475c4c01226de8e8459a640b6188', 0, '2021-06-28 14:39:29'),
('b3123267498ab83a85376af262d67e03feebafb560b7626aed42f5ce097c9cead6a77d449a201a7f', '4623ca3d0067e4d9233be386b350901df901afde505a90fac5781e4b2671edde0c576d361ed6c75c', 0, '2021-06-28 15:29:35'),
('b3d7e2a5520a4c3822819505b009f61eb90579950a91535faeed9e218965cfc5f3c14ca73aacb423', 'd2ceb73251a8f60f0f7e8f4047bca73d935831227d7ec34e86dca2ca6edb0478b0cba1110c307a9c', 0, '2021-06-28 14:37:32'),
('bc15a03dd0ed8f2e0c0764c92f16ec08f292f09b20481934634bacfb86145b22b8732ca2af954149', '6a7af2951611dcc26540180d08b56274f2a321786cdb93f66850763bcf66d6747b87032f9db065f3', 0, '2021-07-01 13:59:16'),
('bd134bb7c942af9d4ce3560f00097fd222f498bd1412a6438d6451646b214ee3edb36c6095f0dd78', '824def73e2b400cdf9bc5977322aa8005c6a3e98ee4e9d9b58f6820cd239f9d1b6b14dbcada86686', 0, '2021-06-29 15:39:30'),
('cbf42ba3abb981d7d8951a3419d077e1eb7b4efb5698f073ea11da7a78ad2042326a71a3d5774dda', 'c72c6d5f7462af70dfdf474d2f95db402f1c1d9ae94769d5b2e20e66d3bff19f5a2468fbb04f52fb', 0, '2021-06-28 21:16:35'),
('d42d12c400176110613b3772d1eece4777b1be08424cd826fd3bee75effdcfc398ddc11dd6e36873', '76f2e6b9cb4b10833ce47b2523e108481b3c0a3a76ff425a16338ecb51a230b767bb76b56e803273', 0, '2021-06-28 14:26:47'),
('d4a0b4f08ce9cd68e92eba8058762f3c33daaf4b6d3c6baa75f052cab2f8674c15d3aa896174ba30', 'd8f06adacc18e6314907198b25b9e99f029c46d0ffbbcc144c2e46d6f627643f95c0f18153ee5822', 0, '2021-06-28 14:06:04'),
('dc77923489cf82acaf981837d5e625fe9275e9bc7c85a6a5c13ebd6aac8606f5b523cdedaa753e6a', 'c4ce00e0d8095ddc48c6d06d6afe5f52c2867fd148837ce5fd850c49f867f51f288b6d080459403c', 0, '2021-06-28 15:29:41'),
('de245adabb29eabeeca0ee6e3d0efe7d04b74c1e15297a253fb12a0bc7f66e2311aebb6903784791', 'ebb4f73e68ef950ae3c00ad01a07f29c45c5f9d8ee29603615f956828555d61f98b55ee60bf4367f', 0, '2021-06-28 14:36:46'),
('e15510d68fb6d47ea24bfd6eeb84f050ec83e655d28577e42cda56c80521c94d61e71034ddc5d62b', '43d0714ab037955c25ac67dfc5d02a7c24912cd8946a635d78d2507275221cdaf8e957ba018a8888', 0, '2021-06-28 14:38:15'),
('e931d14f5e2e7088662e9e9c8213ef4e979e0600b55eeb0c8d0c875c2523f231f1b1a83cf2cd22c1', '1feb37efeb3bc90ce2bf02f53157f045dd180a48c25eff33672ddf7f54212e92c7d6a577024ff1c1', 0, '2021-06-28 08:16:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `total_price` double(10,2) NOT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pendding',
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pendding',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `shipping_id`, `total_price`, `payment_type`, `order_status`, `payment_status`, `created_at`, `updated_at`) VALUES
(2, 47, 3, 1000000.00, 'Cash', 'Pendding', 'Pendding', '2020-06-17 02:42:21', '2020-06-17 02:42:21'),
(3, 48, 4, 10015000.00, 'Cash', 'Pendding', 'Pendding', '2020-06-17 02:44:43', '2020-06-17 02:44:43'),
(4, 49, 5, 90000.00, 'Cash', 'Pendding', 'Pendding', '2020-06-17 08:26:20', '2020-06-17 08:26:20'),
(5, 50, 8, 10120000.00, 'Cash', 'Pendding', 'Pendding', '2020-06-17 08:33:10', '2020-06-17 08:33:10'),
(6, 51, 9, 25000.00, 'Cash', 'Pendding', 'Pendding', '2020-06-17 08:35:13', '2020-06-17 08:35:13'),
(7, 52, 10, 500000.00, 'Cash', 'Pendding', 'Pendding', '2020-06-17 08:38:01', '2020-06-17 08:38:01'),
(8, 52, 10, 500000.00, 'Cash', 'Pendding', 'Pendding', '2020-06-17 08:38:18', '2020-06-17 08:38:18'),
(9, 53, 11, 60000.00, 'Cash', 'Pendding', 'Pendding', '2020-06-17 08:39:18', '2020-06-17 08:39:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_image`, `product_price`, `product_quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 26, 'Gái chưa chồng', '26.jpg', 1000000.00, 1, '2020-06-17 02:42:21', '2020-06-17 02:42:21'),
(2, 3, 29, 'Mirinda', '29.jpg', 5000.00, 1, '2020-06-17 02:44:43', '2020-06-17 02:44:43'),
(3, 3, 23, 'Gái xinh nè', '23.jpg', 10000000.00, 1, '2020-06-17 02:44:43', '2020-06-17 02:44:43'),
(4, 3, 8, 'Bánh mỳ pate Hà Nội', '8.jpg', 10000.00, 1, '2020-06-17 02:44:43', '2020-06-17 02:44:43'),
(5, 4, 8, 'Bánh mỳ pate Hà Nội', '8.jpg', 10000.00, 1, '2020-06-17 08:26:20', '2020-06-17 08:26:20'),
(6, 4, 25, 'Sách cho teenager', '25.jpg', 80000.00, 1, '2020-06-17 08:26:20', '2020-06-17 08:26:20'),
(7, 5, 30, 'Hạt tiêu cay nhất', '30.jpg', 120000.00, 1, '2020-06-17 08:33:10', '2020-06-17 08:33:10'),
(8, 5, 18, 'Gái châu Á nè', '18.jpg', 10000000.00, 1, '2020-06-17 08:33:10', '2020-06-17 08:33:10'),
(9, 6, 28, 'Sprite', '28.jpg', 5000.00, 4, '2020-06-17 08:35:13', '2020-06-17 08:35:13'),
(10, 6, 27, 'Fanta', '27.jpg', 5000.00, 1, '2020-06-17 08:35:13', '2020-06-17 08:35:13'),
(11, 7, 24, 'Quần dành riêng cho trai đẹp', '24.jpg', 150000.00, 1, '2020-06-17 08:38:01', '2020-06-17 08:38:01'),
(12, 7, 22, 'Quần tây', '22.jpg', 200000.00, 1, '2020-06-17 08:38:01', '2020-06-17 08:38:01'),
(13, 7, 21, 'Quần vải', '21.jpg', 150000.00, 1, '2020-06-17 08:38:01', '2020-06-17 08:38:01'),
(14, 9, 29, 'Mirinda', '29.jpg', 5000.00, 12, '2020-06-17 08:39:18', '2020-06-17 08:39:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('tanhaudue@gmail.com', '$2y$10$rJoS55pz4ZEXfvYcVuHcvOwJRuzPFOFjSrT2CdUnStQaIY7Q2PYYK', '2020-06-13 21:31:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default_img.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `product_name`, `category_id`, `product_short_description`, `product_long_description`, `product_price`, `publication_status`, `product_image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'Tra xanh', '3', 'non', '<p>vdvvvs</p>', 5000, 1, '5.png', '2020-06-13 05:43:30', '2020-06-14 18:35:48', '2020-06-14 18:35:48'),
(6, 'Pepsi', '3', 'Pepsi là một đồ uống giải khát có gas, lần đầu tiên được sản xuất bởi Bradham. Ông pha chế ra một loại nước uống dễ tiêu làm từ nước cacbonat, đường, vani và một chút dầu ăn dưới tên “Nước uống của Brad\" năm 1886.', '<p><strong>Pepsi l&agrave; một đồ uống giải kh&aacute;t c&oacute; gas, lần đầu ti&ecirc;n được sản xuất bởi Bradham. &Ocirc;ng pha chế ra một loại nước uống dễ ti&ecirc;u l&agrave;m từ nước cacbonat, đường, vani v&agrave; một ch&uacute;t dầu ăn dưới t&ecirc;n &ldquo;Nước uống của Brad&quot; năm 1886. Pepsi lần đầu ti&ecirc;n sản xuất v&agrave;o năm 1890 do dược sĩ Caleb Bradham chế ra tại New Bern, Bắc Carolina</strong></p>', 5000, 1, '6.jpg', '2020-06-13 06:24:21', '2020-06-13 23:33:22', NULL),
(8, 'Bánh mỳ pate Hà Nội', '2', 'Ngon rẻ chỉ 10k', '<p><strong>B&aacute;nh m&igrave; H&agrave; Nội</strong>&nbsp;l&agrave; m&oacute;n ăn xuất hiện từ thời Ph&aacute;p với những loại nguy&ecirc;n liệu d&acirc;n d&atilde; kết hợp với nhau như : pate, trứng, thịt &hellip;. N&oacute; l&agrave; m&oacute;n kh&ocirc;ng k&eacute;n người ăn, cũng chẳng d&agrave;nh ri&ecirc;ng cho bất k&igrave; ai. M&oacute;n ăn n&agrave;y từ trẻ con cho đến những cụ gi&agrave; cũng đều nghiền. B&aacute;nh m&igrave; kh&ocirc;ng những chỉ c&oacute; thể ăn s&aacute;ng m&agrave; b&aacute;nh m&igrave; c&ograve;n c&oacute; thế thay thế bữa trưa hoặc bữa tối, thậm ch&iacute; cả bữa l&oacute;t dạ v&agrave;o đ&ecirc;m khuya.</p>', 10000, 1, '8.jpg', '2020-06-13 22:08:03', '2020-06-13 23:32:40', NULL),
(9, 'Bánh mì kẹp', '2', 'có hình lạ nha', '<p>Ngon k k&eacute; g&igrave; b&aacute;nh mỳ H&agrave; Nội lu&ocirc;n</p>', 10000, 1, '9.jpg', '2020-06-13 22:09:03', '2020-06-13 23:33:23', NULL),
(10, 'Sneakers', '4', 'đẹp mê li', '<p>Gi&aacute; cả phải chăng đi đẹp khỏi ch&ecirc;</p>', 500000, 1, '10.jpg', '2020-06-13 22:11:06', '2020-06-13 23:32:41', NULL),
(11, 'Hạt tiêu đỏ', '5', 'đỏ như tiêu', '<p>cay khỏi b&agrave;n ae ơi</p>', 20000, 1, '11.jpg', '2020-06-13 22:11:29', '2020-06-13 22:11:29', NULL),
(12, 'Giày lười', '4', 'cho các bé lười di giày', '<p>:))</p>', 600000, 1, '12.jpg', '2020-06-13 22:12:23', '2020-06-14 01:55:36', NULL),
(13, 'My Crush', '6', 'Xinh lém', '<p><em><strong>Giỏi giang xinh g&aacute;i thấy gh&eacute;t</strong></em></p>', 10000000, 1, '13.jpg', '2020-06-14 01:49:06', '2020-06-14 01:49:06', NULL),
(15, 'Bánh tráng', '2', 'nvvn', '<p>&nbsp;svs</p>', 20000, 1, '15.jpg', '2020-06-14 02:11:54', '2020-06-14 23:20:57', '2020-06-14 23:20:57'),
(17, 'Tra xanh', '3', 'zc', '<p>cac</p>', 10000, 1, '17.jpg', '2020-06-14 02:51:41', '2020-06-14 02:58:21', '2020-06-14 02:58:21'),
(18, 'Gái châu Á nè', '6', 'Xinh cute khỏi bàn', '<p><em><strong>Kiếm tiền tậu e n&agrave;y về nha mn</strong></em></p>', 10000000, 1, '18.jpg', '2020-06-14 18:52:04', NULL, NULL),
(19, 'Cuốn sách thứu nhất', '7', 'Tri thức có trong mỗi cuốn sách', '<p><em><strong>Liệu bạn c&oacute; phải l&agrave; một người th&ocirc;ng th&aacute;i. H&atilde;y coi đọc s&aacute;ch l&agrave; một sở th&iacute;ch v&igrave; n&oacute; gi&uacute;p ch&uacute;ng ta biết tri thức của con người l&agrave; qu&aacute; hạn hẹp.</strong></em></p>', 50000, 1, '19.jpg', '2020-06-14 22:25:38', NULL, NULL),
(20, 'Sách 2', '7', 'Sách là một loạt các tờ giấy có chữ hoặc hình ảnh được viết tay hoặc in ấn, được buộc hoặc dán với nhau về một phía. Một tờ trong cuốn sách được gọi là một trang sách. Sách ở dạng điện tử được gọi là sách điện tử hoặc e-book.', '<p>&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ch chứa đựng c&aacute;c gi&aacute; trị văn h&oacute;a tinh thần (c&aacute;c t&aacute;c phẩm s&aacute;ng t&aacute;c hoặc t&agrave;i liệu bi&ecirc;n soạn) thuộc c&aacute;c h&igrave;nh th&aacute;i &yacute; thức&nbsp;<a href=\"https://vi.wikipedia.org/wiki/X%C3%A3_h%E1%BB%99i\">x&atilde; hội</a>&nbsp;v&agrave; nghệ thuật kh&aacute;c nhau, được ghi lại dưới c&aacute;c dạng ng&ocirc;n ngữ kh&aacute;c nhau (chữ viết, h&igrave;nh ảnh, &acirc;m thanh, k&yacute; hiệu,...) của c&aacute;c d&acirc;n tộc kh&aacute;c nhau nhằm để lưu trữ, t&iacute;ch lũy, truyền b&aacute; trong x&atilde; hội.</strong></p>\r\n\r\n<p><em>S&aacute;ch l&agrave; một kh&aacute;i niệm mở, h&igrave;nh thức s&aacute;ch c&ograve;n được thay đổi v&agrave; cấu th&agrave;nh c&aacute;c dạng kh&aacute;c nhau theo c&aacute;c phương thức chế t&aacute;c v&agrave; nh&acirc;n bản kh&aacute;c nhau, t&ugrave;y thuộc v&agrave;o m&ocirc;i trường sống v&agrave; sự ph&aacute;t triển của khoa học c&ocirc;ng nghệ ở mỗi thời đại.</em></p>\r\n\r\n<p><em><strong>S&aacute;ch c&oacute; thể được b&aacute;n ở c&aacute;c cửa h&agrave;ng s&aacute;ch hoặc mượn tại thư viện.&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Google\">Google</a>&nbsp;ước t&iacute;nh, tới năm 2010 đ&atilde; c&oacute; xấp xỉ 130 triệu tựa s&aacute;ch kh&aacute;c nhau đ&atilde; được xuất bản.<a href=\"https://vi.wikipedia.org/wiki/S%C3%A1ch#cite_note-1\">[1]</a>&nbsp;Ở một số&nbsp;<a href=\"https://vi.wikipedia.org/wiki/N%C6%B0%E1%BB%9Bc_ph%C3%A1t_tri%E1%BB%83n\">nước ph&aacute;t triển</a>, lượng s&aacute;ch giấy in ra đ&atilde; thấp hơn lượng s&aacute;ch điện tử,<a href=\"https://vi.wikipedia.org/wiki/S%C3%A1ch#cite_note-2\">[2]</a>&nbsp;mặc d&ugrave; lượng s&aacute;ch điện tử b&aacute;n ra đ&atilde; giảm trong nửa đầu năm 2015</strong></em></p>', 100000, 1, '20.jpg', '2020-06-14 22:33:22', NULL, NULL),
(21, 'Quần vải', '8', 'Mặc thỏa mái lắm nha', '<p><strong>Kh&ocirc;ng c&oacute; khoảng thời gian n&agrave;o l&yacute; tưởng để diện quần shorts hơn m&ugrave;a H&egrave;. Kiểu quần n&agrave;y kh&ocirc;ng chỉ tạo n&ecirc;n những set đồ nhẹ m&aacute;t, m&agrave; c&ograve;n đem đến cho người diện vẻ ngo&agrave;i trẻ trung, ph&oacute;ng kho&aacute;ng v&agrave; sexy. Quần shorts cũng l&agrave; một trong những items rất dễ mix đồ, tuy nhi&ecirc;n để đa dạng h&oacute;a phong c&aacute;ch v&agrave; mỗi lần diện quần shorts l&agrave; một lần tỏa s&aacute;ng với vẻ ngo&agrave;i s&agrave;nh điệu level max, chị em vẫn n&ecirc;n tham khảo nhiều nguồn cảm hứng th&igrave; hơn. V&agrave; chưa cần học hỏi đ&acirc;u xa, ngắm c&aacute;c mỹ nh&acirc;n Việt th&ocirc;i l&agrave; chị sẽ c&oacute; cả &quot;vựa&quot; &yacute; tưởng diện quần shorts đẹp xinh hết &yacute;.</strong></p>', 150000, 1, '21.jpg', '2020-06-14 22:34:31', NULL, NULL),
(22, 'Quần tây', '8', 'Mặc sang chảnh đi xin việc nha ae', '<p>Chỉ biết rằng quần t&acirc;y xuất hiện sau khi&nbsp;<em><strong><a href=\"https://vi.wikipedia.org/wiki/Jeans\">quần jeans</a></strong></em>&nbsp;ra đời v&agrave;o năm 1870. Quần jeans trở th&agrave;nh trang phục th&ocirc;ng dụng tại thời kỳ đ&oacute; tuy nhi&ecirc;n chỉ d&agrave;nh mặc trong c&ocirc;ng việc chứ kh&ocirc;ng ai d&ugrave;ng để l&agrave;m trang phục mặc thường ng&agrave;y. Thương hiệu Levi&rsquo;s sau khi nổi tiếng với những chiếc quần jeans đ&atilde; dần cải tiến v&agrave; biến đổi n&oacute; với nhiều chất liệu. Sự thay đổi chất liệu như kaki, vải th&ocirc;, coton,...đ&atilde; dần dần l&agrave;m cho chiếc quần trở n&ecirc;n mềm mại hơn. C&oacute; lẽ m&agrave; c&aacute;c quốc gia Ch&acirc;u &Acirc;u chấp nhận sử dụng quần t&acirc;y trở th&agrave;nh trang phục thường ng&agrave;y.</p>\r\n\r\n<p>Quần &acirc;u l&agrave; t&ecirc;n gọi kh&aacute;c của quần t&acirc;y được gọi để nhớ về nguồn gốc ra đời cũng như phong c&aacute;ch thời trang của chiếc quần n&agrave;y l&agrave; từ Ch&acirc;u &Acirc;u.</p>', 200000, 1, '22.jpg', '2020-06-14 22:36:43', NULL, NULL),
(23, 'Gái xinh nè', '6', 'HiHi', '<p>Tậu một b&eacute; về nu&ocirc;i n&agrave;o</p>', 10000000, 1, '23.jpg', '2020-06-14 23:18:23', '2020-06-14 23:20:17', NULL),
(24, 'Quần dành riêng cho trai đẹp', '8', 'Cái tên thể hiện tất cả', '<p><em><strong>Quần d&agrave;nh ri&ecirc;ng cho trai đẹp. Nh&igrave;n ph&aacute;t biết ngay</strong></em></p>', 150000, 1, '24.jpg', '2020-06-14 23:27:34', NULL, NULL),
(25, 'Sách cho teenager', '7', 'Sách hay', '<p>S&aacute;ch cho c&aacute;c thanh ni&ecirc;n<strong> 9x</strong> nha</p>', 80000, 1, '25.jpg', '2020-06-14 23:28:44', NULL, NULL),
(26, 'Gái chưa chồng', '6', 'Em có người yêu chưa?', '<p>Y&ecirc;u em kh&ocirc;ng &lt;3 ???</p>', 1000000, 1, '26.jpg', '2020-06-14 23:29:44', NULL, NULL),
(27, 'Fanta', '3', 'Nước ngọt mạnh lắm', '<p>Ph&aacute;i mạnh na</p>', 5000, 1, '27.jpg', '2020-06-14 23:30:26', NULL, NULL),
(28, 'Sprite', '3', 'ngon', '<p>Ngon ngon m&aacute;t m&aacute;t ướt ướt</p>', 5000, 1, '28.jpg', '2020-06-14 23:31:09', NULL, NULL),
(29, 'Mirinda', '3', 'ngọt  sớt', '<p>hihi</p>', 5000, 1, '29.jpg', '2020-06-14 23:33:26', NULL, NULL),
(30, 'Hạt tiêu cay nhất', '5', 'Cay lắm luôn', '<p><strong>Cay chết mất</strong></p>', 120000, 1, '30.jpg', '2020-06-15 08:49:18', NULL, NULL),
(31, 'Hạt tiêu ít cay nhất', '5', 'Ít ra vẫn ăn tốt', '<p>Hihi</p>', 80000, 1, '31.jpg', '2020-06-15 08:49:58', NULL, NULL),
(33, 'Nước ngọt', '3', 'hi', '<p>ngọt nước</p>', 10000, 1, '33.jpg', '2020-06-29 09:30:53', NULL, NULL),
(34, 'Bánh mì chuẩn Việt', '2', 'ngon', 'và giòn nữa', 10000, 1, 'default_img.jpg', '2020-06-29 09:37:42', '2020-06-29 09:57:42', '2020-06-29 09:57:42'),
(35, 'Pepsissc', '4', 'ca', 'av', 22, 1, 'default_img.jpg', '2020-06-29 10:01:57', '2020-06-29 10:02:08', '2020-06-29 10:02:08'),
(36, 'dd', '3', 'dsssv', 'dvsvsv', 5000, 1, 'default_img.jpg', '2020-07-01 06:59:50', '2020-07-01 07:06:30', '2020-07-01 07:06:30'),
(37, 'vsv', '2', 'vsvs', 'vsvs', 10000, 1, '1593594474.jpeg', '2020-07-01 08:06:23', '2020-07-01 08:08:01', '2020-07-01 08:08:01'),
(38, 'vsv', '2', 'vsvs', 'vsvs', 10000, 1, 'default_img.jpg', NULL, '2020-07-01 08:06:48', '2020-07-01 08:06:48'),
(39, 'dvsvs', '3', 'vsdvs', 'vsvsvsv', 5000, 0, '1593594557.jpeg', '2020-07-01 08:08:57', '2020-07-01 08:09:20', '2020-07-01 08:09:20'),
(40, 'Học sinh c3', '6', 'Hmm', '<p>Cũng được</p>', 10000, 1, '1593595844.jpeg', '2020-07-01 08:11:47', NULL, NULL),
(41, 'Girl xinh thế hê 2k1', '6', 'Ahihi', 'Đã từng kết bạn nha', 200000, 1, '1593596490.jpeg', '2020-07-01 08:41:30', NULL, NULL),
(42, 'Gái xinh 2x', '6', 'Hmm mik đang ế đây này', 'Chưa có chồng nha mọi người', 10000000, 1, '1593596871.jpeg', '2020-07-01 08:47:51', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shippings`
--

INSERT INTO `shippings` (`id`, `full_name`, `email_address`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Hoang Tan', 'hvtan632000@gmail.com', '0338441269', 'Hải Dương', '2020-06-17 01:42:22', '2020-06-17 01:42:22'),
(2, 'Hoang Tan', 'hvtan632000@gmail.com', '0971416727', 'Hải Dương', '2020-06-17 01:49:53', '2020-06-17 01:49:53'),
(3, 'Hoang Tan', 'hvtan632000@gmail.com', '0971416727', 'Hà Nội', '2020-06-17 01:57:51', '2020-06-17 01:57:51'),
(4, 'Trần Loan', 'hvtan632000@gmail.com', '0338441269', 'Hải Dương', '2020-06-17 02:44:35', '2020-06-17 02:44:35'),
(5, 'Hoang Trang', 'htrang11082002@gmail.com', '0971416727', 'Hai Duong', '2020-06-17 08:26:17', '2020-06-17 08:26:17'),
(6, 'Hoang Khang', 'hkhang23102007@gmail.com', '012365478', 'Bac Ninh', '2020-06-17 08:30:04', '2020-06-17 08:30:04'),
(7, 'Hoang Khang', 'hkhang632000@gmail.com', '0971416727', 'Hung Yen', '2020-06-17 08:30:24', '2020-06-17 08:30:24'),
(8, 'Hoang Tr', 'hvtan632000@gmail.com', '0971416727', 'Hung Yen', '2020-06-17 08:32:58', '2020-06-17 08:32:58'),
(9, 'Tom Cruise', 'hvtan632000@gmail.com', '012365478', 'Los Angeles', '2020-06-17 08:35:10', '2020-06-17 08:35:10'),
(10, 'Cristiano Ronaldo', 'hauduethantoc@gmail.com', '0121354566', 'Portugal', '2020-06-17 08:37:59', '2020-06-17 08:37:59'),
(11, 'Cristiano Ronaldo', 'hvtan632000@gmail.com', '0971416727', 'VietNam', '2020-06-17 08:39:15', '2020-06-17 08:39:15'),
(12, 'Hoang Tan', 'hvtan632000@gmail.com', '0971416727', 'Hải Dương', '2020-06-17 08:54:01', '2020-06-17 08:54:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hoàng Văn Tân', 'tanhaudue@gmail.com', NULL, '$2y$10$o2gFuDibKDfbdx6ur9Qn2eJoDyY4a.nr7WiNp8it84IwAkGw3kx2u', 'DmQQnywlQEloUyKC6ePfle2ioUaz2sef8NPKiAzb0t1qxdqXjb4JVsKIRblg', '2020-06-12 19:34:17', '2020-06-13 21:29:02'),
(2, 'admin', 'admin@gmail.com', NULL, '$2y$10$cOaTJWp9DTcIynwmenhPB..QQPSJQQRyDg.mjsUeCg8iq4ycuUtNi', NULL, '2020-06-26 09:43:24', '2020-06-26 09:44:15'),
(3, 'demo', 'demo@gmail.com', NULL, '$2y$10$utuc7Z7nYe7ZRxx7Aezjg.CNpCYEdjf0c5sGp6k2tcHy22mtdotSe', NULL, '2020-06-26 09:49:11', '2020-06-26 09:49:11'),
(4, 'Khang', 'khang@gmail.com', NULL, '$2y$10$Riv2QTQBG0m1ICG2jVNLDOajaQY2lgUx4m0whXHry/xWHTkcIqKBm', NULL, '2020-06-28 01:16:32', '2020-06-28 01:16:32'),
(5, 'Trang', 'trang@gmail.com', NULL, '$2y$10$TbQ337b8t1A2B.t4mYFS9.1lSLcXm0wkv4QBkBtwdx2Gg8Fe6YsKu', NULL, '2020-06-28 06:55:08', '2020-06-28 06:55:08'),
(6, 'anh', 'anh@gmail.com', NULL, '$2y$10$jD1uhVuQRF/4r5o/IZbsfutZWsnpwcfUpuU1DG585/gnNr9xeD1..', NULL, '2020-06-28 07:06:03', '2020-06-28 07:06:03'),
(8, 'Khang12', 'khang12@gmail.com', NULL, '$2y$10$g.k.RyP7pLiurV5aulXNbuIMDDvfAURWrCLkRRV8QAVI.YjvkjUMq', NULL, '2020-06-28 07:23:21', '2020-06-28 07:23:21'),
(9, 'haiz', 'haiz@gmail.com', NULL, '$2y$10$F/6eSaKly9rdn1WppvjKmO.U78b0REGoVOPWotSpiOSaS2MDQImiO', NULL, '2020-06-28 07:26:47', '2020-06-28 07:26:47'),
(10, 'điệp viên 007', 'spy@gmail.com', NULL, '$2y$10$UvxS7mhtnEwA84UsH/AZ9uRezNed/VGJEaFFDu0T6WXfGbn.tQ40G', NULL, '2020-06-28 14:11:13', '2020-06-28 14:11:13');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `multiple_images`
--
ALTER TABLE `multiple_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `multiple_images`
--
ALTER TABLE `multiple_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
