-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2025 at 12:11 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agendakota`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `abouts_cmps`
--

CREATE TABLE `abouts_cmps` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `cmp_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `action_parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`action_parameters`)),
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `document_id`, `action`, `action_parameters`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'lt863yp4vy9mrdb4q7npv090', 'plugin::content-manager.explorer.create', '{}', 'api::about.about', '{\"fields\":[\"title\"]}', '[]', '2024-12-01 22:45:18.237000', '2025-01-09 05:54:32.401000', '2024-12-01 22:45:18.237000', NULL, NULL, NULL),
(2, 'c25i0xdsepv67pwxe3ffq2gr', 'plugin::content-manager.explorer.create', '{}', 'api::article.article', '{\"fields\":[\"slug\",\"author\",\"category\",\"blocks\",\"title\"]}', '[]', '2024-12-01 22:45:18.243000', '2025-01-09 05:54:32.401000', '2024-12-01 22:45:18.243000', NULL, NULL, NULL),
(3, 'l6g86p6dt2aus31ersuk70z5', 'plugin::content-manager.explorer.create', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\"]}', '[]', '2024-12-01 22:45:18.246000', '2025-01-09 05:54:32.401000', '2024-12-01 22:45:18.246000', NULL, NULL, NULL),
(4, 'n1j3f6rsrnsa3uu36q2jwekn', 'plugin::content-manager.explorer.create', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"description\"]}', '[]', '2024-12-01 22:45:18.250000', '2025-01-09 05:54:32.401000', '2024-12-01 22:45:18.250000', NULL, NULL, NULL),
(5, 'lj71dt7fyarjjyqr827530mr', 'plugin::content-manager.explorer.create', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[]', '2024-12-01 22:45:18.253000', '2024-12-01 22:45:18.253000', '2024-12-01 22:45:18.254000', NULL, NULL, NULL),
(6, 'fc866seh3g71et1uzp54ywtb', 'plugin::content-manager.explorer.read', '{}', 'api::about.about', '{\"fields\":[\"title\"]}', '[]', '2024-12-01 22:45:18.258000', '2025-01-09 05:54:32.401000', '2024-12-01 22:45:18.258000', NULL, NULL, NULL),
(7, 'pgt3yq5ig439kavwuj71pit3', 'plugin::content-manager.explorer.read', '{}', 'api::article.article', '{\"fields\":[\"slug\",\"author\",\"category\",\"blocks\",\"title\"]}', '[]', '2024-12-01 22:45:18.260000', '2025-01-09 05:54:32.401000', '2024-12-01 22:45:18.260000', NULL, NULL, NULL),
(8, 'x38d1sqpq7mgcn7ox37oow64', 'plugin::content-manager.explorer.read', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\"]}', '[]', '2024-12-01 22:45:18.264000', '2025-01-09 05:54:32.401000', '2024-12-01 22:45:18.264000', NULL, NULL, NULL),
(9, 'amjwjaa9989akfssdgw3oqw2', 'plugin::content-manager.explorer.read', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"description\"]}', '[]', '2024-12-01 22:45:18.267000', '2025-01-09 05:54:32.401000', '2024-12-01 22:45:18.267000', NULL, NULL, NULL),
(10, 'paqsn2hd05bk2hsovnoi1da3', 'plugin::content-manager.explorer.read', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[]', '2024-12-01 22:45:18.270000', '2024-12-01 22:45:18.270000', '2024-12-01 22:45:18.270000', NULL, NULL, NULL),
(11, 'qpiemzl6gz7ar35j1gsq5a3u', 'plugin::content-manager.explorer.update', '{}', 'api::about.about', '{\"fields\":[\"title\"]}', '[]', '2024-12-01 22:45:18.273000', '2025-01-09 05:54:32.401000', '2024-12-01 22:45:18.273000', NULL, NULL, NULL),
(12, 'b8expjw5vzy8q3wuiecht8qv', 'plugin::content-manager.explorer.update', '{}', 'api::article.article', '{\"fields\":[\"slug\",\"author\",\"category\",\"blocks\",\"title\"]}', '[]', '2024-12-01 22:45:18.275000', '2025-01-09 05:54:32.401000', '2024-12-01 22:45:18.275000', NULL, NULL, NULL),
(13, 'pb468e03mdsxc56cg00ytbw4', 'plugin::content-manager.explorer.update', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\"]}', '[]', '2024-12-01 22:45:18.279000', '2025-01-09 05:54:32.401000', '2024-12-01 22:45:18.279000', NULL, NULL, NULL),
(14, 'meprg0n0tgubwbogki2dmrch', 'plugin::content-manager.explorer.update', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"description\"]}', '[]', '2024-12-01 22:45:18.281000', '2025-01-09 05:54:32.401000', '2024-12-01 22:45:18.281000', NULL, NULL, NULL),
(15, 'xthczmlf4xcl2sks4d35j06z', 'plugin::content-manager.explorer.update', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[]', '2024-12-01 22:45:18.284000', '2024-12-01 22:45:18.284000', '2024-12-01 22:45:18.284000', NULL, NULL, NULL),
(16, 'v8tirzya6fga9vluivx30bgl', 'plugin::content-manager.explorer.delete', '{}', 'api::about.about', '{}', '[]', '2024-12-01 22:45:18.287000', '2024-12-01 22:45:18.287000', '2024-12-01 22:45:18.287000', NULL, NULL, NULL),
(17, 'ki29uvcl46hhkes3pd5dmavc', 'plugin::content-manager.explorer.delete', '{}', 'api::article.article', '{}', '[]', '2024-12-01 22:45:18.289000', '2024-12-01 22:45:18.289000', '2024-12-01 22:45:18.290000', NULL, NULL, NULL),
(18, 'wxmnpxszz9lgmrk38cf55dvc', 'plugin::content-manager.explorer.delete', '{}', 'api::author.author', '{}', '[]', '2024-12-01 22:45:18.292000', '2024-12-01 22:45:18.292000', '2024-12-01 22:45:18.292000', NULL, NULL, NULL),
(19, 'v1tiss1rgpuix8pcnox9te3b', 'plugin::content-manager.explorer.delete', '{}', 'api::category.category', '{}', '[]', '2024-12-01 22:45:18.295000', '2024-12-01 22:45:18.295000', '2024-12-01 22:45:18.295000', NULL, NULL, NULL),
(20, 'zwrug6obnuip7lpzq5imx3rb', 'plugin::content-manager.explorer.delete', '{}', 'api::global.global', '{}', '[]', '2024-12-01 22:45:18.298000', '2024-12-01 22:45:18.298000', '2024-12-01 22:45:18.298000', NULL, NULL, NULL),
(21, 'aklu7i9qiela5k6qfioj6ww5', 'plugin::content-manager.explorer.publish', '{}', 'api::about.about', '{}', '[]', '2024-12-01 22:45:18.301000', '2024-12-01 22:45:18.301000', '2024-12-01 22:45:18.302000', NULL, NULL, NULL),
(22, 'tpp7k28ket35c0xln92fk84p', 'plugin::content-manager.explorer.publish', '{}', 'api::article.article', '{}', '[]', '2024-12-01 22:45:18.304000', '2024-12-01 22:45:18.304000', '2024-12-01 22:45:18.304000', NULL, NULL, NULL),
(23, 'tu1hgdzxi1dsapula863u2p7', 'plugin::content-manager.explorer.publish', '{}', 'api::author.author', '{}', '[]', '2024-12-01 22:45:18.308000', '2024-12-01 22:45:18.308000', '2024-12-01 22:45:18.308000', NULL, NULL, NULL),
(24, 'a4jha52umx6w0ioq2wgkorww', 'plugin::content-manager.explorer.publish', '{}', 'api::category.category', '{}', '[]', '2024-12-01 22:45:18.311000', '2024-12-01 22:45:18.311000', '2024-12-01 22:45:18.311000', NULL, NULL, NULL),
(25, 'p6c9gy2g1430g9eqybq2po29', 'plugin::content-manager.explorer.publish', '{}', 'api::global.global', '{}', '[]', '2024-12-01 22:45:18.314000', '2024-12-01 22:45:18.314000', '2024-12-01 22:45:18.314000', NULL, NULL, NULL),
(26, 'exdxle7d2ejvb38ckdoha4tc', 'plugin::upload.read', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.316000', '2024-12-01 22:45:18.316000', '2024-12-01 22:45:18.317000', NULL, NULL, NULL),
(27, 'se6l7m1fwgjbnfbsnwv85bd6', 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.320000', '2024-12-01 22:45:18.320000', '2024-12-01 22:45:18.320000', NULL, NULL, NULL),
(28, 'jah6q3nh7aagpu9f3s0bd2yh', 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.324000', '2024-12-01 22:45:18.324000', '2024-12-01 22:45:18.324000', NULL, NULL, NULL),
(29, 'yzg29r61uka0olmvty061qqk', 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.327000', '2024-12-01 22:45:18.327000', '2024-12-01 22:45:18.327000', NULL, NULL, NULL),
(30, 'z5822zpocdb9sf6a6ocixv56', 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.330000', '2024-12-01 22:45:18.330000', '2024-12-01 22:45:18.330000', NULL, NULL, NULL),
(31, 'gx6wg2z44m3kespxx3s58mhd', 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.333000', '2024-12-01 22:45:18.333000', '2024-12-01 22:45:18.333000', NULL, NULL, NULL),
(32, 'tqn08he5shq1mkai1wpcvvcq', 'plugin::content-manager.explorer.create', '{}', 'api::about.about', '{\"fields\":[\"title\"]}', '[\"admin::is-creator\"]', '2024-12-01 22:45:18.338000', '2025-01-09 05:54:32.401000', '2024-12-01 22:45:18.338000', NULL, NULL, NULL),
(35, 'wffdfl0blgvl7sehjp9lk9dz', 'plugin::content-manager.explorer.create', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"description\"]}', '[\"admin::is-creator\"]', '2024-12-01 22:45:18.348000', '2025-01-09 05:54:32.401000', '2024-12-01 22:45:18.348000', NULL, NULL, NULL),
(36, 'vczuhmwngtm8c9kfdt4p06yg', 'plugin::content-manager.explorer.create', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[\"admin::is-creator\"]', '2024-12-01 22:45:18.350000', '2024-12-01 22:45:18.350000', '2024-12-01 22:45:18.350000', NULL, NULL, NULL),
(37, 'v23bk9x5exxey6rk3dd1enty', 'plugin::content-manager.explorer.read', '{}', 'api::about.about', '{\"fields\":[\"title\"]}', '[\"admin::is-creator\"]', '2024-12-01 22:45:18.353000', '2025-01-09 05:54:32.401000', '2024-12-01 22:45:18.353000', NULL, NULL, NULL),
(40, 'qf8p7bhjkpoqnj68q8nonsui', 'plugin::content-manager.explorer.read', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"description\"]}', '[\"admin::is-creator\"]', '2024-12-01 22:45:18.363000', '2025-01-09 05:54:32.401000', '2024-12-01 22:45:18.363000', NULL, NULL, NULL),
(41, 'e37q8rfhg4w099ogfl2y8bpa', 'plugin::content-manager.explorer.read', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[\"admin::is-creator\"]', '2024-12-01 22:45:18.366000', '2024-12-01 22:45:18.366000', '2024-12-01 22:45:18.366000', NULL, NULL, NULL),
(42, 'rb0isqps1jy5wvmbenwzrkz8', 'plugin::content-manager.explorer.update', '{}', 'api::about.about', '{\"fields\":[\"title\"]}', '[\"admin::is-creator\"]', '2024-12-01 22:45:18.368000', '2025-01-09 05:54:32.401000', '2024-12-01 22:45:18.368000', NULL, NULL, NULL),
(45, 'ksxx2dg2eclswf0huxov7u2h', 'plugin::content-manager.explorer.update', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"description\"]}', '[\"admin::is-creator\"]', '2024-12-01 22:45:18.378000', '2025-01-09 05:54:32.401000', '2024-12-01 22:45:18.378000', NULL, NULL, NULL),
(46, 'lkmlqiyhjicza1auquy2xhvw', 'plugin::content-manager.explorer.update', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[\"admin::is-creator\"]', '2024-12-01 22:45:18.382000', '2024-12-01 22:45:18.382000', '2024-12-01 22:45:18.382000', NULL, NULL, NULL),
(47, 'c6slbx8apuzreq2izksyuti5', 'plugin::content-manager.explorer.delete', '{}', 'api::about.about', '{}', '[\"admin::is-creator\"]', '2024-12-01 22:45:18.386000', '2024-12-01 22:45:18.386000', '2024-12-01 22:45:18.386000', NULL, NULL, NULL),
(48, 'h5h9i0lsdy779nld64vfwyol', 'plugin::content-manager.explorer.delete', '{}', 'api::article.article', '{}', '[\"admin::is-creator\"]', '2024-12-01 22:45:18.390000', '2024-12-01 22:45:18.390000', '2024-12-01 22:45:18.390000', NULL, NULL, NULL),
(49, 'dd1ep13wfy6rpdi7wsmzurlg', 'plugin::content-manager.explorer.delete', '{}', 'api::author.author', '{}', '[\"admin::is-creator\"]', '2024-12-01 22:45:18.394000', '2024-12-01 22:45:18.394000', '2024-12-01 22:45:18.394000', NULL, NULL, NULL),
(50, 'inz8c5nvueomdvninagea2wa', 'plugin::content-manager.explorer.delete', '{}', 'api::category.category', '{}', '[\"admin::is-creator\"]', '2024-12-01 22:45:18.397000', '2024-12-01 22:45:18.397000', '2024-12-01 22:45:18.397000', NULL, NULL, NULL),
(51, 'byfk75p5kmz067a66m2e9v34', 'plugin::content-manager.explorer.delete', '{}', 'api::global.global', '{}', '[\"admin::is-creator\"]', '2024-12-01 22:45:18.400000', '2024-12-01 22:45:18.400000', '2024-12-01 22:45:18.400000', NULL, NULL, NULL),
(53, 'eb2t2g5fnbuwpo3eynotrmzp', 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.407000', '2024-12-01 22:45:18.407000', '2024-12-01 22:45:18.407000', NULL, NULL, NULL),
(56, 'd3jngxaf8qyy4v1k8e439w30', 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.414000', '2024-12-01 22:45:18.414000', '2024-12-01 22:45:18.414000', NULL, NULL, NULL),
(57, 'mpxaya4yi17hqn8ud34xpmlr', 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.417000', '2024-12-01 22:45:18.417000', '2024-12-01 22:45:18.417000', NULL, NULL, NULL),
(63, 'su5p2aqbyxr8ekqze03vemi8', 'plugin::content-manager.explorer.create', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[]', '2024-12-01 22:45:18.465000', '2024-12-01 22:45:18.465000', '2024-12-01 22:45:18.465000', NULL, NULL, NULL),
(69, 'kaq624iisdbjdg4qls66eh41', 'plugin::content-manager.explorer.read', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[]', '2024-12-01 22:45:18.484000', '2024-12-01 22:45:18.484000', '2024-12-01 22:45:18.484000', NULL, NULL, NULL),
(75, 'mqouk9yyws1i24p8t2u2fol2', 'plugin::content-manager.explorer.update', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[]', '2024-12-01 22:45:18.506000', '2024-12-01 22:45:18.506000', '2024-12-01 22:45:18.506000', NULL, NULL, NULL),
(76, 'kwq3gjtgplwyd286490ksf8t', 'plugin::content-manager.explorer.delete', '{}', 'plugin::users-permissions.user', '{}', '[]', '2024-12-01 22:45:18.509000', '2024-12-01 22:45:18.509000', '2024-12-01 22:45:18.509000', NULL, NULL, NULL),
(77, 'j37apw054zj2vdxku0c03vse', 'plugin::content-manager.explorer.delete', '{}', 'api::about.about', '{}', '[]', '2024-12-01 22:45:18.512000', '2024-12-01 22:45:18.512000', '2024-12-01 22:45:18.512000', NULL, NULL, NULL),
(78, 'ncta82y0k5xuhyun0km6se75', 'plugin::content-manager.explorer.delete', '{}', 'api::article.article', '{}', '[]', '2024-12-01 22:45:18.514000', '2024-12-01 22:45:18.514000', '2024-12-01 22:45:18.514000', NULL, NULL, NULL),
(79, 'crc7zztka93rtrflg4kybuyg', 'plugin::content-manager.explorer.delete', '{}', 'api::author.author', '{}', '[]', '2024-12-01 22:45:18.516000', '2024-12-01 22:45:18.516000', '2024-12-01 22:45:18.516000', NULL, NULL, NULL),
(80, 'gx1dk1gom0iwgoeprziti7l9', 'plugin::content-manager.explorer.delete', '{}', 'api::category.category', '{}', '[]', '2024-12-01 22:45:18.518000', '2024-12-01 22:45:18.518000', '2024-12-01 22:45:18.518000', NULL, NULL, NULL),
(81, 'dnkiync61fjiyntp84s8nc5v', 'plugin::content-manager.explorer.delete', '{}', 'api::global.global', '{}', '[]', '2024-12-01 22:45:18.521000', '2024-12-01 22:45:18.521000', '2024-12-01 22:45:18.521000', NULL, NULL, NULL),
(82, 'mhdci8qngvfnwy4dtgujkg1z', 'plugin::content-manager.explorer.publish', '{}', 'plugin::users-permissions.user', '{}', '[]', '2024-12-01 22:45:18.523000', '2024-12-01 22:45:18.523000', '2024-12-01 22:45:18.523000', NULL, NULL, NULL),
(83, 'zoklt5furns0lsiotc722mqt', 'plugin::content-manager.explorer.publish', '{}', 'api::about.about', '{}', '[]', '2024-12-01 22:45:18.527000', '2024-12-01 22:45:18.527000', '2024-12-01 22:45:18.527000', NULL, NULL, NULL),
(84, 'axtjh6cjetp62p21oa0f2dhk', 'plugin::content-manager.explorer.publish', '{}', 'api::article.article', '{}', '[]', '2024-12-01 22:45:18.532000', '2024-12-01 22:45:18.532000', '2024-12-01 22:45:18.532000', NULL, NULL, NULL),
(85, 'jlp76oq8phblld21n9y3buej', 'plugin::content-manager.explorer.publish', '{}', 'api::author.author', '{}', '[]', '2024-12-01 22:45:18.535000', '2024-12-01 22:45:18.535000', '2024-12-01 22:45:18.535000', NULL, NULL, NULL),
(86, 'f37zbep3ae3owgvejt9fxouj', 'plugin::content-manager.explorer.publish', '{}', 'api::category.category', '{}', '[]', '2024-12-01 22:45:18.538000', '2024-12-01 22:45:18.538000', '2024-12-01 22:45:18.538000', NULL, NULL, NULL),
(87, 'kc5qshgh38rx35bwvzjr00gg', 'plugin::content-manager.explorer.publish', '{}', 'api::global.global', '{}', '[]', '2024-12-01 22:45:18.542000', '2024-12-01 22:45:18.542000', '2024-12-01 22:45:18.542000', NULL, NULL, NULL),
(88, 'cwtrqtb3bdxku9vv9196fzol', 'plugin::content-manager.single-types.configure-view', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.545000', '2024-12-01 22:45:18.545000', '2024-12-01 22:45:18.545000', NULL, NULL, NULL),
(89, 'qxnmw91r8bs1he25nqtj1q0y', 'plugin::content-manager.collection-types.configure-view', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.547000', '2024-12-01 22:45:18.547000', '2024-12-01 22:45:18.548000', NULL, NULL, NULL),
(90, 'oteag4ohtpdpefyioeo8g495', 'plugin::content-manager.components.configure-layout', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.550000', '2024-12-01 22:45:18.550000', '2024-12-01 22:45:18.550000', NULL, NULL, NULL),
(91, 'qm88svrw3v5zcpyutzgxqh0e', 'plugin::content-type-builder.read', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.553000', '2024-12-01 22:45:18.553000', '2024-12-01 22:45:18.553000', NULL, NULL, NULL),
(92, 't3wsz37xmy2qjmpv8h6qyvmw', 'plugin::email.settings.read', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.556000', '2024-12-01 22:45:18.556000', '2024-12-01 22:45:18.556000', NULL, NULL, NULL),
(93, 'q0y5wq4o80k8dtgtokbxio7d', 'plugin::upload.read', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.560000', '2024-12-01 22:45:18.560000', '2024-12-01 22:45:18.560000', NULL, NULL, NULL),
(94, 'cxgipihcw1388zowt1c4cwbj', 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.568000', '2024-12-01 22:45:18.568000', '2024-12-01 22:45:18.568000', NULL, NULL, NULL),
(95, 'orold1frzrf0paeegxbvhgua', 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.574000', '2024-12-01 22:45:18.574000', '2024-12-01 22:45:18.574000', NULL, NULL, NULL),
(96, 'j4p75kxwfc4wwnbpxtfdt6hf', 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.577000', '2024-12-01 22:45:18.577000', '2024-12-01 22:45:18.577000', NULL, NULL, NULL),
(97, 'ps93zibklnswpj8tw17tponm', 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.580000', '2024-12-01 22:45:18.580000', '2024-12-01 22:45:18.580000', NULL, NULL, NULL),
(98, 'z65j0y11qlat5tl0ssdgfd6y', 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.583000', '2024-12-01 22:45:18.583000', '2024-12-01 22:45:18.583000', NULL, NULL, NULL),
(99, 'd74icghw8hmnmrokyvpnvy5a', 'plugin::upload.settings.read', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.586000', '2024-12-01 22:45:18.586000', '2024-12-01 22:45:18.586000', NULL, NULL, NULL),
(100, 'dfkv6ijn2lljkmb5bjbarrds', 'plugin::i18n.locale.create', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.589000', '2024-12-01 22:45:18.589000', '2024-12-01 22:45:18.589000', NULL, NULL, NULL),
(101, 'c7en9m72ux3jfu1axvfd7dzc', 'plugin::i18n.locale.read', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.595000', '2024-12-01 22:45:18.595000', '2024-12-01 22:45:18.595000', NULL, NULL, NULL),
(102, 'w9jldr9p9hs1llul5hth3f61', 'plugin::i18n.locale.update', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.598000', '2024-12-01 22:45:18.598000', '2024-12-01 22:45:18.598000', NULL, NULL, NULL),
(103, 'cd3bken03hk5eoo7y25htr90', 'plugin::i18n.locale.delete', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.601000', '2024-12-01 22:45:18.601000', '2024-12-01 22:45:18.601000', NULL, NULL, NULL),
(104, 'lwxomzdz6uprkr3vsmwgqk2g', 'plugin::users-permissions.roles.create', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.604000', '2024-12-01 22:45:18.604000', '2024-12-01 22:45:18.604000', NULL, NULL, NULL),
(105, 'ae57smsga3tfzj2meih0k0vs', 'plugin::users-permissions.roles.read', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.607000', '2024-12-01 22:45:18.607000', '2024-12-01 22:45:18.607000', NULL, NULL, NULL),
(106, 'y6tkkeafrvhgng6myq65r2sp', 'plugin::users-permissions.roles.update', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.609000', '2024-12-01 22:45:18.609000', '2024-12-01 22:45:18.610000', NULL, NULL, NULL),
(107, 'j0uxsgdrw081mkynkq6jvs7h', 'plugin::users-permissions.roles.delete', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.612000', '2024-12-01 22:45:18.612000', '2024-12-01 22:45:18.612000', NULL, NULL, NULL),
(108, 'l9d0lcwe1bwcn6298mxaem36', 'plugin::users-permissions.providers.read', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.616000', '2024-12-01 22:45:18.616000', '2024-12-01 22:45:18.616000', NULL, NULL, NULL),
(109, 'dfsklgg5r5bc6shpzfx3byb0', 'plugin::users-permissions.providers.update', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.619000', '2024-12-01 22:45:18.619000', '2024-12-01 22:45:18.619000', NULL, NULL, NULL),
(110, 'jfqlkl4u49iupbix0nedzvru', 'plugin::users-permissions.email-templates.read', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.623000', '2024-12-01 22:45:18.623000', '2024-12-01 22:45:18.623000', NULL, NULL, NULL),
(111, 'qc4hjoh6y7y8uws37m0lk9f9', 'plugin::users-permissions.email-templates.update', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.626000', '2024-12-01 22:45:18.626000', '2024-12-01 22:45:18.626000', NULL, NULL, NULL),
(112, 'b3s128ds63h8qjqukb4d1fxr', 'plugin::users-permissions.advanced-settings.read', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.629000', '2024-12-01 22:45:18.629000', '2024-12-01 22:45:18.629000', NULL, NULL, NULL),
(113, 'kyetnuaoaj9gl3pz0136tszc', 'plugin::users-permissions.advanced-settings.update', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.631000', '2024-12-01 22:45:18.631000', '2024-12-01 22:45:18.632000', NULL, NULL, NULL),
(114, 'nxz61czqdtw8fcw2m0cer9ln', 'admin::marketplace.read', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.634000', '2024-12-01 22:45:18.634000', '2024-12-01 22:45:18.634000', NULL, NULL, NULL),
(115, 'p05vtrdj07tii19qg1aam0rw', 'admin::webhooks.create', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.637000', '2024-12-01 22:45:18.637000', '2024-12-01 22:45:18.638000', NULL, NULL, NULL),
(116, 'jf7z1wun9hfzfw3u3uwvqdki', 'admin::webhooks.read', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.642000', '2024-12-01 22:45:18.642000', '2024-12-01 22:45:18.642000', NULL, NULL, NULL),
(117, 'coytahwpsef6rcjst72p55f0', 'admin::webhooks.update', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.646000', '2024-12-01 22:45:18.646000', '2024-12-01 22:45:18.646000', NULL, NULL, NULL),
(118, 'u2dpgwa1agnnfr81vifu2yaz', 'admin::webhooks.delete', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.649000', '2024-12-01 22:45:18.649000', '2024-12-01 22:45:18.650000', NULL, NULL, NULL),
(119, 'fjas12w6685d8jd7ksmb7gnn', 'admin::users.create', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.654000', '2024-12-01 22:45:18.654000', '2024-12-01 22:45:18.654000', NULL, NULL, NULL),
(120, 'x57jcjrpt5vj32kkb4h9o8i1', 'admin::users.read', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.658000', '2024-12-01 22:45:18.658000', '2024-12-01 22:45:18.658000', NULL, NULL, NULL),
(121, 'ww4ur5tsoahv7b9mlja59swz', 'admin::users.update', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.661000', '2024-12-01 22:45:18.661000', '2024-12-01 22:45:18.661000', NULL, NULL, NULL),
(122, 'r879yiurbtoeygxbbnouplwr', 'admin::users.delete', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.664000', '2024-12-01 22:45:18.664000', '2024-12-01 22:45:18.664000', NULL, NULL, NULL),
(123, 'koidu3tlvd2hzy3ma9hvhwsz', 'admin::roles.create', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.668000', '2024-12-01 22:45:18.668000', '2024-12-01 22:45:18.668000', NULL, NULL, NULL),
(124, 'lddqvscyrjop28hukm1aq0jk', 'admin::roles.read', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.670000', '2024-12-01 22:45:18.670000', '2024-12-01 22:45:18.670000', NULL, NULL, NULL),
(125, 'oz22nrrif4fhils1lf1s1lrv', 'admin::roles.update', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.673000', '2024-12-01 22:45:18.673000', '2024-12-01 22:45:18.673000', NULL, NULL, NULL),
(126, 'jacc8wum5z4zw6uhmk4tmk0j', 'admin::roles.delete', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.676000', '2024-12-01 22:45:18.676000', '2024-12-01 22:45:18.677000', NULL, NULL, NULL),
(127, 'f5owm2fkj677ryw97msiby8e', 'admin::api-tokens.access', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.679000', '2024-12-01 22:45:18.679000', '2024-12-01 22:45:18.679000', NULL, NULL, NULL),
(128, 'nulf3wld1bevkv47bnh5t4um', 'admin::api-tokens.create', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.683000', '2024-12-01 22:45:18.683000', '2024-12-01 22:45:18.683000', NULL, NULL, NULL),
(129, 'j65a7zovyiw43b66uo2nb0fv', 'admin::api-tokens.read', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.689000', '2024-12-01 22:45:18.689000', '2024-12-01 22:45:18.689000', NULL, NULL, NULL),
(130, 'p6essmtd7nyc4rsy6j54fxl7', 'admin::api-tokens.update', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.693000', '2024-12-01 22:45:18.693000', '2024-12-01 22:45:18.693000', NULL, NULL, NULL),
(131, 'bgpxgsr9pnplb7b07brwq3b1', 'admin::api-tokens.regenerate', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.696000', '2024-12-01 22:45:18.696000', '2024-12-01 22:45:18.697000', NULL, NULL, NULL),
(132, 'fbk1dbnqypm9kq6dvwdpnmd1', 'admin::api-tokens.delete', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.701000', '2024-12-01 22:45:18.701000', '2024-12-01 22:45:18.702000', NULL, NULL, NULL),
(133, 'nm9podt3veycl2qnferlki1l', 'admin::project-settings.update', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.705000', '2024-12-01 22:45:18.705000', '2024-12-01 22:45:18.705000', NULL, NULL, NULL),
(134, 'ksgtgtdc702c4yq5zjqju5h5', 'admin::project-settings.read', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.708000', '2024-12-01 22:45:18.708000', '2024-12-01 22:45:18.708000', NULL, NULL, NULL),
(135, 'lbhs6hh3v6nlzgjgvbfhhu7h', 'admin::transfer.tokens.access', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.712000', '2024-12-01 22:45:18.712000', '2024-12-01 22:45:18.712000', NULL, NULL, NULL),
(136, 'unzsccudz3ttwi8girq5md70', 'admin::transfer.tokens.create', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.716000', '2024-12-01 22:45:18.716000', '2024-12-01 22:45:18.716000', NULL, NULL, NULL),
(137, 'mtwrxibdii5brg0aovxfed60', 'admin::transfer.tokens.read', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.720000', '2024-12-01 22:45:18.720000', '2024-12-01 22:45:18.720000', NULL, NULL, NULL),
(138, 'kl27o3mbyjdxixyluucacvnr', 'admin::transfer.tokens.update', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.724000', '2024-12-01 22:45:18.724000', '2024-12-01 22:45:18.724000', NULL, NULL, NULL),
(139, 'f5yj68q4ewpot9xi1bi5urbq', 'admin::transfer.tokens.regenerate', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.726000', '2024-12-01 22:45:18.726000', '2024-12-01 22:45:18.726000', NULL, NULL, NULL),
(140, 'hkkqgwedpfaowtg0lelu563n', 'admin::transfer.tokens.delete', '{}', NULL, '{}', '[]', '2024-12-01 22:45:18.729000', '2024-12-01 22:45:18.729000', '2024-12-01 22:45:18.730000', NULL, NULL, NULL),
(147, 'm9kju2blnaiw35ksv07kz316', 'plugin::content-manager.explorer.create', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2025-01-09 05:54:32.321000', '2025-01-09 05:54:32.321000', '2025-01-09 05:54:32.322000', NULL, NULL, NULL),
(148, 'dc8317puqbgysoxjp7xfwyvu', 'plugin::content-manager.explorer.create', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[]', '2025-01-09 05:54:32.326000', '2025-01-09 05:54:32.326000', '2025-01-09 05:54:32.326000', NULL, NULL, NULL),
(149, 'i2kyx4y782kzcidntqrl34zi', 'plugin::content-manager.explorer.create', '{}', 'api::article.article', '{\"fields\":[\"content\",\"slug\",\"author\",\"category\",\"blocks\",\"title\",\"image\"]}', '[]', '2025-01-09 05:54:32.328000', '2025-01-09 05:54:32.328000', '2025-01-09 05:54:32.329000', NULL, NULL, NULL),
(150, 'scelcmycrtzbjt7q32p9wns0', 'plugin::content-manager.explorer.create', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\",\"article\"]}', '[]', '2025-01-09 05:54:32.331000', '2025-01-09 05:54:32.331000', '2025-01-09 05:54:32.331000', NULL, NULL, NULL),
(151, 'zo6bxtt8sfemjj0jenv65fea', 'plugin::content-manager.explorer.create', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"description\",\"article\"]}', '[]', '2025-01-09 05:54:32.334000', '2025-01-09 05:54:32.334000', '2025-01-09 05:54:32.334000', NULL, NULL, NULL),
(152, 'glt8kj39gl7r0ykps8jyio75', 'plugin::content-manager.explorer.create', '{}', 'api::invite-token.invite-token', '{\"fields\":[\"email\",\"token\",\"accepted\",\"user\",\"role\"]}', '[]', '2025-01-09 05:54:32.336000', '2025-01-09 05:54:32.336000', '2025-01-09 05:54:32.336000', NULL, NULL, NULL),
(153, 'bt5tdwfq01ak5smb62ei2s40', 'plugin::content-manager.explorer.create', '{}', 'api::userr.userr', '{\"fields\":[\"name\",\"email\",\"role\"]}', '[]', '2025-01-09 05:54:32.339000', '2025-01-09 05:54:32.339000', '2025-01-09 05:54:32.339000', NULL, NULL, NULL),
(154, 'f0ezbx283wzn4471wwccyjzz', 'plugin::content-manager.explorer.read', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2025-01-09 05:54:32.341000', '2025-01-09 05:54:32.341000', '2025-01-09 05:54:32.341000', NULL, NULL, NULL),
(155, 'ttj92auvjqrhbzzewrwn8epv', 'plugin::content-manager.explorer.read', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[]', '2025-01-09 05:54:32.343000', '2025-01-09 05:54:32.343000', '2025-01-09 05:54:32.344000', NULL, NULL, NULL),
(156, 'g7kdq7au5g8co2vpt8tgn8ud', 'plugin::content-manager.explorer.read', '{}', 'api::article.article', '{\"fields\":[\"content\",\"slug\",\"author\",\"category\",\"blocks\",\"title\",\"image\"]}', '[]', '2025-01-09 05:54:32.346000', '2025-01-09 05:54:32.346000', '2025-01-09 05:54:32.346000', NULL, NULL, NULL),
(157, 'p4okh8lbcmp3h546v85iiueg', 'plugin::content-manager.explorer.read', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\",\"article\"]}', '[]', '2025-01-09 05:54:32.348000', '2025-01-09 05:54:32.348000', '2025-01-09 05:54:32.348000', NULL, NULL, NULL),
(158, 'ni150jojpz4w0anl4n9c9y6v', 'plugin::content-manager.explorer.read', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"description\",\"article\"]}', '[]', '2025-01-09 05:54:32.350000', '2025-01-09 05:54:32.350000', '2025-01-09 05:54:32.350000', NULL, NULL, NULL),
(159, 'nucjai7dz7fb4xwkos75766b', 'plugin::content-manager.explorer.read', '{}', 'api::invite-token.invite-token', '{\"fields\":[\"email\",\"token\",\"accepted\",\"user\",\"role\"]}', '[]', '2025-01-09 05:54:32.352000', '2025-01-09 05:54:32.352000', '2025-01-09 05:54:32.352000', NULL, NULL, NULL),
(160, 'mqckjlzz09je1twixyydfs1e', 'plugin::content-manager.explorer.read', '{}', 'api::userr.userr', '{\"fields\":[\"name\",\"email\",\"role\"]}', '[]', '2025-01-09 05:54:32.354000', '2025-01-09 05:54:32.354000', '2025-01-09 05:54:32.354000', NULL, NULL, NULL),
(161, 'vxk4wrnipngln9x9wsgivw9k', 'plugin::content-manager.explorer.update', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2025-01-09 05:54:32.356000', '2025-01-09 05:54:32.356000', '2025-01-09 05:54:32.356000', NULL, NULL, NULL),
(162, 'mbr83v6w4jvdje5muwg7m84d', 'plugin::content-manager.explorer.update', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[]', '2025-01-09 05:54:32.358000', '2025-01-09 05:54:32.358000', '2025-01-09 05:54:32.358000', NULL, NULL, NULL),
(163, 'wxhtlo4z13uq015th6jvl7y7', 'plugin::content-manager.explorer.update', '{}', 'api::article.article', '{\"fields\":[\"content\",\"slug\",\"author\",\"category\",\"blocks\",\"title\",\"image\"]}', '[]', '2025-01-09 05:54:32.360000', '2025-01-09 05:54:32.360000', '2025-01-09 05:54:32.360000', NULL, NULL, NULL),
(164, 'qhxgdgp958fzeys1b0fc807u', 'plugin::content-manager.explorer.update', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\",\"article\"]}', '[]', '2025-01-09 05:54:32.362000', '2025-01-09 05:54:32.362000', '2025-01-09 05:54:32.362000', NULL, NULL, NULL),
(165, 'ovl0lf674uyeycg29lsionq3', 'plugin::content-manager.explorer.update', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"description\",\"article\"]}', '[]', '2025-01-09 05:54:32.364000', '2025-01-09 05:54:32.364000', '2025-01-09 05:54:32.364000', NULL, NULL, NULL),
(166, 'rd7idr5hl8cc6qyy56j3whxf', 'plugin::content-manager.explorer.update', '{}', 'api::invite-token.invite-token', '{\"fields\":[\"email\",\"token\",\"accepted\",\"user\",\"role\"]}', '[]', '2025-01-09 05:54:32.366000', '2025-01-09 05:54:32.366000', '2025-01-09 05:54:32.366000', NULL, NULL, NULL),
(167, 'dw171k60odhg8q5813y55t5v', 'plugin::content-manager.explorer.update', '{}', 'api::userr.userr', '{\"fields\":[\"name\",\"email\",\"role\"]}', '[]', '2025-01-09 05:54:32.368000', '2025-01-09 05:54:32.368000', '2025-01-09 05:54:32.368000', NULL, NULL, NULL),
(168, 'd28awpy4eizwrth7ueirwhgz', 'plugin::content-manager.explorer.delete', '{}', 'api::invite-token.invite-token', '{}', '[]', '2025-01-09 05:54:32.370000', '2025-01-09 05:54:32.370000', '2025-01-09 05:54:32.370000', NULL, NULL, NULL),
(169, 'a1xu4n89ni91gkilqtig8xvh', 'plugin::content-manager.explorer.delete', '{}', 'api::userr.userr', '{}', '[]', '2025-01-09 05:54:32.372000', '2025-01-09 05:54:32.372000', '2025-01-09 05:54:32.372000', NULL, NULL, NULL),
(170, 'z8402msiowwiqk25xk1idsxg', 'plugin::content-manager.explorer.publish', '{}', 'api::invite-token.invite-token', '{}', '[]', '2025-01-09 05:54:32.374000', '2025-01-09 05:54:32.374000', '2025-01-09 05:54:32.374000', NULL, NULL, NULL),
(171, 'h3f1yyuwcg66zt5swr6vhzj1', 'plugin::content-manager.explorer.publish', '{}', 'api::userr.userr', '{}', '[]', '2025-01-09 05:54:32.376000', '2025-01-09 05:54:32.376000', '2025-01-09 05:54:32.376000', NULL, NULL, NULL),
(175, 'muez6p2y2tunhqsp4cxxz8ki', 'plugin::upload.settings.read', '{}', NULL, '{}', '[]', '2025-01-09 06:02:50.799000', '2025-01-09 06:02:50.799000', '2025-01-09 06:02:50.799000', NULL, NULL, NULL),
(176, 'jr2mr410jeo781qk1d0qik7i', 'admin::webhooks.create', '{}', NULL, '{}', '[]', '2025-01-09 06:02:50.801000', '2025-01-09 06:02:50.801000', '2025-01-09 06:02:50.801000', NULL, NULL, NULL),
(177, 't279hiq6shk2awuedxsypxwu', 'admin::webhooks.read', '{}', NULL, '{}', '[]', '2025-01-09 06:02:50.804000', '2025-01-09 06:02:50.804000', '2025-01-09 06:02:50.804000', NULL, NULL, NULL),
(178, 'lptf9l2rkrcb4ha21tvtfrx5', 'admin::webhooks.update', '{}', NULL, '{}', '[]', '2025-01-09 06:02:50.808000', '2025-01-09 06:02:50.808000', '2025-01-09 06:02:50.809000', NULL, NULL, NULL),
(179, 'nhd1rg7bpg8h5d4z2dynhc7v', 'admin::api-tokens.access', '{}', NULL, '{}', '[]', '2025-01-09 06:02:50.812000', '2025-01-09 06:02:50.812000', '2025-01-09 06:02:50.812000', NULL, NULL, NULL),
(180, 'e202vx2jfcn7a47148dsnxh8', 'admin::project-settings.read', '{}', NULL, '{}', '[]', '2025-01-09 06:02:50.816000', '2025-01-09 06:02:50.816000', '2025-01-09 06:02:50.816000', NULL, NULL, NULL),
(181, 'fzlu3hk6b7zm44hsy5ojjhw4', 'admin::transfer.tokens.access', '{}', NULL, '{}', '[]', '2025-01-09 06:02:50.819000', '2025-01-09 06:02:50.819000', '2025-01-09 06:02:50.820000', NULL, NULL, NULL),
(182, 'j9c939taftu50efd1rbsp5dc', 'admin::transfer.tokens.read', '{}', NULL, '{}', '[]', '2025-01-09 06:02:50.826000', '2025-01-09 06:02:50.826000', '2025-01-09 06:02:50.826000', NULL, NULL, NULL),
(183, 'rhc197rvm5ajp08t3uw7gjbi', 'plugin::content-manager.explorer.create', '{}', 'api::article.article', '{\"fields\":[\"content\",\"slug\",\"author\",\"category\",\"blocks\",\"title\",\"image\"]}', '[\"admin::is-creator\"]', '2025-01-09 06:02:50.830000', '2025-01-09 06:02:50.830000', '2025-01-09 06:02:50.830000', NULL, NULL, NULL),
(184, 'qez0kksiajjqoavh2vl1gg2c', 'plugin::content-manager.explorer.read', '{}', 'api::article.article', '{\"fields\":[\"content\",\"slug\",\"author\",\"category\",\"blocks\",\"title\",\"image\"]}', '[\"admin::is-creator\"]', '2025-01-09 06:02:50.834000', '2025-01-09 06:02:50.834000', '2025-01-09 06:02:50.834000', NULL, NULL, NULL),
(185, 'zpztzvptxr72ub7bctjpc6uv', 'plugin::content-manager.explorer.update', '{}', 'api::article.article', '{\"fields\":[\"content\",\"slug\",\"author\",\"category\",\"blocks\",\"title\",\"image\"]}', '[\"admin::is-creator\"]', '2025-01-09 06:02:50.837000', '2025-01-09 06:02:50.837000', '2025-01-09 06:02:50.838000', NULL, NULL, NULL),
(186, 'ttd02i2isq533xuv80wykgp1', 'plugin::content-manager.explorer.create', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\",\"article\"]}', '[\"admin::is-creator\"]', '2025-01-09 06:02:50.841000', '2025-01-09 06:02:50.841000', '2025-01-09 06:02:50.841000', NULL, NULL, NULL),
(187, 'cc10da9kgq2ulppqu787km7s', 'plugin::content-manager.explorer.read', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\",\"article\"]}', '[\"admin::is-creator\"]', '2025-01-09 06:02:50.853000', '2025-01-09 06:02:50.853000', '2025-01-09 06:02:50.853000', NULL, NULL, NULL),
(188, 'vj7wronbhsq7bsl99ezify41', 'plugin::content-manager.explorer.update', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\",\"article\"]}', '[\"admin::is-creator\"]', '2025-01-09 06:02:50.856000', '2025-01-09 06:02:50.856000', '2025-01-09 06:02:50.856000', NULL, NULL, NULL),
(189, 'aputhleuyatafrg8pii9re3v', 'plugin::content-manager.components.configure-layout', '{}', NULL, '{}', '[\"admin::has-same-role-as-creator\"]', '2025-01-09 06:03:05.092000', '2025-01-09 06:03:05.092000', '2025-01-09 06:03:05.092000', NULL, NULL, NULL),
(190, 'em9uvfzz3a4z5mtgu2qssmda', 'plugin::content-manager.collection-types.configure-view', '{}', NULL, '{}', '[\"admin::has-same-role-as-creator\"]', '2025-01-09 06:03:11.287000', '2025-01-09 06:03:11.287000', '2025-01-09 06:03:11.287000', NULL, NULL, NULL),
(191, 'qbnoq70sa1inu6yhjerrouwj', 'plugin::content-manager.single-types.configure-view', '{}', NULL, '{}', '[\"admin::has-same-role-as-creator\"]', '2025-01-09 06:03:26.172000', '2025-01-09 06:03:26.172000', '2025-01-09 06:03:26.172000', NULL, NULL, NULL),
(193, 'scfib3udv3muoxi70bifyehe', 'plugin::upload.read', '{}', NULL, '{}', '[\"admin::has-same-role-as-creator\"]', '2025-01-09 06:03:36.471000', '2025-01-09 06:03:36.471000', '2025-01-09 06:03:36.471000', NULL, NULL, NULL),
(194, 'm0kh8nf5hl60ukxvrjsmk91t', 'plugin::upload.assets.create', '{}', NULL, '{}', '[\"admin::has-same-role-as-creator\"]', '2025-01-09 06:04:06.606000', '2025-01-09 06:04:06.606000', '2025-01-09 06:04:06.606000', NULL, NULL, NULL),
(195, 'wxcp0tzxx7hqbyqx69edklc7', 'plugin::upload.assets.update', '{}', NULL, '{}', '[\"admin::has-same-role-as-creator\"]', '2025-01-09 06:04:06.612000', '2025-01-09 06:04:06.612000', '2025-01-09 06:04:06.612000', NULL, NULL, NULL),
(196, 'u02nob910bqmr3pfqpdte6jw', 'plugin::users-permissions.providers.read', '{}', NULL, '{}', '[]', '2025-01-09 06:04:06.615000', '2025-01-09 06:04:06.615000', '2025-01-09 06:04:06.615000', NULL, NULL, NULL),
(197, 'x6mua6uzpqlolcj8ac0jrrxg', 'plugin::users-permissions.email-templates.read', '{}', NULL, '{}', '[]', '2025-01-09 06:04:06.617000', '2025-01-09 06:04:06.617000', '2025-01-09 06:04:06.617000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions_role_lnk`
--

