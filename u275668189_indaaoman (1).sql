-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 23, 2024 at 03:02 AM
-- Server version: 10.6.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u275668189_indaaoman`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(191) DEFAULT NULL,
  `event` varchar(191) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"dd\",\"slug\":null,\"comment\":\"<p>sada<\\/p>\",\"parent_id\":null,\"commentable_id\":null,\"commentable_type\":null,\"user_id\":null,\"user_name\":null,\"order\":null,\"status\":1,\"moderated_by\":null,\"moderated_at\":null,\"published_at\":null,\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-02-18T20:30:31.000000Z\",\"deleted_at\":null}}', NULL, '2023-02-18 22:30:31', '2023-02-18 22:30:31'),
(2, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 2, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"ert\",\"slug\":null,\"comment\":\"<p>dfgdf<\\/p>\",\"user_id\":null,\"user_name\":null,\"order\":null,\"status\":1,\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-02-18T20:47:28.000000Z\",\"deleted_at\":null}}', NULL, '2023-02-18 22:47:28', '2023-02-18 22:47:28'),
(3, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 3, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Abdullah AL-Oufi\",\"slug\":null,\"comment\":\"<p>sfsdf<\\/p>\",\"user_id\":null,\"user_name\":null,\"order\":null,\"status\":1,\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-02-22T03:49:28.000000Z\",\"deleted_at\":null}}', NULL, '2023-02-22 05:49:29', '2023-02-22 05:49:29'),
(4, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 4, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"sdf\",\"slug\":null,\"comment\":\"<p>sdfsd<\\/p>\",\"user_id\":null,\"user_name\":null,\"order\":null,\"status\":0,\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-02-22T03:55:09.000000Z\",\"deleted_at\":null}}', NULL, '2023-02-22 05:55:09', '2023-02-22 05:55:09'),
(5, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 5, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"zzz\",\"slug\":null,\"comment\":\"<p>adas<\\/p>\",\"user_id\":null,\"user_name\":null,\"order\":null,\"status\":0,\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-02-22T03:56:33.000000Z\",\"deleted_at\":null}}', NULL, '2023-02-22 05:56:33', '2023-02-22 05:56:33'),
(6, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"test 2\",\"slug\":null,\"comment\":\"<p>fdg<\\/p>\",\"user_id\":null,\"user_name\":null,\"order\":null,\"status\":1,\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-02-22T03:58:29.000000Z\",\"deleted_at\":null}}', NULL, '2023-02-22 05:58:29', '2023-02-22 05:58:29'),
(7, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 7, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"new event\",\"slug\":null,\"comment\":\"<p>jljalfjs<\\/p>\",\"user_id\":null,\"user_name\":null,\"order\":null,\"status\":1,\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"created_at\":\"2023-02-23T14:55:51.000000Z\",\"deleted_at\":null}}', NULL, '2023-02-23 20:55:51', '2023-02-23 20:55:51'),
(8, 'comments', 'updated', 'Modules\\Comment\\Entities\\Comment', 'updated', 7, 'App\\Models\\User', 1, '{\"attributes\":{\"deleted_by\":1},\"old\":{\"deleted_by\":null}}', NULL, '2023-02-24 16:23:18', '2023-02-24 16:23:18'),
(9, 'comments', 'deleted', 'Modules\\Comment\\Entities\\Comment', 'deleted', 7, 'App\\Models\\User', 1, '{\"old\":{\"name\":\"new event\",\"slug\":null,\"comment\":\"<p>jljalfjs<\\/p>\",\"user_id\":null,\"user_name\":null,\"order\":null,\"status\":1,\"created_by\":1,\"updated_by\":1,\"deleted_by\":1,\"created_at\":\"2023-02-23T14:55:51.000000Z\",\"deleted_at\":\"2023-02-24T10:23:18.000000Z\"}}', NULL, '2023-02-24 16:23:18', '2023-02-24 16:23:18'),
(10, 'comments', 'updated', 'Modules\\Comment\\Entities\\Comment', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"deleted_by\":1},\"old\":{\"deleted_by\":null}}', NULL, '2023-02-24 16:23:22', '2023-02-24 16:23:22'),
(11, 'comments', 'deleted', 'Modules\\Comment\\Entities\\Comment', 'deleted', 6, 'App\\Models\\User', 1, '{\"old\":{\"name\":\"test 2\",\"slug\":null,\"comment\":\"<p>fdg<\\/p>\",\"user_id\":null,\"user_name\":null,\"order\":null,\"status\":1,\"created_by\":1,\"updated_by\":1,\"deleted_by\":1,\"created_at\":\"2023-02-21T23:58:29.000000Z\",\"deleted_at\":\"2023-02-24T10:23:22.000000Z\"}}', NULL, '2023-02-24 16:23:22', '2023-02-24 16:23:22'),
(12, 'comments', 'updated', 'Modules\\Comment\\Entities\\Comment', 'updated', 5, 'App\\Models\\User', 1, '{\"attributes\":{\"deleted_by\":1},\"old\":{\"deleted_by\":null}}', NULL, '2023-02-24 16:23:28', '2023-02-24 16:23:28'),
(13, 'comments', 'deleted', 'Modules\\Comment\\Entities\\Comment', 'deleted', 5, 'App\\Models\\User', 1, '{\"old\":{\"name\":\"zzz\",\"slug\":null,\"comment\":\"<p>adas<\\/p>\",\"user_id\":null,\"user_name\":null,\"order\":null,\"status\":0,\"created_by\":1,\"updated_by\":1,\"deleted_by\":1,\"created_at\":\"2023-02-21T23:56:33.000000Z\",\"deleted_at\":\"2023-02-24T10:23:28.000000Z\"}}', NULL, '2023-02-24 16:23:28', '2023-02-24 16:23:28'),
(14, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 8, 'App\\Models\\User', 9, '{\"attributes\":{\"name\":\"\\u0623\\u0635\\u062f\\u0642\\u0627\\u0621 \\u0625\\u0646\\u062f\\u0627\\u0621\",\"slug\":null,\"comment\":\"<p>*\\u0635\\u0628\\u0627\\u062d\\u0643\\u0645 \\u0645\\u063a\\u0645\\u0648\\u0631 \\u0628\\u0644\\u0637\\u0641 \\u0645\\u0646 \\u0627\\u0644\\u0644\\u0647*<\\/p>\\n\\n<p>*\\u062a\\u0631\\u0643\\u0646\\u0627 \\u0628\\u064a\\u0646 \\u0623\\u064a\\u062f\\u064a\\u0643\\u0645 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639 \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a*\\n\\u0643\\u0644 \\u0645\\u0627 \\u0639\\u0644\\u064a\\u0643 \\u0641\\u0639\\u0644\\u0647 \\u0647\\u0648 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0633\\u0627\\u0639\\u0627\\u062a\\u0643 \\u0627\\u0644\\u062a\\u0637\\u0648\\u0639\\u064a\\u0647 \\u0645\\u0646 \\u0628\\u062f\\u0627\\u064a\\u0629 \\u062f\\u062e\\u0648\\u0644\\u0643 \\u0644\\u0639\\u0627\\u0626\\u0644\\u0629 \\u062a\\u0639\\u0627\\u0648\\u0646 \\u0625\\u0644\\u0649 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u064a\\u0648\\u0645 \\u2728<\\/p>\\n\\n<p>\\u0639\\u0646\\u062f \\u0625\\u062f\\u062e\\u0627\\u0644 \\u0627\\u0644\\u0633\\u0627\\u0639\\u0627\\u062a \\u0627\\u0644\\u062a\\u0637\\u0648\\u0639\\u064a\\u0647 \\u0627\\u0644\\u062e\\u0627\\u0635\\u0647 \\u0628\\u0645\\u0628\\u0627\\u062f\\u0631\\u0629 *\\u062c\\u064e\\u0648\\u0651\\u064e\\u0644\\u0627\\u0646* \\u0627\\u0644\\u0631\\u062c\\u0627\\u0621 \\u0627\\u0644\\u0630\\u0647\\u0627\\u0628 \\u0644\\u062e\\u0627\\u0646\\u0629 Association \\u0648\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0625\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0628\\u0627\\u062f\\u0631\\u0647\\ud83e\\udd8c<\\/p>\\n\\n<p>*\\u0645\\u0644\\u0627\\u062d\\u0638\\u0647*\\ud83d\\udea8\\n-\\u062d\\u0636\\u0648\\u0631\\u0643 \\u0644\\u0644\\u0648\\u0631\\u0634 \\u0627\\u0644\\u062a\\u0627\\u0628\\u0639\\u0647 \\u0644\\u062a\\u0639\\u0627\\u0648\\u0646 \\u0644\\u0627 \\u062a\\u062d\\u0633\\u0628 \\u0645\\u0646 \\u0627\\u0644\\u0633\\u0627\\u0639\\u0627\\u062a \\u0627\\u0644\\u062a\\u0637\\u0648\\u0639\\u064a\\u0647 \\u0627\\u0630\\u0627 \\u062d\\u0636\\u0631\\u062a \\u0643\\u0645\\u0633\\u062a\\u0641\\u064a\\u062f \\u0641\\u0642\\u0637 <\\/p>\\n\\n<p>\\u0634\\u0627\\u0643\\u0631\\u064a\\u0646 \\u0644\\u0643\\u0645 \\u0639\\u0637\\u0627\\u0624\\u0643\\u0645\\u2728<\\/p>\",\"user_id\":null,\"user_name\":null,\"order\":null,\"status\":1,\"created_by\":9,\"updated_by\":9,\"deleted_by\":null,\"created_at\":\"2023-02-25T05:04:58.000000Z\",\"deleted_at\":null}}', NULL, '2023-02-25 11:04:58', '2023-02-25 11:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `associations`
--

CREATE TABLE `associations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `associations`
--