CREATE TABLE `admin_permissions_role_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `admin_permissions_role_lnk`
--

INSERT INTO `admin_permissions_role_lnk` (`id`, `permission_id`, `role_id`, `permission_ord`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 2),
(3, 3, 2, 3),
(4, 4, 2, 4),
(5, 5, 2, 5),
(6, 6, 2, 6),
(7, 7, 2, 7),
(8, 8, 2, 8),
(9, 9, 2, 9),
(10, 10, 2, 10),
(11, 11, 2, 11),
(12, 12, 2, 12),
(13, 13, 2, 13),
(14, 14, 2, 14),
(15, 15, 2, 15),
(16, 16, 2, 16),
(17, 17, 2, 17),
(18, 18, 2, 18),
(19, 19, 2, 19),
(20, 20, 2, 20),
(21, 21, 2, 21),
(22, 22, 2, 22),
(23, 23, 2, 23),
(24, 24, 2, 24),
(25, 25, 2, 25),
(26, 26, 2, 26),
(27, 27, 2, 27),
(28, 28, 2, 28),
(29, 29, 2, 29),
(30, 30, 2, 30),
(31, 31, 2, 31),
(32, 32, 3, 1),
(35, 35, 3, 4),
(36, 36, 3, 5),
(37, 37, 3, 6),
(40, 40, 3, 9),
(41, 41, 3, 10),
(42, 42, 3, 11),
(45, 45, 3, 14),
(46, 46, 3, 15),
(47, 47, 3, 16),
(48, 48, 3, 17),
(49, 49, 3, 18),
(50, 50, 3, 19),
(51, 51, 3, 20),
(53, 53, 3, 22),
(56, 56, 3, 25),
(57, 57, 3, 26),
(63, 63, 1, 6),
(69, 69, 1, 12),
(75, 75, 1, 18),
(76, 76, 1, 19),
(77, 77, 1, 20),
(78, 78, 1, 21),
(79, 79, 1, 22),
(80, 80, 1, 23),
(81, 81, 1, 24),
(82, 82, 1, 25),
(83, 83, 1, 26),
(84, 84, 1, 27),
(85, 85, 1, 28),
(86, 86, 1, 29),
(87, 87, 1, 30),
(88, 88, 1, 31),
(89, 89, 1, 32),
(90, 90, 1, 33),
(91, 91, 1, 34),
(92, 92, 1, 35),
(93, 93, 1, 36),
(94, 94, 1, 37),
(95, 95, 1, 38),
(96, 96, 1, 39),
(97, 97, 1, 40),
(98, 98, 1, 41),
(99, 99, 1, 42),
(100, 100, 1, 43),
(101, 101, 1, 44),
(102, 102, 1, 45),
(103, 103, 1, 46),
(104, 104, 1, 47),
(105, 105, 1, 48),
(106, 106, 1, 49),
(107, 107, 1, 50),
(108, 108, 1, 51),
(109, 109, 1, 52),
(110, 110, 1, 53),
(111, 111, 1, 54),
(112, 112, 1, 55),
(113, 113, 1, 56),
(114, 114, 1, 57),
(115, 115, 1, 58),
(116, 116, 1, 59),
(117, 117, 1, 60),
(118, 118, 1, 61),
(119, 119, 1, 62),
(120, 120, 1, 63),
(121, 121, 1, 64),
(122, 122, 1, 65),
(123, 123, 1, 66),
(124, 124, 1, 67),
(125, 125, 1, 68),
(126, 126, 1, 69),
(127, 127, 1, 70),
(128, 128, 1, 71),
(129, 129, 1, 72),
(130, 130, 1, 73),
(131, 131, 1, 74),
(132, 132, 1, 75),
(133, 133, 1, 76),
(134, 134, 1, 77),
(135, 135, 1, 78),
(136, 136, 1, 79),
(137, 137, 1, 80),
(138, 138, 1, 81),
(139, 139, 1, 82),
(140, 140, 1, 83),
(147, 147, 1, 84),
(148, 148, 1, 85),
(149, 149, 1, 86),
(150, 150, 1, 87),
(151, 151, 1, 88),
(152, 152, 1, 89),
(153, 153, 1, 90),
(154, 154, 1, 91),
(155, 155, 1, 92),
(156, 156, 1, 93),
(157, 157, 1, 94),
(158, 158, 1, 95),
(159, 159, 1, 96),
(160, 160, 1, 97),
(161, 161, 1, 98),
(162, 162, 1, 99),
(163, 163, 1, 100),
(164, 164, 1, 101),
(165, 165, 1, 102),
(166, 166, 1, 103),
(167, 167, 1, 104),
(168, 168, 1, 105),
(169, 169, 1, 106),
(170, 170, 1, 107),
(171, 171, 1, 108),
(175, 175, 3, 30),
(176, 176, 3, 31),
(177, 177, 3, 32),
(178, 178, 3, 33),
(179, 179, 3, 34),
(180, 180, 3, 35),
(181, 181, 3, 36),
(182, 182, 3, 37),
(183, 183, 3, 38),
(184, 184, 3, 39),
(185, 185, 3, 40),
(186, 186, 3, 41),
(187, 187, 3, 42),
(188, 188, 3, 43),
(189, 189, 3, 44),
(190, 190, 3, 45),
(191, 191, 3, 46),
(193, 193, 3, 48),
(194, 194, 3, 49),
(195, 195, 3, 50),
(196, 196, 3, 51),
(197, 197, 3, 52);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `document_id`, `name`, `code`, `description`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 've0qf77f68w37mc45cwldb19', 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2024-12-01 22:45:18.221000', '2024-12-01 22:45:18.221000', '2024-12-01 22:45:18.221000', NULL, NULL, NULL),
(2, 'irfeuc1azrwjvtmsv0sbjo9i', 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2024-12-01 22:45:18.227000', '2024-12-01 22:45:18.227000', '2024-12-01 22:45:18.227000', NULL, NULL, NULL),
(3, 'jufeddyrngn70sbtb56ev5i5', 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2024-12-01 22:45:18.230000', '2025-01-09 06:08:43.661000', '2024-12-01 22:45:18.230000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `document_id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'h024h9tyj3vpb79g00yksvpk', 'supera', 'admin', NULL, 'superadmin@mail.com', '$2a$10$lKC0i34kqnDx6Hi/sNcwJeiEmKImx61k24RfdUx3qGQLg47efduH.', NULL, NULL, 1, 0, NULL, '2024-12-01 22:46:26.702000', '2024-12-01 22:46:26.702000', '2024-12-01 22:46:26.703000', NULL, NULL, NULL),
(2, 'hzczp93cxc4vb8odixnihe92', 'Farida', ' ', NULL, 'farida@mail.com', '$2a$10$QGPu854u7mCZyN32Qu15pextx8zgszp33CF7HB7E5HUEMI2.ii3Ju', NULL, '5a3c5d2b3dfb32f36623d301caec6cf98773f4a5', 1, 0, NULL, '2025-01-09 06:00:31.418000', '2025-01-09 06:06:09.377000', '2025-01-09 06:00:31.418000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_roles_lnk`
--

CREATE TABLE `admin_users_roles_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `role_ord` double UNSIGNED DEFAULT NULL,
  `user_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `admin_users_roles_lnk`
--

INSERT INTO `admin_users_roles_lnk` (`id`, `user_id`, `role_id`, `role_ord`, `user_ord`) VALUES
(1, 1, 1, 1, 1),
(2, 2, 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `document_id`, `title`, `slug`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`, `content`) VALUES
(1, 'sswnpm4ncea12nkgicxmrz0r', 'test', 'test', '2024-12-01 22:56:13.049000', '2024-12-01 22:56:13.049000', NULL, 1, 1, NULL, NULL),
(2, 'sswnpm4ncea12nkgicxmrz0r', 'test', 'test', '2024-12-01 22:56:13.049000', '2024-12-01 22:56:13.049000', '2024-12-01 22:56:13.111000', 1, 1, NULL, NULL),
(3, 'tnl66pf6ho8km6ixi0ewf5on', 'test2', 'asdd', '2024-12-01 22:58:06.789000', '2024-12-01 22:58:48.931000', NULL, 1, 1, NULL, NULL),
(5, 'hr5kbply7zul3tkss2b6oika', 'test3', 'tes3', '2024-12-01 23:00:04.647000', '2024-12-01 23:01:05.433000', NULL, 1, 1, NULL, NULL),
(6, 'hr5kbply7zul3tkss2b6oika', 'test3', 'tes3', '2024-12-01 23:00:04.647000', '2024-12-01 23:01:05.433000', '2024-12-01 23:01:05.477000', 1, 1, NULL, NULL),
(7, 'tnl66pf6ho8km6ixi0ewf5on', 'test2', 'asdd', '2024-12-01 22:58:06.789000', '2024-12-01 22:58:48.931000', '2024-12-01 23:01:31.061000', 1, 1, NULL, NULL),
(8, 'at4tgrjfn3qktkw7an4utd00', 'asd', 'asddd', '2024-12-01 23:02:22.984000', '2024-12-01 23:02:22.984000', NULL, 1, 1, NULL, NULL),
(9, 'ku78asxllnert459kr73gs23', 'fgfgfg', 'ghgh', '2024-12-01 23:03:28.879000', '2024-12-01 23:03:28.879000', NULL, NULL, NULL, NULL, NULL),
(10, 'ku78asxllnert459kr73gs23', 'fgfgfg', 'ghgh', '2024-12-01 23:03:28.879000', '2024-12-01 23:03:28.879000', '2024-12-01 23:03:28.900000', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles_author_lnk`
--

CREATE TABLE `articles_author_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED DEFAULT NULL,
  `author_id` int(10) UNSIGNED DEFAULT NULL,
  `article_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `articles_author_lnk`
--

INSERT INTO `articles_author_lnk` (`id`, `article_id`, `author_id`, `article_ord`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 2),
(3, 3, 1, 3),
(5, 5, 1, 4),
(6, 6, 1, 5),
(7, 7, 1, 6),
(8, 8, 1, 7),
(9, 9, 1, 8),
(10, 10, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `articles_category_lnk`
--

CREATE TABLE `articles_category_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `article_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `articles_cmps`
--

CREATE TABLE `articles_cmps` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `cmp_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `document_id`, `name`, `email`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'f8ep9q8bk3dl5jufma9wz466', 'Author1', 'test.author@agendakota.com', '2024-12-01 22:49:35.580000', '2024-12-01 22:49:35.580000', '2024-12-01 22:49:35.575000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `document_id`, `name`, `slug`, `description`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'cgw3yot608hzkl9fdvnzaiyd', 'Agenda', 'agenda', 'agenda', '2024-12-01 23:13:38.616000', '2024-12-01 23:13:38.616000', '2024-12-01 23:13:38.613000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `components_shared_media`
--

CREATE TABLE `components_shared_media` (
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `components_shared_quotes`
--

CREATE TABLE `components_shared_quotes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `components_shared_rich_texts`
--

CREATE TABLE `components_shared_rich_texts` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `components_shared_seos`
--

CREATE TABLE `components_shared_seos` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `components_shared_sliders`
--

CREATE TABLE `components_shared_sliders` (
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`formats`)),
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_metadata`)),
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `files_folder_lnk`
--

CREATE TABLE `files_folder_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `file_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `files_related_mph`
--

CREATE TABLE `files_related_mph` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `globals`
--

CREATE TABLE `globals` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `site_description` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `globals_cmps`
--

CREATE TABLE `globals_cmps` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `cmp_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `document_id`, `name`, `code`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'y9z4z2taxiv3ff0awsiazt1n', 'English (en)', 'en', '2024-12-01 22:45:18.131000', '2024-12-01 22:45:18.131000', '2024-12-01 22:45:18.132000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invite_tokens`
--

CREATE TABLE `invite_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `accepted` tinyint(1) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions_token_lnk`
--

CREATE TABLE `strapi_api_token_permissions_token_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"minLength\":1,\"required\":true,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"files\"}}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"plugin\":\"upload\",\"globalId\":\"UploadFile\",\"uid\":\"plugin::upload.file\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"minLength\":1,\"required\":true,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"file\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"minLength\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"upload_folders\"}}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"plugin\":\"upload\",\"globalId\":\"UploadFolder\",\"uid\":\"plugin::upload.folder\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"minLength\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelName\":\"folder\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::i18n.locale\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"i18n_locale\"}}},\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\",\"uid\":\"plugin::i18n.locale\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"i18n_locale\",\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"locale\"},\"plugin::content-releases.release\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"ready\",\"blocked\",\"failed\",\"done\",\"empty\"],\"required\":true},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_releases\"}}},\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesRelease\",\"uid\":\"plugin::content-releases.release\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"ready\",\"blocked\",\"failed\",\"done\",\"empty\"],\"required\":true},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"}},\"kind\":\"collectionType\"},\"modelName\":\"release\"},\"plugin::content-releases.release-action\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"contentType\":{\"type\":\"string\",\"required\":true},\"entryDocumentId\":{\"type\":\"string\"},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"isEntryValid\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_release_actions\"}}},\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesReleaseAction\",\"uid\":\"plugin::content-releases.release-action\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"contentType\":{\"type\":\"string\",\"required\":true},\"entryDocumentId\":{\"type\":\"string\"},\"locale\":{\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"isEntryValid\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelName\":\"release-action\"},\"plugin::review-workflows.workflow\":{\"collectionName\":\"strapi_workflows\",\"info\":{\"name\":\"Workflow\",\"description\":\"\",\"singularName\":\"workflow\",\"pluralName\":\"workflows\",\"displayName\":\"Workflow\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"stages\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow-stage\",\"relation\":\"oneToMany\",\"mappedBy\":\"workflow\"},\"contentTypes\":{\"type\":\"json\",\"required\":true,\"default\":\"[]\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::review-workflows.workflow\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_workflows\"}}},\"plugin\":\"review-workflows\",\"globalId\":\"ReviewWorkflowsWorkflow\",\"uid\":\"plugin::review-workflows.workflow\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_workflows\",\"info\":{\"name\":\"Workflow\",\"description\":\"\",\"singularName\":\"workflow\",\"pluralName\":\"workflows\",\"displayName\":\"Workflow\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"stages\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow-stage\",\"relation\":\"oneToMany\",\"mappedBy\":\"workflow\"},\"contentTypes\":{\"type\":\"json\",\"required\":true,\"default\":\"[]\"}},\"kind\":\"collectionType\"},\"modelName\":\"workflow\"},\"plugin::review-workflows.workflow-stage\":{\"collectionName\":\"strapi_workflows_stages\",\"info\":{\"name\":\"Workflow Stage\",\"description\":\"\",\"singularName\":\"workflow-stage\",\"pluralName\":\"workflow-stages\",\"displayName\":\"Stages\"},\"options\":{\"version\":\"1.1.0\",\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false},\"color\":{\"type\":\"string\",\"configurable\":false,\"default\":\"#4945FF\"},\"workflow\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow\",\"relation\":\"manyToOne\",\"inversedBy\":\"stages\",\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::permission\",\"relation\":\"manyToMany\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::review-workflows.workflow-stage\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_workflows_stages\"}}},\"plugin\":\"review-workflows\",\"globalId\":\"ReviewWorkflowsWorkflowStage\",\"uid\":\"plugin::review-workflows.workflow-stage\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_workflows_stages\",\"info\":{\"name\":\"Workflow Stage\",\"description\":\"\",\"singularName\":\"workflow-stage\",\"pluralName\":\"workflow-stages\",\"displayName\":\"Stages\"},\"options\":{\"version\":\"1.1.0\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false},\"color\":{\"type\":\"string\",\"configurable\":false,\"default\":\"#4945FF\"},\"workflow\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow\",\"relation\":\"manyToOne\",\"inversedBy\":\"stages\",\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::permission\",\"relation\":\"manyToMany\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"workflow-stage\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"up_permissions\"}}},\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\",\"uid\":\"plugin::users-permissions.permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"permission\",\"options\":{\"draftAndPublish\":false}},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.role\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"up_roles\"}}},\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\",\"uid\":\"plugin::users-permissions.role\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"role\",\"options\":{\"draftAndPublish\":false}},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"timestamps\":true,\"draftAndPublish\":false},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"up_users\"}}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\",\"kind\":\"collectionType\",\"__filename__\":\"schema.json\",\"uid\":\"plugin::users-permissions.user\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"user\"},\"api::about.about\":{\"kind\":\"singleType\",\"collectionName\":\"abouts\",\"info\":{\"singularName\":\"about\",\"pluralName\":\"abouts\",\"displayName\":\"About\",\"description\":\"Write about yourself and the content you create\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"blocks\":{\"type\":\"dynamiczone\",\"components\":[\"shared.media\",\"shared.quote\",\"shared.rich-text\",\"shared.slider\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::about.about\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"abouts\"}}},\"apiName\":\"about\",\"globalId\":\"About\",\"uid\":\"api::about.about\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"abouts\",\"info\":{\"singularName\":\"about\",\"pluralName\":\"abouts\",\"displayName\":\"About\",\"description\":\"Write about yourself and the content you create\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"blocks\":{\"type\":\"dynamiczone\",\"components\":[\"shared.media\",\"shared.quote\",\"shared.rich-text\",\"shared.slider\"]}},\"kind\":\"singleType\"},\"modelName\":\"about\",\"actions\":{},\"lifecycles\":{}},\"api::article.article\":{\"kind\":\"collectionType\",\"collectionName\":\"articles\",\"info\":{\"singularName\":\"article\",\"pluralName\":\"articles\",\"displayName\":\"Article\",\"description\":\"Create your blog content\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"content\":{\"type\":\"richtext\"},\"slug\":{\"type\":\"uid\"},\"author\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::author.author\",\"inversedBy\":\"article\"},\"category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::category.category\",\"inversedBy\":\"article\"},\"blocks\":{\"type\":\"dynamiczone\",\"components\":[\"shared.slider\",\"shared.rich-text\",\"shared.quote\",\"shared.media\"]},\"title\":{\"type\":\"string\"},\"image\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::article.article\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"articles\"}}},\"apiName\":\"article\",\"globalId\":\"Article\",\"uid\":\"api::article.article\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"articles\",\"info\":{\"singularName\":\"article\",\"pluralName\":\"articles\",\"displayName\":\"Article\",\"description\":\"Create your blog content\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"content\":{\"type\":\"richtext\"},\"slug\":{\"type\":\"uid\"},\"author\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::author.author\",\"inversedBy\":\"article\"},\"category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::category.category\",\"inversedBy\":\"article\"},\"blocks\":{\"type\":\"dynamiczone\",\"components\":[\"shared.slider\",\"shared.rich-text\",\"shared.quote\",\"shared.media\"]},\"title\":{\"type\":\"string\"},\"image\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":true}},\"kind\":\"collectionType\"},\"modelName\":\"article\",\"actions\":{},\"lifecycles\":{}},\"api::author.author\":{\"kind\":\"collectionType\",\"collectionName\":\"authors\",\"info\":{\"singularName\":\"author\",\"pluralName\":\"authors\",\"displayName\":\"Author\",\"description\":\"Create authors for your content\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"avatar\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\"]},\"email\":{\"type\":\"string\"},\"article\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::article.article\",\"mappedBy\":\"author\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::author.author\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"authors\"}}},\"apiName\":\"author\",\"globalId\":\"Author\",\"uid\":\"api::author.author\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"authors\",\"info\":{\"singularName\":\"author\",\"pluralName\":\"authors\",\"displayName\":\"Author\",\"description\":\"Create authors for your content\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"avatar\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\"]},\"email\":{\"type\":\"string\"},\"article\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::article.article\",\"mappedBy\":\"author\"}},\"kind\":\"collectionType\"},\"modelName\":\"author\",\"actions\":{},\"lifecycles\":{}},\"api::category.category\":{\"kind\":\"collectionType\",\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\",\"description\":\"Organize your content into categories\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\"},\"description\":{\"type\":\"text\"},\"article\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::article.article\",\"mappedBy\":\"category\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::category.category\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"categories\"}}},\"apiName\":\"category\",\"globalId\":\"Category\",\"uid\":\"api::category.category\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\",\"description\":\"Organize your content into categories\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\"},\"description\":{\"type\":\"text\"},\"article\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::article.article\",\"mappedBy\":\"category\"}},\"kind\":\"collectionType\"},\"modelName\":\"category\",\"actions\":{},\"lifecycles\":{}},\"api::global.global\":{\"kind\":\"singleType\",\"collectionName\":\"globals\",\"info\":{\"singularName\":\"global\",\"pluralName\":\"globals\",\"displayName\":\"Global\",\"description\":\"Define global settings\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"siteName\":{\"type\":\"string\",\"required\":true},\"favicon\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\"]},\"siteDescription\":{\"type\":\"text\",\"required\":true},\"defaultSeo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::global.global\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"globals\"}}},\"apiName\":\"global\",\"globalId\":\"Global\",\"uid\":\"api::global.global\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"globals\",\"info\":{\"singularName\":\"global\",\"pluralName\":\"globals\",\"displayName\":\"Global\",\"description\":\"Define global settings\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"siteName\":{\"type\":\"string\",\"required\":true},\"favicon\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\"]},\"siteDescription\":{\"type\":\"text\",\"required\":true},\"defaultSeo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\"}},\"kind\":\"singleType\"},\"modelName\":\"global\",\"actions\":{},\"lifecycles\":{}},\"api::invite-token.invite-token\":{\"collectionName\":\"invite_tokens\",\"info\":{\"singularName\":\"invite-token\",\"pluralName\":\"invite-tokens\",\"displayName\":\"Invite Token\"},\"options\":{\"timestamps\":true,\"draftAndPublish\":false},\"attributes\":{\"email\":{\"type\":\"string\",\"required\":true},\"token\":{\"type\":\"string\",\"required\":true},\"accepted\":{\"type\":\"boolean\",\"default\":false},\"user\":{\"type\":\"string\"},\"role\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::invite-token.invite-token\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"invite_tokens\"}}},\"apiName\":\"invite-token\",\"globalId\":\"InviteToken\",\"uid\":\"api::invite-token.invite-token\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"invite_tokens\",\"info\":{\"singularName\":\"invite-token\",\"pluralName\":\"invite-tokens\",\"displayName\":\"Invite Token\"},\"options\":{\"timestamps\":true},\"attributes\":{\"email\":{\"type\":\"string\",\"required\":true},\"token\":{\"type\":\"string\",\"required\":true},\"accepted\":{\"type\":\"boolean\",\"default\":false},\"user\":{\"type\":\"string\"},\"role\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelName\":\"invite-token\",\"actions\":{},\"lifecycles\":{}},\"api::userr.userr\":{\"kind\":\"collectionType\",\"collectionName\":\"userrs\",\"info\":{\"singularName\":\"userr\",\"pluralName\":\"userrs\",\"displayName\":\"User\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"email\":{\"type\":\"email\"},\"role\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::userr.userr\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"userrs\"}}},\"apiName\":\"userr\",\"globalId\":\"Userr\",\"uid\":\"api::userr.userr\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"userrs\",\"info\":{\"singularName\":\"userr\",\"pluralName\":\"userrs\",\"displayName\":\"User\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"email\":{\"type\":\"email\"},\"role\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"}},\"kind\":\"collectionType\"},\"modelName\":\"userr\",\"actions\":{},\"lifecycles\":{}},\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::permission\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"admin_permissions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminPermission\",\"uid\":\"admin::permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelName\":\"permission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::user\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"admin_users\"}}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"registrationToken\":{\"hidden\":true}}},\"plugin\":\"admin\",\"globalId\":\"AdminUser\",\"uid\":\"admin::user\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"user\",\"options\":{\"draftAndPublish\":false}},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::role\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"admin_roles\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminRole\",\"uid\":\"admin::role\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelName\":\"role\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::api-token\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_api_tokens\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\",\"uid\":\"admin::api-token\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelName\":\"api-token\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::api-token-permission\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_api_token_permissions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\",\"uid\":\"admin::api-token-permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelName\":\"api-token-permission\"},\"admin::transfer-token\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::transfer-token\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_transfer_tokens\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminTransferToken\",\"uid\":\"admin::transfer-token\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelName\":\"transfer-token\"},\"admin::transfer-token-permission\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::transfer-token-permission\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_transfer_token_permissions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminTransferTokenPermission\",\"uid\":\"admin::transfer-token-permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"}},\"kind\":\"collectionType\"},\"modelName\":\"transfer-token-permission\"}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(2, 'plugin_content_manager_configuration_components::shared.slider', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"files\"],\"edit\":[[{\"name\":\"files\",\"size\":6}]]},\"uid\":\"shared.slider\",\"isComponent\":true}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_components::shared.rich-text', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"body\":{\"edit\":{\"label\":\"body\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"body\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\"],\"edit\":[[{\"name\":\"body\",\"size\":12}]]},\"uid\":\"shared.rich-text\",\"isComponent\":true}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_components::shared.seo', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"metaTitle\",\"defaultSortBy\":\"metaTitle\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"metaTitle\":{\"edit\":{\"label\":\"metaTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaTitle\",\"searchable\":true,\"sortable\":true}},\"metaDescription\":{\"edit\":{\"label\":\"metaDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaDescription\",\"searchable\":true,\"sortable\":true}},\"shareImage\":{\"edit\":{\"label\":\"shareImage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"shareImage\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"metaTitle\",\"metaDescription\",\"shareImage\"],\"edit\":[[{\"name\":\"metaTitle\",\"size\":6},{\"name\":\"metaDescription\",\"size\":6}],[{\"name\":\"shareImage\",\"size\":6}]]},\"uid\":\"shared.seo\",\"isComponent\":true}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_components::shared.quote', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"body\":{\"edit\":{\"label\":\"body\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"body\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"body\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"body\",\"size\":6}]]},\"uid\":\"shared.quote\",\"isComponent\":true}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_components::shared.media', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"file\":{\"edit\":{\"label\":\"file\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"file\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"file\"],\"edit\":[[{\"name\":\"file\",\"size\":6}]]},\"uid\":\"shared.media\",\"isComponent\":true}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]},\"uid\":\"plugin::upload.file\"}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]},\"uid\":\"plugin::i18n.locale\"}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]},\"uid\":\"plugin::upload.folder\"}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::plugin::content-releases.release', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"releasedAt\":{\"edit\":{\"label\":\"releasedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"releasedAt\",\"searchable\":true,\"sortable\":true}},\"scheduledAt\":{\"edit\":{\"label\":\"scheduledAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"scheduledAt\",\"searchable\":true,\"sortable\":true}},\"timezone\":{\"edit\":{\"label\":\"timezone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"timezone\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"actions\":{\"edit\":{\"label\":\"actions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"contentType\"},\"list\":{\"label\":\"actions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"releasedAt\",\"scheduledAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"releasedAt\",\"size\":6}],[{\"name\":\"scheduledAt\",\"size\":6},{\"name\":\"timezone\",\"size\":6}],[{\"name\":\"status\",\"size\":6},{\"name\":\"actions\",\"size\":6}]]},\"uid\":\"plugin::content-releases.release\"}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::plugin::content-releases.release-action', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"contentType\",\"defaultSortBy\":\"contentType\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"contentType\":{\"edit\":{\"label\":\"contentType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"contentType\",\"searchable\":true,\"sortable\":true}},\"entryDocumentId\":{\"edit\":{\"label\":\"entryDocumentId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"entryDocumentId\",\"searchable\":true,\"sortable\":true}},\"release\":{\"edit\":{\"label\":\"release\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"release\",\"searchable\":true,\"sortable\":true}},\"isEntryValid\":{\"edit\":{\"label\":\"isEntryValid\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isEntryValid\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"contentType\",\"entryDocumentId\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"contentType\",\"size\":6}],[{\"name\":\"entryDocumentId\",\"size\":6},{\"name\":\"release\",\"size\":6}],[{\"name\":\"isEntryValid\",\"size\":4}]]},\"uid\":\"plugin::content-releases.release-action\"}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"stages\":{\"edit\":{\"label\":\"stages\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"stages\",\"searchable\":false,\"sortable\":false}},\"contentTypes\":{\"edit\":{\"label\":\"contentTypes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"contentTypes\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"stages\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"stages\",\"size\":6}],[{\"name\":\"contentTypes\",\"size\":12}]]},\"uid\":\"plugin::review-workflows.workflow\"}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::api::about.about', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"blocks\":{\"edit\":{\"label\":\"blocks\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocks\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"blocks\",\"size\":12}]]},\"uid\":\"api::about.about\"}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"color\":{\"edit\":{\"label\":\"color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"color\",\"searchable\":true,\"sortable\":true}},\"workflow\":{\"edit\":{\"label\":\"workflow\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"workflow\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"color\",\"workflow\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"color\",\"size\":6}],[{\"name\":\"workflow\",\"size\":6},{\"name\":\"permissions\",\"size\":6}]]},\"uid\":\"plugin::review-workflows.workflow-stage\"}', 'object', NULL, NULL),
(15, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.permission\"}', 'object', NULL, NULL),
(16, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.role\"}', 'object', NULL, NULL),
(17, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.user\"}', 'object', NULL, NULL),
(18, 'plugin_content_manager_configuration_content_types::api::article.article', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":false,\"sortable\":false}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"author\":{\"edit\":{\"label\":\"author\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"author\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"category\",\"searchable\":true,\"sortable\":true}},\"blocks\":{\"edit\":{\"label\":\"blocks\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocks\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"slug\",\"image\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"slug\",\"size\":6}],[{\"name\":\"author\",\"size\":6},{\"name\":\"category\",\"size\":6}],[{\"name\":\"blocks\",\"size\":12}],[{\"name\":\"content\",\"size\":12}],[{\"name\":\"image\",\"size\":6}]]},\"uid\":\"api::article.article\"}', 'object', NULL, NULL),
(19, 'plugin_content_manager_configuration_content_types::api::category.category', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"article\":{\"edit\":{\"label\":\"article\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"article\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"slug\",\"article\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"article\",\"size\":6}]]},\"uid\":\"api::category.category\"}', 'object', NULL, NULL),
(20, 'plugin_content_manager_configuration_content_types::api::author.author', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"avatar\":{\"edit\":{\"label\":\"avatar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"avatar\",\"searchable\":false,\"sortable\":false}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"article\":{\"edit\":{\"label\":\"article\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"article\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"avatar\",\"email\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"avatar\",\"size\":6}],[{\"name\":\"email\",\"size\":6},{\"name\":\"article\",\"size\":6}]]},\"uid\":\"api::author.author\"}', 'object', NULL, NULL),
(21, 'plugin_content_manager_configuration_content_types::api::global.global', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"siteName\",\"defaultSortBy\":\"siteName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"siteName\":{\"edit\":{\"label\":\"siteName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"siteName\",\"searchable\":true,\"sortable\":true}},\"favicon\":{\"edit\":{\"label\":\"favicon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"favicon\",\"searchable\":false,\"sortable\":false}},\"siteDescription\":{\"edit\":{\"label\":\"siteDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"siteDescription\",\"searchable\":true,\"sortable\":true}},\"defaultSeo\":{\"edit\":{\"label\":\"defaultSeo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"defaultSeo\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"siteName\",\"favicon\",\"siteDescription\"],\"edit\":[[{\"name\":\"siteName\",\"size\":6},{\"name\":\"favicon\",\"size\":6}],[{\"name\":\"siteDescription\",\"size\":6}],[{\"name\":\"defaultSeo\",\"size\":12}]]},\"uid\":\"api::global.global\"}', 'object', NULL, NULL),
(22, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"actionParameters\":{\"edit\":{\"label\":\"actionParameters\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"actionParameters\",\"searchable\":false,\"sortable\":false}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}],[{\"name\":\"actionParameters\",\"size\":12}],[{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]},\"uid\":\"admin::permission\"}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(23, 'plugin_content_manager_configuration_content_types::admin::user', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]},\"uid\":\"admin::user\"}', 'object', NULL, NULL),
(24, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]},\"uid\":\"admin::api-token\"}', 'object', NULL, NULL),
(25, 'plugin_content_manager_configuration_content_types::admin::role', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]},\"uid\":\"admin::role\"}', 'object', NULL, NULL),
(26, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]},\"uid\":\"admin::api-token-permission\"}', 'object', NULL, NULL),
(27, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"accessKey\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accessKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]},\"uid\":\"admin::transfer-token\"}', 'object', NULL, NULL),
(28, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]},\"uid\":\"admin::transfer-token-permission\"}', 'object', NULL, NULL),
(29, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(30, 'plugin_upload_view_configuration', '{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(31, 'plugin_upload_metrics', '{\"weeklySchedule\":\"32 59 5 * * 4\",\"lastWeeklyUpdate\":1736377172013}', 'object', NULL, NULL),
(32, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(33, 'plugin_users-permissions_grant', '{\"email\":{\"icon\":\"envelope\",\"enabled\":true},\"discord\":{\"icon\":\"discord\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"icon\":\"facebook-square\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"icon\":\"google\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"icon\":\"github\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"icon\":\"windows\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"icon\":\"twitter\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/twitter/callback\"},\"instagram\":{\"icon\":\"instagram\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"icon\":\"vk\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"icon\":\"twitch\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"icon\":\"linkedin\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"icon\":\"aws\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"icon\":\"reddit\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"icon\":\"\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"icon\":\"book\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"},\"patreon\":{\"icon\":\"\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/patreon/callback\",\"scope\":[\"identity\",\"identity[email]\"]},\"keycloak\":{\"icon\":\"\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"subdomain\":\"myKeycloakProvider.com/realms/myrealm\",\"callback\":\"api/auth/keycloak/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]}}', 'object', NULL, NULL),
(34, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(35, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(36, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null,\"ssoLockedRoles\":null}}', 'object', NULL, NULL),
(37, 'plugin_content_manager_configuration_content_types::api::invite-token.invite-token', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"email\",\"defaultSortBy\":\"email\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"accepted\":{\"edit\":{\"label\":\"accepted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accepted\",\"searchable\":true,\"sortable\":true}},\"user\":{\"edit\":{\"label\":\"user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"user\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"email\",\"token\",\"accepted\"],\"edit\":[[{\"name\":\"email\",\"size\":6},{\"name\":\"token\",\"size\":6}],[{\"name\":\"accepted\",\"size\":4},{\"name\":\"user\",\"size\":6}],[{\"name\":\"role\",\"size\":6}]]},\"uid\":\"api::invite-token.invite-token\"}', 'object', NULL, NULL),
(38, 'plugin_content_manager_configuration_content_types::api::userr.userr', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"email\",\"role\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"role\",\"size\":6}]]},\"uid\":\"api::userr.userr\"}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(4, '{\"tables\":[{\"name\":\"files\",\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null},{\"name\":\"files_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"folder_path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"upload_folders\",\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"},{\"name\":\"upload_folders_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_releases\",\"indexes\":[{\"name\":\"strapi_releases_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_releases_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_releases_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_releases_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_releases_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"released_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"scheduled_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"timezone\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_release_actions\",\"indexes\":[{\"name\":\"strapi_release_actions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_release_actions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_release_actions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_release_actions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_release_actions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"content_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"entry_document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_entry_valid\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows\",\"indexes\":[{\"name\":\"strapi_workflows_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_workflows_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_workflows_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_workflows_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"content_types\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_workflows_stages\",\"indexes\":[{\"name\":\"strapi_workflows_stages_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_workflows_stages_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_workflows_stages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stages_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_workflows_stages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"color\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"abouts_cmps\",\"indexes\":[{\"name\":\"abouts_field_idx\",\"columns\":[\"field\"]},{\"name\":\"abouts_component_type_idx\",\"columns\":[\"component_type\"]},{\"name\":\"abouts_entity_fk\",\"columns\":[\"entity_id\"]},{\"name\":\"abouts_uq\",\"columns\":[\"entity_id\",\"cmp_id\",\"field\",\"component_type\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"abouts_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"abouts\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cmp_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"abouts\",\"indexes\":[{\"name\":\"abouts_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"abouts_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"abouts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"abouts_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"abouts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"articles_cmps\",\"indexes\":[{\"name\":\"articles_field_idx\",\"columns\":[\"field\"]},{\"name\":\"articles_component_type_idx\",\"columns\":[\"component_type\"]},{\"name\":\"articles_entity_fk\",\"columns\":[\"entity_id\"]},{\"name\":\"articles_uq\",\"columns\":[\"entity_id\",\"cmp_id\",\"field\",\"component_type\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"articles_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"articles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cmp_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"articles\",\"indexes\":[{\"name\":\"articles_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"articles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"articles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"articles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"articles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"content\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"slug\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"authors\",\"indexes\":[{\"name\":\"authors_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"authors_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"authors_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"authors_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"authors_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"categories\",\"indexes\":[{\"name\":\"categories_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"categories_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"categories_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"slug\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"globals_cmps\",\"indexes\":[{\"name\":\"globals_field_idx\",\"columns\":[\"field\"]},{\"name\":\"globals_component_type_idx\",\"columns\":[\"component_type\"]},{\"name\":\"globals_entity_fk\",\"columns\":[\"entity_id\"]},{\"name\":\"globals_uq\",\"columns\":[\"entity_id\",\"cmp_id\",\"field\",\"component_type\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"globals_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"globals\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cmp_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"globals\",\"indexes\":[{\"name\":\"globals_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"globals_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"globals_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"globals_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"globals_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"site_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"site_description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"invite_tokens\",\"indexes\":[{\"name\":\"invite_tokens_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"invite_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"invite_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"invite_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"invite_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"accepted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"user\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"role\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"userrs\",\"indexes\":[{\"name\":\"userrs_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"userrs_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"userrs_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"userrs_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"userrs_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action_parameters\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_api_token_permissions\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_transfer_tokens\",\"indexes\":[{\"name\":\"strapi_transfer_tokens_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_transfer_token_permissions\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_shared_sliders\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false}]},{\"name\":\"components_shared_seos\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"meta_title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"meta_description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_shared_rich_texts\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"body\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_shared_quotes\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"body\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_shared_media\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false}]},{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_history_versions\",\"indexes\":[{\"name\":\"strapi_history_versions_created_by_id_fk\",\"columns\":[\"created_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_history_versions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"content_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"related_document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"data\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"schema\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_related_mph\",\"indexes\":[{\"name\":\"files_related_mph_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_related_mph_oidx\",\"columns\":[\"order\"]},{\"name\":\"files_related_mph_idix\",\"columns\":[\"related_id\"]}],\"foreignKeys\":[{\"name\":\"files_related_mph_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_folder_lnk\",\"indexes\":[{\"name\":\"files_folder_lnk_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_folder_lnk_ifk\",\"columns\":[\"folder_id\"]},{\"name\":\"files_folder_lnk_uq\",\"columns\":[\"file_id\",\"folder_id\"],\"type\":\"unique\"},{\"name\":\"files_folder_lnk_oifk\",\"columns\":[\"file_ord\"]}],\"foreignKeys\":[{\"name\":\"files_folder_lnk_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"},{\"name\":\"files_folder_lnk_ifk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"file_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders_parent_lnk\",\"indexes\":[{\"name\":\"upload_folders_parent_lnk_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"upload_folders_parent_lnk_ifk\",\"columns\":[\"inv_folder_id\"]},{\"name\":\"upload_folders_parent_lnk_uq\",\"columns\":[\"folder_id\",\"inv_folder_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_parent_lnk_oifk\",\"columns\":[\"folder_ord\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_parent_lnk_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"},{\"name\":\"upload_folders_parent_lnk_ifk\",\"columns\":[\"inv_folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_release_actions_release_lnk\",\"indexes\":[{\"name\":\"strapi_release_actions_release_lnk_fk\",\"columns\":[\"release_action_id\"]},{\"name\":\"strapi_release_actions_release_lnk_ifk\",\"columns\":[\"release_id\"]},{\"name\":\"strapi_release_actions_release_lnk_uq\",\"columns\":[\"release_action_id\",\"release_id\"],\"type\":\"unique\"},{\"name\":\"strapi_release_actions_release_lnk_oifk\",\"columns\":[\"release_action_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_release_actions_release_lnk_fk\",\"columns\":[\"release_action_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_release_actions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_release_actions_release_lnk_ifk\",\"columns\":[\"release_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_releases\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"release_action_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"release_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"release_action_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows_stages_workflow_lnk\",\"indexes\":[{\"name\":\"strapi_workflows_stages_workflow_lnk_fk\",\"columns\":[\"workflow_stage_id\"]},{\"name\":\"strapi_workflows_stages_workflow_lnk_ifk\",\"columns\":[\"workflow_id\"]},{\"name\":\"strapi_workflows_stages_workflow_lnk_uq\",\"columns\":[\"workflow_stage_id\",\"workflow_id\"],\"type\":\"unique\"},{\"name\":\"strapi_workflows_stages_workflow_lnk_oifk\",\"columns\":[\"workflow_stage_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stages_workflow_lnk_fk\",\"columns\":[\"workflow_stage_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows_stages\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_workflows_stages_workflow_lnk_ifk\",\"columns\":[\"workflow_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"workflow_stage_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"workflow_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"workflow_stage_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows_stages_permissions_lnk\",\"indexes\":[{\"name\":\"strapi_workflows_stages_permissions_lnk_fk\",\"columns\":[\"workflow_stage_id\"]},{\"name\":\"strapi_workflows_stages_permissions_lnk_ifk\",\"columns\":[\"permission_id\"]},{\"name\":\"strapi_workflows_stages_permissions_lnk_uq\",\"columns\":[\"workflow_stage_id\",\"permission_id\"],\"type\":\"unique\"},{\"name\":\"strapi_workflows_stages_permissions_lnk_ofk\",\"columns\":[\"permission_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stages_permissions_lnk_fk\",\"columns\":[\"workflow_stage_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows_stages\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_workflows_stages_permissions_lnk_ifk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"workflow_stage_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_lnk\",\"indexes\":[{\"name\":\"up_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"up_permissions_role_lnk_uq\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_permissions_role_lnk_oifk\",\"columns\":[\"permission_ord\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_lnk\",\"indexes\":[{\"name\":\"up_users_role_lnk_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"up_users_role_lnk_uq\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_users_role_lnk_oifk\",\"columns\":[\"user_ord\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_lnk_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"articles_author_lnk\",\"indexes\":[{\"name\":\"articles_author_lnk_fk\",\"columns\":[\"article_id\"]},{\"name\":\"articles_author_lnk_ifk\",\"columns\":[\"author_id\"]},{\"name\":\"articles_author_lnk_uq\",\"columns\":[\"article_id\",\"author_id\"],\"type\":\"unique\"},{\"name\":\"articles_author_lnk_oifk\",\"columns\":[\"article_ord\"]}],\"foreignKeys\":[{\"name\":\"articles_author_lnk_fk\",\"columns\":[\"article_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"articles\",\"onDelete\":\"CASCADE\"},{\"name\":\"articles_author_lnk_ifk\",\"columns\":[\"author_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"authors\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"article_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"author_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"article_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"articles_category_lnk\",\"indexes\":[{\"name\":\"articles_category_lnk_fk\",\"columns\":[\"article_id\"]},{\"name\":\"articles_category_lnk_ifk\",\"columns\":[\"category_id\"]},{\"name\":\"articles_category_lnk_uq\",\"columns\":[\"article_id\",\"category_id\"],\"type\":\"unique\"},{\"name\":\"articles_category_lnk_oifk\",\"columns\":[\"article_ord\"]}],\"foreignKeys\":[{\"name\":\"articles_category_lnk_fk\",\"columns\":[\"article_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"articles\",\"onDelete\":\"CASCADE\"},{\"name\":\"articles_category_lnk_ifk\",\"columns\":[\"category_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"categories\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"article_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"category_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"article_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"userrs_role_lnk\",\"indexes\":[{\"name\":\"userrs_role_lnk_fk\",\"columns\":[\"userr_id\"]},{\"name\":\"userrs_role_lnk_ifk\",\"columns\":[\"user_id\"]},{\"name\":\"userrs_role_lnk_uq\",\"columns\":[\"userr_id\",\"user_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"userrs_role_lnk_fk\",\"columns\":[\"userr_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"userrs\",\"onDelete\":\"CASCADE\"},{\"name\":\"userrs_role_lnk_ifk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"userr_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_permissions_role_lnk\",\"indexes\":[{\"name\":\"admin_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_permissions_role_lnk_uq\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_permissions_role_lnk_oifk\",\"columns\":[\"permission_ord\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_lnk\",\"indexes\":[{\"name\":\"admin_users_roles_lnk_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_users_roles_lnk_uq\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_users_roles_lnk_ofk\",\"columns\":[\"role_ord\"]},{\"name\":\"admin_users_roles_lnk_oifk\",\"columns\":[\"user_ord\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_lnk_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions_token_lnk\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_token_lnk_fk\",\"columns\":[\"api_token_permission_id\"]},{\"name\":\"strapi_api_token_permissions_token_lnk_ifk\",\"columns\":[\"api_token_id\"]},{\"name\":\"strapi_api_token_permissions_token_lnk_uq\",\"columns\":[\"api_token_permission_id\",\"api_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_api_token_permissions_token_lnk_oifk\",\"columns\":[\"api_token_permission_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_token_lnk_fk\",\"columns\":[\"api_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_api_token_permissions_token_lnk_ifk\",\"columns\":[\"api_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"api_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions_token_lnk\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_token_lnk_fk\",\"columns\":[\"transfer_token_permission_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_lnk_ifk\",\"columns\":[\"transfer_token_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_lnk_uq\",\"columns\":[\"transfer_token_permission_id\",\"transfer_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_transfer_token_permissions_token_lnk_oifk\",\"columns\":[\"transfer_token_permission_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_token_lnk_fk\",\"columns\":[\"transfer_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_transfer_token_permissions_token_lnk_ifk\",\"columns\":[\"transfer_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"transfer_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]}]}', '2025-01-09 05:54:31', '7449f8434baeff1b5906f5f66cd50dd9');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_history_versions`
--

CREATE TABLE `strapi_history_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_type` varchar(255) NOT NULL,
  `related_document_id` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `created_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations_internal`
--

CREATE TABLE `strapi_migrations_internal` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `strapi_migrations_internal`
--

INSERT INTO `strapi_migrations_internal` (`id`, `name`, `time`) VALUES
(1, '5.0.0-rename-identifiers-longer-than-max-length', '2024-12-01 22:45:16'),
(2, '5.0.0-02-created-document-id', '2024-12-01 22:45:16'),
(3, '5.0.0-03-created-locale', '2024-12-01 22:45:16'),
(4, '5.0.0-04-created-published-at', '2024-12-01 22:45:16'),
(5, '5.0.0-05-drop-slug-fields-index', '2024-12-01 22:45:16'),
(6, 'core::5.0.0-discard-drafts', '2024-12-01 22:45:16');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_releases`
--

CREATE TABLE `strapi_releases` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `released_at` datetime(6) DEFAULT NULL,
  `scheduled_at` datetime(6) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_release_actions`
--

CREATE TABLE `strapi_release_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `entry_document_id` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `is_entry_valid` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_release_actions_release_lnk`
--

CREATE TABLE `strapi_release_actions_release_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `release_action_id` int(10) UNSIGNED DEFAULT NULL,
  `release_id` int(10) UNSIGNED DEFAULT NULL,
  `release_action_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_tokens`
--

CREATE TABLE `strapi_transfer_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_token_permissions`
--

CREATE TABLE `strapi_transfer_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_token_permissions_token_lnk`
--

CREATE TABLE `strapi_transfer_token_permissions_token_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_workflows`
--

CREATE TABLE `strapi_workflows` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content_types` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`content_types`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_workflows_stages`
--

CREATE TABLE `strapi_workflows_stages` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_workflows_stages_permissions_lnk`
--

CREATE TABLE `strapi_workflows_stages_permissions_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `workflow_stage_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_workflows_stages_workflow_lnk`
--

CREATE TABLE `strapi_workflows_stages_workflow_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `workflow_stage_id` int(10) UNSIGNED DEFAULT NULL,
  `workflow_id` int(10) UNSIGNED DEFAULT NULL,
  `workflow_stage_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders_parent_lnk`
--

CREATE TABLE `upload_folders_parent_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_folder_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `document_id`, `action`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'u0f1cd9x9o5etrjz3odgeti7', 'plugin::users-permissions.user.me', '2024-12-01 22:45:18.193000', '2024-12-01 22:45:18.193000', '2024-12-01 22:45:18.193000', NULL, NULL, NULL),
(2, 'zzs0uh73ucmn21w1hlrygwem', 'plugin::users-permissions.auth.changePassword', '2024-12-01 22:45:18.193000', '2024-12-01 22:45:18.193000', '2024-12-01 22:45:18.194000', NULL, NULL, NULL),
(3, 'j2l5z182dnbdpd9j89q9f9lg', 'plugin::users-permissions.auth.callback', '2024-12-01 22:45:18.200000', '2024-12-01 22:45:18.200000', '2024-12-01 22:45:18.200000', NULL, NULL, NULL),
(4, 'n65dd33f5eofk9r6ma3i8f6d', 'plugin::users-permissions.auth.connect', '2024-12-01 22:45:18.200000', '2024-12-01 22:45:18.200000', '2024-12-01 22:45:18.200000', NULL, NULL, NULL),
(5, 'jiftcm29k5ifjwrpdlhgfk8o', 'plugin::users-permissions.auth.resetPassword', '2024-12-01 22:45:18.200000', '2024-12-01 22:45:18.200000', '2024-12-01 22:45:18.200000', NULL, NULL, NULL),
(6, 'waprsdrdhfc3ewb5t3lk5nm6', 'plugin::users-permissions.auth.forgotPassword', '2024-12-01 22:45:18.200000', '2024-12-01 22:45:18.200000', '2024-12-01 22:45:18.200000', NULL, NULL, NULL),
(7, 'v6pn8jr26uxxt7q3ktj6kvyj', 'plugin::users-permissions.auth.register', '2024-12-01 22:45:18.200000', '2024-12-01 22:45:18.200000', '2024-12-01 22:45:18.200000', NULL, NULL, NULL),
(8, 'acm9krvc0t9uyhqu3mkppm9p', 'plugin::users-permissions.auth.emailConfirmation', '2024-12-01 22:45:18.200000', '2024-12-01 22:45:18.200000', '2024-12-01 22:45:18.200000', NULL, NULL, NULL),
(9, 'krqnhb1jm06h96lth5omb9az', 'plugin::users-permissions.auth.sendEmailConfirmation', '2024-12-01 22:45:18.200000', '2024-12-01 22:45:18.200000', '2024-12-01 22:45:18.200000', NULL, NULL, NULL),
(15, 'glkei6p06nxjbyho301vaeji', 'plugin::users-permissions.auth.callback', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.209000', NULL, NULL, NULL),
(16, 'do6q7joy87kdbdwq1tgyimdf', 'plugin::users-permissions.auth.resetPassword', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.209000', NULL, NULL, NULL),
(17, 'mg23qbtiud0cv35oc9vwj5gk', 'plugin::users-permissions.auth.connect', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.209000', NULL, NULL, NULL),
(18, 'wzfzy1g05pm3p08ndj2fl3cv', 'plugin::users-permissions.auth.forgotPassword', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.209000', NULL, NULL, NULL),
(19, 'uivqgter7t6w4477h6d7csya', 'plugin::users-permissions.auth.register', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.209000', NULL, NULL, NULL),
(20, 'o7j4ea3amkxctxiyirqsvan6', 'plugin::users-permissions.auth.emailConfirmation', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.209000', NULL, NULL, NULL),
(21, 'yoi9d287ky7spiwjitw26c3y', 'plugin::users-permissions.auth.sendEmailConfirmation', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.210000', NULL, NULL, NULL),
(22, 'g9gq1er42zntnwjxvo4agolf', 'plugin::users-permissions.user.create', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.210000', NULL, NULL, NULL),
(23, 'tuqstwtegra9b4iy9qn8r5cz', 'plugin::users-permissions.user.update', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.210000', NULL, NULL, NULL),
(24, 'hqouo6oed92n7qisx8a68lbf', 'plugin::users-permissions.user.find', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.210000', NULL, NULL, NULL),
(25, 'j7l7h9w1xtm4gogt7t2ksf5p', 'plugin::users-permissions.user.findOne', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.210000', NULL, NULL, NULL),
(26, 'za0alved4nka9dxiqupmnxqg', 'plugin::users-permissions.user.count', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.210000', NULL, NULL, NULL),
(27, 'lfl3kbrrf9mwkhkulb8gpqfz', 'plugin::users-permissions.user.destroy', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.210000', NULL, NULL, NULL),
(28, 'udb484e1fan2r8ow1yz4m7wr', 'plugin::users-permissions.role.createRole', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.210000', NULL, NULL, NULL),
(29, 'srtwf80uqihhql0g67lwryj2', 'plugin::users-permissions.role.findOne', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.210000', NULL, NULL, NULL),
(30, 'ka9ucdyilx8940a0rey32z78', 'plugin::users-permissions.role.find', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.210000', NULL, NULL, NULL),
(31, 'axoce4l0o7zjq8btmov0e87c', 'plugin::users-permissions.role.updateRole', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.210000', NULL, NULL, NULL),
(32, 'n7csl9imh5bhp5wx2h8w0hym', 'plugin::users-permissions.role.deleteRole', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.209000', '2024-12-01 22:54:20.210000', NULL, NULL, NULL),
(33, 'fbxd7bt4lqm49a6djlld0e9x', 'api::article.article.find', '2024-12-01 22:56:31.728000', '2024-12-01 22:56:31.728000', '2024-12-01 22:56:31.728000', NULL, NULL, NULL),
(34, 'pqggsvzokj8evv6l0bf9d07f', 'api::article.article.findOne', '2024-12-01 22:56:31.728000', '2024-12-01 22:56:31.728000', '2024-12-01 22:56:31.729000', NULL, NULL, NULL),
(35, 'n1j45wv35o84m0mxxddhwu0c', 'api::article.article.create', '2024-12-01 22:56:31.728000', '2024-12-01 22:56:31.728000', '2024-12-01 22:56:31.729000', NULL, NULL, NULL),
(36, 'bca44iyq7w1xj393woluo8eq', 'api::article.article.update', '2024-12-01 22:56:31.728000', '2024-12-01 22:56:31.728000', '2024-12-01 22:56:31.729000', NULL, NULL, NULL),
(37, 'kvn0sl04zvsvjoqm62m1zxq1', 'api::article.article.delete', '2024-12-01 22:56:31.728000', '2024-12-01 22:56:31.728000', '2024-12-01 22:56:31.730000', NULL, NULL, NULL),
(38, 'urj38oycxalynapwg8a70k7o', 'api::category.category.find', '2024-12-01 23:36:45.369000', '2024-12-01 23:36:45.369000', '2024-12-01 23:36:45.369000', NULL, NULL, NULL),
(39, 'bsx6q7d53d4ptatqf1pbh1ph', 'api::category.category.findOne', '2024-12-01 23:36:45.369000', '2024-12-01 23:36:45.369000', '2024-12-01 23:36:45.370000', NULL, NULL, NULL),
(40, 'nu2xyspn72c5mccay2swq62f', 'api::category.category.create', '2024-12-01 23:36:45.369000', '2024-12-01 23:36:45.369000', '2024-12-01 23:36:45.370000', NULL, NULL, NULL),
(41, 'jxw6jq3jfabuf255zgj0061l', 'api::category.category.update', '2024-12-01 23:36:45.369000', '2024-12-01 23:36:45.369000', '2024-12-01 23:36:45.370000', NULL, NULL, NULL),
(42, 'q8kulhzo4tsh4rn3rt01mqez', 'api::category.category.delete', '2024-12-01 23:36:45.369000', '2024-12-01 23:36:45.369000', '2024-12-01 23:36:45.370000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions_role_lnk`
--

CREATE TABLE `up_permissions_role_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `up_permissions_role_lnk`
--

INSERT INTO `up_permissions_role_lnk` (`id`, `permission_id`, `role_id`, `permission_ord`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 2, 1),
(4, 4, 2, 1),
(5, 5, 2, 1),
(6, 6, 2, 1),
(7, 7, 2, 1),
(8, 8, 2, 1),
(9, 9, 2, 1),
(15, 15, 1, 4),
(16, 16, 1, 4),
(17, 17, 1, 4),
(18, 18, 1, 4),
(19, 19, 1, 4),
(20, 20, 1, 4),
(21, 21, 1, 4),
(22, 22, 1, 4),
(23, 23, 1, 4),
(24, 24, 1, 4),
(25, 30, 1, 5),
(26, 31, 1, 5),
(27, 25, 1, 5),
(28, 26, 1, 5),
(29, 27, 1, 5),
(30, 28, 1, 5),
(31, 29, 1, 5),
(32, 32, 1, 5),
(33, 33, 1, 6),
(34, 34, 1, 6),
(35, 35, 1, 6),
(36, 36, 1, 6),
(37, 37, 1, 6),
(38, 38, 1, 7),
(39, 41, 1, 7),
(40, 39, 1, 7),
(41, 40, 1, 7),
(42, 42, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `up_roles`
--

INSERT INTO `up_roles` (`id`, `document_id`, `name`, `description`, `type`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'jobtr9x9b5zggt1ucqu3ymf6', 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2024-12-01 22:45:18.183000', '2024-12-01 23:36:45.365000', '2024-12-01 22:45:18.183000', NULL, NULL, NULL),
(2, 'c9l39pbheg10a5evpt3m6hlo', 'Public', 'Default role given to unauthenticated user.', 'public', '2024-12-01 22:45:18.186000', '2024-12-01 22:45:18.186000', '2024-12-01 22:45:18.186000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `up_users`
--

INSERT INTO `up_users` (`id`, `document_id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'qemzx1opbpul4nq6wwmyyiau', 'author1', 'author1@gmail.com', 'local', '$2a$10$tppC0Z49vXYez/mIlhR7E.eI7V6S5AEFHrviaU5uzw5DYNXRSMGJG', NULL, NULL, 1, 0, '2024-12-01 22:48:57.494000', '2024-12-01 23:18:13.640000', '2024-12-01 23:18:13.496000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users_role_lnk`
--

CREATE TABLE `up_users_role_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `up_users_role_lnk`
--

INSERT INTO `up_users_role_lnk` (`id`, `user_id`, `role_id`, `user_ord`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `userrs`
--

CREATE TABLE `userrs` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userrs_role_lnk`
--

CREATE TABLE `userrs_role_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `userr_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `abouts_documents_idx` (`document_id`,`locale`,`published_at`) USING BTREE,
  ADD KEY `abouts_created_by_id_fk` (`created_by_id`) USING BTREE,
  ADD KEY `abouts_updated_by_id_fk` (`updated_by_id`) USING BTREE;

--
-- Indexes for table `abouts_cmps`
--
ALTER TABLE `abouts_cmps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `abouts_uq` (`entity_id`,`cmp_id`,`field`,`component_type`),
  ADD KEY `abouts_field_idx` (`field`),
  ADD KEY `abouts_component_type_idx` (`component_type`),
  ADD KEY `abouts_entity_fk` (`entity_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `admin_permissions_documents_idx` (`document_id`,`locale`,`published_at`) USING BTREE,
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`) USING BTREE,
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`) USING BTREE;

--
-- Indexes for table `admin_permissions_role_lnk`
--
ALTER TABLE `admin_permissions_role_lnk`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `admin_permissions_role_lnk_uq` (`permission_id`,`role_id`) USING BTREE,
  ADD KEY `admin_permissions_role_lnk_fk` (`permission_id`) USING BTREE,
  ADD KEY `admin_permissions_role_lnk_ifk` (`role_id`) USING BTREE,
  ADD KEY `admin_permissions_role_lnk_oifk` (`permission_ord`) USING BTREE;

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `admin_roles_documents_idx` (`document_id`,`locale`,`published_at`) USING BTREE,
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`) USING BTREE,
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`) USING BTREE;

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `admin_users_documents_idx` (`document_id`,`locale`,`published_at`) USING BTREE,
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`) USING BTREE,
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`) USING BTREE;

--
-- Indexes for table `admin_users_roles_lnk`
--
ALTER TABLE `admin_users_roles_lnk`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `admin_users_roles_lnk_uq` (`user_id`,`role_id`) USING BTREE,
  ADD KEY `admin_users_roles_lnk_fk` (`user_id`) USING BTREE,
  ADD KEY `admin_users_roles_lnk_ifk` (`role_id`) USING BTREE,
  ADD KEY `admin_users_roles_lnk_ofk` (`role_ord`) USING BTREE,
  ADD KEY `admin_users_roles_lnk_oifk` (`user_ord`) USING BTREE;

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `articles_documents_idx` (`document_id`,`locale`,`published_at`) USING BTREE,
  ADD KEY `articles_created_by_id_fk` (`created_by_id`) USING BTREE,
  ADD KEY `articles_updated_by_id_fk` (`updated_by_id`) USING BTREE;

--
-- Indexes for table `articles_author_lnk`
--
ALTER TABLE `articles_author_lnk`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `articles_author_lnk_uq` (`article_id`,`author_id`) USING BTREE,
  ADD KEY `articles_author_lnk_fk` (`article_id`) USING BTREE,
  ADD KEY `articles_author_lnk_ifk` (`author_id`) USING BTREE,
  ADD KEY `articles_author_lnk_oifk` (`article_ord`) USING BTREE;