INSERT INTO `associations` (`id`, `name`, `slug`, `description`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'association 1', 'association-1', 'association \r\nالاسلام', 1, 1, 9, 9, '2023-02-14 16:41:00', '2023-02-25 02:16:46', '2023-02-25 02:16:46'),
(2, 'مبادرة جولان', 'برومو-تعاون', 'مبادرة جولان', 1, 1, 9, 9, '2023-02-14 16:41:27', '2023-02-25 02:16:56', '2023-02-25 02:16:56'),
(3, 'مبادرة جولان', 'برومو-تعاون', NULL, 1, 9, 9, 9, '2023-02-25 02:17:26', '2023-02-25 02:18:35', '2023-02-25 02:18:35'),
(4, 'مبادرة جَوَّلان', 'برومو-تعاون', NULL, 1, 9, 9, NULL, '2023-02-25 10:55:41', '2023-02-25 10:55:41', NULL),
(5, 'مُبادرة توليفة-', 'المتطوعون-في-رمضان', NULL, 1, 9, 9, NULL, '2023-03-22 02:00:42', '2023-03-22 02:00:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `order` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `user_name` varchar(191) DEFAULT NULL,
  `order` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `slug`, `comment`, `user_id`, `user_name`, `order`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, 'أصدقاء إنداء', NULL, '<p>*صباحكم مغمور بلطف من الله*</p>\n\n<p>*تركنا بين أيديكم الموقع الالكتروني*\nكل ما عليك فعله هو تسجيل ساعاتك التطوعيه من بداية دخولك لعائلة تعاون إلى هذا اليوم ✨</p>\n\n<p>عند إدخال الساعات التطوعيه الخاصه بمبادرة *جَوَّلان* الرجاء الذهاب لخانة Association واختيار إسم المبادره🦌</p>\n\n<p>*ملاحظه*🚨\n-حضورك للورش التابعه لتعاون لا تحسب من الساعات التطوعيه اذا حضرت كمستفيد فقط </p>\n\n<p>شاكرين لكم عطاؤكم✨</p>', NULL, NULL, NULL, 1, 9, 9, NULL, '2023-02-25 11:04:58', '2023-02-25 11:04:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `mime_type` varchar(191) DEFAULT NULL,
  `disk` varchar(191) NOT NULL,
  `conversions_disk` varchar(191) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(3, 'Modules\\Volunteering\\Models\\Volunteering', 1, 'a26ae8a7-17da-4e2d-aec9-06cc5111aa8b', 'volunteerings', 'arwa', 'ra6LBpr83f13VVqoyVg1mb5s5apTPJjR4MEHmuzE.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'media', 'media', 9841, '[]', '[]', '[]', '[]', 1, '2023-02-14 21:51:54', '2023-02-14 21:51:54'),
(7, 'Modules\\Volunteering\\Models\\Volunteering', 4, '399f97d2-9bcc-400f-be89-b29c9c1ef13b', 'volunteerings', 'wy-so-sign-up-for-sindbad', 'L43r5KOC8oTrF3p8bQm0QHnLP4K44fvdoidJPqsX.jpg', 'image/jpeg', 'media', 'media', 111512, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2023-02-22 16:14:15', '2023-02-22 16:14:17'),
(11, 'Modules\\Yearplan\\Models\\Yearplan', 2, 'ec98ef3f-f8a4-47be-9366-bfa6c76fa642', 'yearplans', 'YxV7QoEZ_400x400', 'fagiRi51A5WSbs0I8jsxJQmdVekXFmYvzr4VCoci.jpg', 'image/jpeg', 'media', 'media', 7130, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2023-02-22 17:02:36', '2023-02-22 17:02:36'),
(48, 'Modules\\Yearplan\\Models\\Yearplan', 3, '625d4356-e30f-4f3a-8019-a784f525a651', 'yearplans', 'Picture2', 'bDTp4MO66ciB7vlyyvcxxZ0kpeqAlPdG9t83AGAN.png', 'image/png', 'media', 'media', 415289, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2023-02-23 22:11:11', '2023-02-23 22:11:11'),
(49, 'Modules\\Volunteering\\Models\\Volunteering', 32, '2d7220fd-5bc7-4ed9-a4ea-c0314f432eeb', 'volunteerings', 'نشاط اجتياز', 'hU2FU5MFk72Hxnk3XkYfoSrKMIYvHkSwWqZSMn1w.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'media', 'media', 182353, '[]', '[]', '[]', '[]', 1, '2023-03-03 15:42:50', '2023-03-03 15:42:50'),
(51, 'Modules\\Volunteering\\Models\\Volunteering', 41, 'de7d2a16-9c40-4f2f-861d-531158659391', 'volunteerings', 'نشاط اجتياز هناء المعولي', 'nYLdcdh5ZOpigsUOpoP5YRmEvp935NpGR4g53Xwt.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'media', 'media', 5124295, '[]', '[]', '[]', '[]', 1, '2023-03-03 15:57:23', '2023-03-03 15:57:23'),
(52, 'Modules\\Volunteering\\Models\\Volunteering', 56, 'fba54a14-8937-4008-a8c7-85290b283717', 'volunteerings', 'نشاط اجتياز', 'ZgQBL4ACuzi4ThUUOoXiREdJuljaWrNT2AFvd06d.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'media', 'media', 188488, '[]', '[]', '[]', '[]', 1, '2023-03-03 16:38:54', '2023-03-03 16:38:54'),
(53, 'Modules\\Yearplan\\Models\\Yearplan', 1, 'b8aad8db-8f02-43af-8792-b57576c77100', 'yearplans', 'mobile-app-ad-trabzony-en', 'VH7kCGZQ955VZo2eRMi6sEr4s7wOXnpVbPeypJHC.jpg', 'image/jpeg', 'media', 'media', 156731, '[]', '[]', '{\"thumb\":true,\"thumb300\":true}', '[]', 1, '2023-03-18 02:03:50', '2023-03-18 02:03:51'),
(54, 'Modules\\Volunteering\\Models\\Volunteering', 94, 'ba280ec2-c68b-4d5b-8a18-8b97697f1908', 'volunteerings', 'توصيف توليفة', 'S2Ah5w0isH29y9Gnra7OQ7pyOEs3t3ElPAdONNoB.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'media', 'media', 21082, '[]', '[]', '[]', '[]', 1, '2023-03-26 14:55:19', '2023-03-26 14:55:19');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_11_062135_create_posts_table', 1),
(4, '2018_03_12_062135_create_categories_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2020_02_19_173641_create_settings_table', 1),
(8, '2020_02_19_173700_create_userprofiles_table', 1),
(9, '2020_02_19_173711_create_notifications_table', 1),
(10, '2020_02_22_115918_create_user_providers_table', 1),
(11, '2020_05_01_163442_create_tags_table', 1),
(12, '2020_05_01_163833_create_polymorphic_taggables_table', 1),
(13, '2020_05_04_151517_create_comments_table', 1),
(14, '2022_04_01_132914_create_media_table', 1),
(15, '2022_04_01_133918_create_permission_tables', 1),
(16, '2022_04_01_134140_create_activity_log_table', 1),
(17, '2022_04_01_134141_add_event_column_to_activity_log_table', 1),
(18, '2022_04_01_134142_add_batch_uuid_column_to_activity_log_table', 1),
(19, '2023_02_14_083429_create_associations_table', 2),
(20, '2023_02_14_084426_create_volunteerings_table', 3),
(21, '2023_02_19_105238_create_yearplans_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 12),
(5, 'App\\Models\\User', 5),
(5, 'App\\Models\\User', 10),
(5, 'App\\Models\\User', 13),
(5, 'App\\Models\\User', 16),
(5, 'App\\Models\\User', 17),
(5, 'App\\Models\\User', 18),
(5, 'App\\Models\\User', 19),
(5, 'App\\Models\\User', 20),
(5, 'App\\Models\\User', 21),
(5, 'App\\Models\\User', 22),
(5, 'App\\Models\\User', 23),
(5, 'App\\Models\\User', 24),
(5, 'App\\Models\\User', 26),
(5, 'App\\Models\\User', 27),
(5, 'App\\Models\\User', 28),
(5, 'App\\Models\\User', 29),
(5, 'App\\Models\\User', 30),
(5, 'App\\Models\\User', 31),
(5, 'App\\Models\\User', 32),
(5, 'App\\Models\\User', 33),
(5, 'App\\Models\\User', 34),
(5, 'App\\Models\\User', 35);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('00425fdf-7793-4829-bc55-69bfc53c051f', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 73, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>qNLepLkJpe qNLepLkJpe<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/73\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/73\"}', NULL, '2023-12-07 08:43:34', '2023-12-07 08:43:34'),
('03c7852f-30f0-46ea-9b53-f74ccbb4514f', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 107, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Rowyn Rowyn<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/107\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/107\"}', NULL, '2024-01-13 04:25:25', '2024-01-13 04:25:25'),
('04985e15-c470-4238-acf8-7bb3f9edbfaa', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 101, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Juhaina Alamri<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/101\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/101\"}', NULL, '2023-12-27 01:28:35', '2023-12-27 01:28:35'),
('053b400a-bced-4d05-9cd5-ac2e6f115f14', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 37, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>TakNsFDvJS TakNsFDvJS<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/37\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/37\"}', NULL, '2023-11-18 17:51:25', '2023-11-18 17:51:25'),
('07511fb8-0d9c-48a6-ab5b-225cf17a17d8', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 78, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Zyaire Zyaire<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/78\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/78\"}', NULL, '2023-12-17 03:06:51', '2023-12-17 03:06:51'),
('075d877f-9a32-4561-b647-0e78d6430772', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 93, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>KFbWzWdQIHKJ KFbWzWdQIHKJ<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/93\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/93\"}', NULL, '2023-12-20 03:55:59', '2023-12-20 03:55:59'),
('091296b5-72e7-40f0-b9d9-1a55f0f35a4b', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 110, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Andres Andres<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/110\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/110\"}', NULL, '2024-01-16 21:37:12', '2024-01-16 21:37:12'),
('0cc89c9b-b731-43f8-9dea-35877452e5d1', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 24, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Amira Alblushi<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/24\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/24\"}', '2023-02-25 16:35:48', '2023-02-25 16:23:00', '2023-02-25 16:35:48'),
('0fdddfa6-e07c-4d36-9ad0-7dad092d01e0', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 97, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Trevor Trevor<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/97\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/97\"}', NULL, '2023-12-25 05:28:21', '2023-12-25 05:28:21'),
('12ad2b82-fd30-4d47-8edb-1368b3f344aa', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 44, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>TfNsVqkyVrz TfNsVqkyVrz<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/44\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/44\"}', NULL, '2023-11-21 07:36:22', '2023-11-21 07:36:22'),
('13304db7-d172-4d22-a2f6-09c3c5482344', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 55, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Lakelynn Lakelynn<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/55\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/55\"}', NULL, '2023-12-01 21:14:16', '2023-12-01 21:14:16'),
('13608187-71b7-4a0d-b570-5ff87b35e3a8', 'Modules\\Comment\\Notifications\\NewCommentAdded', 'App\\Models\\User', 1, '{\"title\":\"New Comment :\\u0623\\u0635\\u062f\\u0642\\u0627\\u0621 \\u0625\\u0646\\u062f\\u0627\\u0621\",\"module\":\"Comment\",\"type\":\"created\",\"icon\":\"fas fa-comments\",\"text\":\"New Comment | <strong>\\u0623\\u0635\\u062f\\u0642\\u0627\\u0621 \\u0625\\u0646\\u062f\\u0627\\u0621<\\/strong> on <strong><\\/strong>  by <strong><\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/comments\\/8\",\"url_frontend\":\"\"}', '2023-02-27 17:02:49', '2023-02-25 11:04:58', '2023-02-27 17:02:49'),
('14dad3cc-a06f-4439-a48b-26ce98f369f9', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 30, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Fatma AL lawati<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/30\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/30\"}', NULL, '2023-03-03 17:35:21', '2023-03-03 17:35:21'),
('1c711f5d-cc17-4e83-963c-d04869313116', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 23, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>\\u0623\\u0633\\u0627\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0641\\u0631\\u062c\\u064a<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/23\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/23\"}', '2023-02-25 11:10:48', '2023-02-25 07:45:09', '2023-02-25 11:10:48'),
('1d4aae09-c565-48d6-a464-954962bd86dc', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 62, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Ace Ace<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/62\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/62\"}', NULL, '2023-12-03 05:13:32', '2023-12-03 05:13:32'),
('26928818-11b9-490f-be1d-07d64aaa2e97', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 86, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Augustine Augustine<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/86\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/86\"}', NULL, '2023-12-19 03:29:45', '2023-12-19 03:29:45'),
('26a137f3-21f6-4647-9ddb-4f2c9f6b9ec5', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 39, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>ywrCuAUtPPztsr ywrCuAUtPPztsr<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/39\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/39\"}', NULL, '2023-11-19 02:28:16', '2023-11-19 02:28:16'),
('290aa4ac-128c-4727-a926-52951715cd83', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 69, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>XcCmSoPkXJCft XcCmSoPkXJCft<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/69\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/69\"}', NULL, '2023-12-06 00:56:56', '2023-12-06 00:56:56'),
('2b85057a-1ccf-4e64-833e-3e90dff49f23', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 89, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>fkDjTBJKJOF fkDjTBJKJOF<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/89\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/89\"}', NULL, '2023-12-19 08:15:12', '2023-12-19 08:15:12'),
('36ffdcee-c4c3-40c1-a760-317e9ba3405a', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 29, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Shatha Alsheidi<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/29\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/29\"}', NULL, '2023-03-03 15:58:40', '2023-03-03 15:58:40'),
('37809464-f11e-4855-9868-98259bd8efdd', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 111, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Jase Jase<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/111\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/111\"}', NULL, '2024-01-17 13:47:25', '2024-01-17 13:47:25'),
('3aedeb71-a04d-44ef-8406-1a3e98b6e8e5', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 43, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>YokPCCbtnCmzfJe YokPCCbtnCmzfJe<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/43\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/43\"}', NULL, '2023-11-21 03:19:39', '2023-11-21 03:19:39'),
('3e8fe28a-0aaa-456e-a35c-de505c87fb8b', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 74, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>yiywSxoRKlmHk yiywSxoRKlmHk<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/74\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/74\"}', NULL, '2023-12-07 20:10:06', '2023-12-07 20:10:06'),
('3f31f1e8-f06e-4c6b-9c2a-ccf18e3005b4', 'Modules\\Comment\\Notifications\\NewCommentAdded', 'App\\Models\\User', 18, '{\"title\":\"New Comment :\\u0623\\u0635\\u062f\\u0642\\u0627\\u0621 \\u0625\\u0646\\u062f\\u0627\\u0621\",\"module\":\"Comment\",\"type\":\"created\",\"icon\":\"fas fa-comments\",\"text\":\"New Comment | <strong>\\u0623\\u0635\\u062f\\u0642\\u0627\\u0621 \\u0625\\u0646\\u062f\\u0627\\u0621<\\/strong> on <strong><\\/strong>  by <strong><\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/comments\\/8\",\"url_frontend\":\"\"}', NULL, '2023-02-25 11:04:59', '2023-02-25 11:04:59'),
('415b8b6d-86b0-450f-8e57-0d58bc150d40', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 66, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>MfbjbOuoa MfbjbOuoa<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/66\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/66\"}', NULL, '2023-12-05 03:52:52', '2023-12-05 03:52:52'),
('45771926-2794-496c-8349-6cc0edb2a6f9', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 67, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>uAQhKyTDpAhj uAQhKyTDpAhj<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/67\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/67\"}', NULL, '2023-12-05 07:26:53', '2023-12-05 07:26:53'),
('4681d200-3738-48c9-8617-b2664696072a', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 46, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>PhkMzUaTILC PhkMzUaTILC<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/46\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/46\"}', NULL, '2023-11-22 09:07:47', '2023-11-22 09:07:47'),
('4683b6cd-e863-40a6-8a61-a81ac1a1cb59', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 64, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>SSaEQFWPtutJjke SSaEQFWPtutJjke<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/64\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/64\"}', NULL, '2023-12-04 01:54:57', '2023-12-04 01:54:57'),
('49dd796f-a035-4b5f-9d86-b885a6657358', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 56, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Rylee Rylee<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/56\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/56\"}', NULL, '2023-12-01 21:40:34', '2023-12-01 21:40:34'),
('4b5926d3-8c63-4026-a180-88b542ab43db', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 81, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Clementine Clementine<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/81\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/81\"}', NULL, '2023-12-18 00:52:25', '2023-12-18 00:52:25'),
('4de6f4dc-f5b0-4342-8b5f-2e507ecfdbf0', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 42, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>vvMDvzfXsLnOas vvMDvzfXsLnOas<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/42\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/42\"}', NULL, '2023-11-20 22:38:08', '2023-11-20 22:38:08'),
('4e14a6eb-339c-4ebb-94be-b907a4b3cc40', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 115, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Pedro Pedro<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/115\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/115\"}', NULL, '2024-01-23 04:39:49', '2024-01-23 04:39:49'),
('4e73bc43-cdc1-487a-a720-aa2413fc0b79', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 27, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Salim ALHATTALI<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/27\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/27\"}', '2023-03-03 16:03:54', '2023-03-03 00:36:27', '2023-03-03 16:03:54'),
('4f398a73-e9c4-43b4-bef2-3818281f213b', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 95, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Jaxton Jaxton<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/95\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/95\"}', NULL, '2023-12-24 22:56:31', '2023-12-24 22:56:31'),
('532737ea-ba5b-4277-bf30-33cca68322bd', 'Modules\\Comment\\Notifications\\NewCommentAdded', 'App\\Models\\User', 21, '{\"title\":\"New Comment :\\u0623\\u0635\\u062f\\u0642\\u0627\\u0621 \\u0625\\u0646\\u062f\\u0627\\u0621\",\"module\":\"Comment\",\"type\":\"created\",\"icon\":\"fas fa-comments\",\"text\":\"New Comment | <strong>\\u0623\\u0635\\u062f\\u0642\\u0627\\u0621 \\u0625\\u0646\\u062f\\u0627\\u0621<\\/strong> on <strong><\\/strong>  by <strong><\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/comments\\/8\",\"url_frontend\":\"\"}', '2023-03-03 16:29:51', '2023-02-25 11:04:59', '2023-03-03 16:29:51'),
('58a5fb7c-5c06-4a9f-b0c7-06eb3172baa4', 'Modules\\Comment\\Notifications\\NewCommentAdded', 'App\\Models\\User', 13, '{\"title\":\"New Comment :\\u0623\\u0635\\u062f\\u0642\\u0627\\u0621 \\u0625\\u0646\\u062f\\u0627\\u0621\",\"module\":\"Comment\",\"type\":\"created\",\"icon\":\"fas fa-comments\",\"text\":\"New Comment | <strong>\\u0623\\u0635\\u062f\\u0642\\u0627\\u0621 \\u0625\\u0646\\u062f\\u0627\\u0621<\\/strong> on <strong><\\/strong>  by <strong><\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/comments\\/8\",\"url_frontend\":\"\"}', '2023-03-04 11:49:47', '2023-02-25 11:04:59', '2023-03-04 11:49:47'),
('5f2bcdc9-d399-45ad-b8db-6b8c9e68a1f9', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 116, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Alfonso Alfonso<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/116\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/116\"}', NULL, '2024-01-23 06:43:34', '2024-01-23 06:43:34'),
('5f713de0-6ca2-4013-9e57-ac8ff587e8ce', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 90, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Lennox Lennox<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/90\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/90\"}', NULL, '2023-12-19 08:35:27', '2023-12-19 08:35:27'),
('5f7fa4ab-d5ff-4332-863b-f4f53e760e06', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 100, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Nelson Nelson<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/100\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/100\"}', NULL, '2023-12-26 19:00:07', '2023-12-26 19:00:07'),
('607a1d37-843f-4fa7-8cc6-011188e790e3', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 94, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Cleo Cleo<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/94\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/94\"}', NULL, '2023-12-20 07:26:46', '2023-12-20 07:26:46'),
('649651ea-e5cb-4a50-b07d-923b9fd796c4', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 51, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>PlJDiPYDMtI PlJDiPYDMtI<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/51\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/51\"}', NULL, '2023-11-24 01:59:43', '2023-11-24 01:59:43'),
('6b427317-b942-4984-87fb-473aa29db248', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 76, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>tCAveVQaMMwBQ tCAveVQaMMwBQ<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/76\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/76\"}', NULL, '2023-12-08 09:13:19', '2023-12-08 09:13:19'),
('6f0dd962-385b-4dd9-8fd7-ac1b4fd64263', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 60, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Ramona Ramona<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/60\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/60\"}', NULL, '2023-12-02 17:54:35', '2023-12-02 17:54:35'),
('727fa2e4-695b-42f4-a934-fb086e01bc82', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 112, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Summer Summer<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/112\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/112\"}', NULL, '2024-01-18 11:34:31', '2024-01-18 11:34:31'),
('755bb06f-378e-45ed-a09f-4cef4f71d9b2', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 91, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Faith Faith<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/91\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/91\"}', NULL, '2023-12-19 21:14:45', '2023-12-19 21:14:45'),
('756827de-c0b8-4e46-9b2e-72928edc5429', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 68, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>kTUTpvotWMwtliuUV kTUTpvotWMwtliuUV<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/68\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/68\"}', NULL, '2023-12-05 19:45:43', '2023-12-05 19:45:43'),
('79d28ded-f938-46f5-a6cc-e9529a433119', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 36, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Aziz Shabibi<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/36\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/36\"}', NULL, '2023-08-04 12:59:10', '2023-08-04 12:59:10'),
('7a5dd40e-e44d-44be-ad2e-a5cbf2db559a', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 45, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>alLYCjaJrBJKo alLYCjaJrBJKo<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/45\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/45\"}', NULL, '2023-11-21 19:40:52', '2023-11-21 19:40:52'),
('7a87f711-4389-43b5-9d39-eee3e13a97c3', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 87, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Soren Soren<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/87\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/87\"}', NULL, '2023-12-19 03:47:42', '2023-12-19 03:47:42'),
('7b81b683-7012-4cea-a299-f7823bcd086e', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 83, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>JDCLSWmrLSj JDCLSWmrLSj<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/83\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/83\"}', NULL, '2023-12-18 11:36:59', '2023-12-18 11:36:59'),
('7bd4fcfa-437a-4828-88de-5e49fd86858f', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 104, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>August August<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/104\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/104\"}', NULL, '2023-12-27 10:00:59', '2023-12-27 10:00:59'),
('7f72b98a-853e-440a-bb45-e199e5cecd72', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 96, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Lucas Lucas<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/96\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/96\"}', NULL, '2023-12-25 00:23:12', '2023-12-25 00:23:12'),
('83c7e7c2-c9a7-4d0b-9c3c-eac2adbe036f', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 61, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Jackson Jackson<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/61\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/61\"}', NULL, '2023-12-02 22:33:51', '2023-12-02 22:33:51'),
('8c08f8f9-046f-419f-9edd-f32911a0bdfc', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 41, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>pykdEjYpJiIhDm pykdEjYpJiIhDm<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/41\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/41\"}', NULL, '2023-11-20 00:57:01', '2023-11-20 00:57:01'),
('8cfa8ab6-3a47-49d7-958c-3737eb6bcfd5', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 80, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Lilah Lilah<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/80\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/80\"}', NULL, '2023-12-17 06:20:42', '2023-12-17 06:20:42'),
('9259e480-a3c3-4d1b-8424-f08e8ebf7bc6', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 63, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>BcObPNWyMEdh BcObPNWyMEdh<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/63\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/63\"}', NULL, '2023-12-03 20:12:11', '2023-12-03 20:12:11'),
('9377cf1f-bf67-445a-bc66-b76f7cbafee6', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 22, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Hanaa Almaawali<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/22\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/22\"}', '2023-02-25 15:09:17', '2023-02-25 03:52:04', '2023-02-25 15:09:17'),
('93f88960-90ac-4287-af28-9d84d5b0eddb', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 59, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Dakari Dakari<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/59\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/59\"}', NULL, '2023-12-02 06:06:35', '2023-12-02 06:06:35'),
('946bcfa9-9b7d-4851-9ed9-1e35e4e89f0a', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 88, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>mucDmqCMYS mucDmqCMYS<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/88\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/88\"}', NULL, '2023-12-19 04:31:46', '2023-12-19 04:31:46'),
('969e409e-028f-4b73-aa09-a2b7494e3ebd', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 70, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>cUJdoshMcumRoDe cUJdoshMcumRoDe<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/70\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/70\"}', NULL, '2023-12-06 06:09:14', '2023-12-06 06:09:14'),
('9bad2961-943e-47a9-a629-f42766e210d9', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 102, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Jada Jada<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/102\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/102\"}', NULL, '2023-12-27 02:26:15', '2023-12-27 02:26:15'),
('9cb675e3-3a79-45ec-86a3-ca94a947046d', 'Modules\\Comment\\Notifications\\NewCommentAdded', 'App\\Models\\User', 22, '{\"title\":\"New Comment :\\u0623\\u0635\\u062f\\u0642\\u0627\\u0621 \\u0625\\u0646\\u062f\\u0627\\u0621\",\"module\":\"Comment\",\"type\":\"created\",\"icon\":\"fas fa-comments\",\"text\":\"New Comment | <strong>\\u0623\\u0635\\u062f\\u0642\\u0627\\u0621 \\u0625\\u0646\\u062f\\u0627\\u0621<\\/strong> on <strong><\\/strong>  by <strong><\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/comments\\/8\",\"url_frontend\":\"\"}', '2023-02-25 15:08:46', '2023-02-25 11:04:59', '2023-02-25 15:08:46'),
('9cd6e073-1d75-41a4-843d-ff3bf8857355', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 32, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>\\u0633\\u0646\\u062f\\u0633 \\u0627\\u0644\\u063a\\u0627\\u0641\\u0631\\u064a\\u0629<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/32\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/32\"}', '2023-03-22 11:36:11', '2023-03-22 10:52:59', '2023-03-22 11:36:11'),
('a0806965-0ecf-40d6-8e97-8879245d1b26', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 28, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Azzan albattashi<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/28\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/28\"}', '2023-03-03 16:12:05', '2023-03-03 14:59:30', '2023-03-03 16:12:05'),
('a17b57f9-bb01-4a5d-926c-3e36c865806a', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 77, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>WjPrYCAVtk WjPrYCAVtk<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/77\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/77\"}', NULL, '2023-12-08 16:07:55', '2023-12-08 16:07:55'),
('a63481ef-9bb4-4cf4-bad5-6e1b6274143d', 'Modules\\Comment\\Notifications\\NewCommentAdded', 'App\\Models\\User', 23, '{\"title\":\"New Comment :\\u0623\\u0635\\u062f\\u0642\\u0627\\u0621 \\u0625\\u0646\\u062f\\u0627\\u0621\",\"module\":\"Comment\",\"type\":\"created\",\"icon\":\"fas fa-comments\",\"text\":\"New Comment | <strong>\\u0623\\u0635\\u062f\\u0642\\u0627\\u0621 \\u0625\\u0646\\u062f\\u0627\\u0621<\\/strong> on <strong><\\/strong>  by <strong><\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/comments\\/8\",\"url_frontend\":\"\"}', '2023-02-25 11:11:10', '2023-02-25 11:05:00', '2023-02-25 11:11:10'),
('a70c2ada-6909-46b9-93c6-8557d33134c2', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 50, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>DWiXcSjlqajlW DWiXcSjlqajlW<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/50\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/50\"}', NULL, '2023-11-24 01:40:03', '2023-11-24 01:40:03'),
('a97ba75f-2a11-44ce-b54a-19dff7a10d74', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 98, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Tiffany Tiffany<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/98\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/98\"}', NULL, '2023-12-26 02:32:29', '2023-12-26 02:32:29'),
('a9d8bdf0-a80c-4b4c-b12b-f7f2a378f626', 'Modules\\Comment\\Notifications\\NewCommentAdded', 'App\\Models\\User', 19, '{\"title\":\"New Comment :\\u0623\\u0635\\u062f\\u0642\\u0627\\u0621 \\u0625\\u0646\\u062f\\u0627\\u0621\",\"module\":\"Comment\",\"type\":\"created\",\"icon\":\"fas fa-comments\",\"text\":\"New Comment | <strong>\\u0623\\u0635\\u062f\\u0642\\u0627\\u0621 \\u0625\\u0646\\u062f\\u0627\\u0621<\\/strong> on <strong><\\/strong>  by <strong><\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/comments\\/8\",\"url_frontend\":\"\"}', NULL, '2023-02-25 11:04:59', '2023-02-25 11:04:59'),
('ac897fd2-a881-469c-87ec-d870f34e2bd7', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 48, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>AvztJAcvxJNFwz AvztJAcvxJNFwz<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/48\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/48\"}', NULL, '2023-11-23 05:05:38', '2023-11-23 05:05:38'),
('adfe7ac6-90e1-4dcd-abd6-46d3610f92f5', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 31, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Amira Alblushi<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/31\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/31\"}', '2023-03-26 23:16:27', '2023-03-11 13:13:30', '2023-03-26 23:16:27'),
('ae184667-429c-48e7-a9db-d19f42214e60', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 92, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>TjOjwDwxPNAa TjOjwDwxPNAa<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/92\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/92\"}', NULL, '2023-12-19 21:30:46', '2023-12-19 21:30:46'),
('afb06288-744f-464c-8642-70bd1e718eba', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 117, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Rowyn Rowyn<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/117\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/117\"}', NULL, '2024-01-23 08:36:11', '2024-01-23 08:36:11'),
('b298081e-853a-4bcf-ac01-5bf6adf64672', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 108, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Kaysen Kaysen<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/108\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/108\"}', NULL, '2024-01-13 09:52:41', '2024-01-13 09:52:41'),
('b9d8cf08-5492-4878-85ca-c9bb040d10d6', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 106, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Madden Madden<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/106\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/106\"}', NULL, '2023-12-30 12:50:29', '2023-12-30 12:50:29'),
('ba5a44a0-acba-4f68-ae29-ee9718eff805', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 82, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Blair Blair<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/82\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/82\"}', NULL, '2023-12-18 05:46:09', '2023-12-18 05:46:09'),
('bc12e8ee-4e57-406a-8940-e54366861ff1', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 49, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>OaAlTETNMjjp OaAlTETNMjjp<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/49\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/49\"}', NULL, '2023-11-23 17:46:19', '2023-11-23 17:46:19'),
('c25cf9cb-22b9-4984-8dfb-89347003c8e6', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 34, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>\\u0631\\u0647\\u0627\\u0645 \\u0627\\u0644\\u0634\\u0628\\u064a\\u0628\\u064a<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/34\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/34\"}', '2023-04-09 01:02:46', '2023-04-02 15:55:19', '2023-04-09 01:02:46'),
('c389bb14-5c56-4d79-9955-25a006abaa22', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 53, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Rome Rome<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/53\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/53\"}', NULL, '2023-12-01 20:13:53', '2023-12-01 20:13:53'),
('cee10401-1a72-4532-9d9f-2a79e6ee1fa8', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 114, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Renata Renata<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/114\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/114\"}', NULL, '2024-01-23 02:29:23', '2024-01-23 02:29:23'),
('d17418ca-9837-4971-a536-59ac5550fbc9', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 85, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>jqtXvJVITDWcbTOpH jqtXvJVITDWcbTOpH<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/85\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/85\"}', NULL, '2023-12-18 22:39:04', '2023-12-18 22:39:04'),
('d4d61f16-39ba-4265-9afb-466f51436668', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 21, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Atika Al-Shabibi<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/21\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/21\"}', '2023-03-03 16:41:47', '2023-02-25 01:15:52', '2023-03-03 16:41:47'),
('d71f5d45-8c3b-42b3-b613-cc12bbdff768', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 79, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Gunnar Gunnar<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/79\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/79\"}', NULL, '2023-12-17 03:06:59', '2023-12-17 03:06:59'),
('d7f777bb-059e-4ed8-9ff7-430626763544', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 99, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Demi Demi<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/99\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/99\"}', NULL, '2023-12-26 05:12:49', '2023-12-26 05:12:49'),
('d9410e6d-d53d-4c57-b0b9-79766a0a8cd7', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 35, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Hiyam Alshidhani<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/35\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/35\"}', NULL, '2023-04-17 16:21:29', '2023-04-17 16:21:29'),
('da35298f-1789-4dd1-84dd-932a201bbc21', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 113, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Kieran Kieran<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/113\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/113\"}', NULL, '2024-01-22 16:13:50', '2024-01-22 16:13:50'),
('da4e4d7f-3320-4bf0-a5fe-a0a91bfede3a', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 84, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Lisa Lisa<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/84\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/84\"}', NULL, '2023-12-18 21:11:05', '2023-12-18 21:11:05'),
('de94a011-dcb8-4dbb-b9cb-e7b0942ac8a2', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 38, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>RkvMLBkIjnkrr RkvMLBkIjnkrr<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/38\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/38\"}', NULL, '2023-11-18 21:10:22', '2023-11-18 21:10:22'),
('dfce746c-949c-483e-a61e-8ce61e8ca503', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 105, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Dax Dax<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/105\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/105\"}', NULL, '2023-12-30 12:20:58', '2023-12-30 12:20:58'),
('e0a55b8e-cda1-4dbb-8ee3-54c59e6f5099', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 109, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Jimmy Jimmy<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/109\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/109\"}', NULL, '2024-01-16 02:41:51', '2024-01-16 02:41:51'),
('e8b32fcf-651e-4869-a7fe-e798635652bd', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 75, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>dpLroASVJzJe dpLroASVJzJe<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/75\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/75\"}', NULL, '2023-12-08 01:54:23', '2023-12-08 01:54:23'),
('eff63b9b-645a-4d63-bd0a-5c50e33f7f14', 'Modules\\Comment\\Notifications\\NewCommentAdded', 'App\\Models\\User', 9, '{\"title\":\"New Comment :\\u0623\\u0635\\u062f\\u0642\\u0627\\u0621 \\u0625\\u0646\\u062f\\u0627\\u0621\",\"module\":\"Comment\",\"type\":\"created\",\"icon\":\"fas fa-comments\",\"text\":\"New Comment | <strong>\\u0623\\u0635\\u062f\\u0642\\u0627\\u0621 \\u0625\\u0646\\u062f\\u0627\\u0621<\\/strong> on <strong><\\/strong>  by <strong><\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/comments\\/8\",\"url_frontend\":\"\"}', '2023-02-25 11:05:10', '2023-02-25 11:04:58', '2023-02-25 11:05:10'),
('f275335f-4b9e-40a1-a2d0-16425dcced89', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 47, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>xDsNyKAwSr xDsNyKAwSr<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/47\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/47\"}', NULL, '2023-11-22 18:59:27', '2023-11-22 18:59:27'),
('f43bde46-bc63-411b-ab5b-8881ad8d1c27', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 52, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Ambrose Ambrose<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/52\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/52\"}', NULL, '2023-12-01 04:32:00', '2023-12-01 04:32:00');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('f65101f9-b1e9-4807-a9de-834c97861f94', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 57, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Zamir Zamir<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/57\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/57\"}', NULL, '2023-12-01 22:45:24', '2023-12-01 22:45:24'),
('fb444f34-457c-4263-b0af-c5df8fc4a719', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 58, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Grace Grace<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/58\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/58\"}', NULL, '2023-12-02 00:54:12', '2023-12-02 00:54:12'),
('fb699c43-2e27-4b80-a6a4-7670c1b77f44', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 65, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>UQMtSjBsjVKWoCfk UQMtSjBsjVKWoCfk<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/65\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/65\"}', NULL, '2023-12-04 05:31:24', '2023-12-04 05:31:24'),
('fbb31bd0-f41c-4d3a-b8cb-a134bf7deafb', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 26, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Azzan albattashi<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/26\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/26\"}', NULL, '2023-02-25 21:08:38', '2023-02-25 21:08:38'),
('fbd6fc86-7dbe-4e29-bbe8-02acbb5b55cb', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 103, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Stanley Stanley<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/103\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/103\"}', NULL, '2023-12-27 07:52:37', '2023-12-27 07:52:37'),
('fbee49e1-c60a-468c-8ba4-8bc4ffd485ab', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 40, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>tnvLUQqTMzlL tnvLUQqTMzlL<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/40\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/40\"}', NULL, '2023-11-19 19:25:35', '2023-11-19 19:25:35'),
('fd96a522-8442-4f2a-a787-993043ca9a08', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 71, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>LznrFrXNjmmsH LznrFrXNjmmsH<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/71\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/71\"}', NULL, '2023-12-06 12:04:01', '2023-12-06 12:04:01'),
('fe585b60-2723-48ad-b2d8-e3cbd2224dd8', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 33, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>\\u0631\\u0647\\u0627\\u0645 \\u0627\\u0644\\u0634\\u0628\\u064a\\u0628\\u064a<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/33\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/33\"}', '2023-04-02 15:36:36', '2023-03-30 03:05:09', '2023-04-02 15:36:36'),
('ff3d25ac-9404-4916-9b97-681f617022a6', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 72, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>VbPuPYhJonA VbPuPYhJonA<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/72\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/72\"}', NULL, '2023-12-07 01:42:54', '2023-12-07 01:42:54'),
('ff9d603d-f88a-4c07-af00-5c3fc8d89547', 'App\\Notifications\\NewRegistration', 'App\\Models\\User', 54, '{\"title\":\"Registration Completed!\",\"module\":\"User\",\"type\":\"created\",\"icon\":\"fas fa-user\",\"text\":\"Registration Completed! | New registration completed for <strong>Alejandra Alejandra<\\/strong>\",\"url_backend\":\"https:\\/\\/indaaoman.com\\/admin\\/users\\/profile\\/54\",\"url_frontend\":\"https:\\/\\/indaaoman.com\\/profile\\/54\"}', NULL, '2023-12-01 20:48:34', '2023-12-01 20:48:34');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ameera709mohammed@gmail.com', '$2y$10$UdMRGiO0eu4RLCyGQ0ACgef3GOEHqsr3J6hLCOkjlUjt5JIkzr4sy', '2023-03-11 13:07:31');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `guard_name` varchar(125) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_backend', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(2, 'edit_settings', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(3, 'view_logs', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(4, 'view_users', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(5, 'add_users', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(6, 'edit_users', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(7, 'delete_users', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(8, 'restore_users', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(9, 'block_users', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(10, 'view_roles', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(11, 'add_roles', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(12, 'edit_roles', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(13, 'delete_roles', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(14, 'restore_roles', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(15, 'view_backups', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(16, 'add_backups', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(17, 'create_backups', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(18, 'download_backups', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(19, 'delete_backups', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(20, 'view_posts', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(21, 'add_posts', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(22, 'edit_posts', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(23, 'delete_posts', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(24, 'restore_posts', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(25, 'view_categories', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(26, 'add_categories', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(27, 'edit_categories', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(28, 'delete_categories', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(29, 'restore_categories', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(30, 'view_tags', 'web', '2023-02-13 09:58:56', '2023-02-13 09:58:56'),
(31, 'add_tags', 'web', '2023-02-13 09:58:56', '2023-02-13 09:58:56'),
(32, 'edit_tags', 'web', '2023-02-13 09:58:56', '2023-02-13 09:58:56'),
(33, 'delete_tags', 'web', '2023-02-13 09:58:56', '2023-02-13 09:58:56'),
(34, 'restore_tags', 'web', '2023-02-13 09:58:56', '2023-02-13 09:58:56'),
(35, 'view_comments', 'web', '2023-02-13 09:58:56', '2023-02-13 09:58:56'),
(36, 'add_comments', 'web', '2023-02-13 09:58:56', '2023-02-13 09:58:56'),
(37, 'edit_comments', 'web', '2023-02-13 09:58:56', '2023-02-13 09:58:56'),
(38, 'delete_comments', 'web', '2023-02-13 09:58:56', '2023-02-13 09:58:56'),
(39, 'restore_comments', 'web', '2023-02-13 09:58:56', '2023-02-13 09:58:56'),
(45, 'add_associations', 'web', '2023-02-16 05:52:13', '2023-02-16 05:52:13'),
(46, 'create_associations', 'web', '2023-02-16 05:52:13', '2023-02-16 05:52:13'),
(47, 'edit_associations', 'web', '2023-02-16 05:52:13', '2023-02-16 05:52:13'),
(48, 'view_associations', 'web', '2023-02-16 05:52:13', '2023-02-16 05:52:13'),
(49, 'restore_associations', 'web', '2023-02-16 05:52:13', '2023-02-16 05:52:13'),
(50, 'add_volunteerings', 'web', '2023-02-16 05:53:11', '2023-02-16 05:53:11'),
(51, 'create_volunteerings', 'web', '2023-02-16 05:53:11', '2023-02-16 05:53:11'),
(52, 'edit_volunteerings', 'web', '2023-02-16 05:53:12', '2023-02-16 05:53:12'),
(53, 'view_volunteerings', 'web', '2023-02-16 05:53:12', '2023-02-16 05:53:12'),
(54, 'restore_volunteerings', 'web', '2023-02-16 05:53:12', '2023-02-16 05:53:12'),
(55, 'view_All', 'web', '2023-02-20 16:37:11', '2023-02-20 16:37:11'),
(56, 'delete_volunteerings', 'web', '2023-02-22 11:47:45', '2023-02-22 11:47:45'),
(57, 'delete_associations', 'web', '2023-02-22 11:47:45', '2023-02-22 11:47:45'),
(64, 'add_yearplans', 'web', '2023-02-23 21:16:18', '2023-02-23 21:16:18'),
(65, 'create_yearplans', 'web', '2023-02-23 21:16:18', '2023-02-23 21:16:18'),
(66, 'edit_yearplans', 'web', '2023-02-23 21:16:18', '2023-02-23 21:16:18'),
(67, 'view_yearplans', 'web', '2023-02-23 21:16:18', '2023-02-23 21:16:18'),
(68, 'restore_yearplans', 'web', '2023-02-23 21:16:18', '2023-02-23 21:16:18'),
(69, 'delete_yearplans', 'web', '2023-02-23 21:16:18', '2023-02-23 21:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `intro` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `category_name` varchar(191) DEFAULT NULL,
  `is_featured` int(11) DEFAULT NULL,
  `featured_image` varchar(191) DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_og_image` varchar(191) DEFAULT NULL,
  `meta_og_url` varchar(191) DEFAULT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `moderated_by` int(10) UNSIGNED DEFAULT NULL,
  `moderated_at` datetime DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_by_name` varchar(191) DEFAULT NULL,
  `created_by_alias` varchar(191) DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `guard_name` varchar(125) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 'web', '2023-02-13 09:58:54', '2023-02-13 09:58:54'),
(3, 'administrator', 'web', '2023-02-13 09:58:55', '2023-02-24 03:00:19'),
(5, 'user', 'web', '2023-02-13 09:58:55', '2023-02-13 09:58:55'),
(7, 'writer', 'web', '2023-02-22 11:47:44', '2023-02-22 11:47:44');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 3),
(1, 5),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(35, 3),
(35, 5),
(36, 3),
(37, 3),
(39, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(48, 5),
(49, 3),
(50, 3),
(50, 5),
(51, 3),
(51, 5),
(52, 3),
(52, 5),
(53, 3),
(53, 5),
(54, 3),
(55, 3),
(56, 3),
(56, 7),
(57, 3),
(57, 7),
(64, 3),
(64, 7),
(65, 3),
(65, 7),
(66, 3),
(66, 7),
(67, 3),
(67, 7),
(68, 3),
(68, 7),
(69, 3),
(69, 7);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `val` text DEFAULT NULL,
  `type` char(20) NOT NULL DEFAULT 'string',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `val`, `type`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'app_name', 'إنداء تعاون', 'string', 6, 1, NULL, '2023-02-14 10:54:42', '2023-02-24 16:31:22', NULL),
(2, 'footer_text', 'Built with ♥ from Oman', 'string', 6, 1, NULL, '2023-02-14 10:54:42', '2023-02-24 16:31:22', NULL),
(3, 'show_copyright', '1', 'text', 6, 1, NULL, '2023-02-14 10:54:42', '2023-02-24 16:31:22', NULL),
(4, 'email', 'infoproject@indaaoman.com', 'string', 6, 1, NULL, '2023-02-14 10:54:42', '2023-02-24 16:31:22', NULL),
(5, 'facebook_url', '#', 'string', 6, 1, NULL, '2023-02-14 10:54:42', '2023-02-24 16:31:22', NULL),
(6, 'twitter_url', '#', 'string', 6, 1, NULL, '2023-02-14 10:54:42', '2023-02-24 16:31:22', NULL),
(7, 'instagram_url', '#', 'string', 6, 1, NULL, '2023-02-14 10:54:42', '2023-02-24 16:31:22', NULL),
(8, 'linkedin_url', '#', 'string', 6, 1, NULL, '2023-02-14 10:54:42', '2023-02-24 16:31:22', NULL),
(9, 'youtube_url', '#', 'string', 6, 1, NULL, '2023-02-14 10:54:42', '2023-02-24 16:31:22', NULL),
(10, 'meta_site_name', 'Indaa-taawon', 'text', 6, 1, NULL, '2023-02-14 10:54:42', '2023-02-24 16:31:22', NULL),
(11, 'meta_description', 'التابعه للشبكة العمانية للمتطوعين تعاون', 'text', 6, 1, NULL, '2023-02-14 10:54:42', '2023-02-24 16:31:22', NULL),
(12, 'meta_keyword', 'أكاديمية تعاون', 'text', 6, 1, NULL, '2023-02-14 10:54:42', '2023-02-24 16:31:22', NULL),
(13, 'meta_image', 'img/default_banner.jpg', 'text', 6, 1, NULL, '2023-02-14 10:54:42', '2023-02-24 16:31:22', NULL),
(14, 'meta_fb_app_id', NULL, 'text', 6, 1, NULL, '2023-02-14 10:54:42', '2023-02-24 16:31:22', NULL),
(15, 'meta_twitter_site', NULL, 'text', 6, 1, NULL, '2023-02-14 10:54:42', '2023-02-24 16:31:22', NULL),
(16, 'meta_twitter_creator', NULL, 'text', 6, 1, NULL, '2023-02-14 10:54:43', '2023-02-24 16:31:22', NULL),
(17, 'google_analytics', NULL, 'text', 6, 1, NULL, '2023-02-14 10:54:43', '2023-02-24 16:31:22', NULL),
(18, 'custom_css_block', NULL, 'string', 6, 1, NULL, '2023-02-14 10:54:43', '2023-02-24 16:31:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_type` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `group_name` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userprofiles`
--

CREATE TABLE `userprofiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `username` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `mobile` varchar(191) DEFAULT NULL,
  `gender` varchar(191) DEFAULT NULL,
  `url_website` varchar(191) DEFAULT NULL,
  `url_facebook` varchar(191) DEFAULT NULL,
  `url_twitter` varchar(191) DEFAULT NULL,
  `url_instagram` varchar(191) DEFAULT NULL,
  `url_linkedin` varchar(191) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` text DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `user_metadata` text DEFAULT NULL,
  `last_ip` varchar(191) DEFAULT NULL,
  `login_count` int(11) NOT NULL DEFAULT 0,
  `last_login` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userprofiles`
--

INSERT INTO `userprofiles` (`id`, `user_id`, `name`, `first_name`, `last_name`, `username`, `email`, `mobile`, `gender`, `url_website`, `url_facebook`, `url_twitter`, `url_instagram`, `url_linkedin`, `date_of_birth`, `address`, `bio`, `avatar`, `user_metadata`, `last_ip`, `login_count`, `last_login`, `email_verified_at`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Abdullah AL-Aufi', 'Abdullah', 'AL-Aufi', '100001', 'super@admin.com', '98216618', 'Male', NULL, NULL, NULL, NULL, NULL, '1989-10-22', 'Oman', NULL, 'img/default-avatar.jpg', NULL, '94.176.30.114', 52, '2023-12-14 09:25:48', NULL, 1, NULL, 1, NULL, '2023-02-13 09:58:54', '2023-12-14 09:25:48', NULL),
(2, 2, 'Admin Istrator', 'Admin', 'Istrator', '100002', 'admin@admin.com', '575-404-9893', 'Female', NULL, NULL, NULL, NULL, NULL, '1988-02-08', NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, 1, NULL, '2023-02-13 09:58:54', '2023-02-20 17:13:01', '2023-02-20 17:13:01'),
(3, 3, 'Manager', 'Manager', 'User User', '100003', 'manager@manager.com', '+16812255827', 'Other', NULL, NULL, NULL, NULL, NULL, '1982-06-22', NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, 1, NULL, '2023-02-13 09:58:54', '2023-02-20 17:13:14', '2023-02-20 17:13:14'),
(4, 4, 'Executive User', 'Executive', 'User', '100004', 'executive@executive.com', '1-985-900-1708', 'Other', NULL, NULL, NULL, NULL, NULL, '1972-06-25', NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, 1, NULL, '2023-02-13 09:58:54', '2023-02-20 17:13:10', '2023-02-20 17:13:10'),
(5, 5, 'General User', 'General', 'User', '100005', 'user@user.com', '(234) 616-3340', 'Male', NULL, NULL, NULL, NULL, NULL, '1992-08-21', NULL, NULL, 'img/default-avatar.jpg', NULL, '127.0.0.1', 1, '2023-02-20 12:31:12', NULL, 1, NULL, 1, NULL, '2023-02-13 09:58:54', '2023-02-20 17:13:05', '2023-02-20 17:13:05'),
(7, 7, 'kitdetails kitdetails', 'kitdetails', 'kitdetails', '100007', 'kitdetails2021@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, '127.0.0.1', 1, '2023-02-22 09:59:28', NULL, 1, 1, 9, NULL, '2023-02-22 05:47:30', '2023-02-22 23:44:00', '2023-02-22 23:44:00'),
(9, 9, 'Aya Alshehami', 'Aya', 'Alshehami', '100009', 'ayasuliman28@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, '78.111.43.130', 65, '2023-11-28 14:53:49', NULL, 1, NULL, 9, NULL, '2023-02-22 22:12:57', '2023-11-28 14:53:49', NULL),
(10, 10, 'Yusra Khalfan', 'Yusra', 'Khalfan', '100010', 'ykhalfan95@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, '2a02:2909:9800:ec3:6833:400f:ed06:4e61', 3, '2023-02-23 23:43:14', NULL, 1, NULL, 9, NULL, '2023-02-22 23:42:27', '2023-02-23 23:54:11', '2023-02-23 23:54:11'),
(11, 11, 'Abdullah AL-aufi', 'Abdullah', 'AL-aufi', '100011', 'abdooufi1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-02-23 09:31:10', '2023-02-23 09:31:10', NULL),
(12, 12, 'Abdullah AL-Oufi', 'Abdullah', 'AL-Oufi', '100012', 'abdooufi1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, '2001:1670:18:98ad:159e:931b:3b2a:daa5', 1, '2023-02-23 21:11:03', NULL, 1, 1, 9, NULL, '2023-02-23 21:10:44', '2023-02-23 22:12:29', '2023-02-23 22:12:29'),
(13, 13, 'Murshid Almashykhi', 'Murshid', 'Almashykhi', '100013', 'morshid878@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, '188.140.182.54', 7, '2023-12-27 01:23:10', NULL, 1, NULL, 13, NULL, '2023-02-23 22:10:36', '2023-12-27 01:23:10', NULL),
(14, 14, 'Arwa Alshehami', 'Arwa', 'Alshehami', '100014', 'ss2384@seebvc.edu.om', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, '78.111.43.130', 1, '2023-02-23 22:40:11', NULL, 1, NULL, 9, NULL, '2023-02-23 22:22:47', '2023-02-23 23:40:12', '2023-02-23 23:40:12'),
(15, 15, 'Test Test', 'Test', 'Test', '100015', 'kinggrains96@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, 1, NULL, '2023-02-23 23:41:41', '2023-02-24 16:19:17', '2023-02-24 16:19:17'),
(16, 16, 'arwa alshehami', 'arwa', 'alshehami', '100016', 'arwa.25111999@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, 9, NULL, '2023-02-24 00:11:11', '2023-02-24 00:29:03', '2023-02-24 00:29:03'),
(17, 17, 'sahar alshehami', 'sahar', 'alshehami', '100017', 'sahar_1998_@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, 9, NULL, '2023-02-24 00:23:40', '2023-02-24 00:27:54', '2023-02-24 00:27:54'),
(18, 18, 'Yusra AlHadifi', 'Yusra', 'AlHadifi', '100018', '16s1841@stu.hct.edu.om', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, '2a02:2909:8200:6e6:c897:16f1:4c68:3a41', 3, '2023-04-09 14:04:19', NULL, 1, 10, 18, NULL, '2023-02-24 00:29:46', '2023-04-09 14:04:19', NULL),
(19, 19, 'Abdullah AlMujaini', 'Abdullah', 'AlMujaini', '100019', 'abdullah@taawon.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, 9, NULL, '2023-02-24 15:40:10', '2023-02-24 16:18:46', NULL),
(20, 20, 'Abdullah alaufi', 'Abdullah', 'alaufi', '100020', 'abdooufi1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, 9, NULL, '2023-02-24 16:21:51', '2023-02-25 02:19:04', '2023-02-25 02:19:04'),
(21, 21, 'Atika Al-Shabibi', 'Atika', 'Al-Shabibi', '100021', 'atikaalshabibi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, '37.40.227.170', 24, '2024-01-09 15:57:22', NULL, 1, NULL, 21, NULL, '2023-02-25 01:15:52', '2024-01-09 15:57:22', NULL),
(22, 22, 'Hanaa Almaawali', 'Hanaa', 'Almaawali', '100022', 'Hanaa.almaawali@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, '37.41.125.220', 12, '2023-06-14 16:27:10', NULL, 1, NULL, 22, NULL, '2023-02-25 03:52:04', '2023-06-14 16:27:10', NULL),
(23, 23, 'أسامة المفرجي', 'أسامة', 'المفرجي', '100023', 'osamaalmufargi@gmail.com', '94041887', 'Male', NULL, NULL, NULL, NULL, NULL, '1998-03-01', NULL, NULL, 'img/default-avatar.jpg', NULL, '5.162.141.74', 15, '2023-11-27 21:33:26', NULL, 1, NULL, 23, NULL, '2023-02-25 07:45:09', '2023-11-27 21:33:26', NULL),
(24, 24, 'Amira Alblushi', 'Amira', 'Alblushi', '100024', 'ameera709mohammed@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, '37.40.130.133', 3, '2023-02-25 22:33:23', NULL, 1, NULL, 24, NULL, '2023-02-25 16:23:00', '2023-02-25 22:33:23', NULL),
(25, 26, 'Azzan albattashi', 'Azzan', 'albattashi', '100026', 'azzanalbattshi9@gmail.con', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, 9, NULL, '2023-02-25 21:08:38', '2023-03-03 16:03:29', '2023-03-03 16:03:29'),
(26, 27, 'Salim ALHATTALI', 'Salim', 'ALHATTALI', '100027', 'salimraad790@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, '89.147.156.21', 9, '2023-11-29 21:25:23', NULL, 1, NULL, 27, NULL, '2023-03-03 00:36:27', '2023-11-29 21:25:23', NULL),
(27, 28, 'Azzan albattashi', 'Azzan', 'albattashi', '100028', 'azzanalbattashi95@outlook.sa', '96669817', 'Male', NULL, NULL, NULL, NULL, NULL, '1995-03-09', 'Muscat', NULL, 'img/default-avatar.jpg', NULL, '5.162.170.113', 8, '2023-06-03 02:54:26', NULL, 1, NULL, 28, NULL, '2023-03-03 14:59:30', '2023-06-03 02:54:26', NULL),
(28, 29, 'Shatha Alsheidi', 'Shatha', 'Alsheidi', '100029', 'Shathaalshidi994@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, '37.41.19.237', 7, '2023-05-22 00:12:22', NULL, 1, NULL, 29, NULL, '2023-03-03 15:58:40', '2023-05-22 00:12:22', NULL),
(29, 30, 'Fatma AL lawati', 'Fatma', 'AL lawati', '100030', 'fatma99964@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, '5.36.70.40', 7, '2023-04-09 00:50:05', NULL, 1, NULL, 9, NULL, '2023-03-03 17:35:21', '2023-03-03 17:37:42', NULL),
(30, 31, 'Amira Alblushi', 'Amira', 'Alblushi', '100031', '66j1634@stu.hct.edu.om', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, '37.40.228.25', 8, '2023-04-08 23:24:42', NULL, 1, NULL, 31, NULL, '2023-03-11 13:13:30', '2023-04-08 23:24:42', NULL),
(31, 32, 'سندس الغافرية', 'سندس', 'الغافرية', '100032', 'sondusalghafri@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, '2001:1670:10:3721:dd31:1726:e0dd:fc88', 4, '2023-04-04 05:14:46', NULL, 1, NULL, 32, NULL, '2023-03-22 10:52:59', '2023-04-04 05:14:46', NULL),
(32, 33, 'رهام الشبيبي', 'رهام', 'الشبيبي', '100033', 'alshabibifamily17@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, '37.40.238.98', 4, '2023-04-02 15:48:41', NULL, 1, NULL, 9, NULL, '2023-03-30 03:05:09', '2023-05-10 16:59:16', '2023-05-10 16:59:16'),
(33, 34, 'رهام الشبيبي', 'رهام', 'الشبيبي', '100034', 'eh.b.q.j.a.h@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, '145.255.98.34', 5, '2023-04-09 14:12:22', NULL, 1, NULL, 34, NULL, '2023-04-02 15:55:19', '2023-04-09 14:12:22', NULL),
(34, 35, 'Hiyam Alshidhani', 'Hiyam', 'Alshidhani', '100035', 'Miss.alshidhani@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, '161.8.73.133', 1, '2023-04-17 16:33:13', NULL, 1, NULL, 9, NULL, '2023-04-17 16:21:29', '2023-04-17 16:21:25', NULL),
(35, 36, 'Aziz Shabibi', 'Aziz', 'Shabibi', '100036', 'aziz.121262@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, '185.222.124.3', 1, '2023-08-04 13:02:07', NULL, 1, NULL, 36, NULL, '2023-08-04 12:59:10', '2023-08-04 13:02:07', NULL),
(36, 37, 'TakNsFDvJS TakNsFDvJS', 'TakNsFDvJS', 'TakNsFDvJS', '100037', 'xzCJAe.bqwchp@monochord.xyz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-11-18 17:51:25', '2023-11-18 17:51:25', NULL),
(37, 38, 'RkvMLBkIjnkrr RkvMLBkIjnkrr', 'RkvMLBkIjnkrr', 'RkvMLBkIjnkrr', '100038', 'zethfast@fastmail.fm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-11-18 21:10:22', '2023-11-18 21:10:22', NULL),
(38, 39, 'ywrCuAUtPPztsr ywrCuAUtPPztsr', 'ywrCuAUtPPztsr', 'ywrCuAUtPPztsr', '100039', 'josephsmiher12@outlook.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-11-19 02:28:16', '2023-11-19 02:28:16', NULL),
(39, 40, 'tnvLUQqTMzlL tnvLUQqTMzlL', 'tnvLUQqTMzlL', 'tnvLUQqTMzlL', '100040', 'rosefunerals@outlook.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-11-19 19:25:35', '2023-11-19 19:25:35', NULL),
(40, 41, 'pykdEjYpJiIhDm pykdEjYpJiIhDm', 'pykdEjYpJiIhDm', 'pykdEjYpJiIhDm', '100041', 'habip@basdasotomotiv.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-11-20 00:57:01', '2023-11-20 00:57:01', NULL),
(41, 42, 'vvMDvzfXsLnOas vvMDvzfXsLnOas', 'vvMDvzfXsLnOas', 'vvMDvzfXsLnOas', '100042', 'yulansteele@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-11-20 22:38:08', '2023-11-20 22:38:08', NULL),
(42, 43, 'YokPCCbtnCmzfJe YokPCCbtnCmzfJe', 'YokPCCbtnCmzfJe', 'YokPCCbtnCmzfJe', '100043', 'ana@eandmcorp.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-11-21 03:19:39', '2023-11-21 03:19:39', NULL),
(43, 44, 'TfNsVqkyVrz TfNsVqkyVrz', 'TfNsVqkyVrz', 'TfNsVqkyVrz', '100044', 'kirk@kirkdavislaw.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-11-21 07:36:22', '2023-11-21 07:36:22', NULL),
(44, 45, 'alLYCjaJrBJKo alLYCjaJrBJKo', 'alLYCjaJrBJKo', 'alLYCjaJrBJKo', '100045', 'sohad@vivagl.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-11-21 19:40:52', '2023-11-21 19:40:52', NULL),
(45, 46, 'PhkMzUaTILC PhkMzUaTILC', 'PhkMzUaTILC', 'PhkMzUaTILC', '100046', 'ivan.avina@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-11-22 09:07:47', '2023-11-22 09:07:47', NULL),
(46, 47, 'xDsNyKAwSr xDsNyKAwSr', 'xDsNyKAwSr', 'xDsNyKAwSr', '100047', 'brentjuhasz@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-11-22 18:59:27', '2023-11-22 18:59:27', NULL),
(47, 48, 'AvztJAcvxJNFwz AvztJAcvxJNFwz', 'AvztJAcvxJNFwz', 'AvztJAcvxJNFwz', '100048', 'evangelistkisha@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-11-23 05:05:38', '2023-11-23 05:05:38', NULL),
(48, 49, 'OaAlTETNMjjp OaAlTETNMjjp', 'OaAlTETNMjjp', 'OaAlTETNMjjp', '100049', 'arnaudboucourt@yahoo.fr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-11-23 17:46:19', '2023-11-23 17:46:19', NULL),
(49, 50, 'DWiXcSjlqajlW DWiXcSjlqajlW', 'DWiXcSjlqajlW', 'DWiXcSjlqajlW', '100050', 'FHsvfu.bttdd@rottack.biz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-11-24 01:40:03', '2023-11-24 01:40:03', NULL),
(50, 51, 'PlJDiPYDMtI PlJDiPYDMtI', 'PlJDiPYDMtI', 'PlJDiPYDMtI', '100051', 'jAJaqf.btbhq@rottack.biz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-11-24 01:59:43', '2023-11-24 01:59:43', NULL),
(51, 52, 'Ambrose Ambrose', 'Ambrose', 'Ambrose', '100052', 'FptPeb.qmqmhm@rightbliss.beauty', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-01 04:32:00', '2023-12-01 04:32:00', NULL),
(52, 53, 'Rome Rome', 'Rome', 'Rome', '100053', 'chowell@thefalcongroup.us', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-01 20:13:53', '2023-12-01 20:13:53', NULL),
(53, 54, 'Alejandra Alejandra', 'Alejandra', 'Alejandra', '100054', 'pdilley@stonestreetquarries.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-01 20:48:34', '2023-12-01 20:48:34', NULL),
(54, 55, 'Lakelynn Lakelynn', 'Lakelynn', 'Lakelynn', '100055', 'it@schiffs.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-01 21:14:16', '2023-12-01 21:14:16', NULL),
(55, 56, 'Rylee Rylee', 'Rylee', 'Rylee', '100056', 'jordon@colemanroof.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-01 21:40:34', '2023-12-01 21:40:34', NULL),
(56, 57, 'Zamir Zamir', 'Zamir', 'Zamir', '100057', 'alejandra@vvc.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-01 22:45:24', '2023-12-01 22:45:24', NULL),
(57, 58, 'Grace Grace', 'Grace', 'Grace', '100058', 'whoj.pistore@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-02 00:54:12', '2023-12-02 00:54:12', NULL),
(58, 59, 'Dakari Dakari', 'Dakari', 'Dakari', '100059', 'jayseanjunious23@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-02 06:06:35', '2023-12-02 06:06:35', NULL),
(59, 60, 'Ramona Ramona', 'Ramona', 'Ramona', '100060', 'michelle@hultine.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-02 17:54:35', '2023-12-02 17:54:35', NULL),
(60, 61, 'Jackson Jackson', 'Jackson', 'Jackson', '100061', 'tahaburc@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-02 22:33:51', '2023-12-02 22:33:51', NULL),
(61, 62, 'Ace Ace', 'Ace', 'Ace', '100062', 'cem_taylan1999@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-03 05:13:32', '2023-12-03 05:13:32', NULL),
(62, 63, 'BcObPNWyMEdh BcObPNWyMEdh', 'BcObPNWyMEdh', 'BcObPNWyMEdh', '100063', 'drQKBy.bdqdtcc@borasca.xyz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-03 20:12:11', '2023-12-03 20:12:11', NULL),
(63, 64, 'SSaEQFWPtutJjke SSaEQFWPtutJjke', 'SSaEQFWPtutJjke', 'SSaEQFWPtutJjke', '100064', 'halwilkes0@aol.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-04 01:54:57', '2023-12-04 01:54:57', NULL),
(64, 65, 'UQMtSjBsjVKWoCfk UQMtSjBsjVKWoCfk', 'UQMtSjBsjVKWoCfk', 'UQMtSjBsjVKWoCfk', '100065', 'angelinaarlopez@outlook.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-04 05:31:24', '2023-12-04 05:31:24', NULL),
(65, 66, 'MfbjbOuoa MfbjbOuoa', 'MfbjbOuoa', 'MfbjbOuoa', '100066', 'cesargopack@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-05 03:52:52', '2023-12-05 03:52:52', NULL),
(66, 67, 'uAQhKyTDpAhj uAQhKyTDpAhj', 'uAQhKyTDpAhj', 'uAQhKyTDpAhj', '100067', 'paulof.puc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-05 07:26:53', '2023-12-05 07:26:53', NULL),
(67, 68, 'kTUTpvotWMwtliuUV kTUTpvotWMwtliuUV', 'kTUTpvotWMwtliuUV', 'kTUTpvotWMwtliuUV', '100068', 'wilsons@nyptrust.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-05 19:45:43', '2023-12-05 19:45:43', NULL),
(68, 69, 'XcCmSoPkXJCft XcCmSoPkXJCft', 'XcCmSoPkXJCft', 'XcCmSoPkXJCft', '100069', 'cartier99990000@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-06 00:56:56', '2023-12-06 00:56:56', NULL),
(69, 70, 'cUJdoshMcumRoDe cUJdoshMcumRoDe', 'cUJdoshMcumRoDe', 'cUJdoshMcumRoDe', '100070', 'jessyenik9112@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-06 06:09:14', '2023-12-06 06:09:14', NULL),
(70, 71, 'LznrFrXNjmmsH LznrFrXNjmmsH', 'LznrFrXNjmmsH', 'LznrFrXNjmmsH', '100071', 'james.amanda@rogers.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-06 12:04:01', '2023-12-06 12:04:01', NULL),
(71, 72, 'VbPuPYhJonA VbPuPYhJonA', 'VbPuPYhJonA', 'VbPuPYhJonA', '100072', 'sylviasnyder01@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-07 01:42:54', '2023-12-07 01:42:54', NULL),
(72, 73, 'qNLepLkJpe qNLepLkJpe', 'qNLepLkJpe', 'qNLepLkJpe', '100073', 'shreeta@hotmail.co.uk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-07 08:43:34', '2023-12-07 08:43:34', NULL),
(73, 74, 'yiywSxoRKlmHk yiywSxoRKlmHk', 'yiywSxoRKlmHk', 'yiywSxoRKlmHk', '100074', 'josephparker@outlook.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-07 20:10:06', '2023-12-07 20:10:06', NULL),
(74, 75, 'dpLroASVJzJe dpLroASVJzJe', 'dpLroASVJzJe', 'dpLroASVJzJe', '100075', 'muna.salloum@utoronto.ca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-08 01:54:23', '2023-12-08 01:54:23', NULL),
(75, 76, 'tCAveVQaMMwBQ tCAveVQaMMwBQ', 'tCAveVQaMMwBQ', 'tCAveVQaMMwBQ', '100076', 'spiausainc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-08 09:13:19', '2023-12-08 09:13:19', NULL),
(76, 77, 'WjPrYCAVtk WjPrYCAVtk', 'WjPrYCAVtk', 'WjPrYCAVtk', '100077', 'zach.fabry@bulkfluidsystems.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-08 16:07:55', '2023-12-08 16:07:55', NULL),
(77, 78, 'Zyaire Zyaire', 'Zyaire', 'Zyaire', '100078', 'YmJauH.djhwcqt@spinapp.bar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-17 03:06:51', '2023-12-17 03:06:51', NULL),
(78, 79, 'Gunnar Gunnar', 'Gunnar', 'Gunnar', '100079', 'ifuentes@cfhgroup.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-17 03:06:59', '2023-12-17 03:06:59', NULL),
(79, 80, 'Lilah Lilah', 'Lilah', 'Lilah', '100080', 'grodriguez879@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-17 06:20:42', '2023-12-17 06:20:42', NULL),
(80, 81, 'Clementine Clementine', 'Clementine', 'Clementine', '100081', '2@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-18 00:52:25', '2023-12-18 00:52:25', NULL),
(81, 82, 'Blair Blair', 'Blair', 'Blair', '100082', '1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-18 05:46:09', '2023-12-18 05:46:09', NULL),
(82, 83, 'JDCLSWmrLSj JDCLSWmrLSj', 'JDCLSWmrLSj', 'JDCLSWmrLSj', '100083', 'IOAcBr.qphpjww@borasca.xyz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-18 11:36:59', '2023-12-18 11:36:59', NULL),
(83, 84, 'Lisa Lisa', 'Lisa', 'Lisa', '100084', 'papamurphysspfld@choiceonemail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-18 21:11:05', '2023-12-18 21:11:05', NULL),
(84, 85, 'jqtXvJVITDWcbTOpH jqtXvJVITDWcbTOpH', 'jqtXvJVITDWcbTOpH', 'jqtXvJVITDWcbTOpH', '100085', 'charmmishaweathers@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-18 22:39:04', '2023-12-18 22:39:04', NULL),
(85, 86, 'Augustine Augustine', 'Augustine', 'Augustine', '100086', 'mhpemail-shop@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-19 03:29:45', '2023-12-19 03:29:45', NULL),
(86, 87, 'Soren Soren', 'Soren', 'Soren', '100087', 'jammer3600@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-19 03:47:42', '2023-12-19 03:47:42', NULL),
(87, 88, 'mucDmqCMYS mucDmqCMYS', 'mucDmqCMYS', 'mucDmqCMYS', '100088', 'pawalsh@westnet.com.au', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-19 04:31:46', '2023-12-19 04:31:46', NULL),
(88, 89, 'fkDjTBJKJOF fkDjTBJKJOF', 'fkDjTBJKJOF', 'fkDjTBJKJOF', '100089', 'barney@btuckerhvac.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-19 08:15:12', '2023-12-19 08:15:12', NULL),
(89, 90, 'Lennox Lennox', 'Lennox', 'Lennox', '100090', 'tacel75@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-19 08:35:27', '2023-12-19 08:35:27', NULL),
(90, 91, 'Faith Faith', 'Faith', 'Faith', '100091', 'logan.rusnak@mac.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-19 21:14:45', '2023-12-19 21:14:45', NULL),
(91, 92, 'TjOjwDwxPNAa TjOjwDwxPNAa', 'TjOjwDwxPNAa', 'TjOjwDwxPNAa', '100092', 'pajohnso@ncsu.edu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-19 21:30:46', '2023-12-19 21:30:46', NULL),
(92, 93, 'KFbWzWdQIHKJ KFbWzWdQIHKJ', 'KFbWzWdQIHKJ', 'KFbWzWdQIHKJ', '100093', 'jackie@buildinglab.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-20 03:55:59', '2023-12-20 03:55:59', NULL),
(93, 94, 'Cleo Cleo', 'Cleo', 'Cleo', '100094', 'cheyenne.sky.tv@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-20 07:26:46', '2023-12-20 07:26:46', NULL),
(94, 95, 'Jaxton Jaxton', 'Jaxton', 'Jaxton', '100095', 'xaFvbF.hwhcbtw@bakling.click', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-24 22:56:31', '2023-12-24 22:56:31', NULL),
(95, 96, 'Lucas Lucas', 'Lucas', 'Lucas', '100096', 'elena.maria.beneventi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-25 00:23:12', '2023-12-25 00:23:12', NULL),
(96, 97, 'Trevor Trevor', 'Trevor', 'Trevor', '100097', 'briancaccamo@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-25 05:28:21', '2023-12-25 05:28:21', NULL),
(97, 98, 'Tiffany Tiffany', 'Tiffany', 'Tiffany', '100098', 'bethlanzisera@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-26 02:32:29', '2023-12-26 02:32:29', NULL),
(98, 99, 'Demi Demi', 'Demi', 'Demi', '100099', 'kimblatt1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-26 05:12:50', '2023-12-26 05:12:50', NULL),
(99, 100, 'Nelson Nelson', 'Nelson', 'Nelson', '100100', 'jo62marie@live.fr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-26 19:00:07', '2023-12-26 19:00:07', NULL),
(100, 101, 'Juhaina Alamri', 'Juhaina', 'Alamri', '100101', '12s163601@stu.hct.edu.om', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-27 01:28:35', '2023-12-27 01:28:35', NULL),
(101, 102, 'Jada Jada', 'Jada', 'Jada', '100102', 'clintsmith@a1termitepc.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-27 02:26:15', '2023-12-27 02:26:15', NULL),
(102, 103, 'Stanley Stanley', 'Stanley', 'Stanley', '100103', 'rramos@taconiccap.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-27 07:52:37', '2023-12-27 07:52:37', NULL),
(103, 104, 'August August', 'August', 'August', '100104', 'samantha@magicalhometheaters.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-27 10:00:59', '2023-12-27 10:00:59', NULL),
(104, 105, 'Dax Dax', 'Dax', 'Dax', '100105', 'COabRP.pcmdtch@wheelry.boats', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-30 12:20:58', '2023-12-30 12:20:58', NULL),
(105, 106, 'Madden Madden', 'Madden', 'Madden', '100106', 'rbertone@dtpd.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-12-30 12:50:29', '2023-12-30 12:50:29', NULL),
(106, 107, 'Rowyn Rowyn', 'Rowyn', 'Rowyn', '100107', 'IohIOn.bdcmhbm@maxeza.click', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2024-01-13 04:25:25', '2024-01-13 04:25:25', NULL),
(107, 108, 'Kaysen Kaysen', 'Kaysen', 'Kaysen', '100108', 'stephanie.cea@qt.io', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2024-01-13 09:52:41', '2024-01-13 09:52:41', NULL),
(108, 109, 'Jimmy Jimmy', 'Jimmy', 'Jimmy', '100109', 'erinderhaag@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2024-01-16 02:41:51', '2024-01-16 02:41:51', NULL),
(109, 110, 'Andres Andres', 'Andres', 'Andres', '100110', 'laura@meritelectriccompany.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2024-01-16 21:37:12', '2024-01-16 21:37:12', NULL),
(110, 111, 'Jase Jase', 'Jase', 'Jase', '100111', 'jerwell_sheena@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2024-01-17 13:47:25', '2024-01-17 13:47:25', NULL),
(111, 112, 'Summer Summer', 'Summer', 'Summer', '100112', 'mwenshau@hopkinsmn.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2024-01-18 11:34:31', '2024-01-18 11:34:31', NULL),
(112, 113, 'Kieran Kieran', 'Kieran', 'Kieran', '100113', 'pAjSuA.hppcpqb@zetetic.sbs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2024-01-22 16:13:50', '2024-01-22 16:13:50', NULL),
(113, 114, 'Renata Renata', 'Renata', 'Renata', '100114', 'elias9century@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2024-01-23 02:29:23', '2024-01-23 02:29:23', NULL),
(114, 115, 'Pedro Pedro', 'Pedro', 'Pedro', '100115', 'igal@earthlink.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2024-01-23 04:39:49', '2024-01-23 04:39:49', NULL),
(115, 116, 'Alfonso Alfonso', 'Alfonso', 'Alfonso', '100116', 'christopher@organiclooms.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2024-01-23 06:43:34', '2024-01-23 06:43:34', NULL),
(116, 117, 'Rowyn Rowyn', 'Rowyn', 'Rowyn', '100117', 'bandersen@nexttherapysolutions.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2024-01-23 08:36:11', '2024-01-23 08:36:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `username` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `mobile` varchar(191) DEFAULT NULL,
  `gender` varchar(191) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT 'img/default-avatar.jpg',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `username`, `email`, `mobile`, `gender`, `date_of_birth`, `email_verified_at`, `password`, `avatar`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Abdullah AL-Aufi', 'Abdullah', 'AL-Aufi', '100001', 'super@admin.com', '98216618', 'Male', '1989-10-22', '2023-02-13 09:58:54', '$2y$10$8xToMclTuAImo16T6EB9L.zNdNZG6BWE80t3OHDgXXz6yLXV9xsMW', 'img/default-avatar.jpg', 1, NULL, '2023-02-13 09:58:54', '2023-02-23 00:27:16', NULL),
(9, 'Aya Alshehami', 'Aya', 'Alshehami', '100009', 'ayasuliman28@gmail.com', NULL, NULL, NULL, '2023-02-22 22:46:05', '$2y$10$FZAGaEwPu3rfG7vh6qF4.O7LbQOJw3tDqEM7zUjrqo591YaQzMm6a', 'img/default-avatar.jpg', 1, 'SM0gWoMhhJuTdhcb0ApynGoXoPjyBDUQfav46uz6O7ONizE5XoA1OPZmSLZi', '2023-02-22 22:12:56', '2023-02-22 23:31:28', NULL),
(10, 'Yusra Khalfan', 'Yusra', 'Khalfan', '100010', 'ykhalfan95@gmail.com', NULL, NULL, NULL, '2023-02-23 23:39:47', '$2y$10$P9hAkdoGB15l2aIoAHKglu6LnfePaiKzFg9MNWO3Xr2bax.NEg3Z2', 'img/default-avatar.jpg', 1, NULL, '2023-02-22 23:42:26', '2023-02-23 23:54:11', '2023-02-23 23:54:11'),
(13, 'Murshid Almashykhi', 'Murshid', 'Almashykhi', '100013', 'morshid878@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$0wmP.aGENKgNwRmkQqKha.P72./0KhkVtfrc1mhccWOjZQboMaxqe', 'img/default-avatar.jpg', 1, NULL, '2023-02-23 22:10:34', '2023-02-23 22:10:34', NULL),
(14, 'Arwa Alshehami', 'Arwa', 'Alshehami', '100014', 'ss2384@seebvc.edu.om', NULL, NULL, NULL, NULL, '$2y$10$RX6IJvVo9Vf0T1nPCsL0QOO3Jb8ejlR5YyAA52NOD8Mbo0tvvh8/S', 'img/default-avatar.jpg', 1, NULL, '2023-02-23 22:22:46', '2023-02-23 23:40:12', '2023-02-23 23:40:12'),
(16, 'arwa alshehami', 'arwa', 'alshehami', '100016', 'arwa.25111999@gmail.com', NULL, NULL, NULL, '2023-02-24 00:11:38', '$2y$10$2KvF5cHJwXy25ATTxx5G/ORds7tu1FS91E1upFI558p2HgJtP.uGS', 'img/default-avatar.jpg', 1, NULL, '2023-02-24 00:11:11', '2023-02-24 00:29:03', '2023-02-24 00:29:03'),
(17, 'sahar alshehami', 'sahar', 'alshehami', '100017', 'sahar_1998_@hotmail.com', NULL, NULL, NULL, NULL, '$2y$10$MFFaASgbNiMQAdRFVuYKc.HyB6Qfj8MWCpCwDb3AUclxM7yDkihJi', 'img/default-avatar.jpg', 1, NULL, '2023-02-24 00:23:40', '2023-02-24 00:27:54', '2023-02-24 00:27:54'),
(18, 'Yusra AlHadifi', 'Yusra', 'AlHadifi', '100018', '16s1841@stu.hct.edu.om', NULL, NULL, NULL, NULL, '$2y$10$9IZNAmNE8w3gLRrTBiVkKenS2VOWhIAHV8ErnWJ79G.nVKHw5s7Qy', 'img/default-avatar.jpg', 1, NULL, '2023-02-24 00:29:46', '2023-02-24 00:29:46', NULL),
(19, 'Abdullah AlMujaini', 'Abdullah', 'AlMujaini', '100019', 'abdullah@taawon.net', NULL, NULL, NULL, '2023-02-24 16:18:46', '$2y$10$RuPSx8DXkVK7I0HK4w/gYurhYqbdP8nFWqkV6tPv/yo1Q59ACpe.G', 'img/default-avatar.jpg', 1, NULL, '2023-02-24 15:40:07', '2023-02-24 16:18:46', NULL),
(20, 'Abdullah alaufi', 'Abdullah', 'alaufi', '100020', 'abdooufi1@gmail.com', NULL, NULL, NULL, '2023-02-24 16:22:26', '$2y$10$XvpvDEFQ6jQCGD19RuPLqekKQZEN6.71bO.htd3JwVicPxCAsJaFK', 'img/default-avatar.jpg', 1, NULL, '2023-02-24 16:21:50', '2023-02-25 02:19:04', '2023-02-25 02:19:04'),
(21, 'Atika Al-Shabibi', 'Atika', 'Al-Shabibi', '100021', 'atikaalshabibi@gmail.com', NULL, NULL, NULL, '2023-02-25 01:16:37', '$2y$10$ve2L9IWAvYP5r8w83j0T9urqOvv5JibZKf.qoEOsLKCiI5irgBG1.', 'img/default-avatar.jpg', 1, NULL, '2023-02-25 01:15:50', '2023-02-25 01:16:37', NULL),
(22, 'Hanaa Almaawali', 'Hanaa', 'Almaawali', '100022', 'Hanaa.almaawali@hotmail.com', NULL, NULL, NULL, NULL, '$2y$10$EBZBpeNRkTppZjI8hjQeM.B6BUAEuKpkgdJUAEnXSDsFl6AQ9HFIW', 'img/default-avatar.jpg', 1, NULL, '2023-02-25 03:52:01', '2023-02-25 03:52:01', NULL),
(23, 'أسامة المفرجي', 'أسامة', 'المفرجي', '100023', 'osamaalmufargi@gmail.com', '94041887', 'Male', '1998-03-01', '2023-02-25 07:48:01', '$2y$10$tFQZX2e0PFPJpVb9jmX.XePLZv68NRh8LvkfsfAcmXPrS1CGB7qqS', 'img/default-avatar.jpg', 1, NULL, '2023-02-25 07:45:06', '2023-02-25 11:13:19', NULL),
(24, 'Amira Alblushi', 'Amira', 'Alblushi', '100024', 'ameera709mohammed@gmail.com', NULL, NULL, NULL, '2023-02-25 16:35:35', '$2y$10$.m7J/mdWRelxymdmaS6e/uwxpeWkoQJA86YQzvCaMSPCehZ5waDiS', 'img/default-avatar.jpg', 1, NULL, '2023-02-25 16:22:58', '2023-02-25 16:35:35', NULL),
(25, 'Azzan Albatashi', 'Azzan', 'Albatashi', '100025', 'azzanalbattashi9@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$M7iMTVm0Qo1e7H7UWD0i4OCLIG/oZ.B9z3jrAp6LJh1NpaE7LGAKC', 'img/default-avatar.jpg', 1, NULL, '2023-02-25 20:59:46', '2023-02-25 21:11:11', '2023-02-25 21:11:11'),
(26, 'Azzan albattashi', 'Azzan', 'albattashi', '100026', 'azzanalbattshi9@gmail.con', NULL, NULL, NULL, NULL, '$2y$10$dHNB1JFh1ue9In8WTN2xkOi.riv3tr1Ddcqg9awgO90v7QVUZvNv6', 'img/default-avatar.jpg', 1, NULL, '2023-02-25 21:08:37', '2023-03-03 16:03:29', '2023-03-03 16:03:29'),
(27, 'Salim ALHATTALI', 'Salim', 'ALHATTALI', '100027', 'salimraad790@gmail.com', NULL, NULL, NULL, '2023-03-03 00:46:03', '$2y$10$L6PrTGbREoLWx8YUYvbZnebfeLoC5Nw366Htg6HQHBH1.0aDiGV9K', 'img/default-avatar.jpg', 1, NULL, '2023-03-03 00:36:24', '2023-03-03 00:46:03', NULL),
(28, 'Azzan albattashi', 'Azzan', 'albattashi', '100028', 'azzanalbattashi95@outlook.sa', '96669817', 'Male', '1995-03-09', '2023-03-03 16:03:03', '$2y$10$iaFqWBnjE1ASg69vgo57U.K4sZHoCf32f/hDkeXVXyULCDNzR04iy', 'img/default-avatar.jpg', 1, NULL, '2023-03-03 14:59:28', '2023-04-03 14:29:42', NULL),
(29, 'Shatha Alsheidi', 'Shatha', 'Alsheidi', '100029', 'Shathaalshidi994@gmail.com', NULL, NULL, NULL, '2023-03-03 15:59:03', '$2y$10$6dR5.HY8uH5HGWW8XuRFXO9BJE53PbYcMF4hT7emmi.jBTGRGCDGi', 'img/default-avatar.jpg', 1, NULL, '2023-03-03 15:58:38', '2023-03-03 15:59:03', NULL),
(30, 'Fatma AL lawati', 'Fatma', 'AL lawati', '100030', 'fatma99964@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$hZ4K0o7CJTnWJrYiCmAU/O0WPknb6QuQZ7lFxDKyEvzPUId/YGqfi', 'img/default-avatar.jpg', 1, 'tXEBAx8M10RUp6Kj7mi1GYDjQMuGZoQVMqpOqwc6PzMh1pV3kgxuKATK10Av', '2023-03-03 17:35:18', '2023-03-03 17:37:42', NULL),
(31, 'Amira Alblushi', 'Amira', 'Alblushi', '100031', '66j1634@stu.hct.edu.om', NULL, NULL, NULL, NULL, '$2y$10$DTDd7SiBvHoLBcPSVOWzau3UtR4UAGTi6BDvxua.bsfW1iUVDnRB2', 'img/default-avatar.jpg', 1, NULL, '2023-03-11 13:13:28', '2023-03-11 13:13:28', NULL),
(32, 'سندس الغافرية', 'سندس', 'الغافرية', '100032', 'sondusalghafri@gmail.com', NULL, NULL, NULL, '2023-03-22 10:53:17', '$2y$10$K9t1R2rWKIkPl/EtttBy5ePyuNCYQMntJdOPHr1LXrgI9gik/gj5C', 'img/default-avatar.jpg', 1, NULL, '2023-03-22 10:52:55', '2023-03-22 10:53:17', NULL),
(33, 'رهام الشبيبي', 'رهام', 'الشبيبي', '100033', 'alshabibifamily17@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$X4RjvzcKPgtoudsI2qVP.uqWd0m3z51xSCt56TCwdQ7HMg9vS9qoG', 'img/default-avatar.jpg', 1, NULL, '2023-03-30 03:05:01', '2023-05-10 16:59:16', '2023-05-10 16:59:16'),
(34, 'رهام الشبيبي', 'رهام', 'الشبيبي', '100034', 'eh.b.q.j.a.h@gmail.com', NULL, NULL, NULL, '2023-04-02 15:55:49', '$2y$10$rBkmRFofnqvYBflgu.fH3O2bUWd2wfTyOeRl8z4U.vgn8/xjvEmLq', 'img/default-avatar.jpg', 1, NULL, '2023-04-02 15:55:16', '2023-04-02 15:55:49', NULL),
(35, 'Hiyam Alshidhani', 'Hiyam', 'Alshidhani', '100035', 'Miss.alshidhani@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$YwWobxmuTiVaOCAB.XYA4eLQm4A3C5Uv3d7nsAuCQ7/lFDZTagkHq', 'img/default-avatar.jpg', 1, NULL, '2023-04-17 16:21:25', '2023-04-17 16:21:25', NULL),
(36, 'Aziz Shabibi', 'Aziz', 'Shabibi', '100036', 'aziz.121262@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$FdPCRW0RYJB4XvvmwzAvBOrWPAJnVtyRAvZSItgjCOpEbTTsRK6JC', 'img/default-avatar.jpg', 1, NULL, '2023-08-04 12:59:06', '2023-08-04 12:59:06', NULL),
(37, 'TakNsFDvJS TakNsFDvJS', 'TakNsFDvJS', 'TakNsFDvJS', '100037', 'xzCJAe.bqwchp@monochord.xyz', NULL, NULL, NULL, NULL, '$2y$10$PMkWc/tzZ/F8oIA1h9IOoO2582g4MFVj4j4EQxQsiDiIsqkhfk1e.', 'img/default-avatar.jpg', 1, NULL, '2023-11-18 17:51:23', '2023-11-18 17:51:23', NULL),
(38, 'RkvMLBkIjnkrr RkvMLBkIjnkrr', 'RkvMLBkIjnkrr', 'RkvMLBkIjnkrr', '100038', 'zethfast@fastmail.fm', NULL, NULL, NULL, NULL, '$2y$10$VpkBIC4K0jWUFnoHXNGVjOd2yq7NdBnQkxcLCyCh6WKBbw3VX2/sS', 'img/default-avatar.jpg', 1, NULL, '2023-11-18 21:10:19', '2023-11-18 21:10:19', NULL),
(39, 'ywrCuAUtPPztsr ywrCuAUtPPztsr', 'ywrCuAUtPPztsr', 'ywrCuAUtPPztsr', '100039', 'josephsmiher12@outlook.com', NULL, NULL, NULL, NULL, '$2y$10$OQs2buAq5WTUZYBODsarde22oOYtlMhXHvc7KRFgG.z7J14aBgml2', 'img/default-avatar.jpg', 1, NULL, '2023-11-19 02:28:12', '2023-11-19 02:28:12', NULL),
(40, 'tnvLUQqTMzlL tnvLUQqTMzlL', 'tnvLUQqTMzlL', 'tnvLUQqTMzlL', '100040', 'rosefunerals@outlook.com', NULL, NULL, NULL, NULL, '$2y$10$o6YYQ5Akvh8DFDg.v8cCxOe6IMxz2zcZUEqWJwQNO3euW74/6iacO', 'img/default-avatar.jpg', 1, NULL, '2023-11-19 19:25:31', '2023-11-19 19:25:31', NULL),
(41, 'pykdEjYpJiIhDm pykdEjYpJiIhDm', 'pykdEjYpJiIhDm', 'pykdEjYpJiIhDm', '100041', 'habip@basdasotomotiv.com', NULL, NULL, NULL, NULL, '$2y$10$W449SCW0G6izCs2LLLjEoeQplIlRYxxwvzBorNyrbOPLU3xalI.MG', 'img/default-avatar.jpg', 1, NULL, '2023-11-20 00:56:57', '2023-11-20 00:56:57', NULL),
(42, 'vvMDvzfXsLnOas vvMDvzfXsLnOas', 'vvMDvzfXsLnOas', 'vvMDvzfXsLnOas', '100042', 'yulansteele@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$uetA7PQVl3FRmaIT3lsSRerNTfh90UZe0XzEQIpCBqBSfKiRBtc2S', 'img/default-avatar.jpg', 1, NULL, '2023-11-20 22:38:05', '2023-11-20 22:38:05', NULL),
(43, 'YokPCCbtnCmzfJe YokPCCbtnCmzfJe', 'YokPCCbtnCmzfJe', 'YokPCCbtnCmzfJe', '100043', 'ana@eandmcorp.com', NULL, NULL, NULL, NULL, '$2y$10$0rkMyrq1XfKpy9uNAz/cEumRfMoGJ08ilekzJBRVRXVzqf7urwX0a', 'img/default-avatar.jpg', 1, NULL, '2023-11-21 03:19:35', '2023-11-21 03:19:35', NULL),
(44, 'TfNsVqkyVrz TfNsVqkyVrz', 'TfNsVqkyVrz', 'TfNsVqkyVrz', '100044', 'kirk@kirkdavislaw.com', NULL, NULL, NULL, NULL, '$2y$10$sgfCLeMcEM8fRgo//WKdWu56ARyWuA0V9XinweDJls9W9IF4.v8TC', 'img/default-avatar.jpg', 1, NULL, '2023-11-21 07:36:19', '2023-11-21 07:36:19', NULL),
(45, 'alLYCjaJrBJKo alLYCjaJrBJKo', 'alLYCjaJrBJKo', 'alLYCjaJrBJKo', '100045', 'sohad@vivagl.com', NULL, NULL, NULL, NULL, '$2y$10$by7Nfpsbr4HtBcWPGzdL5uqySxCSQwg17irBohs27PGxLklmREvhG', 'img/default-avatar.jpg', 1, NULL, '2023-11-21 19:40:48', '2023-11-21 19:40:48', NULL),
(46, 'PhkMzUaTILC PhkMzUaTILC', 'PhkMzUaTILC', 'PhkMzUaTILC', '100046', 'ivan.avina@yahoo.com', NULL, NULL, NULL, NULL, '$2y$10$vFySSymm28UPlJ9T9vtfuuj7l9m6sdsvXWweXWSdd/tb5rqUW1VfS', 'img/default-avatar.jpg', 1, NULL, '2023-11-22 09:07:43', '2023-11-22 09:07:43', NULL),
(47, 'xDsNyKAwSr xDsNyKAwSr', 'xDsNyKAwSr', 'xDsNyKAwSr', '100047', 'brentjuhasz@hotmail.com', NULL, NULL, NULL, NULL, '$2y$10$p.OlUukG.rkdIgGVs52b7.7dsbHQJb28NTLZJ15vwjzIfXs7aJ.Ti', 'img/default-avatar.jpg', 1, NULL, '2023-11-22 18:59:23', '2023-11-22 18:59:23', NULL),
(48, 'AvztJAcvxJNFwz AvztJAcvxJNFwz', 'AvztJAcvxJNFwz', 'AvztJAcvxJNFwz', '100048', 'evangelistkisha@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$LFJ/uDrrSsAa.DB00DVLO.RpvvJkCKGTZRN./Xn/llAtF2e0aOpA.', 'img/default-avatar.jpg', 1, NULL, '2023-11-23 05:05:34', '2023-11-23 05:05:34', NULL),
(49, 'OaAlTETNMjjp OaAlTETNMjjp', 'OaAlTETNMjjp', 'OaAlTETNMjjp', '100049', 'arnaudboucourt@yahoo.fr', NULL, NULL, NULL, NULL, '$2y$10$yHTMOq57pDtKGH./9Pz1C.v7T7oXqiUcgE3KGfhE.4/HWwQ4yyQmm', 'img/default-avatar.jpg', 1, NULL, '2023-11-23 17:46:15', '2023-11-23 17:46:15', NULL),
(50, 'DWiXcSjlqajlW DWiXcSjlqajlW', 'DWiXcSjlqajlW', 'DWiXcSjlqajlW', '100050', 'FHsvfu.bttdd@rottack.biz', NULL, NULL, NULL, NULL, '$2y$10$ltAQRglBnDy/QpovCaluD./GDjo2sQN11xRBOlNLQdIcIQftCmp6a', 'img/default-avatar.jpg', 1, NULL, '2023-11-24 01:39:59', '2023-11-24 01:39:59', NULL),
(51, 'PlJDiPYDMtI PlJDiPYDMtI', 'PlJDiPYDMtI', 'PlJDiPYDMtI', '100051', 'jAJaqf.btbhq@rottack.biz', NULL, NULL, NULL, NULL, '$2y$10$YFcriit9feKTiEs/OgVub.ZslM2WvPkrWaRl3hRX9Jr.8YLh32JEa', 'img/default-avatar.jpg', 1, NULL, '2023-11-24 01:59:42', '2023-11-24 01:59:42', NULL),
(52, 'Ambrose Ambrose', 'Ambrose', 'Ambrose', '100052', 'FptPeb.qmqmhm@rightbliss.beauty', NULL, NULL, NULL, NULL, '$2y$10$MpmC2E4ySZk1w8BWj11uweOHADM1RMQH8iVIRIWKKdDgeKQF044U2', 'img/default-avatar.jpg', 1, NULL, '2023-12-01 04:31:56', '2023-12-01 04:31:56', NULL),
(53, 'Rome Rome', 'Rome', 'Rome', '100053', 'chowell@thefalcongroup.us', NULL, NULL, NULL, NULL, '$2y$10$WIWzIGXfgAczFd.o29X59u3A1xvDGJLNorvcrdIZLn39hHR/df2/2', 'img/default-avatar.jpg', 1, NULL, '2023-12-01 20:13:49', '2023-12-01 20:13:49', NULL),
(54, 'Alejandra Alejandra', 'Alejandra', 'Alejandra', '100054', 'pdilley@stonestreetquarries.com', NULL, NULL, NULL, NULL, '$2y$10$R8IV4SiP8fvTxtUHFJQHIe7TamM2trqTTWccqT3REZaS4hMd1ahf2', 'img/default-avatar.jpg', 1, NULL, '2023-12-01 20:48:30', '2023-12-01 20:48:30', NULL),
(55, 'Lakelynn Lakelynn', 'Lakelynn', 'Lakelynn', '100055', 'it@schiffs.com', NULL, NULL, NULL, NULL, '$2y$10$TlkTBf/7bm8sI.iuKREQmuK2r8zw7Pw7sklLXxY76scd24a61X7OC', 'img/default-avatar.jpg', 1, NULL, '2023-12-01 21:14:14', '2023-12-01 21:14:14', NULL),
(56, 'Rylee Rylee', 'Rylee', 'Rylee', '100056', 'jordon@colemanroof.com', NULL, NULL, NULL, NULL, '$2y$10$3qlyvfZwBP8iwybrF26Seu.8jiS1ruRALby5HqEWL/pwLhP01/DRK', 'img/default-avatar.jpg', 1, NULL, '2023-12-01 21:40:33', '2023-12-01 21:40:33', NULL),
(57, 'Zamir Zamir', 'Zamir', 'Zamir', '100057', 'alejandra@vvc.org', NULL, NULL, NULL, NULL, '$2y$10$ZEDdzlvI55pEfWE6ZW6r/u0/o0opvba5hTyUqkoes.xR.5GHLyn2G', 'img/default-avatar.jpg', 1, NULL, '2023-12-01 22:45:21', '2023-12-01 22:45:21', NULL),
(58, 'Grace Grace', 'Grace', 'Grace', '100058', 'whoj.pistore@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$czRRHeTVfdOLL9GbX6dl/O7A0HaUCx.H4wG5mulfuVWxpZV2/lpnm', 'img/default-avatar.jpg', 1, NULL, '2023-12-02 00:54:08', '2023-12-02 00:54:08', NULL),
(59, 'Dakari Dakari', 'Dakari', 'Dakari', '100059', 'jayseanjunious23@yahoo.com', NULL, NULL, NULL, NULL, '$2y$10$4w.Y4xv2ZZ/1kxZUs9drge0LYKo8xLbKQo6u3n8rqKg5C9Uzv0/Em', 'img/default-avatar.jpg', 1, NULL, '2023-12-02 06:06:31', '2023-12-02 06:06:31', NULL),
(60, 'Ramona Ramona', 'Ramona', 'Ramona', '100060', 'michelle@hultine.com', NULL, NULL, NULL, NULL, '$2y$10$FHIEsoMOqypfhE1iul5Xb.4ndU8oTZe67tBfDHaomTH9wmTlg12u.', 'img/default-avatar.jpg', 1, NULL, '2023-12-02 17:54:31', '2023-12-02 17:54:31', NULL),
(61, 'Jackson Jackson', 'Jackson', 'Jackson', '100061', 'tahaburc@hotmail.com', NULL, NULL, NULL, NULL, '$2y$10$OYnHo71Xt9A6eM0QxPRNouZLT6B/97NFh1cr9brSPCVGdUwzy3aGW', 'img/default-avatar.jpg', 1, NULL, '2023-12-02 22:33:47', '2023-12-02 22:33:47', NULL),
(62, 'Ace Ace', 'Ace', 'Ace', '100062', 'cem_taylan1999@hotmail.com', NULL, NULL, NULL, NULL, '$2y$10$SBJ7.mnHEMqW2EtCwM96OeJcNhKf5Man612wt20GbK/6oLvszdU0G', 'img/default-avatar.jpg', 1, NULL, '2023-12-03 05:13:28', '2023-12-03 05:13:28', NULL),
(63, 'BcObPNWyMEdh BcObPNWyMEdh', 'BcObPNWyMEdh', 'BcObPNWyMEdh', '100063', 'drQKBy.bdqdtcc@borasca.xyz', NULL, NULL, NULL, NULL, '$2y$10$6pgBnQtJ3TuotvRJAg5IAuTI7eZZHP9mRl4h38.SJPS/xXhLw5jkS', 'img/default-avatar.jpg', 1, NULL, '2023-12-03 20:12:08', '2023-12-03 20:12:08', NULL),
(64, 'SSaEQFWPtutJjke SSaEQFWPtutJjke', 'SSaEQFWPtutJjke', 'SSaEQFWPtutJjke', '100064', 'halwilkes0@aol.com', NULL, NULL, NULL, NULL, '$2y$10$H4wD0zGtfPqs5Iq6bebvauxRnvHQmfUQazvIqybPP7JZRIaxhzubu', 'img/default-avatar.jpg', 1, NULL, '2023-12-04 01:54:53', '2023-12-04 01:54:53', NULL),
(65, 'UQMtSjBsjVKWoCfk UQMtSjBsjVKWoCfk', 'UQMtSjBsjVKWoCfk', 'UQMtSjBsjVKWoCfk', '100065', 'angelinaarlopez@outlook.com', NULL, NULL, NULL, NULL, '$2y$10$CIGrq71dIjgFc.99k9YFAuaPYPmBS8iuluCC6UDgtb2985sM0CSCe', 'img/default-avatar.jpg', 1, NULL, '2023-12-04 05:31:20', '2023-12-04 05:31:20', NULL),
(66, 'MfbjbOuoa MfbjbOuoa', 'MfbjbOuoa', 'MfbjbOuoa', '100066', 'cesargopack@yahoo.com', NULL, NULL, NULL, NULL, '$2y$10$GVXmfTLI3w5l71.6WW4FRu9SVWhvJnYdsBI7mxawcRYC210dJlrt6', 'img/default-avatar.jpg', 1, NULL, '2023-12-05 03:52:48', '2023-12-05 03:52:48', NULL),
(67, 'uAQhKyTDpAhj uAQhKyTDpAhj', 'uAQhKyTDpAhj', 'uAQhKyTDpAhj', '100067', 'paulof.puc@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$ek13jslDo/a1FqK.yYN2e.u2Yca9RM7Y.8t.7iOd50WoYUruYzBye', 'img/default-avatar.jpg', 1, NULL, '2023-12-05 07:26:50', '2023-12-05 07:26:50', NULL),
(68, 'kTUTpvotWMwtliuUV kTUTpvotWMwtliuUV', 'kTUTpvotWMwtliuUV', 'kTUTpvotWMwtliuUV', '100068', 'wilsons@nyptrust.com', NULL, NULL, NULL, NULL, '$2y$10$tlqS3Xq3AHeCYODG1Hp6IOZP9BsCsGu.3GELMp9O57Cq/55BRTUPK', 'img/default-avatar.jpg', 1, NULL, '2023-12-05 19:45:39', '2023-12-05 19:45:39', NULL),
(69, 'XcCmSoPkXJCft XcCmSoPkXJCft', 'XcCmSoPkXJCft', 'XcCmSoPkXJCft', '100069', 'cartier99990000@yahoo.com', NULL, NULL, NULL, NULL, '$2y$10$BZXNAbEwcwbEZO1V2TEHVOvwyLVr5mOpBuYQE1SQyucbVmsZEvQ7u', 'img/default-avatar.jpg', 1, NULL, '2023-12-06 00:56:52', '2023-12-06 00:56:52', NULL),
(70, 'cUJdoshMcumRoDe cUJdoshMcumRoDe', 'cUJdoshMcumRoDe', 'cUJdoshMcumRoDe', '100070', 'jessyenik9112@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$ogXilR6HDrXdApzYIpYqpus/XCqw68lJFh0fb0Ke.phYe79Y4FJam', 'img/default-avatar.jpg', 1, NULL, '2023-12-06 06:09:10', '2023-12-06 06:09:10', NULL),
(71, 'LznrFrXNjmmsH LznrFrXNjmmsH', 'LznrFrXNjmmsH', 'LznrFrXNjmmsH', '100071', 'james.amanda@rogers.com', NULL, NULL, NULL, NULL, '$2y$10$KmFOfyQ0ErvJ4IksxsPCdeUsGlrvVBa228rKNkR.MVvUz9m/KebUi', 'img/default-avatar.jpg', 1, NULL, '2023-12-06 12:03:57', '2023-12-06 12:03:57', NULL),
(72, 'VbPuPYhJonA VbPuPYhJonA', 'VbPuPYhJonA', 'VbPuPYhJonA', '100072', 'sylviasnyder01@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$0cd6K5tcw6V.cxwskmDRa.OFqVl.rqiI2yp8t9dsncBjBgc9TEC1S', 'img/default-avatar.jpg', 1, NULL, '2023-12-07 01:42:50', '2023-12-07 01:42:50', NULL),
(73, 'qNLepLkJpe qNLepLkJpe', 'qNLepLkJpe', 'qNLepLkJpe', '100073', 'shreeta@hotmail.co.uk', NULL, NULL, NULL, NULL, '$2y$10$EJGAcbno.oIt0D7zeC6CXeE3DLmHNHyIXGgTTLIz54cFMj7SXO7Ci', 'img/default-avatar.jpg', 1, NULL, '2023-12-07 08:43:30', '2023-12-07 08:43:30', NULL),
(74, 'yiywSxoRKlmHk yiywSxoRKlmHk', 'yiywSxoRKlmHk', 'yiywSxoRKlmHk', '100074', 'josephparker@outlook.com', NULL, NULL, NULL, NULL, '$2y$10$tLMhHMQlGU73pO7ZTvnHseNtqbm.kyMd0OKypyy7aK6jAQaHLnil6', 'img/default-avatar.jpg', 1, NULL, '2023-12-07 20:10:03', '2023-12-07 20:10:03', NULL),
(75, 'dpLroASVJzJe dpLroASVJzJe', 'dpLroASVJzJe', 'dpLroASVJzJe', '100075', 'muna.salloum@utoronto.ca', NULL, NULL, NULL, NULL, '$2y$10$O9wcQ.Pyo.7.f//XDkpt/Oe5bghA3I3/qxfL9SfaK2ZLGqhG5NfXi', 'img/default-avatar.jpg', 1, NULL, '2023-12-08 01:54:20', '2023-12-08 01:54:20', NULL),
(76, 'tCAveVQaMMwBQ tCAveVQaMMwBQ', 'tCAveVQaMMwBQ', 'tCAveVQaMMwBQ', '100076', 'spiausainc@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$RxF9I35YBCksnemuAi7xcuLolanpi5sorYv3lsjhs3N50EohyB2lq', 'img/default-avatar.jpg', 1, NULL, '2023-12-08 09:13:15', '2023-12-08 09:13:15', NULL),
(77, 'WjPrYCAVtk WjPrYCAVtk', 'WjPrYCAVtk', 'WjPrYCAVtk', '100077', 'zach.fabry@bulkfluidsystems.com', NULL, NULL, NULL, NULL, '$2y$10$aXNSn5ua9clfSSVraiFL9OqhyGVjPCn6/GJ9PN8XPBUokTw3qOBRi', 'img/default-avatar.jpg', 1, NULL, '2023-12-08 16:07:51', '2023-12-08 16:07:51', NULL),
(78, 'Zyaire Zyaire', 'Zyaire', 'Zyaire', '100078', 'YmJauH.djhwcqt@spinapp.bar', NULL, NULL, NULL, NULL, '$2y$10$08vv7K4Cc23JLjNofPq6gOeLPomop2yv7IU76Px6VPjTpX3TqRs/W', 'img/default-avatar.jpg', 1, NULL, '2023-12-17 03:06:48', '2023-12-17 03:06:48', NULL),
(79, 'Gunnar Gunnar', 'Gunnar', 'Gunnar', '100079', 'ifuentes@cfhgroup.com', NULL, NULL, NULL, NULL, '$2y$10$G1oUe9Eth30B3fk5..mfC.Oo6uwEw5OulyzJ/TFmhtel/gD1guKXy', 'img/default-avatar.jpg', 1, NULL, '2023-12-17 03:06:59', '2023-12-17 03:06:59', NULL),
(80, 'Lilah Lilah', 'Lilah', 'Lilah', '100080', 'grodriguez879@yahoo.com', NULL, NULL, NULL, NULL, '$2y$10$JOnWsQP9Ame99HE5IzPbOeCstxGjM996M1qQUhUwGY.qzgncgBO3e', 'img/default-avatar.jpg', 1, NULL, '2023-12-17 06:20:38', '2023-12-17 06:20:38', NULL),
(81, 'Clementine Clementine', 'Clementine', 'Clementine', '100081', '2@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$xwLJYAri9.bKLkibIfXcOOI/mQZGQEYKSJpFi0nsgv67C.QJJT6.u', 'img/default-avatar.jpg', 1, NULL, '2023-12-18 00:52:22', '2023-12-18 00:52:22', NULL),
(82, 'Blair Blair', 'Blair', 'Blair', '100082', '1@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$7BAFIFlBkrz7aOEmTlO/XeE5YSPjPRxtknGlZ5OjHfL3PviVKZjbW', 'img/default-avatar.jpg', 1, NULL, '2023-12-18 05:46:05', '2023-12-18 05:46:05', NULL),
(83, 'JDCLSWmrLSj JDCLSWmrLSj', 'JDCLSWmrLSj', 'JDCLSWmrLSj', '100083', 'IOAcBr.qphpjww@borasca.xyz', NULL, NULL, NULL, NULL, '$2y$10$0hMm.fsxO.ijlt/XQzI6SOIfnAQfC47eU6q.3WYpbtnVU9YwD44WO', 'img/default-avatar.jpg', 1, NULL, '2023-12-18 11:36:57', '2023-12-18 11:36:57', NULL),
(84, 'Lisa Lisa', 'Lisa', 'Lisa', '100084', 'papamurphysspfld@choiceonemail.com', NULL, NULL, NULL, NULL, '$2y$10$czQa5Np/..iM9u/RXf7zgu7Mtl.Dqke1/LeAAfcDDrQHa72XfUMJi', 'img/default-avatar.jpg', 1, NULL, '2023-12-18 21:11:01', '2023-12-18 21:11:01', NULL),
(85, 'jqtXvJVITDWcbTOpH jqtXvJVITDWcbTOpH', 'jqtXvJVITDWcbTOpH', 'jqtXvJVITDWcbTOpH', '100085', 'charmmishaweathers@yahoo.com', NULL, NULL, NULL, NULL, '$2y$10$lzBp/l/B5llyrxTUe8WKAeP01MQ59n/vPQwMzFPlSiLA3qLF0yg7S', 'img/default-avatar.jpg', 1, NULL, '2023-12-18 22:39:01', '2023-12-18 22:39:01', NULL),
(86, 'Augustine Augustine', 'Augustine', 'Augustine', '100086', 'mhpemail-shop@yahoo.com', NULL, NULL, NULL, NULL, '$2y$10$rcDXjgbU.uGbMQPkw/DcnuSfubyzvGEB.MH4Y5AxpPq58xdTsHdyy', 'img/default-avatar.jpg', 1, NULL, '2023-12-19 03:29:42', '2023-12-19 03:29:42', NULL),
(87, 'Soren Soren', 'Soren', 'Soren', '100087', 'jammer3600@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$Ku9mm/lIUoXwxgkODS1lm.7b09zqoU5t5xwI9R12zmQRLLygKlZaK', 'img/default-avatar.jpg', 1, NULL, '2023-12-19 03:47:41', '2023-12-19 03:47:41', NULL),
(88, 'mucDmqCMYS mucDmqCMYS', 'mucDmqCMYS', 'mucDmqCMYS', '100088', 'pawalsh@westnet.com.au', NULL, NULL, NULL, NULL, '$2y$10$0phBt3bwnELCYvRA4F7dCedhO3ToS2MhPHP6n.o5.CaYTnkaq1362', 'img/default-avatar.jpg', 1, NULL, '2023-12-19 04:31:42', '2023-12-19 04:31:42', NULL),
(89, 'fkDjTBJKJOF fkDjTBJKJOF', 'fkDjTBJKJOF', 'fkDjTBJKJOF', '100089', 'barney@btuckerhvac.com', NULL, NULL, NULL, NULL, '$2y$10$eemLvnLabdkTE9Po2r6O2uk/16Pg56lSSZpx8lPt76RTXz71weni6', 'img/default-avatar.jpg', 1, NULL, '2023-12-19 08:15:08', '2023-12-19 08:15:08', NULL),
(90, 'Lennox Lennox', 'Lennox', 'Lennox', '100090', 'tacel75@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$F31rsY4uDxJsB/ekhvjOr.Ty1MgSjGA4Du4hAg8eukLb50lOigYmy', 'img/default-avatar.jpg', 1, NULL, '2023-12-19 08:35:26', '2023-12-19 08:35:26', NULL),
(91, 'Faith Faith', 'Faith', 'Faith', '100091', 'logan.rusnak@mac.com', NULL, NULL, NULL, NULL, '$2y$10$hvBS0NwNEdyvd/VCDW84HubFO5taIrMa715JkKOhm0mETHTAGFEcW', 'img/default-avatar.jpg', 1, NULL, '2023-12-19 21:14:41', '2023-12-19 21:14:41', NULL),
(92, 'TjOjwDwxPNAa TjOjwDwxPNAa', 'TjOjwDwxPNAa', 'TjOjwDwxPNAa', '100092', 'pajohnso@ncsu.edu', NULL, NULL, NULL, NULL, '$2y$10$38kjo4rReNThlJwSUuddb.VCpnF1dFXJG6hNS.0fZW1SpYu3KChvW', 'img/default-avatar.jpg', 1, NULL, '2023-12-19 21:30:45', '2023-12-19 21:30:45', NULL),
(93, 'KFbWzWdQIHKJ KFbWzWdQIHKJ', 'KFbWzWdQIHKJ', 'KFbWzWdQIHKJ', '100093', 'jackie@buildinglab.com', NULL, NULL, NULL, NULL, '$2y$10$0TSqxemXJpANSBZtarGZ9uSUTHLfedruG7KdM5EiIE5FXfK57gL/K', 'img/default-avatar.jpg', 1, NULL, '2023-12-20 03:55:56', '2023-12-20 03:55:56', NULL),
(94, 'Cleo Cleo', 'Cleo', 'Cleo', '100094', 'cheyenne.sky.tv@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$JOgGA4i6ikx4vaFduhY57.B4oPvV4lfOkCyM2trrrotOq2kXiF/Va', 'img/default-avatar.jpg', 1, NULL, '2023-12-20 07:26:42', '2023-12-20 07:26:42', NULL),
(95, 'Jaxton Jaxton', 'Jaxton', 'Jaxton', '100095', 'xaFvbF.hwhcbtw@bakling.click', NULL, NULL, NULL, NULL, '$2y$10$uD0jEOaDm3DZQT/bxoOnHugBJebVSNxzdMiwyZMszIv4Bl3cVjlDm', 'img/default-avatar.jpg', 1, NULL, '2023-12-24 22:56:28', '2023-12-24 22:56:28', NULL),
(96, 'Lucas Lucas', 'Lucas', 'Lucas', '100096', 'elena.maria.beneventi@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$UImldK1oRC1AcXQNHhKbBeu6V4NfyplyhMV8ti2D8OU6oayAhvlCS', 'img/default-avatar.jpg', 1, NULL, '2023-12-25 00:23:08', '2023-12-25 00:23:08', NULL),
(97, 'Trevor Trevor', 'Trevor', 'Trevor', '100097', 'briancaccamo@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$Ly6s.Qj9zpMwIWzsa6vsb.fvLGztDNr3uG0SNYLZ6/tcx20wYrsIa', 'img/default-avatar.jpg', 1, NULL, '2023-12-25 05:28:17', '2023-12-25 05:28:17', NULL),
(98, 'Tiffany Tiffany', 'Tiffany', 'Tiffany', '100098', 'bethlanzisera@yahoo.com', NULL, NULL, NULL, NULL, '$2y$10$MVxB1.T6XpXhSVwsCbPt9u9S6GKkBP3cq4rsiSY1Re6kMjovE2sLq', 'img/default-avatar.jpg', 1, NULL, '2023-12-26 02:32:25', '2023-12-26 02:32:25', NULL),
(99, 'Demi Demi', 'Demi', 'Demi', '100099', 'kimblatt1@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$et0dKOj/67V818FNBGZ0YO8pLy/VZCr//boLgXEkbR3d9geuFpOm.', 'img/default-avatar.jpg', 1, NULL, '2023-12-26 05:12:46', '2023-12-26 05:12:46', NULL),
(100, 'Nelson Nelson', 'Nelson', 'Nelson', '100100', 'jo62marie@live.fr', NULL, NULL, NULL, NULL, '$2y$10$CpNnwYfQIWB/3.uvEOYlAutM5IAPaI2PlXv68jWLPK/eptd/YQqlW', 'img/default-avatar.jpg', 1, NULL, '2023-12-26 19:00:03', '2023-12-26 19:00:03', NULL),
(101, 'Juhaina Alamri', 'Juhaina', 'Alamri', '100101', '12s163601@stu.hct.edu.om', NULL, NULL, NULL, NULL, '$2y$10$xpBhljLsEQl8iXBUMeCQDuCzJkFmW5FNHgZ9twhInHc.oq7MCQxEK', 'img/default-avatar.jpg', 1, NULL, '2023-12-27 01:28:31', '2023-12-27 01:28:31', NULL),
(102, 'Jada Jada', 'Jada', 'Jada', '100102', 'clintsmith@a1termitepc.com', NULL, NULL, NULL, NULL, '$2y$10$HlCs675pcPILU//OICtJYeB6GA8qqgz7XW8EMzhM8oDbSIR9WbwaG', 'img/default-avatar.jpg', 1, NULL, '2023-12-27 02:26:11', '2023-12-27 02:26:11', NULL),
(103, 'Stanley Stanley', 'Stanley', 'Stanley', '100103', 'rramos@taconiccap.com', NULL, NULL, NULL, NULL, '$2y$10$Lzjyohx6UqoJDx5ryLa0I.P46SgpVfmkKqSqxzCxygV0GNZ7a/I5a', 'img/default-avatar.jpg', 1, NULL, '2023-12-27 07:52:33', '2023-12-27 07:52:33', NULL),
(104, 'August August', 'August', 'August', '100104', 'samantha@magicalhometheaters.com', NULL, NULL, NULL, NULL, '$2y$10$/CFQsJBvWWYz2ns.vb5UIu.jaCrer3K2rxg77Zfks79ogqGInBkPC', 'img/default-avatar.jpg', 1, NULL, '2023-12-27 10:00:55', '2023-12-27 10:00:55', NULL),
(105, 'Dax Dax', 'Dax', 'Dax', '100105', 'COabRP.pcmdtch@wheelry.boats', NULL, NULL, NULL, NULL, '$2y$10$8xKP96CNfJ5ATFgu9ko1uOuVohgqZz.MtQUx0P8xa7XzWMmTDLOpa', 'img/default-avatar.jpg', 1, NULL, '2023-12-30 12:20:55', '2023-12-30 12:20:55', NULL),
(106, 'Madden Madden', 'Madden', 'Madden', '100106', 'rbertone@dtpd.org', NULL, NULL, NULL, NULL, '$2y$10$HlYGsR6QhPcycYWZ4IYYduv927m/rRjkg7meJK5Mis966IwaJssSG', 'img/default-avatar.jpg', 1, NULL, '2023-12-30 12:50:28', '2023-12-30 12:50:28', NULL),
(107, 'Rowyn Rowyn', 'Rowyn', 'Rowyn', '100107', 'IohIOn.bdcmhbm@maxeza.click', NULL, NULL, NULL, NULL, '$2y$10$AQxSs64oaqQQ.uz/wIQPeOs8eHmt3iWNwKZUp63uEbrqC1mtsX5/m', 'img/default-avatar.jpg', 1, NULL, '2024-01-13 04:25:22', '2024-01-13 04:25:22', NULL),
(108, 'Kaysen Kaysen', 'Kaysen', 'Kaysen', '100108', 'stephanie.cea@qt.io', NULL, NULL, NULL, NULL, '$2y$10$8d.TBrCV0EaDNgNuMuTbtug2qk1IK0pPCRrdMcNrqyF6f9udvSRoG', 'img/default-avatar.jpg', 1, NULL, '2024-01-13 09:52:38', '2024-01-13 09:52:38', NULL),
(109, 'Jimmy Jimmy', 'Jimmy', 'Jimmy', '100109', 'erinderhaag@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$7nUbeHt/C7iBcfs7ocZDlu59KH81Xlc6MZAxV4hJXewe517O6Rc2u', 'img/default-avatar.jpg', 1, NULL, '2024-01-16 02:41:48', '2024-01-16 02:41:48', NULL),
(110, 'Andres Andres', 'Andres', 'Andres', '100110', 'laura@meritelectriccompany.com', NULL, NULL, NULL, NULL, '$2y$10$M.qlQnH43tYmJE6XNe9koOgSVj4rj41ToGdeRnLNfIDFHvXzVKwkK', 'img/default-avatar.jpg', 1, NULL, '2024-01-16 21:37:08', '2024-01-16 21:37:08', NULL),
(111, 'Jase Jase', 'Jase', 'Jase', '100111', 'jerwell_sheena@yahoo.com', NULL, NULL, NULL, NULL, '$2y$10$dDB2dAiQmT5Vl/ECbpRvGOvbjENSq6hKCrzyv8hIad/RntW3vpyi6', 'img/default-avatar.jpg', 1, NULL, '2024-01-17 13:47:22', '2024-01-17 13:47:22', NULL),
(112, 'Summer Summer', 'Summer', 'Summer', '100112', 'mwenshau@hopkinsmn.com', NULL, NULL, NULL, NULL, '$2y$10$AxW5c7u.EjWe0KSawskNI.vebt0XK/uNZw7JtGB0KFM6YUmya2.zC', 'img/default-avatar.jpg', 1, NULL, '2024-01-18 11:34:28', '2024-01-18 11:34:28', NULL),
(113, 'Kieran Kieran', 'Kieran', 'Kieran', '100113', 'pAjSuA.hppcpqb@zetetic.sbs', NULL, NULL, NULL, NULL, '$2y$10$W23DjcZS2ODesCa6op7uweo.DfFTX1/DIiX8..0Ka7D7dg.UHhyh.', 'img/default-avatar.jpg', 1, NULL, '2024-01-22 16:13:47', '2024-01-22 16:13:47', NULL),
(114, 'Renata Renata', 'Renata', 'Renata', '100114', 'elias9century@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$09mnbfIEMH12rD0jpGQVh.ya42vsNSbdgHBo1Ppg2djKi23L63Joi', 'img/default-avatar.jpg', 1, NULL, '2024-01-23 02:29:19', '2024-01-23 02:29:19', NULL),
(115, 'Pedro Pedro', 'Pedro', 'Pedro', '100115', 'igal@earthlink.net', NULL, NULL, NULL, NULL, '$2y$10$PjQlwgaj6/VtNkyXvMhhkuOCpbeBRvIapBdacxbcEHXKiSE.NVUfa', 'img/default-avatar.jpg', 1, NULL, '2024-01-23 04:39:46', '2024-01-23 04:39:46', NULL),
(116, 'Alfonso Alfonso', 'Alfonso', 'Alfonso', '100116', 'christopher@organiclooms.com', NULL, NULL, NULL, NULL, '$2y$10$m3iwS8Az4q/xYCuy2dWrs.reVQz0zMHQ8dK9fBum4zXCMeyYsZ1l2', 'img/default-avatar.jpg', 1, NULL, '2024-01-23 06:43:31', '2024-01-23 06:43:31', NULL),
(117, 'Rowyn Rowyn', 'Rowyn', 'Rowyn', '100117', 'bandersen@nexttherapysolutions.com', NULL, NULL, NULL, NULL, '$2y$10$046w6YO5a9eHzfzRv92O0uTA8hlmBvMHb0.UQB86P.2G45eW/OQr6', 'img/default-avatar.jpg', 1, NULL, '2024-01-23 08:36:08', '2024-01-23 08:36:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_providers`
--

CREATE TABLE `user_providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(191) NOT NULL,
  `provider_id` varchar(191) NOT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `volunteerings`
--

CREATE TABLE `volunteerings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `association_id` int(10) UNSIGNED DEFAULT NULL,
  `association_name` varchar(191) DEFAULT NULL,
  `volunteering_date` timestamp NULL DEFAULT NULL,
  `volunteering_hour` varchar(5) DEFAULT NULL,
  `attach_file` varchar(191) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_by_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `volunteerings`
--

INSERT INTO `volunteerings` (`id`, `name`, `slug`, `description`, `status`, `association_id`, `association_name`, `volunteering_date`, `volunteering_hour`, `attach_file`, `created_by`, `updated_by`, `deleted_by`, `created_by_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test', 'test', 'test', 1, 1, 'association 1', '2023-02-09 03:36:22', '2', 'http://localhost/volunteering/public/media/3/ra6LBpr83f13VVqoyVg1mb5s5apTPJjR4MEHmuzE.xlsx', 1, 1, 1, NULL, '2023-02-14 20:47:26', '2023-02-24 03:31:39', '2023-02-24 03:31:39'),
(2, 'test 2', NULL, 'fdg', 1, 1, 'association 1', '2023-02-16 03:35:04', '3', NULL, 1, 1, 1, 'Super Admin', '2023-02-15 05:35:54', '2023-02-24 03:31:34', '2023-02-24 03:31:34'),
(3, 'Volunteerings 1', NULL, 'csdfsd', 1, 2, 'association 2', '2023-02-15 10:32:10', '4', NULL, 6, 1, 1, 'Abdullah AL-aufi', '2023-02-18 12:32:19', '2023-02-24 03:31:29', '2023-02-24 03:31:29'),
(4, 'test new', NULL, 'test new', 1, 1, 'association 1', '2023-02-22 14:13:56', '7', 'https://indaaoman.com//public/media/7/L43r5KOC8oTrF3p8bQm0QHnLP4K44fvdoidJPqsX.jpg', 6, 1, 1, 'Abdullah AL-aufi', '2023-02-22 16:14:15', '2023-02-24 03:31:22', '2023-02-24 03:31:22'),
(5, 'test 3', NULL, 'dfsdfs', 1, 2, 'association 2', '2023-02-23 18:45:06', '9', NULL, 1, 1, 1, 'Abdullah AL-Aufi', '2023-02-23 20:46:20', '2023-02-24 03:31:14', '2023-02-24 03:31:14'),
(6, 'srtrfj', NULL, '.klk[\'', 1, 2, 'association 2', '2023-02-23 19:00:13', '3.1', NULL, 9, 9, 9, 'Aya Alshehami', '2023-02-23 21:02:00', '2023-02-25 02:10:24', '2023-02-25 02:10:24'),
(7, 'akh7', NULL, 'nice', 1, 1, 'association 1', '2023-02-24 21:48:44', '3', NULL, 10, 9, 9, 'Yusra Khalfan', '2023-02-23 23:49:59', '2023-02-25 02:10:31', '2023-02-25 02:10:31'),
(8, 'نشاط المرحلة الاولى', NULL, 'تصميم شعار المجموعة', 1, 1, 'association 1', '2023-02-23 22:12:57', '4', NULL, 16, 9, 9, 'arwa alshehami', '2023-02-24 00:13:23', '2023-02-25 02:10:17', '2023-02-25 02:10:17'),
(9, 'نشاط المرحلة الاولى', NULL, 'تصميم شعار المجموعة', 1, NULL, NULL, '2023-01-25 22:31:28', '1.11', NULL, 18, 9, 9, 'Yusra AlHadifi', '2023-02-24 00:31:52', '2023-02-25 02:14:33', '2023-02-25 02:14:33'),
(10, '', NULL, NULL, 1, NULL, NULL, '2023-02-08 01:11:01', '2', NULL, 1, 1, 1, 'Abdullah AL-Aufi', '2023-02-24 03:11:05', '2023-02-24 03:31:04', '2023-02-24 03:31:04'),
(11, '', NULL, NULL, 1, 1, 'association 1', '2023-02-03 01:30:08', '3.3', NULL, 1, 1, 1, 'Abdullah AL-Aufi', '2023-02-24 03:30:13', '2023-02-24 03:30:56', '2023-02-24 03:30:56'),
(12, '', NULL, 'dcc', 1, NULL, NULL, '2023-01-25 22:31:28', '3', NULL, 9, 9, 9, 'Aya Alshehami', '2023-02-25 02:09:08', '2023-02-25 02:09:25', '2023-02-25 02:09:25'),
(13, '', NULL, 'تصميم شعار المجموعة', 1, NULL, NULL, '2023-01-25 00:00:00', '1.11', NULL, 18, 9, NULL, 'Yusra AlHadifi', '2023-02-25 10:29:32', '2023-02-25 11:12:30', NULL),
(14, '', NULL, 'مساعدة أميرة في تصميم شعار آخر', 1, NULL, NULL, '2023-01-29 00:00:00', '1', NULL, 18, 18, NULL, 'Yusra AlHadifi', '2023-02-25 10:30:53', '2023-02-25 10:30:53', NULL),
(15, '', NULL, 'تصميم شعار آخر للمجموعة', 1, NULL, NULL, '2023-01-30 00:00:00', '2', NULL, 18, 18, NULL, 'Yusra AlHadifi', '2023-02-25 10:32:51', '2023-02-25 10:32:51', NULL),
(16, '', NULL, 'تصميم فيديو', 1, NULL, NULL, '2023-01-31 00:00:00', '1', NULL, 18, 18, NULL, 'Yusra AlHadifi', '2023-02-25 10:33:32', '2023-02-25 10:33:32', NULL),
(17, '', NULL, 'حضور اجتماع المجموعة', 1, NULL, NULL, '2023-02-06 00:00:00', '3', NULL, 18, 18, NULL, 'Yusra AlHadifi', '2023-02-25 10:34:18', '2023-02-25 10:34:18', NULL),
(18, '', NULL, 'الرتبة الأولى من الجواز 8:30ص - 4:00 م', 1, NULL, NULL, '2023-01-28 08:30:00', '7.5', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-03-03 14:58:26', '2023-03-03 15:01:27', NULL),
(19, '', NULL, 'تجمع #برومو تعاون 6:00م - 8:30م', 1, 4, 'مبادرة جَوَّلان', '2023-01-08 18:30:00', '2.5', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-03-03 15:06:54', '2023-03-03 15:07:58', NULL),
(20, '', NULL, 'اجتماع عن بعد (1) 8:30م - 10:25م', 1, 4, 'مبادرة جَوَّلان', '2023-01-09 20:30:00', '2', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-03-03 15:10:08', '2023-03-03 15:10:08', NULL),
(21, '', NULL, 'حصر قائمة الدعم اللازم والدعم المستلم 6م - 7م // اجتماع عن بعد (2) 8:30م - 9:30م', 1, 4, 'مبادرة جَوَّلان', '2023-01-10 20:30:00', '2', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-03-03 15:13:19', '2023-03-03 15:13:19', NULL),
(22, '', NULL, 'تحديث قائمة الدعم اللازم والدعم المستلم 12م - 1م', 1, 4, 'مبادرة جَوَّلان', '2023-01-11 12:00:00', '1', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-03-03 15:15:44', '2023-03-03 15:15:44', NULL),
(23, '', NULL, 'اجتماع عن بعد (3) 5:00م - 5:30م // \r\nتحديث قائمة الدعم + الحصول على شعار المؤسسات لداعمة 10:30م - 11:30م', 1, 4, 'مبادرة جَوَّلان', '2023-01-12 17:00:00', '1.5', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-03-03 15:18:50', '2023-03-03 15:18:50', NULL),
(24, '', NULL, 'تحديث قائمة الدعم 11:30م - 11:45', 1, 4, 'مبادرة جَوَّلان', '2023-01-13 23:30:00', '0.25', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-03-03 15:24:20', '2023-03-03 15:24:20', NULL),
(25, '', NULL, 'اجتماع حضوري (4) في مركز الشباب 7:45- 9:45', 1, 4, 'مبادرة جَوَّلان', '2023-01-14 19:45:00', '2', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-03-03 15:26:17', '2023-03-03 15:26:17', NULL),
(26, '', NULL, 'اختيار المكان المناسب لإقامة الفعالية في منتزه الصحوة + استلام الطاولات من مجموعة الإيثار التطوعية 5:00- 7:00', 1, 4, 'مبادرة جَوَّلان', '2023-01-15 15:00:00', '2', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-03-03 15:27:58', '2023-03-03 15:27:58', NULL),
(27, '', NULL, 'تجهيز المكان وإقامة الفعالية في منتزه الصحوة 3:00م - 10:00م', 1, 4, 'مبادرة جَوَّلان', '2023-01-16 15:00:00', '7', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-03-03 15:29:04', '2023-03-03 16:29:02', NULL),
(28, '', NULL, 'إقامة فعالية في محمية السليل الطبيعية 8:00-11:30ص. // تسليم القائمة النهائية للدعم والمشتريات 7:00-9:30م', 1, 4, 'مبادرة جَوَّلان', '2023-01-17 08:00:00', '5', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-03-03 15:29:56', '2023-03-03 15:29:56', NULL),
(29, '', NULL, 'رعاية الطفل في مركز عمان للمؤتمرات والمعارض', 1, NULL, NULL, '2023-02-28 13:28:31', '5', NULL, 22, 22, NULL, 'Hanaa Almaawali', '2023-03-03 15:31:40', '2023-03-03 15:31:40', NULL),
(30, '', NULL, 'الاجتماع الأول لمجموعة إنداء 6:00-7:30', 1, NULL, NULL, '2023-02-06 18:00:00', '1.5', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-03-03 15:38:20', '2023-03-03 15:38:20', NULL),
(31, '', NULL, 'تجهيز ورشة أسس فتح مشروع جديد 6:00م - 7:30م.', 1, NULL, NULL, '2023-02-12 18:00:00', '1.5', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-03-03 15:41:51', '2023-03-03 15:41:51', NULL),
(32, '', NULL, 'عمل ورشة أسس فتح مشروع جديد 6:30-8:30م', 1, NULL, NULL, '2023-02-13 18:30:00', '2', 'https://indaaoman.com//public/media/49/hU2FU5MFk72Hxnk3XkYfoSrKMIYvHkSwWqZSMn1w.docx', 23, 23, NULL, 'أسامة المفرجي', '2023-03-03 15:42:50', '2023-03-03 15:42:50', NULL),
(33, '', NULL, 'الاجتماع الثاني لفريق إنداء تعاون مع الأستاذة فايزة اللواتية 6:00-7:00م', 1, NULL, NULL, '2023-02-21 18:00:00', '1', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-03-03 15:44:11', '2023-03-03 15:44:11', NULL),
(34, '', NULL, 'المشاركة في أعمال السفارة السورية 3:00-7:00م', 1, NULL, NULL, '2023-02-22 15:00:00', '4', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-03-03 15:44:56', '2023-03-03 15:44:56', NULL),
(35, '', NULL, 'معرض الكتاب، مبادرة دعم الطالب الجامعي 6:00 - 10:00م.\r\nساعة الطريق 1', 1, NULL, NULL, '2023-02-23 18:00:00', '5', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-03-03 15:45:30', '2023-03-08 20:56:38', NULL),
(36, '', NULL, 'معرض الكتاب، رعاية الطفل 4:00 - 10:00م\r\nساعة الطريق 1', 1, NULL, NULL, '2023-02-24 16:00:00', '7', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-03-03 15:46:55', '2023-03-08 20:57:01', NULL),
(37, '', NULL, 'معرض الكتاب، مبادرة دعم الطالب الجامعي 6:00 - 10:00م\r\nساعة الطريق 1', 1, NULL, NULL, '2023-02-25 18:00:00', '5', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-03-03 15:47:24', '2023-03-08 20:57:24', NULL),
(38, '', NULL, 'معرض الكتاب، مبادرة دعم الطالب الجامعي 6:00 - 10:00م.\r\nساعة الطريق 1', 1, NULL, NULL, '2023-02-26 18:00:00', '5', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-03-03 15:48:14', '2023-03-08 20:57:54', NULL),
(39, '', NULL, 'معرض الكتاب، مبادرة دعم الطالب الجامعي 6:00 - 10:00م.\r\nساعة الطريق 1', 1, NULL, NULL, '2023-02-27 18:00:00', '5', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-03-03 15:48:52', '2023-03-08 20:58:45', NULL),
(40, '', NULL, 'معرض الكتاب، مبادرة دعم الطالب الجامعي 6:00 - 10:00م.\r\nساعة الطريق 1', 1, NULL, NULL, '2023-03-02 18:00:00', '5', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-03-03 15:49:19', '2023-03-08 20:55:54', NULL),
(41, '', NULL, 'مبادرة يبقى الأثر', 1, NULL, NULL, '2023-01-30 13:44:53', '6', 'https://indaaoman.com//public/media/51/nYLdcdh5ZOpigsUOpoP5YRmEvp935NpGR4g53Xwt.docx', 22, 22, NULL, 'Hanaa Almaawali', '2023-03-03 15:51:42', '2023-03-03 15:57:23', NULL),
(42, '', NULL, 'فيديو توعوي لمبادرة يبقى الأثر لفريق بصمة تغيير التطوعي', 1, NULL, NULL, '2023-01-28 13:59:32', '4', NULL, 22, 22, NULL, 'Hanaa Almaawali', '2023-03-03 16:01:21', '2023-03-03 16:01:21', NULL),
(43, '', NULL, 'تجمع برومو تعاون', 1, 4, 'مبادرة جَوَّلان', '2023-01-08 14:09:58', '2', NULL, 21, 9, 9, 'Atika Al-Shabibi', '2023-03-03 16:11:21', '2023-03-03 16:39:21', '2023-03-03 16:39:21'),
(44, '', NULL, 'ميتنج ١ اونلاين', 1, 4, 'مبادرة جَوَّلان', '2023-01-09 20:30:23', '2', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-03-03 16:13:50', '2023-03-03 16:13:50', NULL),
(45, '', NULL, 'كتابة الاستبيان', 1, 4, 'مبادرة جَوَّلان', '2023-01-09 14:14:25', '3', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-03-03 16:14:51', '2023-03-03 16:14:51', NULL),
(46, '', NULL, 'ميتنج٢ اونلاين', 1, 4, 'مبادرة جَوَّلان', '2023-01-10 14:15:20', '1', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-03-03 16:15:42', '2023-03-03 16:15:42', NULL),
(47, '', NULL, 'ميتنج٣اونلاين', 1, 4, 'مبادرة جَوَّلان', '2023-01-14 14:16:52', '1', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-03-03 16:17:18', '2023-03-03 16:17:18', NULL),
(48, '', NULL, 'ميتنج٤ مركز الشباب', 1, 4, 'مبادرة جَوَّلان', '2023-01-14 14:18:20', '2', NULL, 21, 9, NULL, 'Atika Al-Shabibi', '2023-03-03 16:18:45', '2023-04-02 22:30:25', NULL),
(49, '', NULL, 'كتابة البوربوينت +تجهيزات فعالية المدرسة', 1, 4, 'مبادرة جَوَّلان', '2023-01-15 14:19:24', '5', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-03-03 16:19:42', '2023-03-03 16:19:42', NULL),
(50, '', NULL, 'فعالية مدرسه الابداع العالميه', 1, 4, 'مبادرة جَوَّلان', '2023-01-16 14:22:04', '2.45', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-03-03 16:24:56', '2023-03-03 16:24:56', NULL),
(51, '', NULL, 'فعالية الصحوه', 1, 4, 'مبادرة جَوَّلان', '2023-01-16 14:26:15', '6.15', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-03-03 16:26:53', '2023-03-03 16:26:53', NULL),
(52, '', NULL, 'التقييم في مركز الشباب', 1, 4, 'مبادرة جَوَّلان', '2023-01-18 14:30:35', '1.15', NULL, 21, 9, 9, 'Atika Al-Shabibi', '2023-03-03 16:31:28', '2023-03-03 16:48:34', '2023-03-03 16:48:34'),
(53, '', NULL, 'تصميم شعار إنداء', 1, NULL, NULL, '2023-01-27 14:33:37', '4', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-03-03 16:34:13', '2023-03-03 16:34:13', NULL),
(54, '', NULL, 'ورشه الجواز التطوعي', 1, NULL, NULL, '2023-01-28 14:35:20', '7.30', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-03-03 16:36:00', '2023-03-03 16:36:00', NULL),
(55, '', NULL, 'اجتماع في مركز الشباب', 1, NULL, NULL, '2023-02-06 14:36:29', '2.30', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-03-03 16:36:51', '2023-03-03 16:36:51', NULL),
(56, '', NULL, 'فرز ملابس للمحتاجين في دار العطاء', 1, NULL, NULL, '2023-02-09 14:37:27', '2', 'https://indaaoman.com//public/media/52/ZgQBL4ACuzi4ThUUOoXiREdJuljaWrNT2AFvd06d.docx', 21, 21, NULL, 'Atika Al-Shabibi', '2023-03-03 16:38:54', '2023-03-03 16:38:54', NULL),
(57, '', NULL, 'ورشه اسعافات اولية في مدرسة مدينة السلطان قابوس الخاصة', 1, NULL, NULL, '2023-02-15 14:39:29', '2', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-03-03 16:39:43', '2023-03-03 16:39:43', NULL),
(58, '', NULL, 'مبادره رعاية الطفل في معرض الكتاب', 1, NULL, NULL, '2023-02-25 14:40:27', '6.40', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-03-03 16:41:21', '2023-03-09 01:30:31', NULL),
(59, '', NULL, 'اجتماع اونلاين مع الاستاذه فايزه لتحدث عن خطط الشبكة و مجموعة تعاون', 1, NULL, NULL, '2023-02-27 17:00:00', '3', NULL, 27, 27, NULL, 'Salim ALHATTALI', '2023-03-05 16:00:52', '2023-03-05 16:00:52', NULL),
(60, '', NULL, 'اجتماع مع القائد فايزة', 1, NULL, NULL, '2023-02-21 00:00:00', '2', NULL, 18, 18, NULL, 'Yusra AlHadifi', '2023-03-05 22:44:20', '2023-03-05 22:44:20', NULL),
(61, '', NULL, 'معرض الكتاب، مبادرة دعم الطالب الجامعي 6:00 - 10:00م.\r\nساعة الطريق 1', 1, NULL, NULL, '2023-03-03 18:00:00', '5', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-03-08 21:00:51', '2023-03-08 21:00:51', NULL),
(62, '', NULL, 'حملة التشجير(العامرات خضراء) 8:00ص - 12:00م\r\nمعرض الكتاب، مبادرة دعم الطالب الجامعي 3:00م - 6:00م.\r\nساعة الطريق 1', 1, NULL, NULL, '2023-03-04 18:00:00', '8', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-03-08 21:03:04', '2023-03-08 21:03:04', NULL),
(63, '', NULL, 'تنظيم في الملتقى التعريفي الاول بمؤسسات التعليم العالي', 1, NULL, NULL, '2023-03-06 23:31:51', '4', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-03-09 01:34:37', '2023-03-09 01:34:37', NULL),
(64, '', NULL, 'تنظيم في الملتقى التعريفي الاول بمؤسسات التعليم العالي', 1, NULL, NULL, '2023-03-07 23:34:46', '4', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-03-09 01:35:07', '2023-03-09 01:35:07', NULL),
(65, '', NULL, 'تنظيم في الملتقى التعريفي الاول بمؤسسات التعليم العالي', 1, NULL, NULL, '2023-03-08 23:35:14', '1', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-03-09 01:35:27', '2023-03-09 01:35:27', NULL),
(66, '', NULL, 'الاجتماع الاول للمبادرة اونلاين', 1, 4, 'مبادرة جَوَّلان', '2023-01-09 08:30:00', '2', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-03-16 00:04:52', '2023-03-16 00:04:52', NULL),
(67, '', NULL, 'الاجتماع مع موظف شركة بيئة', 1, 4, 'مبادرة جَوَّلان', '2023-01-10 03:30:00', '0.45', NULL, 28, 9, 9, 'Azzan albattashi', '2023-03-16 00:06:31', '2023-03-16 01:08:32', '2023-03-16 01:08:32'),
(68, '', NULL, 'الاجتماع مع موظف شركة بيئة', 1, 4, 'مبادرة جَوَّلان', '2023-01-10 03:30:00', '0.45', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-03-16 00:06:31', '2023-03-16 00:06:31', NULL),
(69, '', NULL, 'الاجتماع مع المجموعة', 1, 4, 'مبادرة جَوَّلان', '2023-01-11 20:30:00', '0.30', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-03-16 00:10:24', '2023-03-16 00:10:24', NULL),
(70, '', NULL, 'تصوير فيديو للمبادرة', 1, 4, 'مبادرة جَوَّلان', '2023-01-12 15:00:00', '2', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-03-16 00:12:44', '2023-03-16 00:12:44', NULL),
(71, '', NULL, 'الاجتماع مع المجموعة في مركز الشباب', 1, 4, 'مبادرة جَوَّلان', '2023-01-14 19:45:00', '2.25', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-03-16 00:15:02', '2023-03-16 00:15:02', NULL),
(72, '', NULL, 'معرض المبادرة في حدائق الصحوة', 1, 4, 'مبادرة جَوَّلان', '2023-01-16 18:30:00', '4.30', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-03-16 00:18:10', '2023-03-16 00:18:10', NULL),
(73, '', NULL, 'المساعدة في تصميم الشعار للمجموعة', 1, 4, 'مبادرة جَوَّلان', '2023-01-26 22:00:00', '2', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-03-16 00:20:13', '2023-03-16 00:20:13', NULL),
(74, '', NULL, 'المشاركة في تصوير ورشة الاسعافات الاوليه', 1, NULL, NULL, '2023-02-06 13:00:00', '3', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-03-16 00:27:58', '2023-03-16 00:35:43', NULL),
(75, '', NULL, 'الاجتماع مع المجموعة في مركز الشباب', 1, NULL, NULL, '2023-02-06 18:00:00', '2', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-03-16 00:35:22', '2023-03-16 00:35:22', NULL),
(76, '', NULL, 'فرز وتريب الملابس في جمعية دار العطاء', 1, NULL, NULL, '2023-02-09 00:00:00', '1', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-03-16 00:36:42', '2023-03-16 00:36:42', NULL),
(77, '', NULL, 'الاجتماع مع المجموعة في مركز الشباب', 1, NULL, NULL, '2023-02-14 18:00:00', '2.5', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-03-16 00:38:20', '2023-03-16 00:38:20', NULL),
(78, '', NULL, 'الاجتماع مع القائدة فايزة الموسوية اونلاين', 1, NULL, NULL, '2023-02-21 18:00:00', '2', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-03-16 00:43:00', '2023-03-16 00:43:00', NULL),
(79, '', NULL, 'مبادرة دعم الطالب الجامعي', 1, NULL, NULL, '2023-02-23 10:00:00', '6', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-03-16 00:58:00', '2023-03-16 00:58:00', NULL),
(80, '', NULL, 'مبادرة دعم الطالب الجامعي', 1, NULL, NULL, '2023-02-26 14:00:00', '6', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-03-16 00:58:55', '2023-03-16 00:58:55', NULL),
(81, '', NULL, 'مبادرة دعم الطالب الجامعي', 1, NULL, NULL, '2023-02-27 10:00:00', '6', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-03-16 00:59:35', '2023-03-16 00:59:35', NULL),
(82, '', NULL, 'مبادرة دعم الطالب الجامعي', 1, NULL, NULL, '2023-02-28 16:00:00', '5', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-03-16 01:00:22', '2023-03-16 01:00:22', NULL),
(83, '', NULL, 'مبادرة دعم الطالب الجامعي', 1, NULL, NULL, '2023-03-01 14:00:00', '6', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-03-16 01:01:06', '2023-03-16 01:01:06', NULL),
(84, '', NULL, 'مبادرة دعم الطالب الجامعي', 1, NULL, NULL, '2023-03-02 17:00:00', '3', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-03-16 01:01:48', '2023-03-16 01:01:48', NULL),
(85, '', NULL, 'الملتقى التعرفي الاول لمؤسسات التعليم العالي', 1, NULL, NULL, '2023-03-06 16:30:00', '4', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-03-16 01:03:02', '2023-03-16 01:03:02', NULL),
(86, '', NULL, 'الملتقى التعرفي الاول لمؤسسات التعليم العالي', 1, NULL, NULL, '2023-03-07 16:30:00', '5', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-03-16 01:03:41', '2023-03-16 01:03:41', NULL),
(87, '', NULL, 'الملتقى التعرفي الاول لمؤسسات التعليم العالي', 1, NULL, NULL, '2023-03-08 08:00:00', '6', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-03-16 01:04:18', '2023-03-16 01:04:18', NULL),
(88, '', NULL, 'اجتماع ١ اونلاين للتخطيط لمشروع المتطوعون في رمضان', 1, 5, 'مُبادرة توليفة-', '2023-03-21 00:26:06', '2', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-03-22 02:27:07', '2023-03-22 02:27:07', NULL),
(89, '', NULL, 'حضور الاجتماع الأول', 1, 5, 'مُبادرة توليفة-', '2023-03-21 18:00:00', '2', NULL, 32, 32, NULL, 'سندس الغافرية', '2023-03-22 11:18:27', '2023-03-22 11:20:09', NULL),
(90, '', NULL, 'اجتماع اونلاين للتخطيط للخطة الاعلامية', 1, 5, 'مُبادرة توليفة-', '2023-03-23 23:28:56', '.20', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-03-24 01:29:44', '2023-03-24 01:29:44', NULL),
(91, '', NULL, 'ترتيب الخطة الاعلامية ووضعها في جدول مبدئي', 1, 5, 'مُبادرة توليفة-', '2023-03-23 23:29:49', '.15', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-03-24 01:30:34', '2023-03-24 01:30:34', NULL),
(92, '', NULL, 'تصميم بوستات تعريف المبادرة وهدفها ودلالات الشعار', 1, 5, 'مُبادرة توليفة-', '2023-03-25 16:29:21', '1', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-03-25 18:30:12', '2023-03-25 18:30:12', NULL),
(93, '', NULL, 'أول اجتماع أونلاين لمبادرة توليفة لمدة ساعتين من الساعة السادسة مساءا إلى الساعة الثامنة', 1, 5, 'مُبادرة توليفة-', '2023-03-21 12:49:10', '2', NULL, 22, 22, NULL, 'Hanaa Almaawali', '2023-03-26 14:52:43', '2023-03-26 14:52:43', NULL),
(94, '', NULL, 'عمل توصيف للمبادرة', 1, 5, 'مُبادرة توليفة-', '2023-03-23 12:53:46', '1', 'https://indaaoman.com//public/media/54/S2Ah5w0isH29y9Gnra7OQ7pyOEs3t3ElPAdONNoB.docx', 22, 22, NULL, 'Hanaa Almaawali', '2023-03-26 14:55:19', '2023-03-26 14:55:19', NULL),
(95, '', NULL, 'تجمع برومو تعاون فالمعبيلة', 1, NULL, NULL, '2023-01-08 12:59:12', '2', NULL, 22, 22, NULL, 'Hanaa Almaawali', '2023-03-26 15:02:08', '2023-03-26 15:02:08', NULL),
(96, '', NULL, 'أول اجتماع أونلاين', 1, 4, 'مبادرة جَوَّلان', '2023-01-10 13:02:13', '1', NULL, 22, 22, NULL, 'Hanaa Almaawali', '2023-03-26 15:03:52', '2023-03-26 15:03:52', NULL),
(97, '', NULL, 'ثاني اجتماع أونلاين', 1, 4, 'مبادرة جَوَّلان', '2023-01-11 13:04:00', '1', NULL, 22, 22, NULL, 'Hanaa Almaawali', '2023-03-26 15:04:32', '2023-03-26 15:04:32', NULL),
(98, '', NULL, 'تواصلت مع جريدة ملهمة عمان لنشر مقال عن مبادرة جولان', 1, 4, 'مبادرة جَوَّلان', '2023-01-13 13:04:53', '1', NULL, 22, 22, NULL, 'Hanaa Almaawali', '2023-03-26 15:06:32', '2023-03-26 15:06:32', NULL),
(99, '', NULL, 'ثالث اجتماع حضوري في مركز الشباب', 1, 4, 'مبادرة جَوَّلان', '2023-01-14 13:06:38', '2', NULL, 22, 22, NULL, 'Hanaa Almaawali', '2023-03-26 15:07:15', '2023-03-26 15:07:15', NULL),
(100, '', NULL, 'فعالية حديقة الصحوة وعرض المبادرة', 1, 4, 'مبادرة جَوَّلان', '2023-01-16 13:07:22', '6', NULL, 22, 22, NULL, 'Hanaa Almaawali', '2023-03-26 15:09:17', '2023-03-26 15:09:17', NULL),
(101, '', NULL, 'اجتماع جروب جولان وتقييم برومو تعاون', 1, 4, 'مبادرة جَوَّلان', '2023-01-18 13:09:27', '3', NULL, 22, 22, NULL, 'Hanaa Almaawali', '2023-03-26 15:11:43', '2023-03-26 15:29:23', NULL),
(102, '', NULL, 'الرخصة التطوعية', 1, 4, 'مبادرة جَوَّلان', '2023-01-28 13:11:49', '7.5', NULL, 22, 22, NULL, 'Hanaa Almaawali', '2023-03-26 15:22:48', '2023-03-26 15:28:20', NULL),
(103, '', NULL, 'اجتماع٢ اونلاين لمبادرة توليفة', 1, 5, 'مُبادرة توليفة-', '2023-03-26 22:48:32', '1', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-03-27 00:49:02', '2023-03-27 00:49:02', NULL),
(104, '', NULL, 'ساعه فقط لتحديد المهام ومناقشة مع آية', 1, 4, 'مبادرة جَوَّلان', '2023-01-10 22:35:20', '1', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-03-27 00:54:36', '2023-03-27 00:54:36', NULL),
(105, '', NULL, 'اجتماع مع مدير المحميات', 1, 4, 'مبادرة جَوَّلان', '2023-01-11 05:00:42', '2', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-03-27 00:56:11', '2023-03-27 00:56:11', NULL),
(106, '', NULL, 'ساعتين فقط مناقشة واجتماع اونلاين مع فريق الهيئة', 1, 4, 'مبادرة جَوَّلان', '2023-01-12 22:57:00', '2', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-03-27 00:57:30', '2023-03-27 00:57:30', NULL),
(107, '', NULL, 'ساعة فقط استفسار من الهيئات الداعمة للفعالية', 1, 4, 'مبادرة جَوَّلان', '2023-01-13 22:57:50', '1', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-03-27 00:58:08', '2023-03-27 00:58:08', NULL),
(108, '', NULL, 'التفاصيل : ساعتين اجتماع في جراند مول /ساعة تحديد المهام', 1, 4, 'مبادرة جَوَّلان', '2023-01-14 22:58:36', '3', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-03-27 00:58:43', '2023-03-27 00:58:43', NULL),
(109, '', NULL, 'التفاصيل : ساعتين مناقشة مع القائدة عائشة حول اللقاء \r\n+ \r\nساعة مناقشة مع القائد آية حول اللقاء ايضا ساعتين أتصالات في نقاش مع الموظفة تبع الهيئة لمناقشة الفعالية', 1, 4, 'مبادرة جَوَّلان', '2023-01-15 22:59:00', '5', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-03-27 00:59:38', '2023-03-27 00:59:38', NULL),
(110, '', NULL, 'ساعتين في الهيئة لستلام الكتب \r\nساعة في المشتل لإستلام الشتلات \r\nساعتين لتحضير للقاء في إذاعة الوصال \r\n الصحوة / حضور للفعالية لمدة ٥ ساعات', 1, 4, 'مبادرة جَوَّلان', '2023-01-16 23:00:21', '10', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-03-27 01:00:29', '2023-03-27 01:00:29', NULL),
(111, '', NULL, 'ساعتين إنتظار في الهيئة لإرجاع الكتب المتبقية \r\nساعة مناقشة مع مدير المحميات حول المعرض والفعالية المقامة في الصحوة', 1, 4, 'مبادرة جَوَّلان', '2023-01-17 23:01:05', '3', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-03-27 01:01:16', '2023-03-27 01:01:16', NULL),
(112, '', NULL, 'تجهيز الموضوع للمبادرة + تحديد أسم المبادرة \r\nتحديد محاور الورشة', 1, NULL, NULL, '2023-02-05 23:01:56', '1', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-03-27 01:02:02', '2023-03-27 01:02:02', NULL),
(113, '', NULL, 'تجهيز البوربوينت + ومناقشه الأنشطة الترفيهية التابعة للورشة والبحث عن أنشطة متنوعة', 1, NULL, NULL, '2023-02-06 23:02:47', '2', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-03-27 01:02:56', '2023-03-27 01:02:56', NULL),
(114, '', NULL, 'أجتماع مع الكوتش  سليمان البريكي لمناقشة محاور الورشة والأستفادة من خبراته في مجال \"تنمية الذات  \"', 1, NULL, NULL, '2023-02-07 23:03:27', '3', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-03-27 01:03:59', '2023-03-27 01:03:59', NULL),
(115, '', NULL, 'تصميم بطاقات تفاعلية  وأنشطة  للورشة + طباعتهم', 1, NULL, NULL, '2023-02-08 23:04:29', '2', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-03-27 01:04:37', '2023-03-27 01:04:37', NULL),
(116, '', NULL, 'البحث عن فيديوات مناسبة للورشة وتنزيل الفيديو', 1, NULL, NULL, '2023-02-09 23:04:53', '1', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-03-27 01:05:12', '2023-03-27 01:05:12', NULL),
(117, '', NULL, 'ساعه أجتماع مع أسامة لمناقشه الورشة \r\nساعه : تشطيب البوربوينت بالكامل \r\nساعه : لحفظ وتحضير للورشة', 1, NULL, NULL, '2023-02-10 23:05:40', '3', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-03-27 01:05:52', '2023-03-27 01:05:52', NULL),
(118, '', NULL, 'ساعه حفظ للورشة + ساعه نشر استبيان الورشة للأعضاء وتسجيل الحضور والتأكد من حضورهم', 1, NULL, NULL, '2023-02-11 23:06:14', '2', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-03-27 01:06:32', '2023-03-27 01:06:32', NULL),
(119, '', NULL, 'اجتماع ساعتين مع أسامه في مركز الشباب \r\nساعه لتخليص إجراءات الحجز للقاعه والتأكد من الحضور \r\nساعه لتحضير المحاور للورشة بشكل دقيق', 1, NULL, NULL, '2023-02-12 23:07:17', '4', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-03-27 01:07:26', '2023-03-27 01:07:26', NULL),
(120, '', NULL, 'يوم تقديم الورشة \r\nساعه لاستلام الاوراق من المكتبه + استلام السويتات للورشه من المطعم \r\nساعه : تحضير أخير للورشة \r\nساعه : ترتيب القاعه وتوزيع الاوراق للحضور وتجهيز الشاشه \r\nساعتين : تقديم الورشة', 1, NULL, NULL, '2023-02-13 23:07:41', '5', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-03-27 01:08:11', '2023-03-27 01:08:11', NULL),
(121, '', NULL, 'إجتماع مع القائد آية لمناقشه الخطة السنوية لمجموعة إنداء في مركز الشباب', 1, NULL, NULL, '2023-02-14 23:08:44', '1', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-03-27 01:09:08', '2023-03-27 01:09:08', NULL),
(122, '', NULL, 'إجتماع أونلاين مع القائد مرشد + القائد فائزة لمناقشة الخطة السنوية + اختيار نشاط يومي +اختيار نشاط او مسابقة لمجموعة الشبكة', 1, NULL, NULL, '2023-02-21 23:09:31', '1', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-03-27 01:09:50', '2023-03-27 01:09:50', NULL),
(123, '', NULL, 'اجتماع اونلاين لمناقشة المبادرة الجديدة للمتطوعون في رمضان', 1, 5, 'مُبادرة توليفة-', '2023-03-21 23:11:10', '2', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-03-27 01:11:16', '2023-03-27 01:11:16', NULL),
(124, '', NULL, 'التواصل مع مشاهير بخصوص الدعم في السوشل ميديا للمبادرة الجديدة في رمضان', 1, 5, 'مُبادرة توليفة-', '2023-03-25 23:12:10', '2', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-03-27 01:12:27', '2023-03-27 01:12:27', NULL),
(125, '', NULL, 'اجتماع لتحديد المهام وتوزيعها على الاعضاء للمبادرة الجديدة', 1, 5, 'مُبادرة توليفة-', '2023-03-26 23:13:11', '1', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-03-27 01:13:26', '2023-03-27 01:13:26', NULL),
(126, '', NULL, 'تصميم بوست للفيديو', 1, 5, 'مُبادرة توليفة-', '2023-03-27 21:53:26', '1.30', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-03-27 23:54:03', '2023-03-27 23:54:03', NULL),
(127, '', NULL, 'اجتماع اونلاين للجنة الاعلامية', 1, 5, 'مُبادرة توليفة-', '2023-03-27 21:54:18', '0.40', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-03-27 23:54:53', '2023-03-27 23:54:53', NULL),
(128, '', NULL, 'التواصل مع الاشخاص المختصين بدعم المبادرة من خلال النشر لها والتأكد من النشر بعد  شرح المبادرة لهم', 1, 5, 'مُبادرة توليفة-', '2023-03-29 05:18:03', '1', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-03-31 07:19:57', '2023-03-31 07:19:57', NULL),
(129, '', NULL, 'كتابة المقال للجريدة المختص بالمبادرة بالكامل', 1, 5, 'مُبادرة توليفة-', '2023-03-30 05:20:00', '3', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-03-31 07:20:46', '2023-03-31 07:20:46', NULL),
(130, '', NULL, 'حضور الاجتماع الثاني', 1, 5, 'مُبادرة توليفة-', '2023-03-26 21:00:00', '1', NULL, 32, 32, NULL, 'سندس الغافرية', '2023-03-31 16:55:27', '2023-03-31 17:03:03', NULL),
(131, '', NULL, 'البحث عن دعم بالألعاب للمبادرة\r\nتم الحصول على جزء من الدعم', 1, 5, 'مُبادرة توليفة-', '2023-03-27 09:00:00', '2', NULL, 32, 32, NULL, 'سندس الغافرية', '2023-03-31 16:57:29', '2023-03-31 16:57:29', NULL),
(132, '', NULL, 'إعداد محتوى ورشة يلا نجمع', 1, 5, 'مُبادرة توليفة-', '2023-03-28 19:00:00', '2', NULL, 32, 32, NULL, 'سندس الغافرية', '2023-03-31 17:00:33', '2023-03-31 17:00:33', NULL),
(133, '', NULL, 'تعديل مقال الجريدة عن المبادرة', 1, 5, 'مُبادرة توليفة-', '2023-03-31 13:00:00', '1', NULL, 32, 32, NULL, 'سندس الغافرية', '2023-03-31 17:02:41', '2023-04-04 05:15:03', NULL),
(134, '', NULL, 'العمل على الفيديو الترويجي لمبادرة توليفة بالإضافة الى الاجتماع الاول و الثاني اولانين مع اعضاء المجموعه', 1, 5, 'مُبادرة توليفة-', '2023-03-27 12:00:00', '19', NULL, 27, 27, NULL, 'Salim ALHATTALI', '2023-04-01 14:58:24', '2023-04-01 14:59:59', NULL),
(135, '', NULL, 'إجتماع شؤون المتطوعين ورسم خطة الأنشطة الخاصة بالمجموعة', 1, NULL, NULL, '2023-03-15 15:00:00', '2', NULL, 30, 30, NULL, 'Fatma AL lawati', '2023-04-01 16:30:36', '2023-04-01 16:30:36', NULL),
(136, '', NULL, 'الاجتماع الأول الخاص بالمبادرة على google meet', 1, 5, 'مُبادرة توليفة-', '2023-03-21 18:00:00', '2', NULL, 30, 30, NULL, 'Fatma AL lawati', '2023-04-01 16:32:23', '2023-04-01 16:32:23', NULL),
(137, '', NULL, 'كتابة محضر الاجتماع الأول (المتطوعون في رمضان)', 1, 5, 'مُبادرة توليفة-', '2023-03-21 22:00:00', '1.1', NULL, 30, 9, NULL, 'Fatma AL lawati', '2023-04-01 16:34:22', '2023-04-09 01:59:16', NULL),
(138, '', NULL, 'كتابة محضر الاجتماع الثاني', 1, 5, 'مُبادرة توليفة-', '2023-03-27 21:00:00', '1.1', NULL, 30, 9, NULL, 'Fatma AL lawati', '2023-04-01 16:36:17', '2023-04-09 01:55:53', NULL),
(139, '', NULL, 'العمل على استبيان (قياس الثقافة المالية والادخار لدى الأطفال)', 1, 5, 'مُبادرة توليفة-', '2023-03-27 21:00:00', '2', NULL, 30, 30, NULL, 'Fatma AL lawati', '2023-04-01 16:39:08', '2023-04-01 16:39:08', NULL),
(140, '', NULL, 'العمل على استبيان (قياس الثقافة المالية والادخار لدى الأطفال)', 1, 5, 'مُبادرة توليفة-', '2023-03-28 23:00:00', '1', NULL, 30, 30, NULL, 'Fatma AL lawati', '2023-04-01 16:40:05', '2023-04-01 16:40:05', NULL),
(141, '', NULL, 'العمل على استبيان (قياس الثقافة المالية والادخار لدى الأطفال)\r\nالتصميم والطباعة', 1, 5, 'مُبادرة توليفة-', '2023-03-31 21:40:00', '2.1', NULL, 30, 30, NULL, 'Fatma AL lawati', '2023-04-01 16:42:24', '2023-04-01 16:42:24', NULL),
(142, '', NULL, 'برنامج المتطوعون في رمضان(تعاون) 6:00 - 8:00', 1, 5, 'مُبادرة توليفة-', '2023-03-19 18:00:00', '2', NULL, 23, 9, 9, 'أسامة المفرجي', '2023-04-01 16:53:32', '2023-04-02 23:04:34', '2023-04-02 23:04:34'),
(143, '', NULL, 'الإجتماع الأول لمشروع المتطوعون في رمضان 6:00م - 8:00م', 1, 5, 'مُبادرة توليفة-', '2023-03-21 18:00:00', '2', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-04-01 16:54:57', '2023-04-01 16:57:16', NULL),
(144, '', NULL, 'التواصل مع الأعضاء لإتمام المهام. ساعة واحدة', 1, 5, 'مُبادرة توليفة-', '2023-03-22 13:57:58', '1', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-04-01 16:59:27', '2023-04-01 16:59:27', NULL),
(145, '', NULL, 'التواصل مع الأعضاء لإتمام المهام. ساعتان', 1, 5, 'مُبادرة توليفة-', '2023-03-23 17:40:33', '2', NULL, 23, 9, NULL, 'أسامة المفرجي', '2023-04-01 20:41:15', '2023-04-09 01:58:55', NULL),
(146, '', NULL, 'العمل على الخطة التنفيذية + الخطة الإعلامية 10:30م - 12:00ص // التواصل مع الأعضاء لإتمام المهام. 3 ساعات', 1, 5, 'مُبادرة توليفة-', '2023-03-24 17:42:19', '4.5', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-04-01 20:43:15', '2023-04-01 20:43:15', NULL),
(147, '', NULL, 'التواصل مع الأعضاء لإتمام المهام. 3 ساعات', 1, 5, 'مُبادرة توليفة-', '2023-03-25 17:43:41', '3', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-04-01 20:44:07', '2023-04-01 20:44:07', NULL),
(148, '', NULL, 'الإجتماع الثاني لمشروع المتطوعون في رمضان توليفة 9:00م - 10:30م // التواصل مع الأعضاء لإتمام المهام. 3 ساعات', 1, 5, 'مُبادرة توليفة-', '2023-03-26 17:44:29', '4.5', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-04-01 20:44:51', '2023-04-01 20:44:51', NULL),
(149, '', NULL, 'التواصل مع الأعضاء لإتمام المهام. 3 ساعات', 1, 5, 'مُبادرة توليفة-', '2023-03-27 17:45:16', '3', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-04-01 20:45:43', '2023-04-01 20:45:43', NULL),
(150, '', NULL, 'التواصل مع الأعضاء لإتمام المهام. 3 ساعات', 1, 5, 'مُبادرة توليفة-', '2023-03-28 17:46:36', '3', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-04-01 20:46:50', '2023-04-01 20:46:50', NULL),
(151, '', NULL, 'التواصل مع الأعضاء لإتمام المهام. ساعة واحدة', 1, 5, 'مُبادرة توليفة-', '2023-03-29 17:47:32', '1', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-04-01 20:47:56', '2023-04-01 20:47:56', NULL),
(152, '', NULL, 'تصميم بوست اعلان لمقابله اذاعة الشباب', 1, 5, 'مُبادرة توليفة-', '2023-03-30 11:30:20', '.30', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-04-02 13:31:21', '2023-04-02 13:31:21', NULL),
(153, '', NULL, 'مقابله مع برنامج دوم معكم اذاعة الشباب للحديث عن مبادره توليفه', 1, 5, 'مُبادرة توليفة-', '2023-03-30 11:31:31', '.15', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-04-02 13:33:06', '2023-04-02 13:33:06', NULL),
(154, '', NULL, 'استلام ألعاب من متجر الايام السعيدة في فنجا', 1, 5, 'مُبادرة توليفة-', '2023-03-31 11:33:16', '.15', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-04-02 13:34:15', '2023-04-02 13:34:15', NULL),
(155, '', NULL, 'الورشة الاولى لمبادرة توليفة في فن زون', 1, 5, 'مُبادرة توليفة-', '2023-04-01 11:36:11', '3', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-04-02 13:36:58', '2023-04-02 13:36:58', NULL),
(156, '', NULL, 'ثاني اجتماع للمبادرة', 1, 5, 'مُبادرة توليفة-', '2023-03-26 14:11:27', '1.5', NULL, 22, 22, NULL, 'Hanaa Almaawali', '2023-04-02 16:12:53', '2023-04-02 16:12:53', NULL),
(157, '', NULL, 'مثلت في فيديو قصير للمبادرة لتوضيح فكرة الادخار عند الأطفال', 1, 5, 'مُبادرة توليفة-', '2023-03-28 14:13:23', '2', NULL, 22, 22, NULL, 'Hanaa Almaawali', '2023-04-02 16:16:11', '2023-04-02 16:20:08', NULL),
(158, '', NULL, 'طلبت دعم من حلويات الصباحي ورحت أستلمه من المحل', 1, 5, 'مُبادرة توليفة-', '2023-03-30 14:16:24', '1', NULL, 22, 22, NULL, 'Hanaa Almaawali', '2023-04-02 16:17:31', '2023-04-02 16:17:31', NULL),
(159, '', NULL, 'المشاركة في مبادرة توليفة التي أقيمت في القرم', 1, 5, 'مُبادرة توليفة-', '2023-04-01 14:17:43', '2', NULL, 22, 22, NULL, 'Hanaa Almaawali', '2023-04-02 16:18:54', '2023-04-02 16:18:54', NULL),
(160, '', NULL, 'وقت الفعالية في فن زون', 1, 5, 'مُبادرة توليفة-', '2023-04-01 23:02:10', '2', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-04-03 01:03:02', '2023-04-03 01:03:02', NULL),
(161, '', NULL, 'اجتماع شوون انداء مع هيام', 1, NULL, NULL, '2023-03-15 03:00:00', '1.5', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-04-03 14:21:08', '2023-04-03 14:21:08', NULL),
(162, '', NULL, 'اجتماع الثاني توليفة', 1, NULL, NULL, '2023-03-26 09:00:00', '1.5', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-04-03 14:24:02', '2023-04-03 14:24:02', NULL),
(163, '', NULL, 'البحث عن دعم الحصالة', 1, NULL, NULL, '2023-03-27 08:00:00', '3', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-04-03 14:25:07', '2023-04-03 14:25:07', NULL),
(164, '', NULL, NULL, 1, 5, 'مُبادرة توليفة-', '2023-04-01 07:00:00', '3.5', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-04-03 14:26:12', '2023-04-03 14:26:12', NULL),
(165, '', NULL, 'إعداد الأنشطة الورقية لورشة يلا نجمع', 1, 5, 'مُبادرة توليفة-', '2023-04-01 16:00:00', '1', NULL, 32, 32, NULL, 'سندس الغافرية', '2023-04-04 05:19:44', '2023-04-04 05:19:44', NULL),
(166, '', NULL, 'تنفيذ البرنامج الأول \"يلا نجمع\"', 1, 5, 'مُبادرة توليفة-', '2023-04-01 19:00:00', '3', NULL, 32, 32, NULL, 'سندس الغافرية', '2023-04-04 05:20:33', '2023-04-04 05:20:33', NULL),
(167, '', NULL, 'إعداد جزء من التقرير النهائي', 1, 5, 'مُبادرة توليفة-', '2023-04-03 14:00:00', '4', NULL, 32, 32, NULL, 'سندس الغافرية', '2023-04-04 05:21:57', '2023-04-04 05:21:57', NULL),
(168, '', NULL, 'عمل توصيف لمبادرة توليفة في مدرسة السلام وكذلك لركن في جراند مول', 1, 5, 'مُبادرة توليفة-', '2023-04-06 22:15:52', '1', NULL, 22, 22, NULL, 'Hanaa Almaawali', '2023-04-07 00:17:19', '2023-04-07 00:17:19', NULL),
(169, '', NULL, 'تكملة كتابة المقال للجريدة والمجلات', 1, 5, 'مُبادرة توليفة-', '2023-04-07 21:26:13', '1', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-04-08 23:27:21', '2023-04-08 23:27:21', NULL),
(170, '', NULL, 'ركن مبادرة توليفه في معرض تمكين وارتقاء التابع لوزارة التنمية الاجتماعية', 1, 5, 'مُبادرة توليفة-', '2023-04-07 21:27:32', '3', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-04-08 23:28:27', '2023-04-08 23:28:27', NULL),
(171, '', NULL, 'تجميع صور ومقاطع المبادرات في ملف على جوجل درايف', 1, 5, 'مُبادرة توليفة-', '2023-04-08 21:28:32', '.5', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-04-08 23:29:11', '2023-04-08 23:29:11', NULL),
(172, '', NULL, 'تصوير وتصميم فلم عن تصحيح سلوك سيء (السرقة)', 1, 5, 'مُبادرة توليفة-', '2023-04-08 21:29:15', '1', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-04-08 23:30:04', '2023-04-08 23:30:04', NULL),
(173, '', NULL, 'تصميم مقطع لركن مبادره توليفه في معرض تمكين وارتقاء التابع لوزارة التنمية الاجتماعية', 1, 5, 'مُبادرة توليفة-', '2023-04-08 21:30:09', '.5', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-04-08 23:31:11', '2023-04-08 23:31:11', NULL),
(174, '', NULL, 'التواصل مع الأعضاء لإتمام المهام. ساعة واحدة// \r\nكتابة التقرير النهائي. ساعتان', 1, 5, 'مُبادرة توليفة-', '2023-04-05 10:00:00', '3', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-04-08 23:43:37', '2023-04-08 23:43:37', NULL),
(175, '', NULL, 'التواصل مع الأعضاء لإتمام المهام. ساعة وحدة // \r\nكتابة التقرير النهائي. ساعة واحدة', 1, 5, 'مُبادرة توليفة-', '2023-04-06 21:44:12', '2', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-04-08 23:45:23', '2023-04-08 23:45:23', NULL),
(176, '', NULL, 'كتابة التقرير النهائي. نصف ساعة //\r\nفعالية جراند مول (معرض تمكين وارتقاء). 8:00 مساء - 10:30 مساء', 1, 5, 'مُبادرة توليفة-', '2023-04-07 21:45:47', '3', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-04-08 23:47:32', '2023-04-08 23:47:32', NULL),
(177, '', NULL, 'تواصل مع صحيفة الصحوة', 1, NULL, NULL, '2023-03-29 09:00:00', '1', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-04-09 00:30:05', '2023-04-09 00:30:05', NULL),
(178, '', NULL, 'تواصل مع جريدة عالم الثقافة', 1, NULL, NULL, '2023-03-30 09:00:00', '1', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-04-09 00:32:00', '2023-04-09 00:32:00', NULL),
(179, '', NULL, 'تصميم فيديو للمبادرة توليفة الاولى', 1, NULL, NULL, '2023-04-02 04:00:00', '1', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-04-09 00:33:08', '2023-04-09 00:33:08', NULL),
(180, '', NULL, 'تصميم فيديو للمبادرة توليفة الثانية', 1, NULL, NULL, '2023-04-05 07:00:00', '1', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-04-09 00:34:20', '2023-04-09 00:34:20', NULL),
(181, '', NULL, 'مبادرة توليفة الثانية', 1, 5, 'مُبادرة توليفة-', '2023-04-05 07:00:00', '5', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-04-09 00:37:21', '2023-04-09 00:37:21', NULL),
(182, '', NULL, 'تواصل مع شبكة تأمل الإعلامية', 1, NULL, NULL, '2023-04-06 08:00:00', '1', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-04-09 00:38:18', '2023-04-09 00:38:18', NULL),
(183, '', NULL, 'عمل فيديو ختامي لمبادرة توليفة', 1, 5, 'مُبادرة توليفة-', '2023-04-08 17:05:00', '3', NULL, 27, 27, NULL, 'Salim ALHATTALI', '2023-04-09 00:49:51', '2023-04-09 00:49:51', NULL),
(184, '', NULL, 'مشاركة في فعالية حصالتي', 1, 5, 'مُبادرة توليفة-', '2023-04-01 22:50:26', '2', NULL, 30, 30, NULL, 'Fatma AL lawati', '2023-04-09 00:50:57', '2023-04-09 00:50:57', NULL),
(185, '', NULL, 'تواصل مع الاذاعة والجرائد', 1, 5, 'مُبادرة توليفة-', '2023-04-05 22:58:33', '2', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-04-09 00:58:57', '2023-04-09 00:58:57', NULL),
(186, '', NULL, 'التواصل مع المشاهير في السلطنة', 1, 5, 'مُبادرة توليفة-', '2023-04-03 22:59:00', '1', NULL, 31, 31, NULL, 'Amira Alblushi', '2023-04-09 00:59:21', '2023-04-09 00:59:21', NULL),
(187, '', NULL, 'كتابة التقرير النهائي. 6 ساعات', 1, 5, 'مُبادرة توليفة-', '2023-04-08 23:27:38', '7', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-04-09 01:28:31', '2023-04-09 01:28:31', NULL),
(188, '', NULL, 'المشاركة في معرض تمكين', 1, 5, 'مُبادرة توليفة-', '2023-04-07 00:00:00', '3', NULL, 18, 9, NULL, 'Yusra AlHadifi', '2023-04-09 14:06:04', '2023-04-10 14:17:04', NULL),
(189, '', NULL, 'تصميم شعار', 1, 5, 'مُبادرة توليفة-', '2023-03-29 00:00:00', '2', NULL, 18, 9, NULL, 'Yusra AlHadifi', '2023-04-09 14:07:35', '2023-04-10 14:17:30', NULL),
(190, '', NULL, 'المشاركة مع فريق العامرات لتنظيم فعالية الخيمة الرمضانية', 1, 5, 'مُبادرة توليفة-', '2023-04-04 00:00:00', '3', NULL, 18, 9, 9, 'Yusra AlHadifi', '2023-04-09 14:16:18', '2023-04-10 14:17:46', '2023-04-10 14:17:46'),
(191, '', NULL, 'المشاركة مع فريق العامرات لتنظيم فعالية الخيمة الرمضانية', 1, 5, 'مُبادرة توليفة-', '2023-04-05 00:00:00', '3', NULL, 18, 9, 9, 'Yusra AlHadifi', '2023-04-09 14:17:14', '2023-04-10 14:17:55', '2023-04-10 14:17:55'),
(192, '', NULL, 'المشاركة مع فريق العامرات لتنظيم فعالية الخيمة الرمضانية', 1, 5, 'مُبادرة توليفة-', '2023-04-06 00:00:00', '3', NULL, 18, 9, 9, 'Yusra AlHadifi', '2023-04-09 14:17:38', '2023-04-10 14:18:03', '2023-04-10 14:18:03'),
(193, '', NULL, 'اجتماع مع الاعضاء للمناقشة الخطه الجاية', 1, NULL, NULL, '2023-04-15 09:30:00', '1.5', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-04-17 16:35:34', '2023-04-17 16:35:34', NULL),
(194, '', NULL, 'تحدث مع الاعضاء عن المهام', 1, NULL, NULL, '2023-04-15 11:00:00', '1', NULL, 28, 28, NULL, 'Azzan albattashi', '2023-04-17 16:36:27', '2023-04-17 16:36:27', NULL),
(195, '', NULL, 'اجتماع اونلاين لمناقشة مبادرة لزيارة مرضى السرطان وكبار السن', 1, NULL, NULL, '2023-04-29 20:50:05', '1', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-04-29 22:50:57', '2023-04-29 22:50:57', NULL),
(196, '', NULL, 'اجتماع مناقشة المشروع الجديد لدار المسنين', 1, NULL, NULL, '2023-04-15 20:54:09', '1', NULL, 22, 22, NULL, 'Hanaa Almaawali', '2023-04-29 22:55:08', '2023-04-29 22:55:08', NULL),
(197, '', NULL, 'أول اجتماع لمشروع  دار المسنين ومرضى السرطان', 1, NULL, NULL, '2023-04-29 20:55:15', '1', NULL, 22, 22, NULL, 'Hanaa Almaawali', '2023-04-29 22:56:16', '2023-04-29 22:56:16', NULL),
(198, '', NULL, 'عمل عرض للتقييم النهائي لمشروع المتطوعون في رمضان', 1, 5, 'مُبادرة توليفة-', '2023-04-09 22:22:37', '0.5', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-04-30 00:23:48', '2023-04-30 00:23:48', NULL),
(199, '', NULL, 'اجتماع مبادرة زيارة المرضى ودار المسنين', 1, NULL, NULL, '2023-04-29 22:23:57', '1', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-04-30 00:25:04', '2023-04-30 00:25:04', NULL),
(200, '', NULL, 'المشاركة في معرض جيديكس (المعرض العالمي للتعليم العالي)', 1, NULL, NULL, '2023-04-30 22:25:18', '5', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-04-30 00:26:07', '2023-04-30 00:26:07', NULL),
(201, '', NULL, 'التنسيق مع المتحف الوطني لعمل زيارة لكبار السن من جمعية المرأة العمانية بمسقط. نصف ساعة', 1, NULL, NULL, '2023-05-08 13:16:39', '0.5', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-05-31 15:17:28', '2023-05-31 15:17:28', NULL),
(202, '', NULL, 'التنسيق مع المتحف الوطني لعمل زيارة لكبار السن من جمعية المرأة العمانية بمسقط. نصف ساعة', 1, NULL, NULL, '2023-05-09 13:18:06', '0.5', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-05-31 15:18:58', '2023-05-31 15:18:58', NULL),
(203, '', NULL, 'تصميم فيديو وشعار  لمبادرة ألفة', 1, NULL, NULL, '2023-05-17 13:25:25', '10', NULL, 27, 27, NULL, 'Salim ALHATTALI', '2023-05-31 15:26:08', '2023-05-31 15:26:08', NULL),
(204, '', NULL, 'إجتماع مناقشة مبادرة زيارة دار المسنين. نصف ساعة.', 1, NULL, NULL, '2023-05-18 13:25:52', '0.5', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-05-31 15:26:13', '2023-05-31 15:26:13', NULL),
(205, '', NULL, 'المرحلة الثالثة للجواز التطوعي الداخلي. 9:00ص - 4:00م', 1, NULL, NULL, '2023-05-20 13:26:48', '7', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-05-31 15:28:32', '2023-05-31 15:28:32', NULL),
(206, '', NULL, 'زيارة دار الرعاية الاجتماعية بالرستاق. 9:00ص - 11:00ص', 1, NULL, NULL, '2023-05-21 13:28:43', '2', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-05-31 15:28:52', '2023-05-31 15:28:52', NULL),
(207, '', NULL, 'ثاني اجتماع لمبادرة ألفة', 1, NULL, NULL, '2023-05-07 13:39:47', '1', NULL, 22, 22, NULL, 'Hanaa Almaawali', '2023-05-31 15:41:36', '2023-05-31 15:41:36', NULL),
(208, '', NULL, 'زيارة دار المسنين ) عمل توصيف لمبادرة ألفة )', 1, NULL, NULL, '2023-05-10 13:42:15', '1', NULL, 22, 22, NULL, 'Hanaa Almaawali', '2023-05-31 15:44:00', '2023-05-31 15:44:00', NULL),
(209, '', NULL, 'الاجتماع الاول اونلاين لمناقشة مبادره ألفه', 1, NULL, NULL, '2023-05-07 15:50:02', '.5', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-05-31 17:50:50', '2023-05-31 17:50:50', NULL),
(210, '', NULL, 'الاجتماع الثاني اونلاين لمبادره ألفه', 1, NULL, NULL, '2023-05-11 15:51:06', '.5', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-05-31 17:52:09', '2023-05-31 17:52:09', NULL),
(211, '', NULL, 'زيارة المتحف الوطني وجمعيه المرأة العمانيه بسداب مع المسنين في مبادرة ألفة', 1, NULL, NULL, '2023-05-16 15:52:15', '4', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-05-31 17:54:14', '2023-05-31 17:54:14', NULL),
(212, '', NULL, 'الاجتماع الثالث لمبادرة ألفة اونلاين', 1, NULL, NULL, '2023-05-18 15:54:44', '.5', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-05-31 17:55:54', '2023-05-31 17:55:54', NULL),
(213, '', NULL, 'اجتماع حضوري في مركز الشباب لمناقشة مبادره جديده', 1, NULL, NULL, '2023-06-05 14:55:07', '2', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-06-06 16:55:50', '2023-06-06 16:55:50', NULL),
(214, '', NULL, 'التواصل مع دار الحنان وكتابة رسالة لهم', 1, NULL, NULL, '2023-06-12 14:27:40', '1', NULL, 22, 22, NULL, 'Hanaa Almaawali', '2023-06-14 16:28:33', '2023-06-14 16:28:33', NULL),
(215, '', NULL, 'المساعدة في تنظيم الجلسه الحوارية في الجمعية العمانيه للكتاب والادباء', 1, NULL, NULL, '2023-06-19 10:54:34', '3', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-06-20 12:55:49', '2023-06-20 12:55:49', NULL),
(216, '', NULL, 'اجتماع مبادرة كسوة العيد والحجاج. \r\nنصف ساعة', 1, NULL, NULL, '2023-06-05 18:55:00', '0.5', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-07-03 20:55:34', '2023-07-03 20:55:34', NULL),
(217, '', NULL, 'التواصل مع الفرق الطبية لعمل مشروع القرية الطبية', 1, NULL, NULL, '2023-08-14 09:27:50', '0.5', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-08-31 11:28:35', '2023-08-31 11:28:35', NULL),
(218, '', NULL, 'الرتبة الرابعة من الجواز التطوعي', 1, NULL, NULL, '2023-08-19 09:29:49', '7', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-08-31 11:30:31', '2023-08-31 11:30:31', NULL),
(219, '', NULL, 'إجتماع مجموعة إنداء تعاون.', 1, NULL, NULL, '2023-08-31 09:30:57', '1', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-08-31 11:31:16', '2023-08-31 11:31:16', NULL),
(220, '', NULL, 'اجتماع حضوري في مركز الشباب لمناقشة مبادره جديده', 1, NULL, NULL, '2023-07-16 10:27:37', '1', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-08-31 12:28:37', '2023-08-31 12:28:37', NULL),
(221, '', NULL, 'اجتماع اونلاين لمناقشة المعرض', 1, NULL, NULL, '2023-07-22 10:28:51', '.5', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-08-31 12:29:35', '2023-08-31 12:29:35', NULL),
(222, '', NULL, 'اجتماع حضوري في مركز الشباب لمناقشة اخر التحديثات', 1, NULL, NULL, '2023-08-30 10:29:39', '3', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-08-31 12:30:53', '2023-08-31 12:30:53', NULL),
(223, '', NULL, 'لقاء تعريفي حول الجمعية العمانيه لمرض السكري ودورالمتطوعين في الحملات التوعوية', 1, NULL, NULL, '2023-09-25 16:30:39', '1.5', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-10-01 18:32:29', '2023-10-01 18:32:29', NULL),
(224, '', NULL, 'لقاء تعريفي حول الجمعية العمانيه لمرض السكري ودورالمتطوعين في الحملات التوعوية', 1, NULL, NULL, '2023-09-25 16:30:39', '1.5', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-10-01 18:32:29', '2023-10-01 18:32:29', NULL),
(225, '', NULL, 'زيارة مرضى السرطان في مستشفى السلطاني', 1, NULL, NULL, '2023-10-16 19:38:17', '2', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-10-29 21:39:04', '2023-10-29 21:39:04', NULL),
(226, '', NULL, 'اجتماع حضوري في مركز الشباب مع مجموعة إنداء لمناقشة معرض الابتكارات', 1, NULL, NULL, '2023-10-26 19:39:43', '2', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-10-29 21:40:40', '2023-10-29 21:40:40', NULL),
(227, '', NULL, 'اجتماع في كلية الشرق الاوسط لمناقشة ملتقى المبتكرين', 1, NULL, NULL, '2023-10-31 13:06:32', '1', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-10-31 15:07:05', '2023-10-31 15:07:05', NULL),
(228, '', NULL, 'الرخصة التطوعية مع لجنة التدريب', 1, NULL, NULL, '2023-11-14 08:23:39', '7', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-11-01 10:25:14', '2023-11-01 10:25:14', NULL),
(229, '', NULL, 'إجتماع مشروع ملتقى الابتكار', 1, NULL, NULL, '2023-10-25 08:25:20', '1', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-11-01 10:26:37', '2023-11-01 10:26:37', NULL),
(230, '', NULL, 'إجتماع مشروع ملتقى الابتكار', 1, NULL, NULL, '2023-10-31 08:26:51', '0.5', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-11-01 10:27:20', '2023-11-01 10:27:20', NULL),
(231, '', NULL, 'اجتماع مع استاذ خالد الحارثي في كلية الشرق الاوسط لمناقشة ملتقى الابتكار', 1, NULL, NULL, '2023-10-31 17:54:55', '1', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-11-02 19:56:30', '2023-11-02 19:56:30', NULL),
(232, '', NULL, 'اجتماع اونلاين مع الفريق المشارك في ملتقى الابتكار', 1, NULL, NULL, '2023-10-31 17:56:40', '0.5', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-11-02 19:57:22', '2023-11-02 19:57:22', NULL),
(233, '', NULL, 'ملتقى الابتكار', 1, NULL, NULL, '2023-11-15 16:00:00', '10', NULL, 27, 27, NULL, 'Salim ALHATTALI', '2023-11-27 21:30:47', '2023-11-27 21:30:47', NULL),
(234, '', NULL, 'الرتبة الخامسة للجواز التطوعي', 1, NULL, NULL, '2023-11-11 19:33:59', '6.5', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-11-27 21:34:47', '2023-11-27 21:34:47', NULL),
(235, '', NULL, 'التواصل مع الشركات لملتقى الابتكار', 1, NULL, NULL, '2023-11-13 19:34:57', '0.5', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-11-27 21:35:24', '2023-11-27 21:35:24', NULL),
(236, '', NULL, 'ملتقى الابتكار في كلية الشرق الأوسط', 1, NULL, NULL, '2023-11-14 19:35:31', '6', NULL, 23, 23, NULL, 'أسامة المفرجي', '2023-11-27 21:36:09', '2023-11-27 21:36:09', NULL),
(237, '', NULL, 'ملتقى الابتكار في كلية الشرق الاوسط', 1, NULL, NULL, '2023-11-14 20:23:09', '5', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-11-27 22:23:47', '2023-11-27 22:24:05', NULL),
(238, '', NULL, 'تصميم بوسترات لملتقى الابتكار', 1, NULL, NULL, '2023-11-07 20:26:31', '3', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-11-27 22:26:58', '2023-11-27 22:26:58', NULL),
(239, '', NULL, 'مقابلة في اذاعه الشباب للحديث عن ملتقى الابتكار', 1, NULL, NULL, '2023-11-12 20:28:47', '0.25', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-11-27 22:29:36', '2023-11-27 22:29:36', NULL),
(240, '', NULL, 'تجهيز محتوى لمقابلة اذاعه الشباب للحديث عن ملتقى الابتكار', 1, NULL, NULL, '2023-11-12 20:29:55', '1', NULL, 21, 21, NULL, 'Atika Al-Shabibi', '2023-11-27 22:30:36', '2023-11-27 22:30:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `yearplans`
--

CREATE TABLE `yearplans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `from_date` timestamp NULL DEFAULT NULL,
  `to_date` timestamp NULL DEFAULT NULL,
  `attach_file` varchar(191) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `yearplans`
--

INSERT INTO `yearplans` (`id`, `name`, `slug`, `description`, `status`, `from_date`, `to_date`, `attach_file`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'plan 1', 'plan-1', 'plan 1  2023', 1, '2023-02-01 17:34:31', '2023-02-02 17:34:34', 'https://indaaoman.com//public/media/53/VH7kCGZQ955VZo2eRMi6sEr4s7wOXnpVbPeypJHC.jpg', 1, 1, NULL, '2023-02-19 19:34:57', '2023-03-18 02:03:51', NULL),
(2, 'march plan', 'march-plan', 'march plan', 1, '2023-02-21 06:42:22', '2023-02-26 06:42:25', 'https://indaaoman.com//public/media/11/fagiRi51A5WSbs0I8jsxJQmdVekXFmYvzr4VCoci.jpg', 1, 6, NULL, '2023-02-21 08:42:39', '2023-02-22 17:02:36', NULL),
(3, 'tt', 'tt', 'fsdfs', 1, '2023-02-24 14:34:18', '2023-02-22 21:34:34', 'https://indaaoman.com//public/media/48/bDTp4MO66ciB7vlyyvcxxZ0kpeqAlPdG9t83AGAN.png', 6, 1, NULL, '2023-02-22 16:34:33', '2023-02-23 22:11:11', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `associations`
--
ALTER TABLE `associations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userprofiles`
--
ALTER TABLE `userprofiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_providers`
--
ALTER TABLE `user_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_providers_user_id_foreign` (`user_id`);

--
-- Indexes for table `volunteerings`
--
ALTER TABLE `volunteerings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yearplans`
--
ALTER TABLE `yearplans`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `associations`
--
ALTER TABLE `associations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userprofiles`
--
ALTER TABLE `userprofiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `user_providers`
--
ALTER TABLE `user_providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `volunteerings`
--
ALTER TABLE `volunteerings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `yearplans`
--
ALTER TABLE `yearplans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_providers`
--
ALTER TABLE `user_providers`
  ADD CONSTRAINT `user_providers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