--
-- Indexes for table `articles_category_lnk`
--
ALTER TABLE `articles_category_lnk`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `articles_category_lnk_uq` (`article_id`,`category_id`) USING BTREE,
  ADD KEY `articles_category_lnk_fk` (`article_id`) USING BTREE,
  ADD KEY `articles_category_lnk_ifk` (`category_id`) USING BTREE,
  ADD KEY `articles_category_lnk_oifk` (`article_ord`) USING BTREE;

--
-- Indexes for table `articles_cmps`
--
ALTER TABLE `articles_cmps`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `articles_uq` (`entity_id`,`cmp_id`,`field`,`component_type`) USING BTREE,
  ADD KEY `articles_field_idx` (`field`) USING BTREE,
  ADD KEY `articles_component_type_idx` (`component_type`) USING BTREE,
  ADD KEY `articles_entity_fk` (`entity_id`) USING BTREE;

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `authors_documents_idx` (`document_id`,`locale`,`published_at`) USING BTREE,
  ADD KEY `authors_created_by_id_fk` (`created_by_id`) USING BTREE,
  ADD KEY `authors_updated_by_id_fk` (`updated_by_id`) USING BTREE;

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `categories_documents_idx` (`document_id`,`locale`,`published_at`) USING BTREE,
  ADD KEY `categories_created_by_id_fk` (`created_by_id`) USING BTREE,
  ADD KEY `categories_updated_by_id_fk` (`updated_by_id`) USING BTREE;

--
-- Indexes for table `components_shared_media`
--
ALTER TABLE `components_shared_media`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `components_shared_quotes`
--
ALTER TABLE `components_shared_quotes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `components_shared_rich_texts`
--
ALTER TABLE `components_shared_rich_texts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `components_shared_seos`
--
ALTER TABLE `components_shared_seos`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `components_shared_sliders`
--
ALTER TABLE `components_shared_sliders`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `upload_files_folder_path_index` (`folder_path`) USING BTREE,
  ADD KEY `upload_files_created_at_index` (`created_at`) USING BTREE,
  ADD KEY `upload_files_updated_at_index` (`updated_at`) USING BTREE,
  ADD KEY `upload_files_name_index` (`name`) USING BTREE,
  ADD KEY `upload_files_size_index` (`size`) USING BTREE,
  ADD KEY `upload_files_ext_index` (`ext`) USING BTREE,
  ADD KEY `files_documents_idx` (`document_id`,`locale`,`published_at`) USING BTREE,
  ADD KEY `files_created_by_id_fk` (`created_by_id`) USING BTREE,
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`) USING BTREE;

--
-- Indexes for table `files_folder_lnk`
--
ALTER TABLE `files_folder_lnk`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `files_folder_lnk_uq` (`file_id`,`folder_id`) USING BTREE,
  ADD KEY `files_folder_lnk_fk` (`file_id`) USING BTREE,
  ADD KEY `files_folder_lnk_ifk` (`folder_id`) USING BTREE,
  ADD KEY `files_folder_lnk_oifk` (`file_ord`) USING BTREE;

--
-- Indexes for table `files_related_mph`
--
ALTER TABLE `files_related_mph`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `files_related_mph_fk` (`file_id`) USING BTREE,
  ADD KEY `files_related_mph_oidx` (`order`) USING BTREE,
  ADD KEY `files_related_mph_idix` (`related_id`) USING BTREE;

--
-- Indexes for table `globals`
--
ALTER TABLE `globals`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `globals_documents_idx` (`document_id`,`locale`,`published_at`) USING BTREE,
  ADD KEY `globals_created_by_id_fk` (`created_by_id`) USING BTREE,
  ADD KEY `globals_updated_by_id_fk` (`updated_by_id`) USING BTREE;

--
-- Indexes for table `globals_cmps`
--
ALTER TABLE `globals_cmps`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `globals_uq` (`entity_id`,`cmp_id`,`field`,`component_type`) USING BTREE,
  ADD KEY `globals_field_idx` (`field`) USING BTREE,
  ADD KEY `globals_component_type_idx` (`component_type`) USING BTREE,
  ADD KEY `globals_entity_fk` (`entity_id`) USING BTREE;

--
-- Indexes for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `i18n_locale_documents_idx` (`document_id`,`locale`,`published_at`) USING BTREE,
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`) USING BTREE,
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`) USING BTREE;

--
-- Indexes for table `invite_tokens`
--
ALTER TABLE `invite_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invite_tokens_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `invite_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `invite_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `strapi_api_tokens_documents_idx` (`document_id`,`locale`,`published_at`) USING BTREE,
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`) USING BTREE,
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`) USING BTREE;

--
-- Indexes for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `strapi_api_token_permissions_documents_idx` (`document_id`,`locale`,`published_at`) USING BTREE,
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`) USING BTREE,
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`) USING BTREE;

--
-- Indexes for table `strapi_api_token_permissions_token_lnk`
--
ALTER TABLE `strapi_api_token_permissions_token_lnk`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `strapi_api_token_permissions_token_lnk_uq` (`api_token_permission_id`,`api_token_id`) USING BTREE,
  ADD KEY `strapi_api_token_permissions_token_lnk_fk` (`api_token_permission_id`) USING BTREE,
  ADD KEY `strapi_api_token_permissions_token_lnk_ifk` (`api_token_id`) USING BTREE,
  ADD KEY `strapi_api_token_permissions_token_lnk_oifk` (`api_token_permission_ord`) USING BTREE;

--
-- Indexes for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `strapi_history_versions`
--
ALTER TABLE `strapi_history_versions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `strapi_history_versions_created_by_id_fk` (`created_by_id`) USING BTREE;

--
-- Indexes for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `strapi_migrations_internal`
--
ALTER TABLE `strapi_migrations_internal`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `strapi_releases_documents_idx` (`document_id`,`locale`,`published_at`) USING BTREE,
  ADD KEY `strapi_releases_created_by_id_fk` (`created_by_id`) USING BTREE,
  ADD KEY `strapi_releases_updated_by_id_fk` (`updated_by_id`) USING BTREE;

--
-- Indexes for table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `strapi_release_actions_documents_idx` (`document_id`,`locale`,`published_at`) USING BTREE,
  ADD KEY `strapi_release_actions_created_by_id_fk` (`created_by_id`) USING BTREE,
  ADD KEY `strapi_release_actions_updated_by_id_fk` (`updated_by_id`) USING BTREE;

--
-- Indexes for table `strapi_release_actions_release_lnk`
--
ALTER TABLE `strapi_release_actions_release_lnk`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `strapi_release_actions_release_lnk_uq` (`release_action_id`,`release_id`) USING BTREE,
  ADD KEY `strapi_release_actions_release_lnk_fk` (`release_action_id`) USING BTREE,
  ADD KEY `strapi_release_actions_release_lnk_ifk` (`release_id`) USING BTREE,
  ADD KEY `strapi_release_actions_release_lnk_oifk` (`release_action_ord`) USING BTREE;

--
-- Indexes for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `strapi_transfer_tokens_documents_idx` (`document_id`,`locale`,`published_at`) USING BTREE,
  ADD KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`) USING BTREE,
  ADD KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`) USING BTREE;

--
-- Indexes for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `strapi_transfer_token_permissions_documents_idx` (`document_id`,`locale`,`published_at`) USING BTREE,
  ADD KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`) USING BTREE,
  ADD KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`) USING BTREE;

--
-- Indexes for table `strapi_transfer_token_permissions_token_lnk`
--
ALTER TABLE `strapi_transfer_token_permissions_token_lnk`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `strapi_transfer_token_permissions_token_lnk_uq` (`transfer_token_permission_id`,`transfer_token_id`) USING BTREE,
  ADD KEY `strapi_transfer_token_permissions_token_lnk_fk` (`transfer_token_permission_id`) USING BTREE,
  ADD KEY `strapi_transfer_token_permissions_token_lnk_ifk` (`transfer_token_id`) USING BTREE,
  ADD KEY `strapi_transfer_token_permissions_token_lnk_oifk` (`transfer_token_permission_ord`) USING BTREE;

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `strapi_workflows`
--
ALTER TABLE `strapi_workflows`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `strapi_workflows_documents_idx` (`document_id`,`locale`,`published_at`) USING BTREE,
  ADD KEY `strapi_workflows_created_by_id_fk` (`created_by_id`) USING BTREE,
  ADD KEY `strapi_workflows_updated_by_id_fk` (`updated_by_id`) USING BTREE;

--
-- Indexes for table `strapi_workflows_stages`
--
ALTER TABLE `strapi_workflows_stages`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `strapi_workflows_stages_documents_idx` (`document_id`,`locale`,`published_at`) USING BTREE,
  ADD KEY `strapi_workflows_stages_created_by_id_fk` (`created_by_id`) USING BTREE,
  ADD KEY `strapi_workflows_stages_updated_by_id_fk` (`updated_by_id`) USING BTREE;

--
-- Indexes for table `strapi_workflows_stages_permissions_lnk`
--
ALTER TABLE `strapi_workflows_stages_permissions_lnk`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `strapi_workflows_stages_permissions_lnk_uq` (`workflow_stage_id`,`permission_id`) USING BTREE,
  ADD KEY `strapi_workflows_stages_permissions_lnk_fk` (`workflow_stage_id`) USING BTREE,
  ADD KEY `strapi_workflows_stages_permissions_lnk_ifk` (`permission_id`) USING BTREE,
  ADD KEY `strapi_workflows_stages_permissions_lnk_ofk` (`permission_ord`) USING BTREE;

--
-- Indexes for table `strapi_workflows_stages_workflow_lnk`
--
ALTER TABLE `strapi_workflows_stages_workflow_lnk`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `strapi_workflows_stages_workflow_lnk_uq` (`workflow_stage_id`,`workflow_id`) USING BTREE,
  ADD KEY `strapi_workflows_stages_workflow_lnk_fk` (`workflow_stage_id`) USING BTREE,
  ADD KEY `strapi_workflows_stages_workflow_lnk_ifk` (`workflow_id`) USING BTREE,
  ADD KEY `strapi_workflows_stages_workflow_lnk_oifk` (`workflow_stage_ord`) USING BTREE;

--
-- Indexes for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`) USING BTREE,
  ADD UNIQUE KEY `upload_folders_path_index` (`path`) USING BTREE,
  ADD KEY `upload_folders_documents_idx` (`document_id`,`locale`,`published_at`) USING BTREE,
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`) USING BTREE,
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`) USING BTREE;

--
-- Indexes for table `upload_folders_parent_lnk`
--
ALTER TABLE `upload_folders_parent_lnk`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `upload_folders_parent_lnk_uq` (`folder_id`,`inv_folder_id`) USING BTREE,
  ADD KEY `upload_folders_parent_lnk_fk` (`folder_id`) USING BTREE,
  ADD KEY `upload_folders_parent_lnk_ifk` (`inv_folder_id`) USING BTREE,
  ADD KEY `upload_folders_parent_lnk_oifk` (`folder_ord`) USING BTREE;

--
-- Indexes for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `up_permissions_documents_idx` (`document_id`,`locale`,`published_at`) USING BTREE,
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`) USING BTREE,
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`) USING BTREE;

--
-- Indexes for table `up_permissions_role_lnk`
--
ALTER TABLE `up_permissions_role_lnk`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `up_permissions_role_lnk_uq` (`permission_id`,`role_id`) USING BTREE,
  ADD KEY `up_permissions_role_lnk_fk` (`permission_id`) USING BTREE,
  ADD KEY `up_permissions_role_lnk_ifk` (`role_id`) USING BTREE,
  ADD KEY `up_permissions_role_lnk_oifk` (`permission_ord`) USING BTREE;

--
-- Indexes for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `up_roles_documents_idx` (`document_id`,`locale`,`published_at`) USING BTREE,
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`) USING BTREE,
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`) USING BTREE;

--
-- Indexes for table `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `up_users_documents_idx` (`document_id`,`locale`,`published_at`) USING BTREE,
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`) USING BTREE,
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`) USING BTREE;

--
-- Indexes for table `up_users_role_lnk`
--
ALTER TABLE `up_users_role_lnk`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `up_users_role_lnk_uq` (`user_id`,`role_id`) USING BTREE,
  ADD KEY `up_users_role_lnk_fk` (`user_id`) USING BTREE,
  ADD KEY `up_users_role_lnk_ifk` (`role_id`) USING BTREE,
  ADD KEY `up_users_role_lnk_oifk` (`user_ord`) USING BTREE;

--
-- Indexes for table `userrs`
--
ALTER TABLE `userrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userrs_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `userrs_created_by_id_fk` (`created_by_id`),
  ADD KEY `userrs_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `userrs_role_lnk`
--
ALTER TABLE `userrs_role_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userrs_role_lnk_uq` (`userr_id`,`user_id`),
  ADD KEY `userrs_role_lnk_fk` (`userr_id`),
  ADD KEY `userrs_role_lnk_ifk` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abouts_cmps`
--
ALTER TABLE `abouts_cmps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `admin_permissions_role_lnk`
--
ALTER TABLE `admin_permissions_role_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_users_roles_lnk`
--
ALTER TABLE `admin_users_roles_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `articles_author_lnk`
--
ALTER TABLE `articles_author_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `articles_category_lnk`
--
ALTER TABLE `articles_category_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `articles_cmps`
--
ALTER TABLE `articles_cmps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `components_shared_media`
--
ALTER TABLE `components_shared_media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_shared_quotes`
--
ALTER TABLE `components_shared_quotes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_shared_rich_texts`
--
ALTER TABLE `components_shared_rich_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_shared_seos`
--
ALTER TABLE `components_shared_seos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_shared_sliders`
--
ALTER TABLE `components_shared_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files_folder_lnk`
--
ALTER TABLE `files_folder_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files_related_mph`
--
ALTER TABLE `files_related_mph`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `globals`
--
ALTER TABLE `globals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `globals_cmps`
--
ALTER TABLE `globals_cmps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invite_tokens`
--
ALTER TABLE `invite_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions_token_lnk`
--
ALTER TABLE `strapi_api_token_permissions_token_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `strapi_history_versions`
--
ALTER TABLE `strapi_history_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_migrations_internal`
--
ALTER TABLE `strapi_migrations_internal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_release_actions_release_lnk`
--
ALTER TABLE `strapi_release_actions_release_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions_token_lnk`
--
ALTER TABLE `strapi_transfer_token_permissions_token_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_workflows`
--
ALTER TABLE `strapi_workflows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_workflows_stages`
--
ALTER TABLE `strapi_workflows_stages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_workflows_stages_permissions_lnk`
--
ALTER TABLE `strapi_workflows_stages_permissions_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_workflows_stages_workflow_lnk`
--
ALTER TABLE `strapi_workflows_stages_workflow_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_folders_parent_lnk`
--
ALTER TABLE `upload_folders_parent_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `up_permissions_role_lnk`
--
ALTER TABLE `up_permissions_role_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `up_users_role_lnk`
--
ALTER TABLE `up_users_role_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userrs`
--
ALTER TABLE `userrs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userrs_role_lnk`
--
ALTER TABLE `userrs_role_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `abouts`
--
ALTER TABLE `abouts`
  ADD CONSTRAINT `abouts_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `abouts_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `abouts_cmps`
--
ALTER TABLE `abouts_cmps`
  ADD CONSTRAINT `abouts_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `abouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions_role_lnk`
--
ALTER TABLE `admin_permissions_role_lnk`
  ADD CONSTRAINT `admin_permissions_role_lnk_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users_roles_lnk`
--
ALTER TABLE `admin_users_roles_lnk`
  ADD CONSTRAINT `admin_users_roles_lnk_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `articles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `articles_author_lnk`
--
ALTER TABLE `articles_author_lnk`
  ADD CONSTRAINT `articles_author_lnk_fk` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_author_lnk_ifk` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `articles_category_lnk`
--
ALTER TABLE `articles_category_lnk`
  ADD CONSTRAINT `articles_category_lnk_fk` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_category_lnk_ifk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `articles_cmps`
--
ALTER TABLE `articles_cmps`
  ADD CONSTRAINT `articles_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `authors`
--
ALTER TABLE `authors`
  ADD CONSTRAINT `authors_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `authors_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files_folder_lnk`
--
ALTER TABLE `files_folder_lnk`
  ADD CONSTRAINT `files_folder_lnk_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_lnk_ifk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files_related_mph`
--
ALTER TABLE `files_related_mph`
  ADD CONSTRAINT `files_related_mph_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `globals`
--
ALTER TABLE `globals`
  ADD CONSTRAINT `globals_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `globals_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `globals_cmps`
--
ALTER TABLE `globals_cmps`
  ADD CONSTRAINT `globals_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `globals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `invite_tokens`
--
ALTER TABLE `invite_tokens`
  ADD CONSTRAINT `invite_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `invite_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions_token_lnk`
--
ALTER TABLE `strapi_api_token_permissions_token_lnk`
  ADD CONSTRAINT `strapi_api_token_permissions_token_lnk_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_lnk_ifk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_history_versions`
--
ALTER TABLE `strapi_history_versions`
  ADD CONSTRAINT `strapi_history_versions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  ADD CONSTRAINT `strapi_releases_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_releases_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  ADD CONSTRAINT `strapi_release_actions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_release_actions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_release_actions_release_lnk`
--
ALTER TABLE `strapi_release_actions_release_lnk`
  ADD CONSTRAINT `strapi_release_actions_release_lnk_fk` FOREIGN KEY (`release_action_id`) REFERENCES `strapi_release_actions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_release_actions_release_lnk_ifk` FOREIGN KEY (`release_id`) REFERENCES `strapi_releases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions_token_lnk`
--
ALTER TABLE `strapi_transfer_token_permissions_token_lnk`
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_lnk_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_lnk_ifk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_workflows`
--
ALTER TABLE `strapi_workflows`
  ADD CONSTRAINT `strapi_workflows_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_workflows_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_workflows_stages`
--
ALTER TABLE `strapi_workflows_stages`
  ADD CONSTRAINT `strapi_workflows_stages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_workflows_stages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_workflows_stages_permissions_lnk`
--
ALTER TABLE `strapi_workflows_stages_permissions_lnk`
  ADD CONSTRAINT `strapi_workflows_stages_permissions_lnk_fk` FOREIGN KEY (`workflow_stage_id`) REFERENCES `strapi_workflows_stages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_workflows_stages_permissions_lnk_ifk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_workflows_stages_workflow_lnk`
--
ALTER TABLE `strapi_workflows_stages_workflow_lnk`
  ADD CONSTRAINT `strapi_workflows_stages_workflow_lnk_fk` FOREIGN KEY (`workflow_stage_id`) REFERENCES `strapi_workflows_stages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_workflows_stages_workflow_lnk_ifk` FOREIGN KEY (`workflow_id`) REFERENCES `strapi_workflows` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `upload_folders_parent_lnk`
--
ALTER TABLE `upload_folders_parent_lnk`
  ADD CONSTRAINT `upload_folders_parent_lnk_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_lnk_ifk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_permissions_role_lnk`
--
ALTER TABLE `up_permissions_role_lnk`
  ADD CONSTRAINT `up_permissions_role_lnk_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users_role_lnk`
--
ALTER TABLE `up_users_role_lnk`
  ADD CONSTRAINT `up_users_role_lnk_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userrs`
--
ALTER TABLE `userrs`
  ADD CONSTRAINT `userrs_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `userrs_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `userrs_role_lnk`
--
ALTER TABLE `userrs_role_lnk`
  ADD CONSTRAINT `userrs_role_lnk_fk` FOREIGN KEY (`userr_id`) REFERENCES `userrs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `userrs_role_lnk_ifk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
