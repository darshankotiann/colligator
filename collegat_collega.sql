-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 07, 2022 at 07:26 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collegat_collega`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int(11) NOT NULL,
  `slider_title_en` varchar(255) DEFAULT NULL,
  `slider_description_en` text DEFAULT NULL,
  `heading_en` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `desc_image` varchar(255) DEFAULT NULL,
  `slider_image` varchar(255) DEFAULT NULL,
  `slider_title_ar` varchar(255) DEFAULT NULL,
  `slider_description_ar` text DEFAULT NULL,
  `heading_ar` varchar(255) DEFAULT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `slider_title_en`, `slider_description_en`, `heading_en`, `title_en`, `description_en`, `desc_image`, `slider_image`, `slider_title_ar`, `slider_description_ar`, `heading_ar`, `title_ar`, `description_ar`, `created_at`, `updated_at`) VALUES
(1, 'slider title', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'heading englishsdsd', '<h2>Where does it come from?</h2>', '<p>&nbsp;</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '1627727615.png', '1651648887slider.jpg', 'slider title arabic', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />علي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 'headfing arabic', '<h2>Where does it come from?</h2>', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />علي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', '2021-07-12 11:15:42', '2022-05-04 12:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `abuse_words`
--

CREATE TABLE `abuse_words` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `word` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abuse_words`
--

INSERT INTO `abuse_words` (`id`, `word`, `created_at`, `updated_at`) VALUES
(1, 'testing by me', '2021-09-24 09:32:19', '2021-09-24 09:42:42'),
(13, 'Dog', '2021-09-24 11:04:17', '2021-09-24 11:04:17'),
(14, 'Bitch', '2021-09-24 11:04:17', '2021-10-18 10:56:22');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_super` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_delete` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `is_super`, `remember_token`, `created_at`, `updated_at`, `is_delete`, `role`, `image`, `status`, `nickname`) VALUES
(1, 'Super Admin', 'admin@getnada.com', '$2y$10$rBMjzxJvcxrmM/KvVgn8X.X9J8MOBnkbpBftpasC3rlnaadmQ4D1m', 0, 'es6ugAkp42qNqqQrY7DZfxHHESa9xn29JD0cxMV53FAuv15WiyymvUe1HUt8', '2021-06-02 23:59:26', '2021-06-21 01:43:52', '0', '1', '1623657020.jpg', 0, ''),
(2, 'deepanshhu', 'subadmin1@getnada.com', '$2y$10$pZcSwZY9URngaXkuvt5XsOUcTjwqSSpCDEjz515qOCgBLSd19lVfG', 0, NULL, '2021-06-07 02:29:36', '2021-06-11 07:45:31', '0', '2', '', 1, 'YKai37$%MxZ%'),
(3, 'testing1', 'testing1@getnada.com', '$2y$10$vDrZCENvhSiDZ4Ps2zCSkuSGytL9oJ58RHBkcj.TKf61NvZzVhkxa', 0, 'A523JD6vuPyqhTesqRAln3VdnB6Yp908H56dOIwqp1H1PZIRJ5Hx2V39XZ1m', '2021-06-10 07:45:43', '2021-07-16 05:46:45', '0', '2', '1623386132.jpg', 0, 'R$Fwl'),
(5, 'testing1', 'testing2@getnada.com', '$2y$10$9oM5mDkH0NZtFnAtWUI0L.UHWjh7R8Ig/A.gNT0N6PigSHuimpWj6', 0, '4oF4CeXLR9a4vvqBvIrhgQQjJ5e2cmLFvsyS5rnqXfQ259s0RNTT7FpjDteQ', '2021-06-10 07:49:22', '2021-07-28 11:57:41', '0', '2', '1623415237.jpg', 0, 'XPcc11$%DG7C'),
(6, 'deetest', 'deetest@getnada.com', '$2y$10$595xdudzeWlE0uhXe9a13OT1ZagjJZmWokNiQKhMbTMAamEU4a9Ce', 0, NULL, '2021-06-11 08:27:47', '2021-06-11 08:30:13', '0', '2', '1623420013.png', 0, 'JFkl63#!EMGZ'),
(7, 'Neha Sub', 'nehasub@mailinator.com', '$2y$10$/T9i1OAqSwskaLYiH6UVOu1qImLLE14QF5BVIHxzrwjAx5CDqwOR2', 0, 'oNZPlxDdaZOhwVyQi1poxSpMGdNnw1nINgtRhRaKickeM4qs4ar4Hun3GC42', '2021-06-14 03:56:55', '2021-06-14 03:56:55', '0', '2', 'user.jpg', 0, 'OEgd60##q$W1'),
(8, 'RahulSub', 'RahulSub@mailinator.com', '$2y$10$5.0T/9L/ttxXcEWPK0IBYeNW0BQBDuP1ZlyDpN9Q3HNHbI0.2QqRG', 0, NULL, '2021-06-14 04:02:28', '2021-06-14 04:02:28', '0', '2', 'user.jpg', 0, 'CDie73#$oLV5'),
(9, 'test', 'ayush@getnada.com', '$2y$10$Yl/unC.G2h6DmVC8xNZs2.iZqC27taKInYfaDpp.zcCFLbUwgtYX.', 0, NULL, '2021-06-18 07:18:10', '2021-07-28 11:57:30', '1', '2', 'user.jpg', 0, 'YWfv71!%FhD2'),
(10, 'Virender', 'virender@getnada.com', '$2y$10$7OiHpUlANhDE12WDcoWpwOM3tT2rLaiwPhtXGxO5FdoVyVyacE4Ny', 0, '3wZIGAzHMhmql0njHm0jdLJfITM3aBVS1I46uidNUitjeSH5yiTR8hjiFaLX', '2021-06-18 07:28:23', '2022-05-11 13:09:25', '0', '2', 'user.jpg', 0, 'XMdm50!%qftI'),
(11, 'Adel', 'ossc@me.com', '$2y$10$1/ijDURjnkfPo33GYkJLjOvmh280DFPiq8Yw7sr0g1lat2LtrQTdq', 0, NULL, '2021-09-29 22:49:32', '2021-09-29 22:49:32', '0', '2', 'user.jpg', 0, 'haweq8'),
(12, 'Adel11', 'ghhhh@hghhhg.com', '$2y$10$.F3ilyI.W8YlbhXXTP47bOB3Ne3J5nlobn0jWrgkBULFaglAKYK8K', 0, NULL, '2021-10-15 00:24:47', '2021-10-15 00:24:57', '1', '2', 'user.jpg', 0, 'Admin2'),
(13, 'Ali', 'assass@ggg.com', '$2y$10$kXdOpIlITzmjpewbzuXPsODtzqPvSZijTajSp5M1MkP8G/2iYzhRu', 0, NULL, '2022-05-30 14:11:40', '2022-05-30 14:11:40', '0', '2', 'user.jpg', 0, 'oVyMBPHH8NYqAZ4m');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL COMMENT '1:country,2:university,3:professor,4:school,5:teacher',
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `type`, `country_code`, `image`, `text_en`, `text_ar`, `link`, `is_active`, `status`, `created_at`, `updated_at`) VALUES
(14, 2, 'KW', '1653629637.png', 'Welcome', 'Welcome', '', 1, 1, '2022-05-27 05:33:57', '2022-05-27 05:33:57'),
(15, 1, 'KW', '1653637478.jpg', 'test by dev', 'test by dev', '', 1, 1, '2022-05-27 07:44:38', '2022-05-27 07:44:38'),
(16, 4, 'KW', '1653670641.png', 'Koc', 'Koc', 'https://www.bathandbodyworks.com.kw/en/shop-body-care/fragrance/', 1, 1, '2022-05-27 16:57:21', '2022-05-27 16:57:21'),
(17, 3, 'BH', '1653920634.png', 'Ttt', 'Ttt', '', 1, 1, '2022-05-30 14:23:54', '2022-05-30 14:23:54');

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL COMMENT '1:private, 2:public',
  `shared_users` longtext DEFAULT NULL,
  `joined_users` longtext DEFAULT NULL,
  `all_users` longtext DEFAULT NULL,
  `favourites` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `old_admin` int(11) DEFAULT NULL,
  `new_admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `name`, `profile`, `type`, `shared_users`, `joined_users`, `all_users`, `favourites`, `created_by`, `created_at`, `updated_at`, `is_deleted`, `old_admin`, `new_admin`) VALUES
(1, 'Channel-1', '1651139260channel.jpg', 2, NULL, NULL, '15,2,1', '', 15, '2022-04-28 09:47:40', '2022-04-28 10:16:03', 0, 15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `channel_joined_users`
--

CREATE TABLE `channel_joined_users` (
  `id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages`
--

CREATE TABLE `cms_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_delete` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_pages`
--

INSERT INTO `cms_pages` (`id`, `title_en`, `title_ar`, `slug`, `content_en`, `content_ar`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Terms and conditions', 'الأحكام والشروط', 'term-conditions', '<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />علي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', '1', '0', '2021-01-07 06:28:37', '2021-10-29 06:46:34'),
(2, 'Privacy policy', 'سياسة الخصوصية', 'privacy-policy', '<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />علي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', '1', '0', '2021-01-07 06:30:03', '2021-10-29 06:46:20'),
(3, 'Help Centre dee', 'مركز المساعدة1', 'help-centre', 'hey this is Help Centre content 123', 'مرحبًا ، هذا محتوى مركز المساعدة 123', '1', '1', '2021-01-07 06:32:06', '2021-10-28 12:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `university_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`id`, `name`, `university_code`, `college_code`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'college1', 'IN01', 'IN0101', 1, 1, NULL, '2021-06-22 08:11:59'),
(2, 'dfdfdfd', 'MA01', 'MA0101', 0, 0, '2021-06-22 07:43:33', '2021-06-23 00:13:02'),
(3, 'Jaipur College', 'IN02', 'IN0201', 1, 0, '2021-07-14 02:14:22', '2021-07-14 02:14:22'),
(4, 'asdasdasdasdasd', 'AF01', 'AF0101', 0, 0, '2021-07-14 02:14:44', '2021-07-14 02:15:08'),
(5, 'مرحبا المستخدم', 'IN03', 'IN0301', 1, 0, '2021-07-16 04:47:30', '2021-07-16 04:47:30'),
(6, 'deep', 'IN06', 'IN0601', 1, 0, '2021-07-16 08:47:52', '2021-07-16 08:47:52'),
(7, 'College of Arts', 'AF01', 'AF0102', 1, 0, '2021-07-19 04:15:19', '2021-07-19 04:15:19'),
(8, 'Business Studies', 'AF01', 'AF0103', 1, 0, '2021-07-19 04:15:19', '2021-07-19 04:15:19'),
(9, 'Tells', 'IN10', 'IN1001', 1, 0, '2021-07-19 05:02:38', '2021-07-19 05:02:38'),
(10, 'Icelands College of Arts & Design', 'IS01', 'IS0101', 1, 0, '2021-07-19 05:49:41', '2021-07-19 05:49:41'),
(11, 'Okla College', 'US01', 'US0101', 1, 0, '2021-07-19 05:52:36', '2021-07-19 05:56:55'),
(12, 'F1 College', 'AU01', 'AU0101', 1, 0, '2021-07-28 01:28:34', '2021-07-28 01:28:34'),
(13, 'Note10 College', 'ES01', 'ES0101', 1, 0, '2021-07-28 01:29:07', '2021-07-28 01:29:07'),
(14, 'Medical college', 'KW01', 'KW0101', 1, 0, '2021-07-31 13:44:32', '2021-07-31 13:44:32'),
(15, 'test my college', 'IN09', 'IN0901', 1, 0, '2021-08-02 05:04:36', '2021-08-16 01:37:57'),
(16, 'مرحبا المستخدم', 'IN01', 'IN0102', 1, 0, '2021-08-02 05:54:43', '2021-08-02 05:54:43'),
(17, 'deep', 'IN04', 'IN0401', 1, 0, '2021-08-05 10:39:00', '2021-08-05 10:39:00'),
(18, 'مرحبا المستخدم', 'IS01', 'IS0102', 1, 1, '2021-08-11 06:14:12', '2021-09-05 19:08:16'),
(19, 'مرحبا المستخدم ', 'AF01', 'AF0104', 1, 1, '2021-08-11 06:15:50', '2021-09-05 19:08:16'),
(20, 'مرحبا المستخدم ', 'IN10 ', 'IN10 02', 1, 1, '2021-08-11 06:15:50', '2021-09-05 19:08:16'),
(21, 'Engineering college', 'KW01', 'KW0102', 1, 0, '2021-08-12 12:27:46', '2021-08-12 12:27:46'),
(22, 'Art', 'KW02', 'KW0201', 1, 0, '2021-08-18 13:54:04', '2021-08-18 13:54:04'),
(23, 'كليات عادل خالد عبدالجليل حامد سلطان عبدالكريم الهندال', 'SA01', 'SA0101', 1, 0, '2021-09-01 17:43:22', '2021-09-01 17:43:22'),
(24, 'كلية التجارب', 'KW03', 'KW0301', 1, 0, '2022-05-21 19:57:35', '2022-05-21 19:57:35');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `slider_title_en` varchar(255) DEFAULT NULL,
  `slider_title_ar` varchar(255) DEFAULT NULL,
  `slider_description_en` text DEFAULT NULL,
  `slider_description_ar` text DEFAULT NULL,
  `slider_image` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `slider_title_en`, `slider_title_ar`, `slider_description_en`, `slider_description_ar`, `slider_image`, `created_at`, `updated_at`) VALUES
(1, 'slider title for english', 'slider title for arabic', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p>لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار &nbsp;النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة لظروف ما قد تكمن السعاده فيما نتحمله من كد وأسي.</p>\r\n<p>و سأعرض مثال حي لهذا، من منا لم يتحمل جهد بدني شاق إلا من أجل الحصول على ميزة أو فائدة؟ ولكن من لديه الحق أن ينتقد شخص ما أراد أن يشعر بالسعادة التي لا تشوبها عواقب أليمة أو آخر أراد أن يتجنب الألم الذي ربما تنجم عنه بعض المتعة ؟&nbsp;<br />علي الجانب الآخر نشجب ونستنكر هؤلاء الرجال المفتونون بنشوة اللحظة الهائمون في رغباتهم فلا يدركون ما يعقبها من الألم والأسي المحتم، واللوم كذلك يشمل هؤلاء الذين أخفقوا في واجباتهم نتيجة لضعف إرادتهم فيتساوي مع هؤلاء الذين يتجنبون وينأون عن تحمل الكدح والألم .<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', '1652855346.png', '2021-07-12 12:59:46', '2022-05-18 11:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_group` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `name`, `is_group`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, NULL, '11,22', '2021-08-13 10:25:23', '2021-08-13 10:25:23'),
(2, NULL, 0, NULL, '15,22', '2021-08-16 07:13:48', '2021-08-16 07:13:48'),
(3, NULL, 0, NULL, '11,44', '2021-08-28 09:21:36', '2021-08-28 09:21:36'),
(4, NULL, 0, NULL, '39,47', '2021-08-28 18:50:54', '2021-08-28 18:50:54'),
(5, NULL, 0, NULL, '39,47', '2021-08-28 18:50:55', '2021-08-28 18:50:55'),
(6, NULL, 0, NULL, '39,50', '2021-08-29 09:40:04', '2021-08-29 09:40:04'),
(7, NULL, 0, NULL, '57,41', '2021-08-30 04:33:59', '2021-08-30 04:33:59'),
(8, NULL, 0, NULL, '11,21', '2021-08-31 13:51:46', '2021-08-31 13:51:46'),
(9, NULL, 0, NULL, '11,58', '2021-09-01 05:16:21', '2021-09-01 05:16:21'),
(10, NULL, 0, NULL, '38,63', '2021-09-01 12:54:05', '2021-09-01 12:54:05'),
(11, NULL, 0, NULL, '50,63', '2021-09-01 13:03:01', '2021-09-01 13:03:01'),
(12, NULL, 0, NULL, '21,22', '2021-09-02 13:34:24', '2021-09-02 13:34:24'),
(13, NULL, 0, NULL, '50,67', '2021-09-04 16:21:53', '2021-09-04 16:21:53'),
(14, NULL, 0, NULL, '53,38', '2021-09-04 16:29:32', '2021-09-04 16:29:32'),
(15, NULL, 0, NULL, '69,70', '2021-09-07 06:36:29', '2021-09-07 06:36:29'),
(16, NULL, 0, NULL, '70,22', '2021-09-10 11:10:17', '2021-09-10 11:10:17'),
(17, NULL, 0, NULL, '58,3', '2021-09-23 10:41:18', '2021-09-23 10:41:18'),
(18, NULL, 0, NULL, '89,79', '2021-11-15 10:57:35', '2021-11-15 10:57:35'),
(21, NULL, 0, NULL, '22,79', '2021-11-25 07:04:50', '2021-11-25 07:04:50'),
(22, NULL, 0, NULL, '22,89', '2021-11-26 06:56:35', '2021-11-26 06:56:35'),
(23, NULL, 0, NULL, '99,79', '2021-11-26 11:07:43', '2021-11-26 11:07:43'),
(24, NULL, 0, NULL, '99,22', '2021-11-26 11:28:21', '2021-11-26 11:28:21'),
(25, NULL, 0, NULL, '99,22', '2021-11-26 11:29:00', '2021-11-26 11:29:00'),
(26, NULL, 0, NULL, '58,22', '2021-11-26 11:38:22', '2021-11-26 11:38:22'),
(27, NULL, 0, NULL, '98,22', '2021-11-26 12:00:15', '2021-11-26 12:00:15'),
(28, NULL, 0, NULL, '88,22', '2021-11-26 12:14:02', '2021-11-26 12:14:02'),
(29, NULL, 0, NULL, '58,79', '2021-11-26 12:15:51', '2021-11-26 12:15:51'),
(30, NULL, 0, NULL, '98,79', '2021-11-26 12:49:07', '2021-11-26 12:49:07'),
(31, NULL, 0, NULL, '79,100', '2021-12-01 09:46:47', '2021-12-01 09:46:47'),
(32, NULL, 0, NULL, '38,100', '2021-12-01 09:50:18', '2021-12-01 09:50:18'),
(33, NULL, 0, NULL, '2,1', '2022-05-04 12:40:26', '2022-05-04 12:40:26'),
(34, NULL, 0, NULL, '68,73', '2022-05-11 04:40:57', '2022-05-11 04:40:57'),
(35, NULL, 0, NULL, '1,117', '2022-05-11 09:06:09', '2022-05-11 09:06:09'),
(36, NULL, 0, NULL, '117,107', '2022-05-13 09:38:42', '2022-05-13 09:38:42'),
(37, NULL, 0, NULL, '117,107', '2022-05-13 09:39:14', '2022-05-13 09:39:14'),
(38, NULL, 0, NULL, '53,119', '2022-05-13 16:44:53', '2022-05-13 16:44:53'),
(39, NULL, 0, NULL, '117,121', '2022-05-16 08:54:20', '2022-05-16 08:54:20'),
(40, NULL, 0, NULL, '117,121', '2022-05-16 08:54:41', '2022-05-16 08:54:41'),
(41, NULL, 0, NULL, '117,121', '2022-05-16 08:54:45', '2022-05-16 08:54:45'),
(42, NULL, 0, NULL, '117,122', '2022-05-16 09:06:19', '2022-05-16 09:06:19'),
(43, NULL, 0, NULL, '117,111', '2022-05-17 09:17:57', '2022-05-17 09:17:57'),
(44, NULL, 0, NULL, '38,125', '2022-05-18 18:49:47', '2022-05-18 18:49:47'),
(45, NULL, 0, NULL, '127,128', '2022-05-19 06:37:46', '2022-05-19 06:37:46'),
(46, NULL, 0, NULL, '126,41', '2022-05-30 16:38:43', '2022-05-30 16:38:43'),
(47, NULL, 0, NULL, '72,130', '2022-06-21 14:34:56', '2022-06-21 14:34:56'),
(48, NULL, 0, NULL, '72,undefined', '2022-06-24 06:02:24', '2022-06-24 06:02:24'),
(49, NULL, 0, NULL, '72,undefined', '2022-06-24 06:03:04', '2022-06-24 06:03:04'),
(50, NULL, 0, NULL, '1,133', '2022-06-30 08:06:41', '2022-06-30 08:06:41'),
(51, NULL, 0, NULL, '72,133', '2022-06-30 08:08:14', '2022-06-30 08:08:14'),
(52, NULL, 0, NULL, '133,134', '2022-06-30 13:08:05', '2022-06-30 13:08:05'),
(53, NULL, 0, NULL, '133,136', '2022-06-30 13:59:15', '2022-06-30 13:59:15'),
(54, NULL, 0, NULL, '125,139', '2022-07-01 11:36:35', '2022-07-01 11:36:35'),
(55, NULL, 0, NULL, '139,140', '2022-07-01 18:25:24', '2022-07-01 18:25:24'),
(56, NULL, 0, NULL, '140,142', '2022-07-05 13:02:00', '2022-07-05 13:02:00'),
(57, NULL, 0, NULL, '21,142', '2022-07-05 13:19:53', '2022-07-05 13:19:53'),
(58, NULL, 0, NULL, '142,117', '2022-07-06 06:54:14', '2022-07-06 06:54:14'),
(59, NULL, 0, NULL, '143,117', '2022-07-07 06:21:56', '2022-07-07 06:21:56'),
(60, NULL, 0, NULL, '143,145', '2022-07-07 07:46:39', '2022-07-07 07:46:39'),
(61, NULL, 0, NULL, '142,145', '2022-07-07 07:46:54', '2022-07-07 07:46:54'),
(62, NULL, 0, NULL, '22,145', '2022-07-07 09:26:12', '2022-07-07 09:26:12'),
(63, NULL, 0, NULL, '92,143', '2022-07-07 09:27:08', '2022-07-07 09:27:08'),
(64, NULL, 0, NULL, '107,147', '2022-07-07 11:30:04', '2022-07-07 11:30:04'),
(65, NULL, 0, NULL, '107,149', '2022-07-07 14:42:36', '2022-07-07 14:42:36'),
(66, NULL, 0, NULL, '129,150', '2022-07-08 19:40:59', '2022-07-08 19:40:59'),
(67, NULL, 0, NULL, '151,1', '2022-07-12 05:45:53', '2022-07-12 05:45:53'),
(68, NULL, 0, NULL, '107,151', '2022-07-12 05:57:23', '2022-07-12 05:57:23'),
(69, NULL, 0, NULL, '1,154', '2022-07-13 14:13:37', '2022-07-13 14:13:37'),
(70, NULL, 0, NULL, '125,154', '2022-07-13 15:36:26', '2022-07-13 15:36:26'),
(71, NULL, 0, NULL, '155,158', '2022-07-15 12:18:10', '2022-07-15 12:18:10'),
(72, NULL, 0, NULL, '160,117', '2022-07-21 06:57:46', '2022-07-21 06:57:46'),
(73, NULL, 0, NULL, '155,161', '2022-07-21 21:03:57', '2022-07-21 21:03:57'),
(74, NULL, 0, NULL, '117,161', '2022-07-21 21:04:26', '2022-07-21 21:04:26'),
(75, NULL, 0, NULL, '165,168', '2022-07-26 10:52:40', '2022-07-26 10:52:40'),
(76, NULL, 0, NULL, '168,130', '2022-08-08 13:18:15', '2022-08-08 13:18:15'),
(77, NULL, 0, NULL, '168,130', '2022-08-08 13:18:16', '2022-08-08 13:18:16'),
(78, NULL, 0, NULL, '168,130', '2022-08-08 13:18:16', '2022-08-08 13:18:16'),
(79, NULL, 0, NULL, '168,130', '2022-08-08 13:18:16', '2022-08-08 13:18:16'),
(80, NULL, 0, NULL, '162,130', '2022-08-10 10:00:15', '2022-08-10 10:00:15'),
(81, NULL, 0, NULL, '162,171', '2022-08-12 17:49:07', '2022-08-12 17:49:07'),
(82, NULL, 0, NULL, '160,175', '2022-08-18 06:06:10', '2022-08-18 06:06:10'),
(83, NULL, 0, NULL, '160,178', '2022-08-18 12:22:38', '2022-08-18 12:22:38'),
(84, NULL, 0, NULL, '107,178', '2022-08-18 12:59:26', '2022-08-18 12:59:26'),
(85, NULL, 0, NULL, '111,1', '2022-08-19 06:56:11', '2022-08-19 06:56:11'),
(86, NULL, 0, NULL, '107,1', '2022-08-19 07:02:35', '2022-08-19 07:02:35'),
(87, NULL, 0, NULL, '79,1', '2022-08-19 07:31:53', '2022-08-19 07:31:53'),
(88, NULL, 0, NULL, '179,117', '2022-08-19 07:45:39', '2022-08-19 07:45:39'),
(89, NULL, 0, NULL, '160,1', '2022-08-19 07:45:47', '2022-08-19 07:45:47'),
(90, NULL, 0, NULL, '168,1', '2022-08-19 07:52:34', '2022-08-19 07:52:34'),
(91, NULL, 0, NULL, '151,117', '2022-08-19 07:56:18', '2022-08-19 07:56:18'),
(92, NULL, 0, NULL, '130,1', '2022-08-19 09:05:34', '2022-08-19 09:05:34'),
(93, NULL, 0, NULL, '175,180', '2022-08-21 04:21:03', '2022-08-21 04:21:03'),
(94, NULL, 0, NULL, '162,180', '2022-08-21 04:21:40', '2022-08-21 04:21:40'),
(95, NULL, 0, NULL, '180,1', '2022-08-22 05:52:02', '2022-08-22 05:52:02'),
(96, NULL, 0, NULL, '180,181', '2022-08-24 04:16:55', '2022-08-24 04:16:55'),
(97, NULL, 0, NULL, '175,181', '2022-08-24 04:17:45', '2022-08-24 04:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso3` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso2` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phonecode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capital` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `native` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emoji` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emojiU` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `flag` tinyint(1) NOT NULL DEFAULT 1,
  `wikiDataId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Rapid API GeoDB Cities'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `iso3`, `iso2`, `phonecode`, `capital`, `currency`, `native`, `emoji`, `emojiU`, `created_at`, `updated_at`, `flag`, `wikiDataId`) VALUES
(1, 'Afghanistan', 'AFG', 'AF', '93', 'Kabul', 'AFN', 'افغانستان', '🇦🇫', 'U+1F1E6 U+1F1EB', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q889'),
(2, 'Aland Islands', 'ALA', 'AX', '+358-18', 'Mariehamn', 'EUR', 'Åland', '🇦🇽', 'U+1F1E6 U+1F1FD', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(3, 'Albania', 'ALB', 'AL', '355', 'Tirana', 'ALL', 'Shqipëria', '🇦🇱', 'U+1F1E6 U+1F1F1', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q222'),
(4, 'Algeria', 'DZA', 'DZ', '213', 'Algiers', 'DZD', 'الجزائر', '🇩🇿', 'U+1F1E9 U+1F1FF', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q262'),
(5, 'American Samoa', 'ASM', 'AS', '+1-684', 'Pago Pago', 'USD', 'American Samoa', '🇦🇸', 'U+1F1E6 U+1F1F8', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(6, 'Andorra', 'AND', 'AD', '376', 'Andorra la Vella', 'EUR', 'Andorra', '🇦🇩', 'U+1F1E6 U+1F1E9', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q228'),
(7, 'Angola', 'AGO', 'AO', '244', 'Luanda', 'AOA', 'Angola', '🇦🇴', 'U+1F1E6 U+1F1F4', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q916'),
(8, 'Anguilla', 'AIA', 'AI', '+1-264', 'The Valley', 'XCD', 'Anguilla', '🇦🇮', 'U+1F1E6 U+1F1EE', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(9, 'Antarctica', 'ATA', 'AQ', '', '', '', 'Antarctica', '🇦🇶', 'U+1F1E6 U+1F1F6', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(10, 'Antigua And Barbuda', 'ATG', 'AG', '+1-268', 'St. John\'s', 'XCD', 'Antigua and Barbuda', '🇦🇬', 'U+1F1E6 U+1F1EC', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q781'),
(11, 'Argentina', 'ARG', 'AR', '54', 'Buenos Aires', 'ARS', 'Argentina', '🇦🇷', 'U+1F1E6 U+1F1F7', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q414'),
(12, 'Armenia', 'ARM', 'AM', '374', 'Yerevan', 'AMD', 'Հայաստան', '🇦🇲', 'U+1F1E6 U+1F1F2', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q399'),
(13, 'Aruba', 'ABW', 'AW', '297', 'Oranjestad', 'AWG', 'Aruba', '🇦🇼', 'U+1F1E6 U+1F1FC', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(14, 'Australia', 'AUS', 'AU', '61', 'Canberra', 'AUD', 'Australia', '🇦🇺', 'U+1F1E6 U+1F1FA', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q408'),
(15, 'Austria', 'AUT', 'AT', '43', 'Vienna', 'EUR', 'Österreich', '🇦🇹', 'U+1F1E6 U+1F1F9', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q40'),
(16, 'Azerbaijan', 'AZE', 'AZ', '994', 'Baku', 'AZN', 'Azərbaycan', '🇦🇿', 'U+1F1E6 U+1F1FF', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q227'),
(17, 'Bahamas The', 'BHS', 'BS', '+1-242', 'Nassau', 'BSD', 'Bahamas', '🇧🇸', 'U+1F1E7 U+1F1F8', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q778'),
(18, 'Bahrain', 'BHR', 'BH', '973', 'Manama', 'BHD', '‏البحرين', '🇧🇭', 'U+1F1E7 U+1F1ED', '2018-07-20 14:41:03', '2022-05-30 14:15:24', 1, 'Q398'),
(19, 'Bangladesh', 'BGD', 'BD', '880', 'Dhaka', 'BDT', 'Bangladesh', '🇧🇩', 'U+1F1E7 U+1F1E9', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q902'),
(20, 'Barbados', 'BRB', 'BB', '+1-246', 'Bridgetown', 'BBD', 'Barbados', '🇧🇧', 'U+1F1E7 U+1F1E7', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q244'),
(21, 'Belarus', 'BLR', 'BY', '375', 'Minsk', 'BYR', 'Белару́сь', '🇧🇾', 'U+1F1E7 U+1F1FE', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q184'),
(22, 'Belgium', 'BEL', 'BE', '32', 'Brussels', 'EUR', 'België', '🇧🇪', 'U+1F1E7 U+1F1EA', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q31'),
(23, 'Belize', 'BLZ', 'BZ', '501', 'Belmopan', 'BZD', 'Belize', '🇧🇿', 'U+1F1E7 U+1F1FF', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q242'),
(24, 'Benin', 'BEN', 'BJ', '229', 'Porto-Novo', 'XOF', 'Bénin', '🇧🇯', 'U+1F1E7 U+1F1EF', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q962'),
(25, 'Bermuda', 'BMU', 'BM', '+1-441', 'Hamilton', 'BMD', 'Bermuda', '🇧🇲', 'U+1F1E7 U+1F1F2', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(26, 'Bhutan', 'BTN', 'BT', '975', 'Thimphu', 'BTN', 'ʼbrug-yul', '🇧🇹', 'U+1F1E7 U+1F1F9', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q917'),
(27, 'Bolivia', 'BOL', 'BO', '591', 'Sucre', 'BOB', 'Bolivia', '🇧🇴', 'U+1F1E7 U+1F1F4', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q750'),
(28, 'Bosnia and Herzegovina', 'BIH', 'BA', '387', 'Sarajevo', 'BAM', 'Bosna i Hercegovina', '🇧🇦', 'U+1F1E7 U+1F1E6', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q225'),
(29, 'Botswana', 'BWA', 'BW', '267', 'Gaborone', 'BWP', 'Botswana', '🇧🇼', 'U+1F1E7 U+1F1FC', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q963'),
(30, 'Bouvet Island', 'BVT', 'BV', '', '', 'NOK', 'Bouvetøya', '🇧🇻', 'U+1F1E7 U+1F1FB', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(31, 'Brazil', 'BRA', 'BR', '55', 'Brasilia', 'BRL', 'Brasil', '🇧🇷', 'U+1F1E7 U+1F1F7', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q155'),
(32, 'British Indian Ocean Territory', 'IOT', 'IO', '246', 'Diego Garcia', 'USD', 'British Indian Ocean Territory', '🇮🇴', 'U+1F1EE U+1F1F4', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(33, 'Brunei', 'BRN', 'BN', '673', 'Bandar Seri Begawan', 'BND', 'Negara Brunei Darussalam', '🇧🇳', 'U+1F1E7 U+1F1F3', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q921'),
(34, 'Bulgaria', 'BGR', 'BG', '359', 'Sofia', 'BGN', 'България', '🇧🇬', 'U+1F1E7 U+1F1EC', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q219'),
(35, 'Burkina Faso', 'BFA', 'BF', '226', 'Ouagadougou', 'XOF', 'Burkina Faso', '🇧🇫', 'U+1F1E7 U+1F1EB', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q965'),
(36, 'Burundi', 'BDI', 'BI', '257', 'Bujumbura', 'BIF', 'Burundi', '🇧🇮', 'U+1F1E7 U+1F1EE', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q967'),
(37, 'Cambodia', 'KHM', 'KH', '855', 'Phnom Penh', 'KHR', 'Kâmpŭchéa', '🇰🇭', 'U+1F1F0 U+1F1ED', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q424'),
(38, 'Cameroon', 'CMR', 'CM', '237', 'Yaounde', 'XAF', 'Cameroon', '🇨🇲', 'U+1F1E8 U+1F1F2', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1009'),
(39, 'Canada', 'CAN', 'CA', '1', 'Ottawa', 'CAD', 'Canada', '🇨🇦', 'U+1F1E8 U+1F1E6', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q16'),
(40, 'Cape Verde', 'CPV', 'CV', '238', 'Praia', 'CVE', 'Cabo Verde', '🇨🇻', 'U+1F1E8 U+1F1FB', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1011'),
(41, 'Cayman Islands', 'CYM', 'KY', '+1-345', 'George Town', 'KYD', 'Cayman Islands', '🇰🇾', 'U+1F1F0 U+1F1FE', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(42, 'Central African Republic', 'CAF', 'CF', '236', 'Bangui', 'XAF', 'Ködörösêse tî Bêafrîka', '🇨🇫', 'U+1F1E8 U+1F1EB', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q929'),
(43, 'Chad', 'TCD', 'TD', '235', 'N\'Djamena', 'XAF', 'Tchad', '🇹🇩', 'U+1F1F9 U+1F1E9', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q657'),
(44, 'Chile', 'CHL', 'CL', '56', 'Santiago', 'CLP', 'Chile', '🇨🇱', 'U+1F1E8 U+1F1F1', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q298'),
(45, 'China', 'CHN', 'CN', '86', 'Beijing', 'CNY', '中国', '🇨🇳', 'U+1F1E8 U+1F1F3', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q148'),
(46, 'Christmas Island', 'CXR', 'CX', '61', 'Flying Fish Cove', 'AUD', 'Christmas Island', '🇨🇽', 'U+1F1E8 U+1F1FD', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(47, 'Cocos (Keeling) Islands', 'CCK', 'CC', '61', 'West Island', 'AUD', 'Cocos (Keeling) Islands', '🇨🇨', 'U+1F1E8 U+1F1E8', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(48, 'Colombia', 'COL', 'CO', '57', 'Bogota', 'COP', 'Colombia', '🇨🇴', 'U+1F1E8 U+1F1F4', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q739'),
(49, 'Comoros', 'COM', 'KM', '269', 'Moroni', 'KMF', 'Komori', '🇰🇲', 'U+1F1F0 U+1F1F2', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q970'),
(50, 'Congo', 'COG', 'CG', '242', 'Brazzaville', 'XAF', 'République du Congo', '🇨🇬', 'U+1F1E8 U+1F1EC', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q971'),
(51, 'Congo The Democratic Republic Of The', 'COD', 'CD', '243', 'Kinshasa', 'CDF', 'République démocratique du Congo', '🇨🇩', 'U+1F1E8 U+1F1E9', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q974'),
(52, 'Cook Islands', 'COK', 'CK', '682', 'Avarua', 'NZD', 'Cook Islands', '🇨🇰', 'U+1F1E8 U+1F1F0', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q26988'),
(53, 'Costa Rica', 'CRI', 'CR', '506', 'San Jose', 'CRC', 'Costa Rica', '🇨🇷', 'U+1F1E8 U+1F1F7', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q800'),
(54, 'Cote D\'Ivoire (Ivory Coast)', 'CIV', 'CI', '225', 'Yamoussoukro', 'XOF', NULL, '🇨🇮', 'U+1F1E8 U+1F1EE', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1008'),
(55, 'Croatia (Hrvatska)', 'HRV', 'HR', '385', 'Zagreb', 'HRK', 'Hrvatska', '🇭🇷', 'U+1F1ED U+1F1F7', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q224'),
(56, 'Cuba', 'CUB', 'CU', '53', 'Havana', 'CUP', 'Cuba', '🇨🇺', 'U+1F1E8 U+1F1FA', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q241'),
(57, 'Cyprus', 'CYP', 'CY', '357', 'Nicosia', 'EUR', 'Κύπρος', '🇨🇾', 'U+1F1E8 U+1F1FE', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q229'),
(58, 'Czech Republic', 'CZE', 'CZ', '420', 'Prague', 'CZK', 'Česká republika', '🇨🇿', 'U+1F1E8 U+1F1FF', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q213'),
(59, 'Denmark', 'DNK', 'DK', '45', 'Copenhagen', 'DKK', 'Danmark', '🇩🇰', 'U+1F1E9 U+1F1F0', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q35'),
(60, 'Djibouti', 'DJI', 'DJ', '253', 'Djibouti', 'DJF', 'Djibouti', '🇩🇯', 'U+1F1E9 U+1F1EF', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q977'),
(61, 'Dominica', 'DMA', 'DM', '+1-767', 'Roseau', 'XCD', 'Dominica', '🇩🇲', 'U+1F1E9 U+1F1F2', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q784'),
(62, 'Dominican Republic', 'DOM', 'DO', '+1-809 and 1-829', 'Santo Domingo', 'DOP', 'República Dominicana', '🇩🇴', 'U+1F1E9 U+1F1F4', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q786'),
(63, 'East Timor', 'TLS', 'TL', '670', 'Dili', 'USD', 'Timor-Leste', '🇹🇱', 'U+1F1F9 U+1F1F1', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q574'),
(64, 'Ecuador', 'ECU', 'EC', '593', 'Quito', 'USD', 'Ecuador', '🇪🇨', 'U+1F1EA U+1F1E8', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q736'),
(65, 'Egypt', 'EGY', 'EG', '20', 'Cairo', 'EGP', 'مصر‎', '🇪🇬', 'U+1F1EA U+1F1EC', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q79'),
(66, 'El Salvador', 'SLV', 'SV', '503', 'San Salvador', 'USD', 'El Salvador', '🇸🇻', 'U+1F1F8 U+1F1FB', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q792'),
(67, 'Equatorial Guinea', 'GNQ', 'GQ', '240', 'Malabo', 'XAF', 'Guinea Ecuatorial', '🇬🇶', 'U+1F1EC U+1F1F6', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q983'),
(68, 'Eritrea', 'ERI', 'ER', '291', 'Asmara', 'ERN', 'ኤርትራ', '🇪🇷', 'U+1F1EA U+1F1F7', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q986'),
(69, 'Estonia', 'EST', 'EE', '372', 'Tallinn', 'EUR', 'Eesti', '🇪🇪', 'U+1F1EA U+1F1EA', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q191'),
(70, 'Ethiopia', 'ETH', 'ET', '251', 'Addis Ababa', 'ETB', 'ኢትዮጵያ', '🇪🇹', 'U+1F1EA U+1F1F9', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q115'),
(71, 'Falkland Islands', 'FLK', 'FK', '500', 'Stanley', 'FKP', 'Falkland Islands', '🇫🇰', 'U+1F1EB U+1F1F0', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(72, 'Faroe Islands', 'FRO', 'FO', '298', 'Torshavn', 'DKK', 'Føroyar', '🇫🇴', 'U+1F1EB U+1F1F4', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(73, 'Fiji Islands', 'FJI', 'FJ', '679', 'Suva', 'FJD', 'Fiji', '🇫🇯', 'U+1F1EB U+1F1EF', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q712'),
(74, 'Finland', 'FIN', 'FI', '358', 'Helsinki', 'EUR', 'Suomi', '🇫🇮', 'U+1F1EB U+1F1EE', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q33'),
(75, 'France', 'FRA', 'FR', '33', 'Paris', 'EUR', 'France', '🇫🇷', 'U+1F1EB U+1F1F7', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q142'),
(76, 'French Guiana', 'GUF', 'GF', '594', 'Cayenne', 'EUR', 'Guyane française', '🇬🇫', 'U+1F1EC U+1F1EB', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(77, 'French Polynesia', 'PYF', 'PF', '689', 'Papeete', 'XPF', 'Polynésie française', '🇵🇫', 'U+1F1F5 U+1F1EB', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(78, 'French Southern Territories', 'ATF', 'TF', '', 'Port-aux-Francais', 'EUR', 'Territoire des Terres australes et antarctiques fr', '🇹🇫', 'U+1F1F9 U+1F1EB', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(79, 'Gabon', 'GAB', 'GA', '241', 'Libreville', 'XAF', 'Gabon', '🇬🇦', 'U+1F1EC U+1F1E6', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1000'),
(80, 'Gambia The', 'GMB', 'GM', '220', 'Banjul', 'GMD', 'Gambia', '🇬🇲', 'U+1F1EC U+1F1F2', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1005'),
(81, 'Georgia', 'GEO', 'GE', '995', 'Tbilisi', 'GEL', 'საქართველო', '🇬🇪', 'U+1F1EC U+1F1EA', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q230'),
(82, 'Germany', 'DEU', 'DE', '49', 'Berlin', 'EUR', 'Deutschland', '🇩🇪', 'U+1F1E9 U+1F1EA', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q183'),
(83, 'Ghana', 'GHA', 'GH', '233', 'Accra', 'GHS', 'Ghana', '🇬🇭', 'U+1F1EC U+1F1ED', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q117'),
(84, 'Gibraltar', 'GIB', 'GI', '350', 'Gibraltar', 'GIP', 'Gibraltar', '🇬🇮', 'U+1F1EC U+1F1EE', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(85, 'Greece', 'GRC', 'GR', '30', 'Athens', 'EUR', 'Ελλάδα', '🇬🇷', 'U+1F1EC U+1F1F7', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q41'),
(86, 'Greenland', 'GRL', 'GL', '299', 'Nuuk', 'DKK', 'Kalaallit Nunaat', '🇬🇱', 'U+1F1EC U+1F1F1', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(87, 'Grenada', 'GRD', 'GD', '+1-473', 'St. George\'s', 'XCD', 'Grenada', '🇬🇩', 'U+1F1EC U+1F1E9', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q769'),
(88, 'Guadeloupe', 'GLP', 'GP', '590', 'Basse-Terre', 'EUR', 'Guadeloupe', '🇬🇵', 'U+1F1EC U+1F1F5', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(89, 'Guam', 'GUM', 'GU', '+1-671', 'Hagatna', 'USD', 'Guam', '🇬🇺', 'U+1F1EC U+1F1FA', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(90, 'Guatemala', 'GTM', 'GT', '502', 'Guatemala City', 'GTQ', 'Guatemala', '🇬🇹', 'U+1F1EC U+1F1F9', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q774'),
(91, 'Guernsey and Alderney', 'GGY', 'GG', '+44-1481', 'St Peter Port', 'GBP', 'Guernsey', '🇬🇬', 'U+1F1EC U+1F1EC', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(92, 'Guinea', 'GIN', 'GN', '224', 'Conakry', 'GNF', 'Guinée', '🇬🇳', 'U+1F1EC U+1F1F3', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1006'),
(93, 'Guinea-Bissau', 'GNB', 'GW', '245', 'Bissau', 'XOF', 'Guiné-Bissau', '🇬🇼', 'U+1F1EC U+1F1FC', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1007'),
(94, 'Guyana', 'GUY', 'GY', '592', 'Georgetown', 'GYD', 'Guyana', '🇬🇾', 'U+1F1EC U+1F1FE', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q734'),
(95, 'Haiti', 'HTI', 'HT', '509', 'Port-au-Prince', 'HTG', 'Haïti', '🇭🇹', 'U+1F1ED U+1F1F9', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q790'),
(96, 'Heard and McDonald Islands', 'HMD', 'HM', ' ', '', 'AUD', 'Heard Island and McDonald Islands', '🇭🇲', 'U+1F1ED U+1F1F2', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(97, 'Honduras', 'HND', 'HN', '504', 'Tegucigalpa', 'HNL', 'Honduras', '🇭🇳', 'U+1F1ED U+1F1F3', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q783'),
(98, 'Hong Kong S.A.R.', 'HKG', 'HK', '852', 'Hong Kong', 'HKD', '香港', '🇭🇰', 'U+1F1ED U+1F1F0', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(99, 'Hungary', 'HUN', 'HU', '36', 'Budapest', 'HUF', 'Magyarország', '🇭🇺', 'U+1F1ED U+1F1FA', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q28'),
(100, 'Iceland', 'ISL', 'IS', '354', 'Reykjavik', 'ISK', 'Ísland', '🇮🇸', 'U+1F1EE U+1F1F8', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q189'),
(101, 'India', 'IND', 'IN', '91', 'New Delhi', 'INR', 'भारत', '🇮🇳', 'U+1F1EE U+1F1F3', '2018-07-20 14:41:03', '2022-06-22 10:14:10', 1, 'Q668'),
(102, 'Indonesia', 'IDN', 'ID', '62', 'Jakarta', 'IDR', 'Indonesia', '🇮🇩', 'U+1F1EE U+1F1E9', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q252'),
(103, 'Iran', 'IRN', 'IR', '98', 'Tehran', 'IRR', 'ایران', '🇮🇷', 'U+1F1EE U+1F1F7', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q794'),
(104, 'Iraq', 'IRQ', 'IQ', '964', 'Baghdad', 'IQD', 'العراق', '🇮🇶', 'U+1F1EE U+1F1F6', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q796'),
(105, 'Ireland', 'IRL', 'IE', '353', 'Dublin', 'EUR', 'Éire', '🇮🇪', 'U+1F1EE U+1F1EA', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q27'),
(106, 'Israel', 'ISR', 'IL', '972', 'Jerusalem', 'ILS', 'יִשְׂרָאֵל', '🇮🇱', 'U+1F1EE U+1F1F1', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q801'),
(107, 'Italy', 'ITA', 'IT', '39', 'Rome', 'EUR', 'Italia', '🇮🇹', 'U+1F1EE U+1F1F9', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q38'),
(108, 'Jamaica', 'JAM', 'JM', '+1-876', 'Kingston', 'JMD', 'Jamaica', '🇯🇲', 'U+1F1EF U+1F1F2', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q766'),
(109, 'Japan', 'JPN', 'JP', '81', 'Tokyo', 'JPY', '日本', '🇯🇵', 'U+1F1EF U+1F1F5', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q17'),
(110, 'Jersey', 'JEY', 'JE', '+44-1534', 'Saint Helier', 'GBP', 'Jersey', '🇯🇪', 'U+1F1EF U+1F1EA', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q785'),
(111, 'Jordan', 'JOR', 'JO', '962', 'Amman', 'JOD', 'الأردن', '🇯🇴', 'U+1F1EF U+1F1F4', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q810'),
(112, 'Kazakhstan', 'KAZ', 'KZ', '7', 'Astana', 'KZT', 'Қазақстан', '🇰🇿', 'U+1F1F0 U+1F1FF', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q232'),
(113, 'Kenya', 'KEN', 'KE', '254', 'Nairobi', 'KES', 'Kenya', '🇰🇪', 'U+1F1F0 U+1F1EA', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q114'),
(114, 'Kiribati', 'KIR', 'KI', '686', 'Tarawa', 'AUD', 'Kiribati', '🇰🇮', 'U+1F1F0 U+1F1EE', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q710'),
(115, 'Korea North', 'PRK', 'KP', '850', 'Pyongyang', 'KPW', '북한', '🇰🇵', 'U+1F1F0 U+1F1F5', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q423'),
(116, 'Korea South', 'KOR', 'KR', '82', 'Seoul', 'KRW', '대한민국', '🇰🇷', 'U+1F1F0 U+1F1F7', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q884'),
(117, 'Kuwait', 'KWT', 'KW', '965', 'Kuwait City', 'KWD', 'الكويت', '🇰🇼', 'U+1F1F0 U+1F1FC', '2018-07-20 14:41:03', '2022-05-22 19:08:25', 1, 'Q817'),
(118, 'Kyrgyzstan', 'KGZ', 'KG', '996', 'Bishkek', 'KGS', 'Кыргызстан', '🇰🇬', 'U+1F1F0 U+1F1EC', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q813'),
(119, 'Laos', 'LAO', 'LA', '856', 'Vientiane', 'LAK', 'ສປປລາວ', '🇱🇦', 'U+1F1F1 U+1F1E6', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q819'),
(120, 'Latvia', 'LVA', 'LV', '371', 'Riga', 'EUR', 'Latvija', '🇱🇻', 'U+1F1F1 U+1F1FB', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q211'),
(121, 'Lebanon', 'LBN', 'LB', '961', 'Beirut', 'LBP', 'لبنان', '🇱🇧', 'U+1F1F1 U+1F1E7', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q822'),
(122, 'Lesotho', 'LSO', 'LS', '266', 'Maseru', 'LSL', 'Lesotho', '🇱🇸', 'U+1F1F1 U+1F1F8', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1013'),
(123, 'Liberia', 'LBR', 'LR', '231', 'Monrovia', 'LRD', 'Liberia', '🇱🇷', 'U+1F1F1 U+1F1F7', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1014'),
(124, 'Libya', 'LBY', 'LY', '218', 'Tripolis', 'LYD', '‏ليبيا', '🇱🇾', 'U+1F1F1 U+1F1FE', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1016'),
(125, 'Liechtenstein', 'LIE', 'LI', '423', 'Vaduz', 'CHF', 'Liechtenstein', '🇱🇮', 'U+1F1F1 U+1F1EE', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q347'),
(126, 'Lithuania', 'LTU', 'LT', '370', 'Vilnius', 'LTL', 'Lietuva', '🇱🇹', 'U+1F1F1 U+1F1F9', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q37'),
(127, 'Luxembourg', 'LUX', 'LU', '352', 'Luxembourg', 'EUR', 'Luxembourg', '🇱🇺', 'U+1F1F1 U+1F1FA', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q32'),
(128, 'Macau S.A.R.', 'MAC', 'MO', '853', 'Macao', 'MOP', '澳門', '🇲🇴', 'U+1F1F2 U+1F1F4', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(129, 'Macedonia', 'MKD', 'MK', '389', 'Skopje', 'MKD', 'Северна Македонија', '🇲🇰', 'U+1F1F2 U+1F1F0', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q221'),
(130, 'Madagascar', 'MDG', 'MG', '261', 'Antananarivo', 'MGA', 'Madagasikara', '🇲🇬', 'U+1F1F2 U+1F1EC', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1019'),
(131, 'Malawi', 'MWI', 'MW', '265', 'Lilongwe', 'MWK', 'Malawi', '🇲🇼', 'U+1F1F2 U+1F1FC', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1020'),
(132, 'Malaysia', 'MYS', 'MY', '60', 'Kuala Lumpur', 'MYR', 'Malaysia', '🇲🇾', 'U+1F1F2 U+1F1FE', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q833'),
(133, 'Maldives', 'MDV', 'MV', '960', 'Male', 'MVR', 'Maldives', '🇲🇻', 'U+1F1F2 U+1F1FB', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q826'),
(134, 'Mali', 'MLI', 'ML', '223', 'Bamako', 'XOF', 'Mali', '🇲🇱', 'U+1F1F2 U+1F1F1', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q912'),
(135, 'Malta', 'MLT', 'MT', '356', 'Valletta', 'EUR', 'Malta', '🇲🇹', 'U+1F1F2 U+1F1F9', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q233'),
(136, 'Man (Isle of)', 'IMN', 'IM', '+44-1624', 'Douglas, Isle of Man', 'GBP', 'Isle of Man', '🇮🇲', 'U+1F1EE U+1F1F2', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(137, 'Marshall Islands', 'MHL', 'MH', '692', 'Majuro', 'USD', 'M̧ajeļ', '🇲🇭', 'U+1F1F2 U+1F1ED', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q709'),
(138, 'Martinique', 'MTQ', 'MQ', '596', 'Fort-de-France', 'EUR', 'Martinique', '🇲🇶', 'U+1F1F2 U+1F1F6', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(139, 'Mauritania', 'MRT', 'MR', '222', 'Nouakchott', 'MRO', 'موريتانيا', '🇲🇷', 'U+1F1F2 U+1F1F7', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1025'),
(140, 'Mauritius', 'MUS', 'MU', '230', 'Port Louis', 'MUR', 'Maurice', '🇲🇺', 'U+1F1F2 U+1F1FA', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1027'),
(141, 'Mayotte', 'MYT', 'YT', '262', 'Mamoudzou', 'EUR', 'Mayotte', '🇾🇹', 'U+1F1FE U+1F1F9', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(142, 'Mexico', 'MEX', 'MX', '52', 'Mexico City', 'MXN', 'México', '🇲🇽', 'U+1F1F2 U+1F1FD', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q96'),
(143, 'Micronesia', 'FSM', 'FM', '691', 'Palikir', 'USD', 'Micronesia', '🇫🇲', 'U+1F1EB U+1F1F2', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q702'),
(144, 'Moldova', 'MDA', 'MD', '373', 'Chisinau', 'MDL', 'Moldova', '🇲🇩', 'U+1F1F2 U+1F1E9', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q217'),
(145, 'Monaco', 'MCO', 'MC', '377', 'Monaco', 'EUR', 'Monaco', '🇲🇨', 'U+1F1F2 U+1F1E8', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(146, 'Mongolia', 'MNG', 'MN', '976', 'Ulan Bator', 'MNT', 'Монгол улс', '🇲🇳', 'U+1F1F2 U+1F1F3', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q711'),
(147, 'Montenegro', 'MNE', 'ME', '382', 'Podgorica', 'EUR', 'Црна Гора', '🇲🇪', 'U+1F1F2 U+1F1EA', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q236'),
(148, 'Montserrat', 'MSR', 'MS', '+1-664', 'Plymouth', 'XCD', 'Montserrat', '🇲🇸', 'U+1F1F2 U+1F1F8', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(149, 'Morocco', 'MAR', 'MA', '212', 'Rabat', 'MAD', 'المغرب', '🇲🇦', 'U+1F1F2 U+1F1E6', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1028'),
(150, 'Mozambique', 'MOZ', 'MZ', '258', 'Maputo', 'MZN', 'Moçambique', '🇲🇿', 'U+1F1F2 U+1F1FF', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1029'),
(151, 'Myanmar', 'MMR', 'MM', '95', 'Nay Pyi Taw', 'MMK', 'မြန်မာ', '🇲🇲', 'U+1F1F2 U+1F1F2', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q836'),
(152, 'Namibia', 'NAM', 'NA', '264', 'Windhoek', 'NAD', 'Namibia', '🇳🇦', 'U+1F1F3 U+1F1E6', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1030'),
(153, 'Nauru', 'NRU', 'NR', '674', 'Yaren', 'AUD', 'Nauru', '🇳🇷', 'U+1F1F3 U+1F1F7', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q697'),
(154, 'Nepal', 'NPL', 'NP', '977', 'Kathmandu', 'NPR', 'नपल', '🇳🇵', 'U+1F1F3 U+1F1F5', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q837'),
(155, 'Netherlands Antilles', 'ANT', 'AN', '', '', '', NULL, NULL, NULL, '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(156, 'Netherlands The', 'NLD', 'NL', '31', 'Amsterdam', 'EUR', 'Nederland', '🇳🇱', 'U+1F1F3 U+1F1F1', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q55'),
(157, 'New Caledonia', 'NCL', 'NC', '687', 'Noumea', 'XPF', 'Nouvelle-Calédonie', '🇳🇨', 'U+1F1F3 U+1F1E8', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(158, 'New Zealand', 'NZL', 'NZ', '64', 'Wellington', 'NZD', 'New Zealand', '🇳🇿', 'U+1F1F3 U+1F1FF', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q664'),
(159, 'Nicaragua', 'NIC', 'NI', '505', 'Managua', 'NIO', 'Nicaragua', '🇳🇮', 'U+1F1F3 U+1F1EE', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q811'),
(160, 'Niger', 'NER', 'NE', '227', 'Niamey', 'XOF', 'Niger', '🇳🇪', 'U+1F1F3 U+1F1EA', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1032'),
(161, 'Nigeria', 'NGA', 'NG', '234', 'Abuja', 'NGN', 'Nigeria', '🇳🇬', 'U+1F1F3 U+1F1EC', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1033'),
(162, 'Niue', 'NIU', 'NU', '683', 'Alofi', 'NZD', 'Niuē', '🇳🇺', 'U+1F1F3 U+1F1FA', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q34020'),
(163, 'Norfolk Island', 'NFK', 'NF', '672', 'Kingston', 'AUD', 'Norfolk Island', '🇳🇫', 'U+1F1F3 U+1F1EB', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(164, 'Northern Mariana Islands', 'MNP', 'MP', '+1-670', 'Saipan', 'USD', 'Northern Mariana Islands', '🇲🇵', 'U+1F1F2 U+1F1F5', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(165, 'Norway', 'NOR', 'NO', '47', 'Oslo', 'NOK', 'Norge', '🇳🇴', 'U+1F1F3 U+1F1F4', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q20'),
(166, 'Oman', 'OMN', 'OM', '968', 'Muscat', 'OMR', 'عمان', '🇴🇲', 'U+1F1F4 U+1F1F2', '2018-07-20 14:41:03', '2022-05-30 14:15:08', 1, 'Q842'),
(167, 'Pakistan', 'PAK', 'PK', '92', 'Islamabad', 'PKR', 'Pakistan', '🇵🇰', 'U+1F1F5 U+1F1F0', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q843'),
(168, 'Palau', 'PLW', 'PW', '680', 'Melekeok', 'USD', 'Palau', '🇵🇼', 'U+1F1F5 U+1F1FC', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q695'),
(169, 'Palestinian Territory Occupied', 'PSE', 'PS', '970', 'East Jerusalem', 'ILS', 'فلسطين', '🇵🇸', 'U+1F1F5 U+1F1F8', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(170, 'Panama', 'PAN', 'PA', '507', 'Panama City', 'PAB', 'Panamá', '🇵🇦', 'U+1F1F5 U+1F1E6', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q804'),
(171, 'Papua new Guinea', 'PNG', 'PG', '675', 'Port Moresby', 'PGK', 'Papua Niugini', '🇵🇬', 'U+1F1F5 U+1F1EC', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q691'),
(172, 'Paraguay', 'PRY', 'PY', '595', 'Asuncion', 'PYG', 'Paraguay', '🇵🇾', 'U+1F1F5 U+1F1FE', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q733'),
(173, 'Peru', 'PER', 'PE', '51', 'Lima', 'PEN', 'Perú', '🇵🇪', 'U+1F1F5 U+1F1EA', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q419'),
(174, 'Philippines', 'PHL', 'PH', '63', 'Manila', 'PHP', 'Pilipinas', '🇵🇭', 'U+1F1F5 U+1F1ED', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q928'),
(175, 'Pitcairn Island', 'PCN', 'PN', '870', 'Adamstown', 'NZD', 'Pitcairn Islands', '🇵🇳', 'U+1F1F5 U+1F1F3', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(176, 'Poland', 'POL', 'PL', '48', 'Warsaw', 'PLN', 'Polska', '🇵🇱', 'U+1F1F5 U+1F1F1', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q36'),
(177, 'Portugal', 'PRT', 'PT', '351', 'Lisbon', 'EUR', 'Portugal', '🇵🇹', 'U+1F1F5 U+1F1F9', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q45'),
(178, 'Puerto Rico', 'PRI', 'PR', '+1-787 and 1-939', 'San Juan', 'USD', 'Puerto Rico', '🇵🇷', 'U+1F1F5 U+1F1F7', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(179, 'Qatar', 'QAT', 'QA', '974', 'Doha', 'QAR', 'قطر', '🇶🇦', 'U+1F1F6 U+1F1E6', '2018-07-20 14:41:03', '2022-05-30 14:15:40', 1, 'Q846'),
(180, 'Reunion', 'REU', 'RE', '262', 'Saint-Denis', 'EUR', 'La Réunion', '🇷🇪', 'U+1F1F7 U+1F1EA', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(181, 'Romania', 'ROU', 'RO', '40', 'Bucharest', 'RON', 'România', '🇷🇴', 'U+1F1F7 U+1F1F4', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q218'),
(182, 'Russia', 'RUS', 'RU', '7', 'Moscow', 'RUB', 'Россия', '🇷🇺', 'U+1F1F7 U+1F1FA', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q159'),
(183, 'Rwanda', 'RWA', 'RW', '250', 'Kigali', 'RWF', 'Rwanda', '🇷🇼', 'U+1F1F7 U+1F1FC', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1037'),
(184, 'Saint Helena', 'SHN', 'SH', '290', 'Jamestown', 'SHP', 'Saint Helena', '🇸🇭', 'U+1F1F8 U+1F1ED', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(185, 'Saint Kitts And Nevis', 'KNA', 'KN', '+1-869', 'Basseterre', 'XCD', 'Saint Kitts and Nevis', '🇰🇳', 'U+1F1F0 U+1F1F3', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q763'),
(186, 'Saint Lucia', 'LCA', 'LC', '+1-758', 'Castries', 'XCD', 'Saint Lucia', '🇱🇨', 'U+1F1F1 U+1F1E8', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q760'),
(187, 'Saint Pierre and Miquelon', 'SPM', 'PM', '508', 'Saint-Pierre', 'EUR', 'Saint-Pierre-et-Miquelon', '🇵🇲', 'U+1F1F5 U+1F1F2', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(188, 'Saint Vincent And The Grenadines', 'VCT', 'VC', '+1-784', 'Kingstown', 'XCD', 'Saint Vincent and the Grenadines', '🇻🇨', 'U+1F1FB U+1F1E8', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q757'),
(189, 'Saint-Barthelemy', 'BLM', 'BL', '590', 'Gustavia', 'EUR', 'Saint-Barthélemy', '🇧🇱', 'U+1F1E7 U+1F1F1', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(190, 'Saint-Martin (French part)', 'MAF', 'MF', '590', 'Marigot', 'EUR', 'Saint-Martin', '🇲🇫', 'U+1F1F2 U+1F1EB', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(191, 'Samoa', 'WSM', 'WS', '685', 'Apia', 'WST', 'Samoa', '🇼🇸', 'U+1F1FC U+1F1F8', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q683'),
(192, 'San Marino', 'SMR', 'SM', '378', 'San Marino', 'EUR', 'San Marino', '🇸🇲', 'U+1F1F8 U+1F1F2', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q238'),
(193, 'Sao Tome and Principe', 'STP', 'ST', '239', 'Sao Tome', 'STD', 'São Tomé e Príncipe', '🇸🇹', 'U+1F1F8 U+1F1F9', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1039'),
(194, 'Saudi Arabia', 'SAU', 'SA', '966', 'Riyadh', 'SAR', 'العربية السعودية', '🇸🇦', 'U+1F1F8 U+1F1E6', '2018-07-20 14:41:03', '2022-05-30 14:15:56', 1, 'Q851'),
(195, 'Senegal', 'SEN', 'SN', '221', 'Dakar', 'XOF', 'Sénégal', '🇸🇳', 'U+1F1F8 U+1F1F3', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1041'),
(196, 'Serbia', 'SRB', 'RS', '381', 'Belgrade', 'RSD', 'Србија', '🇷🇸', 'U+1F1F7 U+1F1F8', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q403'),
(197, 'Seychelles', 'SYC', 'SC', '248', 'Victoria', 'SCR', 'Seychelles', '🇸🇨', 'U+1F1F8 U+1F1E8', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1042'),
(198, 'Sierra Leone', 'SLE', 'SL', '232', 'Freetown', 'SLL', 'Sierra Leone', '🇸🇱', 'U+1F1F8 U+1F1F1', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1044'),
(199, 'Singapore', 'SGP', 'SG', '65', 'Singapur', 'SGD', 'Singapore', '🇸🇬', 'U+1F1F8 U+1F1EC', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q334'),
(200, 'Slovakia', 'SVK', 'SK', '421', 'Bratislava', 'EUR', 'Slovensko', '🇸🇰', 'U+1F1F8 U+1F1F0', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q214'),
(201, 'Slovenia', 'SVN', 'SI', '386', 'Ljubljana', 'EUR', 'Slovenija', '🇸🇮', 'U+1F1F8 U+1F1EE', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q215'),
(202, 'Solomon Islands', 'SLB', 'SB', '677', 'Honiara', 'SBD', 'Solomon Islands', '🇸🇧', 'U+1F1F8 U+1F1E7', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q685'),
(203, 'Somalia', 'SOM', 'SO', '252', 'Mogadishu', 'SOS', 'Soomaaliya', '🇸🇴', 'U+1F1F8 U+1F1F4', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1045'),
(204, 'South Africa', 'ZAF', 'ZA', '27', 'Pretoria', 'ZAR', 'South Africa', '🇿🇦', 'U+1F1FF U+1F1E6', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q258'),
(205, 'South Georgia', 'SGS', 'GS', '', 'Grytviken', 'GBP', 'South Georgia', '🇬🇸', 'U+1F1EC U+1F1F8', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(206, 'South Sudan', 'SSD', 'SS', '211', 'Juba', 'SSP', 'South Sudan', '🇸🇸', 'U+1F1F8 U+1F1F8', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q958'),
(207, 'Spain', 'ESP', 'ES', '34', 'Madrid', 'EUR', 'España', '🇪🇸', 'U+1F1EA U+1F1F8', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q29'),
(208, 'Sri Lanka', 'LKA', 'LK', '94', 'Colombo', 'LKR', 'śrī laṃkāva', '🇱🇰', 'U+1F1F1 U+1F1F0', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q854'),
(209, 'Sudan', 'SDN', 'SD', '249', 'Khartoum', 'SDG', 'السودان', '🇸🇩', 'U+1F1F8 U+1F1E9', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1049'),
(210, 'Suriname', 'SUR', 'SR', '597', 'Paramaribo', 'SRD', 'Suriname', '🇸🇷', 'U+1F1F8 U+1F1F7', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q730'),
(211, 'Svalbard And Jan Mayen Islands', 'SJM', 'SJ', '47', 'Longyearbyen', 'NOK', 'Svalbard og Jan Mayen', '🇸🇯', 'U+1F1F8 U+1F1EF', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(212, 'Swaziland', 'SWZ', 'SZ', '268', 'Mbabane', 'SZL', 'Swaziland', '🇸🇿', 'U+1F1F8 U+1F1FF', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1050'),
(213, 'Sweden', 'SWE', 'SE', '46', 'Stockholm', 'SEK', 'Sverige', '🇸🇪', 'U+1F1F8 U+1F1EA', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q34'),
(214, 'Switzerland', 'CHE', 'CH', '41', 'Berne', 'CHF', 'Schweiz', '🇨🇭', 'U+1F1E8 U+1F1ED', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q39'),
(215, 'Syria', 'SYR', 'SY', '963', 'Damascus', 'SYP', 'سوريا', '🇸🇾', 'U+1F1F8 U+1F1FE', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q858'),
(216, 'Taiwan', 'TWN', 'TW', '886', 'Taipei', 'TWD', '臺灣', '🇹🇼', 'U+1F1F9 U+1F1FC', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q865'),
(217, 'Tajikistan', 'TJK', 'TJ', '992', 'Dushanbe', 'TJS', 'Тоҷикистон', '🇹🇯', 'U+1F1F9 U+1F1EF', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q863'),
(218, 'Tanzania', 'TZA', 'TZ', '255', 'Dodoma', 'TZS', 'Tanzania', '🇹🇿', 'U+1F1F9 U+1F1FF', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q924'),
(219, 'Thailand', 'THA', 'TH', '66', 'Bangkok', 'THB', 'ประเทศไทย', '🇹🇭', 'U+1F1F9 U+1F1ED', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q869'),
(220, 'Togo', 'TGO', 'TG', '228', 'Lome', 'XOF', 'Togo', '🇹🇬', 'U+1F1F9 U+1F1EC', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q945'),
(221, 'Tokelau', 'TKL', 'TK', '690', '', 'NZD', 'Tokelau', '🇹🇰', 'U+1F1F9 U+1F1F0', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(222, 'Tonga', 'TON', 'TO', '676', 'Nuku\'alofa', 'TOP', 'Tonga', '🇹🇴', 'U+1F1F9 U+1F1F4', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q678'),
(223, 'Trinidad And Tobago', 'TTO', 'TT', '+1-868', 'Port of Spain', 'TTD', 'Trinidad and Tobago', '🇹🇹', 'U+1F1F9 U+1F1F9', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q754'),
(224, 'Tunisia', 'TUN', 'TN', '216', 'Tunis', 'TND', 'تونس', '🇹🇳', 'U+1F1F9 U+1F1F3', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q948'),
(225, 'Turkey', 'TUR', 'TR', '90', 'Ankara', 'TRY', 'Türkiye', '🇹🇷', 'U+1F1F9 U+1F1F7', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q43'),
(226, 'Turkmenistan', 'TKM', 'TM', '993', 'Ashgabat', 'TMT', 'Türkmenistan', '🇹🇲', 'U+1F1F9 U+1F1F2', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q874'),
(227, 'Turks And Caicos Islands', 'TCA', 'TC', '+1-649', 'Cockburn Town', 'USD', 'Turks and Caicos Islands', '🇹🇨', 'U+1F1F9 U+1F1E8', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(228, 'Tuvalu', 'TUV', 'TV', '688', 'Funafuti', 'AUD', 'Tuvalu', '🇹🇻', 'U+1F1F9 U+1F1FB', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q672'),
(229, 'Uganda', 'UGA', 'UG', '256', 'Kampala', 'UGX', 'Uganda', '🇺🇬', 'U+1F1FA U+1F1EC', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q1036'),
(230, 'Ukraine', 'UKR', 'UA', '380', 'Kiev', 'UAH', 'Україна', '🇺🇦', 'U+1F1FA U+1F1E6', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q212'),
(231, 'United Arab Emirates', 'ARE', 'AE', '971', 'Abu Dhabi', 'AED', 'دولة الإمارات العربية المتحدة', '🇦🇪', 'U+1F1E6 U+1F1EA', '2018-07-20 14:41:03', '2022-05-30 14:14:52', 1, 'Q878'),
(232, 'United Kingdom', 'GBR', 'GB', '44', 'London', 'GBP', 'United Kingdom', '🇬🇧', 'U+1F1EC U+1F1E7', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q145'),
(233, 'United States', 'USA', 'US', '1', 'Washington', 'USD', 'United States', '🇺🇸', 'U+1F1FA U+1F1F8', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q30'),
(234, 'United States Minor Outlying Islands', 'UMI', 'UM', '1', '', 'USD', 'United States Minor Outlying Islands', '🇺🇲', 'U+1F1FA U+1F1F2', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(235, 'Uruguay', 'URY', 'UY', '598', 'Montevideo', 'UYU', 'Uruguay', '🇺🇾', 'U+1F1FA U+1F1FE', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q77'),
(236, 'Uzbekistan', 'UZB', 'UZ', '998', 'Tashkent', 'UZS', 'O‘zbekiston', '🇺🇿', 'U+1F1FA U+1F1FF', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q265'),
(237, 'Vanuatu', 'VUT', 'VU', '678', 'Port Vila', 'VUV', 'Vanuatu', '🇻🇺', 'U+1F1FB U+1F1FA', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q686'),
(238, 'Vatican City State (Holy See)', 'VAT', 'VA', '379', 'Vatican City', 'EUR', 'Vaticano', '🇻🇦', 'U+1F1FB U+1F1E6', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q237'),
(239, 'Venezuela', 'VEN', 'VE', '58', 'Caracas', 'VEF', 'Venezuela', '🇻🇪', 'U+1F1FB U+1F1EA', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q717'),
(240, 'Vietnam', 'VNM', 'VN', '84', 'Hanoi', 'VND', 'Việt Nam', '🇻🇳', 'U+1F1FB U+1F1F3', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q881'),
(241, 'Virgin Islands (British)', 'VGB', 'VG', '+1-284', 'Road Town', 'USD', 'British Virgin Islands', '🇻🇬', 'U+1F1FB U+1F1EC', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(242, 'Virgin Islands (US)', 'VIR', 'VI', '+1-340', 'Charlotte Amalie', 'USD', 'United States Virgin Islands', '🇻🇮', 'U+1F1FB U+1F1EE', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(243, 'Wallis And Futuna Islands', 'WLF', 'WF', '681', 'Mata Utu', 'XPF', 'Wallis et Futuna', '🇼🇫', 'U+1F1FC U+1F1EB', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(244, 'Western Sahara', 'ESH', 'EH', '212', 'El-Aaiun', 'MAD', 'الصحراء الغربية', '🇪🇭', 'U+1F1EA U+1F1ED', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, NULL),
(245, 'Yemen', 'YEM', 'YE', '967', 'Sanaa', 'YER', 'اليَمَن', '🇾🇪', 'U+1F1FE U+1F1EA', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q805'),
(246, 'Zambia', 'ZMB', 'ZM', '260', 'Lusaka', 'ZMK', 'Zambia', '🇿🇲', 'U+1F1FF U+1F1F2', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q953'),
(247, 'Zimbabwe', 'ZWE', 'ZW', '263', 'Harare', 'ZWL', 'Zimbabwe', '🇿🇼', 'U+1F1FF U+1F1FC', '2018-07-20 14:41:03', '2022-05-22 19:07:55', 0, 'Q954');

-- --------------------------------------------------------

--
-- Table structure for table `customer_contact`
--

CREATE TABLE `customer_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `is_seen` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_contact`
--

INSERT INTO `customer_contact` (`id`, `name`, `email`, `subject`, `message`, `is_seen`, `created_at`, `updated_at`) VALUES
(1, 'Deepanshu', 'deep@getnada.com', 'testing my mail', 'Hello you develper', 0, '2021-07-12 15:35:07', '2021-07-12 15:35:07'),
(2, 'deepanshu', 'deep@getnada.com', 'testing api', 'lets test my messages', 0, '2021-10-28 10:31:40', '2021-10-28 10:31:40'),
(3, 'aditya', 'aditya1106@getnada.com', 'need to cahnge name', 'i want to change name', 0, '2021-11-01 18:44:50', '2021-11-01 18:44:50'),
(4, 'aditya', 'aditya1106@getnada.com', 'need to cahnge name', 'i want to change name', 0, '2021-11-01 18:45:30', '2021-11-01 18:45:30'),
(5, 'imaditya1106@gmail.com', 'aditya1106@getnada.com', 'asdasdadsadsads', 'asdasdadsadssasadsaddsa', 0, '2021-11-01 18:47:00', '2021-11-01 18:47:00'),
(6, 'imaditya1106@gmail.com', 'aditya1106@getnada.com', 'asdasdadsadsads', 'asdasdadsadssasadsaddsa', 0, '2021-11-01 18:49:29', '2021-11-01 18:49:29'),
(7, 'imaditya1106@gmail.com', 'aditya1106@getnada.com', 'asdasdadsadsads', 'asdasdadsadssasadsaddsa', 0, '2021-11-01 18:50:01', '2021-11-01 18:50:01'),
(8, 'asditya', 'admin@1.com', 'adotuasd asdpl', 'aspldp[asd kopasdopkp[a das asd', 0, '2022-05-06 16:57:23', '2022-05-06 16:57:23'),
(9, 'okkk', 'kkmm@getnada.com', 'okk', 'ikkkk', 0, '2022-05-17 12:39:51', '2022-05-17 12:39:51'),
(10, 'fgdfgd', 'fgfghff@getnada.com', 'ghghg', 'ghghghg ghghgh bnbnb nbnbn', 0, '2022-05-17 12:40:20', '2022-05-17 12:40:20'),
(11, 'bdbdbeb', 'bsbdbs@gmail.com', 'sheeh', 'ehdhdhdhdhdhd', 0, '2022-07-07 18:37:28', '2022-07-07 18:37:28');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `title`, `slug`, `subject`, `status`, `content`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Subadmin', 'sub-admin', 'Create New Subadmin', 1, '<p>Thankyou for registering with our Collegator .&nbsp;</p>\n<p>Your credintials are:-</p>\n<p>mail id is:{email}</p>\n<p>password:{password}</p>\n<p>url is:{url}</p>\n<p>Thanks &amp; Regard</p>\n<p>Collegator</p>', 0, '2021-01-06 13:23:24', '2021-01-12 00:04:11'),
(3, 'Register', 'register-user', 'Register Account', 1, '<p>Thankyou for registering with our Collegator.&nbsp;</p> <p>Your credintials are:-</p> <p>mail id is:{email}</p> <p>password:{password}</p> <p>url is:{url}</p> <p>Thanks &amp; Regard</p> <p>Collegator</p>', 1, '2021-01-12 07:17:41', '2021-01-19 02:18:14'),
(6, 'Contact Form', 'contact-form', 'Enquiry Contact Form', 1, '<p>We have got an enquiry </p> <p> from :{name}</p> <p> Regarding : {detail} </p> <p> Having Phone Number: {number} </p> <p> and Mail Id is: {email} </p>', 0, '2021-04-03 12:20:38', '2021-05-11 06:35:12'),
(11, 'Nickname Updated', 'nickname-update', 'Employee Nickname Updated', 1, '<p> Hello {user} Your nickname is updated by admin , now your nickname is {nickname}  </p>', 0, '2021-04-03 12:43:49', '2021-04-03 12:43:49'),
(14, 'Subadmin Update', 'sub-admin-update', 'Subadmin Email Updated', 1, '<p>Hello {oldEmail}.&nbsp;</p>\n<p>Your email id is updated by admin</p>\n<p>Please use this email for further login</p>\n<p>mail id is:{email}</p>\n<p>url is:{url}</p>\n<p>Thanks &amp; Regard</p>\n<p>Collegator</p>', 0, '2021-01-06 13:23:24', '2021-01-12 00:04:11'),
(15, 'Account Deactivated', 'account-deactivated', 'Account Deactivated', 1, '<p>Hello {name}.&nbsp;</p>\n<p>Your account is Deactivated by admin</p>\n<p>Thanks &amp; Regard</p>\n<p>Collegator</p>', 0, '2021-01-06 13:23:24', '2021-01-12 00:04:11'),
(16, 'Account Activated', 'account-activated', 'Account Activated', 1, '<p>Hello {name}.&nbsp;</p>\n<p>Your account is Activated by admin</p>\n<p>Thanks &amp; Regard</p>\n<p>Collegator</p>', 0, '2021-01-06 13:23:24', '2021-01-12 00:04:11'),
(17, 'Account Deleted', 'account-deleted', 'Account Deleted', 1, '<p>Hello {name}.&nbsp;</p>\n<p>Your account is Deleted by admin</p>\n<p>Thanks &amp; Regard</p>\n<p>Collegator</p>', 0, '2021-01-06 13:23:24', '2021-01-12 00:04:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailJob\",\"command\":\"O:21:\\\"App\\\\Jobs\\\\SendEmailJob\\\":9:{s:10:\\\"\\u0000*\\u0000details\\\";a:3:{s:7:\\\"content\\\";a:1:{s:7:\\\"content\\\";s:245:\\\"<p>Thankyou for registering with our Collegator.&nbsp;<\\/p> <p>Your credintials are:-<\\/p> <p>mail id is:dee1@getnada.com<\\/p> <p>password:Admin@123<\\/p> <p>url is:https:\\/\\/collegator.devtechnosys.info<\\/p> <p>Thanks &amp; Regard<\\/p> <p>Collegator<\\/p>\\\";}s:7:\\\"subject\\\";s:16:\\\"Register Account\\\";s:6:\\\"touser\\\";s:16:\\\"dee1@getnada.com\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Expected response code 354 but got code \"550\", with message \"550 5.4.5 Daily user sending quota exceeded. d8-20020a170902654800b0016d710d8af7sm2452082pln.142 - gsmtp\r\n\" in /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php:459\nStack trace:\n#0 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(344): Swift_Transport_AbstractSmtpTransport->assertResponseCode()\n#1 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(305): Swift_Transport_AbstractSmtpTransport->executeCommand()\n#2 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(392): Swift_Transport_EsmtpTransport->executeCommand()\n#3 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(499): Swift_Transport_AbstractSmtpTransport->doDataCommand()\n#4 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(518): Swift_Transport_AbstractSmtpTransport->doMailTransaction()\n#5 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(206): Swift_Transport_AbstractSmtpTransport->sendTo()\n#6 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(71): Swift_Transport_AbstractSmtpTransport->send()\n#7 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(488): Swift_Mailer->send()\n#8 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(261): Illuminate\\Mail\\Mailer->sendSwiftMessage()\n#9 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): Illuminate\\Mail\\Mailer->send()\n#10 /home/collegat/public_html/app/Jobs/SendEmailJob.php(43): Illuminate\\Support\\Facades\\Facade::__callStatic()\n#11 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendEmailJob->handle()\n#12 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#14 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#15 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call()\n#16 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call()\n#17 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#18 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#19 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then()\n#20 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#21 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#22 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then()\n#24 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#25 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call()\n#26 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process()\n#28 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob()\n#29 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon()\n#30 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#31 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#34 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#35 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call()\n#36 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call()\n#37 /home/collegat/public_html/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute()\n#38 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#39 /home/collegat/public_html/vendor/symfony/console/Application.php(1009): Illuminate\\Console\\Command->run()\n#40 /home/collegat/public_html/vendor/symfony/console/Application.php(273): Symfony\\Component\\Console\\Application->doRunCommand()\n#41 /home/collegat/public_html/vendor/symfony/console/Application.php(149): Symfony\\Component\\Console\\Application->doRun()\n#42 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run()\n#43 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run()\n#44 /home/collegat/public_html/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#45 {main}', '2022-08-05 09:23:16'),
(2, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailJob\",\"command\":\"O:21:\\\"App\\\\Jobs\\\\SendEmailJob\\\":9:{s:10:\\\"\\u0000*\\u0000details\\\";a:3:{s:7:\\\"content\\\";a:1:{s:7:\\\"content\\\";s:249:\\\"<p>Thankyou for registering with our Collegator.&nbsp;<\\/p> <p>Your credintials are:-<\\/p> <p>mail id is:hshshehhd@hotmail.com<\\/p> <p>password:Aa1234567<\\/p> <p>url is:http:\\/\\/collegator.devtechnosys.info<\\/p> <p>Thanks &amp; Regard<\\/p> <p>Collegator<\\/p>\\\";}s:7:\\\"subject\\\";s:16:\\\"Register Account\\\";s:6:\\\"touser\\\";s:21:\\\"hshshehhd@hotmail.com\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Expected response code 354 but got code \"550\", with message \"550 5.4.5 Daily user sending quota exceeded. w15-20020aa7954f000000b0052e2a1edab8sm2760239pfq.24 - gsmtp\r\n\" in /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php:459\nStack trace:\n#0 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(344): Swift_Transport_AbstractSmtpTransport->assertResponseCode()\n#1 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(305): Swift_Transport_AbstractSmtpTransport->executeCommand()\n#2 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(392): Swift_Transport_EsmtpTransport->executeCommand()\n#3 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(499): Swift_Transport_AbstractSmtpTransport->doDataCommand()\n#4 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(518): Swift_Transport_AbstractSmtpTransport->doMailTransaction()\n#5 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(206): Swift_Transport_AbstractSmtpTransport->sendTo()\n#6 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(71): Swift_Transport_AbstractSmtpTransport->send()\n#7 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(488): Swift_Mailer->send()\n#8 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(261): Illuminate\\Mail\\Mailer->sendSwiftMessage()\n#9 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): Illuminate\\Mail\\Mailer->send()\n#10 /home/collegat/public_html/app/Jobs/SendEmailJob.php(43): Illuminate\\Support\\Facades\\Facade::__callStatic()\n#11 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendEmailJob->handle()\n#12 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#14 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#15 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call()\n#16 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call()\n#17 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#18 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#19 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then()\n#20 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#21 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#22 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then()\n#24 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#25 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call()\n#26 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process()\n#28 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob()\n#29 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon()\n#30 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#31 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#34 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#35 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call()\n#36 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call()\n#37 /home/collegat/public_html/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute()\n#38 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#39 /home/collegat/public_html/vendor/symfony/console/Application.php(1009): Illuminate\\Console\\Command->run()\n#40 /home/collegat/public_html/vendor/symfony/console/Application.php(273): Symfony\\Component\\Console\\Application->doRunCommand()\n#41 /home/collegat/public_html/vendor/symfony/console/Application.php(149): Symfony\\Component\\Console\\Application->doRun()\n#42 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run()\n#43 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run()\n#44 /home/collegat/public_html/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#45 {main}', '2022-08-05 11:08:35'),
(3, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailJob\",\"command\":\"O:21:\\\"App\\\\Jobs\\\\SendEmailJob\\\":9:{s:10:\\\"\\u0000*\\u0000details\\\";a:3:{s:7:\\\"content\\\";a:1:{s:7:\\\"content\\\";s:251:\\\"<p>Thankyou for registering with our Collegator.&nbsp;<\\/p> <p>Your credintials are:-<\\/p> <p>mail id is:hehehehhdss@hotmail.com<\\/p> <p>password:Aa1234567<\\/p> <p>url is:http:\\/\\/collegator.devtechnosys.info<\\/p> <p>Thanks &amp; Regard<\\/p> <p>Collegator<\\/p>\\\";}s:7:\\\"subject\\\";s:16:\\\"Register Account\\\";s:6:\\\"touser\\\";s:23:\\\"hehehehhdss@hotmail.com\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Expected response code 354 but got code \"550\", with message \"550 5.4.5 Daily user sending quota exceeded. z23-20020aa79597000000b00528c066678csm3233515pfj.72 - gsmtp\r\n\" in /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php:459\nStack trace:\n#0 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(344): Swift_Transport_AbstractSmtpTransport->assertResponseCode()\n#1 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(305): Swift_Transport_AbstractSmtpTransport->executeCommand()\n#2 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(392): Swift_Transport_EsmtpTransport->executeCommand()\n#3 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(499): Swift_Transport_AbstractSmtpTransport->doDataCommand()\n#4 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(518): Swift_Transport_AbstractSmtpTransport->doMailTransaction()\n#5 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(206): Swift_Transport_AbstractSmtpTransport->sendTo()\n#6 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(71): Swift_Transport_AbstractSmtpTransport->send()\n#7 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(488): Swift_Mailer->send()\n#8 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(261): Illuminate\\Mail\\Mailer->sendSwiftMessage()\n#9 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): Illuminate\\Mail\\Mailer->send()\n#10 /home/collegat/public_html/app/Jobs/SendEmailJob.php(43): Illuminate\\Support\\Facades\\Facade::__callStatic()\n#11 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendEmailJob->handle()\n#12 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#14 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#15 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call()\n#16 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call()\n#17 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#18 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#19 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then()\n#20 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#21 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#22 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then()\n#24 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#25 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call()\n#26 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process()\n#28 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob()\n#29 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon()\n#30 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#31 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#34 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#35 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call()\n#36 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call()\n#37 /home/collegat/public_html/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute()\n#38 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#39 /home/collegat/public_html/vendor/symfony/console/Application.php(1009): Illuminate\\Console\\Command->run()\n#40 /home/collegat/public_html/vendor/symfony/console/Application.php(273): Symfony\\Component\\Console\\Application->doRunCommand()\n#41 /home/collegat/public_html/vendor/symfony/console/Application.php(149): Symfony\\Component\\Console\\Application->doRun()\n#42 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run()\n#43 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run()\n#44 /home/collegat/public_html/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#45 {main}', '2022-08-05 15:33:14'),
(4, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailJob\",\"command\":\"O:21:\\\"App\\\\Jobs\\\\SendEmailJob\\\":9:{s:10:\\\"\\u0000*\\u0000details\\\";a:3:{s:7:\\\"content\\\";a:1:{s:7:\\\"content\\\";s:251:\\\"<p>Thankyou for registering with our Collegator.&nbsp;<\\/p> <p>Your credintials are:-<\\/p> <p>mail id is:frontuser@getnada.com<\\/p> <p>password:Admin@1234<\\/p> <p>url is:https:\\/\\/collegator.devtechnosys.info<\\/p> <p>Thanks &amp; Regard<\\/p> <p>Collegator<\\/p>\\\";}s:7:\\\"subject\\\";s:16:\\\"Register Account\\\";s:6:\\\"touser\\\";s:21:\\\"frontuser@getnada.com\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"testingbydev@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials d7-20020a17090ad3c700b001f3095af6a9sm758306pjw.38 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials d7-20020a17090ad3c700b001f3095af6a9sm758306pjw.38 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials d7-20020a17090ad3c700b001f3095af6a9sm758306pjw.38 - gsmtp\r\n\". in /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/Esmtp/AuthHandler.php:191\nStack trace:\n#0 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo()\n#1 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(488): Swift_Mailer->send()\n#4 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(261): Illuminate\\Mail\\Mailer->sendSwiftMessage()\n#5 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): Illuminate\\Mail\\Mailer->send()\n#6 /home/collegat/public_html/app/Jobs/SendEmailJob.php(43): Illuminate\\Support\\Facades\\Facade::__callStatic()\n#7 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendEmailJob->handle()\n#8 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#9 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#10 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#11 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call()\n#12 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call()\n#13 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#14 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#15 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then()\n#16 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#17 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#18 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#19 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then()\n#20 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#21 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call()\n#22 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#23 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process()\n#24 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob()\n#25 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon()\n#26 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#27 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#28 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#29 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#30 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#31 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call()\n#32 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call()\n#33 /home/collegat/public_html/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute()\n#34 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#35 /home/collegat/public_html/vendor/symfony/console/Application.php(1009): Illuminate\\Console\\Command->run()\n#36 /home/collegat/public_html/vendor/symfony/console/Application.php(273): Symfony\\Component\\Console\\Application->doRunCommand()\n#37 /home/collegat/public_html/vendor/symfony/console/Application.php(149): Symfony\\Component\\Console\\Application->doRun()\n#38 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run()\n#39 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run()\n#40 /home/collegat/public_html/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#41 {main}', '2022-08-18 07:38:23'),
(5, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailJob\",\"command\":\"O:21:\\\"App\\\\Jobs\\\\SendEmailJob\\\":9:{s:10:\\\"\\u0000*\\u0000details\\\";a:3:{s:7:\\\"content\\\";a:1:{s:7:\\\"content\\\";s:244:\\\"<p>Thankyou for registering with our Collegator.&nbsp;<\\/p> <p>Your credintials are:-<\\/p> <p>mail id is:res@getnada.com<\\/p> <p>password:Admin@123<\\/p> <p>url is:https:\\/\\/collegator.devtechnosys.info<\\/p> <p>Thanks &amp; Regard<\\/p> <p>Collegator<\\/p>\\\";}s:7:\\\"subject\\\";s:16:\\\"Register Account\\\";s:6:\\\"touser\\\";s:15:\\\"res@getnada.com\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"testingbydev@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials b20-20020a621b14000000b005327beb318asm2518864pfb.128 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials b20-20020a621b14000000b005327beb318asm2518864pfb.128 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials b20-20020a621b14000000b005327beb318asm2518864pfb.128 - gsmtp\r\n\". in /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/Esmtp/AuthHandler.php:191\nStack trace:\n#0 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo()\n#1 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(488): Swift_Mailer->send()\n#4 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(261): Illuminate\\Mail\\Mailer->sendSwiftMessage()\n#5 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): Illuminate\\Mail\\Mailer->send()\n#6 /home/collegat/public_html/app/Jobs/SendEmailJob.php(43): Illuminate\\Support\\Facades\\Facade::__callStatic()\n#7 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendEmailJob->handle()\n#8 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#9 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#10 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#11 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call()\n#12 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call()\n#13 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#14 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#15 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then()\n#16 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#17 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#18 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#19 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then()\n#20 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#21 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call()\n#22 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#23 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process()\n#24 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob()\n#25 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon()\n#26 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#27 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#28 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#29 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#30 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#31 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call()\n#32 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call()\n#33 /home/collegat/public_html/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute()\n#34 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#35 /home/collegat/public_html/vendor/symfony/console/Application.php(1009): Illuminate\\Console\\Command->run()\n#36 /home/collegat/public_html/vendor/symfony/console/Application.php(273): Symfony\\Component\\Console\\Application->doRunCommand()\n#37 /home/collegat/public_html/vendor/symfony/console/Application.php(149): Symfony\\Component\\Console\\Application->doRun()\n#38 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run()\n#39 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run()\n#40 /home/collegat/public_html/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#41 {main}', '2022-08-19 04:38:05'),
(6, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailJob\",\"command\":\"O:21:\\\"App\\\\Jobs\\\\SendEmailJob\\\":9:{s:10:\\\"\\u0000*\\u0000details\\\";a:3:{s:7:\\\"content\\\";a:1:{s:7:\\\"content\\\";s:251:\\\"<p>Thankyou for registering with our Collegator.&nbsp;<\\/p> <p>Your credintials are:-<\\/p> <p>mail id is:hsudhdhhdud@hotmail.com<\\/p> <p>password:Aa1234567<\\/p> <p>url is:http:\\/\\/collegator.devtechnosys.info<\\/p> <p>Thanks &amp; Regard<\\/p> <p>Collegator<\\/p>\\\";}s:7:\\\"subject\\\";s:16:\\\"Register Account\\\";s:6:\\\"touser\\\";s:23:\\\"hsudhdhhdud@hotmail.com\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"testingbydev@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials n10-20020a6546ca000000b0042a4612c07esm3074567pgr.39 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials n10-20020a6546ca000000b0042a4612c07esm3074567pgr.39 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials n10-20020a6546ca000000b0042a4612c07esm3074567pgr.39 - gsmtp\r\n\". in /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/Esmtp/AuthHandler.php:191\nStack trace:\n#0 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo()\n#1 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(488): Swift_Mailer->send()\n#4 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(261): Illuminate\\Mail\\Mailer->sendSwiftMessage()\n#5 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): Illuminate\\Mail\\Mailer->send()\n#6 /home/collegat/public_html/app/Jobs/SendEmailJob.php(43): Illuminate\\Support\\Facades\\Facade::__callStatic()\n#7 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendEmailJob->handle()\n#8 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#9 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#10 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#11 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call()\n#12 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call()\n#13 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#14 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#15 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then()\n#16 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#17 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#18 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#19 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then()\n#20 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#21 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call()\n#22 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#23 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process()\n#24 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob()\n#25 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon()\n#26 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#27 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#28 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#29 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#30 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#31 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call()\n#32 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call()\n#33 /home/collegat/public_html/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute()\n#34 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#35 /home/collegat/public_html/vendor/symfony/console/Application.php(1009): Illuminate\\Console\\Command->run()\n#36 /home/collegat/public_html/vendor/symfony/console/Application.php(273): Symfony\\Component\\Console\\Application->doRunCommand()\n#37 /home/collegat/public_html/vendor/symfony/console/Application.php(149): Symfony\\Component\\Console\\Application->doRun()\n#38 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run()\n#39 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run()\n#40 /home/collegat/public_html/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#41 {main}', '2022-08-21 04:20:16');
INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(7, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailJob\",\"command\":\"O:21:\\\"App\\\\Jobs\\\\SendEmailJob\\\":9:{s:10:\\\"\\u0000*\\u0000details\\\";a:3:{s:7:\\\"content\\\";a:1:{s:7:\\\"content\\\";s:251:\\\"<p>Thankyou for registering with our Collegator.&nbsp;<\\/p> <p>Your credintials are:-<\\/p> <p>mail id is:hsjdhdhhdhd@hotmail.com<\\/p> <p>password:Aa1234567<\\/p> <p>url is:http:\\/\\/collegator.devtechnosys.info<\\/p> <p>Thanks &amp; Regard<\\/p> <p>Collegator<\\/p>\\\";}s:7:\\\"subject\\\";s:16:\\\"Register Account\\\";s:6:\\\"touser\\\";s:23:\\\"hsjdhdhhdhd@hotmail.com\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"testingbydev@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials iw3-20020a170903044300b00172c7d6badcsm7577071plb.251 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials iw3-20020a170903044300b00172c7d6badcsm7577071plb.251 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials iw3-20020a170903044300b00172c7d6badcsm7577071plb.251 - gsmtp\r\n\". in /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/Esmtp/AuthHandler.php:191\nStack trace:\n#0 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo()\n#1 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(488): Swift_Mailer->send()\n#4 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(261): Illuminate\\Mail\\Mailer->sendSwiftMessage()\n#5 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): Illuminate\\Mail\\Mailer->send()\n#6 /home/collegat/public_html/app/Jobs/SendEmailJob.php(43): Illuminate\\Support\\Facades\\Facade::__callStatic()\n#7 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendEmailJob->handle()\n#8 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#9 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#10 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#11 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call()\n#12 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call()\n#13 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#14 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#15 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then()\n#16 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#17 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#18 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#19 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then()\n#20 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#21 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call()\n#22 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#23 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process()\n#24 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob()\n#25 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon()\n#26 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#27 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#28 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#29 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#30 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#31 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call()\n#32 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call()\n#33 /home/collegat/public_html/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute()\n#34 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#35 /home/collegat/public_html/vendor/symfony/console/Application.php(1009): Illuminate\\Console\\Command->run()\n#36 /home/collegat/public_html/vendor/symfony/console/Application.php(273): Symfony\\Component\\Console\\Application->doRunCommand()\n#37 /home/collegat/public_html/vendor/symfony/console/Application.php(149): Symfony\\Component\\Console\\Application->doRun()\n#38 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run()\n#39 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run()\n#40 /home/collegat/public_html/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#41 {main}', '2022-08-24 04:15:09'),
(8, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailJob\",\"command\":\"O:21:\\\"App\\\\Jobs\\\\SendEmailJob\\\":9:{s:10:\\\"\\u0000*\\u0000details\\\";a:3:{s:7:\\\"content\\\";a:1:{s:7:\\\"content\\\";s:249:\\\"<p>Thankyou for registering with our Collegator.&nbsp;<\\/p> <p>Your credintials are:-<\\/p> <p>mail id is:aditya112@getnada.com<\\/p> <p>password:Admin@123<\\/p> <p>url is:http:\\/\\/collegator.devtechnosys.info<\\/p> <p>Thanks &amp; Regard<\\/p> <p>Collegator<\\/p>\\\";}s:7:\\\"subject\\\";s:16:\\\"Register Account\\\";s:6:\\\"touser\\\";s:21:\\\"aditya112@getnada.com\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"testingbydev@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials f15-20020a170902684f00b00172b42c350dsm7071810pln.219 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials f15-20020a170902684f00b00172b42c350dsm7071810pln.219 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials f15-20020a170902684f00b00172b42c350dsm7071810pln.219 - gsmtp\r\n\". in /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/Esmtp/AuthHandler.php:191\nStack trace:\n#0 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo()\n#1 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 /home/collegat/public_html/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(488): Swift_Mailer->send()\n#4 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(261): Illuminate\\Mail\\Mailer->sendSwiftMessage()\n#5 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): Illuminate\\Mail\\Mailer->send()\n#6 /home/collegat/public_html/app/Jobs/SendEmailJob.php(43): Illuminate\\Support\\Facades\\Facade::__callStatic()\n#7 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendEmailJob->handle()\n#8 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#9 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#10 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#11 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call()\n#12 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call()\n#13 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#14 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#15 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then()\n#16 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#17 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#18 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#19 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then()\n#20 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#21 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call()\n#22 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#23 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process()\n#24 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob()\n#25 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon()\n#26 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#27 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#28 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#29 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#30 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#31 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call()\n#32 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call()\n#33 /home/collegat/public_html/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute()\n#34 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#35 /home/collegat/public_html/vendor/symfony/console/Application.php(1009): Illuminate\\Console\\Command->run()\n#36 /home/collegat/public_html/vendor/symfony/console/Application.php(273): Symfony\\Component\\Console\\Application->doRunCommand()\n#37 /home/collegat/public_html/vendor/symfony/console/Application.php(149): Symfony\\Component\\Console\\Application->doRun()\n#38 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run()\n#39 /home/collegat/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run()\n#40 /home/collegat/public_html/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#41 {main}', '2022-08-29 10:03:31');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `global_settings`
--

CREATE TABLE `global_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_base64` longblob NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `latitude` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longtitude` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `play_store` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_store` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytic_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `professor_rating` int(11) NOT NULL DEFAULT 1,
  `teacher_rating` int(11) NOT NULL DEFAULT 1,
  `university_rating` int(11) NOT NULL DEFAULT 1,
  `slider_view` int(11) NOT NULL DEFAULT 1,
  `about_us_view` int(11) NOT NULL DEFAULT 1,
  `news_view` int(11) NOT NULL DEFAULT 1,
  `country_banner` int(11) NOT NULL DEFAULT 1,
  `university_school` int(11) NOT NULL DEFAULT 1,
  `find_rate_university` int(11) NOT NULL DEFAULT 1,
  `find_rate_teacher` int(11) NOT NULL DEFAULT 1,
  `private_message` int(11) NOT NULL DEFAULT 1,
  `show_language` int(11) NOT NULL DEFAULT 1 COMMENT '	1:show,0:disable	'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `global_settings`
--

INSERT INTO `global_settings` (`id`, `name`, `logo`, `phone_no`, `email`, `favicon`, `logo_base64`, `address`, `footer`, `created_at`, `updated_at`, `latitude`, `longtitude`, `facebook`, `twitter`, `linkedin`, `instagram`, `youtube`, `play_store`, `app_store`, `google_analytic_script`, `professor_rating`, `teacher_rating`, `university_rating`, `slider_view`, `about_us_view`, `news_view`, `country_banner`, `university_school`, `find_rate_university`, `find_rate_teacher`, `private_message`, `show_language`) VALUES
(1, 'Collegator logo', '1622816828.png', '+627998654676', 'Collegator@gmail.com', '1636611616favicon.jpg', 0x6956424f5277304b47676f414141414e535568455567414141366f4141414731434159414141447759776c3541414141475852465748525462325a30643246795a5142425a4739695a53424a6257466e5a564a6c5957523563636c6c5041414141795a70564668305745314d4f6d4e76625335685a4739695a53353462584141414141414144772f654842685932746c644342695a576470626a30693737752f496942705a443069567a564e4d4531775132566f61556836636d5654656b355559337072597a6c6b496a382b494478344f6e68746347316c6447456765473173626e4d366544306959575276596d5536626e4d366257563059533869494867366547317764477339496b466b62324a6c4946684e5543424462334a6c494455754e69316a4d544d34494463354c6a45314f5467794e4377674d6a41784e6938774f5338784e4330774d546f774f546f774d5341674943416749434167496a346750484a6b5a6a70535245596765473173626e4d36636d526d50534a6f644852774f693876643364334c6e637a4c6d39795a7938784f546b354c7a41794c7a49794c584a6b5a69317a6557353059586774626e4d6a496a346750484a6b5a6a70455a584e6a636d6c7764476c76626942795a47593659574a76645851394969496765473173626e4d366547317750534a6f644852774f693876626e4d7559575276596d5575593239744c336868634338784c6a41764969423462577875637a70346258424e545430696148523063446f764c32357a4c6d466b62324a6c4c6d4e7662533934595841764d5334774c3231744c79496765473173626e4d36633352535a575939496d6830644841364c793975637935685a4739695a53356a62323076654746774c7a45754d43397a56486c775a5339535a584e7664584a6a5a564a6c5a694d694948687463447044636d566864473979564739766244306951575276596d5567554768766447397a6147397749454e44494449774d5463674b466470626d527664334d70496942346258424e5454704a626e4e305957356a5a556c4550534a346258417561576c6b4f6a42424d5445794e544e46517a5179516a457852554a434f546843516a6444526b4d774e446c424d6a6c43496942346258424e5454704562324e316257567564456c4550534a34625841755a476c6b4f6a42424d5445794e544e47517a5179516a457852554a434f546843516a6444526b4d774e446c424d6a6c43496a3467504868746345314e4f6b526c636d6c325a575247636d397449484e30556d566d4f6d6c7563335268626d4e6c53555139496e687463433570615751364d4545784d5449314d304e444e444a434d544646516b49354f454a434e304e47517a41304f5545794f55496949484e30556d566d4f6d5276593356745a57353053555139496e68746343356b615751364d4545784d5449314d3052444e444a434d544646516b49354f454a434e304e47517a41304f5545794f5549694c7a3467504339795a4759365247567a59334a70634852706232342b49447776636d526d4f6c4a45526a3467504339344f6e68746347316c6447452b4944772f654842685932746c6443426c626d5139496e4969507a3771436e7470414145374f556c455156523432757a6443594363525a6b2f2f717036332b365a6e6a4d586755673442584a7768747768423452777953463351734f417349714b71374c69756e39583358563164623377703673756f714a436b6b37434a584a44495063644345636746784275777046727a723765717672585531567654796467434a43726b2b396e743532656e70344a382f626250665874716e6f657272566d41414141414141414148734b6a71414b4141414141414141434b6f414141414141414141434b6f4141414141414143416f416f4141414141414143416f416f4141414141414141497167414141414141414141497167414141414141414943674367414141414141414943674367414141414141414169714141414141414141414169714141414141414141414169714141414141414141674b414b4141414141414141674b414b4141414141414141434b6f414141414141414141434b6f4141414141414143416f416f4141414141414143416f416f4141414141414141497167414141504268626e367370586257717569595257746152722f5a6d75796e49386e716b6e4c6a4551636d6e6837564c7a6c2f624c2b363138343549535678704141414142425541514141646f7266504e72633850697133416b4c56756650664b395a48324c2b736a4b6d57647238696658335549787a7754722f334f704d774c6738397042673573696a557650484856327a39724f445568474f4a414141414949714141444178334c6a4179316435363470484c74675a66624d397a704d4d47555245314b6b56574343715a434d52794854516e33596e31397a6f556c5659613447476159564f37703331647a5252346d5a6f2f7332764478685248554252786f41414242554151414134415039364c354e2b793159475232335945332b724d3335714a6451504b303468637a41356378494d534543457a767037366c79345a4e7437393957637a3975517176536a417561645658306563626b58486e4570384b6c492f756b5a6f2f746e3178392b596a365042344a4141424155415541414e67487a566e54776565734b50615975544937644f4761776a6e5a6f7134334f544a4e66797135435a4e616d46424a495655484e6c2f61763648615a56616d704c6b746447477a744f78333234546d544d56334e643948595a582b4855552f33507a676b4173574b5a5768662b7a67486f6e6c702f524e5048524b2f357256563432757a6548524167414142465541414943393050546e63324c57796f35504c5679745431793870754f4d6a696a7159744a696d76615a43684d636c5a30644c57644371426232567275346c336375345931445a796e416267737445365a7673776d59766f65626e4770754d4d475567712b4a717a37414b6c61616e6458432f33737177336e41446d786b4b3059666b337030394a484a46563838746245646a7959414143436f41674141564b41486e756b4935713071666d726571766242533964475a2b576c717546437072554d58506a6b67512b65626b62547a584947356f4e666f68742f72756d3664434854664f5173744c4f744e6d7a61477a2f326e32555853495630475a57582f794264396a476b4b56373733325033754372463975736958683354742f722b4d663253792f3935584a6457504e6f4141494367436741417341653637356e325950627a7559506d724978475076564b666d796b565a56674b7133737a4356334d356f6d2b4e6c4376634b48552f7145756138484a6a684b477769317139784c49645a4f6d38623330583457564c4e34387057622f2f76777636307567417174336379702f58484368562f6d5a6c6d46636a39512b582b724e4f73713350647963313377684e73626135636a78394f355045502f666433717842756a6a30773863484c2f756d652b666d5a394d3834474141424155415541414e674e376c3661445765747a6834362b2f6d4f4d632b39466f3152564f564946394e4d4a303355557934555576436a4547674471417549584b724f6f476f444a45316f426f774646457a7066676e374e597171796b3636787357504e4e757963424a6e3231644953666c677956686e77745732714a494e6d336146622b442b473331777466656b43565164324373556d685839444f466e6438312f722f3376396b754741793259464b47356d7263466d7570727767316a6a71723632386a2b31632f2b323263614e2b42734151414142465541414943643450614672596d35713650445a71374b6a6e332b3965776f786b4d542b32526178587447626368547054426f77796f4655466f7961774d654b7774334c6d5147356e4d5a7a356a616d3658626c3272336f5072514742644d4b6f564e375834655665396c4366505a683752464c632b7a576d2b317848664c5143764d7632324c4b334666565a6843746930732f41484c676d32496c65375438723275584a666c5a2f757a4d6a574a5950506f506c58336a4f7762506a327162383336305832714d5341414141414556514141674939713076795771706b723833316d7670412f343755334373644b586855776b552f62665a3132426c4a752f36546d5071777a734d644250736a554a4d586d775965483038636358625034314c364a74306633713846524241414142465541414943743354713374587247696c792f6553754b5931392b7233436958353662447167697277377442434c5452656236772f6a71756662504776363262544f6f2b745850626c5a572b2b4f6d53374f774a7642504445516947764c70344b47782f56507a5276577465656530593673556a6877414143436f416744415075656d4765313143315a3339486c3852654863647a635844706561797643717446332b366f734e55577357726633734b53327870646c55786b7574586a436c756a312f2f64307935644c53594673394f463775484f2b523961317a684b517178356d5168666c426879596647644f2f6173475950716b337a7a7178477345564141415156414541594f2f7a66394e62366d61734c687933594558323948584e305a477566796e314d66564c55793166305a627136644b4d7174524d68386f464b61724c793131526f38355a5162574e505a396775563438666d625642337a463435474250643643696a5852593641553434487730642b33346d48354447644a4e764451366f6447484a56636445722f3543766e4436794e6347414241414242465141414b7336764875316f6e503163382f467a5870426e62326f75397461684c6579545a6846335330367071713739363853334b486845613379354356533250557641533857435375567774636c4949764339527a754c4a38452f59487641636c656f4b613530374e7671304873434a70637971616d51552b44434b6c6375754e6f657239533052396d514b2b6b4e41756f667135567469584e63372b6f5a492f736b353433746c316837306444474967343041414167714149417742376e3577383064357539756a68672f764e745a32334f383134304930637a70696f4f6f707958717436365071487862637a3346665754644c613672764233313636364c58665662573262474b624b6769762b726e33345833397157784f35597857337739466c2f5670747578766876366273704c624c2f6b5566586f55392f6f47754d6c2b696e304e33434d7371474f734d2f65776a50355663656d7266716b6647394575394e474634625145484867414145465142414743582b2b2f37572f6162737a49336550367139724f7a57643546433536322b306a6a5a6278324a692b30793078356f4a6c6d666c2b6b6a726337786d3159505073337969333774646344337a4e556938366c766d79727343736a46334a6847332f396c5176374e6e334b7262376f48684f374c4e67636130464c712b6e4e414b583834796a4c657367715834424a644f3531706342712b382b36706356326c707a7a444466662b2b6d65624f6d6f6674557a5276564e76584431714e6f734867674141454251425143414857724f6969782f6648586867466d72436b4f66584e4e2b576e7368364d4b34544c742b6f38774649433632367666706735414e537477464a62717a4b4b336c3763784b6357456b485964587557565030666a6e6c6863436f6a416c416f5a5a3151386e2f4346533554316a4f306348397267473576396f65612f62302b703778624c34757534735a4d586a787939686269375945477a3376744a5362617148466439486c384a75686a346533434e63507270506376715966716d566e7a2b3572674f5043674141494b6743414d424838746a79646a357a645854676e4a567451786139704d2b52556c5a707064496f584151665053527a48325470756a6135566d526f504e4b726b623877716e2f747736663054537a2f30716d4e375468534141414971674141414674342b4b6d636d4c6b6d313376577975784a543732555036326f6552566a3072614b6f58366d62696b6f513456642b4a696b53616d686d35323173376142582b70747039507448746565446548616b55636c48686c31644e587936302f72306f786a426743416f416f41415075592b352f73434b61764c427932594533377347557671644d3531307a4b71436b49416c734231706543375677476970414b4835643265313374636d44756c6e647a616f4d6a744b73794c4b54352f344170577a434c4b67736e4d7251317555653965485634333854306b34394d5066574e63786f32343041434143436f41674441587562757857336839465746492b65757a6f395a2b567237434d56436b784343744f76785171676f55594c46425850636e6c44746975795535394e5370566541375756434b5575615579667974624a45615461564b39635431345855674159716467626674537169496b326844626a6d4c706e36525044757944375639352f55587a7a7a372b643257342f6a436743416f416f414142566d36734b4f354979563755664d585a6b375a6455364e59494b32334152704b6b33716176695376667966556a6936727755567257775656316439566147446a437751344b714c6353307852736363642f632b4c787a4a78706e6f666c6636566f567859575a664c5574327439713331595274747077706a6f68576b63634764352f63762b7170614f4f724876333550344a6e4b6b4141416971414143774a376c31546e7631374457356f3261767a703232646c3368524664314e556a62775831635564664f6d7070674946332f556c6578312f637070612f787a6d544b7155324a346d57336677444d72734c3242745834464b527a696c507a476e50754b65587961647a624e65377661717346552f756877467a564c706a475661506a4b744c30646f72794d374657496c4d64717461685279516648746d3361736e4a666176586a54756d426f4d654141414556514141324a582b504c4d744e574e316f662f636c53326e7662614248327437696971567071575462696b6c4465787045462f6576715573684e7237736337657050463974584b74534a53774e373976365739355347554d515257325a2f685231705a492b6e4e48644c612f6f5242717a727453663161325a623963393948643158584a3461346e72325a627444617962386f4976304b4169557853714936426831552f4e75626f3667556e39306d2b65636278745171504251414167696f41414f7841663379737066615256666e6a353633734f4f75645a6e32346e5656536f7178646a4f6f4d6a585934626b4b6e6e573153372b3976476f64527a58305169472b506736663250775139536d4548686c5875773257634f754e7a7977645331384647752f4f56377176636452644157656c3846557158336a79786239446f6f6a745874662b5a504f3454472f6632705473476d5a4158383863646c4a6f3139706a556e4a503768712b665061424f346e454241454251425143416a2b42336a37545854312f644e6d446871754a7037375a45682f7562307a677941422b526e38436c6f477444623043424f5a6b4a56466232507a51313735532b56544e4739366c35396149684e5555634c4141414246554141436a7a792f7462753878384d54646733737257737a65336862316f4e70527a6b6262395337473846754354444839386d795733526b43716f71747772595835764d695543624261694177397a2f6f664b4f614f5071706d3970682b3153394e47463554774c45444145425142514459702f7a30337062756a362f4f445632364a6a743263356231346978493279574d744f5478412f61564173416e444b7336726a544d585743317a367651465764533072594f56744a385061446c78436f544d43455036786b734739302f4e574e73763672566c3539556c38647842414241554155413247764d5870586a3831646d4b5a674f5737796d34367a32664c4b4c47527a375a62794375554a477a425577456d352f714b743457765274592f4461446644787566335933425a686b72374b4e6431574d4b4530346662433275684b7a3059545838337a554e74397371717a57424e6e47614759504b5248734878552f2b72485276644e7276366e4d5930644f4c594141416971414141563437486c72587a326d716a58374e5846595576585a452f5052627165615a6e6d764d6f4e6c4f31676d5a646178476974624358546546524d42574b3447547872366e65714a4a622b416e796930592b35714d41465478345863484974636e5263675a67585853456e35767539787657426256306e3675316174452f506741666d32577637776d59456a325376726f6b58522f645050445479714c71563135316131346144445143416f416f41734d64342b4a6d386d4c32793963445a712f57494a312f4f6a6974455151316a55646f754e61515a5565374470765156654f4d5a564a30774132465a56676d3131477544325a467950417545313236416a792b755a75327243397572797656714c565735706e6174314e76567a7036575079664e7265612b58476a7a644178646931667136367030366676744d6d4b744d3353666e6731693759696a3668383570562f773746645062327a427751634151464146414e686c486e69714c5a69354d6e2f5172465852364b64663768696e58612b4d4a6a736a347a61367561573765717652637477584d67366a746755486864696b4336622b506c774550707871624645463243466874657935462f646c355756745658585165542f2f334179596e7a3231397850754b526f48572b466d585730565964386956706436474e755a32517a544557757372337033374a484258614f506256782b2f656b317a5867674141415156414541647069374675635338316533395a36784b6a2f326d64667959786d6e697145796253362b6571683041396b346b4d62706b6d376e5165664e7066614f385635554e7a433242556e6a2f4671616559316e567046554154375a36456535494b70317155324e652b36567a61716155456b31674a55506f72616e612b6d70563961543250344133766d7a574e794857473078612b745752416a335434753468797a50644b316d363462337133746f7a464868553938367433456a4868774141415256414944744e6d564257334c3236754b6e35363771474c50717a6677497851536c54665177425943504f514c7a4833586e386e374f645361525348536330696534633254662b6d566a2b7644316f2f72575971414741416971414144673344712f7658722b696f3744353677716e7272366e6477774a6b4c477045787a4b6d5a6b4378384a4843514132414638554e572b757266774659616c6e596e4e3143586b686f46484e4d7759335465782b4e536a7139346530376361417a634151464146414e686e67756e736c75705a717770395a71334b6e66374b653855542f45756b6e7a474e2b79323674582b4368656144784545446742307846474f6c7066782b6d62436743742f306c5442674b71377954613942576d63535154492f2b4d6a776f64463955347647487056383837546a6178534f49514167714149413743562b2f33684c376477583876316e726369663964624771493866494b5a70774d693532334e6d58783974495350664569627778564e737052534d44514667527756567872625964783577563056592b5433744e7374327471534b743734616d536f754f303434764862473644364a2b57503731627878356f427176446742414949714145436c2b4f33306c767135713474487a31725266766137726570774f2b6a54327332596c6970396c6c66356c4c364e444e336743367a6f7544424b5845414641474248426458347453624f72647931783246787753665a2b527246334f64634a487731384d6863516d71626b784643794147484a683464666c54566f744f50547231387a7341614c503841414152564149413978613866626d366374614a772f4a7758386d64766243333274694d3945307835494d33347a6f564d312f4a4664665a555a4b35534c3757546f437a717175377173706d4d7544324d594179766e514477535a53714162382f74334a613061466f6455666f3778715635566e652b62716b347a374d2f76564975657268726b574f2f59594d76613731503668363770682b715a6c6a6a3079737658683458524548487741515641454164704666504e44616464614b37496d7a3132512f32356154336530675472433079353675445155337956507a737059526365677339545031312f32574d573447696f4b572f66712b694a3274597653576b79414141447371724a61572b6272695375342b67582b356f6d3049717250744d75316c466234646a76427674746b3333684a7535596653572f314d4371364d396674555973464a66524f7a782f61745758505a694e6f434867674151464146414e68422f7565656c68357a316e514d6d4c4d36663335486e6e58685371565a4546426c5871594433782b7831493830376d6c61477431315675323166552b44736f456833326f576c596f6f2b526c555864345445612b64414c424c686d71646f566155762f544572315530696570656b796930326c5569394a716e4535302f67644d4d6264472f535366636b6d4a753333444c304f76613462334573704639556a4e4f50624a32355a566a556a6b6363774241554155413241357a566e62774753734b2b38396156526a3278457574703755587769356d74495565706741414f356164635432347531682b55722f55342b5036704a3637357053364c41344c4143436f416741593035666e786478564866765058466b59766d6874385a796f714b6f4349645053316a5369505674304261396441414137615867597a2b426d364f573256376667685a46397168382b725539712b52644f7132764838514541424655413247644d5864696576486c4736356e7a313254506c3145594b693662334b5973762f2b7166506b626c743443414f7a4530614776624b37693131752f4c315948476270397633723136735644366d3739763675377238624241674145565144596135333433585658502f564b666877544f69324b6e4b6d516567693661705a436d4d396c30656655674831677a304541414e6868684b6258576d6d72446b747166575066494b54564c4648704e5a67726e57454a7a6d343476657433666e353534797334616743416f416f41653433626c33596b2f756e2f4e7433596c73742f6c5956787978665257516a45396733554c475455526f597a79616c764949585941744d3867514d49414c4272686f762b593178466d475a623435593550445069694f51393837392f34423034546743416f416f4146652f685a2f4c696e462b383956664652424f31574b436566304b3771727532477158776f5a56754b79302f382f756d4174375a646745414148616f774c7a325374766971326762536e4e7a6e5636436c527335756c305a5157686235584462736b746c4268355239644453482f5361684b4d484144754b77434541674e3368387639372b332f4d514b684a4b386c553446724a554b3953525146564a78696e4657624b582b492b673972766b304a4942514459615351762b6a5a6567657664536c73774f50667463554a47445735735031667a757131704f58444130302b734c5a7a31705676653634656a4277414971674251736136352b62336a4e726270336e5966464330686f3366757564392f61742f467a3575426b573859364a6157755939785943307451774d416742302b4f465142432f774b6c744c4b4f7a7554716d794156545454716e566359496c6d564f6c362b75625a48642f4630514f414851564c667746676c3074653965716669314a666a534d4241464378615a6157774e4251306d3762634857434f6274385a50324a7433323532314d34514144776956396d63416741594665362b66486d57684e537133416b4141417146532b46564b4b3063444f74544c4f376e327a35504934504143436f416b44466d6665693673753054754e49414142557350495665554b5672725a6e645263634841424155415741697650472b767942676d504c4151424178624b7477674b335a315734312f4e412b79476c454f6c376c3755484f456741674b414b4142556c462b6d55776b735041454246737a564f714d4164355651747a516466354535464c467667434b6f41674b414b414a576c613231794936723241674255384f4252305778715a43762b43756f7246676a622f35714b4b516e4f4a335a4c6951684843514151564147676f687a6657362f4353773841514f57696f6b6c63684c372f4e56582f446433745646434a4a344c546a7139574f456f41674b414b4142566c334c473162356a6854415a4841674367636b65506d6d5a517164344139627a57306d395635657a6f336d497544684141494b6743514d553539656955507577412f7252622f737337567746727636557072725045343476612b6f6179327741415949666a2f725859766a354c567635364c61686a4b6e334e664c42313861684e4461655a566675646d532b633344674642784141454651426f434c3939305664667331596c436d6c556873383433666b2f597554476656777954703739646c584b325772544e72395551414173484d476838712f35744b457151355a36625661632f4f534c4877344e612f6164423942723931754f486c513933444631382b6f61385952424141455651436f534f6e6844595850446d79386d656b6751774d664c726c64506b62464f454a716563433076613546504f4f7133447633394a4c4652667a4f505141413741534b336a585572714a762f48724c6c584a764a744962686662722f7335614d61726b486e4139385539663650342f4f486f41674b414b414258746e6e2f704d57666f6b63483974463956427a51616b6d3551704768324e57353559414971745438774c315861662b362f67414d49414c437a5545696c4a622b42652f3231577a4f4377415253637873763274444b62517456625173714353306d2f753771376c382b2f5a6755396d554177413744625238734149446435494a66767a66366e7155645832517353724d674e423930615261565a6b387452573050796d645371664d426c763843414f7955776146357a6156677172563047314839306c37616e2b7236594e4d71474d364556424f7271335872583637746566326c5132754c4f484941674b414b414875564f7861314a503539617574583172366e546c5369324f514b4b796b54525956744b6d38444b69304474684f71476d31594151423235754351632f766153362b334152644d306d6f5777663265566371744f6b4e66763252592f5739752f2b663946754749415143434b674473315235633369796d7a493047334c387365396e6d6e4f356c6b6d6e614c76385667666d6753674656554545506a74637541494364676c3565376353702b522b7054466a6c4a7177474763454c737539423151736d444b3339322f664f6233774842776f4145465142594a397a39394c32634f7269746b4550504a567236736746586377414b61316f304953584c4143416e54773656473566716c76426b6a6c38663748737368454e552f37376f693576346541414149497141494133645746726373724333456d50504e75637a7374456a516d72615a745934396171314d7047616264696d45666d38345439506d4572566b7247656344696c7a7242704c6b7434596f33386269635a567a42736e784e4d563462415743504862375a454d6b466436744e374c4c634433723932756f316a7676724b75364c4b74313145653944356535315565764d5164324446654e50717076383830753776494c6a445141497167414148324c69334c62714b597461527a3336664b354a46366d30683234534a707771467072786c6243444e7650435a735a6376676b67632f746453344d784f7a415450715336727658554135447a6b456b4b7558467a653432693641437768374a466a6f497438716a6256306f622b595762435332316b4247324f712b4b3335696a2b356a725647786430732f67314a7661766b526d656e63524b7934636d707232363659654c2b4967417743434b6744417833544c6a4f61617a4f4c38324e6e505a792b565767646d734a6132733668426e44666a67566e4575456a34515a7976584b6d466e327a6f484c795a754772444c72584951553446674431342b465a3633657263772b3975453335635233326f37545771344575765a3871392b726b64464b35516b704870575a3963652f3651354a544c68395773484e3276426f4e4341454251425144596b663576656b7664354558745a79315958546a66444e536b45717a4a4474426f384561394143584e6c6f5930664850466d4f79457133544c356549324f4c62744463302b6848624a4d414441486a6c346f79326b504b36414c6c687062304f38744a666561644f522b5572342f725a65576d653631764a314677787475473338774e527a70352b4133716341674b414b414c424c2f4f4b42317135334c756b3463386e6133446b306978706f6e74614d642b35586a514e7376427a59546a5677763838724d7665765974494f36674141397354526d39753677426e333959356f4833376b5a6b377044546a612b69415462717544725a42657a48524e566138373534547179526350723376327641457076424d48414169714141433730382f76612b36575764722b32616466796f2f7a47376e5338543555312b62475a565337526b3737416142645034786a427742374b76396d6d2f62424e416a4e613562794b3053344c7872484d7a564a73666e63416257336a5239532b2b514651314a34397730414546514241505a452f2f583335674f6d7a572b3961505762305642465578444d6846593773504d70316277654373624c6c736f42414f7970576457465656744553626d39716c797069596c51354d3863554431787772443652524f4770516f34554143416f416f415545472b6538656d5430316232483770692b394567336b676d5a5a426d676d616c636962563061336c78554159413864766e572b527646454a69454b2b5a4f507162327a6155527152744e4a39546b634877424155415541324174386132727a77644d57746152663236694f5a564b6e33617971596c7a78556d744231336331735064332f566d70643674694c4b4139723949575a484b332b327161677066315a69337661656a6134646a3741634465796335326c70634f313734436b696a62637542664133543847684576355a41734d506554564a6863616c7539313757654b66395a4c424e6f4c7363636e626f3950625271786a2b4e62657a415151634142465541674c3359317964754f754c3278613158764e32696a32524b702b4e7849574d4a356a6175796c4968457a66674c4239676c765575744655336862382f37596b4e7468794c41734265504c72614d714e7563614e356a65435264713277754c2f44467347326246784774796e2f6d734e465269676c682f657276752b4b6f66555066756d30326e59636141424155415541324d664d575a486c6b785a3239507662737577563635766c495a7a7a744f7644476c634d4e6b48566846546c42354d4a4862416968564c376b6d7043715369362b77514a4d3835556e624d6e396e7352574148326274743656346f4b74696b6d4a47654b576d66523361543072553770452b484471333239794e435659556655334876526f4b704876336c4f347959635777424155415541414f76525a31724631435835592b355a326e486c70707a755a55615466715a566477354b75657653476c4844434c76434c37444454743837776b52587a715264456b786a5649366c76774237392f434b6c56346a624d456a757172636f67753750634374304b4174427353747a7143324d67454632496c4b3647446749645750584453302b7346766e39746c5059346e4143436f416744414e7433335645647735344c32342b35354b6e646c533037314e4145304c5730674457784d705432723143614361326c3747797261313072395736566d776778434a5375614942753456634541734a656935663668767837337674727153552b724c6d526f516d786f7668706c4b4e7765665943594f33356b77392b2b6433376a4f7a6947414943676971414b41504378334c306b4830356474476e512f552f6e5070664c7933724e417a6654577237766a424b704c63496b665545557855704c2b77426772785359353768533074564a6f6e326d747657566533465133465a4a6f705556453830594c4469737031695748746b773559635864336b4c5277344141454556414743486d727977766572326852306a486e34326d793545716b5a6f6c6c6243562f4f3065314a7037522b463153544e6e75434141657a56564b6b346b6c442b466874613659724f484c786675507a534959315466353575654158484367414151525541594a65594f4c65744f724d674f2b727835374b5846626d714569704b4b366f6154487651614c5261616c304441487670384d713371584a425662456730367562654f476977616e4d62363773746762484277414151525541594c65365a555a727a6153467265506d7259724f6a3352554a6252494b797130464663514c6856623065597a376e73713076343245566639645063563864655971794373742b352f3458384f2f517a6265784848486d42624f624b7a2b6a5a332f553174635350706e6c766d7556546537355362353563326e77546d64756c2f68444450586557714a4c6d4b76546f305431504a564e79696976484d6676587331664f484e4536614d437978636d792f576779344141415156414541396a792f6d623670345935462b58487a3175517630713537525470757661726f5373494d647950745031652b5879747a653175703151317a65317931344b5741753858416d3856356c6536483133614162535a562b34615065314f493834445a5a6c504b397a4f3158314e756a376e645573354c46627a642f356a77717252374c6c4a304661487664386f7958564f4a6452634d71626e746b6948567a353135584b33437351594151464146414b67594e7a3751307658757865336a4672796350392b32565a517372567a76436a736f74724d3157377861627a6d6236695a794e487466556f33623375436c4857416258425865674c6b3364577937714c4c5a5662657177562b334c57536b6555344b58782f4e507a5074312b78394d72557075666d7a6732722f6d683553752b7a734532736b6a69384141494971414544462b2b6c396d37705057317734372b6d3148654f30734c4d356152744761526256424664704239486d4968554c714a57464e414e723451666270566e56386943724f7a3848675063506675777168633556433236317271764d625a356c2f726d6c6663396a43714d5234794c523251755638596c684e6339664d4b446d54786350725631323865425545556356414142424651426775337a2f6e73304866502f384c6d3958306e2f7a442f2b2b61662f4d764c614c5637307452396762464574335a6b3636346c7062754c3674796931503541696c41422b4a5863596275746c53762f7a5856656c56706633664e737961384271593535716b2b3343565359614a6a6a4f507238704d47466f372f37495264515563534141414246554167492f2b416e664679354e703975505162736d6e7a786c632b2f667a42695265504f335979746b7a397030376d3374505864672b2f75563168524e396361523076442b7556476a4a447271334471762b50674477675952396567524d5556436c56516832695149565331496d6c43706d537974786d6c734e4a744a5333394f505455323862486a7433437448317556773941414145465142414435685548313173676c736164736951744b537669685458357659635070784e564d76504b486d696654496d6f715a45626c685375746855786474626c71335566585253716344495a6d796b7a2f684234525642465741443331396f45726239413551715568532f4e78686d5a447a2f4b682b69587647443674372f49746a3639747874414141454651424148626343397a6c72307757584b55564455594457374449465369796755356d456b4751483936333574364c6a6b2f4d2b4e706e7572525579752f31315673334844583169654c6e4e6d317537793156304d5234594a63766368487675784d4971674462666e567730367253466656564163765162614d2b5858335878534e7148767661616655744f455941414169714141413735775875696c636d4d377463647173424b6e4d7a4b48487854735635686a37703379733539384b423166662b384e4c7562315843377a647a5251652f6657476837783150746e35755131752b4e314f4a64476c326947735761757032343339524c54702f642b327243354e53346157346b696c336e3250624b2b7a324a334238336a4957562b6c3131586839735350475853736e7a6b726e4e5658786c6236334b53753958384e4c3162493737302f76576f555a775a5563654554793066484461682b3434617a4754546a6f4141414971674141757a6d6f36693048776561316b4976417a3069797a50364e7764727a5471795a637437416d74586e6e4a44613439744e50504a4d5674792b75503259767a315a75484a54573647584763796e3757433862456b6a746464516a4b7158436c6539314e37474f31747a36504c4b7754682f59446653355573674b4a68472f673059586e6165466c31424a457165356e7932357a58542f75762b445a6a794a664675764a4f684e326c4f4f446a35324b58443675373739726b4e363347774151415156414541397069674b6a515655714838716679416c76744273467336327a6e7a776a493156577a7a4763656b7070777a7350724a613059335a506630332f75425a5231425a6b6e72696663747a546131356e6c3375302f582f75706d4d4b2b545a7279655a33613573506d3975516b426d6c466e4452506146613244444878565959455443485a6a5548565053377550314c3535464a6a7277725a6f6f735541307137633566467a314830446856734b7234483547436e2f2f62623361555a6f4c592f714853362b2f4b53363237393758706633634941424142425541514432794b4471506b5a2b494275484d742b6d4970364a6f64424774326d334e4a5a7a6e744579594b50364a7534366531444e37482f37544f4f4750663059334c4d304630356531444c6b2f69657a562b596958632b45536a4f5a4b4f33506f3144714b707a4779634166412f7870674e332b4247622b6653546532522f594c7566745044394e414c586e726a445056555676744643674e574857725852586d634e37566938625036786d326f3876366649474469674141494971414d43654831546a7059576c766f6d69624341633734645464745a476c31594a6339646255564837436a5a5243525a4d2b6c4c506179342f71535a664363646a79754b4f354b543572614e6d504675344a462b4936725867616263506b48374270412f7172477876483844755957644c37644c6642424f38614b3754655a6f6f4336686c65314f5a323873616d42756c5a706d4465795358587a77734e6533474364316578704545414542514251436f724b424b4163324d64495866784b6d70596d36386e303237734d71564e486b324c41753379692b5a6a5764654766764c4633716d506a656d70754a364b3934364a3173395a65486d4d592b744b4677754a615632356b4b722b623043355a5a5741757a6d5a3744625630327a2f485a474e54536e6147536571384c4e704e4961594732587157634f37435a57587a53774a7650727a2f56344563634e41474476454f4951414d412b7965356e383756614b4a524b35537268327666757447767845766f6c6874702f6a6349706a2f66432b615749504b7249582f2b7130616d6375547869726a357938324d7474644f657945326276534a33735a49796b49796e63594c416273366f6467653159675533564e47306d6b485a6b4570505373565a706b6344662f58436764306d705964577278787a644458656451634151464146414e686242734f364e4372576353476c3069685a55736b6c3379484454532f53636b543658415a7871777533464c6a5366584663513775353347757533767562365a7361626c2b59753276656d7678462f7373497262426232434a4b516369457048555052536146794853703575737547465a37322f684264632b646358784b345367424143436f4167447362635067736e32592f736f576f64504e70705a33734f6c73342b4a75556c7530754e6b37665057307269316650593364626137652f663865624f3479645648322f6955767435316a39776453614e57644457686463654379346c52305047784247392f486b744f2b562b575761667238372f59576c68314571464453445348696664316c54364e5379395053586d2f6d48336a66476a584233586c5357706c6738716a6939745379685a48732f6c54374e6846546b63796b61766a6d6334633033486235774e5154357779736c546a32414141497167414173412f376c383830626a61584b6562716c4a2f6431397874386f4c3247632b2f5868796a7041363045476b7464476b4a744b3265724f686a6c57743351785754616638674c644d554c724149525147456c6e496d6b5650336c754644325a3775556e56652f3136476f75587a314e2b557a676c5a73462b6e6c6275717145744c654730364e643872625a35317261475556706c714956725047565233322b584436356563507a675a345867444143436f41674141764d2b337a6d3363614336336d4b75332f4f43656a66746e4672517657763257474d5a5a52466b6a7258584541683479715350377030566f4e2f476c3764657237423567525839785443494a654d416b512f616f6148457731533659637547715963663969473146587535614f3348575953344a4f3674757a776f71336155434f3730616c79626a516d53534165733438356a5578416b6a6168644e4746356277454547414e69336f656f76414f79394c334462374b503669582b362f546c2f7658612f3146576a61335037366a482b39326d6265742b2b75475838327666346958614272315a7057346a4b56717053746b65726e56574e4331465a6e5657546f564b66584d793364664956744f3174676130597265315362777169425a4e5a4538794e4d364a5341624e536179676c5454675648574f5072727439776f6a6b334b74474e655a77594145414949595a565141412b4e682b504c3772472b5a794931322f59664c36772b35616d6c332b366e703172456b6a4e72446166627730697870494a753373572b4161594b4c395465576a4a6438306b3870382b4b53485768584e79434b7762314c51456d2f62386f6b65393044596c62304234784e6c6f494b542b79536e70556655502f3646552b726263534142414f43445945595641506265467a6a4d714f3432313932326f632f664632664876395553395445424a5230664d685254327175655961355374672b68746d695766514f43336750506d69386e714a363275517650694343515134384b48306750546a33347a32643061635778417741414246554151464246554e31745a71376f34464f57745061375a326e2b697665613953463270705568714f34744f64584f6b6e4c755a6c4a466147384d744c53745a4a6a536250425231512b4e483552363449617a75327a4341514d4141415256414141453154334f6f383932694b6c4c73736638625848626c5a757a756864446a39624b565770427739314d4b765557566f6c4d6f4175792f36465638363459316e446e743836743334674442514141434b6f41414169714665502b4a7a75436159757a4a397a33524f73567a5158566b3745675458735a4251744d364a4632706f344a5635444a747235687675396d334c4f313141645832344a4e7467574f625a5069432f587336332f61347350306a38356457724a4c4c574c734d56636d6277613236464667766961314b344a6c773663356e6c784735674d465564485a677359577a714a39715470444f302f3739676f5870456456332f6d397a335a3942326333414144734343696d42414141753977354132756b75547a4a5750636e37336d694c6278315963664e4479334c4e75574c736961514b6932706372423066545674445359546b6d7a665670757a5a4b6b4e43744d6855377a675179797a46576864443839392f41444876332f63526d61724c7767544e70576934786e3450634d75334370622b49677a2b79576252365535376d616f6f49763264704e693763384957446a786f503335387646443636622b354e4b75722b4f4d4267414142465541414e69726e442b6f4c6a4b584f6562716e4b6b4c32354f54467254382b62486c616b492b79745577487153464c44496c676c4c3445697177315752466f4a6e6b4a6b44786b5047495a67584e6e7a5252704f49395734577a66645132566b7935396a45306d3170303138337835454b596d3077774e6146664d44637272667a795872764f56386e4d776432726c6c3830764872614c792f722f6a494f4d414141494b6743414d412b59634c77326f4b3550473675506a35785471353638714c4e747a3332764c3663536475454d323344457930394e634656307579657655367a666f494a45376155755a734f74567336764b2f624f71787673527a59545a6d36774f71575664505358363454544a6a777237527753344e6c49584e67393344312b594d617076373271713572634641424141424246514141396d6c4e6f36747a54614d50654d52636665546d7831707137316a53506d58577974796c57676b5470465254514874597a5a3878716a676243424f3674416c6364755a504d4778532f614467756e566f35597772453034354c662b6c59306366616538707a2f5273444e65654f376871576e726f41632b50375a2f457751514141415256414143417258317858454f37756478767274372f322b6c743962637662726c6e776372632b564a45415663694c5458394f5a4f2b547974793152624b5a314b7069424b50392f647152684f6e376a72506445754a4e7a3437754762794a6350726e7a76723243546d704145414145455641414267652f337a61585774356e4b33755872334c78397337544a6c636674447931374d6e363559454367753061653168472f7877595a557a376155455378546b3953627a787459645676543050716c6e786c596733414b4141414971674141414a2f554e7a355476396c634a706d726b2f376e76725965307861327a6e6a6d396578594e3157344c2f64702f594269556d375061696152534f512f65324c69542b4f483179363965464274455763524141416771414941414f776b337a36336272323533474b7533764b66643766306d725a6738364c563737426851696d70654e444561412b7269426a5443522f63744b2b4d793132315737736b56766771743771306a394f463371697a4f4e453265355475714a7a4a6d56446174646e68327658623465362f693575506d76353764507a66363739483638372b707a5133366976356d70737a795a42336e485a7363756f56492b726d546868655838445a41674141657a71754e5a5a48416342652b674a33785375543266746d31586255736c4433632f353637583670713062583576625759336a796a3934396639566232594758444b6d622b4a7572756c646b3164642f6e3761683937516c32664672337936653649496e5333507441352f677474554e347961384b75564349664e466d56686e414c534273504f47585844792b6e2f473930463165322b35753132352f724a435577694e664d436d2f32544f58414e55547057514d364649356b2f744830354c44367566665755466e714d543537645554317951477a766a3266594a6431322f337a5766485667583456554e4147446667526c5641414459526c3553367030572b643366546d38326c34374d45623243705a634e72356e3267777537724b7555332b48483437752f386550783745613666734f6b7a5966643955547a386c665873324f3144744a4d2b5a6c5333666b78304b454a66384a567742585342542b706642443047585a6e5a315771786b755475745462315078337166676670412f55553562326d464b6c5872724f49747462317554586a4e42636e744b2f2b765a4c68715a6d55674771536a7666376e383647307965337a486f37302b32587030747348724f776a5458564f575a58594e6e4977414167696f414149445053317851434b4c564e357048365266666c756b66337055662f4d4f374e724168523962646e78365265764472707a633056387276632b4d56585634326c352f5139612f657575472f376e716949373175552b35496f5a4e705779325968307779483141565a7a7879715a514349374d54713578704a642f666f335248737a4f3962726d76316b587a6b547165686f7a2b615333694a634430754d674d66527a614a33487635555072482f7a4b476657746c586965666555764c58326d4c6435387a596173377330695a63497070323435356c6758474b63467a514c4446514141424655414149413471497049304e4a59625149634335536259475173546374516c3779595335744c357073546d2f506a6a672b6e704966577a32306156566378533078704b624f3566482f4738316b2b6258482b52333962326e7a4665323379454a4d4b3033622f70394155422f302b56684b5a71384a74433930564d3671307635526d64553051355472424a50326a62675679686d5a354278326566476a43304e5439332f684d342b5a4b504c652b6530667a70365975614c6e737058656a453830763635666f4b3766505672686a77414b61302b654d79776a376c41414145465142414141636f554b6c41326d43676a545875516c4c4a716b474a6b6f6f4b7470447334364a744a5152652f68706466584454372b58756661574461336e44366e2b532f716b6869664f5054346c4b2b4633484874305370764c6970757636664c76447a36584533637461506e706e5576795637646c5a58667a4b7a63786c6a43357347682b313653646164305669596e6250624e35637931705a314d31697a4a55314f6d34336f6b5a453062572f2f3362357a61737238547a366359485772704f577442792f744f765275506346445650787a3164342f367569767268556b366c706331552b4d6f3843456f45484d394741414145565141414142645541354d626c4c517a65394b454342364554464d7848357070704e4932515a48706f4454466d4d365a3236597536506a6931415735544938362f75704677326f6e2f76357a3356645779752f376d574f716c626b386538753137462f7565796f625a4261322f4f37424a374d5457764a425478504e3031715a33356456326643344d3147524a4337434446557137764f70784b4c4c686e5735347a38766248793745732b6850383171715a6d34715033306563767a4679706130457668314d35554d31636b6975617461612b745648355a737a6e706847526356376c43562b5a4f6756615955515541514641464141447767596b6d74326974713632474b3279484635727555695a4142434c4a70416c55516e4e6d393365575374565352567164587438753263335457373739782b6c7445772f716d56677859555279386b38753666463670667a753577354953584e5a624b34752f74755339744345725a7365656b70646b53767165725a7a6537526d6a6a68414c4c3177614d33645037323078327556654e3751385a71306f47335967302f6e727368465554336e595672482b337070646c71486676615575664f483375674937426c6e5a2b3656436d783159783449757a3961636f455a5651414142465541414143664b546731343654797334454c6f634c50706c4968584f613668626951756b57385a57362b5566684b757272703151313539744f2f71324e2f6363396132662f51716e6c586a5769343434617a367a6456796e4734594568745a43377a7a4e5635557861314a36664d622f2f54513839314e455753567a477030713539545877637a4c47797931615a6134466a5a77574632334e7039356c79463862693647574c4f4b6e4d776432716c6c3838714859614658797178484e6c356f6f4f66747569334848334c47787232707856765472447643764731586c36684b587a784a302f573378614f702f6337476f38633633775a415141514641464141443470416b3344682b7558796d4c4967706f61636b4474754b56664e4d335831302f356c76544e736c52665a4e337034665854722f326c50714b616156793262446167726e4d70477832362b7957366d6c4c736e3939394c6c436b3551794d49457a7a615832765532354457696330307930647366454276664137623830346653417876434653775a336e66532f567a5738574b6b503962656d626a7034306f4c5761395a74596b6379726449342b5145414145455641414432584e724e69456b374d35616735634232746b7a794a424f736b465a4b73396b72636b327a6e79396d766e7272686f357a546b6a6465766d494c6f73754846495656637176654e57596870793554446458702f2f2b386262614f78653354706d39736e676842665249363674706b362b64544f537572705267616d4b332b7551624677354a5462706b6150334b636632724b6e4c7635592f763364526a79747a32433539374f78706a652b6177494d303537562b4f47412b326d6b45464141424155415541674432437a61692b785972643245717a694f5a475654522f65545454314a2b55566762546662684b46794c4f376c36612f66773953334d5436314e7377795844553764634e714c752b62483961696f6d38587a70314c703263376e66584c312f79734b4f354a495857333730566b7534587a3666542b3758554c76786b4237386e6448395575744839366d75794252333032504e6462664e7935363935495863325972534b4a647074355335796a79754566585a74645733364448563246454b41414149716741417347654756626630315331356c625966614d415364686d734571346c695136306d3348554a7554776b496f304e54586e425076547a4f7a3135704935734b74596e5237652b4e65667052737171716a515a634e72437562796b726e365569552f684c63766145394d584e41323874486c785852425254556d67615a74377869746d4441585a5a764b46716e696c74314753745636466650376d51454141424255415142676a2b4a724c726d38496c785249556b644d6e6c63594d6e31797454637868704a5855736f744e4b69583175386965366e303239756b757a6e447a54337566474254664c544234624c7268785a4f2f6d37353356354477643435336e30325a7959744b446c2b4c75575a6a2f66556452645442704e632b554c51706b674b6d5267437830704c657a6a7a4730504933724d536d324b41414141454651424147415056477046346a37614e70696c4e6a6661526c4f37464e6945473774373039784f4b3452444531676a4f77744c69545552337a65747a4c652b3846617836587533627835734c6d7a596b596c377278685a392b4258546d3173786348654d62343261654d5264387a76754f4c64466e6d34346c455435776e374f4e476242725a584c6a30573072333734423550357475682b6f71386e486f5a615264614151414145465142594663707a46724669307465374d7065665063413964726d673649334e687a4733323035574265696c4f4a43437530364953724f5a4a437161754d484e4c7771656e643770657267626d2b712f723365717237753144596378583146355037453244324d7a4d2b75617063376258476830433466375377507a47302f7a59683662504b41435a553067536579515a6461614e6f574c2f5a48695451466f53567269756c464c37526b766e48622b6f37546a6d75596573574936726b5468746358634e772f6d762f3832345a65552b626c78722f77646d457743336a617672466748354b6b436158537a614b61734772623666686867784a4639383355736b695839383956627061566c3662534151414145465142594f66492f2f4c684c7355486c6f387350726e3256453644554d61756c37514330493944335164522b74782b526e6d6b49382f30692b2b79364a5831646b38695463526b2f372b3766694f716772624571503450686863632f3053796155514f5233687635666370666c426d3466475a732b555858662f4d774e356b32376634454b766a4d475333515a61646546716d43354667447a2f6439766b486c6d557a6e37396c2f65627a54307a392b597154756a353135764656614c7a35442f7a7134646247795174617a6c3332557646304a594b4138304c61486e66467978345879647a546e646b33446a6f50706d53645839426c6a36563748646a796377414141415256414e6a4232692f37773944697730396655745173434453376e6c70504b484f464b386b434f7a456d74766e39334d2f4d614b564d534f5775416d7767767172796b6d566e507674742f76677a7677722f64577062634f564a66367a3932666a58634d54686f37427a7358616d3155516e75302b537064757a6a4531656b4c7475386f4b334d7a3061324b766a527a543839626458644632446f385859725850617136637336686a7a324c4d646c3273584e707355505965315a46774b4a6f5267556b746246456e5a6a61636f3277734141416971414c4148796637342f68375a587a373072364c496b6d6134656e3349417838497a494457543674737a33784a7042554c7a6541334e4e39444d37413043525053766a627a7377493763794f756c7a6e4a696e2b636b797263766e42397a66392b377564563535306738516a41646f6e723974674a514664646d4e4e655372767656616258747a42323030504e333737706f5a614a6878345150485046794e724d663133516464322b64496a75665449585a4259334437706e6165377a2b534b724d54656c62625665657439494244616b436f716c7773392b327a363359616e6e4b77414141494971414f7752577239392b30487139374f2b4c68532f5151726c6c2f4e477472684e67677457314654654a74697559696d68756239537973375143477048456e443358536173717042366130626d3535736771344d626973325364567835382f37736c693939712b7169343474344a4f42443266327451646e4d6e325a61754b576f776c61664e616461454a6d50696161583331564e503769722b635166334c575a445436732b714572546d71383932746e317254737259666d7933392b7439386453334b663239436d657073446b6934743536566a4669615a696f714d69344b6453625568565a517433625837676e585a386c344141414145565144597a614b625a6e3544736642365961644f6856384736436f6b3057536f2f636830715876494e6e4f45436263426856573650364e5a5650507a7a54636d684c6b74556d61674c4f777372544c33437750424a426658353738353653305456482b4f5277492b6a41326a6359565a4b726a4533544a6765364c5350434764704372686572554b547173423072533864656e4c3266545374666e4d317a4f616e6434766464746c6f78706d6632356b546358766c663732744e6144706935736e66444b652f6b547a4d4649322b4a554c4f357a366a7343305a4a65615149715439674b79304c3453723545635a74583354625673747342414141515641466764387239357645474d306f4e5175477165314951344654314d33434a7444796336753363766b5968516c4a517065572b46465a705a6c5734325658362b5459515533425645517445794f5347396f5077534d42326e5675324e5970662f36755666644f446976365945386d2b2b57464f4d735a383157436d704a31746c58522f572f4248705a6c4d734565666130382f2b6e772b3836552f366f344c4239583934624c687157586e447171746d485776503332777566766b2b5230587258676c4f314979455644665762757556334f2f4c72717a3646476742497434614a2b485368587438343732704d62337379465638394b4d744d4c795877414151464146674432426273736c5653692b366d616b6c49755a4954646a58325544414d324768736f56535371617277567332326d5667713274446d7a434161666c766c725a774571334a38796c774768326c5172686d4e747048797a3130777a305638323366673250426e7759616d576a624164574f71394363343752352b61636c48373630505a683553374d556e735665303579383258757669366b2b577049415464645543476273726a3138314f57744753363153546675486859396130335839316a785a3734652f3978566c7674784156745a3878646e622f4956704769706233634c3445326f564d6f356f73682b593368746b325143616d30704947716277753354397956512b4e75543671356a2f493955536e307535434b70623841414943674367423741693631554e4b2b4c4c686c6c475a5172326a35626d426e7147682b696d36584f724a466b76534872417a5533473939303236704d41326b6c56312b71473349446333746b6230653269574a4644726f2f6e4c75437a7759645354574863493271564b665672663357636539577058626a326d444c4a323055746c46374d72336359304c6739453332487371387a46777258434545756d4e62586e326838666c742f37776546766d3442374a35524f473132522b4f72374c6271314b66646553747352743837496a483133654e6a3558465056433637537776367866346d79584f62744b765372656a3872707a61454343307749703341714a44332f79747650784946576c76616b6c6d5a5365647766465141414145455641485933545774383351794d396f5655374259324d39446e67624237546d6b51544d7432755172735443764e6d4e4a45546277552b422f7458593176637a5662654f6d32775077637a62647364346d5143747633786b705a6e315a62735a6235634f58436d41326d696d335a6539564f4f727239312f374d394e73786658434c2b3769364d4a642b62554f422f65792b7772472f75472b6a505061676d746e703464562f2b395a3558546275696c2f763865657a664e4c387475507565534c58744c6d6439777134544e73325437523058766e66756651455935314670654b503268306a7958585a37785a2f6d393771766e362f627a79546970414b414141497167437770364b397051454e57494d454b2b71494a576947316261596f66472b39724f7377733357364d3651617475456f41636a56447a6c41687a586157582b5644377a576e76544d3639485937397a5230742b524a2b716579382f715862367461665574652f6f662f56667032772b4e444f76376371335771492b356d6d576a674f6c3354464b792b664e73343665597778504d51414151464146674833797863484f53416b62574d4e344674517631773370566c70617948697073345772446978594a46786f42616873626d387250516673786b2f626131536c4931566b63316270712b657361633163643273677a7836512b7376344958587a3038507243682f33582f7268337a667462384c7078617657795246326b6c6a724e4257466f6a64383750357537766556306e4a6c356666676f696f764141416771414c41766f6a3271484b757a5068597374534e61535a7171356d632f7949724c6e2b64526176665a6a7162632b316c654d42433269636f7543324d5248766e33423558444b5368637446714172665556766a396e387a4e61464a59464a72784b45777245624a376c2b6161486c69616e39683030336f3238716a61753464394f726e73684e376937637447315839676348336b32594a346356322b64736e612f42454c3172535065664664505a695a6e794e6b49573372495a6c41624f7558535757754337633050713576786e6a6e556d634141414145565144595a384d717855347a616b3730374d4c454f636578354b5644574d6f32594f53732f64492f736d6a364d335a5148516c74393672534c424156733046496855706e4b31624c4a464f38774f4b574c2f536d4451564a75795532304c3577453931584e77574b737a6d723235766d726d777864303279394f38335a46797059656f687a4b586234303262752b33362b44537a41545277515667587a645745653937342f61617539684d566677724b3974613666362f55377851414141424246514432755a42714275664374725077572f57594c304a444d7a374d3357623756584c58493957327131515253326f7134494c6a4235582b4247412b704e6f6c762b346d466470564271354f6b397169634a4574576b54426b68624b323555475047324c45706e6e68505268303761503062364e44685674457148394f724d7245436934536a396a476a496c5847456a72546f44716d753177327776596b79714167414167696f41374a4e6371787071575745477a546156436a386d39385753417466796738497366646e56532b5549716242333448536555773967355763762f586c75333548527a465848565735326b397262304f776f7459757873362b6c48324c2b5079797253437a697035482f736e515865755a77735758326a4a3955334c5861735a2f71714b794e444a49714141447335574e52484149412b434364772b43494356716d4b4677376d73355a4a4e635056597253754e374f77674c734656526f333553686b42724566797070316c4f567a61534b67436e3671726c76664a755152666673306234554e71645a564f312b67763878776a5955706a587a74424968345a394f6e66314e68653573702b5061786d6a664d5361307336704b494b5143414d4465447a4f7141504150434e396555766842744c41644a72634973357237323553354c38302b38582f59537855713954534948394134484c6b5a774c30657a5854712b4466327658354c625a64305a334156666d477737302b71524e415a4d754f4b324674396d35734e646457454f37647a643462504439352f716a2f77366c37385467474c6537707936706d72465a364c4141443733456755414144674839464a47786f343936324937417767336f6d415854453838594665305378314e51344a414143434b674141674b4e55524b57666d61746171387343424d444f7846333159337144685062353867494f4351414167696f414149436a57564834536a362b5459756b6b6b41344d4c42727a6a2b746d4451585677555a41414151564145414149777754455a55533876747a78527831537763474e6935537076645859587859462f5946773041414169714141437766627057427873706c397239715453705a66754c596f387137414c613759316d45633938646b427468414d4341494367436741415950582f4646394c6b317132386a50334d317761653152685a346455743065566c76346d574a544841514541514641464141416f47584a557a54766d51386174776c52326c7376323151585975556e564635666d62502f3945792f6865414141494b6743414143556e4874437457796f5a75384b4f35507141366f4f74736754396f394a764a385149526132697a7466754e4973734f644e6644354a507a6852626c5a5636387a6c77787475772f45434145425142514141324d4958546d6e3874654936513247566934417048726b4a4c316f4b484644436b4f593232666c6e42574556506a536e537265455042424d4b6c554b726f794b4a746c57534f356a45484c356b307362583863424177424155415541414e6a434c394a6458326d6f46753871323039564d55457a71734b31447546323169736f425178572b687a6751345966644b72514f78344a7751526c565a7178442b6764454664646d677565755870553763397772414141454651424141412b3049386e645073503879636a553572356b6f4a784870687351544f70306a55503457353256614457456e776f5034736163525a497a7054746673524e595058746a3879484876584271332f3866492f6e634b774141424255415141415074425878745733586a41676552506a4f714e4d69754338794c677375746d76554443704931384e57444f6165515859646b3456396c77526774377a4b4442685a2b4f70395a4777793449444a695a4f75713772643347674141415156414541414c6270376874367a547575647a69446854796a6739426b44642b715267723735345254366842687163415377442f45755332597047773654544246552f49307130726e6b2b435a6e312f653557756e48314f4c7a6334414141697141414141482b365a2f2b6c397939473971756161684a46684c47454c4a776b5632534a4c576b746d4a314d356a684e384f447437476e43335646796141596d69362b48456e317a632b4c562f4f6174684d343451414143434b67414177485a37376963482f4835556e367137544e54494d41716f33486356345a787068656c553249374268312f717936527953385735335a71612b63302f4e563733622b64313259416a42414141434b6f41415043527a666e6541586466653272746a356a534753326f437243762b43736932353347396c576c767a446374374668334e3457557145636a696e58536d63655362386e32583347346c366f38635832516658543633624b564a55744365644d4365584f455864755a4c7258387038392b4738484e4630337471454e52786341414569495177414141422f487a566633574846792f397172722f766a686e57626331457663314f61365154546f58597a71387146457131635746476961484974545a336854302b6c3037726f51716164476156334a6f51506f764762454948744e434d70704e706c766145374c356966536457426e556b3158353434706d2f797a686e66363355766a696f41414a54446a436f41414878736c77314e46546239716663337a7831513879667a61596143692b327479767a6551306f6c67624a394d536d67556739576f624538754f4c4649645638354548675a73313931656434366c514730673030715042576f4e32586c54386e644a537054795a2f382b76503966674b51696f4141487751764b304e41414366324c3033394a7a35774450354f562b667548485a7932396e6a39637361464b3042706736724d594a5256472f544f35755978494872624b547170314a705572504f7535394b716933726a4950742f2f636464646c536866632f5a6c7250574e757a31773575754558743335787636647748414541414545564141423271724f5072354a6e48392f72786c382f32744c34303375613137363957523970386b7261375638306f5358514e4d3971676b796846474b6767676d2f4b497443715830342f6177704c66766c394661456e7a6b336a7a3039376b79717a426b4436763736304c2f75507830484477414145465142414743582b7672704463336d3876326650394463376463507436782b633750717736524d4279493057635745564a4667614c5a6134626a62613671563335397150354675574b484e3438794b4c72785347794d567348456e5645332b7a6e6d3144343370553473484867414145465142414744332b64657a477a6561797739756d3956576665504437544f65665430374e68434a744e5161765662336a725471717a6f7250354d614d6d3643712b425a4531544454434c6b2b664744713338333863763750346c6a42514141434b6f41414c424875664c6b7570793533444a335a6537504e3831712b64586469334c58357157715956516c47437165335a4e7139794b484646496e3974712f5a765631707a54632f4f317a3639626a3641414141494971414d44376346746831686277456135646976306765466b507949383950486439494747376a6570587263316c4b667379572f71377831727262353364387444536c34746e75564b7749683058364746632b4971796e59396a58474857695173784266372b3350623131505a327663586a62396b48336666306a50743871676f2f733833766f2b31357a4c62526c315a766352786f74744e2b44792f3763747a7231473471396365657361324f747936377a66393775767a6e693078646b6d3234594844714c31655033752f705534354f596e6b764141416771414941664a4137463255544a71476d715330475535455a5531655a5339344d31424d7533487a536f47414736387238332b70317552364d31623642492f3752664756636661753554444a584a2f33776e7562397079374f7a6c3331576d364579554b42356970744135506642326c7a45532f506f49482f6d7661683167517732684e70513561764e46784f61696159727a6973347575566e615673344c515a305166472b4e654a333444685070484878386c2b6a772b68796756536d392f6a4c42723576615a556c56647a392f3332656d44666b4c45566e49573572756973747739477069704d644a77314d44487830734770525a634e71792f677241594141415256414942742b504f63747453582f377a786638326f326f7a457052316732316b3445314c6472424c37784c5638334e6866734a2f65322f706a705950762f4752436c39647835442b65373533662b4936352f4e35632f663076376d2f752b7344796a6d6d7a5675624775785446303658326e445a55535a664f7144554b533572486f5667327779645a7154303466612b496647674c4f6964515452696a71465878745a783035362f715a6f74394f49316e516633737033304b4d4e30356b367a70323877784d436c5655576a58776e336474705a68646c6161387971336e46653534456f2f506a444257437156366447515850755a41596b37507a4f676363556c67354e466e4c304141494367436743774857366575626e32533765302f6f4852724a775a62484d526d672f7855744c49354a66416a39632f2b644a665a6d666d5a4e4e5037397363744f586c662f333271753572384168384d7438387033475475647872727434376256464838752f4c63722b6176727a39676732742f42413749383544763638314d493941337257397359387a396650307959316d2f326770717737733479516f7746496769344f7576373269635a383679304e713662545570526c567864337366796e734d316f4b62343642636956356c586c4f434f324376446268582b69456d32326d692b415a627235327771474a783834364d5458395278643378636f4241414241554155412b4b696d4c636b6d7237746c3430306d6c4c6a396a74544a555955756e4e67424f2b316a7041716c6e337876716476794b747a50465472397538646157632b363842762f6356486a4f33676b646f7a7877326f4b35724b557357354c36664f62486d7574652f7a35374f2f6d724d71657337355a48614c7454446c5055796a544a724452343874315a4a65754b746135566c6a784a4976627033424f4154646965305566563130655773763238666f39766e6231674c325a62376e6656356e6a49654a65747472504e74745a56524e4d6c547a2b6f4b725a702f61706d6a4879364f5472467779716933416d4167414167696f41774364777a6333762f6a2b6d6779595237396c5443615a43576734616d534635774b513031304e684276435247634476674b426969396e515442366e794a722b7a37733373634766726d3436363451716855646a782f767975506f3263316c6772744b462f65485231746f354c32642f2b655372306241585869734f6c53774b744b435a3949523763344c3665744c6a72497032686c43596330445272437346334c326c334d3857533332356d7a32317939334e523570565a6e37667269303670647a6e67574a4369596b6d7a41654e4e6347374a3334366e446e673048443571452f587648372b34426f455577414151464146414e68526a76764f756d73374372714c6d7a574e5846424a684379494f4a4d69704a31335a7579756d5a49306378522b3471712f746a43507a7074676b44415a794b2b7246447a64644e4e626236792f2b62422f77794f7938313137656e333774617965656e54533558647a562b623434746569663337696859366a6e6e6c4e445672376476614567685131584e444d4f685857347261776c6c4368572f35613665495a56462f356c39746955555557324332386f562f71544d743532555361506131506852754f5053677839385444717038642f4f6e7739537447314f64784667454141494971414d424f637550446d376f2b2f30702b704d6d69615171706e4775374d3547716d30716155614f4b4d6c4c376754762f354a3170584571776756644c45344a735a56573333484a7a712b68313952383348502b584c33522f426f2f4d727558613337424e37497936786562547866487474792f4f4a6c612b6d62746831527546513161736b386573655463334f4a63583966374c6c642f4c3165347046526d615354556856585a70724631337a414636345647396b6d754f505368386f332f76735058552f72566f47514d4141416971414144624666576f4b696b5666474575524971504f5a542b346430742f324579597050394a4f436c446874754543396478784a65466a4233464b584c326f43346d36545154582b64335271596f486f35487545397736564455305847556d2b6271322f374148744c2f4c5770433975766676553957662f79652f6d657232315576562f667141353774316b653946367250487a4c4e7a5255756c527174377a693768616e3149667366615a396f3354787933565633487548762f2b6363693168364166625a62775a57735a4f76564e5453626d3565376645573731722b597539653161396574422b34703344657954576d3076375753645559386b354141416771414941374a43773674746f66467a2f66652f472f6472616458666256394975665a526d674c38442b7339384d756e4c662f664f72795a2f5a662b6c6549543362424f4731314a566f51332b73764b443776505973316e2b5471752b5a6b4f37726d724a79717232764b7875626c633148586c5676616d446457764a367672325047736f537056517970556562736c46336254664346337172474f6961534b527a46556c67687a58536955435555776c655674394e57757072394b7444616d6772544556744e616d45766d4761705672714f48356e67324a2f4157447172467646414141454651424148596c6d6c576932534d65373766376947352b724f4e61715557546e546c6c6366475933652b4f4a626b76542f344b51314464433477374c6b565a4d2b387641414141734173494841494132473068745379587873736835647758746a75747a6c7a5277642f5946505733537957706b71754b6d3058752f75313452616d7166767649356e6f3879674141414141497167425159586a5a4c436f46562f6b5251755a39543061486d72756e375864466b6e486839673847665063483159434a394a31504655374649777741414143416f416f4146536775664554466c4a4b6a6a7472756c446c6a5a6674597539795858736b43366d66714b76484b615063485651726369315a326e49314846774141414142424651417152447a7075645848583332556e3748796a634977526a31547154754d6b756148424f614b2b52674565384a7679504a533165435242674141414542514259414b7044356d31642b43316a5643683736737172417a737349575a5a4a37774739462f3145426d3771774e596c4847414141414142424651417167505a39557a56582f6d506e374f72326d4c4d367a356e744e556d68564e4b65554b59457461597850306a762f686c565964637a792f536d4e6f47674367414141494367436744376775594f4b557979545450624d7a584a7049366f313431507537742f6a366f5331485a487345335a714271504667414141414343366b34567a56374a387a4f66357a6753414873414371626168314a68637176676e5a575a396f442f4e6d566559626e43797755414141444152785875713739343863366c43665879686e7235317361752b6f314e2b36753357773649336d733555472f4f39745435596b6f72486752614255494975396c4e613331392b66646e7a5557366d482b6a304c34626875425361786d59323255796d6379792f527065357a3062332b4948646e307a36466d37696539663379494f3361383165636d51496b343967452b6d726f71706b504f2f524978667a656870537375486156615642653474754e30397166722f7333636441464a56562f75574e7a506241424551564c41675368444551714b494a5969397842595678524b4e736355325a714e476a535671624c2f6f4a745a6f37496f4b74746756675655524263554b557152496b534a39323554333772332f506566654e7a754c4a69497a73387773397954724c6c756d76486676756563373566756f416176744b6b6e4b3353316e7a707735632b624d6d544d4856467459384d726e504433353279357179754b65354b76764271535872756f704b524552536269677a494a506d53467a5955706966496e536a6f77544961574a4f576e4c71676a38506a632f7167352f44744959564566496e744a506b4e514238344b56684335635264546b7551535161636871326e6a6d6f317a2f76744441645237667275745531722f48444f2b5857792b4f48763872423243644f56744832322f48436856514554507a71417a334d644d6756534a4970555741564a562b5066534a6a705530376536574d32664f6e446c7a35737a5a526735553038394f69715a725a3235483370303578462b307170645367696847343177486a556f70424b46632f382b484d69685558796a487a6b456d6c4147626c4955784a6847414c426c466f6866346d6377437253454a44426a6f4a564c394f4e7a2b4476785a68685347576843726e385353786354684d51454a792b2f7269567061543869455763536e744b62703745634561562b3250444a67322f46387231394d4c61732b634a56626f7336632f58646a50434a6b4547534171556b7a775a66535a707332364b736a6b6e4e2b3871423272714c717a4a6b7a5a3836634f584f324d514c56314b3176644571393964566534744e352b304731564950436167436d4f6b7255676177466e6b6979516f324b6866346c6873796738482b463156466d41616b42714b617431315a4d4d515a476b4176676b6a62586159416f42532b694261495371724836612f77392f46725a646b514b594e6d477276626c414f6a5672303071685656632f577478664c71364246466a70784d365a6a704a3350427944653959746f6765734f4d6273635036543438654d7942775339615a73326272303456506d4c6f6f4f4a5579324d6e5544495769504131752b41304c552f58723849686f636e664a6d544e6e7a707735632b5a7349774b7169667666726779652f757a41344976357637626669674d75684b6f6d566c4b776b716f516f474b7878636173324f4a4c41384a787070526a5549752f5273304873395851454643757a6376434c45716c71766c6e79704b35684f3342556759612b444c396657612f54317055575a5774736d715561682b5034666534666133344f76447652467973306e48757145397653342f36744961662f39536136434839586f6963744d6555794946397056752b7a6a5a3247397937624f7a30785435324e52417073415043624471327754742f51535a6e742b326937376937354d795a4d3265744642762b385a486556444557354a696f424f577a694b517359417a44527579676b347052716d545a6f514e6d38642f30452b35714f33506d674f6f507250476378335a4d762f7a704361704a644e414f4937365759326c6d414c5651383865424a6a4d787246492f414b445a662f4f2f7945502f31382b6f625364656c372f4a2f703669613730573752374e7643795765754d6b6b53622b633539636d336a70302b473836795a7a79383759362b6d7979773564365a6178737731684c4f466e32747068542b6c7a4861637957394d4f4731412b363535333630626f4a7835477148566e53746d71616f457271684334684871745642437576786277764d446c4a4844376a6a686d7434725262715534632b624d576574596373516e352b7050385a7a647533626c616459794e7379636654303664796e2f54622f6c376d6f37632b61414b6c727176526b304e66794e7763483773773648746c36594a2b574d6b625a65557253737774684369502f573062696e337a634c5a4c565975706f6b2f2f357172386268727a65554439767a30596f376838313279396c5a71363550507a417a3262626466554e554d412f6274567875576b555772716c6e4769514b3037584147626262462f7746535a427856527172616b386b504c31667a56777368565a2f6d4a466c6c467a326d7734756b65544d6d544e6e7a707735633959576757726a55662f594c7a3175786a47557377755a4e495249304e36625a6f4a7732625a6c594d4f575a44427135326b442f57384c566f6d694e4d35536b7151666e564365654f4a44555446737a77664c2f7a6c736c6c76577a6c7244516e4978734a436f444c397535644851732f6472642f63744c7a643031794278475051674b426e6f7a654d56486a68444e526b4b71694a4d7535753557435534444b3654772f71585065785769544e6e7a707735632b624d575273447176586e50746248482f6e786d545351555143705370674b6865536d626265746731517762746d476c5932345166596d7347435659395649475a496d4556544450477a7169592b34502b7154686b6a38674c764b4c7a3973685676657a67714c307967322f436f4c564463556439484e4a3352614d507a4e31536b2f4465344d646b73555a3952624361316e7a6272624c672b6f73456f3634692b4874782f72566f6b7a5a3836634f58506d7a466b624161714a4a7a346f53312f39596c79746165724d4a4b306d47414d4353517244325538714167526e334537457457554455426f7946585037566747734b68754f77785841396b506d36612b46766b352b745570496b727a356c5137427145382b4b37747a32424f5266586f707438796474515a6f7865376644625461726a697330315858763751794a676b6442764f69426a57724172396e554d4742393633336e6c42414d6b36496356676a6a6877512f66632b66637263336e506d7a4a6b7a5a3836634f5674504b3671795a4d4f4a392b3252756d44457a584a3134383041556d486d532b4c595677522f726f4559344655722f394c326c566f416b464e7035314f5a6c636b4a435a65776b7355496b3449452b6c70776e4a646a434e346c342f466731744c48366f2b342f59375546632f31634d76635761757356375868634e6e666a74746b38646264797234794142566f7466334376312f746e426956687430625a4c425167316d53697068612f5a394c4e682f6e566f517a5a3836634f58506d7a466b62414b70726472673837723835355551642b6358685a5947574b5a4e5242477341554b46364b485567694952435175695963434e6f2f535855534f556f30717a5061755672414251494170586d4b50466f46496c63464d7a744b6b6d3473494342652f48452f62555872397a6e686d5064556e665731753362323765344a654c52523879344b47384637366d496f755a35494b484534446b704858486636563272336431773573795a4d32664f6e446b7263614361766e39633563724f3539387176322b3455774f774f4c455652496c616f326e54346b735a566738684749544b6f614165455971332f6273443134495a634571454a43796a75786f435761376875362b2f372b50314564496a6b6b57734671762b6659486b5539587379795837724e6d6d2b69396937417a716c72797a664e71504553665244646a7765736570375338475752685433537a302f6f79597169724d696e744337373167784c6e3756643134326a3456536263796e446c7a3573795a4d32664f5368696f4a69352f616176477634793855514f7179304b416d6746684946464944474651434d36515741674459783063356c47634a70745a747a6e496c69322b487a352f2b445753474a4757375937537672626d6a3562424f3874696d3248727744796a624f5530724b694b4c4a33565a6f4141774a33684443756e79737a7a34752f6f6130654e7471582b52317975547439634e2f5375763665656d46446d6c72327a3167617672575558484e43782f7572666476777a6c5849457937775149353244666f5252533379552b34766b314c4438347236586b52484844716934373737666435376d566f417a5a3836634f58506d7a466b4a41395847737837746c2f7a585735646f49425a487a554d4c2f4a6746664b3052374961674d7754432b4a7a344f69533247444d6c6a53794d6262664e666c3151336358667353334947554370505077416e697234572f6964384f39434f513841755545726c4a326771677067483134413841555458317952754f6a4a47787472337537676c72367a746d725848394e2b386256444e36325756493077494e586f6d384a2b494d49516c456d574f7975774d476756766870783273414f747a3866377a72655858316e7a707735632b624d6d624d534271704e66336938582f4b3569616454537550413541765656414276415052385a7171706f685741366f2b425964534431454454557845456d53476778536f6d2f6f786c506949616a4b4a45444877665a3067316547554274754d695a7938314c4c3363466c636c7430386f5a4f5a374251586956475771776849424f4e4e676d56576e726e2f703673523959367263386e6657567533616f7a6f737565754d547566716a54734367436c30474241535158684a676577384c364d4473496b564f572f2f3974632f6473456d6e376d723773795a4d32664f6e446c7a56734a414e58485269463670555a5050314d43764f70513656423544384159474d366e776f6e67727a726d463762764e56564f6a32597067465169634c4e4e7742447639414941474670414b30793573535934435a6652644f66554d4b4c51565770545277666c613237374d614f74556a50567a6f70774e646a7453387871676543316f64656f764c397951657572446d4e73437a7471715862422f75336f45704c4439534271424a554f354a2b3134387349617a72424375386432466650633158626d7a4a6b7a5a3836634f5374686f4a71383566564f7963632f504a2f51644277496b714443694b524a306c516b4177766f45412f5331686c3043396c304d596946566c38706444414c35564f66424e545846796a41373850735a324361665a48634361644d4b6332514855484631564d74353159426443734e7745486c6c484c575975613074573476795068415a565868692b54365051466a73674941486d2b4d50335774503834524c446c727732626266676e33394262582b786554534a4264796b4e46466476334a536b796c53396e7a707735632b624d6d544d4856482b4f42662f357a45766438767066715a4a784248485366454356306a443855684b783154394a57712b63436e4f6a5745566c3346344f777a414d67537a384431703862576d554d4f6268362b54536b68565a514170414731754137577350587a3853477a474662626668387743395557745669304536517a3862776d754f3837595358376550784573616b416673697362542f3357353277624f326935516854327439364549554f76557350527951764a42786f595a4e57376d76353035632b624d6d544e6e7a707a6c31627a5765714c364335363658456f2f487262466775346e67695a714143736a70704b4b46556647454e67567671707157447652684953364a3248513669746c6a51615867736138684c645670786e655670322f5a5a30715637494f5a55327166586d435272774147337254784a4f4e795a685930316a4a766d2f6f4a4f597436796b58727478654a59494f6b6d47765954565842724253594f43317845794266632b466276396c574547435369386e536a2b68684d6f31544f6842516741616c30467a64553271612f3042747837523770334c5833586277566d624d776f644552486b43536373514d5a664b514e4347637958357768574b544750523650754f6a747a3573795a4d32664f6e4a5569554733592b36626a565631445a38344e515246575535557035734a2f41325a6d556747596f71414b734f4e7952746157724d6b37544c57794c6c536f75394b65537650656d333963746b2f7644386d67586f7469522b2b32506d5753444f746e38746d506f764c397551384548387a594b35697a704c392b75304944784771463271697463334e78316861626c36454b72442b6776526f7171625a796a46565778754c4278334e4a367471584a73662b64765269747957637453566a6967706b2b38577171734b75582b4a425a54563333344b64464246344473684a755846765a3836634f58506d7a4a6d7a6b674b71795a746636357963736e43517837773456444938366d6c67326e4a4f4d3279467a6254535572704f494257315445584c7969757742584f7268357064735a533269696b73717a433238684a5a342f586434694d32624f447248533759767a366637377473364d413047547077707635794a6c364847312f726b68723530557731663257666943527859596d62516f33557a4875337233767431372b6559627239727a547a7353693530347953555a7356416e67616954666450536174676170724133625770677a794d79517a536b424e46525433662b354156544644707154636a4b6f7a5a38366346595870754561676b6b534f38525077696c4168734173746c436a45654e575159697033705a303561794e4174576e346135637978754a59314f41656b59456b6e454f5654794c5a5545366d515772594a737773577a42716c374c6d6f6d56474b78562b33625162312b6a2f434f2f77485a2b7565764b38796131316f63762b657667792f664641367130704c5058506431366c4532596479715771526743704158784937704a78694a51556e48524a55634e534c41485a43784774322f756d3439755076334b553278624f6e446c7a3573795a7331497a4a6855486d634e63347965685153727769786a4f5042684a7378312f537259716a346f7a5a77366f4674416144712f5a6e775971536d474f53356e355347444a42536263434d2b397378646c59615142713867577a43693246694e4245776e6e5152576f6e6549734756653868762b36393876745872356f33496136344c47442b306e394d5359316274725970722b394d4a35393864336547724a586f774d6b6f5234725166626851766349343350424c4c435a4234373755786154314f506a58346d64746e66536251316e7a707735632b624d57536c5a674a316a7552506d59664844636f6e4132425445717a3756305a6f4272303474775a6d7a56724b434953482f755538692f676666484545706a794d6734697a443773733542384b69504c3042307959633248634357545449707148327157496f7a6149423748445a71657179696e2b6465666d47424b6b74414f742b66565448327174654b722f2b754f745647622f524a37494776673874774b682f536e6a4258774d79455674354853416f3967694e4e39333836706c75577a687a3573795a4d32664f5369366f5a5444506c4473544f38535159664567304c45536a6f315a664970386c4d36634f5773564b31684674656d6d5630375241436875716e5747784151496c4c427049714e726d5074654233774b594d757a49412f6d56686d77323671515449674d6a2f3579753746566231652f586f7733494872686b4c704e4c7878796464326566782f715431383058447643616f6c4f6b527630574543442b344a3157326b7233667235354a4c36625250336a616b7150322f2f6872612b2b4f57346d5453397570377a5a4d4255796d642b4b733331327147694952474e434c3245597036675a5a464152706a30796d49434c70505871623350442b6b6e6e6574777472465a385071586a4e516c504f6f4c6c6b6f6d6563516e564b5a394468395159614152765639694561484b496f4b565259586f574f36584862617a3279764f6e50336376666265544d72574a466d7173596c372b69784b4e7a523558436a4b664d47445a4d725473524e494643696d777976656f54494a6e575171776857744b764f702f686d724c424f6b593457492f4c72335267656f4a42513943637435526858355132776842416f7465434768633439542b4a6d727150345053372f3546564f726d7a7757534b715361553553415365427742674c316d32736f7478504d3657695a587164366e55626c48487064656b5165507675344249417a6c6f4871415a506678543135797a726a79792b464e6d434e416969754d47703155336c497664686432464a6877517835457741556d6b674558525a547a4b38347353394879712f372b52707858346a326e393431624e4e772f34314a2f58366c3577784c30366739626641726841656e6874586a4a38443149695631616b3752792f55514c576d3142643336756d506f324c7530765a6b357449743562664c7430334e5837593958355873436a4d73676b4b46482f757271356c716e6d556d4e754568474d4f323862586e58437742566b32594a7145526c7142647172346a5062744d6a327a663756766573394d7930717472512b7a512f69354164315936676356725833422f3776494b39633353726d7232737132444f55742f5162397632456f497766563635335a66784a4554674a7075444938614c656c73456a795a35624f41644b534a714272394e304c4b67504f71386c573852366476314c5a6435705274752f6c3370462b5837795044396b793771352b6e653167376e61726c4452355a5552395664553078566565583651445249386c30564b5744694434664a617549705652354e4d334b59326c5679587a6572574d694f6e523364773961387a3739357a4e507a567a615873356133693231634e6e6d664d6d614c594e4671336f4754636b4f555234564d6842524a4152694e4b367979434c39384179795662346650644f7a7a7a464b6168544937456e5170394d5078376b6758647250593974744e70317432576b78323271545a615248787a586c702b2f54706b5a396b4a7779443438446357564d2b3767554356446944306b366b5542506d697a2f526d7269315339356574377943764c4e387332434f55753245724d57373069584e5779702f4b426378315743593875307170624e3637416c59616a2b4f6d586c4a394e3248647566316543364e2f2f6d644e4f4b52587a4c54724e5a7a38336d306832364c49787575396b61623967657a6c63566b793862395847454c4670564561784a6c4d6d6d564a516b306a47536c684775665932714c452b534b41746f5253537479726b663639512b4a62646f6e347273332b396e37353243414e58474f39343651516370635354764a57487153533965424b63535731734a692b5a634d6553574f416c6d556e463448682f58564162313839575558586a7748655533484c326f564735367859687a50695a2f6544795265483669666c75696d6853342f5266595373465a2b46424a5a52786e566447704c4b3366326e2f7977316a6b6c4431544a624e6848683166466e77305a31742f387477424f736a655355664d6e414a5a46614d6b424b4b636d436f374a6a6741684749356d6259342f5046442f30395967693571315954436d57634c584f4d6d4b4e44664454536f2f5734566f59745745332f384c48326f6761346d4751376c614339576c714439742f77774f6e43377a2f6a41625a6447446e506731646d474e2f2f3172356a3463456133394d543575386770383365586a656b4f4143594a424266634d4b6d48386d434d4e4c4e6468744a684146615a4d71516938485747705630314d376a44666c4b5971475278484765676e4f6a6e49574b616473663649364266596d41694c6e686352434b52424f753778636665586a743877766661666b6e306b4a336350766c66392b39663731576d706e2f58545531623343733964386b4f66476c39547a507967683674476e57793951655142325a62794441764d37354e33794e396e2b7650665777344a434d5555794b795665647051663874503633595a62753573543864734e706437527a507052636e652b6d4a737a656e48792f595755785a75496349676d67675244524356467a5a5853566f6d437a6d534f444439443052554442564e756c75672f7873546737386436674d594f4f654542526b31415155693263597a6d482f41623561556b65452f676a6f724d7872544d6166715548597455326e4b64354f5733346533576d7262386d6576565a473939322b524d4659754f357a6d327944665253416a2f4f5955546544635449415742686a306f32696f70702b6577727a502f696d7135773072352f3459763565704448564955437052566b74624b4979544a70414652734c5276702f4d436573474730526257595468494c2f5159367130426352473165707242682b5a524d524b35714950335568596f65302f6d503178306472394e6d555a6a32376668585a64657450796142656379704f33387478717253434a573939745a4f4f7366754b7a2b59505571735358544757316e344d787a6d5677524d3452716a766f59666e6a303063595278426963307731454273774b4f525249646c2f37687967774856394e74546d5a72352f51414d6548437a653559687a6443774b57525059356e73536b365a737977516b636b6d346b36674e62477a4437717a6c45427142717a2b2b37517051715965443137346e4965417147435a52774436564243506f705973426a5a636576717a483239362f4950524855375a382f57696461427666634743563737756c5234335a596a36626d56764851674c4a575131736378384a6e4f6e62434367736c69675455755177724f375a5a5950733455365549415a366b7a476d6b476c32533472477879454159454a424c567a7476712f2b466a6d6436767832695961435a30306d7a524e6e45504958577834774b566f742f4e57373675442b6e785963666c76566a6a58353679314c4848723635334532312f746d667838336a3565514b4e362f614a7677653657374c5572444d4255706d715141546a6848676d445a644d746b2b58483138366157783067385065554e444f616838454c4e636d6a4f4c4b4f702f52784e336b4253583232674d54756571656d496349533062312f3857626b734436545932667433376a5233377562582b7673767a646a567a4635376e35655770576e5342413331577a44644b2f51787a58664a3647446130375a443654504d6e36664776416a72552f546a3146746d453231722f7457757958396b666a506c7954787478647261426c76594874762f78592f5975664a465766736d31696631392f77783464374779306e5a73415979633949533662625a6263653879764f3371396f316b6e542f37323271587a3771344669386e644466436e3061614c6957654352524b78535165614d6b533037456851535079714d6d7a4b674e414e576c5533456d374e4a4958436c7a6555412f44324a4f39434f507257777349737454433470492b635842324242353630675974354b55762f616c3967313142546a44586f66766b5833372f4e352b522f3361375652494667763269387741454c2f4d33366856444b397269544e496a784a4a794d5131676f6750636f78784954724a7945704a3832344774792f6b41585966333379766d4c2b73707736395741765349714e585578794a6176752b64324d6f764133743732366166444f6c494842354f392b5459534d36706359743141546b7972634f484a545961624e4c64485a31303168754e2f73367a4d2f772f45387549355a3837342f7550416d73596c6e4265414666535a42647873384c3155306a6b66547a4b556b72542b436b524e722f506a5452485a724e796436514e2b33596766764e4e76377a6336693248313630336b503935463567462f474235706b735635466b6b75432b794679334a347a6f304e7962364e75754f4b5a48764b467a343857532b74373675654a7737304d4e4762674e72626d4345517a4959434e7334326345344a564a5676675053427468542b566676437a4f6a5a705067426a74745566652b2f6559737a5539315572354a7577315265374e7a327362696d4b35456e44765950376a7170363572794a705279633142393679344669776f4c44494b435575434143456d5a6739554c556d35646d737167467370714f712b2b35704b6a413664687031422f7855562f3532686648705a4e2b465144434572323975456b397947415033654d2f355663637672785941754c6b726138764d366d666c6b464331564e6e6b386a684f376634587433684e5552383845335764333734642b746d7a582b6e6e566a4e4a6d7679742b376f4b64382b7054384e572b7537684f536c4f6377387a714e6e64796e2f33623656525a665654647a385675665579416d2f55584f57396c637736535a6b4e52346151686261642b51706b635a714a4263694e726a5053354654392f6f6f6573787541646b497a423833672f6f76544e706576547231714d54712b71356371477050337a64666d556f336c5370504f74732f6e636a454368334255744a7744706e77513359614654746c304366527739633947467a5238667a6264514346767070625968726c7755506d357731454474747039366f52353336384965395a387248785a574c457046386e4a73343678415467454e795874723579434b366851346944717541755064373154686f3475767a637751564e43717a613550773753594754394d555945327a49654374783635756455714d6d486b356d4c2b7350626264514b654e46506f597262574a56656f7977514f4a6f6f6362374e615169747359375a4e63585969662f367176492f6a73575a56644166746634442b4f756970755062786337622f42364a3563417877566a702f37572f6a4f2b6f6464373369757177646976666b746f367a686f686e4f6345534a7765734d4443466644656e6235737452424b6c69374e2f3479756d3637532f76374b354b772b57784c44384f354c3235534577576e6e55746539314b337375754f58724c42412b366130523338683934624b68617337434d6f69385031594f734e696f7243634f4d483379346a347259332b6a54652b686f7648394c332b664a7a426b3967422f643162592f4f316a2b5a382b5a587a482b67646c4279334e6448517a736e686257474d6c53474b77446d72684173774f63694430515544654a4542794c2b6d4f6e562b714d6d636358494f64452f444836792f4d2b487247714c393637706c74633670522f37344553357447356237654f7166574a6150794335494d4c57543956364c433759324b57664538727661614b424a70522f3370686133666a476c7a584a3762702b467233776f4a466c70772f367951534e4469616a79724c4c6f3377634231345650364d64587371577650452f5852722f56587332717738363633676b54726e436c6d71694746456c3368774b4931554374645a4e6b694834596b45382b474a656a582f6443773252552f5a2b71507a3245373531487264304c54566d476733754837756e2f3837555935474169724734315075534d6f2f456447775646446d7863615a6a42424e66427177537a754f794d556d43467964656d33352b596b316b7130326e735450336672597966736961596f77426938337154766e5841502b314c3039692b767770707667367230413139583976626b71346c79612b614a324d505278304771784777496c7962436c497435393833654e74785a4845376a793552707a3259486642544975637769464a694630597a6b6b5156564248457664662b6e534b42716f5062624167344e70584e302f2b652f525a704d6c764c77697435746832496b3172464d7a636c446844504655654e456c554935485632476e7831574f2b7175472f32474a532b562b4f474c577856492b6335636e336a7077595364373539724871362b384834694849516d566d3032356f6746393477744f63322b4a615a582f41422f4f776f7165442f376861556b2f53663339353631544e6d33586c35783130582b79717735613168587658635034547666325245332f4866464b75673636343467424975515949416b4771444c6b4443503042755674424577574d342f4d4a3078364d4d30665156756f704668657a5635446b78552f746d76376e57312b5733336a63593548442f7364634d614e434d744f3647674851532f566a36507571564f6e36372f53646f7a66522b2b33386446316a5a2b322f5454736271412f6f7665595469576e7a584855384e37514a61704c4279704a57536a4f46474a637053524950316c596c48366c4e6c3530782b4434485745767372486a756b306a363972654f433659763268334f436861326a674c7738794c59627073474c69395633495541584a4e515251324d66777048566851303279756f734f6f596476354b7771353972632b612f787539796a747434434f564e782b2f774b3241482f466e39342b72624c723278622b51744377486b41717836592b4e4472514a6f4e723077736348456945767738556a43392b616849514446435a655042687972366e383832482f31355957542b7a495859522f324d346a556d3938415738565354496b376b356c326e384c6e5046497a3176525a304f3862356952534e38782b704967465a547266326f6770393870457279594142766d4a4753626b4447544f7167786c5331443573546a63735a53306e443641377437742f583471507a4759305957612b754b73794935594e366579684c58764468557a5667795141662b31544177677342555a63304f635970746f787a4a6a69684b6844453752314c6367624b6477415447556d72596851507444794c3150737742646d783870485a6878562b50766d6464716e70464356417666487148344f6b507a7151426957712f486a6645622b485a4357444f56464a4431737a73656450577548646d74746751494d4a3673654a79454144715a616276424f4e784e57735a61526832622f2f594966326571586a6d2f422f745a4d49687645442f50546567463265695a576d306e2f2b5972646e6a2b7050556a4d57374d786d4e63367755532b7853674e466247442b437278554e534b6d332f754c734738796b7362434c532b493847764b4d634259585570446b67324f6a3665636d4c5933393765696173742f7437556874697469533730366e366174654f45354e5754516f6f434a7552755945726c39696f306b7177716e33306a4363656558476e79447641576657617a45536b5252645445426b5844576d53664b2b397a716d4878322f4a6e62686758645858486e456372636937446c302f4432442f4e48546a3466355556526e30657643672f4f326946356a666c742f7079305a5343337a6f3547694b6678627855795176725378376c326d52613838764d307476716f525a333863644c37674f4258414c677a302f7933526a79723851754b5338635a375272657250502f412b6c594a54462b6677686f75485847325772696d4e3277616b6d47495a746a6141646b79644b6d555a53534a53746d5173527131685133786a4e4562526d386246394f576b496266336a55776374684f493670472f50466a34737a5a57745a3430674e372b47393865714a654d48486f4c6a45454b615943346c476877616b6844494d6b6a7763564c57543044646b59433936526b52654c496947447969536d494d76764731362b754672525342495850626c31617354344e7a753866646e7270584c664775345a303037632f4d6f6c7043486f434256554133543066644e67446a694867473842576936564a647a422f2f30494b564c42673044696d367132586c7641676f345658534275516a595477776f6459464b6178744e766645333837533764752f79653339305a5855746e5774387a626f6a72424c546d4756334b566868647962656c376872645076473356363469766f6747514172434459396c524f2b3574506264486d6559534f596d6f564c79357850633977436b5753424641596b756f76444d516d5a58475a43492f6f3550575679756153547934716537426d394e476247685a3457642f6267316e6672516750544c6e3538696d49784434672f4f43327a753565624d414d554d795179684a766a595971756f2f646455697243367473776b565441686134636a684e4b726c33464d2f45467342636c41336851512f355a584e36312f34734d5a7364744f754439614173524c686254564f31397a7070692f6f6f39654533454b6346415a687470416f524a784561584d387255523768375444767156494a7659576941564d37785161464f794a6e4c746b592b303163586b6e62546e51783668534d434477744e49686c623436367364565a794d6d375654717752765a7a3355722b366b75346554372b727541373347674a6c575a3034394971473151786b675a317268454553582f48316c794b4147397a46416f4b6f736d353768474d46514a7935656e7a3573526666344e66375445365075754855476c6e3579596d7a6c466864666c33723938784d70794c2f416f57795a564658574c434e54686c6d5257335a526175566d754a575a4b59583967534356517a4b5349715563746f2f6153672b4d4151684f4c31515446787859312b336947314950316c59572b337571322b2f6d49354e586a6270656739532f36566366427949515369503666584839507658396b54362b63577a4e3569776a446251324f376c736a597171586938383033724d6a63515156454d7438796d364b35416f59466a396a6f7556716473625437786e654b706d6449667378354759533161476d56696f544a4b75704a4a435a7a3361722b4761463635526762677367465a665a4945314c4d61514f50457765617058715168514170334a4e75437539527542524248636630696b414c6a424d777043574f365a2b776e6e6c4d4932376e6a367a536c4436775a636435727a3045554555456439456c6e54343839584a5637352f4253493538426e776a6746376d384149384c4d6a676663334e666d64742f6950782f77724f4f473352786b68434357676e334956584f69786353787a5a4970344d636b3478656d6c36792b752b6e552b3239506e76627658546647645348656e30565864362b2b5273316231693869536255457268384e374d476663397339553151594b47382b6263793058516d6a46306f5a3644667174637262684b6f6174456435323354364d6e6263626e3562585652566435303863395554343745566a756e72697a7147784374342b79746b2b76304a3378796b76357851794f645a302b2b76353871467133705478754b2b33697965506751705649456f772f6349636a454b4d333451484f68677a6d71684676734d7855385a48687267544655344932496b51624970782f58376a724d475165725066364a3932656976487139342b41396675754e33497734387a6e6877352b514c6b30396e4a424b48716d6751546f355a2f546f34754c4862414e65504f6142466c726169622b634d5163692b324d6b79344a3146674e4a484e6266484133675467654641555070776a596930396773794c706f3453567a32584c6e3463465a52377048554d784f6a79557565756c4932796b306a4c487068576c3939384f46636d48636163496e7a6d79682f41615246566865632f6b68777070544b53484156464b6871332b536a724b47524f6c47325777716547377159434d7972696a4159744e3075796f73335866634345664f57335631783537445a684951794643726a727955747257706a34394633372b752f4f2f31492f6671725553374441386b4d6a68494e675a56314d7049797a47704168736e484567396d6f57694f52477847386f68694d37684e556c6a354b6b69776347625353454a66482f584e393365743748744678615a54623737666565734e664661632f63534f2f716750667938567251373774737849434d794b577a5a762b4b384b45312f4e494658523469657244435757504b766a4b615352767245644e326a4d796d354a5a426b586873774e596d654648523378786c632b452b6b2b56777871502b336d657a6157645a4636657870724f76322b6131695476426134454153322b5171396a7a306a5761566a63434e4e567a7a3350322b764a4a6777363044556a7653593063357068594d55576c48306f5644444c74722f6d62612b754c78424f37794f6f75446f5735537478425561534f6e72322b52334b4e546a7030644d697137716573454e617347712b2f534b69654f6868315554515977374664694b5974676e7263596a4d31584855676570594437314d454d4e4d30412b6b542b595177754d68444a2b7064393764664b6c7a302b72482f6a336b397752764846613361416268365a662b504a3044644469595675573064494d317778306d415257722f472f37476e395a314352544e506952776f4170654631596c5859426c4e513559504b49384257716e78543262486978564c4b3674514c6e35315274382b4e78785a5677466a39374c624a3878363779552f353179705058676774745234472f59475a557166515068704241695849485374624461645a4838334a517a757632677133443058634d54476f4d4d69447a34472b326e44325945575265595a67695a72354d4f683645637830677151652b664343354a2b66327361436135343957347641565a5947556d303438623439307258546a7445587668717650636744426368496e646c44314c59796d78746b396d477045796d5a2b792f78766d4e696757586b772f424d446a584b4754506b686e424745776d74704f784374576831722f71642f6e713238396762384b7a59352f706a55794d6e6e49573842635477466b413045544362614b496b343375614e58346c6668672f552f7a7846623532546e456634716845396e764a387045552f5a6643704970486f3762794b76414d30565974467a58637658717a4332394b50544768724b3276692f5459366254786c4c74767049336957744244446474375179333177417a36576f5855596f6f46386d564a7677704a487954486a5141584965654d69576f57775134507a73786872557a47563357494c6c316649664a5373736876642f31414c366268536c39664441786f61776a5663747a4b7953636e78504b2b595735357131506a48782b376c6154555877325a636662686274716277624761466c2b37544a6c704b5639584968464a355839746d544f42622f4e3146466e567065794b4266307651582f3450666937634a324767556f494f48393638356e337a4657572b4c5671446e716f42617477614f42736b416172776653467539663176757843647852765a494648723875723564536c413047666b634d6871357144666b50455a544b673265314f4c646161796a726337587733427069306554324845694c6d7357546d353247326e56717743423859784b37746a37503243725837432f65492f586d34702f443369667a427a43582b7256525a7234746c446c42427337506b7a4e4a39734577724d44345745476b4946512b6d4c686d3071752f56357862446657733834643642695966664f35386f72396f54724d5637566c6e3343775039304164616b6946466d7a392b37443675387a6d36316e7772336963694d382f39333835654561347652553362722f32636551314b5a626f2f6c4c3166576132443865532f78312b63764f484e726a7051464a4263434e63572b746f5349464a717650534662667733767a795241744756457331414646756657655936684e65332b56367846714556492f51486579553776684532325a52392f744373524b7a4b756c5a726e30586d64332f3476522f372f6241436c556e364b4a593576385350334935776a34572b496c78333568347a6b686c58736238585867656f5041634c567656704f4b546d594f65355739395737586a6c2b664c4c7066744177696a6a4a37506a48684c47525077485069583876585872654a435a632b4c485971507372384f7a5a65304943506347506f627866347170466e766b4a3332625643333259625a764374394c2b4a6b69495a38774657526c2b674e43346a71564646636b4c33727978716162587539634b7663352b7a704a6171357836412f2b322f317250506d2b6137306b75384c4d6d7639515169754d5134754e72445176514458787a3766622b39715a5a3577324a666d52503243476270725a494572516c724d35384c4f4b342f5a38646d4e77506d566e446d34797743704553495850324d49476a69675a56314f2b327979764163446658753757634d734c66795546317049436b4d74745a68446e724b413953356f313674754e47683763456273564d6a4e2b78446a4d74546479786a4659426d497a3932426d4a50446e747655794838516e7a41623345556b794c4e6f535a73475731505663302b4f5371397952764848596d68352f756b6f75722b737557424150384c444e44324f765a317635416d4b5a5a514e7057365655427067324279524242754361466d4b576d54504557564c572f4245474237442f59413935595442674530656d545a6d31534f596f5335686b4b6e56736e546b4f3174366a43734271494b7656346c573936767063636636477647394e76366e5a4c2f484f6c38664244424145534346377277463872514855776b42536d4943514e674e6747434d4a564e41694755642f4a4d6a4c30654c4a4f31356559716f364e6d73765a4e48723932496939635650766653446f792b473932426b34634c4535592b66432f3872535343557a4f774c384f4e77647368777668646145576c7a537a65313157707370513542673267476f7971726f6b347441562f59585a47356a375135796171796b6b6a775844494365316461626662417a714d5279776a654d75444e39643737483830344a4b6c6a512b6642572f4773324f36796172466f52532b39586c744270394d6b326c6f6d77715174704a6a754e35573174734e344a6b7a4b514c6f5234797a306878467a496b6d6153553457327541736858324a2b77587768666254796474662b5576444e533973586972334f397a7245434e69456364656338462f435055686a71424a636130687a437174645a30586f43712b574c684e684e693254476c6168555165576766437a4b756b7a526d396b4344454c7136617375456e7a4e31596e4a4333592f654a4f43754377567a686e772f754a777a5a69326c4c657558724d524d3376646f35666564626c7a4d614b62676a42536355746b677a526a4b48657068567730414f41674b6d736e36766d63416b334d786841493056496d6261446a3068534a6f31427749345432734261373663514f69452f4177414d42554c7862303472557666754762625379393152335062747458644c376c47316373627456654e637876494970444d512b736b7a71734b4d78735a4a6762446657502b7a5533627254514253585a6c6839694b442f6f6959695256737463394272375542683032364137626c4c45716d3358302f4b4144516170317971686e4b6e7253644544516343514365417438575330583166577137335056426747724d4e655947502f4e346471355650764d584675636b4c496774545734724c4471687931634c424d775a69664250474c62785847305172615177636b486b445a673246527567426b5867524b3351576952742f3432785a2f364d7a4c5045384d3262365344694755352f76454b35492b45385961306a444e4d61495a3743344a4b547a5450482b4d7371435770776c455132355959786a6c68693650705a70435a6336766c6135435a73797173744f4254536e504e773051426b4f6341474643324334485335686c32615945307644597a5935527a65426c7675756c56643061316b745831764f785374627978653152353854414a56576951464362326f53426741476a5936644a6333664f79394a396c4345367036534c42574979785446497466457a5a436b4c66345a6b5668444531734f73495670322b6533523138736258756851396546504e69625073372b46316c433239517a3155326574546e553048684777564d7236385970393850496a3864503441464a6248746931704a545a6f586d36456d556b306c62424d67494a5a474f31717439686b3173626b69506a7550542b525578635a4773564d753277424e344b6765442f5674797437366e2b4f792f58786b694d6d52524f33766e6f5670313763636a455566434e6e4237567235325a51304436514b42514e656e694b6845516c646c3362646b4d67632f4a68526b762f766f4b71457a4d443646775938686f55436c4b6d4d6b7374415652655444596e5a30776c52706a50774e514872325656307861722b31353137695a542f2b36494b397069344e48376967744a5137496a7a4977495a5567676b45794d35556448475032725a376f4b434b77745a6f4a584343795538624a57776361514d7a4668576365566e5a3157356c58677231426d3233764e7668476f44327730463246506848735235344e77502f7157525853743176777749626b4f386955494871774c4e4f4d44357178416f473365533577737171745a7465394e78335a3837386f585775752b4a63352b624d6445375a526a4e44794c5933494d5a4c586766567579437050304b6e77675a7568766a41397677526e426a46524d364f6c6f574f6b4e7451694e77795335466a36704e437963796a4c2b6f67353436474d35613357356e585731686a4d6637712f574a4c75536b45386d776a4e7a714262327231504847466153394c58476a674b6c4d6d4638594145376c3661614356497659634a48667872754b6136504933333664713261527a70554c436564717062543968563165754d416b364a6b5a6447556a444152575a4f7130672f4d56464f7158506b69516c4a426a4335643356307458644e444a744e56654d2f68504e4c37414f4e54473952694a597371533470464d3958554d45456c3462336d496252416f4a355556636d4c6e2b6856396f39545a7a6d505873437a597564727a7652584e585a6c564d5a39796f7747636f473346795a44624a79695346626273423148385a422f7778434f5a58674753484e586746687245684a646f765537584c4b43613057486a34392b4358796b39732b426845514f713037632f6970583364746655583736506b5773445777563053452b734f4d36654c357732694c325862502f6255666f63374358397346784478495969705763776e4e2b674f71635a663070486e37324543517130367159457a437a544634304b344d54456a6d414936335976392f6f6a636b5a526662724d31394e6d6e5643414f32677264452b785853494a6158324d5a47386145306c346b39634230517755676f6a6531446f625a776843544243374d31736b336162436f477467686777685546547150464862627374424c3436714f4e32766f646b6759525132785779696241756d5a582f454a596d506464414c4c746444505873714f6b3551316b4f45797a4631586572612b6f4f2b4c386a3272397a3661767575473544676365513234345553787436366a556235384345446650693149434f674a6e5a73487930554e4951524143784631534f5049364271725441455766454752327267773347796c69616264746c44746c3230376c3830387156704b4b38696255726239443752617147644a5673544661702b6b53566d726473617a463753532f5a464652344f68727871527a7332656f53734133373069534a4d506c49667a69622f584e6154384d7a51566c776c57456b4a6161434a4c694b7338385838616254483570643865695a58785436766b4772592b4c5a69576435444d6a68395058455a4a614a696f444a584e6d7841706a466f67564f613573325576774b6b77355a6d64376d774441722b55734e59763352756366314f72397073355161364d504366516d7274564b3245732f4365706a2f2f4f517a394b643457496c6b396b7741674f6c4a49356d304c6c6c575a633862374d69782f305a7048307832556a795437495561547476466c6b634f32766e56794834377a49774f47356a4f31337542466d5935396275622f492f6d394a63667a78354d30374a63723774714241715532654b43365468696c70434e736c43474a7263544769746a544d57547a3035713045443161756656433250316839782b734a7133756839564b6f3775576d58343067734d6b3049395a4450375354507a6a545a2b5564544b476c47735768725642686e2b55502f4d384e6c49752b3743726738475a78467044586c4c36347378724b4b47694a4345435649575431592f6b395a4139664a6976652b68466a5765345643355a6b6a2b5143432b546e4f6d6f4a6d3634512b50394a4f54352b32767a3573344a4d616b56633241516765547064502f6d786567476737594b3977594c59653363777255615573712b3078374a733573714c766b6758336d6245774f4363534a3963656f556e7a74712f70646553354a79797667634d59355473776946355a5a44445837624d392b574f304a585377477441425341326e627977327045596f645939735652345938536c5247586b464b6b73584d433231554a764130675a314334437073465345666756694738415a6178365278536b712f53477a4e7368734d32744f3049784b4e56347a366f764c6d3478653459377630726648535a3761526b7866737031646c48436f69416c6c5654637335746b6e4a664d3051476b49644478395072327675595958536836514959574e56703471563053463978354439647169744f476e50366573564b502f6e3036306948383465474c777a3755413563386b4f415955556f787073357342747a53386b6f386b43717a386e4741367275434734437358664956426a4d43664c7959553659426438722b332b476a747263474d6837313354645339646f33314a584b45486b5a6a645274774d6e3548777957533771517a685332457451344b6a7a4f79762b6265647836657952554950417a6468416b624a614d346a444a4b456e41444d564655675361472f473748736f385649504e337732337633686f596c374b53527072554f3233324a6d625847387754486d3335366a6b37615a4363536c35426d6b49714b5a41726237345a484e6d7333722b7a5351782b4b2f7548585451574a4759375a4c534448374c61736a4a41782b70396a55693939367155666d6642612b74305a522b70344c59356e47396372466652667565304b55766b70786d4656446667676b71497166662f59797569355178716464382f7a575848746935754c442b6365496945684a307843696f5974357755756d79466e696a5174365979483069593030783067394f4a58646f7744457630495a4d4f524565795542415a786770365359515756346f396c494442474c4c524a5379526d526c34552b6b63413142432f59634643384d76712b6c77787631696c61307a6361597371564a6c4f434f6a3059784553315a6377646539375663467a6b38366b6b48525442705a7a4773567a6b63766d6a70714e417167472f2f6e6351364a726b4261784a4571426e56664e2b61436a325a6b44533751686c4348476966423068364e32445a79724b6e364472493633734b36336a364c4c306761545875466276786a4e4d4233694f6a4c704a314d316f484973784c4730504a7230656e5261534c66715049393061726553566b55626f74466f57713966716463614577324a4b74365171764958726469534c566e647a66397535525a4d373370423257444b6a4459675a4e35706f4779517233446d6a2b65704252676552324477474c49734b6953797951524135687057422f653979386e4e78312f69566c74705732724d4e4a702b384e324c4a66586973465a686656477273347430386f4c6d6a5447566b75615752434e4c4947746c6a436372447437314c66363766522b50376439375a633642386c47377a53667751636849444b7975655034453863514844624c6572354b6344525a535a746f6f6636342f43424e493452795573746c786159396738314d7a692b6c54456b39642f574b4442716f46712b7a553766545873356e673155594f675669534e5549696d4c685332466f74456256695a4e666378564849594179754c38394b43474977493232695132626d686731774e5436545a5671796336756f686351386d4c516a70764c4e395a4d4157493361385a5669732b436471622f564c7a6d4f36735177423872732f44576b3453475a496b31417579364a794a41344b53704e54425343564c763361737150326258564e58396a522b38573641385934786c58742f74316b2b584d70514d55644f5a34444373734b7454627a454f2f453462474151544f4e4b344238707361714c376c5048782b7a662f6e6d476f647938514a36426c5467536c32754974654b376758302b55444d52334271704b43726a4c6b5052447642567746336d5964766d66644f79366b335473745546566c446277386c7454724c4b413666714b70494b71612f497067325a724e314d4956573471464b377554706c534659703655486873535163574a776c614530662f6f6a356a47464946682b454e6654537970474853787361583132795a2b392b396479782f3777326646642f644e346c474679566b6b576d5134707059614e37552b505861364f64744262317961496d4a41307670336f325a45733451735a3644717a31315771542f4677376d626b4855754833736b6e45756c746e32493267796e42716e4536395a78726e4e5478572f796a576e4d662b36544d32474e594a614e3265443735334351352f514356444d354443466a4931303766752f74762b4d593739643961364d6e374c724f637a506c3263484d684e6c6c2f6d647a643550767a447a416e7a4239543549494b69686e2b2b4963457a5074465159553535377a4379784a415131626c75334d64696750454159454f67694d312b3138395a543258397a776b4674317057764a6935383852344f484f4d4e7364584e6e43674948616b6f7a345278707a6f472b4b6533412f68674c73586430364b426e4b2b383939642b4666482b564e2f39324a4e456669654776445246336a4774494a354956537367685a7035754c596d4f6e7741432b44764d797030514d3974455a624f30464c5132526a5367674777797a73576d2f504c36512b3434754e326266387037774e78302b584e62695155722b75424d6f4834326272554c73664e4e474c2b486b6a34555233764e4447426867566f745673617179706f695062764f4954303258554333364c42496256717830757451755672427647505553354e3045505545387941684a39596b32704d6c7137765268617437704f597433556f746265686d483276772b727741494133796d5a6c564332665a6941562b6f6769542b66565876746764786c33677859452b614e694641395666544b5a416f7479324c574e313943654f723743565556704349327a33565167456132495848585a622b66572f5762776833322f37536463395758396b7a586642657a5030657654693044494572663942686d77773935736b6b5a417449474c696e415031507831517a576469624d414e70306e6c5631506f663846777748517a6d6d4b414949557571574931465761776c51616d6c6253422f57714854797232377a75472f32726253587a516475733132356b614f616d584844397262332f305677655378585662724b2f765753662f424d6b6e3845576359584642576e6275734d446d6f6139573166354c6b376e3336753566526f376f4c3470754559517376386a4962344a4f564f67652f525657714c47516f674b635a5a555a58357a577269784b4d704a6247774e51705973624f71446548524a72634c7a527948436e6374386f59645958364b73784d347333426b6873394b33345666634a7a6c55567639566639637a766f4e382f7043303346614c6d74724f633170357158694e45476f496872706f4636473251582b745652427634736239384d587236336f39474232796438784e3732676e726a776e6b2f414e77446161656d62694465485443475530667a52675949577977444e735a676170436d53324767616f56756f6339736d347a334f7748756f6e685849476949557565305463454a79586e722b7154764f324e546373754f33536c57336b6c43464a7665624f54574c436d4e394f4c47447253655a6163694856394e6e464831796e586a4331586347685259656161455551784a454979326e5765336a5a69624b7a76356c39586a622b6d5662563579367350483076305238505a6a352f726a357749366e6d4441646746304332674431614f435a2b57632b625a31794c6333396e6b5a356d735a706a6f4a495a39486f437261576632717630505a2f485530355048785534616b4d376e2b2f482f3964346c344f636b564c3268663432617571365237676b6c57544a73492b755579495872496655723539544c4d47566d316743535762575543414a66527a70584c493865314f2b74794e34376a49384f572f643262652b2f4a4f6245364b3837707a36594e55694d6d3761662f2f6d385854414a774f6a676c6b464f383771536c5078412b7a626a3531684c64756c694d2f58634a3865686c413641554752434e6865587230584b463872447245756955534f2f6a4377545264344372795a362f4b345062576951476c71376c2b506a366e6539637074676272305a785a4853564d5655376941487a79674d6f6e456663502b6461545279514a2b6676484b52382f6135773150386a70397154645458564e384b7175437a354e4142705865446e2b6242767964656f722b364d4e65714d4c574a59732f367a6a444241764574323733373464357532332b564734714842304b324e5271325271307a6f4c747a7a435a6939704a6471643235797049514d534b7a7448787a54444a6b4a66364d7278555968334e706e6a4f67666d3130344134667855346239466830324d44702b56695073524e326e305830682f592f6a36596e7a3250696951395053592b61654c79735437576e544f327251722b494d35594366556d41664230533965594e435a4f56782f6d4a414d76493470424d565a4b73315157615963686c504e3530356368704859376f2f3041782b71336d3138777933686977574f683771653074346c595744726b2f495459466153486f674b58432b6a6c4c6a706a7043495234316252686878306b6f5259326a6c396d2b425a6f5276717878526c4e625065696f6e5955523256476c7754657646594571754c37315233444635646866637a54494851596a4f4247435557716261446d62622f46516866614672656c3768746270655a38337a384561374132514e49466d524f7030632f4b37534145795150663050694466714b30476c346d6742764c7972786b374e77682f79712f39716958432f6b2b597966754d5a4f63754d63565a5a506e7334616258726d536a7032326e3542514a6449424a6a655346426b48436965327a4a4d4f7075496b6c4375796333375679582b385761654236765675395a57652b58652b4153797863574231426c6255584355386f496f54774377346c45744445584161737656694862363236714b4437347239376569584e745237726e726774507654513359636d2f72545533654b706d52465248454e676d434f4a6f31784a6d504e594a31536d756c6e573566395179317756644c4d796c6b5a6d336a366279506e614b423656373765512b5051757764434543645a5348697638684c6f437759366c783532614344596c574567516d3247484d6d756169465846543179353163695a2b7a7a734465346431302b3777382f634d666c465166752b444b353773695854544c6c39594d534437333750566e57424e726167776b47697942785a41684a68413536424c4a4b4e6e64386c4d7a2b573761364f79504e6a4b524d35517030434f6951593875775a7a7368794e6162544b6c343850645469756c395236383639736e3057592f30315a43766d69464c4d316c4c4733503933332b6f6e617344314c6a38644d344e3549412b50356c4572627235784a7934466c5938386b4561413265534777654743656f565667324254744a6e7a6277526b5348394a356239356241564779797065636572494c74565942313667697862715055726763517671723848774d5166792f62705062373931556664345032715a3848473737436f4d47447278387472546e773865644d62687a5465395659445451566c564b67684e45795553634d696a314a71634d6a52774b6869634a6f7a56412b37324a437a5a50364b506f6c2f76744f2b2f4b4944366b67624d5a424c673367416951344e3031746d7844494945363457684959414d3852332b4f73573531485a544262584971466e453758496373344d797a6e34416b7a32514b6268353444786e4e2f736b6c576268646d5850443930633662494c70706d4c5361396458626f75747146747356746a66393436777a4b764869476a6879796b315a504c782f7a7154444d4432414e6330685a494a56414666576748556433585079507777734e556c75732b414662796662506e33396a3556506e6e4f7831612f2b4d786875316d5979584462676c4f6e7843386945544a6c536f54796c494f4c2f4b476f4b4f514c4467566c3970576549766f33716f5a4642465554614347794b7758413961715a43344274686d595a3867764548476145706f6c4c31642f73415a5a3231496b4a6f4a5345373835637832692b34386e4858645a496c5078566846413279667a53625557422b794a5467676365374f427075436d65525761736d616e6f6d6130523379466a532b50665534614c32485367763649774374655568456863425549506b467337374f364a354b413652716f79634d474e5668355633376c7a2f3268357038673951664d783263763933786d3175486c67382f707070324b522b70304d64357947494d7759306e6d4f32614b5332516d727a6870613736557a58634f50436e706a724163767141616c7841444c7576365952684e5257334458326b324e3537374c68662b7178646242556a5765425535712f59674272436b4279627537787271357a44696e46476f336c3537524562572b446a696d5a4641456b3248424e593872715875736d36524f665741544f6d556f595654454c473873307152315939656436704856362b354e7043677451662b4a30724433327a302b4b6177324f48377653477676613147452b796c7031356b6c684e5943776435714d6a494574586d704334662b64623537536c6d414d72714e43744b6b33464d77536b4b4d4e6c75356779484339535a566965546656615a72704b714a573367732f433767766b566d46576439724b303248524554544f7355506f3578325175642f4e6c55326477303073574e694b52664e795549656c596b4d6662532b456564796138684e323931313457377957656d68384256766330424e614743485167725568776f564f38694d6f6a787374497a51744d63415845665a4f31523344716a7338652f3474472b71395277376261556e37476265634644767746364d315344437a597371334f6e6b38502f4f4678465257554d5164394c2b5562646d69504a352b6f50596374774a4c792f7a48506a677a5455566353744d716d69395758334f346343537755645238375555696231632b65766276734d3271694b7a396a4a7450386d434f556f6c61324e75426c57454b317a7152366d6531586d4a62505079747878477368793345477644466b33652f2f596438764f62366f58635031434379476a554471636b34737a7a467347473748657876624e45436d534c59385a534f396262713848693774366f50726e6a7739487333784c30714f3350497035743863397651324d6c3750715642616131554e726968706c30736278656874633672443262766b6c314279456a483548512b68524a4243717478337342743334776476464e5249766a596a6a302b7962535251394e38507679504d69425057464b74354f4a56585672722f667a4d7a734c2f47594f614a4c7342334e6e535678764b45672b2f643662656266464350772b79796471355465303978354a39653431763938307451794f483737786f513733337971664f7562337972704d76564235353232414e6a6d4256684153757773786c386a776b796d5232577a4373355a584a4c5a4c336a716c714b7a4548636a69514c4e4a50362f766772495445424f493559565178394e66444e52596272712f377a6434576e533767665875635148627538567332615075442b4f34394436643974686847747570346a6c635675355a524e56796f6f416250323043326b447354654b594c39496b2f78334a752f56574e5363784d5534544d334d797034474276507677634e66544c704c6e6453355763564f334761656b487868326c31304563485161306a2b69414b366164697138437735716f636d6354676330454d67386f49673062717a4c3261736352353533453975335655417a586f4772552b54636c2f6a7a7932385444745a49704f6b54615452397533467944415558444f524a4a4974516a50737769776e4d6b564164777147562f334c2f4272635469742b512f33756d5154715137774c356767694e6858443479396948724c625673686a346b4e6d525157336e2f6d6564424d7155597238556d553238366466585731532b714e556b38524448424a55313745733745684230323637492f7242367241682f424e6351547973375536473234764b6c373670483379324e6e374a50493662422f2b2b766a6c41584f4569753344456c4e38675a5759623548476b5a4e4b4b6a71747a44574f32436e4d56576a7a727570474f34586b47386c39753431506e4878552f2f77307047446f4b6f71493659447230686c556e2f6350702b2f647968625a70797a54306a4f386d6b796b316868557456454c7a3667614858665a62643253384b456b4f6c41794433586f4d79636c706d4e673168756364325772514a534b6167584e38737735665436626349726b414c6a4675514e30412f74367a555332784278316239724b30686471724f5a765339307a6f4f5a38344f717357556e372f46557856306e50317755535a5854397072693964727371496168397a30624e4b534f68473454314b2f4877705a6e32494a5a376746574e756b62564141355666486b772b392f70754f717839744735434574743444702b674477694d556b546f5954455844576234734a356276332f6c54313737366f2f497939667659356d523431365449356664476d2f73666637686838506e3851724676436d5967476f6a724e53537650714e593164516f444970624a524567376b35666a4e6c456b4d3851626c7547355573525a3856737759394875456233696b39444542334f557a4d7a4c67534d78436b36354a78776767474d5771455971496d2b5750337665554c5a5872365a697567376c7435387751676a66537a7a79415974775a6b684967506a4a4d324c7275547161714f4c5959695a45594f6277444a46723348393466427479714733622f4566655079344b6c5841674c71436d417246755a46732f6e63694244484e41665177574f596e5578693436384b376f62336374617633707967642b663037443048733330634839594e54576f3559776739434d71507936584a74514778544a797a4a746538713038484557392f383162704947716b2b76372b744d335042795677306b6764735051526c555661567452614e3571726759416672416643567072586663674f65722f6e33477655586c343462744f5432365a65666a473462652f6178496b554f38674759536369567a587158533554426e4333744735755630496b67364132735071776462647067524f37522f38665a44703255306e4c384d393035654569334d454b39415a5959337958617463692f316e6f6b437254584e72616f61367542434a306355535174567073735064436f3378473171664f533977324865463936614b766772774f5661477a31707a36654c4261526d39746167375a50746e72766b2b49616a62762b506e355348474b35314d3875506f366f6b39786c56724e69717350755045682f49514c2f35666c6635336a6450734832334c336b6734716b496b677879354652514e66416576562f314846312b3075376a6f722f504c59454c466a3065753136586c756b502f526b6b73556a79675847563472335a542f503370783334383837426e48654f33373546465a6574657944786b30416b6c4c724a30704245486268597846574b697469536c7a79376e6151736e6749675259774f4a4935355549356c2f2f7856477a546b4255617943486d6e374d48666e7855704d704161577457644a7a39656566424f6230464c493757367130546b707a556c52657938414a4c7655477958684c32536e763139663763535338504576425639307442784945317737366e386b473152773634587a703355526e62702f6e6e464455652f554f7a5849334a77332b2b6a357732354c2b335273616744697533744c4e4d47484b37396e77786d6f504942775a6264613662547833513177446d536d724630514336764d7a5679346c4836557878304d706b39717a42356c7166526c3544516875466e55657674322f753959674f706d577639362b33724b76353935706b36574279627256316443705a362b584d654d6c6f71534b61712f4852745964424d41336a4d6d756a78653778557a4e65414e715371676c41336965566e2f59592b4b4a784e38354f70696c5a5a6933722f70566a7572622f5a52626b51774f5073485168383841303070447031385343636d573246316e7139436d7139412f714f7272716e734a4a6c3633312f397569524c6e763837464d3543577278624942394b774b546c4d3148536f6a524c46497847524b3578684d6a4a3237664675494f70552f484347453169764868326a383931484831505a643047463339656a3541366e2b7a737250336136783838672b544e356b332f47654e35755663555757426a47627270694c626d7533707a396465457169585a36734d45475445496b6e69724967502f736c4868776347746a41697862734a465a6c7867486c70346361316f414f3469724f4750426a397a6335467a514a6438657835742f6a3972756f724639595a32517a55366375314e635730526b596b735a55634479747978464346383851316f7a5976762f3734785735464671383158666c436477314371686d4e6b4941687a5a46742b385870796c79394d3078744578586f4a52487867717261797938706c657343657176692b55392f367939665133686739596c44384959736f6a2b3964394c514367387442745332734d48634b7965574852796c444b6f546c347934722f7a4f59625058792f3873574e30487a796471665a6f7930676d684446664f357836514b48474f4f4a747432574652753563767572616f45777848394638552b394d68647a62643859614f41534a4453496e6f394d574f334556342f2f6e547066714f5873723379582b6c524c302f69394a3965685531636b2f5058395954716f62512f416538456a546645315a5159456a4a796c594a774a58673350712f6643534b68476c55796f776551467762556131665547323838655575654d61444c69322b75384b4f77616c756d797870393977666279726d64527339714f397965634742647958754871337645782f4d554d73657557747a422b72322f6f6453672b6a5439654f6e582f37302b4d7137542f6c377163636567724c6830543232476433687a543858766235787a6975396d51454e355137734155767a416c4b78386d516c505a6f506676337663712f4e554553335256504c4539335875704e4753383771652f30736b4e6f69746373735144557a6e73694b7563326d3335626663767a49557267754658656571494743724d3158316c375a5a4a43777339736d514c62586d4a4a342b753176427563767a6b44787265625a53656c6138504e79574c77395a516a494e31486c5a7931316b3354497731314448562f7452334847714e537554646b5642392b734c307074774b5452515658557a4e417774573456315977386862512b4b47545374583645426954317974536a312b65314a66372b5a6774694745756a6c44634e777a4152685a49416a497774752f486f713072686e70566666655372336a6164766b566759704f544e4e52374a717a3565305532774d6f316b437745534d5741743868424b7237476235663167355a5a714570524a6a4b4d302f6e775165465a315870795253772f6531416150784d7939476533736b76562b6b6a56662f7672665367566353563558754c72444b73724d5836475a753450646a4457567451636633464a6e424d33487673433233367a6d554367425a67427a3468387846644b5a4e687755566e43456d7252686b52482b6436636f702f4156354234796949796f69534c7164656a74315865384a752f745373426b4a712f457a567a574e73487a5a4e62446955617368385079574d383768682f69395161623336317337356838587978346f557457536134555a6b44773753457939727936342b2f756c5375546554416e5a5a4844747878744f5465574e6f4b683761632f74337565584d556c4c5a6b73436b70707051694271717a4675384b30696e414747746d48456e5936706e372f59666b4544794f78676a6c2f7a7a6c30564b374e74457a3976326364366e344869364b4638366153734e57474d3144735135625062396674665636425933765464324e46466a4845454a68664d3937394a7855647577653335624b666176342b394372416962485a7551646f4963453249737a67495756315078715737664556533932463769397045312b4d6b4e49343679347a6f717635673279683348652f4575414f54774e375479476668566a4c64416d4866794c636246446476752b5a487a4f6a53646372526475625367726c532b697153417a31396a4d47693844576433303370544f525839525a4472443734504553597a6a2b2b487459332b7447486e5258386f754f4b532b564f35767a6b4231625a5a686d73667a783744384e6f4d565a4d2b44685a4a497453504f696a4f4c4d32484f547443616c36394142437578796a5a795a4b70345a746c47642b722b5a657a4958526157307655424a6d4375534b734d754343527a4c4f546f766c344c47375a49466d495668314f7a6630516645626647325561754b4b574a70355a396c6957687773635155493752736f5032666d4e5572314773525033654e6177684e4f4d486a477a724a733572326e5968783637734f6d366c377174523943345a38463971576e687279322f2b4b422f6c4e493941306270614f39754d3831376f466b4d31744a742b694b7a3943746638616237787353684454356363336832633364746967716b766a445a302f364b6d304b757a4a384f50517962514965614e47635038694e345a477a4646556665556b72584233674e79675a7339306c41732b5345386846423259523879492b44333458473874715a657851397541735a743246506f3049474a5a484b324c587435392f78392b695148556f7155356958317439435751764257574959674c455651796a6e526f733169544e703768414d4a764f495a447a4b576c54774c47697139633466636b387058715049376a306e35593274346e3846495554475535506e6473764859345656624764357644386666644d445772547849466d7278543066666c5867334c4b736a517a626330537058695076734a316631324162435871414c3077495033514375613970597069332f64727041332f32487a66354851702f4f47732f756c586e2b6436682f5a6155326e324c6e545034582f72387276317635774256546d5a75513176696f696437315a39323736316373576f574a6849344d39715572754a64584544316b322b374b64764277664b6b51342b714139444e457a496a57465a6a6235657450756437624a73757559743033712f76303043376c755a704c496c6e74387853512b694856576a51745035716674454456546a6649416141546b526f356565554443392f34707762536a494f79506c69524869432b73494f487563394a61416655794a49776249375a786966704f75546e596d7a496a3339676737675130576535704443544a626b7748344a59436c437041794937424372693532347838785376455378332b333157484c53374e33316d683553304f65426d62375035765854583837502b6142456552426e2b54542f6934563973544449444747485a3674505644554c7a6564693245624d655643736d716e726c4e545a6337756b346b534335416c6f475649765170672b644832517538684456525566347376763974622f5857645756762b4239797631786557466c76534762684c76754e32664c306b666438592b6e396464396b7a6153386b57725971686672516b496d38535073352b326f4b337632622b4e3073713564644c7467672b6e446c49664c75384c784e4b7836343044675238686f795047536b5a473967716433754b78704a667a64382b4d796370514263366436316d694b59686c6f72774342456970594559683169727475794d7652387078577455667479763571542b2f4f7871736a70686d4e647a374675547844492f493073654e2f73427555473134302b4b716d4b2f48744c6359534f354a55564e2b57574833524964386f75537a45446c446c5372796c61786c593359436d6875614668717a7031515356694b4371796977734b54534d6341657045755a6935475a2f72384a3545306c326c50476a7236584c4f794762463032737945696e49566e4a4f4b496633476c4f7031386f62744d5a31652f4552412f4d4c36444a68394a464d58775a7a71362b7356784e4e6d4c5554516663322b4a38377963482b6d4c39704e57616b69466a4a4d4d6c4d7342503232584663486145367a6e70336e6c507946366c793533462b384270737134427142706d6f556b6a4135416c584435676a56624d6e3963644e705a4c39314f38545463372f6656502f746859552b38665862726658323232467371643632736c32322f56784e6e6e745173784b5841554f5951484567646230743963706e6e4b78716a4d6a56545647314f6c464f566a5a557156574a396e4a4e6f70316331625370576c6d2f6d56716437454c71453533444c514b4a41633559334c44594d69766634656c7a576d68736f6a39436d6c393757786a4f57726d7161744859314d572f5243317075453873507a72625343344853614d415a50346f336d37426c5979654f6d684b7156366d36454537763555594e65466f436d526775657151493363777a58547a5a654a5a5a5353586b73394f6a4a594e33614e6f4b3839414c715751324661766d313136764674327865484c537a5a6d7a7655426550754b6c5551445651535657514673506769565042757359566244436932444261584365372b784264347a76752b672f5679316f6835417970774c44694651556a67634877496b6664434b6f4a596475744f62705879747644313654684c6a5a783955794f65416734306d2f50584f2f49574d63556977455931674e6c46524e35366174344d6b49546f5954547a6279715655667138744348702f73375458716b334f48306570776d504c55787a71742f702f587434494a77726d54366955515069756732675a59524569564a6f592b634b415344786763737458676d366b5361694a65504446677573305546327a4c6e2f6e7a31766544617545425736505a4758525a485466375574574d7a7736654d643345352f4d75537a304742546c543877316f34707331425737594f78554b6c596d504c496d4756457236737649716b536c574a4f6f554b73623235506c4456315558614b4457466e665664556e4e71474a4e4c615a4b34736a6d644b416b3571577a557a4c376c6f68746a6b7054565555436132674c634771586e46757a3145575950736e654149734c41694650734648335756464845777448764f58312f6549634c312f416f6e4d74766c6f357344714c423775464d3446424762386c39743855744a7831654839587166505452797233316a4f33577232624d41352b784461594273743768346156394f58334b712f4c4e70754a64517542704a476f6f6133652f63764c3558306663305a714661574e51525a2f436f682b56452b44714a5139696263564c6841684862436e7234423730366a6b562f336362363069497775574e554637354d6b4e676a4f335a316d4e4870424f4279472f70475a6a73726f304e316e6c764b316975376561324a692f4f7a43626d3454762b536c2b344248504c764848557a4e4778416a707157644934474a7951434837623951576330393259667a4b554f6b416a6b4445454a6e4a41696c766c42767438694276444979452f446170544c696a7349753658794162457945536f5736716e4c71647a33307439594a714c4c354b3761525568552b59394f7232367953587541376466395368336c6a4f575644454357707247744738334d2b464b4f6c6e2f77774a7559753355544f722b73696c36335a564836336369763166563133575a2f6f4449564e323545537a343652737274586d7655624f5654376957544e625a3477496d4130366847472f726356617671507248775a4a4d4e4376672f6f6a4248363335352b54413737696e736b55475a574731702b525168386f5133557a616b5754327a6c38545434717042515647544a3571792f6679555a7553686c412f6a49774634666c6e526364645375382f56615a766c494a49623745626f2f6c4b486a31337646782b354f43683039433564334c6d6167436c305545583332382f313676317a71367a39337362374e4b68664c723432775044497a4d69504962696b6163373755304a49434155586f534445424a4557316d4c33693673697653634b35734f4b78594d474b4c5a677467644d387a6267676778754265545167655043783359393161726579354466654c3766365250752b7354436e6d706e627369337553746973615934486b556d57717267632b656c6c374954642f5056396a45796979465654383764586e766b45324a6a6a414d62555775413144434a794e61796d5347723138566847647a64666a393961787932784773484e727a74506c57427139476f5673417050586452582f324f64577437556432753261593171494f766464555970722f48596b6630584e676e714b64594d554247414d5749534d3233416d7534653355354e6e4c7444384d583841634743565474776656514a79754c49746b6c62726c50545276684433356f644647642f6a54714f613358672f707839472f347574644a69574553417849786c63436653634837677644436573795935464e347542314f4c4a50487830686565766d2f566d476851457464525074785079495741514d77385943336662657450532f3136386137746c386a763836573859754e59334951716f38324e386472434e5a757636356d785155354f634c5343334656327a72376a4e337167797271325830366850423432706b4457687a5054437178795879535950564b57645973596d5271634b357137764b502b4251645569386c574e6e544f484c5435414b6e6f47355468346d416d69385830577643323233785779572b3877335a5a777242623373374a68634c4d7a4c444c35534f626a5165624643533170694661546f6a544869366d34474e465863786468513172324f68496a5436657632425a7233582b75345a6b52306b4c442f5a6a57335765582f4c5832474d427a6d426e5a4b30675270436b56464e6536564566522f7858762b6a6e6a35357946456d6b7133546f55783232376b656b54614851774659396978754d517a49554b7262413941747a6974546a43475142764153736c4a4a5a6264766f3876716f736757676b5073443272527a31564f566470777571354976593063504b486d66512f74734d5530746e5637342f624f7366764f69427579777462646f2f3033736b46314b5868637339347071742f6172594c484434473667485a36796a693566546f3471653767686b51354635776f5a51664c46677437366d34756347797569673239353365624e6d646b385037594d4d6e4d436174764f6339764539614934686f667a51554353514b32475a6d59594b582f3352654e553075685761424546384b7361797478563250444762444b4d2f67776d6565714c38746241575548486970575255722f416f4445766b64496a30793167326c704c363233556e2f74596e2b412f6e77396c436239445146556370323268705a364650416f5377536d43434d564b59675958323449684d516f616d6e622b45514752426433437463385578316d78756a45473677706b2b71427447306672614f356b6536685048635966654c2f624276554c36393578596173387a347147726b5639486344394872377a713233686e75592b6f37726c4a6e567049596e50435471386249435a4c30654e62475141686c6d6f6f556c4961737238582b726f6535787a5930566b71354f626d537034666c4371735063624b756f523761514437556a6863433362764f4f53746e4335596833627278617247354455425764776951476f2b646f334742444346567a64564f45575a354564497175546c6534716248677a58517877444d70316a744a6750436b66724a732f2b646f71496b306c763837626c5465516c51316d4874754f4e7052534e6258756944763244393666655553556548456738494c31416e464f6f49456470514657554b6d79375a5077583976354a664264466e644a55746e586a535272324746504d774457676454697358526459316d592b4d644f446d593646334f4f335858634564685a56395250725370766141765879397438307956705576675a654a77354c324c7a47526c656563434f38397045764a547a6f74686d7377546c62486a59356f4b4f5047386774586e4f45624e2f57664d61636b586a46733646465a664a74463875436e41345a36534a6c47474f46475573325261756c366a79476e7a705a36725049554e6a6543446c625a4d6e2f6168626e5557325635705372765733474541714d544a6f6f4976716a2f363671486f3165586d73395031635a5377542f49626b4c625145356c50726839342f63485848693236583738392b6831456139366e41746c686f695155664455452b61493053433036703766714375564b592b5a53382b4b745441464c7876556a5442737a742f5a454f7042595838456f4c4c307773514655566d654c7a4558385138336a6f4332464d71444c57314261754632735871314f73384974592b724b6f34796f714265654837695462784237492b51454f366975566b46466f49776941756a6d764f4557614c477847766b67526157646777636b6d48353151566e62366f4459425774625647762f345747393951444b664b556c5659564e47634c306a656f6b494a6d586c766165754d37454858567433616e3064446951387043565438537842453268436461686333535963616b565a452b77626d4c306c537257345a766c716e55594757563836336547694f3051556331646877356f6c477a4d457942714d714a554e6c2b74762f3751756e6c53384e646f3641796c597162662b717153504c6536595a4c5a416a7864786f64462f5a4878353439585058307271673437363349736a516262796a4f616b397161656b7161466d586b6f6b716555505a2b516c4271324e4d3576324d70783861392f6d423832347a6f434b6a43594347625344616357565a7951384750682f594939424b7373564a624a4361686139756a4d6d56516562524e4156635a594769566c436e3166514953346d4d48644e70744e61537437774d7648673942597043454941687a774674786b3657676763783732706e5a577a35447a6344776f43444e736548713778755537587a394a5468383065574e7857453358764c42356573524830304d6d5a466e6731694b346a77464b5a346761445651765759666646385153412b586c2b5731324639755467464b66657168704a6473495a61523264424c4a4b35524a6568584b7453726c5146485242596d4d536e63564e76674f31487376514a566d434e726f6971626f7567425636624530466131772b7871535653562f6962506567374b6b51346f574a78427176506a4a5876366a483534664d42626e514c496c444e6d4d4a48714e6f4d346b73636f474942736a69476e79706332674c7a7a3347435774516261566e7932677a31623958694f4b32766c4855466a6d714d48747244677335616435526c4d65327255357930767237316f78416f6c47496b47627547415672564d5a566a436b5873786275322f334c39764f535a304834372f5938684d61566a6f4255777274356e68654d44414b37427247567874595a4d5633366471706832394d446b744d6d744d66727a656865514f442f7a4d676b34617455516359363559356b766e647546686f424f30713176796538583048776d734c397a4e4970736f777a4f48734231586f664d56794a6a416b446851564731423137585562334d4a4557436a62492b73543639534f7a53724c366c6f44612f46567955314b2f73784b426d567762674d35442f6877487369382b72643832662b7a647833775552586265326275335a4b6551424242454d46434562456739684c426a746937596e6e71732f4c2b4b374868732f656e5274654f2b7035643742314552525252455555516b4b4949436f4a4943535568795a5a373738782f7a706d3575357341697535753243543361483645414c74333735303563387033766d2f6461592f74475833757134766b5767694276696957675532436851784933437953657431633732464f4e69535642502f57454c784672482f354e594761786b652b452f612b314f793531524e344c6e48757758397a4b5567764b577041795472395442797473353232662b465168464576424b2f7452474b7467754350725773464262354d33496574796c5a366957714b2b5862704d7375466a2b426d6f6a4a6634656b585a317764774e52447752574278352f56786375734d642b314756696a4d3233526751677a676f3579632b6a34345a487245482b6e736c383239586c424654716a383557436f444335436738556f5a5a3837713344456357356e7a4f446d48445058434b4c3149513855774676555835614d6b365935314b7439796d34757237665673766f4c717057434f4f4a3262505547616655594e54746a4c7345486c7a7278695954644d6374536a6c74596a4f7a5a4c3846527872302f5569394a2b6d6238706b714747474a3931457a676c37744170774c53376b58676d2b6135364c6c42557562772f396153396530654234476d62417844494970523155613848643476334d495542443535374e39374c467a5470584c6f564b644d6f6257484b55597939676b4263714c4c4c39557879427367794555654469682f777a39496a70436e746a6264454e61774530365a4735682f6f39434e4c79765a4f4f467a595166707254706d5478424d50714a75656332647766764f6d6c45753555504835622f333647506b6735464b354c37776e4d504f564e513449494b5536486f464571524531386d4d6c576d754c68683766674156524b4a74517253526667637a62462b75654a4d79393131303656345457765a41786e70544c46647579336d4c33785a4a6664545a5141303652696d464e6c2f45494b455969392b50636f33654e63707264315a78642b62596643596c55634d6b2f68343830427a484b6131344862752b75306d626479796771586d6d6f614d6149433642797759774938422b4f32444a416b4f39445831706133696d61367162576661454d416f50547568705a68454970684a65332b6f596b2f41392f63305649474a5742365145465061452b63525a2b774d457674715068452f2f6737464169784d7751777a545a32766863505054566142396c346d34596238504a6238664e415a4234695a7255653538427068526b6f477277682f42732f665269496b737a41765971556b38497a723772645177754b5570592b6134504c5a4d4f7a754a417439687651645546686748686f6345534e7939654a73487337443138547a4e6d6c6664652f77452f6b352b385671506e2f46396933352f6c6f667a3230485252463370554836427534626c6834534565564131793732324365463056636d5855436f476349434846524377536542584575612b773967744d4337447545734239514d2b464f4146464e44513469706c757168784e324f69642b4433795a326b7753594a424a5856526955766c5872594b5957546c772f596e435a6b464b317a763264793561796e70312b395058724d6c4d4d36505a74594d6975537a5a387a51622b66557139596c624f4a4279462f686878564a79673677676b446e777736635a334a456c7967767779617874615256784671757562685933587941766b4e45757976376767336c7232514559535666382f396f325977313879304b32686f37665672316b326350725768374e506c4e2b322b6b5456656e76366a68514950787a6f63644a6d4f655252476b5a2b2b5862732f504d6d2f66336934476f694539564d7a65653467514c4d70714a4545624248675a625972367532626733503147694935377442436477766c6756424133684e5568723865783156674e7872325a7a495065385252564267594941457a384e6b4a685a4d344e70524946342b472b696f553531345536714952344133534f674546704943534d34424a4135424c4a642b7773474153333332746c4c497036563544596b4a4e37334f6263324f686d7564704d2b55706e73366958454a43476f64377543386e5a70776239764a717042424f53516d686d4d6e5576744e4f6a53334b662b4e4e385039347a387432363546333938666c2f575354714543535a5167454e594e4959666b4476513963754e62317a4c71433847704b716970526b7a417132576732416f6a624e424a4e6a464a35546a6951665339674533757667654f324f6945302f31564a5a744a574b5a376e757269347752315a6b676e366a6569526e6c784e656c5974494a7455626a63324b4a6f6864697964426d54762f71324c46356d484c58724a6d764e47774c637431437a784635484e59664f696f4949736a504c387a5575484578515652452f66624a4b5446697863415437306d6b5642774a6655744f6c575762455334493544613131417162545775436d6d5a76314b797459537462554563647870474d3273426159375957434542784f6a64694e6233634b33487a733736335a57546e76663365385571436a435865533959326f324176442f6748627264716b78565257734d706174477139777a574e43304159466f666b3349424568367667636d46313978622f514c395a5a4d4c4267367938524855647157494f5379517236515a7a4c734548625638512f6276334836384e2f6b4e6371677a504e6447646f417053697250704b484e414e494f6b50457a6c6e2f6770512b67634e315241426d41364333743870677a654b44496455323452617067496a555075544a6c45755854357264374b43794b6744307a6341675656595166635a704f6b4834536f683252684652376e4d4155554478674779345a4e57306c496b7037356845306365532b6f6446522f5254655362564f2b53695553576662353162586c4c666e2b7869664e3338666c4f58436873346a755236364a7a5538325644666b77594d63572f674673766e4b7136494b3151496f456969347065742f735a6948666c776c6f4d525276704169536b556c725a6877344e69552b4151622b3341424a666c726a51346c31614b386f4e6f6f4c31724a5a4d4a4a4f6852576d2b574631516a506c622f3337624674786f6c7670462f6d626c484c4b32546c31466d42357a636b7151442f4265315445324f6839462b61365a68444b33597765394b436f4c6e507469316153594d7671753757484c36466c68666d644d3568464f65336d6a47716a435771394d4365483547337039344e684570496539304d464f6551784e6a43726f773838336d31544654766171312b4b7672414a795878534c5445304d643963783377344167645138545a595474755571754264693162544b622f697457355446584d7759483673524d6b554f734e446e6572685863617742706d4c756f6e6a356f4b4a622b6b74564d565545785673786c4e47304b74756d6b69624859712b3173514549434267594f41594e4f537a774136413054504f5449424548534f42536b55755265713277326677516464623234545a6f434567324c2f746a46594e524471433679465169594a4d4a654c6e786536746b777a6245496c6f69315935394b6f5442717235486556676f744577494146436b68534d37422f3449344c54683879444236585477695648575567374d6a6b315143434e4d70466d35597434764b57774432514f594d6a7a79746a557a576767384d4731556175667a30733733416f71344751334171786b5a2f7445626a6f7747396134763231762f6868582b53755345474d6f41616b526c6473397575622b4f50524d6a6b4e4a5764424e512b47772f54595335714a482b4435485273375951366b3539674768535359543442354374477a3437784176323766302f3762664d743664667242503744585a7056645533726c4c4b666d687a3254515872484570675343514f696a6f4e6b49497a4b324134684e4831564456765049384f4d716b3264436a46393853356b6e32306e742b54375a6632777442636a3256664638485571585a724c3930484756384c7271446178764d4e326e4e76777a726456334247566c445566726763364d4b4b6d6f57506b50782b307a3776363846576b4656726b38592f505a45435a4c33325462536a70487a55376d5033545072684c3138383365574e304c6c6e70426c6a51503075587130736c514154687058422b4d6b6836344c586c61527162764d416632477662466f764235394d5737385a5449622f756e42485477567747356c544255634e38496d67642f36314368617670436831547766584279496e683978476a32356145644330677753334c69436a4f4937516f6a78672b6b3968426b394436474746786839674e63634b573152432b764a5934514c373036786f69444a41386b712f68646c564130456765764d787849464b537138596d62634543522f546a4d597637686347775175346d71573642435064326d6f474962584153324c377a56305666582f2b53462b356c316f545069464172362f36334976377574474e6159714961477a2b334856305461596477567777596d64596670526c42693652726461632b74716444575169754367646e445972384230795049475369324d706b686b344e587a4a6b5a6d4b43614a39586e58642b78662b4349775a2f6b484e6e55747a79517a4559494d665155665961716a6b5370412f734c5178424e484568537852374d6d45346d792f555751504e70656a556862763743476e526953714a32333548772b657a61585372307079472f677252657251464d70616f2b6b37624d323566386777786f64716a5147776b2b35364f342f397953596173384163314d6c4739716255354b65696d3074397174674e48596a45563042726f724a797333312f42614a5678534a2b764e6e6b4e624c76464b677359695a6e536e4575334971337a4e54316a4a394d6c6d496c55634d6d42394c4e35465753766254397171632f566d54446e4943613052495a49486a7769685a694970762f386f4679514276784464526c6f70794c69722b676a443877646962467a5a324a7331344641676b58643953655379565841505544646e795749664f5433645846697a31704b37436d2f45477643484f4a382f694e2b54682b48745730676f334341476d32443952635353522b4c6731794879565148423772505372645264316a544e4a516669504638346c6e476a665875387132597554693767524145706c2f4f333664462b72662f6666455032364148434d46564d646c6c70365755454c483532366e3278334f5052385a54616d67494339654d355178524830536a52394c4e4169447067786c39482b4f6642496364386b6a67317550657a4e566e787463716b6b496b777a4f6f782f796253326546316d353269516f7a7767476934796f346379776f48737539344579617437663834634d743954374677754d4f514836484c476a4e726d633764467965792f654374694c476a34786d4f7634442b37774c633164554e424f68482b555934434654586451757244767a386636747a554846376831396d66776c684242526e7179416957626f577350373546307a5a4a4f37314c3665577a58495143514d4469496a6a68537237307162462b5a546f6549484d786f4155346d4d2f713546612b6a79705773374936737556554542506b3875744a77424a55594730466651656664314b5a2f337435334476747551677063764969577a37794235493838692f70503645364e6e4a774c4d30796878496c53765243576b6a6f3577684d714d6156497967524b6431425945696246584434424f6b714c5868354869482b386d2b5865655245546e4175793371414f5974526b344b7531554e743878645744732f6b786b44747150425a3566713374375956376d4c626a2f6a6c6e76636a7151344d6b3955543938314a6b74376637457833353342425375544432447a3932696c55614f624536796e73696f5358345a6d6674566f56764e68364f304869526e446b5730556d626b7754676955616770507335372b734a7a637a6c4a526175704c77576541496f79674237384e35664d3137336a62454d7653594f546a4567417569384253577041793565525a625662326c2f50393766552b3253394e3232496a4245724542475158517637747539636e39504a585373714e475530556657644d6d417970534b736b7366734a31494f64665558385943706a49325a667072313668526661336b3439536339755139664679746e5454367a6171786d35763636326f6f455a676152544668426c544178337262447a4c2f79577361424f77684f6d654d774f794e4c69346c6b31512b2b38486c5442576e6c332f2f577236552b31386831727836503270597353546550554539474533437a545832386d6b41792b6157494f5a4b6166583037662f645844693549514346417a722f314746493870704c34443973703256335148442f435a556656354e4e3471546861716a3654306567464737384254666d656c6559542f38555670476a714c63526630524e2f62497532416630464d2f74326d67344556414a774c5934696e6247706f3069714d69414e41575257746864775a69645276583349456b436375417974314e57737a6169474e4d674a7351727275556c6e74365237732b364d52363851446a4f526349713468636247506d317a67744b636a2b66316b73384b5a314e64744166544256483466615a47616e41456870494a2b6463507564562f374d362f3576707a457976727978304132614565746f6637465530366c34705041755346734e6a5372476b413233484c3731314a517141347a455168322f30416a414b486849716a4f6563446f2b2f4d4f4c716c50725059744957374365544b63444b796631326b686373497277723067426f556a6e6c773735784f42546c74505873786f39346f654e7065635262303136484462346137424e413249476752776b497946706d3856645a662f734b4931764267596b392f6e6863664e2f306b655274444c686b464f4534443251677a42387378584a5a562b53764f35514259564233613465444a6534372b79384633742f4b35697463782b382b2f6f664b6c4d317669733432502b75594d4b70794b74413861563275544b6430484b4242426b676f645a7a7a49354d2f4d33627639744f6b506a334348385371636139327875303541453134625a324f5576682f3753797970667851494143535135666b49336145724867624d6144765158312f2f37764f67434f426f4456556b6d58456f4d6b426e4a6c436d454668564e747732706f4f58576d6265615075434a6344515447303152772b6e6b61726b38347a427a6979356b5557632b4e6364396343744c634b33665453723342347a653741772b514735656f3332744155446d694e5252726d5a3775312f446f514f6e356a727a383336394964536562304d4f7170434939553849386b34527150456f496a72304f5a70784451366d6766306d4d2b59715a4a6c786a4a57364e463675776b45415249685076665a32533378575456632f667170707373756e676c4f526d546c4e6c544d51354f36796a43435a6e59732b6358624853303055635746667449657a3875454d557961415a71616d4f575343386942546778557475756473747264627a69724a543855352f5035744f484b3132365343554f49615531464e796e426559494d4358466a3535516f5230577054384f6f685a71585938494a586e584536722f382f506663356976555838312b4a36636939764b55553172617334302b2f746b6566485773585361673231783363324239754a307a52563876334b53314b6d2f34595a764d4a426d38637642717779414f7646376446532b51424b2b5244727042595148665252435345587975554e4932664e4561456e397950425a48534d38745737306d63694c34324b504847766c4c46576347567572646f674f6752444968446548434b353258767a6e424f2b7179554767346f663862636a2b45625a394366496745675963386c59784d484b304d5a5a336b6d6a6a412f6d4c656676477173514e7a2f5a35454c6e37754d626c2b4b32674f6c2f50467775712b7a64557839412f64392f6d57734a61747a332f6154337233437266674354366f725a755339524b4a6659304941645157523333785a6c33676763734772704e766977674f654f744d514f63546e346d71726970385875434834335657596350443431766362487a7370556d6e5759514f524d4c486a4e514a65514a78714e61415545556365634d436532332f68586343747542454e662b684d2b5a6873744d4d7941696c767967586a35365a4d78572f58696a2b3838702b645966636657524c665369315a7a35327463773872724a637656535a4963433849644b4a5535485170457637774e624f474f56444f43642b523846736f56507450334c6e7638555536712f6f50563975366e427a5642787058617777456e71355252556c596e6550765a494b5870454a364936425a4a577167414755395467697974554c347a787a30462f336c352f66355966664b312b7253767938676b52656e4b5158494136584b52686636754c4a784545705836666874726431336970497956665876394a6d4574574b6e734c7773596a684d6c756e51694d7a554d697777412f446e4f50693670375736446c74576f6f6d47315a3431386d4c75554564616c6b4b4e6b6355394956546b72487a5478484b4f664361465a4762333773782b7471556e4a586d5772665837593835612b7261755a3266584c5a6d536a4d6d2b41376359574a4c574d765779354e50633658523450775074436263344e38395837572b4e59362b4d46555146694c4249394873734539576d4c636d434b4d3547564b346256714c4d4a4c6479417237376a46587436526e56582f564b366653326b697879525542704a30422f38754a614552636859566b6c4a496a5954476f31772f654364694345315556674f3377566e4d4f3871704f684b46623955693455786d6273766951645950754f61716c505a41313231315a536464474f3771514444524e746f494a7178594a7a34536278446c477275476a55436b794b415a47636d6457466235773464532f3965785032797665624e56594a696f697a30303832356d36754555416c526f75662f6b73652f5736646a686a6e416d744f71366d52544649747455396830344f7242756f697073567663622b35554c5476346573644970393154437a46662f5047434a69467270736438306c344d415a696d4f73756238543534317038466e4377654d47504e506d48484246727a464d79336451586458476e326541444d496c3558496f447a58633975624a336e475868624e756e78356a6d616b5572724869726a4f675444302f4b704a4a72324f594230542f2b66546a3865636e396332312b31416e6b3954594434743779597364324f6a73796a477a4a38366a53696f6e2b7762507a757a6650656548784f33335a6e546853316433786a576d52344869686f6639646275707156422b4e356e6a6d3048364933684172773873336169774d76423467447a4d35624a6762674b7335573945626279345964694c2f3267707a38722b377863584f4a52554942714a30597755656c4f624c556a717964515a4c6339544a336a6d506a48763947766869577252322f38336b514b4d4c2b734841554e6d53787877423767704446467a6c5945426244592b62574846757231766178487730506748733969617259626651466446376858454351484d306d597147594535556e4171794b69736f5a365a634a4f51704d49384931614a6d466f4f654c6a757339335964463433734f65323435726a6e71466a4657526733586e2f2f562f4f5031385a44445138506646636563674d74456c6d456e6c49536d464e414e77583167644e6d534f56507776376a3978707874393533667a2f4f33776b5a364c4b586c704c3747652b78507174792b347264494b636b54715566424872746e63787549664550662b5a383261514e6d626d4554744e6c2f73396a4875634b2f6d42544e58716f565072566f583544372f765954303673644137386a4a72655a63662b676e6e4e6a4b646d366948544a45454b524d7a556f4c62524846674d3555495178416d364d4449706338395576392f4c357954472b6657393175733658374647383650762b3067302f554b4e525041536134712b496c31456544434354564871697039636f74674d7175372b6130625a574266515648646d69433030525265527858317737572b4b4e4f4a693874614c537a6537416756647651754d2b577143674d6653795949763177564352557a36414962794234614f463557455839753074445932394f327a76586e744b622f6a55387162585944477934735137422b52426351716a76596e4e6a366c67663664665667763830644a32587468512f702f5a723138567a344e7053314b6770305433474b5279434f776342676d69613430655258705431336556676570467358506e4a326c652f496e584c79344b692f3861314f56766a6a712b515245524979774b484d4c7a6548526678634a6768364a74574175515447334f517349317061437134474c48627964594639564e35505a704b71776a476838576b392b354e322f7977795a534751386c526d315845444f7948414733395a7555333979593965552f44714a58666c366b6172762b7935683077694b754251554a3253444241696343315468507162465063422f4a374a565734486156316736443752762f4f7977637350585274355a4e7a765a6e574d4e4e7a2f41536b5a656f444d586f6c6d2f4255614270572b3837432b5730776959326443654251325439397a5a4a744d644d375a507871393875554969564d6b737542753934796c7637386863596f7a4b4753416a3352434462653856566479795148587434543745726e6d746137526b524f475a2f4d394b474a7168534732612f6464326452626e2f7337722b45623146634542765159482f39325563684232544469516c5579635830346a3461416536724f4f42687a73616c78675033636c3762312b512f3735393938306f332b4954737632527a50714f47384a79364c767a6e7a4f486c6441304576464a744e446743675651796669376d4f7342314b634d35514543385849795232333063565a454631443862427036757a7957534766497a787a4244537447415449716d7a694d676c726a7173686946546f74706f586e4e666a2f2f6b2f6c62642f7a315451794d324568716d6d366f697877746c6d6d4e65754f67622b546d5a316a736d465a484c6e6e736b634f787551334932726a726a735376347a3955396f4147414f7551797965594f56794e52616535762f50655956366979466961746a46663554747a744538397a744a4a4574664431797961744b6233307047786576454645676f6b4c5a5573535569614b32742f6e6d45414b46484a574e3544614d782f764744787077464d466a3538394a356365514f302b743533697a506c744c376d7651705361476763506d384d6b466f5071554d704d4b6c5432714b5a4a35356b4a4245414f773843454746383462417a716e626257572b4343672b6f622f7631756e4d546a5762313336463546514470567179492b6269596e467a7854572f446b4f592f6d32695a62752f33567237436157436c4b7638417a3553776a695167654e4849526f42616e433031534a796f4a486a4867395852654f332f346b4d6362726e326c432f313958536a7939415353642b6c416646335551785861636153352f714b3376346c726a3573735876726f4f542b32565363634f474b5831324c767a687a426756434a495270453678696d56786c474a6c71686b6c2b51703257526547484e6e72656356764c3144532f6c2b6a324a50766e705a584b4268624c35486c6a306f7a796366386c6861653256676f2b764768307448526157477a76457349515467424a4232704e6b4e6c45394c6f437a5954304b53626367646f4c7844334d67583743574e4a7a31354461783362704e432f7a7234496638782b7a614c42496f396638616455377331636d6e694b6749436d4a582b494175584d4d414d4c6c4231492b547363354752704d5067796d71736d5a49557156507a6d6e38725050314c2f364732392f3574377a4d6752424c41616f4445447159744642435770454d3439394f564652634a502f58357a564359323248784a5a57647767517372445a7a34716a393367312f73716b477a4d522b774736323846757171454f6336616b6d517851304d447849656c2f367533386d6d3276664b316b7754306e3564727a7162763475582f616f32634e6c6a467942537859524a56426b59786c686947416f375357673052546c6f7839774d38526b38594c686831613636574f7a57745a6461542b632f5a376d444a656863416c6b61727277374e792b6134576d6b6f41474c464e675934584f6858797a53766a7233787a775a7074686c385466576838385762665a4a633831564d6d387663376333352f57563572534244574b4f6b576c4b2b58794c6a4f71616b6d33636276546e4b574e63454153747941677572456869583077706950784174667533525352687a71435473394c31314847496f48584d2f66706271416a42793038467946705a4e572f38443461314e4f716a3335735774794a6843597444693474736356627a6a56746558794f4b68514d6b50716676737977502b762b42776753585555374e3356324b57697175435a63394b43305159754f61434f644371614434466e2f4c345043466e584f50442b4b77656c53503047704b546b4c395958507846372f4479735541625032764f4a7475794538352b3734447548784d4d4756527147794c366467526858535374774c4f696f5167594c38522b58373746757950304835664c39714e763978724d6f4e7a50537a73457a6831504e6d75376f32535646754146376b4c597257426f3462372b47644e386e654e78757a386a4e6654634130446a6f53446436666a78782f726c2b6b473043767474776e352f625752556b7951774e52534f63695255442b5a5266726d67342b346c6e562f5738366955626b7367505a3232523657635375652f446970714b752b3566553372787039627a6b34625371484f3439446756414c666a54634a435a4b665030527a4e4c4d6e6a4d442f634846513479426a36386478324f56734d4f7658786c78784f446761344a3353676b4b6e66594b702f4a4670774e7a574448426d554b396b707174464c7a41626461336d485a76376566334e3874494c486838357843413172784b4432386178523851325a6954646866534e374d4543623858583032496b3837393266717a6c7a4e7443716a7054586246503546763969666e374f6e42476e5033714639644c5870386c4c72534375496f62494c46733133424f516f724556373433307554627844646e395a5339743341782b4f3675624b6e7a6167725876546c747572366b6a444e2f4b566747594a6a374b4f76544773596c66766e4d4d32494546776d644476445a4f4974652f336a48793049654c437334662b4a7a2f71734e584e2b634e62376a676d6236527436594d4e537a6d6c7a346d71783044324c7875353034464f776f536756415049476a53473577717546725956336e3450526b4c76682f3778397a3453314e5538554165684a78523756674e59736c44454d444e4c6e48443333596b4b516b375676414a716541667a53533165397a55766669626d7937637245484167782f753133444c4f7a6379527759437149314a38423449523831765152456c58585167616e74786938436b736148334672774837646374497a4d554256634f6671702b2b4d7662306570494b50626b4a385163666a6947705a746333384c455643516f3842464e4a4a54534763796d6f67507973306a2b2f616376614f754f324e39766d382f4a6a4355686167423047395a492b6f452b707167413752496341786744743641494f5a2f2f534f6f473338634b787777666e3276336f66375968772b77663672654661444b4a45336f49515976674147414f6955516a386c7a782b656f346958384d47377771714c4c446e30794933766c36584e6e784c662b2f69685347314f6b666a4c50747158665531713253582f46646548557a706838416f55754962783642563357514f71656e335171662f614c4351306d74566d767a6a38452b33535a793374764f5564304c5676693739787571626e766468744e797530704330322b72475a4c592f48614c7046666c322f4e762f39394a7a467a55542b2b4c6c59735077656e4468386f354f65696a6b68306d467161476676336c43364956636b48555a6e394e794d563054457a6a736f2f7550647a75585966317654363930764f326e576c524576654f6470506f2b525a46754f525a736c5444586e69326c7066504e30516b6d6a7953714c7544657731517961727a744c566d3431394f322b5037754f69557861476d4a59303433496a59764846554d6f58454666776a4f69636378774e4d796972454775695a4f327839372b54662b4f4a4e7765484862525a5a7a545837587637512f62735a55416f56354856646354676d5473342b77706a63594c7a634f465435387a3030735a576c71694342634b6e335263642b6b526e537530514a433247664f41414347553066576a626e3338346d5252526461417a4761555a446b57487a49515a736c66576b3356336a4f6c6d33443036626c54306573642f394b3754416d667447383347645454634e6161392f6337306735335a762b307241394268454834684244544c666c756b7a4c4643315a734b705a63464d362f555a456753414d376345694963374e4e78637347496f366f7a2b66362b7762754e696f2b5a4473585a45425538325a47444763634d66485a55475952314a4a304a45455068724b32674657546563724b712f63586a4369345a2b466a7731705065624d344e5a552f39685557766565334f324c654c646d6343694a4e414f6f61687a696c32565178642b584f3479747a53696c4d467a69304c7261454b39304a77476936356376423747556d652f72462f4a48722f68334f747854576b496677524b54372f4145494b383467376a725970367738375342786b55696736472f6839374a4e5a4a445a35496679564d44746e7679654a5a36546771734876314a77784d697954314242557445556d456f46556b6a516f45736a4569666c4e49754a324b5037466646497a344f5a4f4a564e7566434658376b486b78496632615a6777397a68476a5a417275355357663443394966655a7a4c427774744f514e39554763574354344279577232764a764d44775139646d3676727a2f3350615064474c6e7932586a69686b365354564c35396c485032774448696b493753427141526e796c6e366e302f365077644a506a68435a75434d45346f567667495179444b594f7a677961326d694379745436416c757030574c324d7659323448785248516741465756567545576b5247477a6b6c435378417148645452373656525379307936484745595456486f69326651657a567953666c333339717a6953713858467a7971506e5076553072592f6d473434596d47423568665641614e627543613437326a7844775669676f756e50634f4938716a362f334c346c6474666b50544d74376d38343465483938742b34724e6d5474734256673866475433776b7a436b4c4d62636b53565538683749734273764569447a365332674134456764764c374e446f35642f345a70762f334e7438473754686c6844746a476274627a34646252523055662f47435944466a39554a6a4c3976744238672f2f4f584a54794c41744844693437787465704e4a4b453957386f33647a78476c37505246374764524f654d6a47596e62326b315177693670756e6f4851587a3254684d473955465675616f574554596e39386479727250487a7168722b4e637167323358344c724450647050497a6c32583570313334462b47684d552b6d7333594438734b6f314d57624d386e2f567a4256363372496a653649344f41536d456f6d676b4c644338357a5870486d627164564349304b374a41522b73442b4b6b6a334743462b504a59546446584e32526376374c677851756d524d737550515662612f4b394947694c5159584f775367792f54684132496b4479663263304b57566437614379666549504454426a447a337a644441685163396e6e2f746b52396b4e55476474434159662f6954797872477a426a736f365443634f2b36496956495349386742424d49737a4c77374c4859345144356c75616c673373386f5073343436682b47634f2f424b345a2f43792f374d556453493156615430796e68676a68756967597850574831464e5663716f5377614b50347a643942374f6b686835526b335266303735315850444d6969517a387a597264756e59767269454f55384d2f4e684c416c78644d6b6c684f316f33576b5245764f71773273376837624c762b5734752f336e483969774f542f2f6d6750754f4e36593864762b4a685568365a466c384a7a2b486f45457a6763495969675132616f77704a49764b424c79635044473435374f61414235326f42342f4c4d3554346958766f453148306f457a6541486f43414952537448465730796f59586f7373436236474d633366565250314e44415a7039462b6b485544716e4174594231544250413242795841586a726e2f433052436d4e3674512b396448566345587064484175784b6145544b2f7a57573877466444496c6232397a534d593952626858566e5078347166506243384f622b334a4672336a6f35506e4c3878664c6243676a415464314a6451754b4e4b5534314a4b4a70696a4e5447796c2b414c556e6f4a4344384a73685971687149384e6338625064766835543955572f7538667a64706c4d772f75492f7837627675424e586b42584663494f6e3651544d476862334264724349386251384438624d664e4c3531776d3468616f3156784c39625847456438702f646a5350376a736d2f394c42482f77696c6b516d4c2f656644517873652f65686955684d746c65757a417664564d374232493943516d636754673458497a564355384b795a456c5638774350506d57764e57447a5a6d724d3862426f306848414b725165613355524e5662564235735541754a4942744f74796b637345527a6c6c49794833776f525469664e4c38316553715078797847515348663553324153596c6b486a744833523730782b4f58346a3573734c526879415674564553687a4838644871645a334579746f7558455a586a4548576f47464675765545724a7545717346312b413843433956527a5736796a67525475704d4853537043784c51326d44736936654e4f4f486a336158646d36786f4b7a74706e5a50535a53595a3876354174507a3930467a6e6549704c323833662f5058586e2b6a68304c39586859696b796d677061307742366f4b585776574f764e412f623655507a714a3147423837594f324f4557744537787877656633334b43654c6e4654336b3878326f5a6e306f736a556a2f54744a7367646968525a42756a4a496f4377445543676c524334534247496b584454756976637a476e79667358637363752f5932654b585653542b794b636b654d464149736f4c5642583354773943565a4469756a6746634662722f526e456d596b6b705746323053456a50526563744a4a507233363375757a534b6f4d5a6c516250684d51486c2f74437a6530624348326c656b626463547345495234527050364b5630757331365a3955504468355238323932654f5066784a55634f6437313475496e617833426368426e42326f547242365734505a456c334c4157524e3355336b4f4273653557787a3359662b6b2f6f6e2f467370576a6b32584e7235797a39334a6a354b2b7a4c6b4b504a37774431414876655159692b4a6b564b6c3556537a364a423135685378557a4a6c5a364e6b6d72675475493966467a745268762f6765742f5a4f4270366f3661396963346b3464644e71314643424a537173717257432f2f4a706d6636367562432f37356831367a5a366470664d6269394266594a6851536f454e7476544f64784f3536663037676d694d2f3268796631786b397333506444572f653669785930514f757839454d723561726a3030614a366b74335878462b6456325453517a4d5a525163534e784f3675366a694d3464686c443975745479647252302b7638522b7a384f75752f7a532f477468337166456632323267574666396b4c7157524f4f503155555a71496e3553302b4158793965564f4e57314a6559522f6559455474357a6b337853775966445036777076657877783459396247443354795773476c32566b514361497955635368584a7a32736144474d586750374c7a31376876503944786272333577786d5063702f39702b382b79743531777a4a32507132526e335a4b2f622b72434f7473544f50674c7169394638444f5834755266596c394278745676634e31556845527176384a2b33356c42656874504a4546594f777236352f5a5857587970366b50715a6d4a676e4e4f7173636c5a73572f496d6845314963447366716d4a4873777345753045346f64656252704f6a4f5131443942707971574c474f384a563175714a4764624b58484f4b6d7548454d666662704639484a696342714631536c444b7a792b34563736374e6246564c765366487a7551454b336750734b6d4368494f79375a502f372f4766756e545878347541445a3879333376392b6b624f79587236766a6463424245344b6d354b656f774649436a67736d4d75415143797579595173364c5179525a67696c4d5a6f42655532695979644e744438594f5a686b6375654a36546e6c764f4d6e62702b372b7662625a61783752627a61636569466561416268754673746754357857534a5456647241584c742b50664c6472466e7246775a3736716f56786442366c674b434e68754d336a526a4551776e30644c543843485730677a75496962645a633164486762724965447079373738505a65496146317735356f666238702f754a756e676f3974413434722f3532453149556c57684272595054576a3043684b3539543146416c4d55714336343864686c6e677475456f414d3358646b374e6d76444546354b4633556954736269624d326a74446450635757545852536f324364504254395a6c37494b7674586c5739516e7a6344467833346c586c7737367936352f6a7a6b344b522b7a34346a66797975702b38776844345855504445425836773147794c4f6b63626c7a4a6c61477a422f69355a725530382f79526f7663767a357257632f484545572b7537544f6945316d364e677745566b704f6a4f70354d6f7136333235696d50372b562f3663366d34502b454a4874564d5643365a6d4133666363303066634279544b414e6e64314f6c73744274796754573149344e494c4b47766b366359395272523345667344384e386e4d7051553273693132367a6e612b61775967683645366c6f59774b2b72752f6f447a46545662354e313357724e42376133335a32375a455037676376484e4c33735134472b416f68574f794f6a35545432546d694470496b6d74304578337a436d6c7a6359697a4d734b56744c61614d6257484e4e3631415450624a65414348614351787a4443426c5251574a76666e656465477571376b7762565368374a52787358476a743156436a652b486562344c6a4f73517842536e636f584d482b614e4e487238794c7835306e2f50344f45652b51535873355a693852722f7570617233794d42654552714a34794c7a39437773586a385157564a614958355a5752473738344d653062732b474d464b383959612f58744d5a5474316e756e72746355507446505a4d7650413368746c7958572b2f59585a76362f744c48356531634f5a383173665a2f72696e636d3835547459696742774945674251637765702b6f7a4d526e4c753653527a5747514b644369676d6f6773664b696b7a6151714f49422f747a35743961642f466742642b4a58415a74574a6b534c2f394268455a71597033644a68626a693546594d627468784a51724d5a4b68677a6e5645436e6f6d53454c334d6855576f32654d4c4164675553706b78786c45445766464131726f41414b5352506c6e41614a594a3032747959517a6d7a54626d307735564e6a304350665673306f7161434e566753503676704a3335796d4c732f33632f56576e5068512f39346c4f386b327651674941314f35616e7933794c33382b7266634638524a3061394770596e4a754b6c49494456484657514f4b6153516b37774d42486b506d4c6838592f3345354561392b69384745444f6f2b4d5843556d574c56304a3362417036434641683152654f4468715073423577493350314571632f553154676c71716a42394c71425a4a3252544d4c6635667432617a63334c337871566b694a7a4a4d47574d5939483078313576394f47763437676667754f6f6a5154695762454a326f43696a466b34575336427666456a356e4753547556666d584458724d63372f725739364470382b506a5a7331332f6c394e556d5864784d53555952344e756c2b4f57343344617434577449496b78576e4d6a5a755a715531666d595633616264374d435158543849336e4c4337356e36625062456564523664317133364e76545471417249313067654650616a514b4c664c4250695a3764644e6e493037734238506d4d524e5649365334375966392f5472343932382b78644d36646a3952736532556c723134586c6f634c4a717547554c774a3863534d5a7962504f6c33346f7372664d4f796d73675430322f583936687a6b716b616d5a2b38516c63463559744e4330645552716e5845584f316b3933336b6e2f6c304e38502b452f387464444b4532716f306437436b5a6b57765264476e76676a4c61386f716d61467055775735526834464d6a447976382b5a2f64574376594d334858657a37374164563254726652767547587477374f584a703941464b37617a714b684172586c4538796765412b492b6537702b725651496b534168533964556f534c355053444f6d75554264793737565378636b666235616d436e5756576444614551476a6865424434563734394a544e536668626c333562654551677457776a6d50664c72757a34694c2f744a56624431323555696635444e556755373669622f6b4651727550473478662f2f627566616931566751387a4d5661796f39564a7032644147764138557551414c365842536b5953594c4756724e417a2b536a49314d614d53736153446934396e486976467a5359546974557a4135362b624e715a6d4d6e66306a4c776c4146784c4b7872507a717647677957644430674251574d4a455541676e5551564574455179654a624e6b322b52565867336c4f71764d696b445357713573446549762f4230362b76762b5246767a775a51396c2b5035384d646e424f6c6269366846773338714379534c4269373549715947565a51366b414a6d753646616b6d465745334d564b4439675342434442375a4f6f716b39417365677069363243315769552f4a44456a70627177325a2f547865544b5563524a4d4a4d4b515971686b31546676723348466f36366145707a50506641306273347a7442396e3467394d396b50633870773132784d32644f4c317444357966396768734c4856504374364e5656346b6730595a5562384b714b6e4e43617532366c5641567138767542794d6272396a704555744c48665a2b6d4234304c6c544f5156647253656d517162465272526b467a3451584173584b4132646d5172496f4d4f6c4c355871627637744b5a74325a563469587668694576315a3378332f366b5068614b506641524364353130702b484d6b497a2f544a3171735475654139767246465776447a7671714e57652b353349306e4f334473655756502b7236324a375679567a757641504434496f42754f347759477550434e6c453663734b48415a6d42417a6654736f5678536c63375061306e6b77516b6b4568372f45436b4e4c7666747376556b593043504f575462446d767954742f37547757535a634c4c7949493165666169366e62326a46393730576b4c442b41527539436d49715371394d722f59516a694b4b6b6c355974466f384a694f6d62427149667570454c694b785030634e374a657a775a5048752f61484d3878354946393152687372717144674e4a69366c4e6f6336537a45645a4f4a3276753869576e6a4e4e644b5831444b72363173433134515a36776933473671445451616e6b6c48585339457968416b6d632f71796a697345363152552f4c6870336b6a596a314e522f7a473432382f736977736f7546347a44374154724e70346e7a4664687a31356155587671773731384f336164457a68377a32634446777a364e753043304a667a382b31503531624550357031474a2f35617a39457369416a716b6c383769326d43716b41593038776f3836353675796e6e7158346d4768533169376451704571546f68474358437a504e2b754858364c6b76526c75645849446b314a6949512b377a55714963474b4b2b2b5862637339783742596a716975524c7a51654d51744e525a42715462736d374247534a652f596b557a62762f666d693247336345742b587874565133442f53306f5352657842317775344b6168304f4641306f6d7844784b4d4a4f4b6a7841695a664439623838456735463147556b7959344f63724776734f696e4752697238452f6a765673553275502f53522b4f66796e65583732737852784a3977586e415445577063384b77505573747271636f3764662f2f42552f7162784850326b3669696b376b394c33696474532b4e6a623852556a6951716c4a4139576b45435146697054344d39466b6f322b4349305864796b61627462454f70454f53775641436f6b52546f4235304938364c704c36333674534a6c4e63524b596c4d3032756b6268553741306d716d35693544734f746c4c75774d71786f41674d6353714949505266467775622b32343070667665795435767a756565487a316a67664c393066487a615173636e413246387a697a703845326974414a647255487343477a6950544b4a472f516b357a365a4a67505a304c4d6a4b632f396a39625168763573517a2f6a574159304e726a4f4771315a376c4c6d62357144566541694d78466f6d494b3663302b3661342b7a755658467435393453396233375647374f4c35644f6e396d7a2f67744648313245676b4f4f3453517a7155702b7979354a34556d37306f6b382f4c6e3052632b4a2f79584e66435a777635686735714e365264513979364a46656a66455a7369347a685043614c533249456b492f534b47796f4d3344376b6c767072336f52464a66654b53565258784d4b6b432b6c354e6d48473339476632355742556e354a704734495849387573734839565769554358342b526f654235496f3138536638416f746538734b6d45734f456d70616e49544556744d6b65595a7238523544313975636637672b4e576b6b4577595971484d48506b5a315445395a7037654b77623765756e2b592f6358617a51726767575632373033582f4a457657566c484f4b7733735a69645a333246613249586a346e3150305572397934465679706d3149566265684d386a6f6c4533497658736133727633586c556f6e566f6452784a33433564366e6c73363745476d344b6b67363871662b547049794b336a4432584c71352b3346312f4c6965456b594852683751436e3250376a724a656d7a34432f4a536473696555626d595350706c75365344314f5168393567456276445072743447784b393773752b377131376c2f6838377a7a414539707444656e6566347432372f4b393269654158625933314756574473356457313566546e366837324c38753334584e57376d6a2f2b4e734f6873334e4f434d56774d4d427338706949337231616e30594f6762523579573138526c4455522b6c7a6269745a727352384a316d6f7150696a51526a4e4b75337970726c32665a7376395368304f336b435a4a4642572f6e4b62474773556d4a6e4473756b624a5a6d75776e565734485a4a5778676268795934787762727869384e51343475396c58766e2f4f665857794f5576354d6c4847444c6374617435534e7834314e41786b76763754596d66656549767042623847386651377564304e477430416e5a4d4e70776f4a2b4b7a6a6352666a66322b37727a795a4d79452b7447636b4579494b4847614b474171686d4e6d707a61517776366474707755664f79307556366132415954566478592f3967765970726d69456a6f525963375669574559516e4347654c4f4c7a49747235427969437368786a394e4d4e714d41517744344b52597452554a70356b36637953676773706758677471584454734839783356484e31557465722f6f322f636e524e33333933735a6255686b336d68486843583141466278424141634f6b3756674b4b6976612b504d467a5647675348626351384252794731414e4d49384e4c4f7267756366384c4476776750716d2b4e79676c63663957376436592b485353516169747a3750736d2f2f33526362346e4f6933734975584f42716c5647524e77683062732f7749504233374873352f7a4c4d79634a3871654845534b7935663651415a6e445663565a46525a5551537a74504a57616f7a6f5573486a47372f5746683953544831592f466e3171496d426951396a44457343636261675a62474b517a62673951726d77505a446b784e47693978676363635642674c5169796745436b5a3750595747326262755a785a39633965376d754d3753373239376f7661492b7734686b785959304648476b5250693177516c424f647845346c4e49726874486d623850307439457842736f656d33644f4274413071454b4f34463153474837696c4842493849476e666d5033546d54663654397244716278326244485a6c77476b627565466143352b38594e6261563465465a614957636e3074644269356d67394264417a4e4d6f65454a5a4e4c3443345150797766474a2b3737434949386d4f71434b6c6b684b677148634559696a776a6d5534754b6a41523044726f4b456c696f6c43774b674c3842535143425031594b43454d3179443233366b50583874417773503067717a554a73534745756573576239754e664a5a6871562f43464851634b66716a45493047397776392f65744a49594d6e4c747668502b382f4a376f512b5068466f656f396e747152742f6c5868454a74434234465965524e6839664763516e37344f6a524c36454a66325958336c64797176495675336e463032382f6b3369575537595a6a734a2f57667446633062646546564e443977732f534c4479487345673973546c796949577177527055594955524f7a627073396b424e592f376465794f597934536d794c7478396b7377335645777773487a39333977637957707270584d756e326b30626c77766b77577775357a6462756f3042474a53346642474d733649334a4c4d4f69366d4c61427a39556b79554b4555454645324479782f7a4d4639357936734c6d754239674d41774e366a494f454e5072434a434a2b573630366c5335376c435a31535253644e4e51303976546e68437842506f5771774c42446e6d6e576d3068566375724951386c4e4c6c57776e59483152565758354d6a2b65566d4a77494c336e374c416430722f4a2b5839444750516142426b7334595a624546356d393866454f526a78385251382b4c554a676872644454734657345a4a716e5333785250752f6e707a586d7478574f486a77763861394139774d784e5a444a67636b766d526734696943415a5a49496c794e485554507a6d7a2b67456f776e396254646361495259415a39414e4f4d36517646596d4a626c6a5368392b644a2f2b302f5a413473334a75664d68527744367a79696f376a496953534256577a2f726c784356564457384d6e7264344238796c616459614d5a34677a737342704a4a414e4c49494e494253536b4d71575153616c524966396b49424432536639616f52426e44674a344d5048517335476d6e68743245515762464439514e57747061795357693952684770715a646e7843473776685a6a756e44753474684939474d46346b4f696b46624a496a3944356a7263352f357431362f464c66304830656b352f35496549537474486b6658654c4741625852364a33664351306f6e4651544a4e76417479586c6855744c356c316d3664496b454e6d6273343339782f656c2f742f662b436d3268327675386865576c736c7a2b314b72506241615345767a52614f726e78515058386a6c4f4b4c5a756c74363131566436426345554e526c4350674349457a6951475662594955366d4552394e5835376a72683976787a396f2f6d776e556a30556966663138716671734e55795a433443787347626778424a5270356d542b392b427672536f5154344549576b4a7049594b384567503437476e396e3867666556617a7731494331773465477a767567624377614b68753044324564796a43674d5245776972616141594843434a38636738376932714a4c542b48623675792b66354c443172586e4e6537797a61426a3263757345376e464f4a6d762b6f436361365431623851505357782f593079316677417a577033754f434a66387952346457543056652f415932384548525a4b4259437645494f367351696a492b672f334f354135685141786b7934616a796239742b5a7448556d35374c6c5744534f4b6a50384f692f6e762f5257624b3670344452463133776348564d6853594b45586f57624c4d6d71744131315a4a47304a6c43526d4873776d462b4266315733624842506b5459762b4f576b34712b2f5064726a5a4b5642464e6f456e4a4961475a6d494e4d7548727a7a72303972323130366d474e694a7338665463376e67382f4a3761775878624876373668377844587846497938714873507037654a43616a5068576f6a76464c7241694f444e454743507458775276566831456264564e5a657478687375723745637054654c2f41494f4f6c726b61703953424d516359525a667a53626d5966756d5055304b62445039754f7343664e474b486b756c5967346a754b794142344b4c4f727a317456534c487a6f6a486e31446e386b506d6f794c4b49512b42474c7156504f35434c685474793530726265555958597969663344374c6659323468777559577859754b66377a7a496539777a62476a506863756f6e6a32625350394664753943334e454467366f7134347156477652775a4447424179745265387245346b717a744f41447037513879667943316e666d426f474e376674384632375a6548726379564a6461316b7a753250384e34647670454247585a5744634f6e424f6664773546356e665045656d654b324154306547456d4e586a707756576249306e46353352514c324875313273304d6c30767179584f374b56457a4668432b4f7a6669663339457157522b763153597348337335595261395a79456c385868657350353163652f6d787a582b39787578612b7a796b66525445596b306b7a735853594c66374f41326d5575494a6e4f6e4b6e6768657a486f413863633663776f7348336965442b7a4434526f7331623463695634317a4e5638482b384b5671554932597752743072432f583963766369564a6463302f734a636f6e6e58377950784c447132532f72704b586d7559367349634a6e5138643142446b4d69346d707649674138553645546461357a6b56496c565750716e7175442f44627937615a4b71665269483258426236336e6a7a314a495744623738376a73554a41534363506e41644b33356b7965715337734b5a492f6b69434d6f65343544684a354d4c49414547435575484e554a354171706d7954712f4d66645739543577574a534544662f33442f364a6c44364f696a4c4a52424e4b74715a6f6f4969664f4c4a6f6f57495876686972786d4f61644f332b744c69436456427848486e6a436d694773496247744e30676f654866706a587569512f3044735a2b6d6d6a673934475a695a2b4d784d65456b71316d565171744b7656715a685667573237666864695a656b656f6e7148775a6a622f317259743564783139484137376271457865754a362f63456d5762437153633672456d3148466a51593673556837344c494a5535777a6352544c59446834336b4550353171676c6d72744a742f776b6e6e596a71394173416258376b504e57353579694c5a78673641624b734a4b74694d7341757a4f6767664f7643377639684f57624d374c4b687239662b4f7034474873586a6b716b58614a47317a346d4849754e7336752b514443764533375762357a393473303937586563467a7863706e4978424a49637651667a6c386e63746c413869423332616a7a4278564f626f375045627a7a784d582b42303464595a6a69627653425869464842562b4f51422b49544a4236546b38777038702f346d372f4b2f72736d72647a39646f44647879337050337142363877422b3834437553615a4b6755646d58514647746d6267787a757353437746344c704b4951384a7655564e4a67784136544154334774317639364255626b7a4643574b7344386d776d6567534548394c6334523849336e4c4d37385975573330474857456b55714a4b6671525a62723977644f64634b78494974774444452b475a304c504241484e58485642462f7349316152495770446c506f4d36673447475154574e555a727034454a663778647974367a474271775a33514a5257426f4d72643037565461444a543955646d7557356e724a6e6e47785a2f444f53674648464c75346d714972777150566d617347626a6c3157384d6935313570423432626932474668456c7a546a6959363474517264494c354d463647776a554c2b7766743847622b31427565382b364b6c366a2b2b5161376146423936664948727a6633333236307a334843635a4d6d6e58424b5a39564c5a4e7a5932554179424b7131367452685a34584e4862633874577a744935635833487679776c7a2f4445577658445935654e4d784e386b733955354f6564686c696656354d78534b2f527143475541616246762b58646d4b4236344e6e725633546e54477a554e367638613072687a563361444572485171374979444e49716f4d71383538766e4e6461336e567554644b7833474b49497a53325a473245597059365032364f45666664684f77575a627159434b4b4b312b2b4772577264302f584352436d7a627577684d52684570736731623538767733422b382b395961432f35343771795638684949584c353443695a3776684632667471454949556a595a537264374f3448356d65466d6c32457a68542b69724f6f38544476302f3730344c4f5858466e323856576a2f394250324d4948544d66517959494f426e7932474d6b745856556f614e444f6866506c7432474875374f617a54436a537067755344413878313134724a744d754e774e626d474b70374179752f3756545641684e6e4b4c2b554c4474662f382b59496b6e314d56474e7a7670654a505237784c656d32353167416b417336376967797348304653435a547776733559334b665a2f4f57496f3538553341706a7555512b5749307953397a44316d7a42302f65496c2f7a2b3445316d7279322b3455414f5246516362656d39357a56366b4f756a53686a6d33586e584833314c3465755854664c75694a656f2f695572486a313876502b4a633637326c5a64634c67785742625472377643334f352f71515263556d516a41337052476e51697a39766c58424f383537627269535465383070492b527942305345335a796b65755a58323754674b53494975715761673237306852413967492b38382f384946324f64595a4238664f4f51396a7831634857546772545a4b367778525a692b57663739427861743670653855333137552b635547484f6556466442474f35474e425238317a2f3433494337393035396a352b70624f4c32324f7a315036335331504238382f36414549724e7630427448534767525a343257417665653234347158506e4254385077444731726152796c36366f4b5a376173667564702f395247337379324c2f70554c7a315977706365714f3956686d6268576d516475507a44766c6373715379666639464c776d4a332b56496a55616f67576363304d62477030694b453766376c6b774a74414f375766443653447a586c744c675461376669356e56424d514630314b5334614a5a3449624b644a665649585851477a706c536f3532582b2b5178376d4a712b75774d336e586872345173585473586b35726a2b4e737876417075326b3446714874554b524f376e67494a6d644e6243505a6f74726a683737796a62762b646f4b5034775061756132726c75433162383953307642533463394942676f6771654f544a30433746426a6551325a6d48664474326d746c7631304e584279735057654e6c456a682f31755437764761306157785a35614e794676435a574c704f79536971637842786a55394877564b3356684b616a4f2b50486b7849334f4938423154314e6d4341326b4c4e766c4f78426b2f7873696d413531386b57514859323948716f5063665572436e566d6c48753333555a326b684b6464524e31726e577159534f7176785859564963714135634d6d686b2f6a57445637583042526c372b4f4f697944316a4c785531385937792f6f555165746145474d496c516e4476475237795242464d4b496b48567875506138592f397a5532636e6937597653556242494a52577241674e655455766470705075724e523764755239316a636d4b65655033556431546779552b52356a7430756d7a6b676e58355378387365374d782f7248787377366a546d30556b6167784758725471352f684a654643352f353535572b593365314e2b65316a7073645a556664586632346254766e6332496a345268634d6b63386d507739393546474e496d7550416831686356646153796352526a3134446e744c68353263484874356e344761772b382f56677938376639474b65566e43543958384b2f554c57325866384861783043556656376e7467585353336d35417968497346684b59574831434a4b796a35493859556238736c4e74612b5461352b76743264634835325973394f6b65647a56594e56646531556367582f4c71337a74433337335854666b6b6277636d384e5031794c44582b73652f336a4749667a585662326c723365457779746446494f617a565764313152696d4d5435527568367a386946526a64394e6f32656e30676d55484a6468475741362f6836626a6e464f4c372f755077726a316a39567a2f446d6932473363486964495369594771736d5a3132384b4b76327a64346c7a304b5837776749327a32745876646642722f59646b65636f574633485766764a633830655545644334544c70456854376d486a526c7a3364476c68503636666c614a385168584537754a767157725839763047614b366545494f57544f5677732b596e6b3056696e444a786b36726a6671514673595344416e74674b794a55526f32426d7733726d686335667672506139322f3365767736314b673279617a75696650794e447a59304443526648416c3956365a714872326a576332726e4738367a467133716131455279684f4b54456e645062562f6c4b39782f59717879643347526d65396a7376632f55582f524b63396f55384d393455714e75793861776158423638354d6d7378584e32672f78786c662f767249486c4e6f645472634e657053373655366f745464596264395a69636765614e3470654e37632f47746437554766796d3634733175535a3150695269655231504d6331535451527276443832756e63306d7a5551533345377a49727a716f50446a336f6b63506d67745a764c7436387076545472695666657148386177534e33626855644839705369496d69393339514768763532644434386e5539664a5346684c44556b447977446c4954486242617a4770577957562b4644544a6a6773484a4d4350456f63466f3430635461703466464e6f4568574e795146534136654e77556c536e5656547039596f65495033417a303978384735713854507451356c3071576d4a4551796b5447334b767252764b6869564d47775132744a4b3750496946653632762f37356d497246736d5473584c493457707543344c734a467566646f3763535653563359414d3447594133354b48452f4754424953325565443868306b705630483678676f687155464830396443324a6157446b4b6451616f30676466544c674f5a41615a6d762f78794156684b5744744d75376566575442697941752b6b77645975663663567265373746354438456f4950424f487277353055544a68707931504b50373875707a51497873317164342f644f544b2f334a68446b562f775a544f4d486f47434f4c426479437270677a77714938343073656746417a4d51424c4e456b7a5a7146754f617a66382b754f4c6c2b664b4d3742662f74706666396637513857694e6230644b704d5a6e6d534d5457586464414e74465a53675a4a5757482b474e2f463879364f4162396f4536574747693862354946416c54416845683648722b4d656b4c57654b366c473956326f324a726e7a7150724f54535a6232415747575a3953592f7a7a6f38594b626a2f7539745665554930394f4b4f42662f394c646d664c7a6e7461763162316c346d464177496d4a452b714e4b782b6a6b68626c7439794173716e5063776d62456f6d504c6b6a492b3377336357792f306256384c6875773357536a6f736538764c5053532f35587437766b586c58496f676b6f4b4f67734134753551544b5472507050326174502f73677a4d30597556332f424d333274317961664a37675a537167453659494a376747424d484f64334e44452b7354726763494f726d4e4662746a55564d444d4e7170616b42726334346d58306a6c74757339537a7862736b686b2b5973753954326b793458554c706f684367793539313949662f64634d666a7034356a3678445362712b3931786b70693935465659493034476d4d56686a3673317958487877626d5164385868572b542f65386a4b3574772f3633612f2b53772b66395775684e73687a704b6f48395a6b44574b483231474e6a4e526d52367166533542676963597a754b3438304d59533259537630373451324759744b435a776872474366305232453157776872656d6d7459646f303856383162306c396362616854504e696d4d704d593043656b6b317269677372486d447362576a74686773703541447154456245336a4c4f536c515a70723371684153643134474e6531677952746944357759335043316f7666455272505342557a6154783439674650424f38356165466d4c7a4358584a723136594b43462f39702b676676374a4257594c536c4d656843554e6277394d53446e4b3858486f364f5850425171695957313835564f51306e705a4a737149336e3649366f32464269756e364670326c3164454d623034556a34337442344b733369655043643669612b55686c4c4d61663655424e625653614f42446848494d45432b61424d4f42335842494665644159546a7834594d2f332f47667450396c333747343261655557752b474e5467335066586b32585250724b4f38425075746b6c5a7572657969537a395264432b6f7777487547465652775a4f6a77484a575143483249756f46446172646850636536676370673676707039486453676b42587342305755614a7a726f58636359336f4754746451416d624f33575a4650792f513937326e35543743576f6973506e48302f32634e3738354635384e4a4e374957416e4649717a32683474657661545364316a666e4b6e7166664a6a684a377877504962563954514870794a6f5771743049543644424775644131316d57546b4c2b41372b4b674330316a37794c6e466c576366574a79546e62766f79312f365977394e4f49624f5772715054466844446c4672487468426264593457496257765347446139426878455348614249667076614f652b68764b41687246457733366668416b4565312f496772725a54344d39345974534130575a6a51503354336a6474396f796b4b6b2b3572324d494f2b38754b6c70726e56447966662b50675a61534e6d7650356a39542b6558584157764237476674317a52623238706f746e4257316e5978566b6336694e6c7075633236776c504d734566775a504d344b38396234537770583838346c6932695839722b5a6e557458305535463634776475395362422b79513059426754636c46393875454c65543657665152677131667445764441686455644d2f506350415a66322b47305444696a5176456b6c55393562304c67612b486b5253666f7749424661777a6651593469654163312f514750786637517852576f3637726867726c744c48616758732f4c61324f414e646961543149534a72787a325167372b5051305252684b685055774757446e6739654e4c442b44784f5a71312f64757548784359744d53744b653030306b35615278736b643764546939354f75626d6e31736f6e376f79503752393265657a4278366c58745034647a6e6d6d7a4a7654344f5074473247685561334f664455776b397852385456323077626d6a304d356251756765664635534a61743756527a594c4b69372b786e652b2b414d664462466e2f4c712f584d4f6868427967572b7a4359496f314b6f676b596965636256352f6a6a74316a534a6c6f5937466d646a776d74355155796331706e4b4c576735507a6d716e7269505679444857522b516b55434879656a6b4e6d7955463165615a657a2b626638667853334c46667a64485239564c56484d6c4d4c7678335536784e37342b786c6d307567387866634f6f59797666496b5179774e47644d586432512b386131433144576e6253314a6d796c4771626144523433765265706659355859687855336d42564667492f6876395867716d6f3643727146656e486157716543764e4f6c73524b34546c686e4d434f335837776a68756c302f7a51346658744d58414c5072734630487232556d487871597450416a6d41356b6a4b6a465256575873524b4c70776e6a556664544a71386b533473344a646c7048724b636e6c766f385857686436724e7264414154756c36484e684751752b74423049514442775a7278395269397949526c46635276786e784864762f70594c48683835707163396d56646d6c32465631447730693979466a666d4c3233337049346364586a4d374661373734326572652f2f30306571567478514c79756b2f48544a56716543393252595365592f57504d6c6a634f61352f30636a58516c7530474d4b462b764f65376565382f39337838556938524b3776454d49744763554b4e4854766f664d437a574e596c39674e52776b6b37536468462b6c786956527a6f57324e31336979304f5036746b54526a74435541492b76562b78446c417450525a7a775a49644b4a386136307138596366747439586e423666742b61467830514433784c50654c79702f4d70585848503367664a4b714a39534563584738756d696b5446727a7169413535317835566e5a5643365633767434382b38736c466f6935654a70502f536e6d55514c45456d59396854564d6b3656454a44584270704d594c4366676b616e67366a5172616961534671726a6b6a3249484658513350717467587744686f454e544f31516967665353332b434d73336e67397538477a74723343392b4a6d316238744436655378744f664f772b2b58714e4767422f4c37684d6a68346b494e416367626668646a556a4c39386361394a362f3374576439643778394b5a692f65583178465339354670794b75435572765079433075703434474e573153704d61436966695175556946787043743952463234434546444b4951512f342b373672424859496a686c51332b316c7834644e395975394e50316c4537454a3544797056484f536f6145676e70626275576d4b336d64424749787143704d3469712b525744335530756a63756f376e516e64545574557849536c4854335274453663664437314743444e633656386d7a506a766747626c6e534172434c517a4e65375066316c2f6b4439333349392f352b2b55555a3048733835396f354f6a3765625a6271675576584744366a3972465331527a79534b33767473784e766237436d664f7372306730354e4f76464b34736a61363870575944585445427547347268505a574857776155556f4656726c2f74745544624f6d38316d7072372b68656133453956436a53686a4d4d666662666f7a76304c375467706363564f654650536e502b6f37523564626f36594f734f6376336f6b7734314f594a614a6b706734593456374262764b6447436d785153783435546141756a594c7354544434747969694c5a49704c4e587a72366c7a66716e565159525a7967444852316a5943624b36774146397876695033586d61372f533934793339656452644d71706e374b55764c354366757849444e6a5872556c58305475684b2f7748623537534465664439746356767a5968565450386c666b424e6848635352454855386f4e303763356242536365736c5065784a74504b6d367830464c7268556d42794f6a70757a69667a443247524a3143755361484a59736e564d317251574b4f785155333454515433594d4550464e336a5569546a6f4162634b636945726947797946784279562f454b6952396543704b5a43784d4b494e74696d66785962304731747736776c4c50632f587774626534784d4c316c30317167355146736b696f4559333866535a662f466370347a6b5635316334447676674b77476f2f57506a4376696a3038384c6235343951357976534b38337059726c7a456c7165624f50627164704e5167764248534949473245676e49397361366268756148553474474745785148377649787279434c71383344466f33383654416966734f5334342f4f432f4e594e5873383056312f433139523354356470456667694e6b4d437848526968674e78472f71377737483066433452505837445a6969686a5a7a487270536b37787a2b61666a776b61444a4f444c6e2b436e7751797635787474347a3257676754576d6a77703371554b59515871583479395430466b6256494136423977754d4f4c49382f2b6f686d34316e78486e6c47332f3957392f73616b2f3836516a617745766b565958635a42544d7839587a784847376c4335704b6f48694838585154654e6f46344856394d2b4a356b57416c574b3450444f554a35434853723835365574694f4f5a48777442594d6e596f6e326f63753975482b66382b5a6d55752b3862567052666354346b2f712b39524e4f7143537650495862775a31567931324b76662b5067583837765a6b7866753566793064426573377768526959654a64454b676e32536a6b446c724d71524e6b6c556b716b544e55353151303851326c624676592f6478512f4f7269566b48674d4b5a44415448445671617439793379395a66303932336e6d507574384d4b33304739504636325462446f5578507a37416b2f3972496d2f54545157466e66525365684954574962354b6b496831663732424a646e34615136366f636e784a3071346d737969704a43392f646e424231785171372f34644f6b383144747a68533370677a7957745a6343395558445462746939314c45726f64344b785148667674734f4c487276386b2b39465a6f375a6f2f396e6b552f6d6230316e7a682f622f37443733766f4e52314b54536f544d3438705a4479702f732f315a616e42744b76506c2f4368656d2b42746d6e695a7872756d656f7649634333474e4e38416a534d554b34432f78717a662f66506a5945375463734c446172786e6c6f4c4c6d43642f327a6632427666664b2f304f70507a7943707079637a78427244577774637571665166326e7a6a425857567233523333767675474874466654635a4d41504565706737393567344b7a515232345a6941376577673669464641626b6a585873334d4b504b3057544d6e4d65786c6e7a3871496c786f4475582f674f36663139494d734a653275302b447654544876532f4d373270486d3732374f58376d4d36314c4441585548686c53646e4b527635503947596e444d4a5458565331695a74326945504a35367a77654a476835496c7045764a4c32615838735647742f5972416a63666e544d465565756a6d637a2b654836582b4a647a392b527a46752f4a6c4370365a534a5246493135573768623849546b3052305230635837706f697a564862724458616c4e6649485541764334596e6732523374306d6455474d654d3275557639652b3133515132734e66736c736a32376c6b62546c5458323353662f6b44466e4e384b72646c4c4f3873417261633966396c4f74435a574467634a467a54556c49573161584b3549516133706c31554b4b49786e6c4946545a6b37316443474b6a6a55534d41585964334b35356a644f38366e6654762b59765474756970772f4f36327478517a563653775a797a704b475975325a372f744b79767332784e44304d52467a6757647970397a456868456c564f3158426e564a6e5a69465778615463636e7a64786b68584252685653486761344b4d734c314a48753562504d6254764e5a3774302f746e63645a7531766b46395776306d577a66383565374f5578502b78616b2f52486b38584c615a6f4632652f59584539654f356c452f2f7454512b665745507357446c647661436c5476546d4a334844657249665648707a6e41426f5a524b4d5a7032557356364d39714e7571733868512b414b42496b544679354536614d4f64546e6a3550656e623478642b77383139697036322f426979733835456772736a58397276386e58627a6d635257387534796558454d694d774e376b326472566673316a317978326662516f3538554e6b79657637307a6666454138757671336a72674473453534626846482b51726f456961783752456a317349645567534f753879715362324557557035485338437045484a586e567447666e373378397538307a6474317171662f4d76575065537374433876722b643477765746736f5674666c697855314a574a6c62526d766978534a714a4d6e4c4e7545574537555273705951584364434a675234544e73366a646a4a4f6950734a4c38646177774c304a4c432b706f6f54386d536f4e52556c34517078324b374d41425056746b4c4241664e3465783659744c6f3938763653626d4c65736c4671376f59386574504d6f70384832466d6d6f2f4e2b314149364943522b2b616b4278425138466753556b6c643935625a666f417136387942464a514532504c6b702f5a396c764f456e30377a382f62655a766c35716d37783732563669577162634b693730347a364739723838697932694a72525732706445776c5a4856444f37457555694c717242496569526551686c67526963524c6f504d4a383546614873417838344f31414e45566668706c5158383944666761614c7543616c4a65744971564661356c3766505773624c384272706c6159502f394c3238546255354865336f3651622f6456576573377932794667644b6549726174714a366f6279654531644f7a4e71353175313965314e36512b64614c784132493566506c55444761507a416a5538774b4c435a4a623866683070444e6149387149565a6e6e5261766c3861326a376f6a72577161534f647538513878335973303176706c55646839314b6f364977634d694f727857386672456e6f4e32434333743834596f672f583164515878316253477072692b683165764b6e64583135575264724d534a78497045334134796d2f6a73534b775141676b746165503443764a7162666d7233437531744651473157583571306c5a676653464257754d726370577379356c64585472396d312b7237534a524c58303076766c6d526c537344306a6b6167714a424d6e6d5a42785a7a377a7a704b56443179625335383739754a584157665271694b36614f3057566e564e4f374b36546e375664374272366a7359304b3272693554426e6f4543716d31514755663461376c42347977765545394b38717470682b495672483368616c71657439626f55464a4c7535657638352b796878632f654a5a376364586e38366959763179654662554639717136496d644e5852465a556466427161375a6774625a4a58424f6b4b6856594e6a63463439454332572b675445304d3479344350727143524f4f767a422f7265566e4d614e6434556f5a4f31657a6a735856526d6c4250656d51583239324b5738776a397656612b523469616f584c336a6d6d576670477a424778682f2f39504c53745939353356545050477644467233722f66615275385a634a37384e5a535a5153656f36756f51734142316e6662756558507a46746139356439777a7a7a7a7a72485761366430437a7a7a7a4c424f572f352b5466795772362f376e33516e5050477662466e3970387248704a716d70636e4b454b576768664a6c455353724266484e6739783754764c76746d5765656565596c7170353535706c6e6635367350766d5057643564384b7974575032467a2f5a786c713774534c686757747943454b57667a54675661524838774f735a776d5a7835754f47454d5233796f4176413266744738333165324b2f4d64586e4c4672544e784f763563705532467266474967514c614a6d3355784f776d797662525a377139417a7a7a7a7a7a4574555066504d4d3838383838797a464850574e42547a69664d2b455369396f5a6a6967547a496c66684a7832547553364975497a6b5137746a5734544a522f54445837306e4462652b64436449573662344f6b4e6f5a3870374769435a6151633166547168426b6158614d5967544f4e586a6676444d4d38383861383347764676676d5765656565615a5a332f647a4f30364c73484a5355684d3958454b5353704b58386c454d3530766d316f45587458484f4f48634a6e7a4b7a34666b2b76324933764a75782f6a436c5473536b686d3147486756374b6f36584e39624a576545576f373975333369725544505050504d4d7939523963777a7a7a7a7a7a4450506d68366741376f746b356b546147474449416c42505530746677584d74756c386d634a514d6c7049507935666a784f6a37702f50394d6e56653246394e6f394748766877754c7a6153707170313452757174417a716f6157506f4a4f4b79666876475036662b3674514d38383838777a4c3148317a4450505050504d4d382b61575043342f6a596b714149304c776b6c68714d49663367476445494654656f526f72597a4953483731613876734e2b6262755469765969634d664a3665537575776a366f7945786f59576a39785652694a557a652f54515375477a674f6d38466575615a5a3535356961706e6e6e6e6d6d57656565625942382f66723967586844696156464a4a4b4a704e57376d546b746247445341555238484c436c486d674761712f344e6d6263756e7a57324e6d474775334848617256522b374758355073614f637564434347677275362b69586c4b6c724f486a55674665386c65655a5a353535356957716e6e6e6d6d5765656565625a527377346174654a314342564171473667506c314d4b6e4d534a4947727766484e4859536f56667245436475585665375265694f32424d6646327a757a783672664c6c3733526b6a377a5569394471414b474f794c6d3847707a78446e3139674e31586f317a59344977346c547637545a382f775670356e6e6e6e6d576573336d69347a6f5765656565615a5a3536315a6174704e2b78657a75314b546c583354386a45456a714c475432734e5179596130677763326a59334c58725a3735726a6e6f3363486766337079664e2f4c6752385857592b4f4878706256645064786f784b366e51795275544b56786935775a74444a4450716e77695947387846412f736f4575437077534b2f58433138644e746c62645a353535706c6e58714c716d5765656565615a5a3537396764576638655341324f6970703873454c51526b50344a6d392f30636b4b32526d5346304741454b793770316d475565742f75592f4a754f58706174393478394f49765a623037745a59325a66714b6f73387441676759366e514231426c5a69454a49467148496d70486b61665662476b51555a50717677387a764c566a3579726266695050504d4d382b38524e557a7a7a7a7a7a445050504e7345573174793666304f49794554535838596b69706c356444576e5655674c594a386d4d7676445577575557383062506c59784f7a6435567661742f507334445a62724252626c39633548664b74764546394e766d43596d39504d6358533271417a3537664f3971796c665a795a532f597a4f48424638524230546346416a7365566a6f466b465a6d4f685a4c6c635944384b45324a476f51397033536c356232747972396b59446a7639684f57654b764e4d3838383838784c5644337a7a4450505050504d733032772b6e4f6633746c362b377568516a69566d4c44527a4c56566b386c704577506949704d6c2f677859636c31347341487377357a7266322b4535633863614d4c4b377833356477794832593738397a4c485a5135325269486656537937426a666f4d4f7a577976666c78456b6d786379514761504d574b6b7066324c687a77673145752f506948756444476471307a466b2b6f57636e2b447268306e50646c4e4c76376e3542572b6c6565615a5a3535356961706e6e6e6e6d6d57656565665958724c624c46546459395a476244554a4a6335327441414f4739394f4e547451625a64784a646a797879376c684f484a7131784a6c582b532f41595a46512b61595647614a396839306859457769546c613435536d4a736b71515756705374533469616f4273366c423437625335513965373630777a7a7a7a7a4c4f325a523772723265656565615a5a35356c77494c336e6e6f58457a7a73646a4b7a616444726843544f46446f5a7052516c58414236374f696b314532574d516e5658366b476634344a724e5a3970554a315479485a744f553759496556366464484b433948776951682f783530584e306b6c534553576230586b456a354d7a436b69386d7966456d4c4f56583544353535713765365050504d4d382b38524e557a7a7a7a7a7a44505050507362356a393139376a2f6e497148446372433263395544524b584a37684e486357324b327956724349727349464a486c5067584577304966467a6b7a2b77314b513146626f4c356867556b315759737a556344574d5754456e50434356423479612f6b4b54436137726457794254696d586f49387233434164764f6645572f796c37784c3356355a6c6e6e6e6e57397379442f6e726d6d57656565655a5a426d3364436666765a342f2f2b51535a3749554d6e6b6936314b2b4d5974635466757867715a69726a69527845306a573650637431785262722f765a45536f735644717367672b695a32424634752f445a38644f4c6634624f35782f773345334234596675745a62555a353535706c6e58714c716d5765656565615a5a35356c496c6b392b7347446e432f6d4470625a6143556b616744547451314b714d31786a6852544e704873634459366d42736c63433030754b424a5969583147586d6a6846306c355842664f4d37544171475467584f794470413256525865632b6f4e67665032612f42576b6d65656565615a6c36683635706c6e6e6e6e6d6d57635a744c727a6e75706e76544831584a6d51685268416149476769414545313553484c3165534c6f7a695847644b2b6f5941584e48534a334e673368575a6a786d534e4b6d496f33483347475a646c51347277562b705947476e7658394a385a506e3357634f374f30464a35353535706c6e58714c716e5157656565615a5a3535356c67324c337a2b75744f3632643063497a67314438456f3136306d4a5455576a6a6972497553526d50724562535676344a3163645644554c79784b66465a6d42675a6b59456e63446b6c52625364425145766274752b336f776a484478337572786a50505050504d4d7939523963777a7a7a7a7a7a4c4e6d734c6f42743578702f6253385038797455713039796f54625056584a4b654d5575343871522b55742f424d7a3742717253494e6a6439574e4e355173446e56687747465739762f736e513977564e64393736575638423977514b7834622b49457768384a6176794b45795368304c342f6251516f69562b626d645249714c5a78306f6b4132586c3949574f444a4d676b5a5634415364673138394a59434746504b7058594575423070703334655158795a4b61644767744a4a69546d4253516b624e79384a50784e2f5163487048322f3733494f7662376575337676336e4e33562b6a376d626e736f743039392f7a372f54766e33484f6d2f757674662f576c373933786c6639366c54324645454949413156434343456b6a5678394f6c4a7739616d582f6d664f4f31646e526e50794e3937347133703255783078673658413439696c397859777a5465584e592f664b4e74345341586f38746c59377668546f64756e76482f37582f7a6e76644e3256723346336b4549495953424b694745454a4a4233762f325039783966562f76686d745850376772353172303856422b336f306c736d4d337a696d4e42586b542f76533466312f3669786e6b55445355457832376e68504e7a336b712f2f626233706d79397238396432664c6e37334a336b4149495953424b694745454a4a46585031657a2f51504f763770532b4f6e663130616a655a68316e476a336d5270346a73584f546650577330646a2b344f68554a6a6f635566373776746b542f38787a76714b74356c36784e43434747675367676868475237305072744839313939523847763342393550783955334c7973535075526752366f5a782f50366f4751522f6535592f6e4a41786d39644577656e4f6d5a4e2b7a63324d5a637037363337686a49476f3952676635784f2b51727875547771486432434171373536507635623370353835504733726e2f364772557749495953424b69474545444a422b6433336a337a736733382b63382f597136662b65507a4376333169504339334c44515766547755796f383937366d445641534b5978496f3470695850416b555177676378322b456a6d6f6e335a74425a5377417a5930586b44704676446343564f756e656a6c794c4c33516a58766a767469354e78724b665371452f333569357442743559762b4b65397a52622f67356b69454545495971424a43434347334b4e6465484d6766502f48577247732f666274342f4d7976463436644f373877353172305468553062727752566b5a6a6d786470516c487254476a6f493447706454625647736a71372b696c753762663759376453324c55334e767a33703879397a2b2b6b6675665a76383866386b6e337378664d75644b2f6b716566556f49495953424b69474545444c702b614437364a545162393635342f717633726c723750773730304f2f66662b753853767654382f35742f646e6a4c31373961367871372b624774764d365072346c4e7a33667665786e4f746a74343248637366473337303650662b324b6539483830505838502f51486265394737307439344e6f586d6a736a72756d2f586173634e723530505137663573546e6e6f6c5a2b61643734514b703730586d68312b373759766c31356e72524e434347476753676768684242434343474567536f686842424343434745454d4a416c52424343434745454549495961424b4343474545454949495953424b6947454545494949595151776b435645454949495951515167674456554949495951515167676868494571495951515167676868424147716f5151516767686842424343414e5651676768684242434343454d56416b6868424243434347454541617168424243434347454545495971424a434343474545454949495178554353474545454949495951514271714545454949495951515168696f456b494949595151516767684446514a4959515151676768684442514a5951515167676868424243474b67535167676868424243434747675367676868424243434347454d46416c6842424343434745454d4a416c52424343434745454549495961424b4343474545454c535145395054366933742f65542f663339537935667668795731387263334e7a595a7773574c4269594f33667571614b696f70477973724b7a746257313737484743434870494d517149496b5177355562436f5832352b586c6456525756743466395030574c5671304566633663755249376b537574384f48442b6569484368504f74747034634b4647396c72336265502f644a39336332566e353866657930754c6e3463737448593244686e6f766462636d76313733547048784e4164695a616e696336715050713675726c71506376664f454c5032687061586c542f6c61444942576659794a6a66487738623368347545527354453137652f736236396576623866337938764c4839363362392f556953495055365a4d6563374a506962376e41524851305044484e685332464857426d4767536a7744513557626d2f75677646304c5179564736743467377765444b5064624f3947644b4455537652626c535763376e546c7a706f5339316e3337794f74696559316465432f5849757666456c3153353748583064485247756b66322b446b5363443674334467474c4353624f6a663664492f42764f39646d686f614e6c6b44426a544861526a6341333636744368512f2b432f3565576c6b5932626472307155676b387057787362464839435742366b4e3478643933374e677853774c622f7a317a3573786649706a647347484448675233427734636d4a4c566a6d346f6c434e6c2b41736e2b356a7363784b7372684a62756e5a6b5a4f5454724130536a33785741584562434d48786565363535334b4b696f712b575639666679476f65346c687a4e5a71674f4d334552785534723676686551714e65426f68673865504c693675377537616d426734427669414661327462585663596b6349643530762b697773556c612f4c5459463879436976332b7a75584c6c2b2f472f396574573366766e6a31375469623733596f564b364a797765376a4f747265336a36747061566c48594b376d7071615a33743765336532747261657a4e5a2b4e554639446b496d505a78524a61344968384d745971542b4f39357632624c6c3653426e6a4e514932793052424b597a63455364385a6c7a7a2b316a78454d523262676f5474726543786375724872676751634f795a38575937594253374a5a793251693661784d6f566146544e7242746e535557774c4c4d505153676c5452575339677074524e6b426f5043584466505833363947344a657266672f337633376d314d782b4e42716461743869767955766d63424e6f325551367745776171784c66787648547030743252534f5448382b6650483844663171785a3078535173354b586a5134573870504b7143756537306d6a4965374570686673745a6d6c71367572535a7a4158685773666f4d31516a4a46757653507957426949755535302f624661354461324e6934472b38336239363846666263524c6f3764757734313933642f545738782f4f746458563169374f346e7366386645344338666d34715374686f4570384b354b62377a4743576c425138457345726e67574c3932475a4b4935482b6b71543056465252536a3432676639746a4d49303567505636784c4f37516f554e5457434d6b4778337a624c51314442624d632f446777536b49556d47544a4c4438357336644f3938796d663444447a7877726175724b7861733774753372784833593630546c7a6f71716d536673396d456753704a506543794967617041612f5954414537426b3657594230624c6e695a3656585057374544545649714b69703673546c4d543039504d57754445474c53766e69687271377575336974726133644764542b45717458723736475a63416f697754465832657245706439507a6564672f7145675371357855437770597a6f64663033624b714155566d38662f484646782f4473527954775a48773867796f646a793470475879736d7256716836302f2b44673447645947345151552f6246437a55314e5a2f4643696a73367076713836687577544a673741694d6c53545962496b7453397a366d5951347756312f53554977306f57415378544a682f6f4b526d5648526b5a32696a467162476c7032563557567659314c502f4a5a463568474138665072786b644852302f764477384764676e47453035382b6666324c42676756444b3165755049454e49464b7442362f66542b523059444d7179657673675947426538576f4c3562384c704e3648734d7a7076506d7a54736c5473554a796538354441716b6f2b36773655395054383973485059753762704962394e665646526b504439594368754a5242624b666562706532485a5433467863642b4d4754504f53312f714c796b706554505674736f57704333506f4139492b5a6249663539332b7a733853795a39592f6d564b31646d395058312f516c476d74457635446f7062664757424d436e4d5874684d713859624e4a746a3736497474693865664e657031324c73625250386c677376796d3966506e794c506c64435a34743147306f2f656130394a6e546d7a5a74756d685374715575692b566553375273793331656c7a6f5a38535062795754554c684e6f43394570703653662f6c54752b7a61573366753554334e7a63364863592b485a733264763669333947594b4c676f4b4369334c5045636a452b7658724a37524d54485451373056504c6877634843795264707146506746646a7a3468375852652b735751744e6b706b5231502f5437496c54634844687a344f765272553150542f6e54556b66545237386d396d7666753366746c6b636d2f3832504868346147506f4f4e6e384c6838446d70327a645176324b44546d5354484f7a617453737339677a364f697a3276424936582b73493055386a6b7438686b2f6f36552f5954355a532b76317a3666617963566c306f31326971646b6b762f6558714d2b4b496453535046792f374a596f7056774b6f7146776438543676724b7a385044357a2b747a7270644b4b34674275743738525a2f462b2f41376e304d6c72487935356631532f742f77746c6b2f6b4f564636613961732b53792b4a34707a7679356259574668732f776561315432363354736c78696c7833556179482b386573506678614273314f5730707166767031356a763856337865425053315948366e34644f4e504f36585063422b6b35355364522b57424d394f2f6435436665745748446873576f5230765a2b79564e744575736666542f64646c78565656564c62656e6f2f5072705938343142667530786555374569675534413664534d624f496577764c7a387a31586452793139396b4e39474f32413947624e6d725544423657377a456575376b76327a355974572f61777058326a367436784b3137364574444f467165785765637a586c2b786c4d4756764357367448367831347539626e512b6f417338396f47454d7546555269326a6549584d69584d393157765a784c473733334b507146582b726664556e3858796755756377542f30304c38374a6f7174535a626e5a446f756c5174707564456c3650646164326b5a744c615270633175396e753062377930384c694d582f7669526563695433356b4d4a564c6c7945566562444b4f6d7843505032586f71776e363175753551583647726f54655557653876507a6a31727a717532617a692f613136322b7a69623771653253785562303266307164635830453277445a4d564c75657272362b6534745a4f384a7566465375446c322b4742346f4d534d2b464165416c5573627567557142396f73426646676467737752524a66472b32396257566f62503854326c574475672b4f4e3946387264376f686f677854504f64462f773675313372535273755a584f79647756707963577751574d47715741444c3266622b47574f666635735445386f3767584f706f57724c3836444c6a2b323762464f574541564e6c37784d4433396263334c7753675a7a397538654f48517570746d71517475725262535866442b7676494232554a64734456544879433343505a4849426830763172333670347936703632724a587a684f6e734e69314b7646595432673677574f53374a3669446659684d454771354f4d766f6d2f495332306433643339785237756d566c5a5139626e66424541785a77634c526a70667538745132545865765872373958335175793359502b674836422f6d482f7275546a5a6e39527a6d494879754f6d443967644a4f525a797a4e6b7a716d4d2b4330634d69326a4b474d794762573152346631506b3679703738502b554f676f757366386a545a416c583053394d4f72523449514e704f333947444f6272664a787155514c394833374d454642314e5455324638514a56502f62463761587a6758786c61377462374e433257624e6d7759343353423258324755642f37664b757454484e74535257316b334661686142706a366f4b39464436783230746634444e2f522b686f446a463774567162737079346e6443707354694b37684d2b733558526a6c2f534646555154545666785971444b61344946717269676750456447505630424b70716c473862464b4d6f79645565522f437131597a724e72663568624d4968386174733243764e32324d3354717a2b6f4b423055354b496f4d637a2b6c4f394c6b4f387230456e4e6238774e673542667232377975484b325a67705237445875344841326733746e7245506473445654675471484f6e6d52584c365059324f42567777727a4d316d72484150576279486d32747a3263567677477a6f5462325848747250755931596e3147546633307a4d5636444f513156543743335245736a356748557843634f776c3449776e6f30676a32666431344a364b726b54394b586d4b787073687635554431575372652f7a5947365364714e2b6e4d676937627432366533572f534e627676646f584c797347594a757a746330746777437734796e4a4f7551686d53795a436c5452447841675131386a49505451466d4672494f64573732624b666b4c5036334a69304343566375492b695162676247574d725361677a38324c6753717677414a567a4d446f6b5743766a70375851465548715643496673716d464b7172594655372b323656716134336642386a686e6a314d714d557a78464f744677484d774c324756796e59455562507a2f35306150386957596959497831774f485643624750457175323673417a59716b73443839456f437239744e5670436131326571516474737472797631596775426d37596734745956394e6830427170636743633447666f7666705a7050314945656158637a414955522f48697a7078373779375a45776170644a76414b5751314b527656716a58684c3844334f314e2f557455347a5a6266716a47705167576f383264477244767745657068316836354e6c6f5a582b2b4a4235744b2b374e646a6b42717a34366e4b656c396658776a3645336f306d617a37445654564d764759626a4b6872353047527a4a74502f586771522f2f43755655533547544c6a48474943746e56486b78554f5556654b42716e32314c4e51684b706b5431306a777345544a52766e41346a43564548636c6d423730366676723734706a6a616e597a2b356a6f77724a4c4f444a4f677742754462484a2f43433952494d5361746c5a6e39787276643932676b4f434e70663269737072314d54535878585942784b6f776a6e51446b6d38664f7141425350574268792b4e725645746a6e5a5442546179327641435563586465583347537639624b76544b4c75576263696b69545a4166306b6b327a6f34554831716835736c68433643374951793453615939664138583872365941492f6f7870496f427176505644484a767139586e3662624e574436624c70507549332f304575397a57682f3151643979526138752b33622b6e4867644b68727a4e705036465031476f62332b56554137564a79366e723375537a3537775971504a696f4a703049364a6b733232704f4135365179416f50336c6659477244477a7a6a6d73783554435651315a76542b4a6d4a736f34363675576171633547714d41736d757a354e726635535454626f423052474756546652464c592f574747716862763447716d73486f443269326f4d3170517857317a432f576a2b4d395a32546155644d7a55587247486150714b546a6155622f5075616c414e4f3553614c314d45653168716b367744453076515850534a795a6c49746e4d637a495a546d4547313348354c774e562f2f594766634a6b76302b302b5538515a634f4d4a6670334b6874394264334f466a73654e696e72546e626354392f532b63584d7074656c74346b47794250746b35454a2b366b3333634e33544a555464696b2f502f2b3552493945364766502f543432787576577658694f4b6a484b43792b38634252484b754239645856316b386d3078546e3734766a342b4f4c5671316366574c46697857555461565a5556467957664749707a39716d707159766d7377767a6762446c75765972743976576a676d424d655557492b75534355765171666b3532394d35416576467935636d4f74777845436a76437a6575584e6e6f366e36584c6475335445632b5a4c733642387664534a4732656742627633392f53453446774d444179553450695553696677347a6a622f6c584c7674644b486539482f544e783330365a4e75314466346f77307874765a486543594b63696d31324f6b4c6c36384f4e764530514679377a636c4c35326a6f364f4c374a394239694344496f74647075704536766569364970447147766f6a6b5248673569514358316b68704f4d486a7432624b363077594f5370783859714d744c654d5778514c51367759426a5555796b55315a57647461703377654a364b4a4b79507938656650657a365a363162494f3259534d6d705231655a7451316c4f687061556c7071382f39376e503961356375644a49666a64763372784c394d35695a53657a776e34712f79646d6c30795645335a4a3772564579724d3130636b6a504565564a494b424b6a484f61362b39396e64773075477759546d487158535048446c5367384369713675727857522b6e336a696953636c33646436653374726a4171584f416c7755484149756f6e30644c434145636855667976357952506a393561704d694a3478686d734e694d624f2b68642b73426c553436497864693247387737444b52764859686c7676763237537642637a6e6c356556484a556939733643676f46663661554f383778382b66506768756665782b7672365a6c4e6c6b625169756e33786e4757385146584b2b6b4e78356e3663677150396b70705a4b50625a64752b4f6a59303963757255716433327a79423749692f484949736d2b3473346843314946376f6a6b5979616c416b6e475a562b55596f324b436f712b705570585742697749593444675a456c4c7a363676635931454f2f50333336394f35306c30454e786d56567662377979697331306d3848494a736d30355767434f6b3579726f5057593770363862477870306d39625757585a78506176314d624d6e55544e6850625a656b58597a614a6468596e4246767430755751595a6f74765652776b435654414c4f6e7a39666a3966683465466c6e786638707466633346776f4c32744c536b6f47544f6456485046786e6136366a78464d4f35467147635261502b6e4359426975766f2f6b52777a37372b50766d506b32335659593759557a596a42594864646e3065586e353938382f38374e4a58574a6f3144364a546a4663305439346f44644c5856785373723944506f2f444c4439667470595932546274424f43757048795043674f782f4945675a766e65315a565653473437547877344d4258673941565775596767354246773847476c75323164746c57417858475a525433696a63446a51453875643944346c4437626e647034302b714859527062414a4344657030486a7834384b73544d662f68635067632b73656c5335667973795650434d70677730544f6a304532546474787043746c5875735546486c4662363447665731717059646d35637156683145585054303948394c586b556a6b507051686150747031523171773865782b66506e6e7a45316d326f765a794b3768414538334a3961687a42514a576d6c753776376177694d5242452f676730642f4b51314d4443774545366c474c662b495049717a7577676a4150756b3633314b6558507738696a6e39484849475a6737476d654f584e6d495977676a4c7670653847354d62583056334653306a754a56306b7a397572326b742f39584a7a4277784b6f50696c4f78522f73324c466a49774b52727136755635317531742f6676776a39544a796556307a587a61705671324962594567662f694e37514b5a65553349454546675646425438387371564b3366506d6a57723254344434426649484f70455a4441513259624f674f36777937594f3945774765356a5244694941746a7650456e54765550664a6f36554a42677a71364a56423650636d427a485467656a66453367644868372b574c626b5366546651736864554c4b2b644f6e537762477873527854646c7a7261776e776a6751514e474c6a434e7a6a512f7036644853305741664851647050713435434f65556c4d4c75453138484277662b535448645336354234354c4d4b53464467575468786372654b593756646e4e7674525556466a324c355834724f37484c316a4e314145486e4653477862577875554b556239587333472b74537a6f616b3477646f3442544544593039544174556c616d66675930485567366c793644713566763336492b6c7151334643356764564e78674e52356e737a39615a6150734c4679375577316e4838366f4e4451323735634c396a6f744d2f30786533355472313875574c62736f6a6f376e45515449484a7a4c6f50714c3641787377527a544966466b322b546744575455386a79345a37426b57414b4c71644b4774384e356c43417050444979736b686b71675270536a336c435139613270537a454147436c52486f3977685774327a5a38765333767657743633506e7a7632354242456e3552715236316434586a6a65366f6c4d492f6b636b5436455150586a38742b4c325a416e796338666f4f38475a6365524c6d5439324c466a4349714f6d7444586b4f6367566e4c70353058742b687232552f736b51647050713436536578626a2f3048636339363865614e346865314935747351776b4356704230382b79564b384a6c4468773439566c645831797142616b704241527731375977486b552b6b4b7735677a74445130444c445269485063486f704f63464242616e786e4877595872564d4f617458624754692b5435786f4c43525341356b51613534655170684f584b4b35516e7057545945504e703568714f46766f306778362f546a6c3246735251536a72734555452b4b584d5a6d2b465677316d6c7877675a45706b364a3433686935637156357849353870413535452b2b5078715162493961645569516f4f3764796c6c6a592b4d63636479585941596339616c6d592b47777259303371434a702f307a7161567a4b38794f707a3850743765336635797845656f4c565278393964484633647a66362f577a3065376e77584c585749536e312b3641704b697036472f6c372f6658585079332f66534f6439386173762f5476335649482b31385737485938694e6c43612f426e53746168723548655934383931697039774a642b316e7369594a384e764f7030494d50593530455038756e4e32494b326e3159394a54716f4d7046644d72574b795771584d6d324c43514e56516d3643705a446c35655846324955516f3950362b6456734446784d7a314463366a4d65385a59687a35773538397a46697864686341747941686a4a7879595453482b6941714d765a656931376736726778537667776c714f6669594a636a357554304e7652545652462f637332665053626e713458434950472f457242396d4854414c6f48634878764e49386e3963654a59537a36563159756e77756e58722f696265706b58495639434f6975486c34696e4c4f2b704e485069486f41745675792b4634346f2b4c5856304b52774f59356e315838762f4c386c3155623165774e386c41426f524a2b2b435371647733373539333565337435522b5364524f5161304763544d4433747261656c4b7565687a704955373958324a704b523578514c2b337950484e66692f7467324374453075486e6670393043425152683451624d6c2f6e302f6e7664587a6947756c7a2b354d353333316352616d374b3565796f2f4e3856513735336e5256316f767177456c35436c50336c76312f456e314e36743977334c7a774f326e76517a494534374e6954667a615542336e71516e5442696f6b71774747346c496b426f7a36684b30506f7a2f653346554d464b746e4941463471775a58346144645056393246722b454f666b44526843566166475238346c376642453355524739324d4a397236316576587161784f316a544571726a6144656c56647a7973484e566343313771686f6148436b5a475254794b4968614d4d756366792f344d4844773759647a2b3179625a787832783465486742644171574b6d65797a6e422b6255314e7a624f536c30394c6d596472613276627938724b76716d4454343842317269664a63596d5762526f3055617034354a494a504956767a4f4969527869585636544177373675582b3361557277463157627a527a4e7353777478514345395065342f5236507668773664476767336d37585163756f66735a3237393639302f547853656c41505366664b5855315a4c4d4e7836562b41704e31716664352b6a346d306973754c753654767631674f7655316e6933476b753130326b2b746731746257372b544b6276455756586942446454496d6c4448396542325951316139597364314a57385a6170596a6d562b6d315a45486b5470794b57626d6c7036622b777066775a6c36564c6c77366f3556634c544e3950484549633744342b55593261377364534e782b374666734448486b637839485531505157566c49635058723065527a4e49662f664f4833363946394c755a2b3248316d6c3677526e7a77626b4e4d66534c536b702b65644d316f336f7647636c4d46706158312b2f51344c31503550586c31494a557058636852494671656d55447753704f5847574b36656953315167476e63357377346f5451626e706d627a455251363958734569314a485435733871733144766e3645746e6e323257652f6c4b3537486a687759416f652f304335375545506e75315647776746497575773432685073654e475a5031546e2f725545504972375463395866576e4e356f4b326e356135536a5464676b794c2f413556634a416c5751574750505731745a486c544837533663743550557a627a5948474c4d326e574c67536f5049322b44673446496f62676d79687468532f73414239396875586f7a69696743636f4e575364746c455058644e50793870447457697964516e73484f773841526b474564575757562f3161705672384a78436b71326358367032734471564b624b6a32636356566e2f7a3434644f3772387069654251494561314d747a434d4453326165504b79643371703930526b5a47706b4c76467855563953554b76744f7863376e4a666f394858535439482b4b3553644d375a6964443755446532646658397965706e4c2b64436b382b2b535230644a344571542b4934774d6378626e466b4d6d675a42323251594b3930796253573768773462424b4e32326e4163422b6f73324374702f57506f2b4e776643716476394e4f3967742f3956585833302b687841477169545459506c52625731744530617973646b436c734f3563625277564143637369426e58524263316466585832417275536565513479646e64472b47424847434b3568513173566279426a6f694342796d6c734f745462322f746c30326c6a6c554a65586c364871544d4541354a2f504c50326f624e653463796a546943443469675a74556c4944374d3353442b564d32524e4965584657644a7271367171756b796b4a38462b455751764733624c6c45443170417165622f65547a71564c6c3235486d6654736a674f64706a615173675a75324d777253445a7332504264744c2f30673258706268384a446c2b4150713672712f744730506643624b7249477a59674773507a3750625059562f526670424a30374b753754674359564e324845755834526549766a592b492b326b727a457a72775a2b306d592f31524a74424d65543069345242717145664969327472593373427367336f76782f4b34393848454b5173724b796c374373316d692b44596256715362735a524f4450702b746f34336e4a36546b32415641636e4a35755a6d5978746e5356715665695a706f6a366a6971567732466849507a646d4d7532444277382b70676431544b574a355970774d7644737153476e4f6261557a6e366d486d52623272564d3274696f6249747a6850544b344b786e737431485230667655382f4a6a686871363570735766362b624e6d796e79497650543039792f326b6f31635a6c4a53556e48446f4f3745436d77724f78576d2f4a30637457626262485052377563392b374d5a71346c3456465256444b7044366f335333547951532b62454b6645717761336551393971795a6376584d5a73714f6d69723033655548533954736d6d4d6d706f61324848557454465a78784637685957465a374842304c35392b3661617a47386966613047394e4a6d5037566443714b63574432482b3256796f4a4177554358454d396979486b7647726c793538682b737a2b346b436b4b616d707232792b652f774b69674f4241464a764a78354d6952416a45595654414b6a59324e4c37466c764f4530734944526444796a4a5056624951374a536750744642596e434766786c6f6c426e644231686c31416c56503362564e70666c35514473637a4a764f4b5a3872677a4576397a7a6152586a6763766f35582b383653323764766833505a2b654b4c4c7a35676168594236596873503442303854786f4a747438337278355031584251704742636856696d62536147636e3438545153514c34744c7a383866506a775133375365655756567a427231626c713161707a6966514e647055324d547544593561636249323031796e353745454a766f333065776c3272754e65467935636d4a754a4e744b50334c5333747a65614869445456465a57336f39674749466f6f6c324f5963637853776e5a4e4358723076664338417543734f4f31746257746d41567561476a34547272304e58615a5472663968463343544c6a6f5371506c524a6f5338442b545177674456544c5247426f61656d7236394f6d2f675847446b557632665a777a427355754474724a71717171417962797347624e6d69355270436568535055355a7352626f4f726b37473365764c6c5a4f5134377855464b65524d7347466e645473383838307a6f3875584c6e524f357a75444577516e4268694e752b6e30794d414975446e587366474c31544a724a4941545043336171674d3833327645764c53324e57502b4f545a6767322b49516e6b52626d354a7439442b6b6d386e7a4c41475773304a4f784b4775394a76576f34382b3272356777594c375a7379593454693736486246675a347878356d7550767049464d2b56776945565a7a696c774136424a7759764d48695a714b3230777976363542452f64566864586230634d756a6b744f4f35616652374358367154665637444d497557376273487a50522f2f44496a56726c67763754616e6f5a4a76515942697051703034372b6c7674754e6a763730453254636c365455314e7a443541316b336263656a726344683844717467544f687236627654394b424f496e32646276754a6a6342554f5765624b696673456e52526f6e4a435a30414846526358503036506973524637374c4b693165384330762b78426d4b7974555259506f64754c4173536232503475394f7678466a2f37416f747238534a2b76357672362b554b7233467358594a666661566c5a5739724362372b743865716b3355644c37546456566f72724238316143597a736c2b39783066765456334e776368684753372f57704a64616537724668773462312b43335377457941322f746d6f6e323858474c41622f5a3743644c754e79452f346d675542744832685957467a66687451305044484c2f6c6c6f446d636153466675456b3235424a6b653275564f38426e59446653356d33497a326e37364665544f733233546552747658763472524e52562b547a3434664f3359734a5a324633306e392f62326b735632337531502f6464752f6c57784778526d65376166636b45336444314f52532f51783546584c754273396e47702f464a3279574f64543165464832737661372f33576a6249314731452b703337763162366b65756d796f39306c474c2f66524a726c3565562f6a6a52525831352b7032556464746950544544576b5534795766646a48363136566f4b347a2f765631386e3651716273703671482f5837376839572b4a53736e3544684948355058784c3959436279534b687852576f4571455367795a54796a796c676b44554a676c4a52435053714b627257582b39585831316444656376762f78654d724e76664b5566546c534d5752494376367768744575392b69646f703265656d38324e3330705854743033717346384d594c4d45565a56597268585038576872617975727271357555415a32577a67636273596d486462376f702b594346517a615278524a6d334d3463693663644c74547166756b336966714b784b747662377a53646d6f76773674436972477763573751395a3958495030515856556c6249397635456a71765762666e352b635a6c416d6e476b776d55482f6b535766694a4f49517a50656f73314e317870492f5a4d4b732b5375416f4a6932623071465245344d51474843426777745a372b37756e754a574476586768567648574f70694475364476436671392f457533414f2f316558564f6979654c734647667a716f6b43446873366e5743775a4331597a52526c5032786453674174724b543843763835784d31704c496569775161327873584f3156316d4650334e7a6668483230396f63673958576d3753664b71664f5a616a6c312f334a54546761717642696f38737271475657726373764a79646b504a38397445414c6e5152733555655176593852526c47714a673345757161717161734433384833387a71767a415363486451476a41654d52627a5179364544564b59685064722b6738754d30472b48557874724256486c424f2f524a6d782f563732474974634f41656f5a5436754451546668415666635a4f41506141594c546a6e707963765468634f427a5064766a5a73624852466c78582b73394d61754141615a45625944504d4d7572354b6244545a43714c77544546746e756765794b444a665a5a313777662f7764736f2f76655a4874644d366f576d6657564675666b4472634a55356c65627a5a4a415379457042575376443346414a556b596e7471482b7277366e54516e394158557461302b426b65696d624474546979566d717761716573554e67376a536241756458393474555a6d2b3030342f66776847484444674e6d466e766863746156743165547239466665702b6a2f756833364e504a394a35396e37764a6b6a31616c394d5844706f312f574974734d6769464e646f46786f543074773653765174637336644c2b5764536c2f5354785a52784147575a633237314732347a6b336732656d37435071526d323064544e6752562b307971566462363566762f376557624e6d375443784569426439744e716c3343687a466a786c737775576376706469554336735030616939654446523554624a415653766b6f4f396c64536263476d586b44372f54493443595964564b4f38353130386c4f4e67766f644d457030756e6f43385a444c632f7073432f784d566c7665766c59676b41315a6c41534c546c792b6a7a562f4b51794136434e47746f4e7377335749415a2f5332543439584a4631454f71625268552b2f68645659416756532f466a4e66484c41354b6835635a4b4a4e6c3161506c4f692f61796358664d4e426b7a37664f4c35776d4e307664374534685a4e5757316b666b576a746d794176717847312f444570476b386d454a516a585a5470757661513873566674764d483567375072344f44705068473774424f736c39346c4b3576574b535a6d56505746494d32694a322f325636326a2f66594c617842706361592f63682f644c2f455a336950417372654c6e73314e5a6d2b7353325a317634393350387637574835514431374b46382b2b574d735368483148663954333153737639503273746b3050544a6f4b554f327962673373635238566450565a677a44647a6e70777736304e4d47306630636531374e6a316f5056434f665466545332314e6d512f585133306f753961792b6e554e33572f3054725934387a34484c65444f62776d353557624c567663452b49586a41626a69495052306448694d32664f4c4d486d42396763594f3763756639586c4f4176536b744c542b504d52722f3332627031362b78494a504c4849794d6a53374168446e626578475969324442464877564167674e474461396a59324f503347706c67385038387373767a7a6c2b2f506a69346548683335632b396d6e734f496c2b76474442676850537834616b48352f4b3946622f4342496b723856445130507a7231793541726e376f7437595a393638656366466b6631586b6273526361524f6c5a5355584d4a6d5358377574327658726e422f662f394375642f766e5431373968357376494f4e5731416e637238683347656948583867546d4468774d44415174465678594f4467355861466d4e44496579324c4e63497a6a66453052464f61574357413776587171447a39536565654f4a67565658564e532f35794d2f5037784339754458525471312b2b6f6a306a564c6f5375686a624b7979644f6e53694a5274534d7032416d63756d35415a7554347039376c50645038696b5a7659576474796a77486f5a4a47584579745772446a6e747738434241416f6b39776a31752b6c54364c643874443330652b6c542f354b624d46704b535036354d56554e764779326866556d62557351646f58314b4d454c374f6c544c42724e38754754624b772b646d4d47544d7534696969696f714b743033555a5349374c7664654a4f572f616365317245502f695434356e53336e6e655034496d79556854715476433632362b74733145327032452f644e305266336176744576364f647045326962574c394931544a76777251757777554357454d46416c5a4a4b4338304c333774323772726132396a3357426947306e34526b6c59316946524243544950743763764c79324e4c3755796d69793376385670555644544157696245483271446d4445477159526b447a682f6c50615445416171684a414136652f76782f6d623978673274462f47613056467863757359554c3830644c5373675a4c63566b54684751505744354d2b306b4941315643534542555656583952463567614c3971304d684f3038394e37646d7a357952726d5a445577616f48794e504f6e547633737a59496f66306b684945714957525367453153734145494e734b41512b773350577a6d5546645831347233477a5a732b4335726d42422f594c4f6d534354796c534133786947453048345334676475706b514943515473694c68713161712f315474394e6a55313755396c46307a73624e726533743649392b4a553733395a594f3053516769682f6154394a4178554353456b5a574e62585633645a443261516f7a6c5430704c532f2b663037456232454269634842775a6951535753362f7239462f5837392b2f633757316c597557534b4545454c375366744a474b6753516f682f4768736235375333742f38505a5844584b72335469582f30575833365666316b72627a76785063714b6970656147686f65436d563057524343434745397050326b7a42514a595351684743454f424b4a344f4477324b4879596e686e6a59794d6c4767394e482f2b2f4f4e465255552f6b3963335330744c3338537a4f71773151676768744a2b306e3453424b6947454545494949595151776b43564545494949595151516768686f456f49495951515167676868494571495951515167676868424443514a5551516767686842424343414e5651676768684242434343474567536f68684242434343474545416171684242434343474545454949413156434343474545454949495178554353474545454949495951514271714545454949495951515168696f456b494949595151516767684446514a495951515167676868424147716f51515167676868424243474b675351676768684242434343454d56416b6868424243434347454d46416c68424243434347454545495971424a4343434745454549495961424b434347454545494949595177554357454545494949595151776b43564545494949595151516768686f456f49495951515167676868494571495951515167676868424443514a555151676768684242434347476753676768684242434343474567536f686842424343434745454f4b4f2f792f414147767146355830636f6c304141414141456c46546b5375516d4343, 'Jhotwara Jaipur', 'copy write 2021', NULL, '2022-08-18 07:25:18', '', '', '', '', '', '', '', '', '', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `high_schools`
--

CREATE TABLE `high_schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `introductions`
--

CREATE TABLE `introductions` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `introductions`
--

INSERT INTO `introductions` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'colleicon.png', 'testing intro 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-10-29 13:20:55', '2021-10-29 13:24:28'),
(2, 'colleicon.png', 'testing intro 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-10-29 13:20:55', '2021-10-29 13:24:36'),
(3, 'colleicon.png', 'testing intro 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-10-29 13:20:55', '2021-10-29 13:24:38'),
(4, 'colleicon.png', 'testing intro 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-10-29 13:20:55', '2021-10-29 13:24:42');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL,
  `is_read` int(11) NOT NULL DEFAULT 1,
  `conversation_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `report` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message`, `type`, `is_read`, `conversation_id`, `sender_id`, `is_delete`, `report`, `created_at`, `updated_at`) VALUES
(1, 'hii', 0, 0, 72, 160, 0, 0, '2022-07-21 10:12:28', '2022-07-21 10:12:28'),
(2, 'hii', 0, 0, 72, 117, 0, 0, '2022-07-21 10:12:41', '2022-07-21 10:12:41'),
(3, 'heyy', 1, 0, 72, 117, 0, 0, '2022-07-21 11:45:45', '2022-07-21 11:45:45'),
(4, 'hi', 0, 1, 73, 161, 0, 0, '2022-07-21 21:03:57', '2022-07-21 21:03:57'),
(5, 'testing', 0, 1, 73, 161, 0, 0, '2022-07-21 21:04:06', '2022-07-21 21:04:06'),
(6, 'testing', 0, 0, 74, 161, 0, 0, '2022-07-21 21:04:26', '2022-07-21 21:04:26'),
(7, 'Hiu', 1, 1, 74, 117, 0, 0, '2022-07-22 10:29:25', '2022-07-22 10:29:25'),
(8, 'Hiii', 1, 0, 35, 117, 0, 0, '2022-07-22 10:30:20', '2022-07-22 10:30:20'),
(9, 'hi', 0, 0, 67, 151, 0, 0, '2022-07-22 11:11:24', '2022-07-22 11:11:24'),
(10, 'hi there', 0, 1, 75, 168, 0, 0, '2022-07-26 10:52:40', '2022-07-26 10:52:40'),
(11, 'hey', 1, 1, 36, 117, 0, 0, '2022-07-26 10:57:17', '2022-07-26 10:57:17'),
(12, 'Hshhd', 1, 1, 47, 130, 0, 0, '2022-07-28 08:19:02', '2022-07-28 08:19:02'),
(13, 'Hshhd', 1, 1, 47, 130, 0, 0, '2022-07-28 08:19:03', '2022-07-28 08:19:03'),
(14, 'Hshhd', 1, 1, 47, 130, 0, 0, '2022-07-28 08:19:03', '2022-07-28 08:19:03'),
(15, 'Hshhd', 1, 1, 47, 130, 0, 0, '2022-07-28 08:19:04', '2022-07-28 08:19:04'),
(16, 'Heyy', 1, 1, 72, 160, 0, 0, '2022-08-04 09:53:44', '2022-08-04 09:53:44'),
(17, 'Heyy', 0, 1, 72, 160, 0, 0, '2022-08-04 09:55:06', '2022-08-04 09:55:06'),
(18, 'Heyy', 0, 1, 72, 160, 0, 0, '2022-08-04 09:55:22', '2022-08-04 09:55:22'),
(19, 'Yoo', 1, 1, 72, 160, 0, 0, '2022-08-04 09:55:31', '2022-08-04 09:55:31'),
(20, 'ggg', 0, 1, 72, 160, 0, 0, '2022-08-04 10:14:58', '2022-08-04 10:14:58'),
(21, 'Heyy', 1, 1, 72, 160, 0, 0, '2022-08-04 10:39:26', '2022-08-04 10:39:26'),
(22, 'fgf', 1, 1, 72, 160, 0, 0, '2022-08-04 10:39:31', '2022-08-04 10:39:31'),
(23, 'Heyy', 1, 1, 72, 160, 0, 0, '2022-08-04 10:45:55', '2022-08-04 10:45:55'),
(24, 'Hdhdhdhhd', 0, 1, 76, 130, 0, 0, '2022-08-08 13:18:15', '2022-08-08 13:18:15'),
(25, 'Hdhdhdhhd', 0, 1, 77, 130, 0, 0, '2022-08-08 13:18:16', '2022-08-08 13:18:16'),
(26, 'Hdhdhdhhd', 0, 1, 78, 130, 0, 0, '2022-08-08 13:18:16', '2022-08-08 13:18:16'),
(27, 'Hdhdhdhhd', 0, 1, 79, 130, 0, 0, '2022-08-08 13:18:16', '2022-08-08 13:18:16'),
(28, 'A', 0, 1, 78, 130, 0, 0, '2022-08-08 13:18:28', '2022-08-08 13:18:28'),
(29, 's', 0, 1, 78, 130, 0, 0, '2022-08-08 13:18:29', '2022-08-08 13:18:29'),
(30, 's', 0, 1, 78, 130, 0, 0, '2022-08-08 13:18:29', '2022-08-08 13:18:29'),
(31, 's', 0, 1, 78, 130, 0, 0, '2022-08-08 13:18:30', '2022-08-08 13:18:30'),
(32, 'D', 0, 1, 78, 130, 0, 0, '2022-08-08 13:18:34', '2022-08-08 13:18:34'),
(33, 'D', 0, 1, 78, 130, 0, 0, '2022-08-08 13:18:35', '2022-08-08 13:18:35'),
(34, 'Sdjjkwkjdjd dueiueuruerererrrrrrrrrrrrrrrrrrr', 1, 1, 76, 130, 0, 0, '2022-08-08 13:22:51', '2022-08-08 13:22:51'),
(35, 'Sdjjkwkjdjd dueiueuruerererrrrrrrrrrrrrrrrrrr', 1, 1, 76, 130, 0, 0, '2022-08-08 13:22:53', '2022-08-08 13:22:53'),
(36, 'B', 1, 1, 76, 130, 0, 0, '2022-08-08 13:22:57', '2022-08-08 13:22:57'),
(37, 'Snbdbd', 1, 1, 76, 130, 0, 0, '2022-08-08 13:23:00', '2022-08-08 13:23:00'),
(38, 'Snbdbd', 1, 1, 76, 130, 0, 0, '2022-08-08 13:23:01', '2022-08-08 13:23:01'),
(39, 'Bsbdhbdbdbdbdbd', 1, 1, 76, 130, 0, 0, '2022-08-08 13:23:03', '2022-08-08 13:23:03'),
(40, ' Sneuebdveuhdvsvd', 1, 1, 76, 130, 0, 0, '2022-08-08 13:23:08', '2022-08-08 13:23:08'),
(41, ' Sneuebdveuhdvsvd', 1, 1, 76, 130, 0, 0, '2022-08-08 13:23:09', '2022-08-08 13:23:09'),
(42, 'isjsbshdhbdbdbdbdbdbbdbdbdhdjdjejehhd', 1, 1, 76, 130, 0, 0, '2022-08-08 13:23:15', '2022-08-08 13:23:15'),
(43, 'Jzhdhdujdududjhdswooeooeoe ehhehehehe', 1, 1, 76, 130, 0, 0, '2022-08-08 13:23:22', '2022-08-08 13:23:22'),
(44, 'Jzhdhdujdududjhdswooeooeoe ehhehehehe', 1, 1, 76, 130, 0, 0, '2022-08-08 13:23:23', '2022-08-08 13:23:23'),
(45, 'Jsjdhie', 1, 1, 76, 130, 0, 0, '2022-08-08 13:23:25', '2022-08-08 13:23:25'),
(46, 'D', 1, 1, 76, 130, 0, 0, '2022-08-08 13:23:27', '2022-08-08 13:23:27'),
(47, 'Sjxnd', 1, 1, 76, 130, 0, 0, '2022-08-08 13:23:29', '2022-08-08 13:23:29'),
(48, 'A', 1, 1, 76, 130, 0, 0, '2022-08-08 13:23:31', '2022-08-08 13:23:31'),
(49, 'Aaaa', 1, 1, 76, 130, 0, 0, '2022-08-08 13:23:34', '2022-08-08 13:23:34'),
(50, 'Aaaa', 1, 1, 76, 130, 0, 0, '2022-08-08 13:23:36', '2022-08-08 13:23:36'),
(51, 'Weeee', 1, 1, 76, 130, 0, 0, '2022-08-08 13:23:39', '2022-08-08 13:23:39'),
(52, 'Pqpeiehehvr', 1, 1, 76, 130, 0, 0, '2022-08-08 13:23:43', '2022-08-08 13:23:43'),
(53, 'dsfdf', 1, 1, 72, 160, 0, 0, '2022-08-09 05:36:30', '2022-08-09 05:36:30'),
(54, 'dfdf', 1, 1, 72, 160, 0, 0, '2022-08-09 05:36:43', '2022-08-09 05:36:43'),
(55, 'dfdfd', 1, 1, 72, 160, 0, 0, '2022-08-09 05:47:45', '2022-08-09 05:47:45'),
(56, 'dfdf', 1, 1, 72, 160, 0, 0, '2022-08-09 05:48:16', '2022-08-09 05:48:16'),
(57, 'dfdf', 1, 1, 72, 160, 0, 0, '2022-08-09 05:48:19', '2022-08-09 05:48:19'),
(58, 'Heyy', 1, 1, 72, 160, 0, 0, '2022-08-09 05:53:33', '2022-08-09 05:53:33'),
(59, 'Heyy', 1, 1, 72, 160, 0, 0, '2022-08-09 05:53:38', '2022-08-09 05:53:38'),
(60, 'Hd', 1, 1, 76, 130, 0, 0, '2022-08-09 06:34:09', '2022-08-09 06:34:09'),
(61, 'hdhdbbf', 1, 1, 76, 130, 0, 0, '2022-08-09 06:34:10', '2022-08-09 06:34:10'),
(62, 'Frr', 1, 1, 76, 130, 0, 0, '2022-08-09 06:34:13', '2022-08-09 06:34:13'),
(63, 'Rrrrrrrrrr', 1, 1, 76, 130, 0, 0, '2022-08-09 06:34:19', '2022-08-09 06:34:19'),
(64, 'sdsd', 1, 1, 72, 160, 0, 0, '2022-08-09 06:51:13', '2022-08-09 06:51:13'),
(65, 'sdsd', 1, 1, 72, 160, 0, 0, '2022-08-09 06:51:15', '2022-08-09 06:51:15'),
(66, 'Heyyyyy', 1, 1, 72, 160, 0, 0, '2022-08-09 06:54:13', '2022-08-09 06:54:13'),
(67, 'Hdhdhd', 0, 1, 80, 130, 0, 0, '2022-08-10 10:00:15', '2022-08-10 10:00:15'),
(68, 'Bdhdhhd', 0, 1, 80, 130, 0, 0, '2022-08-10 10:00:19', '2022-08-10 10:00:19'),
(69, 'Xhhxhfhduue', 0, 1, 80, 130, 0, 0, '2022-08-10 10:00:27', '2022-08-10 10:00:27'),
(70, 'Bdbdbbd', 0, 1, 80, 130, 0, 0, '2022-08-10 10:00:30', '2022-08-10 10:00:30'),
(71, 'Cvvvv', 0, 1, 80, 130, 0, 0, '2022-08-10 10:00:36', '2022-08-10 10:00:36'),
(72, 'Eeeee', 0, 1, 80, 130, 0, 0, '2022-08-10 10:00:40', '2022-08-10 10:00:40'),
(73, 'Aaaaaa', 0, 1, 80, 130, 0, 0, '2022-08-10 10:00:45', '2022-08-10 10:00:45'),
(74, 'Janal', 0, 1, 80, 130, 0, 0, '2022-08-10 10:00:48', '2022-08-10 10:00:48'),
(75, 'Iejdhehge', 0, 1, 80, 130, 0, 0, '2022-08-10 10:00:53', '2022-08-10 10:00:53'),
(76, 'Bshsbvs', 0, 1, 80, 130, 0, 0, '2022-08-10 10:00:56', '2022-08-10 10:00:56'),
(77, 'hiii', 0, 1, 81, 171, 0, 0, '2022-08-12 17:49:07', '2022-08-12 17:49:07'),
(78, 'hiii', 0, 1, 81, 171, 0, 0, '2022-08-12 17:49:14', '2022-08-12 17:49:14'),
(79, 'hiii', 0, 1, 81, 171, 0, 0, '2022-08-12 17:49:24', '2022-08-12 17:49:24'),
(80, 'hii', 0, 0, 82, 175, 0, 0, '2022-08-18 06:06:10', '2022-08-18 06:06:10'),
(81, 'hi', 0, 0, 83, 178, 0, 0, '2022-08-18 12:22:38', '2022-08-18 12:22:38'),
(82, 'hi', 0, 1, 84, 178, 0, 0, '2022-08-18 12:59:26', '2022-08-18 12:59:26'),
(83, 'hi', 1, 0, 83, 178, 0, 0, '2022-08-18 13:01:16', '2022-08-18 13:01:16'),
(84, 'hi', 0, 1, 85, 1, 0, 0, '2022-08-19 06:56:11', '2022-08-19 06:56:11'),
(85, 'hi', 0, 1, 85, 1, 0, 0, '2022-08-19 06:56:25', '2022-08-19 06:56:25'),
(86, 'hi', 0, 1, 86, 1, 0, 0, '2022-08-19 07:02:35', '2022-08-19 07:02:35'),
(87, 'hi', 0, 1, 86, 1, 0, 0, '2022-08-19 07:24:42', '2022-08-19 07:24:42'),
(88, 'hi', 0, 1, 87, 1, 0, 0, '2022-08-19 07:31:53', '2022-08-19 07:31:53'),
(89, 'hi', 1, 1, 67, 1, 0, 0, '2022-08-19 07:37:32', '2022-08-19 07:37:32'),
(90, 'Hiii', 0, 1, 88, 117, 0, 0, '2022-08-19 07:45:39', '2022-08-19 07:45:39'),
(91, 'hi', 0, 0, 89, 1, 0, 0, '2022-08-19 07:45:47', '2022-08-19 07:45:47'),
(92, 'hiii', 1, 1, 88, 179, 0, 0, '2022-08-19 07:46:28', '2022-08-19 07:46:28'),
(93, 'hi', 0, 1, 90, 1, 0, 0, '2022-08-19 07:52:34', '2022-08-19 07:52:34'),
(94, 'Hi', 0, 1, 91, 117, 0, 0, '2022-08-19 07:56:18', '2022-08-19 07:56:18'),
(95, 'hi', 1, 1, 35, 1, 0, 0, '2022-08-19 07:56:48', '2022-08-19 07:56:48'),
(96, 'hi', 1, 1, 67, 1, 0, 0, '2022-08-19 08:56:27', '2022-08-19 08:56:27'),
(97, 'hi', 0, 0, 92, 1, 0, 0, '2022-08-19 09:05:34', '2022-08-19 09:05:34'),
(98, 'hi', 0, 0, 92, 1, 0, 0, '2022-08-19 09:05:38', '2022-08-19 09:05:38'),
(99, 'hello user', 1, 0, 89, 1, 0, 0, '2022-08-19 09:35:03', '2022-08-19 09:35:03'),
(100, 'adsasdasd', 1, 1, 88, 179, 0, 0, '2022-08-19 09:35:41', '2022-08-19 09:35:41'),
(101, 'hello', 1, 0, 89, 1, 0, 0, '2022-08-19 09:35:42', '2022-08-19 09:35:42'),
(102, 'hi', 1, 0, 89, 1, 0, 0, '2022-08-19 09:41:00', '2022-08-19 09:41:00'),
(103, 'hi', 1, 0, 89, 1, 0, 0, '2022-08-19 09:41:03', '2022-08-19 09:41:03'),
(104, 'hi', 1, 0, 89, 1, 0, 0, '2022-08-19 09:41:07', '2022-08-19 09:41:07'),
(105, 'dsd', 1, 0, 89, 1, 0, 0, '2022-08-19 09:51:31', '2022-08-19 09:51:31'),
(106, 'sddd', 1, 0, 89, 1, 0, 0, '2022-08-19 09:51:43', '2022-08-19 09:51:43'),
(107, 'sdf', 1, 0, 89, 1, 0, 0, '2022-08-19 09:54:25', '2022-08-19 09:54:25'),
(108, 'dsssf', 1, 0, 89, 1, 0, 0, '2022-08-19 09:54:40', '2022-08-19 09:54:40'),
(109, 'sssssssssssssssssssss', 1, 0, 89, 1, 0, 0, '2022-08-19 09:54:46', '2022-08-19 09:54:46'),
(110, 'hi', 1, 0, 89, 1, 0, 0, '2022-08-19 09:55:39', '2022-08-19 09:55:39'),
(111, 'fdsfdfdsfds', 1, 0, 89, 1, 0, 0, '2022-08-19 09:58:30', '2022-08-19 09:58:30'),
(112, 'dsffdsf', 1, 0, 89, 1, 0, 0, '2022-08-19 09:59:45', '2022-08-19 09:59:45'),
(113, 'dfff', 1, 0, 89, 1, 0, 0, '2022-08-19 10:00:04', '2022-08-19 10:00:04'),
(114, 'dfssssssssssssssssssssss', 1, 0, 89, 1, 0, 0, '2022-08-19 10:00:08', '2022-08-19 10:00:08'),
(115, 'dfdfdfdfsfdszfdss', 1, 0, 89, 1, 0, 0, '2022-08-19 10:00:39', '2022-08-19 10:00:39'),
(116, 'adsasdasd', 1, 0, 89, 160, 0, 0, '2022-08-19 10:01:53', '2022-08-19 10:01:53'),
(117, 'aaya kuch', 1, 0, 89, 160, 0, 0, '2022-08-19 10:02:02', '2022-08-19 10:02:02'),
(118, 'fdsff', 1, 0, 89, 1, 0, 0, '2022-08-19 10:02:27', '2022-08-19 10:02:27'),
(119, 'test', 1, 0, 89, 1, 0, 0, '2022-08-19 10:19:21', '2022-08-19 10:19:21'),
(120, 'hello user', 1, 0, 89, 1, 0, 0, '2022-08-19 10:19:53', '2022-08-19 10:19:53'),
(121, 'fdsff', 1, 0, 89, 1, 0, 0, '2022-08-19 10:20:57', '2022-08-19 10:20:57'),
(122, 'hjgvh', 1, 1, 72, 160, 0, 0, '2022-08-19 10:21:37', '2022-08-19 10:21:37'),
(123, 'fgdfgdfgs', 1, 1, 35, 1, 0, 0, '2022-08-19 10:24:54', '2022-08-19 10:24:54'),
(124, 'hiii', 1, 0, 89, 160, 0, 0, '2022-08-19 10:27:35', '2022-08-19 10:27:35'),
(125, 'adasd', 1, 0, 89, 160, 0, 0, '2022-08-19 10:27:48', '2022-08-19 10:27:48'),
(126, 'Hellouser ', 0, 1, 91, 117, 0, 0, '2022-08-19 10:28:43', '2022-08-19 10:28:43'),
(127, 'Hello', 1, 0, 89, 1, 0, 0, '2022-08-19 10:30:38', '2022-08-19 10:30:38'),
(128, 'Hellt', 1, 1, 67, 1, 0, 0, '2022-08-19 10:33:25', '2022-08-19 10:33:25'),
(129, 'fgdfgdfgs', 1, 1, 67, 1, 0, 0, '2022-08-19 10:34:29', '2022-08-19 10:34:29'),
(130, 'Shshsh', 1, 1, 67, 1, 0, 0, '2022-08-19 10:34:42', '2022-08-19 10:34:42'),
(131, 'Ujdhshs', 1, 1, 67, 1, 0, 0, '2022-08-19 10:35:00', '2022-08-19 10:35:00'),
(132, '8hyghy', 1, 1, 67, 1, 0, 0, '2022-08-19 10:35:09', '2022-08-19 10:35:09'),
(133, 'dsfdsfdsfs1', 1, 1, 67, 1, 0, 0, '2022-08-19 10:35:41', '2022-08-19 10:35:41'),
(134, 'T', 1, 1, 67, 1, 0, 0, '2022-08-19 10:36:19', '2022-08-19 10:36:19'),
(135, 'Jhhs', 1, 1, 67, 1, 0, 0, '2022-08-19 10:36:47', '2022-08-19 10:36:47'),
(136, 'Evegev', 1, 1, 67, 1, 0, 0, '2022-08-19 10:37:11', '2022-08-19 10:37:11'),
(137, 'sadsa1111', 1, 1, 67, 1, 0, 0, '2022-08-19 10:37:38', '2022-08-19 10:37:38'),
(138, 'dasdsadasd', 1, 1, 67, 1, 0, 0, '2022-08-19 10:38:09', '2022-08-19 10:38:09'),
(139, 'hello 2', 1, 1, 67, 1, 0, 0, '2022-08-19 10:38:37', '2022-08-19 10:38:37'),
(140, 'Hshshhs', 1, 1, 67, 1, 0, 0, '2022-08-19 10:39:15', '2022-08-19 10:39:15'),
(141, 'hiii', 1, 0, 89, 160, 0, 0, '2022-08-19 10:40:13', '2022-08-19 10:40:13'),
(142, 'hhh', 1, 0, 89, 160, 0, 0, '2022-08-19 10:40:34', '2022-08-19 10:40:34'),
(143, 'hhshd', 1, 0, 89, 160, 0, 0, '2022-08-19 10:40:51', '2022-08-19 10:40:51'),
(144, 'asdasdasd', 1, 0, 89, 160, 0, 0, '2022-08-19 10:40:55', '2022-08-19 10:40:55'),
(145, 'hiiii', 1, 0, 89, 160, 0, 0, '2022-08-19 10:41:22', '2022-08-19 10:41:22'),
(146, 'Hi', 1, 0, 89, 1, 0, 0, '2022-08-19 10:41:29', '2022-08-19 10:41:29'),
(147, 'hsgdsdg', 1, 0, 89, 160, 0, 0, '2022-08-19 10:41:38', '2022-08-19 10:41:38'),
(148, 'Hhhff', 1, 0, 89, 1, 0, 0, '2022-08-19 10:41:56', '2022-08-19 10:41:56'),
(149, 'Usert', 1, 0, 89, 1, 0, 0, '2022-08-19 10:42:17', '2022-08-19 10:42:17'),
(150, 'Hii', 1, 0, 89, 160, 0, 0, '2022-08-19 13:11:11', '2022-08-19 13:11:11'),
(151, 'Testing', 1, 0, 92, 130, 0, 0, '2022-08-21 04:17:55', '2022-08-21 04:17:55'),
(152, 'T', 1, 0, 92, 130, 0, 0, '2022-08-21 04:18:04', '2022-08-21 04:18:04'),
(153, 'Ho', 1, 0, 92, 130, 0, 0, '2022-08-21 04:18:23', '2022-08-21 04:18:23'),
(154, 'Hi', 0, 0, 93, 180, 0, 0, '2022-08-21 04:21:03', '2022-08-21 04:21:03'),
(155, 'Hiii', 0, 1, 94, 180, 0, 0, '2022-08-21 04:21:40', '2022-08-21 04:21:40'),
(156, 'hi', 0, 1, 95, 1, 0, 0, '2022-08-22 05:52:02', '2022-08-22 05:52:02'),
(157, 'hi', 1, 1, 95, 1, 0, 0, '2022-08-23 12:58:09', '2022-08-23 12:58:09'),
(158, 'Testinggg', 0, 1, 96, 181, 0, 0, '2022-08-24 04:16:55', '2022-08-24 04:16:55'),
(159, 'Testingggg', 0, 1, 96, 181, 0, 0, '2022-08-24 04:17:01', '2022-08-24 04:17:01'),
(160, 'Dddf', 0, 1, 96, 181, 0, 0, '2022-08-24 04:17:03', '2022-08-24 04:17:03'),
(161, 'Testinggg', 0, 1, 97, 181, 0, 0, '2022-08-24 04:17:45', '2022-08-24 04:17:45'),
(162, 'hello', 0, 1, 93, 175, 0, 0, '2022-08-29 12:07:07', '2022-08-29 12:07:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_06_02_124709_create_admins_table', 1),
(10, '2021_06_02_124720_create_sub_admins_table', 1),
(11, '2021_06_04_052717_add_column_to_subadmin', 2),
(12, '2021_06_04_053241_add_newcolumn_to_subadmin', 3),
(13, '2021_06_04_101757_add_newcolumn_to_users', 4),
(14, '2021_06_04_131520_create_global_settings_table', 5),
(15, '2021_06_07_073804_add_changes_admin_table', 6),
(16, '2021_06_07_090135_create_email_templates_table', 7),
(17, '2021_06_07_103214_add_image_to_admin', 8),
(18, '2021_06_07_111707_add_gsetting_permission_to_admin', 9),
(19, '2021_06_07_111753_add_columns_to_gsetting', 10),
(20, '2021_06_07_112448_add_newcolumns_to_g_setting', 11),
(21, '2021_06_10_065207_create_permissions_table', 12),
(22, '2021_06_11_052822_changeadmin_column', 13),
(23, '2021_06_11_091239_add_columns_to_user', 14),
(24, '2021_06_11_092738_add_nickname_to_admin', 15),
(25, '2021_06_11_093309_create_cms_pages_table', 15),
(30, '2021_06_18_072806_create_professor_profiles_table', 16),
(31, '2021_06_18_073348_create_teacher_profiles_table', 17),
(32, '2021_06_21_073657_add_age_column', 18),
(33, '2021_06_21_121159_create_universities_table', 19),
(34, '2021_06_22_074840_create_colleges_table', 20),
(35, '2021_06_23_070356_add_professor_column', 21),
(36, '2021_06_23_073735_change_professor_country_column', 22),
(37, '2021_06_23_123258_create_schools_table', 23),
(38, '2021_06_23_123345_create_subjects_table', 23),
(40, '2021_06_25_053423_add_column_to_teacher', 24),
(46, '2016_06_01_000001_create_oauth_auth_codes_table', 25),
(47, '2016_06_01_000002_create_oauth_access_tokens_table', 25),
(48, '2016_06_01_000003_create_oauth_refresh_tokens_table', 25),
(49, '2016_06_01_000004_create_oauth_clients_table', 25),
(50, '2016_06_01_000005_create_oauth_personal_access_clients_table', 25);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1=> like ,2=> Dislike ,3=> Message ,4=> Reply,5=>report',
  `is_read` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating_pageId` int(11) NOT NULL,
  `rating_type` int(11) NOT NULL COMMENT '1:professor,2:teacher,3:university',
  `rating_msg_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `sender_id`, `receiver_id`, `type`, `is_read`, `message`, `rating_pageId`, `rating_type`, `rating_msg_id`, `created_at`, `updated_at`) VALUES
(1, 117, 155, 1, 0, 'Collegito-4x6fwy liked your comment', 23900, 1, 399, '2022-07-21 07:45:10', '2022-07-21 07:45:10'),
(2, 117, 332, 4, 0, 'Collegito-4x6fwy replied on your review', 23900, 1, 413, '2022-07-21 09:03:00', '2022-07-21 09:03:00'),
(3, 117, 332, 4, 0, 'Collegito-4x6fwy replied on your review', 23900, 1, 414, '2022-07-21 09:03:16', '2022-07-21 09:03:16'),
(5, 117, 147, 4, 0, 'Collegito-4x6fwy replied on your review', 21, 2, 148, '2022-07-21 09:06:15', '2022-07-21 09:06:15'),
(7, 160, 117, 2, 1, 'Collegito-1g7vxf disliked your comment', 21, 2, 148, '2022-07-21 09:12:25', '2022-07-26 11:01:42'),
(8, 160, 117, 4, 1, 'Collegito-1g7vxf replied on your review', 21, 2, 149, '2022-07-21 09:12:42', '2022-07-26 11:01:42'),
(10, 160, 53, 4, 0, 'Collegito-1g7vxf replied on your review', 21, 2, 150, '2022-07-21 09:13:09', '2022-07-21 09:13:09'),
(14, 1, 117, 1, 1, 'collegator-user1 liked your comment', 21, 2, 118, '2022-07-21 09:39:27', '2022-07-26 11:01:42'),
(15, 1, 117, 1, 1, 'collegator-user1 liked your comment', 21, 2, 119, '2022-07-21 09:40:20', '2022-07-26 11:01:42'),
(19, 1, 117, 1, 1, 'collegator-user1 liked your comment', 21, 2, 53, '2022-07-21 11:03:18', '2022-07-26 11:01:42'),
(20, 1, 53, 4, 0, 'collegator-user1 replied on your review', 21, 2, 152, '2022-07-21 11:03:26', '2022-07-21 11:03:26'),
(21, 1, 117, 1, 1, 'collegator-user1 liked your comment', 21, 2, 52, '2022-07-21 11:03:39', '2022-07-26 11:01:42'),
(22, 1, 117, 4, 1, 'collegator-user1 replied on your review', 21, 2, 153, '2022-07-21 11:03:45', '2022-07-26 11:01:42'),
(24, 1, 117, 4, 1, 'collegator-user1 replied on your review', 23913, 1, 416, '2022-07-21 12:15:52', '2022-07-26 11:01:42'),
(25, 161, 155, 2, 0, 'Collegito-4bt8ng disliked your comment', 23900, 1, 399, '2022-07-21 21:01:49', '2022-07-21 21:01:49'),
(27, 161, 149, 4, 0, 'Collegito-4bt8ng replied on your review', 23900, 1, 418, '2022-07-21 21:02:47', '2022-07-21 21:02:47'),
(28, 161, 149, 4, 0, 'Collegito-4bt8ng replied on your review', 23900, 1, 419, '2022-07-21 21:02:48', '2022-07-21 21:02:48'),
(29, 161, 188, 4, 0, 'Collegito-4bt8ng replied on your review', 18, 3, 189, '2022-07-21 21:09:09', '2022-07-21 21:09:09'),
(30, 161, 140, 2, 0, 'Collegito-4bt8ng disliked your comment', 18, 3, 128, '2022-07-21 21:09:28', '2022-07-21 21:09:28'),
(31, 161, 140, 5, 0, 'Collegito-4bt8ng Report Your Message', 18, 3, 128, '2022-07-21 21:09:32', '2022-07-21 21:09:32'),
(32, 161, 154, 4, 0, 'Collegito-4bt8ng replied on your review', 29, 2, 155, '2022-07-21 21:23:00', '2022-07-21 21:23:00'),
(33, 161, 421, 4, 0, 'Collegito-4bt8ng replied on your review', 23910, 1, 422, '2022-07-21 21:35:19', '2022-07-21 21:35:19'),
(34, 161, 421, 4, 0, 'Collegito-4bt8ng replied on your review', 23910, 1, 423, '2022-07-21 21:35:28', '2022-07-21 21:35:28'),
(43, 117, 1, 1, 1, 'Collegito-4x6fwy liked your comment', 23913, 1, 337, '2022-07-22 05:28:25', '2022-07-25 06:32:39'),
(47, 117, 1, 2, 1, 'Collegito-4x6fwy disliked your comment', 21, 2, 151, '2022-07-22 05:43:38', '2022-07-25 06:32:31'),
(48, 117, 151, 1, 1, 'Collegito-4x6fwy liked your comment', 21, 2, 103, '2022-07-22 05:43:43', '2022-07-25 12:15:35'),
(49, 162, 159, 4, 0, 'Collegita-ykf9u6 replied on your review', 23900, 1, 430, '2022-07-22 16:47:11', '2022-07-22 16:47:11'),
(50, 162, 159, 4, 1, 'Collegita-ykf9u6 replied on your review', 23900, 1, 431, '2022-07-22 16:47:13', '2022-07-25 19:44:14'),
(51, 162, 159, 4, 0, 'Collegita-ykf9u6 replied on your review', 23900, 1, 432, '2022-07-22 16:47:47', '2022-07-22 16:47:47'),
(52, 162, 161, 4, 0, 'Collegita-ykf9u6 replied on your review', 23900, 1, 433, '2022-07-22 16:48:14', '2022-07-22 16:48:14'),
(53, 162, 161, 4, 0, 'Collegita-ykf9u6 replied on your review', 23900, 1, 434, '2022-07-22 16:48:15', '2022-07-22 16:48:15'),
(54, 117, 332, 4, 0, 'Collegito-4x6fwy replied on your review', 23900, 1, 440, '2022-07-25 05:00:38', '2022-07-25 05:00:38'),
(56, 163, 1, 2, 1, 'Collegito-f2kp1i disliked your comment', 23913, 1, 337, '2022-07-25 06:55:50', '2022-07-25 07:40:36'),
(57, 163, 1, 4, 1, 'Collegito-f2kp1i replied on your review', 23913, 1, 441, '2022-07-25 06:56:30', '2022-07-25 07:39:47'),
(58, 163, 1, 4, 1, 'Collegito-f2kp1i replied on your review', 23913, 1, 442, '2022-07-25 06:57:19', '2022-07-25 07:17:32'),
(59, 117, 161, 2, 0, 'Collegito-4x6fwy disliked your comment', 23900, 1, 420, '2022-07-25 09:02:26', '2022-07-25 09:02:26'),
(61, 117, 151, 1, 0, 'Collegito-4x6fwy liked your comment', 23913, 1, 336, '2022-07-25 09:22:32', '2022-07-25 09:22:32'),
(62, 117, 151, 4, 1, 'Collegito-4x6fwy replied on your review', 23913, 1, 443, '2022-07-25 09:23:16', '2022-07-25 12:15:24'),
(63, 1, 151, 2, 0, 'collegator-user1 disliked your comment', 23913, 1, 338, '2022-07-25 09:27:25', '2022-07-25 09:27:25'),
(65, 1, 151, 1, 1, 'collegator-user1 liked your comment', 23913, 1, 396, '2022-07-25 09:27:36', '2022-07-25 12:15:01'),
(66, 1, 117, 1, 1, 'collegator-user1 liked your comment', 23913, 1, 383, '2022-07-25 09:43:52', '2022-07-26 11:01:42'),
(68, 117, 159, 4, 1, 'Collegito-4x6fwy replied on your review', 23900, 1, 445, '2022-07-25 09:58:57', '2022-07-25 19:43:18'),
(69, 164, 429, 4, 0, 'Collegita-z7ju8g replied on your review', 23900, 1, 446, '2022-07-25 11:45:45', '2022-07-25 11:45:45'),
(70, 164, 429, 4, 0, 'Collegita-z7ju8g replied on your review', 23900, 1, 447, '2022-07-25 11:45:51', '2022-07-25 11:45:51'),
(71, 165, 164, 4, 0, 'Collegito-qsl79i replied on your review', 23900, 1, 448, '2022-07-26 04:17:35', '2022-07-26 04:17:35'),
(79, 117, 89, 2, 0, 'Collegito-4x6fwy disliked your comment', 4, 3, 23, '2022-07-26 05:52:19', '2022-07-26 05:52:19'),
(80, 117, 1, 2, 0, 'Collegito-4x6fwy disliked your comment', 4, 3, 152, '2022-07-26 05:52:38', '2022-07-26 05:52:38'),
(81, 117, 164, 1, 0, 'Collegito-4x6fwy liked your comment', 23900, 1, 446, '2022-07-26 07:58:16', '2022-07-26 07:58:16'),
(82, 166, 165, 4, 0, 'Collegita-r7scp9 replied on your review', 23900, 1, 450, '2022-07-26 08:26:52', '2022-07-26 08:26:52'),
(84, 160, 161, 2, 0, 'Collegito-1g7vxf disliked your comment', 23900, 1, 420, '2022-07-26 09:58:28', '2022-07-26 09:58:28'),
(85, 168, 164, 4, 0, 'Collegito-8wqr6b replied on your review', 23900, 1, 452, '2022-07-26 10:52:21', '2022-07-26 10:52:21'),
(87, 160, 142, 4, 0, 'Collegito-1g7vxf replied on your review', 26, 2, 157, '2022-07-26 13:35:36', '2022-07-26 13:35:36'),
(90, 160, 92, 2, 0, 'Collegito-1g7vxf disliked your comment', 21, 2, 12, '2022-07-27 09:27:13', '2022-07-27 09:27:13'),
(91, 160, 12, 4, 0, 'Collegito-1g7vxf reply on your review', 21, 2, 159, '2022-07-27 09:27:18', '2022-07-27 09:27:18'),
(92, 160, 151, 5, 0, 'Collegito-1g7vxf Report Your Message', 21, 2, 103, '2022-07-27 09:36:08', '2022-07-27 09:36:08'),
(93, 160, 159, 4, 0, 'Collegito-1g7vxf reply on your review', 18, 3, 191, '2022-07-27 10:47:39', '2022-07-27 10:47:39'),
(103, 160, 153, 1, 0, 'Collegito-1g7vxf liked your comment', 18, 3, 164, '2022-07-27 10:50:10', '2022-07-27 10:50:10'),
(104, 160, 39, 4, 0, 'Collegito-1g7vxf reply on your review', 18, 3, 192, '2022-07-27 12:35:55', '2022-07-27 12:35:55'),
(105, 160, 429, 4, 0, 'Collegito-1g7vxf reply on your review', 23900, 1, 453, '2022-07-28 06:40:32', '2022-07-28 06:40:32'),
(106, 160, 166, 4, 0, 'Collegito-1g7vxf reply on your review', 23900, 1, 455, '2022-07-28 06:40:49', '2022-07-28 06:40:49'),
(107, 160, 117, 2, 1, 'Collegito-1g7vxf disliked your comment', 21, 2, 52, '2022-07-28 07:01:59', '2022-08-23 11:23:20'),
(109, 170, 164, 4, 0, 'Collegito-hu0yj6 reply on your review', 23900, 1, 457, '2022-08-04 13:30:40', '2022-08-04 13:30:40'),
(110, 170, 160, 4, 1, 'Collegito-hu0yj6 reply on your review', 23900, 1, 458, '2022-08-04 13:31:14', '2022-08-09 06:01:34'),
(111, 170, 160, 4, 1, 'Collegito-hu0yj6 reply on your review', 23900, 1, 459, '2022-08-04 13:31:15', '2022-08-09 11:42:21'),
(112, 170, 168, 4, 0, 'Collegito-hu0yj6 reply on your review', 23900, 1, 460, '2022-08-04 13:31:39', '2022-08-04 13:31:39'),
(113, 170, 168, 4, 0, 'Collegito-hu0yj6 reply on your review', 23900, 1, 461, '2022-08-04 13:31:40', '2022-08-04 13:31:40'),
(114, 170, 142, 2, 0, 'Collegito-hu0yj6 disliked your comment', 23900, 1, 267, '2022-08-04 13:52:46', '2022-08-04 13:52:46'),
(115, 170, 161, 5, 0, 'Collegito-hu0yj6 Report Your Message', 23900, 1, 420, '2022-08-04 14:02:03', '2022-08-04 14:02:03'),
(116, 173, 456, 4, 0, 'Collegita-p1rt0s reply on your review', 23900, 1, 462, '2022-08-05 11:11:49', '2022-08-05 11:11:49'),
(117, 173, 456, 4, 0, 'Collegita-p1rt0s reply on your review', 23900, 1, 463, '2022-08-05 11:11:50', '2022-08-05 11:11:50'),
(118, 173, 456, 4, 0, 'Collegita-p1rt0s reply on your review', 23900, 1, 466, '2022-08-05 11:19:55', '2022-08-05 11:19:55'),
(119, 173, 456, 4, 0, 'Collegita-p1rt0s reply on your review', 23900, 1, 467, '2022-08-05 11:19:55', '2022-08-05 11:19:55'),
(120, 173, 39, 4, 0, 'Collegita-p1rt0s reply on your review', 18, 3, 194, '2022-08-05 11:35:16', '2022-08-05 11:35:16'),
(121, 173, 39, 4, 0, 'Collegita-p1rt0s reply on your review', 18, 3, 195, '2022-08-05 11:35:16', '2022-08-05 11:35:16'),
(122, 173, 39, 4, 0, 'Collegita-p1rt0s reply on your review', 18, 3, 196, '2022-08-05 11:35:16', '2022-08-05 11:35:16'),
(123, 173, 39, 4, 0, 'Collegita-p1rt0s reply on your review', 18, 3, 197, '2022-08-05 11:35:17', '2022-08-05 11:35:17'),
(124, 160, 161, 4, 0, 'Collegito-1g7vxf reply on your review', 18, 3, 198, '2022-08-05 13:52:52', '2022-08-05 13:52:52'),
(125, 160, 1, 4, 1, 'Collegito-1g7vxf reply on your review', 18, 3, 200, '2022-08-05 13:54:54', '2022-08-22 10:16:11'),
(127, 130, 173, 4, 0, 'Collegito-2ucp6y reply on your review', 23900, 1, 468, '2022-08-05 15:25:02', '2022-08-05 15:25:02'),
(128, 160, 173, 4, 0, 'Collegito-1g7vxf reply on your review', 23900, 1, 469, '2022-08-08 05:51:44', '2022-08-08 05:51:44'),
(129, 160, 173, 4, 0, 'Collegito-1g7vxf reply on your review', 23900, 1, 470, '2022-08-08 05:52:56', '2022-08-08 05:52:56'),
(130, 160, 173, 4, 0, 'Collegito-1g7vxf reply on your review', 23900, 1, 471, '2022-08-08 05:53:48', '2022-08-08 05:53:48'),
(131, 175, 475, 4, 0, 'Collegito-g2tzu1 replied on your review', 23900, 1, 476, '2022-08-18 06:04:49', '2022-08-18 06:04:49'),
(133, 117, 475, 4, 0, 'Collegito-4x6fwy reply on your review', 23900, 1, 480, '2022-08-19 04:36:43', '2022-08-19 04:36:43'),
(134, 179, 482, 4, 0, 'Collegito-61vume reply on your review', 23916, 1, 483, '2022-08-19 05:05:48', '2022-08-19 05:05:48'),
(139, 1, 155, 1, 0, 'collegator-user1 liked your comment', 23900, 1, 399, '2022-08-19 10:51:43', '2022-08-19 10:51:43'),
(148, 180, 475, 4, 0, 'Collegito-o3i6gf reply on your review', 23900, 1, 486, '2022-08-21 04:26:03', '2022-08-21 04:26:03'),
(149, 180, 164, 4, 0, 'Collegito-o3i6gf reply on your review', 23900, 1, 487, '2022-08-21 04:26:20', '2022-08-21 04:26:20'),
(150, 180, 179, 5, 0, 'Collegito-o3i6gf Report Your Message', 23900, 1, 481, '2022-08-21 04:26:52', '2022-08-21 04:26:52'),
(158, 1, 485, 4, 0, 'collegator-user1 reply on your review', 23900, 1, 488, '2022-08-22 05:53:17', '2022-08-22 05:53:17'),
(165, 1, 160, 5, 0, 'collegator-user1 Report Your Message', 21, 2, 147, '2022-08-22 09:50:53', '2022-08-22 09:50:53'),
(166, 117, 485, 4, 0, 'Collegito-4x6fwy reply on your review', 23900, 1, 490, '2022-08-22 14:05:02', '2022-08-22 14:05:02'),
(167, 117, 485, 4, 0, 'Collegito-4x6fwy reply on your review', 23900, 1, 491, '2022-08-22 14:05:17', '2022-08-22 14:05:17'),
(169, 1, 206, 4, 0, 'collegator-user1 reply on your review', 23900, 1, 492, '2022-08-23 04:55:34', '2022-08-23 04:55:34'),
(170, 1, 206, 4, 0, 'collegator-user1 reply on your review', 23900, 1, 494, '2022-08-23 05:08:30', '2022-08-23 05:08:30'),
(171, 1, 206, 4, 0, 'collegator-user1 reply on your review', 23900, 1, 495, '2022-08-23 05:09:32', '2022-08-23 05:09:32'),
(172, 1, 206, 4, 0, 'collegator-user1 reply on your review', 23900, 1, 496, '2022-08-23 05:10:04', '2022-08-23 05:10:04'),
(173, 175, 1, 4, 0, 'Collegito-g2tzu1 replied on your review', 23900, 1, 499, '2022-08-23 05:13:21', '2022-08-23 05:13:21'),
(174, 175, 117, 4, 1, 'Collegito-g2tzu1 replied on your review', 23900, 1, 500, '2022-08-23 05:13:28', '2022-08-23 11:23:18'),
(175, 1, 485, 4, 0, 'collegator-user1 reply on your review', 23900, 1, 507, '2022-08-23 05:18:45', '2022-08-23 05:18:45'),
(176, 1, 107, 4, 0, 'collegator-user1 reply on your review', 4, 3, 213, '2022-08-23 05:27:39', '2022-08-23 05:27:39'),
(177, 1, 7, 4, 0, 'collegator-user1 reply on your review', 4, 3, 220, '2022-08-23 05:32:59', '2022-08-23 05:32:59'),
(178, 1, 7, 4, 0, 'collegator-user1 reply on your review', 4, 3, 225, '2022-08-23 05:35:06', '2022-08-23 05:35:06'),
(179, 1, 7, 4, 0, 'collegator-user1 reply on your review', 4, 3, 229, '2022-08-23 05:39:30', '2022-08-23 05:39:30'),
(180, 1, 72, 4, 0, 'collegator-user1 reply on your review', 23900, 1, 514, '2022-08-23 05:58:09', '2022-08-23 05:58:09'),
(181, 1, 69, 4, 0, 'collegator-user1 reply on your review', 4, 3, 235, '2022-08-23 06:03:04', '2022-08-23 06:03:04'),
(182, 1, 22, 4, 0, 'collegator-user1 reply on your review', 4, 3, 246, '2022-08-23 06:51:27', '2022-08-23 06:51:27'),
(183, 1, 22, 4, 0, 'collegator-user1 reply on your review', 4, 3, 247, '2022-08-23 06:51:42', '2022-08-23 06:51:42'),
(184, 1, 7, 4, 0, 'collegator-user1 reply on your review', 4, 3, 251, '2022-08-23 06:59:29', '2022-08-23 06:59:29'),
(185, 1, 107, 4, 0, 'collegator-user1 reply on your review', 4, 3, 252, '2022-08-23 07:00:31', '2022-08-23 07:00:31'),
(186, 1, 7, 4, 0, 'collegator-user1 reply on your review', 4, 3, 262, '2022-08-23 07:36:22', '2022-08-23 07:36:22'),
(187, 117, 180, 1, 0, 'Collegito-4x6fwy liked your comment', 18, 3, 211, '2022-08-23 07:43:39', '2022-08-23 07:43:39'),
(188, 1, 122, 4, 0, 'collegator-user1 reply on your review', 20, 3, 267, '2022-08-23 09:20:53', '2022-08-23 09:20:53'),
(189, 1, 7, 4, 0, 'collegator-user1 reply on your review', 4, 3, 268, '2022-08-23 09:22:24', '2022-08-23 09:22:24'),
(190, 1, 155, 4, 0, 'collegator-user1 reply on your review', 4, 3, 269, '2022-08-23 09:23:38', '2022-08-23 09:23:38'),
(191, 1, 206, 4, 0, 'collegator-user1 reply on your review', 23900, 1, 519, '2022-08-23 09:31:29', '2022-08-23 09:31:29'),
(192, 1, 206, 4, 0, 'collegator-user1 reply on your review', 23900, 1, 521, '2022-08-23 09:31:56', '2022-08-23 09:31:56'),
(193, 1, 206, 4, 0, 'collegator-user1 reply on your review', 23900, 1, 522, '2022-08-23 09:32:28', '2022-08-23 09:32:28'),
(194, 1, 420, 4, 0, 'collegator-user1 reply on your review', 23900, 1, 523, '2022-08-23 09:37:24', '2022-08-23 09:37:24'),
(195, 1, 160, 4, 0, 'collegator-user1 reply on your review', 21, 2, 161, '2022-08-23 09:46:08', '2022-08-23 09:46:08'),
(196, 1, 12, 4, 0, 'collegator-user1 reply on your review', 21, 2, 163, '2022-08-23 09:46:35', '2022-08-23 09:46:35'),
(197, 1, 12, 4, 0, 'collegator-user1 reply on your review', 21, 2, 164, '2022-08-23 09:47:26', '2022-08-23 09:47:26'),
(198, 1, 264, 4, 0, 'collegator-user1 reply on your review', 4, 3, 270, '2022-08-23 10:12:16', '2022-08-23 10:12:16'),
(199, 1, 151, 4, 0, 'collegator-user1 reply on your review', 20, 3, 271, '2022-08-23 10:13:25', '2022-08-23 10:13:25'),
(200, 1, 12, 4, 0, 'collegator-user1 reply on your review', 21, 2, 166, '2022-08-23 10:14:32', '2022-08-23 10:14:32'),
(201, 117, 481, 4, 0, 'Collegito-4x6fwy reply on your review', 23900, 1, 526, '2022-08-23 11:39:18', '2022-08-23 11:39:18'),
(202, 117, 180, 4, 0, 'Collegito-4x6fwy reply on your review', 23900, 1, 527, '2022-08-23 11:39:47', '2022-08-23 11:39:47'),
(203, 1, 481, 4, 0, 'collegator-user1 reply on your review', 23900, 1, 528, '2022-08-23 11:40:55', '2022-08-23 11:40:55'),
(204, 1, 149, 5, 0, 'collegator-user1 Report Your Message', 23900, 1, 309, '2022-08-23 12:51:04', '2022-08-23 12:51:04'),
(212, 1, 151, 1, 0, 'collegator-user1 liked your comment', 21, 2, 103, '2022-08-23 12:59:56', '2022-08-23 12:59:56'),
(213, 130, 107, 2, 0, 'Collegito-2ucp6y disliked your comment', 23900, 1, 300, '2022-08-24 04:04:17', '2022-08-24 04:04:17'),
(214, 1, 151, 5, 0, 'collegator-user1 Report Your Message', 4, 3, 155, '2022-08-24 11:45:48', '2022-08-24 11:45:48'),
(215, 1, 22, 4, 0, 'collegator-user1 reply on your review', 4, 3, 275, '2022-08-24 12:45:03', '2022-08-24 12:45:03'),
(216, 1, 264, 4, 0, 'collegator-user1 reply on your review', 4, 3, 276, '2022-08-24 12:53:19', '2022-08-24 12:53:19'),
(217, 1, 155, 4, 0, 'collegator-user1 reply on your review', 4, 3, 277, '2022-08-25 04:29:53', '2022-08-25 04:29:53'),
(218, 1, 264, 4, 0, 'collegator-user1 reply on your review', 4, 3, 278, '2022-08-25 05:53:19', '2022-08-25 05:53:19'),
(219, 175, 117, 5, 0, 'Collegito-g2tzu1 Report Your Message', 23900, 1, 490, '2022-08-25 07:36:49', '2022-08-25 07:36:49'),
(220, 117, 188, 4, 0, 'Collegito-4x6fwy reply on your review', 18, 3, 323, '2022-08-25 10:25:10', '2022-08-25 10:25:10'),
(221, 1, 117, 4, 0, 'collegator-user1 reply on your review', 21, 2, 171, '2022-08-25 12:10:02', '2022-08-25 12:10:02'),
(222, 1, 147, 4, 0, 'collegator-user1 reply on your review', 21, 2, 172, '2022-08-25 12:10:40', '2022-08-25 12:10:40'),
(224, 1, 160, 5, 0, 'collegator-user1 Report Your Message', 18, 3, 279, '2022-08-25 13:29:36', '2022-08-25 13:29:36'),
(225, 1, 485, 4, 0, 'collegator-user1 reply on your review', 23900, 1, 533, '2022-08-25 13:36:53', '2022-08-25 13:36:53'),
(226, 117, 529, 4, 0, 'Collegito-4x6fwy reply on your review', 23900, 1, 538, '2022-08-25 13:49:38', '2022-08-25 13:49:38'),
(227, 117, 1, 4, 0, 'Collegito-4x6fwy reply on your review', 23900, 1, 539, '2022-08-25 13:49:51', '2022-08-25 13:49:51'),
(228, 130, 128, 4, 0, 'Collegito-2ucp6y reply on your review', 18, 3, 324, '2022-08-25 14:45:23', '2022-08-25 14:45:23'),
(229, 130, 175, 4, 1, 'Collegito-2ucp6y reply on your review', 23900, 1, 540, '2022-08-26 16:41:57', '2022-08-29 12:07:18'),
(230, 130, 117, 4, 0, 'Collegito-2ucp6y reply on your review', 23900, 1, 541, '2022-08-26 16:42:34', '2022-08-26 16:42:34'),
(231, 130, 155, 5, 0, 'Collegito-2ucp6y Report Your Message', 23909, 1, 405, '2022-08-26 16:58:16', '2022-08-26 16:58:16'),
(232, 182, 1, 4, 0, 'Collegito-1v6wir reply on your review', 23900, 1, 543, '2022-08-29 10:18:50', '2022-08-29 10:18:50'),
(233, 130, 159, 4, 0, 'Collegito-2ucp6y reply on your review', 18, 3, 328, '2022-08-29 13:17:49', '2022-08-29 13:17:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('63c7d83558cbbbaadd3d661c541c4f4a0324d0075836a634b0987825d0266781ab027faaa28816da', 22, 3, 'API Token', '[]', 0, '2021-10-06 05:27:28', '2021-10-06 05:27:28', '2022-10-06 10:57:28');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Collegator Personal Access Client', 'Jt2oq0RTPmX96htaIncFZ5QAsuGzbKZzUPg0MlNe', NULL, 'http://localhost', 1, 0, 0, '2021-10-01 11:29:06', '2021-10-01 11:29:06'),
(2, NULL, 'Collegator Password Grant Client', 'SRg7QE6s13WZwVoV76KGFuQH9MQyzlUffN5as0uT', 'users', 'http://localhost', 0, 1, 0, '2021-10-01 11:29:06', '2021-10-01 11:29:06'),
(3, NULL, 'Collegator Personal Access Client', '65kGsb4diXCvukwuPeddXFlCIupuVyDJT4FeyVzi', NULL, 'http://localhost', 1, 0, 0, '2021-10-01 11:29:18', '2021-10-01 11:29:18'),
(4, NULL, 'Collegator Password Grant Client', 'CbXNzrPgm7BgwFaTNWpBQ3opCtqM4kSbXrscgU1P', 'users', 'http://localhost', 0, 1, 0, '2021-10-01 11:29:18', '2021-10-01 11:29:18');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-10-01 11:29:06', '2021-10-01 11:29:06'),
(2, 3, '2021-10-01 11:29:18', '2021-10-01 11:29:18');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('deepanshu@getnada.com', '$2y$10$iEmJnnmQRSrMH/JUPcpwaeUMWQI911AAwFM3DYRxIaut/4/yAXpB6', '2021-07-13 08:06:40'),
('usertest@getnada.com', '$2y$10$NPYGcnVItEbS/TrBCzVw2e7jOdRK/Abm5x/e0iQcQUi8ZYa2LbSwe', '2021-07-23 07:55:12'),
('johndoe@yopmail.com', '$2y$10$LOEqWhxOqPbE0a/404hyeuBza4lb6Pq7eeQePwSeJ2R0WLZgKlEsq', '2021-08-18 14:53:11'),
('deepanshuj70@getnada.com', '$2y$10$tZ5kYXYOUVFHw7VefKayvOg4JayGN.WZFcxmp.8k64mF0ROXuPCai', '2021-11-08 12:37:26'),
('deep@getnada.com', '$2y$10$hjePvfgc3hwW4gYpPSIqzu4aXEs/WeW/ZebJo3JGU8Yy8OhkmsczK', '2022-02-21 05:49:17');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subadmin_id` int(11) NOT NULL,
  `modal_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add` tinyint(1) NOT NULL DEFAULT 0,
  `edit` tinyint(1) NOT NULL DEFAULT 0,
  `delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `subadmin_id`, `modal_name`, `add`, `edit`, `delete`, `created_at`, `updated_at`) VALUES
(180, 2, 'Subadmin', 1, 1, 1, '2021-06-18 09:02:05', '2021-06-18 09:02:05'),
(181, 2, 'Users', 1, 1, 1, '2021-06-18 09:02:06', '2021-06-18 09:02:06'),
(182, 2, 'ProfessorProfile', 1, 1, 1, '2021-06-18 09:02:06', '2021-06-18 09:02:06'),
(183, 2, 'HighSchoolProfile', 1, 1, 1, '2021-06-18 09:02:06', '2021-06-18 09:02:06'),
(184, 2, 'Stories', 1, 1, 1, '2021-06-18 09:02:06', '2021-06-18 09:02:06'),
(185, 2, 'ChatRoom', 1, 1, 1, '2021-06-18 09:02:06', '2021-06-18 09:02:06'),
(186, 2, 'Setting', 1, 1, 1, '2021-06-18 09:02:06', '2021-06-18 09:02:06'),
(187, 2, 'Cms', 1, 0, 0, '2021-06-18 09:02:06', '2021-06-18 09:02:06'),
(216, 5, 'Subadmin', 1, 1, 1, '2021-06-18 09:16:38', '2021-06-18 09:16:38'),
(217, 5, 'Users', 1, 1, 1, '2021-06-18 09:16:38', '2021-06-18 09:16:38'),
(218, 5, 'Email', 1, 1, 1, '2021-06-18 09:16:38', '2021-06-18 09:16:38'),
(219, 5, 'ProfessorProfile', 1, 1, 1, '2021-06-18 09:16:38', '2021-06-18 09:16:38'),
(220, 5, 'HighSchoolProfile', 1, 1, 1, '2021-06-18 09:16:38', '2021-06-18 09:16:38'),
(221, 5, 'Reviews', 0, 1, 0, '2021-06-18 09:16:38', '2021-06-18 09:16:38'),
(222, 5, 'Stories', 0, 1, 0, '2021-06-18 09:16:38', '2021-06-18 09:16:38'),
(223, 6, 'University', 1, 0, 0, '2021-07-13 08:42:23', '2021-07-13 08:42:23'),
(224, 6, 'College', 1, 1, 1, '2021-07-13 08:42:23', '2021-07-13 08:42:23'),
(225, 6, 'School', 0, 1, 0, '2021-07-13 08:42:23', '2021-07-13 08:42:23'),
(226, 6, 'Subject', 1, 1, 1, '2021-07-13 08:42:23', '2021-07-13 08:42:23'),
(245, 3, 'Subadmin', 1, 1, 1, '2021-09-24 05:05:46', '2021-09-24 05:05:46'),
(246, 3, 'Users', 1, 1, 1, '2021-09-24 05:05:46', '2021-09-24 05:05:46'),
(247, 3, 'Email', 1, 1, 1, '2021-09-24 05:05:46', '2021-09-24 05:05:46'),
(248, 3, 'ProfessorProfile', 1, 1, 1, '2021-09-24 05:05:46', '2021-09-24 05:05:46'),
(249, 3, 'HighSchoolProfile', 1, 1, 1, '2021-09-24 05:05:46', '2021-09-24 05:05:46'),
(250, 3, 'Banner', 1, 1, 1, '2021-09-24 05:05:46', '2021-09-24 05:05:46'),
(251, 3, 'Reviews', 1, 1, 1, '2021-09-24 05:05:46', '2021-09-24 05:05:46'),
(252, 3, 'Stories', 1, 1, 1, '2021-09-24 05:05:46', '2021-09-24 05:05:46'),
(253, 3, 'ReportStatics', 1, 1, 1, '2021-09-24 05:05:46', '2021-09-24 05:05:46'),
(254, 3, 'ChatRoom', 1, 1, 1, '2021-09-24 05:05:46', '2021-09-24 05:05:46'),
(255, 3, 'Setting', 1, 1, 1, '2021-09-24 05:05:46', '2021-09-24 05:05:46'),
(256, 3, 'Cms', 1, 1, 1, '2021-09-24 05:05:46', '2021-09-24 05:05:46'),
(257, 3, 'Country', 1, 1, 1, '2021-09-24 05:05:46', '2021-09-24 05:05:46'),
(258, 3, 'University', 1, 1, 1, '2021-09-24 05:05:46', '2021-09-24 05:05:46'),
(259, 3, 'College', 1, 1, 1, '2021-09-24 05:05:46', '2021-09-24 05:05:46'),
(260, 3, 'School', 1, 1, 1, '2021-09-24 05:05:46', '2021-09-24 05:05:46'),
(261, 3, 'Subject', 1, 1, 1, '2021-09-24 05:05:46', '2021-09-24 05:05:46'),
(262, 3, 'Testimonial', 1, 1, 1, '2021-09-24 05:05:46', '2021-09-24 05:05:46'),
(263, 3, 'Slider', 1, 1, 1, '2021-09-24 05:05:46', '2021-09-24 05:05:46'),
(264, 11, 'Subadmin', 1, 1, 1, '2021-09-29 22:49:32', '2021-09-29 22:49:32'),
(265, 11, 'Users', 1, 1, 1, '2021-09-29 22:49:32', '2021-09-29 22:49:32'),
(266, 11, 'Email', 1, 1, 1, '2021-09-29 22:49:32', '2021-09-29 22:49:32'),
(267, 11, 'ProfessorProfile', 1, 1, 1, '2021-09-29 22:49:32', '2021-09-29 22:49:32'),
(268, 11, 'HighSchoolProfile', 1, 1, 1, '2021-09-29 22:49:32', '2021-09-29 22:49:32'),
(269, 11, 'Banner', 1, 1, 1, '2021-09-29 22:49:32', '2021-09-29 22:49:32'),
(270, 11, 'Reviews', 1, 1, 1, '2021-09-29 22:49:32', '2021-09-29 22:49:32'),
(271, 11, 'Stories', 1, 1, 1, '2021-09-29 22:49:32', '2021-09-29 22:49:32'),
(272, 11, 'ReportStatics', 1, 1, 1, '2021-09-29 22:49:32', '2021-09-29 22:49:32'),
(273, 11, 'ChatRoom', 1, 1, 1, '2021-09-29 22:49:32', '2021-09-29 22:49:32'),
(274, 11, 'Setting', 1, 1, 1, '2021-09-29 22:49:32', '2021-09-29 22:49:32'),
(275, 11, 'Cms', 1, 1, 1, '2021-09-29 22:49:32', '2021-09-29 22:49:32'),
(276, 11, 'Country', 1, 1, 1, '2021-09-29 22:49:32', '2021-09-29 22:49:32'),
(277, 11, 'University', 1, 1, 1, '2021-09-29 22:49:32', '2021-09-29 22:49:32'),
(278, 11, 'College', 1, 1, 1, '2021-09-29 22:49:32', '2021-09-29 22:49:32'),
(279, 11, 'School', 1, 1, 1, '2021-09-29 22:49:32', '2021-09-29 22:49:32'),
(280, 11, 'Subject', 1, 1, 1, '2021-09-29 22:49:32', '2021-09-29 22:49:32'),
(281, 11, 'Testimonial', 1, 1, 1, '2021-09-29 22:49:32', '2021-09-29 22:49:32'),
(282, 11, 'Slider', 1, 1, 1, '2021-09-29 22:49:32', '2021-09-29 22:49:32'),
(283, 10, 'Subadmin', 1, 1, 1, '2021-10-15 00:23:20', '2021-10-15 00:23:20'),
(284, 10, 'Users', 1, 1, 1, '2021-10-15 00:23:20', '2021-10-15 00:23:20'),
(285, 10, 'Email', 1, 1, 1, '2021-10-15 00:23:20', '2021-10-15 00:23:20'),
(286, 10, 'ProfessorProfile', 1, 1, 1, '2021-10-15 00:23:20', '2021-10-15 00:23:20'),
(287, 10, 'HighSchoolProfile', 1, 1, 1, '2021-10-15 00:23:20', '2021-10-15 00:23:20'),
(288, 10, 'Banner', 1, 1, 1, '2021-10-15 00:23:20', '2021-10-15 00:23:20'),
(289, 10, 'Reviews', 1, 1, 1, '2021-10-15 00:23:20', '2021-10-15 00:23:20'),
(290, 10, 'Stories', 1, 1, 1, '2021-10-15 00:23:20', '2021-10-15 00:23:20'),
(291, 10, 'ReportStatics', 1, 1, 1, '2021-10-15 00:23:20', '2021-10-15 00:23:20'),
(292, 10, 'ChatRoom', 1, 1, 1, '2021-10-15 00:23:20', '2021-10-15 00:23:20'),
(293, 10, 'Setting', 1, 1, 1, '2021-10-15 00:23:20', '2021-10-15 00:23:20'),
(294, 10, 'Cms', 1, 1, 1, '2021-10-15 00:23:20', '2021-10-15 00:23:20'),
(295, 10, 'Country', 1, 1, 1, '2021-10-15 00:23:21', '2021-10-15 00:23:21'),
(296, 10, 'University', 1, 1, 1, '2021-10-15 00:23:21', '2021-10-15 00:23:21'),
(297, 10, 'College', 1, 1, 1, '2021-10-15 00:23:21', '2021-10-15 00:23:21'),
(298, 10, 'School', 1, 1, 1, '2021-10-15 00:23:21', '2021-10-15 00:23:21'),
(299, 10, 'Subject', 1, 1, 1, '2021-10-15 00:23:21', '2021-10-15 00:23:21'),
(300, 10, 'Testimonial', 1, 1, 1, '2021-10-15 00:23:21', '2021-10-15 00:23:21'),
(301, 10, 'Slider', 1, 1, 1, '2021-10-15 00:23:21', '2021-10-15 00:23:21'),
(302, 12, 'Subadmin', 1, 1, 1, '2021-10-15 00:24:47', '2021-10-15 00:24:47'),
(303, 12, 'Users', 1, 1, 1, '2021-10-15 00:24:47', '2021-10-15 00:24:47'),
(304, 12, 'Email', 1, 1, 1, '2021-10-15 00:24:47', '2021-10-15 00:24:47'),
(305, 12, 'ProfessorProfile', 1, 1, 1, '2021-10-15 00:24:47', '2021-10-15 00:24:47'),
(306, 12, 'HighSchoolProfile', 1, 1, 1, '2021-10-15 00:24:47', '2021-10-15 00:24:47'),
(307, 12, 'Banner', 1, 1, 1, '2021-10-15 00:24:47', '2021-10-15 00:24:47'),
(308, 12, 'Reviews', 1, 1, 1, '2021-10-15 00:24:47', '2021-10-15 00:24:47'),
(309, 12, 'Stories', 1, 1, 1, '2021-10-15 00:24:47', '2021-10-15 00:24:47'),
(310, 12, 'ReportStatics', 1, 1, 1, '2021-10-15 00:24:47', '2021-10-15 00:24:47'),
(311, 12, 'ChatRoom', 1, 1, 1, '2021-10-15 00:24:47', '2021-10-15 00:24:47'),
(312, 12, 'Setting', 1, 1, 1, '2021-10-15 00:24:47', '2021-10-15 00:24:47'),
(313, 12, 'Cms', 1, 1, 1, '2021-10-15 00:24:47', '2021-10-15 00:24:47'),
(314, 12, 'Country', 1, 1, 1, '2021-10-15 00:24:47', '2021-10-15 00:24:47'),
(315, 12, 'University', 1, 1, 1, '2021-10-15 00:24:47', '2021-10-15 00:24:47'),
(316, 12, 'College', 1, 1, 1, '2021-10-15 00:24:47', '2021-10-15 00:24:47'),
(317, 12, 'School', 1, 1, 1, '2021-10-15 00:24:47', '2021-10-15 00:24:47'),
(318, 12, 'Subject', 1, 1, 1, '2021-10-15 00:24:47', '2021-10-15 00:24:47'),
(319, 12, 'Testimonial', 1, 1, 1, '2021-10-15 00:24:47', '2021-10-15 00:24:47'),
(320, 12, 'Slider', 1, 1, 1, '2021-10-15 00:24:47', '2021-10-15 00:24:47'),
(321, 13, 'Subadmin', 1, 1, 1, '2022-05-30 14:11:40', '2022-05-30 14:11:40'),
(322, 13, 'Users', 1, 1, 1, '2022-05-30 14:11:41', '2022-05-30 14:11:41'),
(323, 13, 'Email', 1, 1, 1, '2022-05-30 14:11:41', '2022-05-30 14:11:41'),
(324, 13, 'AbuseWord', 1, 1, 1, '2022-05-30 14:11:41', '2022-05-30 14:11:41'),
(325, 13, 'ProfessorProfile', 1, 1, 1, '2022-05-30 14:11:41', '2022-05-30 14:11:41'),
(326, 13, 'HighSchoolProfile', 1, 1, 1, '2022-05-30 14:11:41', '2022-05-30 14:11:41'),
(327, 13, 'Banner', 1, 1, 1, '2022-05-30 14:11:41', '2022-05-30 14:11:41'),
(328, 13, 'Reviews', 1, 1, 1, '2022-05-30 14:11:41', '2022-05-30 14:11:41'),
(329, 13, 'Stories', 1, 1, 1, '2022-05-30 14:11:41', '2022-05-30 14:11:41'),
(330, 13, 'ReportStatics', 1, 1, 1, '2022-05-30 14:11:41', '2022-05-30 14:11:41'),
(331, 13, 'ChatRoom', 1, 1, 1, '2022-05-30 14:11:41', '2022-05-30 14:11:41'),
(332, 13, 'Setting', 1, 1, 1, '2022-05-30 14:11:41', '2022-05-30 14:11:41'),
(333, 13, 'Cms', 1, 1, 1, '2022-05-30 14:11:41', '2022-05-30 14:11:41'),
(334, 13, 'Country', 1, 1, 1, '2022-05-30 14:11:41', '2022-05-30 14:11:41'),
(335, 13, 'University', 1, 1, 1, '2022-05-30 14:11:41', '2022-05-30 14:11:41'),
(336, 13, 'College', 1, 1, 1, '2022-05-30 14:11:41', '2022-05-30 14:11:41'),
(337, 13, 'School', 1, 1, 1, '2022-05-30 14:11:41', '2022-05-30 14:11:41'),
(338, 13, 'Subject', 1, 1, 1, '2022-05-30 14:11:41', '2022-05-30 14:11:41'),
(339, 13, 'Testimonial', 1, 1, 1, '2022-05-30 14:11:41', '2022-05-30 14:11:41'),
(340, 13, 'Slider', 1, 1, 1, '2022-05-30 14:11:41', '2022-05-30 14:11:41'),
(341, 13, 'Faqs', 1, 1, 1, '2022-05-30 14:11:41', '2022-05-30 14:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `professor_profiles`
--

CREATE TABLE `professor_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `university_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 0,
  `user_added` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `college_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `professor_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_profile` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `professor_profiles`
--

INSERT INTO `professor_profiles` (`id`, `name`, `profile`, `university_code`, `country`, `status`, `is_delete`, `is_active`, `user_added`, `created_at`, `updated_at`, `college_code`, `professor_code`, `show_profile`) VALUES
(23404, 'نايفه عايش فلجي العنزي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011961', 0),
(23405, 'نبيله هاني فؤاد ابو غزاله', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011962', 0),
(23406, 'نجاة يحيى بابكر زكريا', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011963', 0),
(23407, 'نجاح قبلان حمد القبلان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011964', 0),
(23408, 'نجاح محمد فهد السبيعي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011965', 0),
(23409, 'نجلاء إبراهيم صالح القبيسي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011966', 0),
(23410, 'نجلاء ابراهيم حمود الشثري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011967', 0),
(23411, 'نجلاء ابراهيم زيد الهليل', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011968', 0),
(23412, 'نجلاء ابراهيم محمد حمدان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011969', 0),
(23413, 'نجلاء حمد علي المبارك', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011970', 0),
(23414, 'نجلاء سعد علي المسعود', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011971', 0),
(23415, 'نجلاء سليمان عبدالله التويجري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011972', 0),
(23416, 'نجلاء صالح عبدالله بن حميد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011973', 0),
(23417, 'نجلاء عبدالرحمن علي الشايع', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011974', 0),
(23418, 'نجلاء عبدالعزيز عبدالرحمن القاضي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011975', 0),
(23419, 'نجلاء عبدالعزيز محمد الشاوي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011976', 0),
(23420, 'نجلاء عبدالعزيز منصور آل منصور', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011977', 0),
(23421, 'نجلاء عبداللطيف إبراهيم السلامة', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011978', 0),
(23422, 'نجلاء عبدالله احمد العبدالكريم', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011979', 0),
(23423, 'نجلاء عبدالله سليمان التويجري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011980', 0),
(23424, 'نجلاء عبدالله عبدالرحمن الشايع', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011981', 0),
(23425, 'نجلاء عبدالله عبدالعزيز البريدي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011982', 0),
(23426, 'نجلاء فتحي عفيفي يوسف', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011983', 0),
(23427, 'نجلاء فتحي محمد سويلم', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011984', 0),
(23428, 'نجلاء محسن قاري ذاكر', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011985', 0),
(23429, 'نجلاء محمد عاشق قرملة', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011986', 0),
(23430, 'نجلاء محمد عبدالرحمن الكنهل', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011987', 0),
(23431, 'نجلاء مستور صالح الجعيد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011988', 0),
(23432, 'نجلاء مطلق صالح العتيبي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:22', '2022-05-23 12:58:22', 'KW0301', 'KW03011989', 0),
(23433, 'نجلاء ناصر خرصان العجمي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03011990', 0),
(23434, 'نجلاء يوسف حسن العمري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03011991', 0),
(23435, 'نجمه ناصر محمد الثبيتي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03011992', 0),
(23436, 'نجوان محمد عبدالسميع محمد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03011993', 0),
(23437, 'نجود زايد حسن العمري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03011994', 0),
(23438, 'نجوى جميل رزق غالي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03011995', 0),
(23439, 'نجوى عبدالرشيد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03011996', 0),
(23440, 'نجوى محمد محمد اللافي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03011997', 0),
(23441, 'نحاء مقعد مفرح العتيبي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03011998', 0),
(23442, 'ندا حمد عبدالعزيز الجرباء', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03011999', 0),
(23443, 'نداء ابراهيم عثمان اليحيا', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012000', 0),
(23444, 'نداء عبدالرحمن عبدالعزيز الجلال', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012001', 0),
(23445, 'ندى ابراهيم عبدالعزيز الربدي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012002', 0),
(23446, 'ندى ابراهيم عبدالكريم القويفلي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012003', 0),
(23447, 'ندى ابراهيم عبدالله الصقيران', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012004', 0),
(23448, 'ندى ابراهيم محمد الجويزع', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012005', 0),
(23449, 'ندى ابراهيم محمد الزبن', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012006', 0),
(23450, 'ندى ابراهيم مهنا العزاز', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012007', 0),
(23451, 'ندى احمد حنش الشهري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012008', 0),
(23452, 'ندى احمد محمد نور عيسى', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012009', 0),
(23453, 'ندى الخليل الصديق بنعجيبه', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012010', 0),
(23454, 'ندى حمد سعود السياري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012011', 0),
(23455, 'ندى خالد محمد الحربي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012012', 0),
(23456, 'ندى سعد عبدالله الناصر', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012013', 0),
(23457, 'ندى سعيد سويلم الجهني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012014', 0),
(23458, 'ندى سليمان عبدالله القاضي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012015', 0),
(23459, 'ندى صالح محمد الركف', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012016', 0),
(23460, 'ندى عبدالرحمن عبدالله الطويل', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012017', 0),
(23461, 'ندى عبدالرحمن محمد الفريان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012018', 0),
(23462, 'ندى عبدالعزيز صالح الراجحي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012019', 0),
(23463, 'ندى عبدالعزيز محمد الموسى', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012020', 0),
(23464, 'ندى عبدالله سليمان الحبيب', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012021', 0),
(23465, 'ندى عبدالله محمد الصالح', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012022', 0),
(23466, 'ندى عبدالله محمد بن سنان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012023', 0),
(23467, 'ندى عصام صالح باسودان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012024', 0),
(23468, 'ندى علي موسى حكمي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012025', 0),
(23469, 'ندى عويض سعد الجعيد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012026', 0),
(23470, 'ندى قاسم عثمان القصبي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012027', 0),
(23471, 'ندى محمد عبدالله الرميح', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012028', 0),
(23472, 'ندى محمد عبدالله العمري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012029', 0),
(23473, 'ندى محمد عبدالله العمري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012030', 0),
(23474, 'ندى مشعل حامد الثبيتي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012031', 0),
(23475, 'ندى نمشان ثايب المعاوي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012032', 0),
(23476, 'ندى نهاد حسين حسونه', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012033', 0),
(23477, 'نديم احمد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012034', 0),
(23478, 'نرمين ابراهيم حلمي ابراهيم', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012035', 0),
(23479, 'نزهه محمود صادق صوان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012036', 0),
(23480, 'نسرين ثاني عقلا الحميد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012037', 0),
(23481, 'نسرين حمد عبدالله الخويطر', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012038', 0),
(23482, 'نسرين عبدالمنعم عبدالستار ابوزيد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012039', 0),
(23483, 'نسرين محمد احمد تمام', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012040', 0),
(23484, 'نسرين ناصر بخيت العواجي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012041', 0),
(23485, 'نسمه احمد زكريا عليان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012042', 0),
(23486, 'نسيبة عبدالعزيز محمد الراشد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012043', 0),
(23487, 'نشوة جادالله محمد عطاالله', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012044', 0),
(23488, 'دكتور/ نشوى علي ابراهيم', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:23', '2022-05-23 12:58:23', 'KW0301', 'KW03012045', 0),
(23489, 'نصرة عبدالله سعد بن عارم', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012046', 0),
(23490, 'نعيمه محمد ابراهيم الغسلان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012047', 0),
(23491, 'نمشه عبدالله مطلق الطواله', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012048', 0),
(23492, 'نهال عبداللطيف محمد علام', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012049', 0),
(23493, 'نهلة خالد محمد بن خنين', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012050', 0),
(23494, 'نهله محمد الجنيدي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012051', 0),
(23495, 'نهله محمد خلف الحربي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012052', 0),
(23496, 'نهله محمد عوض باوزير', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012053', 0),
(23497, 'نهى صالح عبدالله الحديثي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012054', 0),
(23498, 'نهى عبدالعزيز راشد العيسى', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012055', 0),
(23499, 'نهى عثمان عبدالله العواد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012056', 0),
(23500, 'نهى فكري محمود احمد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012057', 0),
(23501, 'نهى فهيد فهد الحربي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012058', 0),
(23502, 'نهى محمد سعد الجاسر', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012059', 0),
(23503, 'نهى محمد عبدالقادر الملا', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012060', 0),
(23504, 'نهى محمد عبدالله الباشا', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012061', 0),
(23505, 'نهى ناصر محمد الدوسري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012062', 0),
(23506, 'نهى هاشم عبدالمطلب الشريف', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012063', 0),
(23507, 'نوال ابراهيم محمد الحلوه', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012064', 0),
(23508, 'نوال ابراهيم ناصر الحوشاني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012065', 0),
(23509, 'نوال احمد صالح الصالح', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012066', 0),
(23510, 'نوال احمد محمد الجبير', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012067', 0),
(23511, 'نوال حسين بلال صديق', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012068', 0),
(23512, 'نوال خلف مطر الميموني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012069', 0),
(23513, 'نوال سالم سعيد العمري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012070', 0),
(23514, 'نوال سعود صالح الفرهود', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012071', 0),
(23515, 'نوال سليمان صالح الثنيان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012072', 0),
(23516, 'نوال عبدالعزيز عبدالله العيد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012073', 0),
(23517, 'نوال عبدالعزيز محمد الربيع', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012074', 0),
(23518, 'نوال عبدالله آدم عجيبان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012075', 0),
(23519, 'نوال عبدالمحسن إبراهيم العيبان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012076', 0),
(23520, 'نوال علي ابراهيم الاصقه', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012077', 0),
(23521, 'نوال علي سليمان الفلاج', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012078', 0),
(23522, 'نوال علي ماضي الربيعان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012079', 0),
(23523, 'نوال محمد ابراهيم الرشيد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012080', 0),
(23524, 'نوال محمد صالح المنيف', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012081', 0),
(23525, 'نوال محمد عبدالرحمن بن راجح', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012082', 0),
(23526, 'نوال ناصر محمد السويلم', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012083', 0),
(23527, 'نورا احمد سعد العجروش', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012084', 0),
(23528, 'نورا احمد علي البيز', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012085', 0),
(23529, 'نورا عبدالسلام مصطفى القديمي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012086', 0),
(23530, 'نورا عبدالله سعد الداوود', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012087', 0),
(23531, 'نورا مصطفى محمد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012088', 0),
(23532, 'نوران حسن علي المغربي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012089', 0),
(23533, 'نورة بشير صنهات العتيبي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012090', 0),
(23534, 'نورة بلاهيد جبرين المطيري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012091', 0),
(23535, 'نورة حمد حماد العوفان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012092', 0),
(23536, 'نورة حمد عبدالله الشبيلي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012093', 0),
(23537, 'نورة حمد عبدالله الشعلان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012094', 0),
(23538, 'نورة حمس مشعان العتيبي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012095', 0),
(23539, 'نورة صالح محمد السديس', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012096', 0),
(23540, 'نورة عبدالرحمن حمد القضيب', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012097', 0),
(23541, 'نورة عبدالله سعد المقبل', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012098', 0),
(23542, 'نورة عبدالله عبدالعزيز العوهلي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012099', 0),
(23543, 'نورة عبدالله عبدالعزيز الورثان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012100', 0),
(23544, 'نورة عبدالله متعب الشهري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012101', 0),
(23545, 'نورة عبدالله محمد الحساوي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012102', 0),
(23546, 'نورة عثمان محمد الشغدلي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:24', '2022-05-23 12:58:24', 'KW0301', 'KW03012103', 0),
(23547, 'نورة عصام عبدالعزيز الشعيل', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012104', 0),
(23548, 'نورة علي عوض الشاطري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012105', 0),
(23549, 'نورة علي محمد الشيحة', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012106', 0),
(23550, 'نورة فهد ابراهيم العيد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012107', 0),
(23551, 'نورة فهد صالح العتيبي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012108', 0),
(23552, 'نورة مبارك شبيب بن فرحان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012109', 0),
(23553, 'نورة محسن سعد التركي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012110', 0),
(23554, 'نورة محمد حسين القحيز', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012111', 0),
(23555, 'نورة محمد صالح الجاسر', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012112', 0),
(23556, 'نورة محمد عبدالله البشري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012113', 0),
(23557, 'نورة محمد عبدالله الخفرة', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012114', 0),
(23558, 'نورة محمد عبدالله الهدب', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012115', 0),
(23559, 'نورة مسعود صالح بالحارث', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012116', 0),
(23560, 'نورة مفلح عياط الرويلي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012117', 0),
(23561, 'نوره ابراهيم حمد الحربي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012118', 0),
(23562, 'نوره ابراهيم عبدالعزيز ابوحيمد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012119', 0),
(23563, 'نوره ابراهيم عبدالكريم الجدعان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012120', 0),
(23564, 'نوره ابراهيم عبدالله العثمان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012121', 0),
(23565, 'نوره احمد محمد السيف', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012122', 0),
(23566, 'نوره جاسر محمد الجاسر', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012123', 0),
(23567, 'نوره جايز سعود الشريف', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012124', 0),
(23568, 'نوره حجاج ثويني الثنيان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012125', 0),
(23569, 'نوره حمد عبدالله الهندي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012126', 0),
(23570, 'نوره خالد عبدالله الفواز', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012127', 0),
(23571, 'نوره سالم عمر الصيعري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012128', 0),
(23572, 'نوره سلطان براهيم السلامه', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012129', 0),
(23573, 'نوره سليمان محمد الخضيري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012130', 0),
(23574, 'نوره صالح سليمان النصيان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012131', 0),
(23575, 'نوره صالح عبدالله بن غشيان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012132', 0),
(23576, 'نوره صالح محمد الغامدي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012133', 0),
(23577, 'نوره عبدالرحمن حميد الحربي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012134', 0),
(23578, 'نوره عبدالرحمن عبدالعزيز الحصان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012135', 0),
(23579, 'نوره عبدالرحمن عبدالله المطرفي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012136', 0),
(23580, 'نوره عبدالعزيز فهد بن حمد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012137', 0),
(23581, 'نوره عبدالله رضاء المدني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012138', 0),
(23582, 'نوره عبدالله سليمان الحماد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012139', 0),
(23583, 'نوره عبدالله صالح العريني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012140', 0),
(23584, 'نوره عبدالله عبدالعزيز المعيذر', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012141', 0),
(23585, 'نوره عبدالله فارس الفارس', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012142', 0),
(23586, 'نوره عبدالوهاب سليمان ابوهلال', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012143', 0),
(23587, 'نوره علي حسين الشريف', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012144', 0),
(23588, 'نوره علي سعد العميره', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012145', 0),
(23589, 'نوره علي صالح السيار', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012146', 0),
(23590, 'نوره علي محمد البشري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012147', 0),
(23591, 'نوره علي منصور الشمراني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012148', 0),
(23592, 'نوره عياد ناصر الحربي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012149', 0),
(23593, 'نوره فهد عبدالله الشلهوب', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012150', 0),
(23594, 'نوره فهد مطلق القحطاني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012151', 0),
(23595, 'نوره محمد ابراهيم الزامل', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012152', 0),
(23596, 'نوره محمد صالح البليهد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012153', 0),
(23597, 'نوره محمد عاشق بن قرمله', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012154', 0),
(23598, 'نوره محمد عبدالله القباع', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012155', 0),
(23599, 'نوره محمد مسفر الوادعي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012156', 0),
(23600, 'نوره مرشد محمد الدليمي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012157', 0),
(23601, 'نوره مشوح حوال المهيدلي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012158', 0),
(23602, 'نوره ناصر حسين العلياني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012159', 0),
(23603, 'نوره ناصر عائض النهاري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012160', 0),
(23604, 'نوره ناصر عبدالله الهزاني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012161', 0),
(23605, 'نوره وديد عطيه العنزي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012162', 0),
(23606, 'نورول حليمة حليمة اسماعيل', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012163', 0),
(23607, 'نوري زهرة سهيل احمد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012164', 0),
(23608, 'نوريها بنتي بنتي هاليد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012165', 0),
(23609, 'نوف اركان ابراهيم الداود', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012166', 0),
(23610, 'نوف حسن حامد المالكي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:25', '2022-05-23 12:58:25', 'KW0301', 'KW03012167', 0),
(23611, 'نوف حمد عبدالعزيز الخميس', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012168', 0),
(23612, 'نوف خالد محمد البلخي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012169', 0),
(23613, 'نوف سعد ناصر بن درعان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012170', 0),
(23614, 'نوف سعود محمد النفيسه', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012171', 0),
(23615, 'نوف سليمان صالح الحناكي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012172', 0),
(23616, 'نوف صالح محمد البطاطي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012173', 0),
(23617, 'نوف طواله عبدالعزيز الطواله', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012174', 0),
(23618, 'نوف عبدالعزيز ابراهيم الفايز', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012175', 0),
(23619, 'نوف عبدالله حسن مستور الزهراني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012176', 0),
(23620, 'نوف عبدالله سليمان المجلي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012177', 0),
(23621, 'نوف عبدالله عمار الرقيباء', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012178', 0),
(23622, 'نوف عبدالمحسن عبدالله بن هداب', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012179', 0),
(23623, 'نوف عبدالمنعم اسماعيل', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012180', 0),
(23624, 'نوف عبدالوهاب دحيم الدوسري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012181', 0),
(23625, 'نوف عبيد عبدالاله الثبيتي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012182', 0),
(23626, 'نوف علوي مشاري العتيبي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012183', 0),
(23627, 'نوف مترك فهد ال بريك', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012184', 0),
(23628, 'نوف محمد صلف العتيبي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012185', 0),
(23629, 'نوف محمد هضيباني الدوسري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012186', 0),
(23630, 'نوف مساعد ابراهيم العيفان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012187', 0),
(23631, 'نوف معشق نوار  الغامدي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012188', 0),
(23632, 'نوف منير سالم الدوسري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012189', 0),
(23633, 'نوف موسى عبدالله الموسى', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012190', 0),
(23634, 'نوف ناصر خرصان العجمي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012191', 0),
(23635, 'نوف ناصر سليمان الشميسي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012192', 0),
(23636, 'نيتا ريكا تياقاراجين سيفاكومار', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012193', 0),
(23637, 'نيسيا ساسي داران ساسي داران فيندوكومار', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012194', 0),
(23638, 'نيفين سعيد مصطفى عرفان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012195', 0),
(23639, 'نيفين عبدالموجود شريف عبده', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012196', 0),
(23640, 'نيفين محمود احمد جابر', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012197', 0),
(23641, 'نيكول ماري ماري كارد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012198', 0),
(23642, 'هاجر سليمان عتيق الجهني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012199', 0),
(23643, 'هالة جمال علي الشهراني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012200', 0),
(23644, 'هالة عبداللطيف محمد السيد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012201', 0),
(23645, 'هاله حسين محمد طه', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012202', 0),
(23646, 'هاله صالح المناعي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012203', 0),
(23647, 'هاله صالح سليمان الوهيبي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012204', 0),
(23648, 'هاله صلاح احمد العرفج', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012205', 0),
(23649, 'هاله عبدالكريم البرجي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012206', 0),
(23650, 'هاله فريد مصطفى', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012207', 0),
(23651, 'هاله ناصر المرشدي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012208', 0),
(23652, 'هبة الله احمد شوقي الصباغ', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012209', 0),
(23653, 'هبة الله حسين محمد محمود', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012210', 0),
(23654, 'هبه جابر حسنين', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012211', 0),
(23655, 'هبه حسين احمد بخش', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012212', 0),
(23656, 'هبه شوقي محمد عبدالمطلب', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012213', 0),
(23657, 'هبه عادل حامد اللهيبي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012214', 0),
(23658, 'هبه عبدالرحمن صالح الخليفه', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012215', 0),
(23659, 'هبه عبدالرحيم محمد بحري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012216', 0),
(23660, 'هبه علي ابراهيم العمري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012217', 0),
(23661, 'هبه فيصل عبدالله قطان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012218', 0),
(23662, 'هتاف عبدالرحمن ابراهيم المهيني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012219', 0),
(23663, 'هدانيا مزيد ابراهيم المزيد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012220', 0),
(23664, 'هدايه فيصل حدجان العتيبي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:26', '2022-05-23 12:58:26', 'KW0301', 'KW03012221', 0),
(23665, 'هدى ابراهيم سعيد المحمد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012222', 0),
(23666, 'هدى ابراهيم عبدالله الناصر', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012223', 0),
(23667, 'هدى احمد احمد يونس', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012224', 0),
(23668, 'هدى احمد سليمان العامر', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012225', 0),
(23669, 'هدى احمد عبدالحافظ', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012226', 0),
(23670, 'هدى احمد عبدالمحسن الخيال', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012227', 0),
(23671, 'هدى حسين الوسيله الطيب', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012228', 0),
(23672, 'هدى رجب رزق محمد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012229', 0),
(23673, 'هدى سالم ابراهيم السالم', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012230', 0),
(23674, 'هدى سليمان سعد بن سراء', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012231', 0),
(23675, 'هدى صالح عبدالله المزروع', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012232', 0),
(23676, 'هدى صالح منصور العواجي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012233', 0),
(23677, 'هدى عبدالحميد عبدالقوي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012234', 0),
(23678, 'هدى عبدالرحمن إبراهيم البريه', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012235', 0),
(23679, 'هدى عبدالرحمن ابراهيم النبهان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012236', 0),
(23680, 'هدى عبدالرحمن ادريس الدريس', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012237', 0),
(23681, 'هدى عبدالرحمن سعد العيد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012238', 0),
(23682, 'هدى عبدالرحمن علي آل عيسى', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012239', 0),
(23683, 'هدى عبدالعزيز سعد العسكر', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012240', 0),
(23684, 'هدى عبدالعزيز عبدالله المقرن', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012241', 0),
(23685, 'هدى عبدالعزيز علي الدغيري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012242', 0),
(23686, 'هدى عبدالعزيز محمد الموسى', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012243', 0),
(23687, 'هدى عبدالعزيز محمد جبلاوي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012244', 0),
(23688, 'هدى عبدالله حمود الفائز', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012245', 0),
(23689, 'هدى عبدالله عبدالعزيز العبدالعالي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012246', 0),
(23690, 'هدى عبدالله عيسى العباد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012247', 0),
(23691, 'هدى عبدي احمد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012248', 0),
(23692, 'هدى عقيل عبدالله العقيل', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012249', 0),
(23693, 'هدى عمر محمد الوهيبي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012250', 0),
(23694, 'هدى غرسان مشبب الشهري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012251', 0),
(23695, 'هدى محمد ابراهيم ابو معطي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012252', 0),
(23696, 'هدى محمد حامد الشنبري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012253', 0),
(23697, 'هدى محمد عبداللطيف', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012254', 0),
(23698, 'هدى محمد عبدالله آل شائع', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012255', 0),
(23699, 'هدى محمد مجدي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012256', 0),
(23700, 'هدى مطلق رشيد العنزي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012257', 0),
(23701, 'هدى منصور محمد التركي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012258', 0),
(23702, 'هديل احمد حسن شيبه', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012259', 0),
(23703, 'هديل احمد محمد المقلاتي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012260', 0),
(23704, 'هديل خالد سليمان الجاسر', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012261', 0),
(23705, 'هديل رمضان احمد بخش', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012262', 0),
(23706, 'هديل سلمان عبدالرحمن المحياء', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012263', 0),
(23707, 'هديل سليمان محمد العامر', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012264', 0),
(23708, 'هديل عبدالرحمن محمد الخضير', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012265', 0),
(23709, 'هديل عبدالعزيز محمد العبدالمنعم', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012266', 0),
(23710, 'هديل عبدالله محمد الصليع', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012267', 0),
(23711, 'هديل فؤاد فهد الصالح', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012268', 0),
(23712, 'هديل فارس ضمن العتيبي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012269', 0),
(23713, 'هديل فهد صالح الحواسي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012270', 0),
(23714, 'هديل محمد عتيق الدوسري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:27', '2022-05-23 12:58:27', 'KW0301', 'KW03012271', 0),
(23715, 'هديل محمد علي الاهدل', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012272', 0),
(23716, 'هديل ناصر محمد الحازمي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012273', 0),
(23717, 'هزار سعد ذاعر الحربي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012274', 0),
(23718, 'هلا ابراهيم عبدالله النزهه', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012275', 0),
(23719, 'هلا عبدالله عبدالعزيز الزعاقي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012276', 0),
(23720, 'هلا عبدالله عبدالعزيز السلمان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012277', 0),
(23721, 'هلا محمد ابراهيم الحجاج', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012278', 0),
(23722, 'هلاله خلف رمضان العنزي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012279', 0),
(23723, 'هناء اسماعيل اسماعيل شلبي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012280', 0),
(23724, 'هناء خالد عبدالرحمن الحميد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012281', 0),
(23725, 'هناء سمير محمد سنبل', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012282', 0),
(23726, 'هناء عبدالعزيز حسين فلمبان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012283', 0),
(23727, 'هناء عبدالعزيز عبدالله المطوع', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012284', 0),
(23728, 'هناء عبدالعزيز عبدالله محمود', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012285', 0),
(23729, 'هناء محمد عبدالله ابوملحه', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012286', 0),
(23730, 'هناء معيض ناهي العنزي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012287', 0),
(23731, 'هنادي طلال عبدالله احمدوه', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012288', 0),
(23732, 'هنادي عبدالعزيز عبدالرحمن الحمدان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012289', 0),
(23733, 'هنادي عدنان محمد بخش', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012290', 0),
(23734, 'دكتور/ هنادي علي مبروك العسيري -', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012291', 0),
(23735, 'هنادي محمد عبدالرحمن الشقيران', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012292', 0),
(23736, 'هنادي محمد عبدالعزيز بن خميس', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012293', 0),
(23737, 'هند بدر عبدالعزيز العفيصان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012294', 0),
(23738, 'هند جابر عوض الثقفي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012295', 0),
(23739, 'هند جابر عوض الثقفي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012296', 0),
(23740, 'هند جاسر محمد الجاسر', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012297', 0),
(23741, 'هند جمال براهيم الثميري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012298', 0),
(23742, 'هند خالد محمد القحطاني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012299', 0),
(23743, 'هند سعد عبدالعزيز الراشد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012300', 0),
(23744, 'هند سعد محمد الناهض', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012301', 0),
(23745, 'هند سعود سعد العجاجي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012302', 0),
(23746, 'هند صالح عبدالله بن مزيعل', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012303', 0),
(23747, 'هند صلاح فهد أبا حسين', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012304', 0),
(23748, 'هند عائد بخيت الجهني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012305', 0),
(23749, 'هند عبدالحميد ابراهيم الفارس', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012306', 0),
(23750, 'هند عبدالرحمن ابراهيم العروان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012307', 0),
(23751, 'هند عبدالرحمن سليمان بن عبيد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012308', 0),
(23752, 'هند عبدالعزيز عبدالله الزعاقي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012309', 0),
(23753, 'هند عبدالعزيز عبدالله السليمان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012310', 0),
(23754, 'هند عبدالعزيز محمد التريكي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012311', 0),
(23755, 'هند عبدالله ابراهيم الزكري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012312', 0),
(23756, 'هند عبدالله حمد المحيمل', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012313', 0),
(23757, 'هند عبدالله علي ابوحيمد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012314', 0),
(23758, 'هند عبدالله محمد بن ثنيان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012315', 0),
(23759, 'هند علي عبدالله الغامدي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012316', 0),
(23760, 'هند علي عمر الزيلعي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012317', 0),
(23761, 'هند علي محمد الشعيبي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012318', 0),
(23762, 'هند علي محمد النفيسة', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012319', 0),
(23763, 'هند فايع محمد الشهراني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012320', 0),
(23764, 'هند محمد تركي التركي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012321', 0),
(23765, 'هند محمد راشد الهاجري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012322', 0);
INSERT INTO `professor_profiles` (`id`, `name`, `profile`, `university_code`, `country`, `status`, `is_delete`, `is_active`, `user_added`, `created_at`, `updated_at`, `college_code`, `professor_code`, `show_profile`) VALUES
(23766, 'هند محمد صاطي الحربي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:28', '2022-05-23 12:58:28', 'KW0301', 'KW03012323', 0),
(23767, 'هند محمد علي البلوي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012324', 0),
(23768, 'هند محمد علي الجارالله', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012325', 0),
(23769, 'هند محمد محمد قروان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012326', 0),
(23770, 'هند محمد وجيه محمود سالم', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012327', 0),
(23771, 'هند ناصر عبدالله المهوس', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012328', 0),
(23772, 'هند ناصر فهد القحطاني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012329', 0),
(23773, 'هند ناصر هزاع المطيري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012330', 0),
(23774, 'هنوف بندر عبداللطيف القشعم', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012331', 0),
(23775, 'هني محمد امين بكري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012332', 0),
(23776, 'هوازن زامل عبدالرحمن المقرن', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012333', 0),
(23777, 'هوازن علي محمد النفيسه', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012334', 0),
(23778, 'هويدا حسن سليمان ابوصالح', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012335', 0),
(23779, 'هويدا عبداللطيف عبدالحليم محمد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012336', 0),
(23780, 'هيا سعد ناصر السبيعي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012337', 0),
(23781, 'هيا عادل حامد اللهيبي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012338', 0),
(23782, 'هيا عبدالرحمن حمد المقري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012339', 0),
(23783, 'هيا عبدالرحمن فهد الثويني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012340', 0),
(23784, 'هيا عبدالرحمن محمد الجريبة', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012341', 0),
(23785, 'هيا عبدالعزيز ناصر المنيع', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012342', 0),
(23786, 'هيا عبدالله محمد العشيوي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012343', 0),
(23787, 'هيا فهد خالد العتيبي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012344', 0),
(23788, 'هيا محمد سليمان المزروع', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012345', 0),
(23789, 'هيا محمد صالح العقيل', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012346', 0),
(23790, 'هيا محمد عبدالعزيز العامر', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012347', 0),
(23791, 'هيا مقعد قعيد النفيعي العتيبي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012348', 0),
(23792, 'هيا ناصر محمد العتيبي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012349', 0),
(23793, 'هياء ابراهيم عبدالرحمن المنيف', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012350', 0),
(23794, 'هياء سعد عبدالله الدوسري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012351', 0),
(23795, 'هياء سعود عبدالعزيز السهلي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012352', 0),
(23796, 'هياء عبدالرحمن عبدالله الرشود', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012353', 0),
(23797, 'هياء عبدالعزيز علي اليوسف', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012354', 0),
(23798, 'هياء عبدالمحسن محمد البابطين', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012355', 0),
(23799, 'هياء عثمان عبدالله الشرفاء', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012356', 0),
(23800, 'هياء علي طه المزيد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012357', 0),
(23801, 'هياء علي محمد ال مغيره', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012358', 0),
(23802, 'هياء محمد ابراهيم المحارب', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012359', 0),
(23803, 'هياء محمد ابراهيم المحارب', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012360', 0),
(23804, 'هياء مسفر سعد الشهراني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012361', 0),
(23805, 'هيام احمد عبدالرحيم محمد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012362', 0),
(23806, 'هيام حسين ابراهيم عامر', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012363', 0),
(23807, 'هيام عبدالله عبدالعزيز الحركان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012364', 0),
(23808, 'هيام علي عبدالله الرشيد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012365', 0),
(23809, 'هيام محمد سالم العوفي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012366', 0),
(23810, 'هيام محمد عبدالله العمرو', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012367', 0),
(23811, 'هيفاء ابراهيم عبدالرحمن العودان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012368', 0),
(23812, 'هيفاء ابراهيم عبدالعزيز الربدي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012369', 0),
(23813, 'هيفاء احمد سعيد آل مفرح', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012370', 0),
(23814, 'هيفاء احمد عبدالعزيز السلمان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012371', 0),
(23815, 'هيفاء خالد حمد المالك', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012372', 0),
(23816, 'هيفاء خالد عبدالله الدوسري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012373', 0),
(23817, 'هيفاء راشد محمد الحمدان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012374', 0),
(23818, 'هيفاء عبدالرحمن صالح الحميدان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012375', 0),
(23819, 'هيفاء عبدالرحمن صالح الشلهوب', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012376', 0),
(23820, 'هيفاء عبدالعزيز موسى اليوسف', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012377', 0),
(23821, 'هيفاء عبدالله محمد العليان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012378', 0),
(23822, 'هيفاء عبدالوهاب سليمان الوهبي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012379', 0),
(23823, 'هيفاء عتيق عليان المصيول', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:29', '2022-05-23 12:58:29', 'KW0301', 'KW03012380', 0),
(23824, 'هيفاء علي براهيم الكثيري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012381', 0),
(23825, 'هيفاء علي عبدالقادر الزهراني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012382', 0),
(23826, 'هيفاء علي عبدالله القحطاني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012383', 0),
(23827, 'هيفاء عمران سليمان العمران', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012384', 0),
(23828, 'هيفاء عيسى عبدالرحمن الفصام', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012385', 0),
(23829, 'هيفاء فيحان عايش الحارثي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012386', 0),
(23830, 'هيلة عبدالله عثمان العساف', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012387', 0),
(23831, 'هيلة فهد محمد الهذال', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012388', 0),
(23832, 'هيله ضيف الله غانم اليوسف', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012389', 0),
(23833, 'هيله عبدالرحمن عبدالعزيز المنيع', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012390', 0),
(23834, 'هيله عبدالرحمن فراج السهلي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012391', 0),
(23835, 'هيله عبدالله حمد الخلف', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012392', 0),
(23836, 'هيله محمد عبدالعزيز المحيميد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012393', 0),
(23837, 'هيله محمد علي القصير', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012394', 0),
(23838, 'وئام صالح عبدالله البلطان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012395', 0),
(23839, 'وئام عبدالله محمد العقيل', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012396', 0),
(23840, 'وئام عوض سليمان الحجيلي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012397', 0),
(23841, 'وئام محمد عبدالرحمن العواد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012398', 0),
(23842, 'وايرين ليلا داتور', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012399', 0),
(23843, 'وجدان ابراهيم ابراهيم مقيل', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012400', 0),
(23844, 'وجدان ابراهيم محمد السريع', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012401', 0),
(23845, 'وجدان ابراهيم محمد العساف', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012402', 0),
(23846, 'وجدان عبدالرحمن حمد العوده', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012403', 0),
(23847, 'وجدان علي عبدالرحمن العجلان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012404', 0),
(23848, 'وجدان يوسف صالح الشميمري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012405', 0),
(23849, 'وداد سليم سالم البلوي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012406', 0),
(23850, 'وسام محمد عبدالخالق', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012407', 0),
(23851, 'وسمية محمد سليمان العشيوي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012408', 0),
(23852, 'وسميه عبدالرحمن مطلق العقل', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012409', 0),
(23853, 'وسميه معيض شائع القحطاني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012410', 0),
(23854, 'وضحاء زايد عبدالله الشهري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012411', 0),
(23855, 'وضحاء عبدالله سالم القريني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012412', 0),
(23856, 'وضحى حباب عبدالله العصيمي العتيبي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012413', 0),
(23857, 'وضحى سعد عبدالمحسن البهلال', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012414', 0),
(23858, 'وضحى علي محمد القحطاني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012415', 0),
(23859, 'وطفاء ناصر سعد الرشيد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012416', 0),
(23860, 'وعد حسن محمد علي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012417', 0),
(23861, 'وعد حسن محمد علي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012418', 0),
(23862, 'وعد ناصر هذال العاطفي القحطاني', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012419', 0),
(23863, 'وفاء ابراهيم محمد الشبرمي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012420', 0),
(23864, 'وفاء احمد صالح العلاوي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012421', 0),
(23865, 'وفاء بجاوي فاضل', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012422', 0),
(23866, 'وفاء حسن علي شافعي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012423', 0),
(23867, 'وفاء حمد عبدالرحمن المغيولي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012424', 0),
(23868, 'وفاء دهام ناصر المرخان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012425', 0),
(23869, 'وفاء رشيد الغردلو', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012426', 0),
(23870, 'وفاء سعد ابراهيم الكثيري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012427', 0),
(23871, 'وفاء سعد محمد الراشد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012428', 0),
(23872, 'وفاء سعيد علي الاحمري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012429', 0),
(23873, 'وفاء صالح علي الخريجي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012430', 0),
(23874, 'وفاء صالح علي الخريجي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012431', 0),
(23875, 'وفاء عبدالعزيز حمد الزامل', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012432', 0),
(23876, 'وفاء عبدالله ابراهيم المقرن', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012433', 0),
(23877, 'وفاء عبدالله علي الخليفة', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012434', 0),
(23878, 'وفاء علي ابراهيم العبودي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012435', 0),
(23879, 'وفاء فوزان إبراهيم الفوزان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012436', 0),
(23880, 'وفاء محمد طالع ال بهيش الشهري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:30', '2022-05-23 12:58:30', 'KW0301', 'KW03012437', 0),
(23881, 'وفاء ناصر محمد الرصيص', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:31', '2022-05-23 12:58:31', 'KW0301', 'KW03012438', 0),
(23882, 'وفاء يوسف سليمان اليوسف', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:31', '2022-05-23 12:58:31', 'KW0301', 'KW03012439', 0),
(23883, 'ولاء احمد محمود عامر', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:31', '2022-05-23 12:58:31', 'KW0301', 'KW03012440', 0),
(23884, 'ولاء احمد ناصر العنقري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:31', '2022-05-23 12:58:31', 'KW0301', 'KW03012441', 0),
(23885, 'ولاء جميل هاشم سندي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:31', '2022-05-23 12:58:31', 'KW0301', 'KW03012442', 0),
(23886, 'ولاء عبدالمنعم العشري', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:31', '2022-05-23 12:58:31', 'KW0301', 'KW03012443', 0),
(23887, 'ولاء عثمان يعقوب احمد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:31', '2022-05-23 12:58:31', 'KW0301', 'KW03012444', 0),
(23888, 'ولاء عزمي حسن سعيد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:31', '2022-05-23 12:58:31', 'KW0301', 'KW03012445', 0),
(23889, 'ولاء فهد عبدالعزيز بن سبيت', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:31', '2022-05-23 12:58:31', 'KW0301', 'KW03012446', 0),
(23890, 'ولاء فوزي جابر حمدان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:31', '2022-05-23 12:58:31', 'KW0301', 'KW03012447', 0),
(23891, 'ولاء محمد إبراهيم العايد', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:31', '2022-05-23 12:58:31', 'KW0301', 'KW03012448', 0),
(23892, 'ولاء محمود حلمي عبدالعزيز محي الدين', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:31', '2022-05-23 12:58:31', 'KW0301', 'KW03012449', 0),
(23893, 'ياسمين سالم عبدالرحمن البراك', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:31', '2022-05-23 12:58:31', 'KW0301', 'KW03012450', 0),
(23894, 'ياسمين صالح غنيم الغامدي', '', 'KW03', 'KW', 0, 0, 0, 0, '2022-05-23 12:58:31', '2022-06-14 13:04:08', 'KW0301', 'KW03012451', 0),
(23895, 'ياسمين عدنان عبدالله العباسي', '', 'KW03', 'KW', 0, 0, 0, 0, '2022-05-23 12:58:31', '2022-06-14 13:03:53', 'KW0301', 'KW03012452', 0),
(23896, 'ياسمين فؤاد خليفه مهران', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:31', '2022-06-14 13:07:54', 'KW0301', 'KW03012453', 0),
(23897, 'يزن محمد عبدالسلام علاوي', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:31', '2022-06-15 04:28:49', 'KW0301', 'KW03012454', 0),
(23898, 'يمنى خالد عبدالمنعم رمضان', '', 'KW03', 'KW', 1, 0, 0, 0, '2022-05-23 12:58:31', '2022-08-18 11:17:11', 'KW0301', 'KW03012455', 0),
(23899, 'Jamal Almujaim', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-05-26 06:25:10', '2022-06-14 13:22:35', 'KW0101', 'KW010105', 0),
(23900, 'deepanshu jain', '1655204819.jpg', 'KW01', 'KW', 1, 0, 0, 0, '2022-06-14 11:06:59', '2022-08-29 05:14:20', 'KW0101', 'KW010106', 1),
(23901, 'asdsd', NULL, 'IN02', 'IN', 1, 0, 0, 1, '2022-06-23 09:18:27', '2022-06-23 09:18:27', 'IN0201', 'IN020101', 0),
(23902, 'Mama Anisa', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-06-30 07:52:00', '2022-06-30 07:52:00', 'KW0101', 'KW010103', 0),
(23903, 'Aditya', NULL, 'IN02', 'IN', 1, 0, 0, 1, '2022-06-30 11:48:23', '2022-06-30 11:48:23', 'IN0201', 'IN020102', 0),
(23904, 'ali alkandari', NULL, 'SA01', 'SA', 1, 0, 0, 1, '2022-06-30 14:37:49', '2022-06-30 14:37:49', 'SA0101', 'SA010101', 0),
(23905, 'أديتيا', NULL, 'SA01', 'SA', 1, 0, 0, 1, '2022-07-01 06:23:09', '2022-07-01 06:23:09', 'SA0101', 'SA010102', 0),
(23906, 'aditya', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-07-01 06:34:31', '2022-07-01 06:34:31', 'KW0101', 'KW010104', 0),
(23907, 'adityaaaaa', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-07-01 11:07:39', '2022-07-01 11:07:39', 'KW0101', 'KW010105', 0),
(23908, 'deepanshu ali', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-07-01 18:31:47', '2022-07-01 18:31:47', 'KW0101', 'KW010106', 0),
(23909, 'deepanshu ahmed', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-07-01 18:32:47', '2022-07-01 18:32:47', 'KW0102', 'KW010201', 0),
(23910, 'deepanshu ali ahmed', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-07-01 18:33:45', '2022-07-01 18:33:45', 'KW0101', 'KW010107', 0),
(23911, 'jamal alali', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-07-01 18:36:55', '2022-07-01 18:36:55', 'KW0102', 'KW010202', 0),
(23912, 'cيييييثث', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-07-05 06:27:36', '2022-07-05 06:27:36', 'KW0101', 'KW010108', 0),
(23913, 'deepanshu op', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-07-05 06:42:25', '2022-07-05 06:42:25', 'KW0101', 'KW010109', 0),
(23914, 'الال ااااا اغاتا ععاعععجةتسصغنر', NULL, 'KW03', 'KW', 1, 0, 0, 1, '2022-07-05 06:43:13', '2022-07-05 06:43:13', 'KW0301', 'KW0301496', 0),
(23915, 'هندجمال', NULL, 'KW03', 'KW', 1, 0, 0, 1, '2022-07-05 12:47:30', '2022-07-05 12:47:30', 'KW0301', 'KW0301497', 0),
(23916, 'deepanshu aljain', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-07-05 12:48:55', '2022-07-05 12:48:55', 'KW0101', 'KW010110', 0),
(23917, 'علي بن راشد من حمري ال طعزه', NULL, 'SA01', 'SA', 1, 0, 0, 1, '2022-07-05 13:44:54', '2022-07-05 13:44:54', 'SA0101', 'SA010103', 0),
(23918, 'حامد خالد عبدالجليل سلطان صعصعه الهندال', NULL, 'SA01', 'SA', 1, 0, 0, 1, '2022-07-05 13:46:24', '2022-07-05 13:46:24', 'SA0101', 'SA010104', 0),
(23919, 'noo', NULL, 'IN02', 'IN', 1, 0, 0, 1, '2022-07-07 11:53:18', '2022-07-07 11:53:18', 'IN0201', 'IN020103', 0),
(23920, 'okk', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-07-07 13:12:16', '2022-07-07 13:12:16', 'KW0101', 'KW010111', 0),
(23921, 'adtya', NULL, 'IN02', 'IN', 1, 0, 0, 1, '2022-07-07 13:14:16', '2022-07-07 13:14:16', 'IN0201', 'IN020104', 0),
(23922, 'للبلبلل ددد ببيي دذدد', NULL, 'SA01', 'SA', 1, 0, 0, 1, '2022-07-08 05:45:00', '2022-07-08 05:45:00', 'SA0101', 'SA010105', 0),
(23923, 'ثثق يييي نكمع ضصثث صصق', NULL, 'KW03', 'KW', 1, 0, 0, 1, '2022-07-08 06:19:14', '2022-07-08 06:19:14', 'KW0301', 'KW0301498', 0),
(23924, 'زستسوسو ستستستس ستستستس ستستس', NULL, 'KW03', 'KW', 1, 0, 0, 1, '2022-07-08 09:03:16', '2022-07-08 09:03:16', 'KW0301', 'KW0301499', 0),
(23925, 'ali hasan alkandari', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-07-08 19:46:41', '2022-07-08 19:46:41', 'KW0101', 'KW010112', 0),
(23926, 'عضك تستسن تستش', NULL, 'KW03', 'KW', 1, 0, 0, 1, '2022-07-12 06:35:23', '2022-07-12 06:35:23', 'KW0301', 'KW0301500', 0),
(23927, 'ستستس', NULL, 'KW03', 'KW', 1, 0, 0, 1, '2022-07-12 10:01:33', '2022-07-12 10:01:33', 'KW0301', 'KW0301501', 0),
(23928, 'abhinav azad', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-07-12 10:03:48', '2022-07-12 10:03:48', 'KW0101', 'KW010113', 0),
(23929, 'علي حسن العامري', NULL, 'KW03', 'KW', 1, 0, 0, 1, '2022-07-12 11:20:31', '2022-07-12 11:20:31', 'KW0301', 'KW0301502', 0),
(23930, 'حصة بنت مبارك الدلماني', NULL, 'SA01', 'SA', 1, 0, 0, 1, '2022-07-12 12:55:34', '2022-07-12 12:55:34', 'SA0101', 'SA010106', 0),
(23931, 'Jamal Alrasheed', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-07-13 14:14:39', '2022-07-13 14:14:39', 'KW0102', 'KW010203', 0),
(23932, 'ayush', NULL, 'IN02', 'IN', 1, 0, 0, 1, '2022-07-21 10:02:19', '2022-07-21 10:02:19', 'IN0201', 'IN020105', 0),
(23933, 'ytgggggghhh', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-07-22 16:58:00', '2022-07-22 16:58:00', 'KW0101', 'KW010114', 0),
(23934, 'بوعلوه علاوي', NULL, 'KW03', 'KW', 1, 0, 0, 1, '2022-07-22 17:11:51', '2022-07-22 17:11:51', 'KW0301', 'KW0301503', 0),
(23935, 'ahhhhgggg', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-07-25 11:40:18', '2022-07-25 11:40:18', 'KW0101', 'KW010115', 0),
(23936, 'ali alhajri', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-07-26 04:19:05', '2022-07-26 04:19:05', 'KW0101', 'KW010116', 0),
(23937, 'ali alhamli', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-07-26 08:24:02', '2022-07-26 08:24:02', 'KW0102', 'KW010204', 0),
(23938, 'علي العلوان', NULL, 'SA01', 'SA', 1, 0, 0, 1, '2022-07-26 09:59:32', '2022-07-26 09:59:32', 'SA0101', 'SA010107', 0),
(23939, 'ali alomani', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-07-26 10:53:29', '2022-07-26 10:53:29', 'KW0102', 'KW010205', 0),
(23940, 'govind', NULL, 'IN02', 'IN', 1, 0, 0, 1, '2022-08-18 07:35:17', '2022-08-18 07:35:17', 'IN0201', 'IN020106', 0),
(23941, 'Ali add test', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-08-18 18:20:25', '2022-08-18 18:20:25', 'KW0101', 'KW010117', 0),
(23942, 'Ali add best', NULL, 'IN02', 'IN', 1, 0, 0, 1, '2022-08-19 07:03:22', '2022-08-19 07:03:22', 'IN0201', 'IN020107', 0),
(23943, 'Ali add test', NULL, 'IN02', 'IN', 1, 0, 0, 1, '2022-08-19 07:06:02', '2022-08-19 07:06:02', 'IN0201', 'IN020108', 0),
(23944, 'ashok', NULL, 'IN02', 'IN', 1, 0, 0, 1, '2022-08-19 11:18:31', '2022-08-19 11:18:31', 'IN0201', 'IN020109', 0),
(23945, 'fuyfgfgdfdf', NULL, 'IN02', 'IN', 1, 0, 0, 1, '2022-08-19 11:19:05', '2022-08-19 11:19:05', 'IN0201', 'IN020110', 0),
(23946, 'fgfgfdg', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-08-19 12:09:24', '2022-08-19 12:09:24', 'KW0101', 'KW010118', 0),
(23947, 'fghfgh', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-08-19 12:12:10', '2022-08-19 12:12:10', 'KW0101', 'KW010119', 0),
(23948, 'fgdfgdfg', NULL, 'IN01', 'IN', 1, 0, 0, 1, '2022-08-19 12:30:33', '2022-08-19 12:30:33', 'IN0102', 'IN010201', 0),
(23949, 'fdsfdsfdsf', NULL, 'KW02', 'KW', 1, 0, 0, 1, '2022-08-19 12:36:53', '2022-08-19 12:36:53', 'KW0201', 'KW020101', 0),
(23950, 'Shubham', NULL, 'IN02', 'IN', 1, 0, 0, 1, '2022-08-19 13:12:01', '2022-08-19 13:12:01', 'IN0201', 'IN020111', 0),
(23951, 'Ali hamdan', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-08-21 04:30:13', '2022-08-21 04:30:13', 'KW0101', 'KW010120', 0),
(23952, 'ashok', NULL, 'KW02', 'KW', 1, 0, 0, 1, '2022-08-22 05:23:38', '2022-08-22 05:23:38', 'KW0201', 'KW020102', 0),
(23953, 'New User', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-08-22 06:15:46', '2022-08-22 06:15:46', 'KW0101', 'KW010121', 0),
(23954, 'new user4', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-08-22 06:16:48', '2022-08-22 06:16:48', 'KW0102', 'KW010206', 0),
(23955, 'user8', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-08-22 06:18:19', '2022-08-22 06:18:19', 'KW0102', 'KW010207', 0),
(23956, 'dsfdsf', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-08-23 11:50:59', '2022-08-23 11:50:59', 'KW0101', 'KW010122', 0),
(23957, 'dsfdsfdsf', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-08-23 12:22:36', '2022-08-23 12:22:36', 'KW0101', 'KW010123', 0),
(23958, 'dsfdsfdsf', NULL, 'IN04', 'IN', 1, 0, 0, 1, '2022-08-23 12:33:55', '2022-08-23 12:33:55', 'IN0401', 'IN040101', 0),
(23959, 'Mith', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-08-24 13:20:52', '2022-08-24 13:20:52', 'KW0101', 'KW010124', 0),
(23960, 'asdasdd', NULL, 'IN02', 'IN', 1, 0, 0, 1, '2022-08-25 06:40:26', '2022-08-25 06:40:26', 'IN0201', 'IN020112', 0),
(23961, 'Aaaaaaa', NULL, 'IN02', 'IN', 1, 0, 0, 1, '2022-08-25 06:43:42', '2022-08-25 06:43:42', 'IN0201', 'IN020113', 0),
(23962, 'ashok', NULL, 'KW01', 'KW', 1, 0, 0, 1, '2022-08-29 04:50:28', '2022-08-29 04:50:28', 'KW0101', 'KW010125', 0);

-- --------------------------------------------------------

--
-- Table structure for table `professor_ratings`
--

CREATE TABLE `professor_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `professor_id` int(11) NOT NULL,
  `course_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `study_type` int(11) DEFAULT NULL,
  `rate_professor` int(11) DEFAULT NULL,
  `easyness_range` int(11) DEFAULT NULL,
  `repeat` int(11) DEFAULT NULL,
  `textbook` int(11) DEFAULT NULL,
  `attendance` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `message` longblob DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `likes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dislikes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selected_user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_abuse` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `professor_ratings`
--

INSERT INTO `professor_ratings` (`id`, `professor_id`, `course_code`, `study_type`, `rate_professor`, `easyness_range`, `repeat`, `textbook`, `attendance`, `grade`, `message`, `parent_id`, `is_delete`, `user_id`, `likes`, `dislikes`, `report`, `selected_user_id`, `created_at`, `updated_at`, `is_abuse`) VALUES
(1, 34, 'test course', 1, 8, 6, 2, 1, 1, 4, 0x414c544552205441424c45206070726f666573736f725f726174696e677360204348414e474520606d6573736167656020606d65737361676560204c4f4e47424c4f42204e554c4c2044454641554c54204e554c4c3b0d0a0d0a414c544552205441424c452060756e69766572736974795f726174696e677360204348414e474520606d6573736167656020606d65737361676560204c4f4e47424c4f42204e554c4c2044454641554c54204e554c4c3b0d0a0d0a414c544552205441424c452060746561636865725f726174696e677360204348414e474520606d6573736167656020606d65737361676560204c4f4e47424c4f42204e554c4c2044454641554c54204e554c4c3b0d0a0d0a414c544552205441424c452060756e69766572736974696573602020414444206069735f6163746976656020494e54204e4f54204e554c4c2044454641554c542027302720204146544552206069735f64656c657465603b0d0a0d0a414c544552205441424c452060746561636865725f70726f66696c6573602020414444206069735f6163746976656020494e54204e4f54204e554c4c2044454641554c542027302720204146544552206069735f64656c657465603b0d0a0d0a414c544552205441424c45206070726f666573736f725f70726f66696c6573602020414444206069735f6163746976656020494e54204e4f54204e554c4c2044454641554c542027302720204146544552206069735f64656c657465603b, 0, 1, '15', '15', '', NULL, NULL, '2021-08-16 01:41:34', '2022-05-30 12:15:35', 0),
(3, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6c6574207465737420697420616761696e, 2, 1, '15', NULL, NULL, NULL, '15', '2021-08-16 01:42:03', '2022-05-30 12:15:35', 0),
(4, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6161696e2074657374206974, 2, 1, '15', '', '79', '79', '15', '2021-08-16 01:42:12', '2022-05-30 12:15:35', 0),
(5, 54, 'INSCL0301', 1, 8, 5, 1, 2, 1, 1, 0x6120736473612064736164206173642073612064617320647361206461736420736168206b61736a6468206b6a61736864206861736420616b7364612073647361206461736b20646873616a206b647361206a6b6173686b6a206468617368206468617320646861736a20686473616a6b20646873616b6a206861736a6b206461736b6a682064, 0, 0, '36', '36,37', '', '37', NULL, '2021-08-17 07:36:22', '2021-10-18 10:26:49', 0),
(6, 54, '14111', 2, 1, 1, 2, 2, 2, 9, 0x61736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173640d0a0d0a0d0a617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173640d0a0d0a0d0a61736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173640d0a0d0a617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364, 0, 0, '37', '37,36', '', NULL, NULL, '2021-08-17 07:41:06', '2021-08-17 07:51:07', 0),
(10, 23, 'test my course', 1, 9, 4, 2, 2, 2, 5, 0x4b757761697420756e69094b757761697420756e69094b757761697420756e69094b757761697420756e69094b757761697420756e69094b757761697420756e69094b757761697420756e69094b757761697420756e69094b757761697420756e69094b757761697420756e69094b757761697420756e69094b757761697420756e69094b757761697420756e69094b757761697420756e69094b757761697420756e69094b757761697420756e69094b757761697420756e69094b757761697420756e69094b757761697420756e69094b757761697420756e69094b757761697420756e69094b757761697420756e69094b757761697420756e69094b757761697420756e69094b757761697420756e69, 0, 0, '22', '', '22', NULL, NULL, '2021-08-17 13:10:41', '2021-08-17 13:10:56', 0),
(11, 45, '123', 1, 7, 7, 2, 2, 1, 7, 0x54686973206973207570646174656420726576696577206f66207465682073616d65, 0, 0, '37', NULL, NULL, '71', NULL, '2021-08-18 06:07:51', '2021-09-25 10:41:50', 0),
(12, 23, 'dsfgdfg', 2, 5, 3, 2, 1, 2, 3, 0x436f6e747261727920746f20706f70756c61722062656c6965662c204c6f72656d20497073756d206973206e6f742073696d706c792072616e646f6d20746578742e2049742068617320726f6f747320696e2061207069656365206f6620636c6173736963616c204c6174696e206c6974657261747572652066726f6d2034352042432c206d616b696e67206974206f7665722032303030207965617273206f6c642e2052696368617264204d63436c696e746f636b2c2061204c6174696e2070726f666573736f722061742048616d7064656e2d5379646e657920436f6c6c65676520696e2056697267696e69612c206c6f6f6b6564207570206f6e65206f6620746865206d6f7265206f627363757265204c6174696e20776f7264732c20636f6e73656374657475722c2066726f6d2061204c6f72656d20497073756d20706173736167652c20616e6420676f696e67207468726f75676820746865206369746573206f662074686520776f726420696e20636c6173736963616c206c6974657261747572652c20646973636f76657265642074686520756e646f75627461626c6520736f757263652e204c6f72656d20497073756d20636f6d65732066726f6d2073656374696f6e7320312e31302e333220616e6420312e31302e3333206f66202264652046696e6962757320426f6e6f72756d206574204d616c6f72756d2220285468652045787472656d6573206f6620476f6f6420616e64204576696c292062792043696365726f2c207772697474656e20696e2034352042432e205468697320626f6f6b2069732061207472656174697365206f6e20746865207468656f7279206f66206574686963732c207665727920706f70756c617220647572696e67207468652052656e61697373616e63652e20546865206669727374206c696e65206f66204c6f72656d20497073756d2c20224c6f72656d20697073756d20646f6c6f722073697420616d65742e2e222c20636f6d65732066726f6d2061206c696e6520696e2073656374696f6e20312e31302e33322e, 0, 0, '11', '', '44', NULL, NULL, '2021-08-26 13:06:24', '2021-08-28 09:22:18', 0),
(13, 57, 'BUS101', 2, 10, 10, 1, 1, 1, 3, NULL, 0, 0, '39', NULL, NULL, NULL, NULL, '2021-08-26 17:23:19', '2021-08-26 17:23:19', 0),
(14, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x4164656c206973206120676f6f64206d616e, 13, 0, '39', '39', '', NULL, '0', '2021-08-26 17:24:27', '2021-08-26 17:24:29', 0),
(15, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x4164656c20697320676f6f64206472, 14, 0, '39', NULL, NULL, NULL, '39', '2021-08-26 17:24:40', '2021-08-26 17:24:40', 0),
(16, 59, 'MKT332', 1, 5, 3, 2, 2, 1, 7, NULL, 0, 0, '39', NULL, NULL, NULL, NULL, '2021-08-26 17:36:55', '2021-08-26 17:36:55', 0),
(18, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x47676761616161, 14, 0, '43', NULL, NULL, NULL, '39', '2021-08-26 18:04:37', '2021-08-26 18:04:37', 0),
(19, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x4161616161, 15, 0, '43', NULL, NULL, NULL, '39', '2021-08-26 18:04:50', '2021-08-26 18:04:50', 0),
(20, 23, 'deepanshu', 1, 5, 2, 2, 1, 1, 4, 0x4c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e20497420686173207375727669766564206e6f74206f6e6c7920666976652063656e7475726965732c2062757420616c736f20746865206c65617020696e746f20656c656374726f6e6963207479706573657474696e672c2072656d61696e696e6720657373656e7469616c6c7920756e6368616e6765642e2049742077617320706f70756c61726973656420696e207468652031393630732077697468207468652072656c65617365206f66204c657472617365742073686565747320636f6e7461696e696e67204c6f72656d20497073756d2070617373616765732c20616e64206d6f726520726563656e746c792077697468206465736b746f70207075626c697368696e6720736f667477617265206c696b6520416c64757320506167654d616b657220696e636c7564696e672076657273696f6e73206f66204c6f72656d20497073756d2e, 0, 0, '44', '', '', '21', NULL, '2021-08-28 09:18:47', '2021-08-31 13:59:51', 0),
(21, 51, 'ENG101', 2, 10, 2, 1, 1, 1, 6, 0x6f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374206f6e65206f66207468652062657374, 0, 0, '50', '67,38', '53', '53,38', NULL, '2021-08-29 09:37:14', '2021-09-29 12:39:20', 0),
(22, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x686f7720676f6f643f, 17, 0, '50', '', '63', NULL, '43', '2021-08-29 09:39:07', '2021-09-01 13:12:56', 0),
(23, 57, 'AR102', 1, 5, 5, 2, 1, 1, 5, NULL, 0, 0, '51', NULL, NULL, NULL, NULL, '2021-08-29 09:58:36', '2021-08-29 09:58:36', 0),
(24, 57, 'عربي', 1, 1, 1, 1, 1, 1, 9, NULL, 0, 0, '52', NULL, NULL, NULL, NULL, '2021-08-29 10:01:36', '2021-08-29 10:01:36', 0),
(25, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7768656e20796f7520746f6f6b2068697320636c617373, 21, 0, '53', '', '53', NULL, '0', '2021-08-29 10:59:12', '2021-08-29 11:01:21', 0),
(26, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x61726520736572696f757321, 21, 1, '53', '38', '', '38', '0', '2021-08-29 10:59:22', '2021-10-18 10:29:14', 0),
(27, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7265616c6c793f, 25, 0, '53', NULL, NULL, '39', '53', '2021-08-29 10:59:36', '2021-10-15 01:12:33', 0),
(28, 60, 'EN101', 1, 10, 10, 1, 1, 1, 3, NULL, 0, 0, '53', '', '38', '41', NULL, '2021-08-29 11:35:30', '2022-06-06 14:15:28', 0),
(29, 60, 'EN102', 2, 1, 1, 2, 1, 1, 7, '', 0, 0, '38', '120', '54,38,96,125', '101,41', NULL, '2021-08-29 11:37:52', '2022-06-06 14:15:40', 0),
(35, 61, 'Bus101', 1, 5, 5, 1, 1, 1, 2, NULL, 0, 0, '39', NULL, NULL, NULL, NULL, '2021-08-29 17:43:36', '2021-08-29 17:43:36', 0),
(37, 62, 'Bsss', 1, 4, 4, 2, 2, 2, 6, NULL, 0, 0, '39', NULL, NULL, NULL, NULL, '2021-08-29 17:47:53', '2021-08-29 17:47:53', 0),
(38, 62, 'en101', 1, 7, 7, 1, 1, 1, 6, NULL, 0, 0, '56', NULL, NULL, NULL, NULL, '2021-08-29 17:51:01', '2021-08-29 17:51:01', 0),
(39, 63, 'bus111', 1, 8, 9, 1, 1, 2, 3, 0xd8aad8b3d8acd98ad98420d8a7d984d985d8a7d8afd98720d8b3d987d98420d988d8a7d984d8a7d985d8aad8add8a7d986d8a7d8aa20d985d8a8d8a7d8b4d8b1d98720d985d8a7d8afd98720d985d981d98ad8afd98720202020202020202020202020202020202020202020d8a7d984d8a7d8a8d8aad8a8d9a8d9a4d9a7d9a4d8b220d9a4d9a8d9a9d9a4d9a9d9a8d9a4d9a820d9a8d9a4d8a7d982d8b9d8aad8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7d8a7, 0, 0, '57', '41', '', NULL, NULL, '2021-08-30 04:26:06', '2021-08-30 04:36:02', 0),
(41, 63, 'LB170', 2, 5, 3, 2, 1, 1, 4, 0x474f4f440d0a0d0a530d0a53530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a530d0a53530d0a530d0a530d0a530d0a530d0a4c4c4c4c4c4c4c4c4c4c4c4c4c4c4c4c4c534c534c534c534c534c534c534c534c534c534c534c534c534c534c534c534c534c534c534c534c534c534c534c534c534c534c534c534c534c534c534c534c534c534c534c534c534c534c4c53534c, 0, 0, '41', NULL, NULL, NULL, NULL, '2021-08-30 04:42:42', '2021-08-30 04:42:42', 0),
(42, 23, 'vtest', 1, 8, 4, 1, 2, 1, 3, 0x68656c6c6f2074686973206f6e65206973206120676f6f64, 0, 0, '58', '58,3,69', '', '3', NULL, '2021-09-01 05:21:22', '2021-09-28 06:05:52', 0),
(44, 58, 'ENG101', 1, 2, 10, 1, 1, 1, 3, 0x414c492049532054414952205348414c5741, 0, 0, '61', '', '61,62', '62', NULL, '2021-09-01 12:32:14', '2021-09-01 12:37:31', 0),
(46, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54455354494e47, 45, 0, '61', NULL, NULL, NULL, '61', '2021-09-01 12:32:52', '2021-09-01 12:32:52', 0),
(47, 58, 'عربي', 1, 10, 2, 2, 2, 2, 2, 0xd8add8afd98720d8b9d8acd98ad98ad98ad98ad98ad98ad98ad98ad98ad98ad98ad98ad98ad98ad98ad98ad8a8, 0, 1, '62', NULL, NULL, NULL, NULL, '2021-09-01 12:36:32', '2021-10-15 00:54:34', 0),
(48, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xd8a7d987d987d987, 45, 0, '62', NULL, NULL, NULL, '61', '2021-09-01 12:37:53', '2021-09-01 12:37:53', 0),
(49, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7265616c6c79206c6f6f6f6c, 26, 1, '38', NULL, NULL, NULL, '53', '2021-09-01 12:46:45', '2021-09-23 07:13:30', 0),
(50, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7361792077686161616174, 28, 0, '38', NULL, NULL, NULL, '0', '2021-09-01 12:49:43', '2021-09-01 12:49:43', 0),
(51, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x73617920776861616174, 33, 0, '38', NULL, NULL, NULL, '38', '2021-09-01 12:49:58', '2021-09-01 12:49:58', 0),
(52, 57, 'EN101', 1, 10, 10, 1, 2, 2, 9, 0xd8acd985d98ad98ad98ad98ad98420d8acd985d8a7d8a7d8a7d984, 0, 0, '63', NULL, NULL, NULL, NULL, '2021-09-01 13:01:12', '2021-09-01 13:01:12', 0),
(53, 56, 'EN101', 1, 1, 1, 2, 2, 2, 9, 0x545546462047524144455221, 0, 0, '63', NULL, NULL, NULL, NULL, '2021-09-01 13:41:26', '2021-09-01 13:41:26', 0),
(54, 57, 'Bus101', 1, 10, 10, 1, 1, 1, 2, 0x476f6f64204472, 0, 0, '64', NULL, NULL, '64', NULL, '2021-09-01 16:52:17', '2021-09-01 16:54:07', 0),
(55, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x48696969696969, 54, 0, '64', NULL, NULL, NULL, '0', '2021-09-01 16:53:30', '2021-09-01 16:53:30', 0),
(56, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x486969696969, 55, 0, '64', NULL, NULL, NULL, '64', '2021-09-01 16:53:36', '2021-09-01 16:53:36', 0),
(57, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x48696969696969, 56, 0, '64', NULL, NULL, NULL, '64', '2021-09-01 16:53:44', '2021-09-01 16:53:44', 0),
(58, 821, 'EN101', 1, 1, 5, 1, 2, 1, 6, 0x414c4f4f4f4f, 0, 0, '38', '38', '', NULL, NULL, '2021-09-01 17:58:14', '2021-09-01 17:58:25', 0),
(59, 51, 'En101', 1, 5, 5, 2, 1, 2, 4, 0x6e6f74207468617420676f6f646464, 0, 0, '38', '', '63,38', '39', NULL, '2021-09-04 16:24:52', '2022-05-04 11:41:15', 0),
(60, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x68616d6f6f6f64616161612068616d6f6f6f646161616161, 25, 0, '68', NULL, NULL, NULL, '53', '2021-09-10 15:33:23', '2021-09-10 15:33:23', 0),
(61, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6261646f6f6f6f6f6f6f6f6f72, 26, 1, '68', NULL, NULL, NULL, '53', '2021-09-10 15:34:11', '2021-09-23 07:13:30', 0),
(62, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x616c6920616c6920616c69, 21, 0, '68', NULL, NULL, NULL, '0', '2021-09-10 15:35:01', '2021-09-10 15:35:01', 0),
(63, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x3120616c6920616c69, 59, 0, '68', NULL, NULL, '39', '0', '2021-09-10 15:35:32', '2021-10-15 01:11:11', 0),
(64, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e676767, 59, 0, '38', NULL, NULL, '38,39', '0', '2021-09-10 15:37:06', '2021-10-15 01:12:16', 0),
(65, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e6767, 63, 0, '38', NULL, NULL, NULL, '68', '2021-09-10 15:37:45', '2021-09-10 15:37:45', 0),
(66, 45, '1100', 1, 9, 6, 1, 1, 1, 2, 0x54686973206973206120636f6d6d656e742066726f6d2074657374696e67207465616d20746f20636865636b2077686574686572207468652066756e6374696f6e616c69747920697320776f726b696e672066696e65206f72206e6f742e2e0d0a0d0a486f77657665722c206920616d20616c736f20636865636b696e6720746865206368617261637465722072656d61696e696e672066756e6361736473612064736164206173646120736473612064736164207361642061736461732064617364, 0, 0, '71', '', '71', NULL, NULL, '2021-09-25 06:50:34', '2021-09-25 07:08:57', 0),
(67, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x546869732069732061207265706c79206d6573736167652074657374696e672e, 66, 0, '71', '71', '', NULL, '0', '2021-09-25 06:56:17', '2021-09-25 07:08:57', 0),
(68, 52, '111000', 2, 5, 5, 1, 2, 2, 3, 0x612073646173206161207373616a6c6b20646a616a736c6a206c6b61736c6b646a20616a736b6c646a6c206b616a73646a20616c736b6a6b206a616b736a646b206c6a61736c6b6a646c206b6a61736c6b64206a6c616b736a64206b6c6a61736b6c64206a6b61736a646b206c6a616c6b736a64206c6b616a736b6c206a61736b6c20646a6b6c61736a206b6c61736c20646a6c61730d0a0d0a612073646b6c6a6173206c646a616c736b6a206b6c61736a6c6b20646a61736c6b206a646c6b61736a6c206b646a6173, 0, 0, '71', '71', '', '39', NULL, '2021-09-28 04:40:05', '2021-10-15 01:03:11', 0),
(69, 831, 'ENG101', 2, 10, 7, 1, 2, 1, 2, 0x4f6e65206f6620746865206265737421, 0, 0, '72', NULL, NULL, NULL, NULL, '2021-09-28 10:33:13', '2021-09-28 10:33:13', 0),
(70, 838, '😍😍😍', 1, 10, 10, 1, 1, 1, 2, 0xf09f9281f09f8fbbf09f988df09f988df09f8cb9f09f988df09f988df09f988df09f9281f09f8fbb4868686868, 0, 0, '72', '', '72', NULL, NULL, '2021-09-28 10:41:44', '2021-10-18 10:26:03', 0),
(71, 838, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e67, 70, 0, '72', NULL, NULL, NULL, '0', '2021-09-28 10:42:09', '2021-09-28 10:42:09', 0),
(72, 838, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x5265616c6c79, 71, 0, '72', NULL, NULL, NULL, '72', '2021-09-28 10:42:25', '2021-09-28 10:42:25', 0),
(73, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xd8a7d987d987, 64, 0, '38', NULL, NULL, NULL, '38', '2021-09-29 12:37:55', '2021-09-29 12:37:55', 0),
(74, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xd8add8a7d8a7d985d8af, 63, 0, '38', NULL, NULL, NULL, '68', '2021-09-29 12:38:34', '2021-09-29 12:38:34', 0),
(75, 34, 'asda', 1, 2, 7, 2, 1, 2, 3, 0x67727465617420636f6465206173646164736473, 0, 0, '79', NULL, NULL, NULL, NULL, '2021-10-30 13:26:50', '2021-10-30 13:26:50', 0),
(76, 970, 'An12', 1, 4, 8, 2, 1, 2, 9, 0x6e6f2020676f6f64, 0, 0, '79', '79,22', '', '', NULL, '2021-11-01 10:41:43', '2021-11-30 05:13:42', 0),
(77, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x676f6f6f6f6f6f6f6f64, 76, 0, '79', '79,22', '', NULL, '0', '2021-11-10 07:39:52', '2021-11-27 10:19:16', 0),
(78, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7465737431, 76, 0, '79', '79,22', '', NULL, '0', '2021-11-15 11:03:50', '2021-11-27 10:19:18', 0),
(79, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7465737432, 76, 0, '79', '22', '79', '79', '0', '2021-11-15 11:04:37', '2021-11-27 10:19:11', 0),
(80, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7265706c79696e6720676f6f64, 77, 0, '79', '22', '', NULL, '79', '2021-11-15 12:30:29', '2021-11-27 10:19:17', 0),
(81, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x68656c6c6f, 79, 0, '79', '22', '', NULL, '79', '2021-11-15 12:40:05', '2021-11-27 10:19:15', 0),
(82, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x68656c6c6f, 79, 0, '79', '22', '', NULL, '79', '2021-11-15 12:42:46', '2021-11-27 10:19:13', 0),
(83, 967, 'Cd123', 2, 9, 4, 2, 1, 2, 3, 0x6166736173617366617366617366616673617366617366, 0, 0, '79', NULL, NULL, NULL, NULL, '2021-11-19 13:22:01', '2021-11-19 13:22:01', 0),
(84, 43, 'b21', 2, 10, 10, 2, 1, 1, 2, 0x65616473617364617364736164617364617364, 0, 0, '79', NULL, NULL, NULL, NULL, '2021-11-19 13:25:24', '2021-11-19 13:25:24', 0),
(85, 22, 'b213', 1, 10, 10, 1, 2, 1, 3, 0x6772656174, 0, 0, '79', NULL, NULL, NULL, NULL, '2021-11-19 13:26:59', '2021-11-19 13:26:59', 0),
(86, 21, '123123', 2, 10, 10, 1, 2, 1, 2, 0x726772657274756c, 0, 0, '79', NULL, NULL, NULL, NULL, '2021-11-19 13:29:44', '2021-11-19 13:29:44', 0),
(87, 27, 'asdsa', 2, 10, 10, 1, 2, 2, 2, 0x6173646473616d, 0, 0, '79', NULL, NULL, NULL, NULL, '2021-11-19 13:31:25', '2021-11-19 13:31:25', 0),
(88, 39, 'adfasd', 1, 10, 10, 1, 2, 1, 2, 0x617364647361736461736461, 0, 0, '79', NULL, NULL, NULL, NULL, '2021-11-19 13:32:28', '2021-11-19 13:32:28', 0),
(89, 18, 'nmmmn', 1, 10, 10, 1, 2, 1, 2, 0x68696969696969696969, 0, 0, '79', NULL, NULL, NULL, NULL, '2021-11-20 09:43:15', '2021-11-20 09:43:15', 0),
(90, 40, 'fhdg', 1, 10, 10, 1, 2, 1, 2, 0x6772656174, 0, 0, '79', NULL, NULL, NULL, NULL, '2021-11-20 09:50:16', '2021-11-20 09:50:16', 0),
(91, 25, 'asd', 1, 10, 10, 1, 2, 1, 2, 0x736164736164, 0, 0, '79', NULL, NULL, NULL, NULL, '2021-11-20 09:51:02', '2021-11-20 09:51:02', 0),
(92, 971, 'G2123', 1, 10, 10, 1, 2, 1, 2, 0x6772656174207468696e6773, 0, 0, '79', '79', '', '79', NULL, '2021-11-22 04:51:51', '2021-11-22 04:52:42', 0),
(93, 970, 'grgg', 1, 10, 10, 1, 2, 1, 2, 0x6e6f74206772656174, 0, 0, '99', '22,79,111', '', '79,22', NULL, '2021-11-22 12:01:27', '2022-04-30 10:50:49', 0),
(94, 972, 'odjsh', 1, 10, 10, 1, 1, 1, 2, 0x62646873626273687368736873687368736a736a, 0, 0, '98', '', '', NULL, NULL, '2021-11-22 12:04:53', '2021-11-22 12:05:04', 0),
(95, 973, 'hsheh', 2, 10, 10, 1, 1, 1, 3, 0x736868736873687368736868736273206468656873687368, 0, 0, '98', '98', '', NULL, NULL, '2021-11-22 12:33:13', '2021-11-22 12:34:07', 0),
(96, 974, 'Gt12', 2, 10, 10, 1, 2, 2, 2, 0x47726561742074656163686572, 0, 0, '79', '79', '', NULL, NULL, '2021-11-23 04:30:41', '2021-11-23 04:55:22', 0),
(97, 969, 'GT132', 1, 10, 10, 1, 2, 1, 2, 0x6164616473647361, 0, 0, '22', NULL, NULL, NULL, NULL, '2021-11-26 11:31:25', '2021-11-26 11:31:25', 0),
(98, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374, 93, 0, '22', NULL, NULL, NULL, '0', '2021-11-27 09:40:24', '2021-11-27 09:40:24', 0),
(99, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 93, 0, '22', '117', '', '79', '0', '2021-11-27 09:41:39', '2022-05-06 10:03:54', 0),
(100, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e6720616761696e, 99, 0, '22', NULL, NULL, NULL, '22', '2021-11-27 09:41:47', '2021-11-27 09:41:47', 0),
(101, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x636f6d6d656e74, 76, 0, '22', NULL, NULL, NULL, '0', '2021-11-27 09:45:18', '2021-11-27 09:45:18', 0),
(102, 857, 'EN101', 1, 10, 3, 1, 1, 1, 2, 0x6f6e65206f6620746865206265737421, 0, 0, '100', NULL, NULL, NULL, NULL, '2021-12-01 05:33:16', '2021-12-01 05:33:16', 0),
(103, 857, 'EN101', 2, 10, 10, 1, 2, 1, 9, 0x6e6f74207468617420626164, 0, 0, '38', NULL, NULL, NULL, NULL, '2021-12-01 09:49:10', '2021-12-01 09:49:10', 0),
(104, 970, 'addsa', 2, 10, 10, 1, 1, 1, 2, 0x6772656174, 0, 0, '111', '111,117', '', '111', NULL, '2022-04-29 06:14:51', '2022-05-06 07:44:08', 0),
(105, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6772656174, 104, 0, '111', '111', '', NULL, '0', '2022-04-30 09:43:57', '2022-04-30 10:30:45', 0),
(106, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x677265616574, 105, 0, '111', NULL, NULL, NULL, '111', '2022-04-30 09:44:25', '2022-04-30 09:44:25', 0),
(107, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6772657461, 105, 0, '111', NULL, NULL, NULL, '111', '2022-04-30 09:44:58', '2022-04-30 09:44:58', 0),
(108, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x63616e7420666173206466, 107, 0, '111', '117', '', NULL, '111', '2022-04-30 10:32:13', '2022-05-06 10:00:02', 0),
(110, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6867686a67686a67686a67686a676a, 108, 0, '111', '117', '', NULL, '111', '2022-04-30 10:32:58', '2022-05-06 09:58:19', 0),
(111, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6a6e6a6d, 108, 0, '111', '117', '', NULL, '111', '2022-04-30 10:36:07', '2022-05-06 09:58:12', 0),
(112, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6e6a6e6d6e20686e686a, 108, 0, '111', '117', '', '117', '111', '2022-04-30 10:36:55', '2022-05-06 10:00:13', 0),
(113, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x617364617364, 106, 0, '111', NULL, NULL, NULL, '111', '2022-04-30 10:40:08', '2022-04-30 10:40:08', 0),
(114, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x617364617364, 106, 0, '111', NULL, NULL, NULL, '111', '2022-04-30 10:40:43', '2022-04-30 10:40:43', 0),
(115, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x5a73616420617364206164732061647361207361736420617364617364, 114, 0, '111', NULL, NULL, NULL, '111', '2022-04-30 10:41:00', '2022-04-30 10:41:00', 0),
(116, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x61736461647371323432312034312032, 114, 0, '111', NULL, NULL, NULL, '111', '2022-04-30 10:41:07', '2022-04-30 10:41:07', 0),
(117, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x696f696f696f696f, 109, 0, '111', NULL, NULL, NULL, '111', '2022-04-30 11:04:31', '2022-04-30 11:04:31', 0),
(118, 978, 'EN101', 1, 10, 1, 1, 2, 1, 6, 0x4f4e45204f4620544845204245535420425554205455464620475241444552, 0, 0, '38', NULL, NULL, NULL, NULL, '2022-05-04 11:54:51', '2022-05-04 11:54:51', 0),
(119, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6265616172, 93, 0, '2', '117', '', NULL, '0', '2022-05-04 12:39:29', '2022-05-06 10:04:51', 0),
(121, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 105, 0, '1', NULL, NULL, NULL, '111', '2022-05-06 06:42:53', '2022-05-06 06:42:53', 0),
(125, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x40436f6c6c656769746f2d6241747167424f65754950724734206772656174, 99, 0, '117', '', '', NULL, '22', '2022-05-06 09:41:52', '2022-05-06 10:04:38', 0),
(126, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x40436f6c6c656769746f2d797139376c64206772656174, 76, 0, '117', NULL, NULL, NULL, '79', '2022-05-06 09:46:47', '2022-05-06 09:46:47', 0),
(127, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x40436f6c6c656769746f2d35346877696f20667265617420617364, 104, 0, '117', NULL, NULL, NULL, '111', '2022-05-06 09:51:40', '2022-05-06 09:51:40', 0),
(128, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x40436f6c6c656769746f2d35346877696f20666420736620667364, 104, 0, '117', NULL, NULL, NULL, '111', '2022-05-06 09:51:56', '2022-05-06 09:51:56', 0),
(129, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x40436f6c6c656769746f2d35346877696f20677265617420646179, 104, 0, '117', NULL, NULL, NULL, '111', '2022-05-06 09:54:09', '2022-05-06 09:54:09', 0),
(130, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x40436f6c6c656769746f2d6241747167424f65754950724734206761646164642064617364, 93, 0, '117', NULL, NULL, NULL, '22', '2022-05-06 10:10:56', '2022-05-06 10:10:56', 0),
(131, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x677265617420646179206168656164, 93, 0, '117', '117', '', NULL, '117', '2022-05-06 10:17:31', '2022-05-06 10:18:35', 0),
(132, 970, 'removeData', 1, 1, 1, 2, 2, 1, 9, 0x62616464657373, 0, 0, '117', '117', '', '117', NULL, '2022-05-06 10:23:51', '2022-05-11 09:06:18', 0),
(133, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74727565, 132, 0, '117', NULL, NULL, NULL, '0', '2022-05-06 10:27:43', '2022-05-06 10:27:43', 0),
(134, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74727565, 132, 0, '117', NULL, NULL, NULL, '0', '2022-05-06 10:27:52', '2022-05-06 10:27:52', 0),
(135, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74757265206c3b64616120617364206f6173646b6c6b6c6173206e61736b6473, 132, 0, '117', NULL, NULL, NULL, '0', '2022-05-06 10:30:41', '2022-05-06 10:30:41', 0),
(136, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74757265206c3b64616120617364206f6173646b6c6b6c6173206e61736b6473, 132, 0, '117', NULL, NULL, NULL, '0', '2022-05-06 10:33:30', '2022-05-06 10:33:30', 0),
(137, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74757265206c3b64616120617364206f6173646b6c6b6c6173206e61736b6473, 132, 0, '117', NULL, NULL, NULL, '0', '2022-05-06 10:34:01', '2022-05-06 10:34:01', 0),
(138, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74757265206c3b64616120617364206f6173646b6c6b6c6173206e61736b6473, 132, 0, '117', NULL, NULL, NULL, '0', '2022-05-06 10:34:59', '2022-05-06 10:34:59', 0),
(139, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74757265206c3b64616120617364206f6173646b6c6b6c6173206e61736b6473, 132, 0, '117', NULL, NULL, NULL, '0', '2022-05-06 10:35:28', '2022-05-06 10:35:28', 0),
(140, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74757265206c3b64616120617364206f6173646b6c6b6c6173206e61736b6473, 132, 0, '117', NULL, NULL, NULL, '0', '2022-05-06 10:36:06', '2022-05-06 10:36:06', 0),
(141, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x64612061736420616473206164732061736420616473, 132, 0, '117', NULL, NULL, NULL, '0', '2022-05-06 10:39:39', '2022-05-06 10:39:39', 0),
(142, 970, 'testing by dev', 1, 7, 4, 2, 1, 1, 7, 0x74657374696e6720646576206d6f64616c20706f707570, 0, 0, '1', '2', '117,128', '117', NULL, '2022-05-09 09:02:09', '2022-05-19 05:35:41', 0),
(143, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x677265617420646179, 142, 0, '117', NULL, NULL, NULL, '0', '2022-05-11 09:06:26', '2022-05-11 09:06:26', 0),
(144, 970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6772656174206461792032312031323320313233, 132, 0, '117', NULL, NULL, NULL, '117', '2022-05-11 09:06:48', '2022-05-11 09:06:48', 0),
(145, 969, 'wwq', 1, 10, 10, 1, 1, 1, 3, 0x71646173, 0, 0, '117', NULL, NULL, NULL, NULL, '2022-05-11 09:58:26', '2022-05-11 09:58:26', 0),
(146, 979, 'adad', 1, 10, 10, 1, 1, 1, 3, 0x6164736164, 0, 0, '117', NULL, NULL, NULL, NULL, '2022-05-11 10:00:20', '2022-05-11 10:00:20', 0),
(147, 971, 'adad', 1, 9, 6, 1, 2, 1, 3, 0x6772656174206164617364, 0, 0, '117', NULL, NULL, NULL, NULL, '2022-05-11 10:02:25', '2022-05-11 10:02:25', 0),
(148, 974, 'adss', 1, 9, 9, 1, 2, 1, 3, 0x6173647361, 0, 0, '117', NULL, NULL, NULL, NULL, '2022-05-11 10:04:43', '2022-05-11 10:04:43', 0),
(149, 976, 'asdads', 1, 9, 9, 1, 2, 1, 3, 0x6164617364, 0, 0, '117', NULL, NULL, NULL, NULL, '2022-05-11 10:05:59', '2022-05-11 10:05:59', 0),
(150, 34, 'adsd', 1, 10, 10, 1, 2, 1, 3, 0x616473646173, 0, 0, '117', NULL, NULL, NULL, NULL, '2022-05-11 10:06:36', '2022-05-11 10:06:36', 0),
(151, 669, 'ENG101', 1, 10, 10, 1, 1, 1, 3, 0x67656e65726f757320677261646572, 0, 0, '118', '118', '', NULL, NULL, '2022-05-12 06:35:13', '2022-05-12 06:35:23', 0),
(152, 971, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6874727320662073666420736620736620616661646166206164, 147, 0, '117', NULL, NULL, NULL, '0', '2022-05-13 09:37:53', '2022-05-13 09:37:53', 0),
(153, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 29, 0, '119', NULL, NULL, '', '38', '2022-05-13 16:44:07', '2022-06-08 12:22:13', 0),
(156, 969, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6675636b, 145, 0, '117', NULL, NULL, NULL, '0', '2022-05-17 12:26:15', '2022-05-17 12:26:15', 0),
(157, 60, 'علوم سياسية', 1, 10, 10, 1, 1, 1, 3, 0xd8aed988d988d988d988d8b420d8afd983d8aad988d8b1, 0, 0, '125', NULL, NULL, '41,1', NULL, '2022-05-18 18:51:53', '2022-06-08 10:57:07', 0),
(158, 43, 'ads', 1, 10, 10, 1, 2, 1, 3, 0x677265617420646179, 0, 0, '117', NULL, NULL, NULL, NULL, '2022-05-18 18:57:42', '2022-05-18 18:57:42', 0),
(159, 993, 'asdasd', 1, 9, 8, 1, 2, 1, 3, 0x67726561746120736464, 0, 0, '117', NULL, NULL, NULL, NULL, '2022-05-18 18:59:22', '2022-05-18 18:59:22', 0),
(160, 969, 'asdasd', 1, 9, 9, 1, 1, 1, 3, 0x617364617364, 0, 0, '111', NULL, NULL, NULL, NULL, '2022-05-18 19:01:21', '2022-05-18 19:01:21', 0),
(161, 988, 'asdsad', 1, 1, 1, 1, 2, 1, 3, NULL, 0, 0, '111', NULL, NULL, NULL, NULL, '2022-05-18 19:02:41', '2022-05-18 19:02:41', 0),
(162, 971, 'asd', 1, 9, 9, 1, 2, 1, 5, NULL, 0, 0, '111', NULL, NULL, NULL, NULL, '2022-05-18 19:06:29', '2022-05-18 19:06:29', 0),
(163, 60, 'عربي', 2, 10, 10, 1, 1, 1, 3, '', 0, 0, '126', '72', '', '41,72,1,131', NULL, '2022-05-18 19:13:29', '2022-06-09 13:15:29', 0),
(164, 56, 'en101', 1, 10, 10, 1, 1, 1, 5, 0x676f6f642074656163686572, 0, 0, '126', '41', '', '41', NULL, '2022-05-18 19:14:54', '2022-06-06 14:16:29', 0),
(185, 60, 'Ali101', 1, 10, 10, 2, 2, 1, 3, '', 0, 0, '131', NULL, NULL, NULL, NULL, '2022-06-09 13:14:43', '2022-06-09 13:14:43', 0),
(187, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e6720666f7220776861743f, 153, 0, '131', NULL, NULL, NULL, '119', '2022-06-09 13:17:40', '2022-06-09 13:17:40', 0),
(188, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xd8b5d8ac, 157, 0, '72', NULL, NULL, NULL, '0', '2022-06-14 07:14:54', '2022-06-14 07:14:54', 0),
(189, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xd985d98820d985d98620d8b5d8acd983, 28, 0, '72', NULL, NULL, NULL, '0', '2022-06-14 07:15:19', '2022-06-14 07:15:19', 0),
(190, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xd8b4d8b1d985d987d8a7, 50, 0, '72', NULL, NULL, NULL, '38', '2022-06-14 07:15:27', '2022-06-14 07:15:27', 0),
(191, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e672031, 29, 0, '72', NULL, NULL, NULL, '0', '2022-06-14 07:15:39', '2022-06-14 07:15:39', 0),
(192, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e672032, 29, 0, '72', NULL, NULL, NULL, '0', '2022-06-14 07:15:45', '2022-06-14 07:15:45', 0),
(193, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e672034, 29, 0, '72', NULL, NULL, NULL, '0', '2022-06-14 07:15:50', '2022-06-14 07:15:50', 0),
(194, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e672035, 50, 0, '72', NULL, NULL, NULL, '38', '2022-06-14 07:16:02', '2022-06-14 07:16:02', 0),
(195, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e672036, 189, 0, '72', NULL, NULL, NULL, '72', '2022-06-14 07:16:14', '2022-06-14 07:16:14', 0),
(196, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e672036, 189, 0, '72', NULL, NULL, NULL, '72', '2022-06-14 07:16:14', '2022-06-14 07:16:14', 0),
(197, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e672036, 189, 0, '72', NULL, NULL, NULL, '72', '2022-06-14 07:16:56', '2022-06-14 07:16:56', 0),
(198, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e672037, 189, 0, '72', NULL, NULL, NULL, '72', '2022-06-14 07:17:12', '2022-06-14 07:17:12', 0),
(199, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e672038, 193, 0, '72', NULL, NULL, NULL, '72', '2022-06-14 07:17:12', '2022-06-14 07:17:12', 0),
(200, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e672038, 193, 0, '72', NULL, NULL, NULL, '72', '2022-06-14 07:17:12', '2022-06-14 07:17:12', 0),
(201, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e672038, 193, 0, '72', NULL, NULL, NULL, '72', '2022-06-14 07:17:12', '2022-06-14 07:17:12', 0),
(202, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e672038, 193, 0, '72', NULL, NULL, NULL, '72', '2022-06-14 07:17:13', '2022-06-14 07:17:13', 0),
(203, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e672038, 193, 0, '72', NULL, NULL, NULL, '72', '2022-06-14 07:17:13', '2022-06-14 07:17:13', 0),
(204, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e672038, 193, 0, '72', NULL, NULL, NULL, '72', '2022-06-14 07:17:13', '2022-06-14 07:17:13', 0),
(205, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e672038, 193, 0, '72', NULL, NULL, NULL, '72', '2022-06-14 07:17:13', '2022-06-14 07:17:13', 0),
(206, 23900, 'IT102', 1, 10, 10, 1, 2, 1, 3, 0x5665727920676f6f642074656163686572, 0, 0, '72', '72,1', '117', '72', NULL, '2022-06-15 04:49:24', '2022-07-15 10:23:47', 0),
(207, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e67, 206, 0, '72', '', '72', '72,137', '0', '2022-06-15 04:50:57', '2022-07-01 10:45:17', 0),
(208, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e672077686174, 207, 0, '72', '', '136', NULL, '72', '2022-06-15 05:03:55', '2022-06-30 13:54:02', 0),
(209, 23488, 'علوم سياسية', 1, 10, 10, 1, 1, 1, 5, 0xd8aed988d8b420d8a7d984d8aed988d8b4, 0, 0, '72', NULL, NULL, NULL, NULL, '2022-06-16 04:36:54', '2022-06-16 04:36:54', 0),
(210, 23488, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xd8a7d986d8aa20d8a7d984d8aed988d8b420d98ad8a720d8aed988d8b4, 209, 0, '72', NULL, NULL, NULL, '0', '2022-06-16 04:39:47', '2022-06-16 04:39:47', 0),
(211, 23488, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xd988d8a7d984d984d98720d8b5d8ac20f09f9882, 209, 0, '72', NULL, NULL, NULL, '0', '2022-06-16 04:40:12', '2022-06-16 04:40:12', 0),
(212, 23488, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xd988d8a7d984d984d98720d8b5d8ac20f09f9882, 209, 0, '72', NULL, NULL, NULL, '0', '2022-06-16 04:40:12', '2022-06-16 04:40:12', 0),
(213, 23488, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xd988d8a7d984d984d98720d8b5d8ac20f09f9882, 209, 0, '72', NULL, NULL, NULL, '0', '2022-06-16 04:40:15', '2022-06-16 04:40:15', 0),
(214, 23900, 'asddasa', 1, 8, 5, 2, 2, 1, 3, NULL, 0, 0, '1', '', '117,1', '', NULL, '2022-06-23 05:19:08', '2022-07-15 10:23:37', 0),
(215, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 214, 0, '133', NULL, NULL, NULL, '0', '2022-06-30 07:34:09', '2022-06-30 07:34:09', 0),
(216, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 214, 0, '133', NULL, NULL, NULL, '0', '2022-06-30 07:34:10', '2022-06-30 07:34:10', 0),
(217, 23900, 'GEO101', 1, 10, 10, 1, 1, 1, 3, 0x6f6e65206f662074686520626573742070726f666573736f7273206576657221, 0, 0, '133', '117', '133,141', NULL, NULL, '2022-06-30 07:42:48', '2022-07-11 06:30:31', 0),
(218, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 217, 0, '133', '1', '', NULL, '0', '2022-06-30 07:43:19', '2022-07-01 07:47:30', 0),
(219, 23902, 'IT101', 2, 1, 1, 2, 2, 2, 9, 0x736865206973206d65616e, 0, 0, '133', NULL, NULL, NULL, NULL, '2022-06-30 07:54:24', '2022-06-30 07:54:24', 0),
(220, 23902, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xf09f9882f09f9882f09f9882, 219, 0, '133', NULL, NULL, NULL, '0', '2022-06-30 07:54:51', '2022-06-30 07:54:51', 0),
(221, 23902, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xf09f9882f09f9882f09f9882, 219, 0, '133', NULL, NULL, NULL, '0', '2022-06-30 07:54:53', '2022-06-30 07:54:53', 0),
(222, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7265706c79206f6e207265706c79, 217, 0, '133', '1', '', NULL, '133', '2022-06-30 10:57:02', '2022-07-01 10:17:35', 0),
(223, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7265706c79206f6e207265706c79, 217, 0, '133', NULL, NULL, NULL, '133', '2022-06-30 10:57:02', '2022-06-30 10:57:02', 0),
(224, 23900, 'eeeeeeettttttttr', 1, 10, 10, 1, 1, 2, 3, 0x736d61727420706572736f6e20616e6420766572792076657279207265737065637466756c, 0, 0, '135', '', '', '135,1,137', NULL, '2022-06-30 13:23:33', '2022-07-02 11:02:58', 0),
(225, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67207265706c79, 214, 0, '136', NULL, NULL, NULL, '133', '2022-06-30 13:49:12', '2022-06-30 13:49:12', 0),
(226, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374, 217, 0, '136', NULL, NULL, NULL, '133', '2022-06-30 13:54:45', '2022-06-30 13:54:45', 0),
(227, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 214, 0, '136', NULL, NULL, NULL, '133', '2022-06-30 13:57:28', '2022-06-30 13:57:28', 0),
(228, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67207265706c79206f6e206d61696e20636f6d6d656e74, 224, 0, '136', '1', '', NULL, '0', '2022-06-30 14:00:35', '2022-07-01 10:24:56', 0),
(229, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67207265706c79206f6e207265706c7979, 224, 0, '137', '', '1', NULL, '136', '2022-06-30 20:43:09', '2022-07-01 07:10:13', 0),
(230, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7361647361646461732061646164, 217, 0, '1', '1', '', NULL, '133', '2022-07-01 06:49:04', '2022-07-01 06:49:07', 0),
(231, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67203231, 217, 0, '1', NULL, NULL, NULL, '0', '2022-07-01 06:49:43', '2022-07-01 06:49:43', 0),
(232, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6774726561206661736420736164, 217, 0, '1', NULL, NULL, NULL, '133', '2022-07-01 06:52:06', '2022-07-01 06:52:06', 0),
(233, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x617364617364617364736164736164, 224, 0, '1', '1', '', NULL, '0', '2022-07-01 06:53:11', '2022-07-01 06:54:15', 0),
(234, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x4073436f6c6c656769746f2d673134687669207366736461647373616464736164, 217, 0, '1', NULL, NULL, NULL, '1', '2022-07-01 07:12:46', '2022-07-01 07:12:46', 0),
(235, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x677265617420616461647364, 217, 0, '1', NULL, NULL, NULL, '133', '2022-07-01 07:40:21', '2022-07-01 07:40:21', 0),
(236, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x73646673646673207364667364662073646673646620736466666473, 217, 0, '1', NULL, NULL, NULL, '133', '2022-07-01 07:46:18', '2022-07-01 07:46:18', 0),
(237, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x677265617420646179, 224, 0, '1', NULL, NULL, '1', '136', '2022-07-01 07:48:52', '2022-07-01 07:52:57', 0),
(238, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6164617364617364617364617364, 224, 0, '1', NULL, NULL, '', '137', '2022-07-01 07:51:02', '2022-07-01 07:52:55', 0),
(239, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x677265617420646179, 224, 0, '1', '', '1', '1', '1', '2022-07-01 07:51:29', '2022-07-01 07:51:46', 0),
(240, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x677265617420617364617364206173646164, 224, 0, '1', NULL, NULL, '1', '1', '2022-07-01 07:52:02', '2022-07-01 07:52:46', 0),
(241, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x677265617420617364323133d9a1d9a2d9a3, 217, 0, '1', NULL, NULL, NULL, '0', '2022-07-01 10:17:51', '2022-07-01 10:17:51', 0),
(242, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xd8b4d98ad8b4d8b3d98ad8b4d8b3d98a, 217, 0, '1', NULL, NULL, NULL, '1', '2022-07-01 10:17:56', '2022-07-01 10:17:56', 0),
(243, 23907, 'hdbdhdjdjdjdjh😂', 1, 10, 10, 1, 1, 1, 3, 0x677265617420646576656c6f70657221, 0, 0, '139', NULL, NULL, NULL, NULL, '2022-07-01 11:17:57', '2022-07-01 11:17:57', 0),
(244, 23907, 'adsasd', 1, 10, 10, 1, 2, 1, 3, 0x61736461736461736461736420617364617364, 0, 0, '117', NULL, NULL, NULL, NULL, '2022-07-01 11:31:46', '2022-07-01 11:31:46', 0),
(245, 23900, 'ENG101', 1, 10, 10, 2, 1, 2, 5, 0x766572792076657279206b696e6420627574207475666620677261646572, 0, 0, '139', '141,143', '', '1', NULL, '2022-07-01 11:52:28', '2022-07-07 07:03:58', 0),
(246, 23907, 'eng1', 2, 10, 10, 1, 2, 1, 3, 0x617364617364, 0, 0, '1', NULL, NULL, NULL, NULL, '2022-07-01 12:35:17', '2022-07-01 12:35:17', 0),
(247, 23900, 'ثقافة فرنسية', 1, 10, 10, 2, 1, 1, 5, NULL, 0, 0, '140', '141', '140,117', NULL, NULL, '2022-07-01 13:47:35', '2022-07-05 12:42:20', 0),
(248, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 247, 0, '140', '1', '', NULL, '0', '2022-07-01 13:48:50', '2022-07-05 06:18:14', 0),
(249, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7265706c79696e67206f6e2061207265706c79202c2074686520406e69636b6e616d652074686174207520777269746520746f206d757374206265206175746f6d61746963616c6c7920707574, 247, 0, '140', '1', '', NULL, '140', '2022-07-01 13:50:01', '2022-07-05 06:18:15', 0),
(250, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x616c736f2c20617320796f752063616e20736565207768656e20692077726f74652061206c6f6e67206d657373616765206c696b652074686973206f6e652c206974206973206e6f7420676f696e6720646f776e206920646f6e74206b6e6f77207768617420696d2077726974696e67, 247, 0, '140', '1', '', '140', '140', '2022-07-01 13:50:44', '2022-07-05 06:18:11', 0),
(251, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x616c736f2c20746865206d657373616765206d757374206265203230302063686172616374657273206d61782e2e20736f2067726179206d657373616765206d75737420626520696e7369646520616c6c2074686520776869746520626f78657320736179696e6720696e20677261793a203230302063686172616374657273206d6178, 247, 0, '140', '1', '', NULL, '140', '2022-07-01 13:51:46', '2022-07-05 06:18:10', 0),
(252, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67207265706c79206f6e207265706c79, 224, 0, '140', NULL, NULL, NULL, '1', '2022-07-01 18:08:17', '2022-07-01 18:08:17', 0),
(253, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7768656e20796f75207265706c792c207468697320776869746520626f78206d75737420617070656172206174207468652073616d6520706c616365, 217, 0, '140', NULL, NULL, NULL, '0', '2022-07-01 18:09:42', '2022-07-01 18:09:42', 0),
(254, 23911, 'dddddfffffff', 1, 10, 4, 1, 1, 2, 5, 0x6a7368646873687362736a, 0, 0, '140', '', '142', NULL, NULL, '2022-07-01 18:37:43', '2022-07-05 13:42:53', 0),
(255, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67206e6577, 247, 0, '141', '1', '', NULL, '140', '2022-07-02 11:01:25', '2022-07-05 06:18:07', 0),
(256, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x436f6c6c65676974612d306973676832206173646173642061736461736420617364617364, 247, 0, '1', '1', '', NULL, '140', '2022-07-04 09:26:05', '2022-07-05 06:18:05', 0),
(257, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x65736466207373646673646620736466736664647366207364667364666473662073646673646620736466736664732066736473646620646664666466646666646466207364667364666466736664736466736664736466666473736466, 247, 0, '1', '1', '', NULL, '1', '2022-07-04 09:29:44', '2022-07-05 06:18:03', 0),
(258, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x313233, 247, 0, '1', '1', '', '1', '1', '2022-07-04 09:49:03', '2022-07-04 10:01:35', 0),
(259, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x677265617420646179206168656164, 247, 0, '1', NULL, NULL, NULL, '140', '2022-07-04 12:09:15', '2022-07-04 12:09:15', 0),
(260, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e672031, 245, 0, '141', NULL, NULL, NULL, '0', '2022-07-05 06:23:12', '2022-07-05 06:23:12', 0),
(261, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e672031, 245, 0, '141', NULL, NULL, NULL, '0', '2022-07-05 06:23:23', '2022-07-05 06:23:23', 0),
(262, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x40436f6c6c65676974612d6f7a3533666a20796868, 214, 0, '1', NULL, NULL, NULL, '136', '2022-07-05 10:58:15', '2022-07-05 10:58:15', 0),
(263, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e672031, 247, 0, '142', NULL, NULL, NULL, '0', '2022-07-05 12:26:01', '2022-07-05 12:26:01', 0),
(264, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e672031, 247, 0, '142', NULL, NULL, NULL, '0', '2022-07-05 12:26:19', '2022-07-05 12:26:19', 0),
(265, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x746573742031, 247, 0, '142', NULL, NULL, NULL, '0', '2022-07-05 12:26:46', '2022-07-05 12:26:46', 0),
(266, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x436f6c6c656769746f2d387872336f6820677265617420646179, 247, 0, '1', NULL, NULL, NULL, '142', '2022-07-05 12:28:49', '2022-07-05 12:28:49', 0),
(267, 23900, 'EN101', 1, 5, 5, 1, 1, 2, 6, 0x736f20676f6f6f6f6464646466, 0, 0, '142', '143,117', '170', '', NULL, '2022-07-05 12:28:58', '2022-08-23 12:52:22', 0),
(268, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x40636f6c6c656761746f722d75736572312074657374696e67, 247, 0, '142', NULL, NULL, NULL, '1', '2022-07-05 12:29:49', '2022-07-05 12:29:49', 0),
(269, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x40636f6c6c656761746f722d75736572312068656c6c6f, 247, 0, '142', NULL, NULL, NULL, '1', '2022-07-05 12:30:02', '2022-07-05 12:30:02', 0),
(270, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x40436f6c6c656769746f2d387872336f682074657374696e67, 247, 0, '142', NULL, NULL, NULL, '142', '2022-07-05 12:31:10', '2022-07-05 12:31:10', 0),
(271, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e672032, 247, 0, '142', NULL, NULL, NULL, '142', '2022-07-05 12:31:37', '2022-07-05 12:31:37', 0),
(272, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e6767, 224, 0, '142', NULL, NULL, NULL, '0', '2022-07-05 12:32:28', '2022-07-05 12:32:28', 0),
(273, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67206e6577206e6f772031, 267, 0, '142', NULL, NULL, NULL, '0', '2022-07-05 12:33:26', '2022-07-05 12:33:26', 0),
(274, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x40436f6c6c656769746f2d39766931746f2074657374696e67, 247, 0, '142', NULL, NULL, NULL, '141', '2022-07-05 12:33:55', '2022-07-05 12:33:55', 0);
INSERT INTO `professor_ratings` (`id`, `professor_id`, `course_code`, `study_type`, `rate_professor`, `easyness_range`, `repeat`, `textbook`, `attendance`, `grade`, `message`, `parent_id`, `is_delete`, `user_id`, `likes`, `dislikes`, `report`, `selected_user_id`, `created_at`, `updated_at`, `is_abuse`) VALUES
(275, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x40436f6c6c656769746f2d387872336f68206e6577206e65772074657374, 247, 0, '142', NULL, NULL, NULL, '142', '2022-07-05 12:34:17', '2022-07-05 12:34:17', 0),
(276, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x436f6c6c65676974612d3069736768322074657374696e67676767, 247, 0, '142', NULL, NULL, NULL, '140', '2022-07-05 12:34:38', '2022-07-05 12:34:38', 0),
(277, 23657, 'عربي ١٠١', 1, 10, 10, 1, 1, 1, 5, 0x74657374696e676767, 0, 0, '142', '142', '', NULL, NULL, '2022-07-05 12:42:22', '2022-07-05 12:44:33', 0),
(278, 23657, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x63616e7420736565207768617420696d2077726f74696e67, 277, 0, '142', NULL, NULL, NULL, '0', '2022-07-05 12:43:07', '2022-07-05 12:43:07', 0),
(279, 23657, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 277, 0, '142', NULL, NULL, NULL, '0', '2022-07-05 12:44:20', '2022-07-05 12:44:20', 0),
(280, 23916, 'Med101', 2, 10, 10, 1, 1, 1, 3, NULL, 0, 0, '142', NULL, NULL, NULL, NULL, '2022-07-05 12:49:23', '2022-07-05 12:49:23', 0),
(281, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x686969, 267, 0, '142', NULL, NULL, NULL, '0', '2022-07-05 13:04:30', '2022-07-05 13:04:30', 0),
(282, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x796f6f6f, 214, 0, '142', NULL, NULL, NULL, '0', '2022-07-05 13:04:51', '2022-07-05 13:04:51', 0),
(283, 23911, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 254, 0, '142', NULL, NULL, NULL, '0', '2022-07-05 13:43:02', '2022-07-05 13:43:02', 0),
(284, 23917, 'SCI101', 2, 10, 10, 1, 1, 1, 3, 0x686f6f64, 0, 0, '142', NULL, NULL, NULL, NULL, '2022-07-05 13:45:40', '2022-07-05 13:45:40', 0),
(285, 23918, 'BUS104', 2, 6, 6, 2, 1, 2, 6, 0x676f6f6f642070726f666573736f65, 0, 0, '142', NULL, NULL, NULL, NULL, '2022-07-05 13:47:28', '2022-07-05 13:47:28', 0),
(286, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 206, 0, '142', '', '', NULL, '0', '2022-07-07 06:05:20', '2022-08-23 04:43:40', 0),
(287, 23900, 'yesw ios', 1, 10, 10, 1, 1, 1, 3, 0x76657279206e6963652067757275, 0, 0, '143', '117,143', '', '117,143', NULL, '2022-07-07 06:21:11', '2022-08-22 07:58:16', 0),
(288, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7265616c6c79206e696365, 287, 0, '117', NULL, NULL, NULL, '0', '2022-07-07 06:58:52', '2022-07-07 06:58:52', 0),
(289, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6b6b6b6b, 287, 0, '117', NULL, NULL, NULL, '0', '2022-07-07 06:59:46', '2022-07-07 06:59:46', 0),
(290, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7468616e6b73, 245, 0, '143', NULL, NULL, NULL, '0', '2022-07-07 07:03:29', '2022-07-07 07:03:29', 0),
(291, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6262626262206e6e6e76, 287, 0, '117', NULL, NULL, NULL, '117', '2022-07-07 07:20:28', '2022-07-07 07:20:28', 0),
(292, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6768686768, 267, 0, '143', NULL, NULL, NULL, '0', '2022-07-07 07:21:42', '2022-07-07 07:21:42', 0),
(293, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7676766262, 287, 0, '143', NULL, NULL, NULL, '0', '2022-07-07 07:26:44', '2022-07-07 07:26:44', 0),
(294, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x636663767676206262, 287, 0, '143', NULL, NULL, NULL, '0', '2022-07-07 07:27:04', '2022-07-07 07:27:04', 0),
(295, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x68656c6c6f, 287, 0, '143', NULL, NULL, NULL, '117', '2022-07-07 07:27:30', '2022-07-07 07:27:30', 0),
(296, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x676579, 287, 0, '143', NULL, NULL, NULL, '143', '2022-07-07 07:27:40', '2022-07-07 07:27:40', 0),
(297, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x68657979, 287, 0, '143', NULL, NULL, NULL, '0', '2022-07-07 07:28:01', '2022-07-07 07:28:01', 0),
(298, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6a61206e61, 287, 0, '143', NULL, NULL, NULL, '117', '2022-07-07 07:28:16', '2022-07-07 07:28:16', 0),
(299, 23919, 'نيتين يتيرتي', 1, 3, 3, 1, 2, 1, 3, 0x74686973206973696273697368732073697368656a62646965206469656962646a656a207369656868646264696520d8aad8a8d986d98ad8aad98ad986d986d8abd8aad98ad988d98ad986d8abd8aed98bd98ad8b9d8abd8b9d8b2d98ad8aad8abd8aad8abd8aa20d98ad8aad98ad8aad986d98a20d98ad8aad8a8d8aad98ad8aa20d8a8d8aad8a8d8b1d8aad98a20d98ad8aad986d8a8d98620d8a7d8a8d8aad98ad8aad98ad98620d98ad8a7d8aad98ad8aad8a720d98ad8a7d8aad8abd8aa20d8a7d98ad8aad8aad98a20d98ad8aad8b9d8aad8a8d8b1d98ad986d98ad8aad8b5d987d987d8b5d987d8b5d8b920d98ad8aad98ad8b9d98ad8aad987d98a20d8b9d8b5d8b9d8abd987d986d986d98a20d98ad8aad98ad986d986d98a20d8aad98ad8aad8abd986d987d8ab20d98ad8aad98ad986d987d98a20d98a, 0, 0, '107', NULL, NULL, NULL, NULL, '2022-07-07 11:55:06', '2022-07-07 11:55:06', 0),
(300, 23900, 'okk', 1, 6, 7, 1, 2, 1, 3, 0x626262, 0, 0, '107', '', '130', NULL, NULL, '2022-07-07 13:11:04', '2022-08-24 04:04:17', 0),
(301, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 300, 0, '148', NULL, NULL, NULL, '0', '2022-07-07 13:43:00', '2022-07-07 13:43:00', 0),
(302, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 287, 0, '148', NULL, NULL, NULL, '0', '2022-07-07 13:43:14', '2022-07-07 13:43:14', 0),
(303, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 287, 0, '148', NULL, NULL, NULL, '143', '2022-07-07 13:43:38', '2022-07-07 13:43:38', 0),
(304, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x40436f6c6c656769746f2d69676f3839, 287, 0, '148', NULL, NULL, NULL, '148', '2022-07-07 13:45:56', '2022-07-07 13:45:56', 0),
(305, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x40436f6c6c656769746f2d3478366677, 287, 0, '148', NULL, NULL, NULL, '117', '2022-07-07 13:46:11', '2022-07-07 13:46:11', 0),
(306, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374203232, 287, 0, '148', NULL, NULL, NULL, '143', '2022-07-07 13:46:39', '2022-07-07 13:46:39', 0),
(307, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x40292929, 287, 0, '148', NULL, NULL, NULL, '148', '2022-07-07 13:47:00', '2022-07-07 13:47:00', 0),
(308, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6772656174, 287, 0, '1', NULL, NULL, NULL, '148', '2022-07-07 14:06:55', '2022-07-07 14:06:55', 0),
(309, 23900, 'HIST402', 1, 10, 10, 1, 1, 1, 5, 0x6f6e65206f662074686520626573742070726f666573736f7273206576657220f09f988d, 0, 0, '149', '117', '', '', NULL, '2022-07-07 14:26:32', '2022-08-23 12:51:04', 0),
(310, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e6720313131, 287, 0, '149', NULL, NULL, NULL, '0', '2022-07-07 14:31:52', '2022-07-07 14:31:52', 0),
(311, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e6720313131, 287, 0, '149', NULL, NULL, NULL, '0', '2022-07-07 14:32:26', '2022-07-07 14:32:26', 0),
(312, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 300, 0, '149', NULL, NULL, NULL, '0', '2022-07-07 14:32:37', '2022-07-07 14:32:37', 0),
(313, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x746573747474, 300, 0, '149', NULL, NULL, NULL, '0', '2022-07-07 14:33:47', '2022-07-07 14:33:47', 0),
(314, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 287, 0, '149', '', '', NULL, '148', '2022-07-07 14:34:04', '2022-08-22 07:56:05', 0),
(315, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 309, 0, '149', '117', '', NULL, '0', '2022-07-07 14:37:03', '2022-07-12 09:14:12', 0),
(316, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7465617475696a68206768, 309, 0, '1', '', '117', NULL, '0', '2022-07-08 05:28:13', '2022-07-12 07:21:56', 0),
(317, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x677265617420646179, 309, 0, '117', '1', '', NULL, '0', '2022-07-08 06:20:22', '2022-07-08 08:58:23', 0),
(318, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e6720382d372d32303232, 309, 0, '150', NULL, NULL, NULL, '0', '2022-07-08 10:03:42', '2022-07-08 10:03:42', 0),
(319, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67207265706c79, 309, 0, '150', NULL, NULL, NULL, '149', '2022-07-08 10:04:09', '2022-07-08 10:04:09', 0),
(320, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67207265706c792032, 309, 0, '150', NULL, NULL, NULL, '117', '2022-07-08 10:04:45', '2022-07-08 10:04:45', 0),
(321, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x736169642077686174, 300, 0, '150', NULL, NULL, NULL, '0', '2022-07-08 10:06:07', '2022-07-08 10:06:07', 0),
(322, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 300, 0, '150', NULL, NULL, NULL, '149', '2022-07-08 10:06:25', '2022-07-08 10:06:25', 0),
(323, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e672070696e6b206e69636b6e616d65, 309, 0, '150', '', '1', NULL, '149', '2022-07-08 10:08:31', '2022-07-08 10:32:13', 0),
(324, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x736466736466736466, 309, 0, '1', NULL, NULL, NULL, '150', '2022-07-08 10:32:15', '2022-07-08 10:32:15', 0),
(325, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x616473616473647361736164, 315, 0, '117', NULL, NULL, NULL, '149', '2022-07-08 10:34:32', '2022-07-08 10:34:32', 0),
(326, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x68686868, 323, 0, '117', '', '1', NULL, '150', '2022-07-08 10:35:26', '2022-07-08 10:35:50', 0),
(327, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x61646465642073646673646620736664736673667366, 300, 0, '1', NULL, NULL, NULL, '150', '2022-07-08 11:05:46', '2022-07-08 11:05:46', 0),
(328, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x76626262, 309, 0, '1', NULL, NULL, NULL, '117', '2022-07-08 11:23:34', '2022-07-08 11:23:34', 0),
(329, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 309, 0, '1', NULL, NULL, NULL, '150', '2022-07-08 11:40:32', '2022-07-08 11:40:32', 0),
(330, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e6720756e64657220636f6d6d656e74, 309, 0, '1', NULL, NULL, NULL, '1', '2022-07-08 11:43:24', '2022-07-08 11:43:24', 0),
(331, 23925, 'ENG101', 2, 10, 10, 1, 1, 1, 3, 0x74657374696e67, 0, 0, '150', NULL, NULL, NULL, NULL, '2022-07-08 19:53:28', '2022-07-08 19:53:28', 0),
(332, 23900, 'eng 101', 1, 10, 10, 1, 1, 1, 3, 0x64736173642061736664617320617366617366, 0, 0, '117', '152,160', '151,117', '117', NULL, '2022-07-11 06:13:06', '2022-07-21 09:02:50', 0),
(333, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x2c202c6577652c202c477265672c202c74687265772c202c727462746762, 309, 0, '1', NULL, NULL, NULL, '117', '2022-07-11 10:46:30', '2022-07-11 10:46:30', 0),
(334, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67203131206a756c, 309, 0, '1', NULL, NULL, NULL, '1', '2022-07-11 10:57:25', '2022-07-11 10:57:25', 0),
(335, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x67726561742064617920626f79, 287, 0, '117', NULL, NULL, NULL, '149', '2022-07-12 05:22:56', '2022-07-12 05:22:56', 0),
(336, 23913, 'eng101', 1, 9, 8, 2, 1, 1, 3, 0x6772656174207465616368657220626c65737320746f20737475647920756e6465722068696d206c6f6c, 0, 0, '151', '151,117', '1', '151,1', NULL, '2022-07-12 05:35:51', '2022-07-25 09:22:32', 0),
(337, 23913, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x776879206c6f6c, 336, 0, '1', '151,1,117', '163', '151', '0', '2022-07-12 05:52:03', '2022-07-25 06:55:50', 0),
(338, 23913, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x79656168, 336, 0, '151', '117', '1', '151', '1', '2022-07-12 05:52:59', '2022-07-25 09:27:25', 0),
(339, 23926, 'ثويبن', 1, 9, 1, 1, 2, 1, 5, 0xd8b3d986d8b3d986d8b3d986, 0, 0, '151', '', '151', NULL, NULL, '2022-07-12 06:35:40', '2022-07-12 06:35:45', 0),
(340, 23926, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xd986d8b3d986d8b3d985d8b3, 339, 0, '151', NULL, NULL, NULL, '0', '2022-07-12 06:35:51', '2022-07-12 06:35:51', 0),
(341, 23926, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xd8aad8aad986d985d8b3d985d8b3d985d8b3d8b3d985d8b3d985d8b3d985d8b3d985d8b3d985, 339, 0, '151', NULL, NULL, NULL, '151', '2022-07-12 06:36:19', '2022-07-12 06:36:19', 0),
(342, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x677265617420646174, 309, 0, '151', NULL, NULL, NULL, '149', '2022-07-12 09:14:18', '2022-07-12 09:14:18', 0),
(343, 23927, 'eng1221', 1, 10, 10, 1, 2, 1, 3, 0x74727565, 0, 0, '151', '', '151', '151', NULL, '2022-07-12 10:02:02', '2022-07-12 10:02:27', 0),
(344, 23927, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74727565, 343, 0, '151', '151', '', '151', '0', '2022-07-12 10:02:15', '2022-07-12 10:02:28', 0),
(345, 23927, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74727565, 343, 0, '151', NULL, NULL, '151', '151', '2022-07-12 10:02:22', '2022-07-12 10:02:31', 0),
(346, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 332, 0, '152', NULL, NULL, NULL, '0', '2022-07-12 10:36:04', '2022-07-12 10:36:04', 0),
(347, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e672031, 309, 0, '152', NULL, NULL, NULL, '117', '2022-07-12 10:37:36', '2022-07-12 10:37:36', 0),
(348, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e676767, 309, 0, '152', NULL, NULL, NULL, '117', '2022-07-12 10:38:04', '2022-07-12 10:38:04', 0),
(349, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7265706c79, 332, 0, '151', NULL, NULL, NULL, '152', '2022-07-12 10:42:58', '2022-07-12 10:42:58', 0),
(350, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x617364617364, 309, 0, '1', NULL, NULL, NULL, '1', '2022-07-12 11:11:04', '2022-07-12 11:11:04', 0),
(351, 23929, 'جيلوجيا', 1, 10, 10, 1, 1, 2, 9, 0xd8aed988d988d988d988d8b420d8a7d984d8aed988d988d988d8b4, 0, 0, '152', NULL, NULL, NULL, NULL, '2022-07-12 11:21:24', '2022-07-12 11:21:24', 0),
(352, 23929, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e672031, 351, 0, '152', NULL, NULL, NULL, '0', '2022-07-12 11:21:45', '2022-07-12 11:21:45', 0),
(353, 23929, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 351, 0, '152', NULL, NULL, NULL, '152', '2022-07-12 11:22:04', '2022-07-12 11:22:04', 0),
(354, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 332, 0, '153', NULL, NULL, NULL, '152', '2022-07-12 12:39:49', '2022-07-12 12:39:49', 0),
(355, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 332, 0, '153', NULL, NULL, NULL, '152', '2022-07-12 12:40:11', '2022-07-12 12:40:11', 0),
(356, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e6720313131, 332, 0, '153', '', '117', NULL, '152', '2022-07-12 12:40:25', '2022-07-21 04:53:56', 0),
(357, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6e69636b6e616d65206d757374206170706561722070696e6b206e6f7420626c7565206e6f74652062656c6f77, 332, 0, '153', '', '117', '117', '152', '2022-07-12 12:41:01', '2022-07-21 04:54:01', 0),
(358, 23930, 'جمباز', 1, 10, 10, 2, 2, 2, 5, 0xd8aed988d8b420d8a7d984d8aed988d988d988d988d988d8b4, 0, 0, '153', '153', '', NULL, NULL, '2022-07-12 12:56:17', '2022-07-12 12:57:24', 0),
(359, 23930, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67207265706c79, 358, 0, '153', NULL, NULL, NULL, '0', '2022-07-12 12:56:48', '2022-07-12 12:56:48', 0),
(360, 23930, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e6720626c7565, 358, 0, '153', NULL, NULL, NULL, '153', '2022-07-12 12:57:36', '2022-07-12 12:57:36', 0),
(361, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e672070696e6b20636f6d6d656e742032, 309, 0, '1', NULL, NULL, NULL, '1', '2022-07-12 13:15:43', '2022-07-12 13:15:43', 0),
(362, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 332, 0, '1', NULL, NULL, NULL, '152', '2022-07-13 04:48:59', '2022-07-13 04:48:59', 0),
(363, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e672032323132, 332, 0, '1', NULL, NULL, NULL, '1', '2022-07-13 04:54:17', '2022-07-13 04:54:17', 0),
(364, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e6720756e6465722074657374696e67, 332, 0, '1', NULL, NULL, NULL, '1', '2022-07-13 04:55:06', '2022-07-13 04:55:06', 0),
(365, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e6720756e6465722074657374696e67, 332, 0, '1', NULL, NULL, NULL, '1', '2022-07-13 04:55:55', '2022-07-13 04:55:55', 0),
(366, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x746573746e673132, 332, 0, '1', NULL, NULL, NULL, '153', '2022-07-13 04:56:12', '2022-07-13 04:56:12', 0),
(367, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x617364617320617364617364, 332, 0, '1', NULL, NULL, NULL, '153', '2022-07-13 04:57:14', '2022-07-13 04:57:14', 0),
(368, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x617364617320617364617364, 332, 0, '1', NULL, NULL, NULL, '153', '2022-07-13 05:01:09', '2022-07-13 05:01:09', 0),
(369, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x617364617320617364617364, 332, 0, '1', NULL, NULL, NULL, '153', '2022-07-13 05:03:49', '2022-07-13 05:03:49', 0),
(370, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x617364617320617364617364, 332, 0, '1', NULL, NULL, NULL, '153', '2022-07-13 05:06:03', '2022-07-13 05:06:03', 0),
(371, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x617364617320617364617364, 332, 0, '1', NULL, NULL, NULL, '153', '2022-07-13 05:06:32', '2022-07-13 05:06:32', 0),
(372, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x617364617320617364617364, 332, 0, '1', NULL, NULL, NULL, '153', '2022-07-13 05:08:05', '2022-07-13 05:08:05', 0),
(373, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x617364617320617364617364, 332, 0, '1', NULL, NULL, NULL, '153', '2022-07-13 05:08:24', '2022-07-13 05:08:24', 0),
(374, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x617364617320617364617364, 332, 0, '1', NULL, NULL, NULL, '153', '2022-07-13 05:08:56', '2022-07-13 05:08:56', 0),
(375, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x617364617320617364617364, 332, 0, '1', NULL, NULL, NULL, '153', '2022-07-13 05:09:20', '2022-07-13 05:09:20', 0),
(376, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x617364617320617364617364, 332, 0, '1', NULL, NULL, NULL, '153', '2022-07-13 05:09:41', '2022-07-13 05:09:41', 0),
(377, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e672070696e6b2070696e6b, 332, 0, '1', NULL, NULL, NULL, '1', '2022-07-13 05:25:40', '2022-07-13 05:25:40', 0),
(378, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e6720626c7565, 332, 0, '1', NULL, NULL, NULL, '153', '2022-07-13 05:25:54', '2022-07-13 05:25:54', 0),
(379, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7465737469696e672070696e6b, 300, 0, '117', '', '', NULL, '149', '2022-07-13 05:28:58', '2022-07-13 05:37:00', 0),
(380, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e6720313231, 267, 0, '117', NULL, NULL, NULL, '143', '2022-07-13 05:49:03', '2022-07-13 05:49:03', 0),
(381, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x616464, 300, 0, '117', NULL, NULL, NULL, '149', '2022-07-13 05:55:45', '2022-07-13 05:55:45', 0),
(382, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374, 300, 0, '117', NULL, NULL, NULL, '1', '2022-07-13 05:56:10', '2022-07-13 05:56:10', 0),
(383, 23913, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7972616761, 336, 0, '117', '1', '', NULL, '151', '2022-07-13 07:02:09', '2022-07-25 09:43:53', 0),
(384, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e672070696e6b6b, 332, 0, '153', NULL, NULL, NULL, '152', '2022-07-13 10:22:00', '2022-07-13 10:22:00', 0),
(385, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e672070696e6b206e6577, 332, 0, '154', NULL, NULL, NULL, '152', '2022-07-13 14:12:08', '2022-07-13 14:12:08', 0),
(386, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e6720626c7565, 332, 0, '154', NULL, NULL, NULL, '153', '2022-07-13 14:12:29', '2022-07-13 14:12:29', 0),
(387, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67206e616461, 309, 0, '154', NULL, NULL, NULL, '0', '2022-07-13 14:12:49', '2022-07-13 14:12:49', 0),
(388, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 245, 0, '154', NULL, NULL, NULL, '141', '2022-07-13 14:13:07', '2022-07-13 14:13:07', 0),
(389, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 224, 0, '154', NULL, NULL, NULL, '1', '2022-07-13 14:13:22', '2022-07-13 14:13:22', 0),
(390, 23931, 'HIST101', 1, 10, 4, 2, 1, 2, 9, 0x74657374696e67, 0, 0, '154', NULL, NULL, NULL, NULL, '2022-07-13 14:16:23', '2022-07-13 14:16:23', 0),
(391, 23931, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 390, 0, '154', NULL, NULL, NULL, '0', '2022-07-13 14:16:35', '2022-07-13 14:16:35', 0),
(392, 23931, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 390, 0, '154', NULL, NULL, NULL, '154', '2022-07-13 14:17:01', '2022-07-13 14:17:01', 0),
(393, 23913, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e673132, 336, 0, '1', NULL, NULL, NULL, '1', '2022-07-15 05:22:25', '2022-07-15 05:22:25', 0),
(394, 23913, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 336, 0, '1', NULL, NULL, NULL, '0', '2022-07-15 05:22:42', '2022-07-15 05:22:42', 0),
(395, 23913, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e6720333037, 336, 0, '151', '1', '', NULL, '0', '2022-07-15 09:36:17', '2022-07-15 09:45:09', 0),
(396, 23913, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e6720333038, 336, 0, '151', '1', '', NULL, '1', '2022-07-15 09:37:28', '2022-07-25 09:27:36', 0),
(397, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67206e65772070696e6b206e69636b6e616d65, 332, 0, '155', NULL, NULL, NULL, '152', '2022-07-15 12:02:42', '2022-07-15 12:02:42', 0),
(398, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67206e657720626c7565206e69636b6e616d65, 332, 0, '155', NULL, NULL, NULL, '151', '2022-07-15 12:03:11', '2022-07-15 12:03:11', 0),
(399, 23900, 'MATH404', 1, 10, 10, 1, 1, 2, 3, 0x646576656c6f7065722067757275, 0, 0, '155', '158,117', '160,161', '160', NULL, '2022-07-15 12:04:50', '2022-08-19 10:51:43', 0),
(400, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e6767676767206e657777777777777777, 332, 0, '155', NULL, NULL, NULL, '0', '2022-07-15 12:10:20', '2022-07-15 12:10:20', 0),
(401, 23925, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 331, 0, '155', NULL, NULL, NULL, '0', '2022-07-15 12:53:18', '2022-07-15 12:53:18', 0),
(402, 23925, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6e69636b6e616d65206d7573742062652070696e6b, 331, 0, '155', NULL, NULL, NULL, '155', '2022-07-15 12:53:45', '2022-07-15 12:53:45', 0),
(403, 23925, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6e6f746520686f7720616c6c20746865206c6574746572732061726520736d616c6c2c20627574207468652073797374656d206973206361707469616c7a696e6720746865206669727374206c6574746572206f662065616368, 331, 0, '155', NULL, NULL, NULL, '155', '2022-07-15 12:54:54', '2022-07-15 12:54:54', 0),
(404, 23925, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e676767206e6565, 331, 0, '155', NULL, NULL, NULL, '0', '2022-07-15 12:55:16', '2022-07-15 12:55:16', 0),
(405, 23909, 'علوم حياتية', 2, 5, 5, 1, 1, 2, 6, 0xd8acd8b9d8b520d8a8d8a7d984d8afd8b1d8acd8a7d8aa, 0, 0, '155', '', '', '130', NULL, '2022-07-15 13:17:49', '2022-08-26 16:58:16', 0),
(406, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xd8aad8acd8b1d8a8d8a920d8a7d984d8aed8b7, 399, 0, '159', '117,160', '', NULL, '0', '2022-07-19 14:04:48', '2022-07-21 06:42:53', 0),
(407, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e6720636f6c6f7220616e642063616c706974616c697a6174696f6e, 332, 0, '159', NULL, NULL, NULL, '152', '2022-07-19 14:14:31', '2022-07-19 14:14:31', 0),
(408, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x636f6c6f722074657374, 332, 0, '159', NULL, NULL, NULL, '153', '2022-07-19 14:14:55', '2022-07-19 14:14:55', 0),
(409, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e673132, 399, 0, '117', NULL, NULL, NULL, '159', '2022-07-20 13:21:36', '2022-07-20 13:21:36', 0),
(410, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6164697479612074657374696e67, 399, 0, '117', NULL, NULL, NULL, '117', '2022-07-21 04:38:33', '2022-07-21 04:38:33', 0),
(411, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6164697479612074657374696e67, 399, 0, '117', NULL, NULL, NULL, '117', '2022-07-21 04:38:34', '2022-07-21 04:38:34', 0),
(412, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x726573706f6e7369626c65, 399, 0, '160', '160', '', NULL, '117', '2022-07-21 06:43:12', '2022-07-21 06:43:16', 0),
(413, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7265706c79, 332, 0, '117', NULL, NULL, NULL, '0', '2022-07-21 09:03:00', '2022-07-21 09:03:00', 0),
(414, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x636f6d6d656e74, 332, 0, '117', NULL, NULL, NULL, '0', '2022-07-21 09:03:16', '2022-07-21 09:03:16', 0),
(415, 23916, 'eng101', 1, 10, 10, 1, 2, 1, 3, NULL, 0, 0, '160', NULL, NULL, NULL, NULL, '2022-07-21 11:06:33', '2022-07-21 11:06:33', 0),
(416, 23913, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6772656174, 336, 0, '1', NULL, NULL, NULL, '117', '2022-07-21 12:15:52', '2022-07-21 12:15:52', 0),
(417, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x626c7565206e69636b6e616d652074657374, 399, 0, '161', NULL, NULL, NULL, '160', '2022-07-21 21:02:26', '2022-07-21 21:02:26', 0),
(418, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x70696e6b206e69636b6e616d652074657374, 309, 0, '161', NULL, NULL, NULL, '149', '2022-07-21 21:02:47', '2022-07-21 21:02:47', 0),
(419, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x70696e6b206e69636b6e616d652074657374, 309, 0, '161', NULL, NULL, NULL, '149', '2022-07-21 21:02:48', '2022-07-21 21:02:48', 0),
(420, 23900, 'en101', 1, 10, 10, 1, 1, 1, 3, 0x67646764686362, 0, 0, '161', '', '117,160', '170', NULL, '2022-07-21 21:25:49', '2022-08-04 14:02:03', 0),
(421, 23910, 'med111', 2, 1, 1, 1, 2, 1, 3, NULL, 0, 0, '161', '161', '', NULL, NULL, '2022-07-21 21:34:07', '2022-07-21 21:34:48', 0),
(422, 23910, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74747474, 421, 0, '161', NULL, NULL, '161', '0', '2022-07-21 21:35:19', '2022-07-21 21:35:44', 0),
(423, 23910, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x747272727274, 421, 0, '161', NULL, NULL, NULL, '0', '2022-07-21 21:35:28', '2022-07-21 21:35:28', 0),
(424, 23910, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x667873736676636378, 421, 0, '161', NULL, NULL, NULL, '161', '2022-07-21 21:35:57', '2022-07-21 21:35:57', 0),
(425, 23910, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x617363632c7a7a7a78, 421, 0, '161', NULL, NULL, NULL, '161', '2022-07-21 21:36:55', '2022-07-21 21:36:55', 0),
(426, 23910, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x647866646464736464, 421, 0, '161', NULL, NULL, NULL, '161', '2022-07-21 21:37:06', '2022-07-21 21:37:06', 0),
(427, 23910, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x647866646464736464, 421, 0, '161', NULL, NULL, NULL, '161', '2022-07-21 21:37:07', '2022-07-21 21:37:07', 0),
(428, 23932, 'eng101', 1, 10, 10, 1, 1, 1, 5, 0x73686873, 0, 0, '117', NULL, NULL, NULL, NULL, '2022-07-22 09:32:00', '2022-07-22 09:32:00', 0),
(429, 23900, 'EN101', 1, 5, 10, 1, 1, 1, 3, 0x74646868636864686263636220616e64726f6964, 0, 0, '162', '160', '', NULL, NULL, '2022-07-22 16:46:35', '2022-07-26 12:01:29', 0),
(430, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xd988d8b1d8afd98a20d984d98a20d988d8b1d8afd98a, 399, 0, '162', NULL, NULL, NULL, '159', '2022-07-22 16:47:11', '2022-07-22 16:47:11', 0),
(431, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xd988d8b1d8afd98a20d984d98a20d988d8b1d8afd98a, 399, 0, '162', NULL, NULL, NULL, '159', '2022-07-22 16:47:13', '2022-07-22 16:47:13', 0),
(432, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xd988d8a7d8add8af20d988d8b1d8afd98a, 399, 0, '162', NULL, NULL, NULL, '159', '2022-07-22 16:47:47', '2022-07-22 16:47:47', 0),
(433, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xd988d8b1d8afd98a20d984d98a20d8a7d8b2d8b1d982d982, 399, 0, '162', NULL, NULL, NULL, '161', '2022-07-22 16:48:14', '2022-07-22 16:48:14', 0),
(434, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xd988d8b1d8afd98a20d984d98a20d8a7d8b2d8b1d982d982, 399, 0, '162', NULL, NULL, NULL, '161', '2022-07-22 16:48:15', '2022-07-22 16:48:15', 0),
(435, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e672073656520686f7720746865206d6573736167652077696c6c206265206475706c69636174652020696620636c69636b65642066617374, 399, 0, '162', NULL, NULL, NULL, '162', '2022-07-22 16:49:43', '2022-07-22 16:49:43', 0),
(436, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e672073656520686f7720746865206d6573736167652077696c6c206265206475706c69636174652020696620636c69636b65642066617374, 399, 0, '162', NULL, NULL, NULL, '162', '2022-07-22 16:49:43', '2022-07-22 16:49:43', 0),
(437, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e672073656520686f7720746865206d6573736167652077696c6c206265206475706c69636174652020696620636c69636b65642066617374, 399, 0, '162', NULL, NULL, NULL, '162', '2022-07-22 16:49:44', '2022-07-22 16:49:44', 0),
(438, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e672073656520686f7720746865206d6573736167652077696c6c206265206475706c69636174652020696620636c69636b65642066617374, 399, 0, '162', NULL, NULL, NULL, '162', '2022-07-22 16:49:44', '2022-07-22 16:49:44', 0),
(439, 23917, 'عربي ١٠١', 1, 10, 10, 2, 2, 2, 6, 0xd8acd985d98ad98ad98ad98ad984, 0, 0, '162', NULL, NULL, NULL, NULL, '2022-07-22 17:01:28', '2022-07-22 17:01:28', 0),
(440, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xd985d8b1d8add8a8, 332, 0, '117', NULL, NULL, NULL, '0', '2022-07-25 05:00:38', '2022-07-25 05:00:38', 0),
(441, 23913, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 336, 0, '163', NULL, NULL, NULL, '1', '2022-07-25 06:56:30', '2022-07-25 06:56:30', 0),
(442, 23913, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 336, 0, '163', NULL, NULL, NULL, '1', '2022-07-25 06:57:19', '2022-07-25 06:57:19', 0),
(443, 23913, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x68696969696969696969, 336, 0, '117', NULL, NULL, NULL, '151', '2022-07-25 09:23:16', '2022-07-25 09:23:16', 0),
(444, 23913, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x686969, 336, 0, '117', NULL, NULL, NULL, '117', '2022-07-25 09:23:22', '2022-07-25 09:23:22', 0),
(445, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 399, 0, '117', NULL, NULL, NULL, '159', '2022-07-25 09:58:57', '2022-07-25 09:58:57', 0),
(446, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x616c69, 429, 0, '164', '117', '', NULL, '0', '2022-07-25 11:45:45', '2022-07-26 07:58:16', 0),
(447, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x616c69, 429, 0, '164', NULL, NULL, NULL, '0', '2022-07-25 11:45:51', '2022-07-25 11:45:51', 0),
(448, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 429, 0, '165', NULL, NULL, NULL, '164', '2022-07-26 04:17:35', '2022-07-26 04:17:35', 0),
(449, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67, 399, 0, '165', NULL, NULL, NULL, '117', '2022-07-26 04:18:23', '2022-07-26 04:18:23', 0),
(450, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374747474, 429, 0, '166', NULL, NULL, NULL, '165', '2022-07-26 08:26:52', '2022-07-26 08:26:52', 0),
(451, 23938, 'عربي ١٠١', 1, 10, 10, 2, 2, 1, 3, 0xd8aed988d988d988d988d8b420d8aed988d988d988d988d988d988d988d988d988d8b4, 0, 0, '167', NULL, NULL, NULL, NULL, '2022-07-26 10:00:24', '2022-07-26 10:00:24', 0),
(452, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e676767206e65777765656565, 429, 0, '168', NULL, NULL, NULL, '164', '2022-07-26 10:52:21', '2022-07-26 10:52:21', 0),
(453, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x486579, 429, 0, '160', NULL, NULL, NULL, '0', '2022-07-28 06:40:32', '2022-07-28 06:40:32', 0),
(454, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x53756e69, 453, 0, '160', NULL, NULL, NULL, '160', '2022-07-28 06:40:40', '2022-07-28 06:40:40', 0),
(455, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x4c65747320706c6179, 450, 0, '160', NULL, NULL, NULL, '166', '2022-07-28 06:40:49', '2022-07-28 06:40:49', 0),
(456, 23900, 'Code101', 1, 10, 1, 2, 1, 1, 5, 0x487368646864686864, 0, 0, '130', '160', '', NULL, NULL, '2022-08-02 11:12:32', '2022-08-04 09:51:18', 0),
(457, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e6720626c75656565206e656520616c796f756d, 446, 0, '170', NULL, NULL, NULL, '164', '2022-08-04 13:30:40', '2022-08-04 13:30:40', 0),
(458, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e6720666f7220626c75656565656565206e69636b6e616d65, 453, 0, '170', NULL, NULL, NULL, '160', '2022-08-04 13:31:14', '2022-08-04 13:31:14', 0),
(459, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e6720666f7220626c75656565656565206e69636b6e616d65, 453, 0, '170', NULL, NULL, NULL, '160', '2022-08-04 13:31:15', '2022-08-04 13:31:15', 0),
(460, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x426c7565656520626c75657474, 452, 0, '170', NULL, NULL, NULL, '168', '2022-08-04 13:31:39', '2022-08-04 13:31:39', 0),
(461, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x426c7565656520626c75657474, 452, 0, '170', NULL, NULL, NULL, '168', '2022-08-04 13:31:40', '2022-08-04 13:31:40', 0),
(462, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657874696e67, 456, 0, '173', NULL, NULL, NULL, '0', '2022-08-05 11:11:49', '2022-08-05 11:11:49', 0),
(463, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657874696e67, 456, 0, '173', NULL, NULL, NULL, '0', '2022-08-05 11:11:50', '2022-08-05 11:11:50', 0),
(464, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e67676767, 462, 0, '173', NULL, NULL, NULL, '173', '2022-08-05 11:12:40', '2022-08-05 11:12:40', 0),
(465, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e67676767, 462, 0, '173', NULL, NULL, NULL, '173', '2022-08-05 11:12:42', '2022-08-05 11:12:42', 0),
(466, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x50696e6b2074657374696e6767676767, 456, 0, '173', NULL, NULL, NULL, '0', '2022-08-05 11:19:55', '2022-08-05 11:19:55', 0),
(467, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x50696e6b2074657374696e6767676767, 456, 0, '173', NULL, NULL, NULL, '0', '2022-08-05 11:19:55', '2022-08-05 11:19:55', 0),
(468, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e67, 462, 0, '130', NULL, NULL, NULL, '173', '2022-08-05 15:25:02', '2022-08-05 15:25:02', 0),
(469, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x746573747474, 467, 0, '160', NULL, NULL, NULL, '173', '2022-08-08 05:51:44', '2022-08-08 05:51:44', 0),
(470, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7465737474, 467, 0, '160', '160', '', NULL, '173', '2022-08-08 05:52:56', '2022-08-08 05:53:27', 0),
(471, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6865797979797965, 467, 0, '160', '160', '', NULL, '173', '2022-08-08 05:53:48', '2022-08-08 05:53:54', 0),
(472, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x5465737474, 471, 0, '160', NULL, NULL, NULL, '160', '2022-08-08 07:03:08', '2022-08-08 07:03:08', 0),
(473, 23936, 'Eng101', 1, 10, 10, 1, 1, 1, 3, 0x4f6e65206f66207468652062657374747474, 0, 0, '130', NULL, NULL, NULL, NULL, '2022-08-09 10:17:52', '2022-08-09 10:17:52', 0),
(474, 23939, 'Eng101', 1, 10, 10, 1, 1, 1, 3, 0x4767676767676767, 0, 0, '130', NULL, NULL, NULL, NULL, '2022-08-10 09:55:59', '2022-08-10 09:55:59', 0),
(475, 23900, 'eng101', 1, 9, 10, 1, 2, 1, 3, 0x676f6f642074656163686572, 0, 0, '175', '', '175', '175', NULL, '2022-08-18 06:04:32', '2022-08-18 06:05:01', 0),
(476, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7265706c696573, 475, 0, '175', '', '175', '175', '0', '2022-08-18 06:04:49', '2022-08-18 06:05:03', 0),
(477, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x636f6e6e656e74, 475, 0, '175', NULL, NULL, NULL, '175', '2022-08-18 06:04:57', '2022-08-18 06:04:57', 0),
(478, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e6720313920617567, 476, 0, '117', NULL, NULL, NULL, '175', '2022-08-19 04:36:23', '2022-08-19 04:36:23', 0),
(479, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374696e67207265706c79, 478, 0, '117', NULL, NULL, NULL, '117', '2022-08-19 04:36:33', '2022-08-19 04:36:33', 0),
(480, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7265706c79, 475, 0, '117', NULL, NULL, NULL, '0', '2022-08-19 04:36:43', '2022-08-19 04:36:43', 0),
(481, 23900, 'en101', 1, 10, 10, 1, 1, 2, 3, 0x74657374696e6267, 0, 0, '179', NULL, NULL, '180', NULL, '2022-08-19 04:39:43', '2022-08-23 12:52:48', 0),
(482, 23916, 'Eng101', 1, 10, 10, 1, 1, 1, 3, 0x47726561742074656163686572, 0, 0, '179', NULL, NULL, NULL, NULL, '2022-08-19 04:58:12', '2022-08-19 04:58:12', 0),
(483, 23916, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e67, 482, 0, '179', NULL, NULL, NULL, '0', '2022-08-19 05:05:48', '2022-08-19 05:05:48', 0),
(484, 23916, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e67, 483, 0, '179', NULL, NULL, NULL, '179', '2022-08-19 05:06:02', '2022-08-19 05:06:02', 0),
(485, 23900, 'ENG101', 1, 10, 10, 1, 1, 2, 3, 0x54657374696e67206e65772072617465, 0, 0, '180', '', '180', '180', NULL, '2022-08-21 04:24:25', '2022-08-22 09:48:51', 0),
(486, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e67, 475, 0, '180', NULL, NULL, NULL, '0', '2022-08-21 04:26:03', '2022-08-21 04:26:03', 0),
(487, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x5265706c797920746f2070696e6b79, 447, 0, '180', NULL, NULL, NULL, '164', '2022-08-21 04:26:20', '2022-08-21 04:26:20', 0),
(488, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x68696969, 485, 0, '1', NULL, NULL, NULL, '0', '2022-08-22 05:53:17', '2022-08-22 05:53:17', 0),
(489, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x68696969, 488, 0, '1', NULL, NULL, NULL, '1', '2022-08-22 05:54:20', '2022-08-22 05:54:20', 0),
(490, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x48657265, 485, 0, '117', NULL, NULL, '175', '0', '2022-08-22 14:05:02', '2022-08-25 07:36:49', 0),
(491, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x48657265, 485, 0, '117', NULL, NULL, NULL, '0', '2022-08-22 14:05:17', '2022-08-22 14:05:17', 0),
(492, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x686969, 206, 0, '1', NULL, NULL, NULL, '0', '2022-08-23 04:55:34', '2022-08-23 04:55:34', 0),
(493, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x68697472667968, 492, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:04:17', '2022-08-23 05:04:17', 0),
(494, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7465737432, 206, 0, '1', NULL, NULL, NULL, '0', '2022-08-23 05:08:30', '2022-08-23 05:08:30', 0),
(495, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x617361736173, 206, 0, '1', NULL, NULL, NULL, '0', '2022-08-23 05:09:32', '2022-08-23 05:09:32', 0),
(496, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x68656c6c6f, 206, 0, '1', NULL, NULL, NULL, '0', '2022-08-23 05:10:04', '2022-08-23 05:10:04', 0),
(497, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x68656c6c6c2075736572, 496, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:10:22', '2022-08-23 05:10:22', 0),
(498, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7573657232, 496, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:12:29', '2022-08-23 05:12:29', 0),
(499, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x686969, 485, 0, '175', NULL, NULL, NULL, '1', '2022-08-23 05:13:21', '2022-08-23 05:13:21', 0),
(500, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x686969, 485, 0, '175', NULL, NULL, NULL, '117', '2022-08-23 05:13:28', '2022-08-23 05:13:28', 0),
(501, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x68656c6f207573657232, 498, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:15:08', '2022-08-23 05:15:08', 0),
(502, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x647366647366736466, 501, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:15:21', '2022-08-23 05:15:21', 0),
(503, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x646667646667646667, 502, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:16:13', '2022-08-23 05:16:13', 0),
(504, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x646667736466647366, 503, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:16:47', '2022-08-23 05:16:47', 0),
(505, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6164736164617364, 504, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:17:41', '2022-08-23 05:17:41', 0),
(506, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x78647678646376786376, 503, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:18:05', '2022-08-23 05:18:05', 0),
(507, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x68656c6c6f, 485, 0, '1', NULL, NULL, NULL, '0', '2022-08-23 05:18:45', '2022-08-23 05:18:45', 0),
(508, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x68656c6c6f, 507, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:18:56', '2022-08-23 05:18:56', 0),
(509, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x68656c6c6f77, 506, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:19:53', '2022-08-23 05:19:53', 0),
(510, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x736164736164736164, 509, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:20:36', '2022-08-23 05:20:36', 0),
(511, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6173647361647361647361, 510, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:21:09', '2022-08-23 05:21:09', 0),
(512, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x68656c6c6f, 511, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:25:57', '2022-08-23 05:25:57', 0),
(513, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x77647177647164, 512, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:55:39', '2022-08-23 05:55:39', 0),
(514, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7863667664, 208, 0, '1', NULL, NULL, NULL, '72', '2022-08-23 05:58:09', '2022-08-23 05:58:09', 0),
(515, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x78646667736465, 513, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:58:21', '2022-08-23 05:58:21', 0),
(516, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x6567656765, 515, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:58:41', '2022-08-23 05:58:41', 0),
(517, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x747268727468, 516, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 06:00:47', '2022-08-23 06:00:47', 0),
(518, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374, 517, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 09:31:17', '2022-08-23 09:31:17', 0),
(519, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x746573742075736572, 206, 0, '1', NULL, NULL, NULL, '0', '2022-08-23 09:31:29', '2022-08-23 09:31:29', 0),
(520, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374, 519, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 09:31:37', '2022-08-23 09:31:37', 0),
(521, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374, 206, 0, '1', NULL, NULL, NULL, '0', '2022-08-23 09:31:56', '2022-08-23 09:31:56', 0),
(522, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374, 206, 0, '1', NULL, NULL, NULL, '0', '2022-08-23 09:32:28', '2022-08-23 09:32:28', 0),
(523, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374, 420, 0, '1', NULL, NULL, NULL, '0', '2022-08-23 09:37:24', '2022-08-23 09:37:24', 0),
(524, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x5472757374696e67, 508, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 10:17:11', '2022-08-23 10:17:11', 0),
(525, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x5465737436, 508, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 10:17:21', '2022-08-23 10:17:21', 0),
(526, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x4772656174, 481, 0, '117', NULL, NULL, NULL, '0', '2022-08-23 11:39:18', '2022-08-23 11:39:18', 0),
(527, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x436865636b, 486, 0, '117', NULL, NULL, NULL, '180', '2022-08-23 11:39:47', '2022-08-23 11:39:47', 0),
(528, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x74657374, 481, 0, '1', NULL, NULL, NULL, '0', '2022-08-23 11:40:55', '2022-08-23 11:40:55', 0),
(529, 23900, 'En101', 2, 10, 10, 1, 1, 2, 3, '', 0, 0, '181', NULL, NULL, NULL, NULL, '2022-08-24 04:24:00', '2022-08-24 04:24:00', 0),
(532, 23961, '1234', 1, 2, 2, 1, 1, 1, 3, 0x4161616161, 0, 0, '1', NULL, NULL, NULL, NULL, '2022-08-25 06:45:14', '2022-08-25 06:45:14', 0),
(533, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x647366736466, 485, 0, '1', NULL, NULL, NULL, '0', '2022-08-25 13:36:53', '2022-08-25 13:36:53', 0),
(534, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x646664666466, 525, 0, '1', NULL, NULL, NULL, '1', '2022-08-25 13:37:06', '2022-08-25 13:37:06', 0),
(535, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x647366647366647366, 525, 0, '1', NULL, NULL, NULL, '1', '2022-08-25 13:37:14', '2022-08-25 13:37:14', 0),
(536, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x68656c6c6f, 488, 0, '1', NULL, NULL, NULL, '1', '2022-08-25 13:43:52', '2022-08-25 13:43:52', 0),
(537, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x68656c6c6f32, 535, 0, '1', NULL, NULL, NULL, '1', '2022-08-25 13:44:17', '2022-08-25 13:44:17', 0),
(538, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374, 529, 0, '117', NULL, NULL, NULL, '0', '2022-08-25 13:49:38', '2022-08-25 13:49:38', 0),
(539, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374, 488, 0, '117', NULL, NULL, NULL, '1', '2022-08-25 13:49:51', '2022-08-25 13:49:51', 0),
(540, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e676720626c756520626c7565, 500, 0, '130', NULL, NULL, NULL, '175', '2022-08-26 16:41:57', '2022-08-26 16:41:57', 0),
(541, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x54657374696e67676767676720626c75656565, 539, 0, '130', NULL, NULL, NULL, '117', '2022-08-26 16:42:34', '2022-08-26 16:42:34', 0),
(542, 23909, 'En101', 1, 10, 10, 1, 1, 1, 3, 0x45656565, 0, 0, '130', NULL, NULL, NULL, NULL, '2022-08-26 16:59:17', '2022-08-26 16:59:17', 0),
(543, 23900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x47736773737673, 488, 0, '182', NULL, NULL, NULL, '1', '2022-08-29 10:18:50', '2022-08-29 10:18:50', 0),
(544, 23951, 'EN101', 2, 10, 1, 1, 2, 2, 3, 0x536f20536f, 0, 0, '130', NULL, NULL, NULL, NULL, '2022-08-29 11:11:41', '2022-08-29 11:11:41', 0),
(545, 23941, 'LP107', 2, 7, 4, 2, 2, 1, 7, '', 0, 0, '41', '', '41', NULL, NULL, '2022-08-29 17:21:16', '2022-08-29 17:21:40', 0);

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `school_code`, `country_code`, `lang_code`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'dfgfd', 'AM01', 'AM', 1, 1, 0, '2021-06-24 01:53:57', '2021-06-24 02:29:29'),
(2, 'fdfdfdf', 'AM02', 'AM', 1, 1, 0, '2021-06-24 02:15:01', '2021-07-05 05:47:06'),
(3, 'StAnselsms', 'IN01', 'IN', 1, 1, 0, '2021-07-14 02:15:38', '2021-07-14 02:15:38'),
(4, 'سوبوده', 'IN02', 'IN', 2, 0, 1, '2021-07-16 04:49:23', '2021-09-05 19:08:34'),
(5, 'Sulaiman AlAdsani High School', 'KWSCL01', 'KW', 2, 1, 0, '2021-07-19 04:14:47', '2021-07-19 04:14:47'),
(6, 'Alrajhi High School', 'SASCL01', 'SA', 1, 1, 0, '2021-07-19 04:14:47', '2021-07-19 04:14:47'),
(7, 'Dayanad Bal Niketan', 'INSCL03', 'IN', 1, 1, 0, '2021-07-28 01:30:15', '2021-07-28 01:30:15'),
(8, 'مدرسة عسكرية', 'AFSCL01', 'AF', 2, 1, 1, '2021-07-28 01:31:08', '2021-09-05 19:08:34'),
(9, 'Sulaiman AlAdsani High School', 'INSCL04', 'IN', 1, 1, 0, '2021-08-02 05:05:11', '2021-08-02 05:05:11'),
(10, 'Sulaiman AlAdsanii High School', 'KWSCL02', 'KW', 1, 1, 0, '2022-05-12 09:38:12', '2022-05-12 09:38:12'),
(11, 'Alrajhi Highi School', 'SASCL02', 'SA', 1, 1, 0, '2022-05-12 09:38:12', '2022-05-12 09:38:12');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_created` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title_en`, `title_ar`, `image`, `description_en`, `description_ar`, `country`, `link`, `date_created`, `is_delete`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Collegator test content', 'محتوى اختبار Collegator', '1651647224.png', '<p style=\"text-align: justify;\">Building a website is an exercise of willpower. The bells and whistles of the design process are tempting to focus on, but compelling content is what makes a website work for your business.&nbsp;</p>', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"rtl\" data-placeholder=\"Translation\"><span class=\"Y2IQFc\" lang=\"ar\">Collegator موقع على شبكة الإنترنت هو ممارسة لقوة الإرادة. من المغري التركيز على أجراس وصفارات عملية التصميم ، ولكن المحتوى المقنع هو ما يجعل موقع الويب يعمل لصالح عملك.\r\n</span></pre>', 101, 'https://www.w3schools.com/', NULL, 0, 1, '2021-07-13 03:37:27', '2022-05-06 07:09:15'),
(2, 'frontend banner a', 'frontend banner a', '1630995065.png', '<p>frontend banner afrontend banner afrontend banner afrontend banner afrontend banner afrontend banner afrontend banner afrontend banner afrontend banner a</p>', '<p>frontend banner afrontend banner afrontend banner afrontend banner afrontend banner afrontend banner afrontend banner afrontend banner afrontend banner afrontend banner afrontend banner afrontend banner afrontend banner afrontend banner afrontend banner afrontend banner afrontend banner afrontend banner afrontend banner afrontend banner afrontend banner afrontend banner afrontend banner afrontend banner a</p>', NULL, NULL, '07-September-2021', 0, 0, '2021-09-07 06:11:05', '2021-10-21 02:42:37'),
(3, 'Alooo', 'الووووو', '1634258846.jpg', 'English', 'عربي', 194, 'Http://google.com', '15-October-2021', 0, 0, '2021-10-15 00:47:26', '2021-10-19 07:00:59'),
(4, 'aaaa', 'qqqqq', '1634626801.jpg', 'aaa', 'qqqq', 101, 'https://www.google.com', '19-October-2021', 0, 1, '2021-10-19 07:00:01', '2021-10-21 02:42:33'),
(5, 'Testing sliders', 'no arabic', '1637579188.jpg', '<p>Lorium ipsum Lorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsum</p>', '<p>Lorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsumLorium ipsum</p>', 101, 'https://www.youtube.com/https://www.youtube.com/https://www.youtube.com/https://www.youtube.com/https://www.youtube.com/https://www.youtube.com/https://www.youtube.com/https://www.youtube.com/https://www.youtube.com/https://www.youtube.com/https://www.you', '22-November-2021', 0, 1, '2021-11-22 11:06:28', '2021-11-22 11:06:28'),
(6, 'Test Slider by Dev', 'اختبار المتزلج بواسطة Dev', '1651648758.jpg', '<p>This is to inform you that the page is for testing only.&nbsp;</p>', '<p>هذا لإبلاغك أن الصفحة مخصصة للاختبار فقط.</p>', 101, 'http://collegator.devtechnosys.info/home', '04-May-2022', 0, 1, '2022-05-04 07:19:18', '2022-05-04 07:19:18'),
(7, 'Google ad', 'جوجل', '1651692461.png', '<p>Google ads</p>', '<p>Google ads</p>', 117, 'https://www.rentcafe.com/', '05-May-2022', 0, 1, '2022-05-04 19:27:41', '2022-05-04 19:27:41'),
(8, 'dev test', 'edev test', '1653312385.png', '<div>\r\n<div>sliderTable sliderTable sliderTable sliderTable sliderTable</div>\r\n</div>\r\n<p>&nbsp;</p>', '<div>\r\n<div>sliderTable</div>\r\n</div>\r\n<div>\r\n<div>sliderTable</div>\r\n</div>\r\n<div>\r\n<div>sliderTable</div>\r\n</div>\r\n<div>\r\n<div>sliderTable</div>\r\n</div>\r\n<div>\r\n<div>sliderTable</div>\r\n</div>\r\n<div>\r\n<div>sliderTable</div>\r\n</div>\r\n<p>&nbsp;</p>', 117, 'https://www.w3schools.com/', '23-May-2022', 0, 1, '2022-05-23 13:26:25', '2022-05-27 07:40:09'),
(9, 'dev test slider 2', 'slider india', '1653375621.jpg', '<p>dev test slider 2</p>', '<p>dev test slider 2</p>', 117, 'https://www.w3schools.com/', '24-May-2022', 0, 1, '2022-05-24 07:00:21', '2022-05-24 07:00:21'),
(10, 'Welcome hala', 'Welcome hala', '1653671218.png', '<p>Hello</p>', '<p>hello</p>', 117, 'https://www.bathandbodyworks.com.kw/en/shop-body-care/fragrance/', '27-May-2022', 0, 1, '2022-05-27 17:06:58', '2022-05-28 13:20:43'),
(11, 'Ttt', 'Ttt', '1653735600.jpg', '<p>Ttt</p>', '<p>Ttt</p>', 117, 'https://the3beez.com/product/24', '28-May-2022', 0, 1, '2022-05-28 11:00:00', '2022-05-30 04:41:42'),
(12, 'test by dev', 'dev test', '1653903132.jpg', '<p>sdfs df sdf sdf</p>', '<p>&nbsp;sd fsd fsd fsd fsd fsd f</p>', 117, '', '30-May-2022', 0, 1, '2022-05-30 09:32:12', '2022-05-30 09:32:12'),
(13, 'dev test', 'dev test', '1653906308.jpg', '', '', 117, 'https://www.w3schools.com/', '30-May-2022', 0, 1, '2022-05-30 10:25:08', '2022-05-30 10:27:50'),
(14, 'Dshdasha', 'Dshdasha', '1653907202.png', '', '', 117, '', '30-May-2022', 0, 1, '2022-05-30 10:40:02', '2022-05-30 10:40:02');

-- --------------------------------------------------------

--
-- Table structure for table `social_messaging`
--

CREATE TABLE `social_messaging` (
  `id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `channel_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '	0: message, 1:instruction',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_messaging`
--

INSERT INTO `social_messaging` (`id`, `message`, `channel_id`, `sender_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'hello every one', 1, 2, 0, '2022-03-16 14:48:08', '2022-03-16 14:48:08'),
(2, '123', 12, 15, 0, '2022-04-28 15:14:56', '2022-04-28 15:14:56'),
(3, '123', 12, 15, 0, '2022-04-28 15:14:56', '2022-04-28 15:14:56'),
(4, '123', 12, 15, 0, '2022-04-28 15:15:08', '2022-04-28 15:15:08'),
(5, '123', 12, 15, 0, '2022-04-28 15:15:08', '2022-04-28 15:15:08'),
(6, '123', 12, 15, 0, '2022-04-28 15:15:16', '2022-04-28 15:15:16'),
(7, '123', 12, 15, 0, '2022-04-28 15:15:25', '2022-04-28 15:15:25'),
(8, 'cfgfg', 11, 15, 0, '2022-04-28 15:15:59', '2022-04-28 15:15:59'),
(9, 'rgarg', 1, 15, 0, '2022-04-28 15:18:41', '2022-04-28 15:18:41'),
(10, 'hello', 1, 15, 0, '2022-04-28 15:20:38', '2022-04-28 15:20:38'),
(11, 'hello', 1, 15, 0, '2022-04-28 15:21:27', '2022-04-28 15:21:27'),
(12, 'hey', 1, 15, 0, '2022-04-28 15:21:50', '2022-04-28 15:21:50'),
(13, '123', 1, 15, 0, '2022-04-28 15:23:20', '2022-04-28 15:23:20'),
(14, 'ddgg', 1, 2, 0, '2022-04-28 15:27:31', '2022-04-28 15:27:31'),
(15, 'dcgf', 1, 2, 0, '2022-04-28 15:28:46', '2022-04-28 15:28:46'),
(16, 'dbh', 1, 2, 0, '2022-04-28 15:37:00', '2022-04-28 15:37:00'),
(17, 'rt', 1, 15, 0, '2022-04-28 15:49:36', '2022-04-28 15:49:36'),
(18, 'tyf', 1, 2, 0, '2022-04-28 15:49:50', '2022-04-28 15:49:50'),
(19, 'mmm', 1, 2, 0, '2022-04-28 15:49:55', '2022-04-28 15:49:55'),
(20, 'ggf', 1, 15, 0, '2022-04-28 15:50:05', '2022-04-28 15:50:05'),
(21, 'dsfcds', 1, 15, 0, '2022-04-28 18:58:43', '2022-04-28 18:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `photo_video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_video_type` int(11) NOT NULL COMMENT '1=>photo, 2=>video',
  `privacy` int(11) NOT NULL COMMENT '1=>followers, 2=>all',
  `created_time` time NOT NULL,
  `user_views` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_time_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_delete` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `user_id`, `photo_video`, `photo_video_type`, `privacy`, `created_time`, `user_views`, `user_time_detail`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 24, 'mov_bbb.mp4', 2, 1, '17:30:08', '3', '{\"1\":\"17:30:08\",\"2\":\"18:30:08\",\"23\":\"17:45:08\"}', '0', '2021-09-21 07:00:47', '2021-09-23 07:14:04'),
(2, 28, 'university1631190687.jpg', 1, 1, '17:30:08', '1', '{\"25\":\"17:30:08\"}', '1', '2021-09-22 07:00:52', '2021-09-25 11:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `story_reports`
--

CREATE TABLE `story_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `story_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `is_reported` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `story_reports`
--

INSERT INTO `story_reports` (`id`, `story_id`, `user_id`, `reason`, `is_delete`, `is_reported`, `created_at`, `updated_at`) VALUES
(1, 1, 22, 'vulguraity', 1, 1, '2021-09-21 07:56:58', '2021-09-21 07:57:02'),
(2, 1, 23, 'vulguraity again', 0, 1, '2021-09-21 07:56:58', '2021-09-21 07:57:02'),
(3, 2, 23, 'vulguraity again', 0, 1, '2021-09-21 07:56:58', '2021-09-21 07:57:02'),
(4, 1, 26, 'vulguraity again by 26', 0, 1, '2021-09-21 07:56:58', '2021-09-21 07:57:02');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_code` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `school_code`, `subject_code`, `country_code`, `lang_code`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'dfdf', 'AM02', 'AM0201', NULL, 1, 1, 1, '2021-06-24 04:24:51', '2021-06-24 08:07:27'),
(2, 'dfd', 'AM02', 'AM0202', NULL, 1, 1, 1, '2021-06-24 23:21:21', '2021-09-02 13:28:09'),
(3, 'Social Science', 'IN01', 'IN0101', NULL, 1, 1, 0, '2021-07-14 02:15:57', '2021-07-14 02:15:57'),
(4, 'مدرسة سوبوده', 'IN02', 'IN0201', NULL, 2, 0, 1, '2021-07-16 04:49:53', '2021-09-05 19:08:51'),
(5, 'MATH', 'KWSCL01', 'KWSCL0101', NULL, NULL, 1, 0, '2021-07-19 04:14:55', '2021-07-19 04:14:55'),
(6, 'SCIENCE', 'SASCL01', 'SASCL0101', NULL, NULL, 1, 0, '2021-07-19 04:14:55', '2021-07-19 04:14:55'),
(7, 'History', 'INSCL03', 'INSCL0301', NULL, 1, 1, 0, '2021-07-28 01:31:48', '2021-07-28 01:31:48'),
(8, 'Maths', 'AFSCL01', 'AFSCL0101', NULL, 2, 1, 1, '2021-07-28 01:31:56', '2021-09-05 19:08:51'),
(9, 'History', 'IN01', 'IN0102', NULL, 1, 1, 0, '2021-08-02 05:48:04', '2021-08-02 05:48:04');

-- --------------------------------------------------------

--
-- Table structure for table `sub_admins`
--

CREATE TABLE `sub_admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_editor` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_access` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT 0,
  `is_delete` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_admins`
--

INSERT INTO `sub_admins` (`id`, `name`, `email`, `password`, `is_editor`, `remember_token`, `created_at`, `updated_at`, `user_access`, `status`, `is_delete`) VALUES
(1, 'poorvi jain', 'poorvi@getnada.com', '$2y$10$WMnqDpIjKR0cYMnx8xpFt.n00Mv2Hma0/i7bGYOFwMpEwCS5mQ7Fe', 0, 'vB5V6bYfYNNKGmYcaTYOkVJNOU4haOKSRnE0rAmKWpNjIgHNhsMFcnLc2Zy8', '2021-06-03 01:33:49', '2021-06-03 01:33:49', '1', 0, '0'),
(4, 'Deepanshu ji', 'Deepa@getnada.com', '$2y$10$.4/ctUHXvWd.tenwVwWNIuL.5HSR2AbeaknROAg47y6QB4KMHCLF2', 0, NULL, '2021-06-04 04:43:39', '2021-06-07 01:38:07', '0', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT 'teacher:1,professor:2,university:3\r\n',
  `teacher_professor_id` int(11) DEFAULT NULL,
  `suggestion` longtext DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_approved` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `is_delete` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suggestions`
--

INSERT INTO `suggestions` (`id`, `type`, `teacher_professor_id`, `suggestion`, `created_at`, `updated_at`, `is_approved`, `user_id`, `is_delete`) VALUES
(4, '3', 16, 'as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd as das dasd', '2021-08-17 15:18:06', '2022-06-17 11:56:13', 0, 0, 0);
INSERT INTO `suggestions` (`id`, `type`, `teacher_professor_id`, `suggestion`, `created_at`, `updated_at`, `is_approved`, `user_id`, `is_delete`) VALUES
(5, '3', 8, 'ddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjkddfgfffffffffffffffffbfgsjkdbfjksdbfjksdbfjksbdkfjbskjdbfkjsdbfkjsdbkjfbsdkjbfjk', '2021-08-17 17:08:27', '2022-06-17 11:56:12', 0, 0, 0),
(8, '3', 10, 'sdfsdf sdf sdfsdfsdf sdf sdfsdfsdf sdf sdfsdfsdf sdf sdfsdfsdf sdf sdfsdfsdf sdf sdfsdfsdf sdf sdfsdfsdf sdf sdfsdfsdf sdf sdfsdfsdf sdf sdfsdfsdf sdf sdfsdfsdf sdf sdfsdfsdf sdf sdfsdfsdf sdf sdfsdfs', '2021-08-26 18:25:34', '2022-06-17 11:56:10', 0, 0, 0),
(20, '1', 3, 'You need to change the name', '2021-11-01 12:33:26', '2021-11-01 12:33:26', 0, 88, 0),
(21, '1', 26, 'you need to cahnge name', '2021-11-01 12:34:25', '2021-11-01 12:34:25', 0, 88, 0),
(22, '1', 26, 'you need to change teacher', '2021-11-01 12:36:01', '2021-11-01 12:36:01', 0, 88, 0),
(23, '1', 3, 'hiii', '2021-11-01 12:43:26', '2021-11-01 12:43:26', 0, 88, 0),
(24, '1', 3, 'hiiii', '2021-11-01 12:45:28', '2021-11-01 12:45:28', 0, 88, 0),
(26, '3', 4, 'professor testing', '2021-11-01 12:56:54', '2021-11-01 12:56:54', 0, 88, 0),
(27, '1', 4, 'great', '2021-11-01 13:03:55', '2021-11-01 13:03:55', 0, 88, 0),
(28, '3', 4, 'professor testing', '2021-11-01 14:38:11', '2021-11-01 14:38:11', 0, 88, 0),
(29, '1', 4, 'Need to change name', '2021-11-09 10:07:28', '2021-11-09 10:07:28', 0, 79, 0),
(30, '1', 4, 'hello', '2021-11-09 11:47:57', '2021-11-09 11:47:57', 0, 79, 0),
(31, '1', 4, 'need to change thuis', '2021-11-11 17:39:35', '2021-11-11 17:39:35', 0, 79, 0),
(32, '1', 27, 'great', '2021-11-11 17:42:28', '2021-11-11 17:42:28', 0, 79, 0),
(39, '1', 40, 'poloooo hshsh shhshs hshsh shsh', '2022-05-19 11:12:19', '2022-05-19 11:12:19', 0, 128, 0),
(40, '1', 27, 'great', '2022-05-19 11:14:01', '2022-05-19 11:14:01', 0, 111, 0),
(41, '1', 40, 'poush shdhdhd dhhshsh shhshshs hshshs hdhsh', '2022-05-19 11:14:09', '2022-05-19 11:14:09', 0, 128, 0),
(42, '1', 27, 'grat asa', '2022-05-19 11:14:20', '2022-05-19 11:14:20', 0, 111, 0),
(43, '1', 27, 'gret addas', '2022-05-19 11:17:02', '2022-05-19 11:17:02', 0, 111, 0),
(44, '1', 4, 'poisjsj dijdjdjd jdjsjdj jdjdjdj dbjdjd jdidj djdjdj d djdj', '2022-05-19 11:17:35', '2022-05-19 11:17:35', 0, 128, 0),
(45, '1', 27, 'asdsad', '2022-05-19 11:18:44', '2022-05-19 11:18:44', 0, 111, 0),
(46, '1', 3, 'great asd', '2022-05-19 11:20:28', '2022-05-19 11:20:28', 0, 111, 0),
(47, '1', 28, 'grata dsa', '2022-05-19 11:23:33', '2022-05-19 11:23:33', 0, 111, 0),
(48, '1', 27, 'grea dsdas', '2022-05-19 11:25:13', '2022-05-19 11:25:13', 0, 111, 0),
(49, '1', 27, 'grea ad', '2022-05-19 11:25:20', '2022-05-19 11:25:20', 0, 111, 0),
(50, '1', 4, 'grerafasdd', '2022-05-19 11:28:53', '2022-05-19 11:28:53', 0, 111, 0),
(51, '1', 8, 'geafa d', '2022-05-19 11:29:10', '2022-05-19 11:29:10', 0, 111, 0),
(52, '1', 27, 'gea addas sdasd asd', '2022-05-19 11:29:38', '2022-05-19 11:29:38', 0, 111, 0),
(53, '1', 27, 'great asd daasd', '2022-05-19 11:31:06', '2022-05-19 11:31:06', 0, 111, 0),
(54, '1', 27, 'SDASD', '2022-05-19 11:32:23', '2022-05-19 11:32:23', 0, 111, 0),
(55, '1', 27, 'sadsad', '2022-05-19 11:33:05', '2022-05-19 11:33:05', 0, 111, 0),
(56, '1', 27, 'adsdsa', '2022-05-19 11:34:15', '2022-05-19 11:34:15', 0, 111, 0),
(60, '1', 41, 'bzbzbsbs dbdjjdjd dhdjdj snjdjd dbdbdj', '2022-05-19 12:06:54', '2022-05-19 12:06:54', 0, 128, 0),
(61, '1', 4, 'snsndndndj djdjdjd jdjd', '2022-05-19 12:07:26', '2022-05-19 12:07:26', 0, 128, 0),
(62, '1', 9, 'ensndnxndnnd djdjjdnd', '2022-05-19 12:08:54', '2022-05-19 12:08:54', 0, 128, 0),
(63, '1', 29, 'اسمه خالد العبدالجليل', '2022-05-26 14:10:14', '2022-05-26 14:10:14', 0, 129, 0),
(65, '2', 23900, 'Testingg 21-6-22', '2022-06-21 13:54:15', '2022-06-21 13:54:15', 0, 72, 0),
(66, '2', 23900, 'testing correction 30-6-2022', '2022-06-30 13:10:40', '2022-06-30 13:10:40', 0, 133, 0),
(67, '1', 18, 'testing correction', '2022-06-30 19:50:18', '2022-06-30 19:50:18', 0, 136, 0),
(68, '1', 18, 'testing correction', '2022-06-30 19:50:19', '2022-06-30 19:50:19', 0, 136, 0),
(69, '1', 18, 'testing correction', '2022-06-30 19:50:19', '2022-06-30 19:50:19', 0, 136, 0),
(70, '1', 18, 'testinggf correction', '2022-06-30 19:50:52', '2022-06-30 19:50:52', 0, 136, 0),
(71, '1', 18, 'testinggf correction', '2022-06-30 19:50:52', '2022-06-30 19:50:52', 0, 136, 0),
(72, '1', 18, 'testinggf correction', '2022-06-30 19:50:53', '2022-06-30 19:50:53', 0, 136, 0),
(73, '1', 18, 'testinggf correction', '2022-06-30 19:50:53', '2022-06-30 19:50:53', 0, 136, 0),
(74, '2', 23900, 'sdsadasd asd', '2022-07-01 12:07:32', '2022-07-01 12:07:32', 0, 1, 0),
(75, '2', 23900, 'sdasdasad', '2022-07-01 12:10:05', '2022-07-01 12:10:05', 0, 1, 0),
(76, '2', 23900, 'testing', '2022-07-01 23:42:02', '2022-07-01 23:42:02', 0, 140, 0),
(77, '2', 23900, 'testing correction 5-7-2022', '2022-07-05 17:52:12', '2022-07-05 17:52:12', 0, 142, 0),
(78, '1', 23, 'hhnh', '2022-07-07 18:45:38', '2022-07-07 18:45:38', 0, 107, 0),
(79, '1', 52, 'bsbs', '2022-07-07 18:46:20', '2022-07-07 18:46:20', 0, 107, 0),
(80, '1', 52, 'bsbs', '2022-07-07 18:46:20', '2022-07-07 18:46:20', 0, 107, 0),
(81, '2', 23900, 'testing', '2022-07-07 20:07:16', '2022-07-07 20:07:16', 0, 149, 0),
(82, '1', 21, 'great', '2022-07-08 11:12:29', '2022-07-08 11:12:29', 0, 1, 0),
(83, '2', 23900, 'hello ahahah', '2022-07-08 11:50:37', '2022-07-08 11:50:37', 0, 117, 0),
(84, '1', 21, 'freahh', '2022-07-08 11:52:50', '2022-07-08 11:52:50', 0, 117, 0),
(85, '1', 4, 'hhj gghn bb', '2022-07-08 11:57:35', '2022-07-08 11:57:35', 0, 1, 0),
(86, '2', 23900, 'sdfsf', '2022-07-08 13:05:27', '2022-07-08 13:05:27', 0, 1, 0),
(87, '2', 23900, 'great day', '2022-07-08 14:27:55', '2022-07-08 14:27:55', 0, 1, 0),
(88, '1', 21, 'great day', '2022-07-08 14:29:40', '2022-07-08 14:29:40', 0, 1, 0),
(89, '1', 4, 'tytttt', '2022-07-08 14:30:43', '2022-07-08 14:30:43', 0, 1, 0),
(90, '1', 29, 'testing', '2022-07-09 01:10:09', '2022-07-09 01:10:09', 0, 150, 0),
(91, '1', 18, 'testing', '2022-07-09 01:12:06', '2022-07-09 01:12:06', 0, 150, 0),
(92, '2', 23913, 'great', '2022-07-12 11:05:20', '2022-07-12 11:05:20', 0, 151, 0),
(93, '2', 23913, 'great dag', '2022-07-12 11:17:46', '2022-07-12 11:17:46', 0, 151, 0),
(94, '1', 49, 'fake teacher', '2022-07-12 11:25:18', '2022-07-12 11:25:18', 0, 151, 0),
(95, '1', 4, 'yoyo', '2022-07-12 11:28:37', '2022-07-12 11:28:37', 0, 151, 0),
(96, '1', 56, 'fale', '2022-07-12 12:08:24', '2022-07-12 12:08:24', 0, 151, 0),
(97, '2', 23927, 'true', '2022-07-12 15:32:39', '2022-07-12 15:32:39', 0, 151, 0),
(98, '1', 58, 'sert', '2022-07-12 15:36:39', '2022-07-12 15:36:39', 0, 151, 0),
(99, '1', 18, 'testing university correction', '2022-07-12 18:19:44', '2022-07-12 18:19:44', 0, 153, 0),
(100, '2', 23931, 'testing', '2022-07-13 19:45:28', '2022-07-13 19:45:28', 0, 154, 0),
(101, '1', 3802, 'testing', '2022-07-13 21:07:08', '2022-07-13 21:07:08', 0, 154, 0),
(102, '2', 23900, 'testing correction professor 15-7-2022', '2022-07-15 17:34:15', '2022-07-15 17:34:15', 0, 155, 0),
(103, '2', 23900, 'deepanshu testing', '2022-07-21 11:41:59', '2022-07-21 11:41:59', 0, 160, 0),
(104, '1', 29, 'testinggg', '2022-07-22 02:52:34', '2022-07-22 02:52:34', 0, 161, 0),
(105, '1', 29, 'hxhhd', '2022-07-22 02:53:13', '2022-07-22 02:53:13', 0, 161, 0),
(106, '2', 23932, 'ddd', '2022-07-22 15:02:17', '2022-07-22 15:02:17', 0, 117, 0),
(107, '2', 23939, 'testing', '2022-07-26 16:23:41', '2022-07-26 16:23:41', 0, 168, 0),
(108, '2', 23900, 'Ggggggjdh', '2022-08-08 19:31:30', '2022-08-08 19:31:30', 0, 130, 0),
(109, '2', 23900, 'testingg', '2022-08-08 19:33:57', '2022-08-08 19:33:57', 0, 171, 0),
(110, '2', 23900, 'testing', '2022-08-09 11:06:02', '2022-08-09 11:06:02', 0, 160, 0),
(111, '2', 23900, 'Testingggg', '2022-08-09 12:05:56', '2022-08-09 12:05:56', 0, 130, 0),
(112, '2', 23900, 'Testinggggggg', '2022-08-09 12:07:28', '2022-08-09 12:07:28', 0, 130, 0),
(113, '2', 23900, 'Testingggggggggg', '2022-08-09 15:41:50', '2022-08-09 15:41:50', 0, 130, 0),
(114, '2', 23900, 'Hhhhhhh', '2022-08-09 15:42:12', '2022-08-09 15:42:12', 0, 130, 0),
(115, '2', 23900, 'Testttt', '2022-08-09 15:43:42', '2022-08-09 15:43:42', 0, 130, 0),
(116, '2', 23900, 'Hshdhdhh', '2022-08-10 15:23:06', '2022-08-10 15:23:06', 0, 130, 0),
(117, '2', 23900, 'Ssssss', '2022-08-10 15:23:26', '2022-08-10 15:23:26', 0, 130, 0),
(118, '1', 64, 'ايايتاي', '2022-08-10 15:27:31', '2022-08-10 15:27:31', 0, 130, 0),
(119, '3', 3802, 'Gggg', '2022-08-10 15:28:37', '2022-08-10 15:28:37', 0, 130, 0),
(120, '2', 23900, 'v JK v v', '2022-08-18 12:41:57', '2022-08-18 12:41:57', 0, 175, 0),
(121, '2', 23900, 'great', '2022-08-19 10:05:56', '2022-08-19 10:05:56', 0, 117, 0),
(122, '2', 23916, 'Testing', '2022-08-19 10:28:23', '2022-08-19 10:28:23', 0, 179, 0),
(123, '2', 23900, 'Testing new report', '2022-08-21 09:57:49', '2022-08-21 09:57:49', 0, 180, 0),
(124, '3', 18, 'Testinggg', '2022-08-21 10:10:27', '2022-08-21 10:10:27', 0, 180, 0),
(125, '3', 4, 'user', '2022-08-23 13:23:47', '2022-08-23 13:23:47', 0, 1, 0),
(126, '3', 4, 'user', '2022-08-23 13:24:00', '2022-08-23 13:24:00', 0, 1, 0),
(127, '3', 4, 'user', '2022-08-23 13:24:08', '2022-08-23 13:24:08', 0, 1, 0),
(128, '3', 4, 'user', '2022-08-23 13:24:27', '2022-08-23 13:24:27', 0, 1, 0),
(129, '3', 4, 'user', '2022-08-23 13:24:45', '2022-08-23 13:24:45', 0, 1, 0),
(130, '3', 4, 'user', '2022-08-23 13:24:59', '2022-08-23 13:24:59', 0, 1, 0),
(131, '3', 4, 'user', '2022-08-23 13:25:29', '2022-08-23 13:25:29', 0, 1, 0),
(132, '3', 4, 'user', '2022-08-23 13:26:26', '2022-08-23 13:26:26', 0, 1, 0),
(133, '3', 4, 'test', '2022-08-23 14:20:07', '2022-08-23 14:20:07', 0, 1, 0),
(134, '3', 4, 'test', '2022-08-23 14:22:28', '2022-08-23 14:22:28', 0, 1, 0),
(135, '3', 4, 'test', '2022-08-23 14:22:52', '2022-08-23 14:22:52', 0, 1, 0),
(136, '3', 4, 'test', '2022-08-23 14:23:55', '2022-08-23 14:23:55', 0, 1, 0),
(137, '3', 4, 'test', '2022-08-23 14:25:04', '2022-08-23 14:25:04', 0, 1, 0),
(138, '3', 4, 'test', '2022-08-23 14:25:26', '2022-08-23 14:25:26', 0, 1, 0),
(139, '3', 4, 'test', '2022-08-23 14:25:34', '2022-08-23 14:25:34', 0, 1, 0),
(140, '3', 4, 'test', '2022-08-23 14:25:46', '2022-08-23 14:25:46', 0, 1, 0),
(141, '3', 4, 'test', '2022-08-23 14:26:58', '2022-08-23 14:26:58', 0, 1, 0),
(142, '3', 4, 'test', '2022-08-23 14:27:05', '2022-08-23 14:27:05', 0, 1, 0),
(143, '3', 4, 'test', '2022-08-23 14:27:34', '2022-08-23 14:27:34', 0, 1, 0),
(144, '3', 4, 'test', '2022-08-23 14:27:40', '2022-08-23 14:27:40', 0, 1, 0),
(145, '3', 4, 'test', '2022-08-23 14:28:38', '2022-08-23 14:28:38', 0, 1, 0),
(146, '3', 4, 'Test', '2022-08-23 14:28:50', '2022-08-23 14:28:50', 0, 1, 0),
(147, '3', 4, 'testdd', '2022-08-23 14:30:02', '2022-08-23 14:30:02', 0, 1, 0),
(148, '3', 4, 'test', '2022-08-23 14:30:40', '2022-08-23 14:30:40', 0, 1, 0),
(149, '3', 4, 'test', '2022-08-23 14:30:49', '2022-08-23 14:30:49', 0, 1, 0),
(150, '3', 4, 'test', '2022-08-23 14:31:00', '2022-08-23 14:31:00', 0, 1, 0),
(151, '3', 4, 'test', '2022-08-23 14:31:00', '2022-08-23 14:31:00', 0, 1, 0),
(152, '3', 4, 'test', '2022-08-23 14:31:01', '2022-08-23 14:31:01', 0, 1, 0),
(153, '3', 4, 'test', '2022-08-23 14:31:02', '2022-08-23 14:31:02', 0, 1, 0),
(154, '3', 4, 'test', '2022-08-23 14:32:20', '2022-08-23 14:32:20', 0, 1, 0),
(155, '3', 4, 'test', '2022-08-23 14:36:59', '2022-08-23 14:36:59', 0, 1, 0),
(156, '3', 4, 'test', '2022-08-23 14:37:30', '2022-08-23 14:37:30', 0, 1, 0),
(157, '3', 4, 'test', '2022-08-23 14:37:32', '2022-08-23 14:37:32', 0, 1, 0),
(158, '3', 4, 'test', '2022-08-23 14:37:33', '2022-08-23 14:37:33', 0, 1, 0),
(159, '3', 4, 'test', '2022-08-23 14:37:34', '2022-08-23 14:37:34', 0, 1, 0),
(160, '3', 4, 'test', '2022-08-23 14:37:35', '2022-08-23 14:37:35', 0, 1, 0),
(161, '3', 4, 'test', '2022-08-23 14:38:11', '2022-08-23 14:38:11', 0, 1, 0),
(162, '3', 4, 'test', '2022-08-23 14:38:31', '2022-08-23 14:38:31', 0, 1, 0),
(163, '3', 4, 'test', '2022-08-23 14:38:33', '2022-08-23 14:38:33', 0, 1, 0),
(164, '3', 4, 'test', '2022-08-23 14:38:33', '2022-08-23 14:38:33', 0, 1, 0),
(165, '3', 4, 'test', '2022-08-23 14:38:34', '2022-08-23 14:38:34', 0, 1, 0),
(166, '3', 4, 'test', '2022-08-23 14:38:35', '2022-08-23 14:38:35', 0, 1, 0),
(167, '3', 4, 'test', '2022-08-23 14:38:36', '2022-08-23 14:38:36', 0, 1, 0),
(168, '3', 4, 'test', '2022-08-23 14:38:37', '2022-08-23 14:38:37', 0, 1, 0),
(169, '3', 4, 'test', '2022-08-23 14:38:37', '2022-08-23 14:38:37', 0, 1, 0),
(170, '3', 4, 'test', '2022-08-23 14:39:10', '2022-08-23 14:39:10', 0, 1, 0),
(171, '3', 4, 'test', '2022-08-23 14:41:09', '2022-08-23 14:41:09', 0, 1, 0),
(172, '3', 4, 'test', '2022-08-23 14:42:14', '2022-08-23 14:42:14', 0, 1, 0),
(173, '3', 4, 'test', '2022-08-23 14:42:23', '2022-08-23 14:42:23', 0, 1, 0),
(174, '3', 20, 'Test', '2022-08-23 14:49:36', '2022-08-23 14:49:36', 0, 1, 0),
(175, '3', 4, 'Test', '2022-08-23 14:53:51', '2022-08-23 14:53:51', 0, 1, 0),
(176, '3', 4, 'Test', '2022-08-23 14:54:02', '2022-08-23 14:54:02', 0, 1, 0),
(177, '3', 4, 'Test', '2022-08-23 14:54:22', '2022-08-23 14:54:22', 0, 1, 0),
(178, '3', 4, 'Test', '2022-08-23 14:54:30', '2022-08-23 14:54:30', 0, 1, 0),
(179, '3', 4, 'Test', '2022-08-23 14:55:20', '2022-08-23 14:55:20', 0, 1, 0),
(180, '3', 4, 'Test', '2022-08-23 14:55:53', '2022-08-23 14:55:53', 0, 1, 0),
(181, '3', 4, 'Test', '2022-08-23 14:56:07', '2022-08-23 14:56:07', 0, 1, 0),
(182, '1', 21, 'test', '2022-08-23 15:31:55', '2022-08-23 15:31:55', 0, 1, 0),
(183, '2', 23900, 'test', '2022-08-23 16:04:24', '2022-08-23 16:04:24', 0, 1, 0),
(184, '2', 23900, 'test', '2022-08-23 16:07:20', '2022-08-23 16:07:20', 0, 1, 0),
(185, '2', 23900, 'test', '2022-08-23 16:07:49', '2022-08-23 16:07:49', 0, 1, 0),
(186, '2', 23900, 'test', '2022-08-23 16:08:31', '2022-08-23 16:08:31', 0, 1, 0),
(187, '2', 23900, 'test', '2022-08-23 16:09:39', '2022-08-23 16:09:39', 0, 1, 0),
(188, '2', 23900, 'test', '2022-08-23 16:11:38', '2022-08-23 16:11:38', 0, 1, 0),
(189, '2', 23900, 'test', '2022-08-23 16:11:54', '2022-08-23 16:11:54', 0, 1, 0),
(190, '2', 23900, 'test', '2022-08-23 16:12:28', '2022-08-23 16:12:28', 0, 1, 0),
(191, '2', 23900, 'test', '2022-08-23 16:12:54', '2022-08-23 16:12:54', 0, 1, 0),
(192, '2', 23900, 'test', '2022-08-23 16:16:33', '2022-08-23 16:16:33', 0, 1, 0),
(193, '2', 23900, 'test', '2022-08-23 16:20:41', '2022-08-23 16:20:41', 0, 1, 0),
(194, '2', 23900, 'test', '2022-08-23 16:21:12', '2022-08-23 16:21:12', 0, 1, 0),
(195, '2', 23900, 'test', '2022-08-23 16:24:22', '2022-08-23 16:24:22', 0, 1, 0),
(196, '2', 23900, 'test', '2022-08-23 16:24:33', '2022-08-23 16:24:33', 0, 1, 0),
(197, '2', 23900, 'test', '2022-08-23 16:25:37', '2022-08-23 16:25:37', 0, 1, 0),
(198, '2', 23900, 'test', '2022-08-23 16:25:44', '2022-08-23 16:25:44', 0, 1, 0),
(199, '2', 23900, 'test', '2022-08-23 16:26:16', '2022-08-23 16:26:16', 0, 1, 0),
(200, '2', 23900, 'test', '2022-08-23 16:30:21', '2022-08-23 16:30:21', 0, 1, 0),
(201, '2', 23900, 'test', '2022-08-23 16:30:30', '2022-08-23 16:30:30', 0, 1, 0),
(202, '2', 23900, 'test', '2022-08-23 16:30:51', '2022-08-23 16:30:51', 0, 1, 0),
(203, '2', 23900, 'test', '2022-08-23 16:31:33', '2022-08-23 16:31:33', 0, 1, 0),
(204, '2', 23900, 'test', '2022-08-23 16:32:47', '2022-08-23 16:32:47', 0, 1, 0),
(205, '2', 23900, 'test', '2022-08-23 16:37:05', '2022-08-23 16:37:05', 0, 1, 0),
(206, '2', 23900, 'test', '2022-08-23 16:39:32', '2022-08-23 16:39:32', 0, 1, 0),
(207, '2', 23900, 'test', '2022-08-23 16:40:23', '2022-08-23 16:40:23', 0, 1, 0),
(208, '2', 23900, 'test', '2022-08-23 16:40:44', '2022-08-23 16:40:44', 0, 1, 0),
(209, '2', 23900, 'test', '2022-08-23 16:43:08', '2022-08-23 16:43:08', 0, 1, 0),
(210, '2', 23900, 'tets', '2022-08-23 16:43:17', '2022-08-23 16:43:17', 0, 1, 0),
(211, '2', 23900, 'test', '2022-08-23 16:49:51', '2022-08-23 16:49:51', 0, 1, 0),
(212, '2', 23900, 'test', '2022-08-23 16:50:09', '2022-08-23 16:50:09', 0, 1, 0),
(213, '2', 23900, 'test', '2022-08-23 16:50:28', '2022-08-23 16:50:28', 0, 1, 0),
(214, '1', 21, 'Submit', '2022-08-23 16:53:30', '2022-08-23 16:53:30', 0, 117, 0),
(215, '2', 23900, 'swaqdqw', '2022-08-23 16:53:45', '2022-08-23 16:53:45', 0, 1, 0),
(216, '2', 23900, 'wdw', '2022-08-23 16:53:51', '2022-08-23 16:53:51', 0, 1, 0),
(217, '2', 23900, 'dsfsfsde', '2022-08-23 16:56:30', '2022-08-23 16:56:30', 0, 1, 0),
(218, '2', 23900, 'wqrqwd', '2022-08-23 16:57:26', '2022-08-23 16:57:26', 0, 1, 0),
(219, '2', 23900, 'dwqd', '2022-08-23 16:57:39', '2022-08-23 16:57:39', 0, 1, 0),
(220, '2', 23900, 'sdfsa', '2022-08-23 16:58:45', '2022-08-23 16:58:45', 0, 1, 0),
(221, '2', 23900, 'dftdfgf', '2022-08-23 16:58:58', '2022-08-23 16:58:58', 0, 1, 0),
(222, '2', 23900, 'test', '2022-08-23 17:00:10', '2022-08-23 17:00:10', 0, 1, 0),
(223, '2', 23900, 'test', '2022-08-23 17:00:30', '2022-08-23 17:00:30', 0, 1, 0),
(224, '1', 21, 'Hii', '2022-08-23 17:00:43', '2022-08-23 17:00:43', 0, 117, 0),
(225, '1', 21, 'test', '2022-08-23 17:01:27', '2022-08-23 17:01:27', 0, 1, 0),
(226, '2', 23900, 'Great', '2022-08-23 17:01:58', '2022-08-23 17:01:58', 0, 117, 0),
(227, '2', 23900, 'Great', '2022-08-23 17:02:11', '2022-08-23 17:02:11', 0, 117, 0),
(228, '2', 23900, 'Great', '2022-08-23 17:02:33', '2022-08-23 17:02:33', 0, 117, 0),
(229, '1', 21, 'test', '2022-08-23 17:03:36', '2022-08-23 17:03:36', 0, 1, 0),
(230, '3', 4, 'test', '2022-08-23 17:04:10', '2022-08-23 17:04:10', 0, 1, 0),
(231, '3', 4, 'test', '2022-08-23 17:05:09', '2022-08-23 17:05:09', 0, 1, 0),
(232, '2', 23900, 'Submit', '2022-08-23 17:05:29', '2022-08-23 17:05:29', 0, 117, 0),
(233, '2', 23900, 'test', '2022-08-23 17:05:52', '2022-08-23 17:05:52', 0, 1, 0),
(234, '3', 4, 'Submit', '2022-08-23 17:05:59', '2022-08-23 17:05:59', 0, 117, 0),
(235, '2', 23900, 'test', '2022-08-23 17:06:22', '2022-08-23 17:06:22', 0, 1, 0),
(236, '2', 23900, 'test', '2022-08-23 17:06:43', '2022-08-23 17:06:43', 0, 1, 0),
(237, '2', 23900, 'test', '2022-08-23 17:07:11', '2022-08-23 17:07:11', 0, 1, 0),
(238, '2', 23900, 'Great', '2022-08-23 17:09:06', '2022-08-23 17:09:06', 0, 117, 0),
(239, '2', 23900, 'tets', '2022-08-23 17:20:26', '2022-08-23 17:20:26', 0, 1, 0),
(240, '2', 23900, 'test', '2022-08-23 18:04:39', '2022-08-23 18:04:39', 0, 175, 0),
(241, '2', 23900, 'test', '2022-08-23 18:04:50', '2022-08-23 18:04:50', 0, 175, 0),
(242, '2', 23900, 'test', '2022-08-23 18:05:10', '2022-08-23 18:05:10', 0, 175, 0),
(243, '2', 23900, 'test', '2022-08-23 18:05:25', '2022-08-23 18:05:25', 0, 175, 0),
(244, '2', 23900, 'Test', '2022-08-23 18:11:06', '2022-08-23 18:11:06', 0, 1, 0),
(245, '2', 23900, 'Test', '2022-08-23 18:11:28', '2022-08-23 18:11:28', 0, 1, 0),
(246, '2', 23900, 'Test', '2022-08-23 18:11:42', '2022-08-23 18:11:42', 0, 1, 0),
(247, '2', 23900, 'Test', '2022-08-23 18:33:02', '2022-08-23 18:33:02', 0, 1, 0),
(248, '2', 23900, 'Test', '2022-08-23 18:33:14', '2022-08-23 18:33:14', 0, 1, 0),
(249, '3', 4, 'test', '2022-08-23 18:33:32', '2022-08-23 18:33:32', 0, 1, 0),
(250, '3', 4, 'test', '2022-08-23 18:33:49', '2022-08-23 18:33:49', 0, 1, 0),
(251, '2', 23900, 'Test', '2022-08-23 18:34:03', '2022-08-23 18:34:03', 0, 1, 0),
(252, '3', 4, 'test', '2022-08-23 18:34:34', '2022-08-23 18:34:34', 0, 1, 0),
(253, '2', 23900, 'Test', '2022-08-23 18:35:00', '2022-08-23 18:35:00', 0, 1, 0),
(254, '2', 23900, 'Test', '2022-08-23 18:35:14', '2022-08-23 18:35:14', 0, 1, 0),
(255, '2', 23900, 'Test', '2022-08-23 18:35:31', '2022-08-23 18:35:31', 0, 1, 0),
(256, '3', 4, 'test', '2022-08-23 18:35:59', '2022-08-23 18:35:59', 0, 1, 0),
(257, '3', 4, 'test', '2022-08-23 18:36:54', '2022-08-23 18:36:54', 0, 1, 0),
(258, '2', 23900, 'ghhsbh', '2022-08-23 18:37:51', '2022-08-23 18:37:51', 0, 175, 0),
(259, '2', 23900, 'jjj', '2022-08-23 18:37:58', '2022-08-23 18:37:58', 0, 175, 0),
(260, '3', 4, 'Test', '2022-08-23 18:38:38', '2022-08-23 18:38:38', 0, 1, 0),
(261, '3', 4, 'sddsf', '2022-08-23 18:38:52', '2022-08-23 18:38:52', 0, 1, 0),
(262, '3', 4, 'dfsds', '2022-08-23 18:40:58', '2022-08-23 18:40:58', 0, 1, 0),
(263, '3', 4, 'Ffcggffftf', '2022-08-23 18:41:01', '2022-08-23 18:41:01', 0, 1, 0),
(264, '3', 4, 'Tcgh', '2022-08-23 18:41:12', '2022-08-23 18:41:12', 0, 1, 0),
(265, '3', 4, 'fdsfdsf', '2022-08-23 18:41:36', '2022-08-23 18:41:36', 0, 1, 0),
(266, '3', 4, 'dfdsfdsf', '2022-08-23 18:41:58', '2022-08-23 18:41:58', 0, 1, 0),
(267, '3', 4, 'Cvvvv', '2022-08-23 18:42:05', '2022-08-23 18:42:05', 0, 1, 0),
(268, '3', 4, 'Ccgh', '2022-08-23 18:42:17', '2022-08-23 18:42:17', 0, 1, 0),
(269, '3', 4, 'jhvj', '2022-08-23 18:42:55', '2022-08-23 18:42:55', 0, 1, 0),
(270, '3', 4, 'Ggfff', '2022-08-23 18:43:13', '2022-08-23 18:43:13', 0, 1, 0),
(271, '3', 4, 'Usudif', '2022-08-23 18:43:21', '2022-08-23 18:43:21', 0, 1, 0),
(272, '3', 4, 'Ccickensfjn', '2022-08-23 18:43:41', '2022-08-23 18:43:41', 0, 1, 0),
(273, '3', 4, 'H cuc', '2022-08-23 18:43:48', '2022-08-23 18:43:48', 0, 1, 0),
(274, '3', 4, 'njkh', '2022-08-23 18:44:05', '2022-08-23 18:44:05', 0, 1, 0),
(275, '3', 4, 'Test', '2022-08-23 18:46:09', '2022-08-23 18:46:09', 0, 1, 0),
(276, '3', 4, 'Test', '2022-08-23 18:46:19', '2022-08-23 18:46:19', 0, 1, 0),
(277, '3', 4, 'Test', '2022-08-23 18:47:52', '2022-08-23 18:47:52', 0, 1, 0),
(278, '3', 4, 'Test', '2022-08-23 18:48:04', '2022-08-23 18:48:04', 0, 1, 0),
(279, '3', 4, 'Test', '2022-08-23 18:48:15', '2022-08-23 18:48:15', 0, 1, 0),
(280, '3', 4, 'test', '2022-08-23 18:49:42', '2022-08-23 18:49:42', 0, 1, 0),
(281, '3', 4, 'Test', '2022-08-23 18:49:56', '2022-08-23 18:49:56', 0, 1, 0),
(282, '3', 4, 'Test', '2022-08-23 18:50:07', '2022-08-23 18:50:07', 0, 1, 0),
(283, '3', 4, 'Test', '2022-08-23 18:50:17', '2022-08-23 18:50:17', 0, 1, 0),
(284, '3', 4, 'Test', '2022-08-23 18:50:25', '2022-08-23 18:50:25', 0, 1, 0),
(285, '3', 4, 'Test', '2022-08-23 18:50:37', '2022-08-23 18:50:37', 0, 1, 0),
(286, '3', 4, 'Test', '2022-08-23 18:50:49', '2022-08-23 18:50:49', 0, 1, 0),
(287, '3', 4, 'Test', '2022-08-23 18:50:58', '2022-08-23 18:50:58', 0, 1, 0),
(288, '3', 4, 'Test', '2022-08-23 18:51:10', '2022-08-23 18:51:10', 0, 1, 0),
(289, '3', 4, 'Test', '2022-08-23 18:51:19', '2022-08-23 18:51:19', 0, 1, 0),
(290, '3', 4, 'Test', '2022-08-23 18:51:27', '2022-08-23 18:51:27', 0, 1, 0),
(291, '3', 4, 'Test', '2022-08-23 18:51:35', '2022-08-23 18:51:35', 0, 1, 0),
(292, '3', 4, 'test', '2022-08-23 18:54:52', '2022-08-23 18:54:52', 0, 1, 0),
(293, '3', 4, 'Teat', '2022-08-23 18:55:06', '2022-08-23 18:55:06', 0, 1, 0),
(294, '3', 4, 'Test', '2022-08-23 18:55:17', '2022-08-23 18:55:17', 0, 1, 0),
(295, '3', 4, 'Test', '2022-08-23 18:55:26', '2022-08-23 18:55:26', 0, 1, 0),
(296, '3', 4, 'Test', '2022-08-23 18:55:35', '2022-08-23 18:55:35', 0, 1, 0),
(297, '3', 4, 'test', '2022-08-23 18:55:54', '2022-08-23 18:55:54', 0, 1, 0),
(298, '3', 4, 'test', '2022-08-23 19:00:07', '2022-08-23 19:00:07', 0, 1, 0),
(299, '3', 4, 'Test', '2022-08-23 19:00:27', '2022-08-23 19:00:27', 0, 1, 0),
(300, '3', 4, 'Test', '2022-08-23 19:00:44', '2022-08-23 19:00:44', 0, 1, 0),
(301, '3', 4, 'Test', '2022-08-23 19:00:53', '2022-08-23 19:00:53', 0, 1, 0),
(302, '3', 4, 'test', '2022-08-23 19:01:26', '2022-08-23 19:01:26', 0, 1, 0),
(303, '3', 4, 'test', '2022-08-23 19:01:34', '2022-08-23 19:01:34', 0, 1, 0),
(304, '3', 4, 'Test', '2022-08-23 19:03:37', '2022-08-23 19:03:37', 0, 1, 0),
(305, '3', 4, 'Tdt', '2022-08-23 19:03:51', '2022-08-23 19:03:51', 0, 1, 0),
(306, '3', 4, 'Test', '2022-08-23 19:04:06', '2022-08-23 19:04:06', 0, 1, 0),
(307, '3', 4, 'Test', '2022-08-23 19:04:16', '2022-08-23 19:04:16', 0, 1, 0),
(308, '3', 4, 'Test', '2022-08-23 19:04:25', '2022-08-23 19:04:25', 0, 1, 0),
(309, '3', 4, 'test', '2022-08-23 19:05:10', '2022-08-23 19:05:10', 0, 1, 0),
(310, '3', 4, 'test', '2022-08-23 19:05:20', '2022-08-23 19:05:20', 0, 1, 0),
(311, '3', 4, 'Test', '2022-08-23 19:05:51', '2022-08-23 19:05:51', 0, 1, 0),
(312, '3', 4, 'test', '2022-08-23 19:08:02', '2022-08-23 19:08:02', 0, 1, 0),
(313, '3', 4, 'Test', '2022-08-23 19:08:29', '2022-08-23 19:08:29', 0, 1, 0),
(314, '3', 4, 'Test', '2022-08-23 19:08:38', '2022-08-23 19:08:38', 0, 1, 0),
(315, '3', 4, 'test', '2022-08-23 19:09:24', '2022-08-23 19:09:24', 0, 1, 0),
(316, '3', 4, 'Test', '2022-08-23 19:09:45', '2022-08-23 19:09:45', 0, 1, 0),
(317, '3', 4, 'test', '2022-08-23 19:10:53', '2022-08-23 19:10:53', 0, 1, 0),
(318, '3', 4, 'test', '2022-08-23 19:11:02', '2022-08-23 19:11:02', 0, 1, 0),
(319, '3', 4, 'Test', '2022-08-23 19:12:01', '2022-08-23 19:12:01', 0, 1, 0),
(320, '3', 4, 'Test', '2022-08-23 19:14:30', '2022-08-23 19:14:30', 0, 1, 0),
(321, '3', 4, 'Test', '2022-08-23 19:14:38', '2022-08-23 19:14:38', 0, 1, 0),
(322, '3', 4, 'Test', '2022-08-23 19:14:53', '2022-08-23 19:14:53', 0, 1, 0),
(323, '3', 4, 'Test', '2022-08-23 19:15:01', '2022-08-23 19:15:01', 0, 1, 0),
(324, '3', 4, 'Test', '2022-08-23 19:15:10', '2022-08-23 19:15:10', 0, 1, 0),
(325, '3', 4, 'Test', '2022-08-23 19:15:18', '2022-08-23 19:15:18', 0, 1, 0),
(326, '3', 4, 'Test', '2022-08-23 19:15:31', '2022-08-23 19:15:31', 0, 1, 0),
(327, '3', 4, 'Test', '2022-08-23 19:15:40', '2022-08-23 19:15:40', 0, 1, 0),
(328, '3', 4, 'Test', '2022-08-23 19:16:51', '2022-08-23 19:16:51', 0, 1, 0),
(329, '3', 4, 'Test', '2022-08-23 19:19:43', '2022-08-23 19:19:43', 0, 1, 0),
(330, '3', 4, 'Test', '2022-08-23 19:19:58', '2022-08-23 19:19:58', 0, 1, 0),
(331, '3', 4, 'Test', '2022-08-23 19:20:07', '2022-08-23 19:20:07', 0, 1, 0),
(332, '3', 4, 'Test', '2022-08-23 19:20:44', '2022-08-23 19:20:44', 0, 1, 0),
(333, '3', 4, 'sdfdsfds', '2022-08-23 19:25:42', '2022-08-23 19:25:42', 0, 1, 0),
(334, '3', 4, 'Test', '2022-08-23 19:25:55', '2022-08-23 19:25:55', 0, 1, 0),
(335, '3', 4, 'Test', '2022-08-23 19:26:16', '2022-08-23 19:26:16', 0, 1, 0),
(336, '3', 4, 'test', '2022-08-23 19:27:56', '2022-08-23 19:27:56', 0, 1, 0),
(337, '3', 4, 'Submit', '2022-08-23 19:29:57', '2022-08-23 19:29:57', 0, 1, 0),
(338, '3', 4, 'Yytt', '2022-08-23 19:30:21', '2022-08-23 19:30:21', 0, 1, 0),
(339, '3', 4, 'Hjhd', '2022-08-23 19:30:40', '2022-08-23 19:30:40', 0, 1, 0),
(340, '3', 4, 'tftret', '2022-08-23 19:30:45', '2022-08-23 19:30:45', 0, 1, 0),
(341, '3', 4, 'dszsads', '2022-08-23 19:38:01', '2022-08-23 19:38:01', 0, 1, 0),
(342, '3', 4, 'Test', '2022-08-23 19:38:24', '2022-08-23 19:38:24', 0, 1, 0),
(343, '3', 4, 'Test', '2022-08-23 19:38:46', '2022-08-23 19:38:46', 0, 1, 0),
(344, '3', 4, 'yrty', '2022-08-23 19:39:47', '2022-08-23 19:39:47', 0, 1, 0),
(345, '3', 4, 'Test', '2022-08-23 19:40:06', '2022-08-23 19:40:06', 0, 1, 0),
(346, '3', 4, 'Test', '2022-08-23 19:40:17', '2022-08-23 19:40:17', 0, 1, 0),
(347, '3', 4, 'fygfyrtftr', '2022-08-23 19:40:54', '2022-08-23 19:40:54', 0, 1, 0),
(348, '3', 4, 'Tref', '2022-08-23 19:41:09', '2022-08-23 19:41:09', 0, 1, 0),
(349, '3', 4, 'sdfdsf', '2022-08-24 10:04:04', '2022-08-24 10:04:04', 0, 1, 0),
(350, '3', 4, 'dsfsdf', '2022-08-24 10:05:05', '2022-08-24 10:05:05', 0, 1, 0),
(351, '3', 4, 'Good', '2022-08-24 10:06:37', '2022-08-24 10:06:37', 0, 117, 0),
(352, '3', 4, 'Ghh', '2022-08-24 10:07:12', '2022-08-24 10:07:12', 0, 117, 0),
(353, '3', 4, 'Bs hdjdj', '2022-08-24 10:07:25', '2022-08-24 10:07:25', 0, 117, 0),
(354, '3', 4, 'gdfgtgd', '2022-08-24 10:08:57', '2022-08-24 10:08:57', 0, 1, 0),
(355, '3', 4, 'bchfghff', '2022-08-24 10:12:57', '2022-08-24 10:12:57', 0, 1, 0),
(356, '3', 4, 'yyftyryrdyddddddddddddddddddddddddddddddddddddddddddd', '2022-08-24 10:13:42', '2022-08-24 10:13:42', 0, 1, 0),
(357, '3', 4, 'Bbdbdb', '2022-08-24 10:16:50', '2022-08-24 10:16:50', 0, 117, 0),
(358, '3', 4, 'FCGHGHD', '2022-08-24 10:18:39', '2022-08-24 10:18:39', 0, 1, 0),
(359, '3', 4, 'Gffh', '2022-08-24 10:21:13', '2022-08-24 10:21:13', 0, 1, 0),
(360, '3', 4, 'Gshhs', '2022-08-24 10:21:40', '2022-08-24 10:21:40', 0, 1, 0),
(361, '3', 4, 'Hshhdhd', '2022-08-24 10:37:13', '2022-08-24 10:37:13', 0, 1, 0),
(362, '3', 4, 'Bdbdbdb', '2022-08-24 10:40:57', '2022-08-24 10:40:57', 0, 1, 0),
(363, '3', 4, 'Hshhd', '2022-08-24 10:57:29', '2022-08-24 10:57:29', 0, 1, 0),
(364, '3', 4, 'Shhsbsbs', '2022-08-24 10:57:50', '2022-08-24 10:57:50', 0, 1, 0),
(365, '3', 4, 'Gdhdhdhd', '2022-08-24 11:00:29', '2022-08-24 11:00:29', 0, 1, 0),
(366, '3', 4, 'Bdbxbdb', '2022-08-24 11:00:47', '2022-08-24 11:00:47', 0, 1, 0),
(367, '3', 4, 'Vhvv', '2022-08-24 11:01:29', '2022-08-24 11:01:29', 0, 1, 0),
(368, '3', 4, 'Dfggg', '2022-08-24 11:01:46', '2022-08-24 11:01:46', 0, 1, 0),
(369, '3', 4, 'Bsbdbxbxndhd', '2022-08-24 11:02:05', '2022-08-24 11:02:05', 0, 1, 0),
(370, '3', 4, 'Bxhhdjfkdjfjdjdhdhdh', '2022-08-24 11:02:16', '2022-08-24 11:02:16', 0, 1, 0),
(371, '3', 4, 'vtugyfyufyuuyfyfyfuyuy', '2022-08-24 11:06:18', '2022-08-24 11:06:18', 0, 1, 0),
(372, '3', 4, 'Hdhhdhdhdndb', '2022-08-24 11:06:45', '2022-08-24 11:06:45', 0, 1, 0),
(373, '3', 4, 'Dggggg', '2022-08-24 11:07:14', '2022-08-24 11:07:14', 0, 1, 0),
(374, '3', 4, 'Hdhhdhdhdhdgdhdh', '2022-08-24 11:07:28', '2022-08-24 11:07:28', 0, 1, 0),
(375, '3', 4, 'tsrytrtrytryetry', '2022-08-24 11:10:26', '2022-08-24 11:10:26', 0, 1, 0),
(376, '3', 4, 'Dhhdhdhdhdhd', '2022-08-24 11:10:44', '2022-08-24 11:10:44', 0, 1, 0),
(377, '3', 4, 'trytryhtrytrytrytry', '2022-08-24 11:11:06', '2022-08-24 11:11:06', 0, 1, 0),
(378, '3', 4, 'vfdgfgfdgdfgdfgdfgdfg', '2022-08-24 11:12:18', '2022-08-24 11:12:18', 0, 1, 0),
(379, '3', 4, 'Hshhdhd', '2022-08-24 11:19:01', '2022-08-24 11:19:01', 0, 1, 0),
(380, '3', 4, 'xccsdfdsfdsfsfsdf', '2022-08-24 11:20:46', '2022-08-24 11:20:46', 0, 1, 0),
(381, '3', 4, 'gtdjfhjdtjdghd', '2022-08-24 11:21:06', '2022-08-24 11:21:06', 0, 1, 0),
(382, '3', 4, 'ddttddtuy', '2022-08-24 11:24:01', '2022-08-24 11:24:01', 0, 1, 0),
(383, '3', 4, 'xdcvxcv', '2022-08-24 11:24:07', '2022-08-24 11:24:07', 0, 1, 0),
(384, '3', 4, 'Bxhdhhxhdhd', '2022-08-24 11:24:10', '2022-08-24 11:24:10', 0, 1, 0),
(385, '3', 4, 'Bxbchchxhchc', '2022-08-24 11:24:30', '2022-08-24 11:24:30', 0, 1, 0),
(386, '3', 4, 'Bsbdbxbxhdh', '2022-08-24 11:24:42', '2022-08-24 11:24:42', 0, 1, 0),
(387, '3', 4, 'Teggg', '2022-08-24 11:25:00', '2022-08-24 11:25:00', 0, 1, 0),
(388, '3', 4, 'Thbv', '2022-08-24 11:25:07', '2022-08-24 11:25:07', 0, 1, 0),
(389, '3', 4, 'dfgdfgdfg', '2022-08-24 11:26:31', '2022-08-24 11:26:31', 0, 1, 0),
(390, '3', 4, 'Bxbdhdhdhdfhjd', '2022-08-24 11:26:38', '2022-08-24 11:26:38', 0, 1, 0),
(391, '3', 4, 'Bxbcbdhhddhhd', '2022-08-24 11:26:57', '2022-08-24 11:26:57', 0, 1, 0),
(392, '3', 18, 'Yfhhnn', '2022-08-24 18:40:01', '2022-08-24 18:40:01', 0, 117, 0),
(393, '3', 4, 'sddsfdsf', '2022-08-24 18:45:01', '2022-08-24 18:45:01', 0, 1, 0),
(394, '3', 18, 'Gghgf', '2022-08-24 18:45:48', '2022-08-24 18:45:48', 0, 117, 0),
(395, '3', 4, 'Ddr', '2022-08-24 18:49:52', '2022-08-24 18:49:52', 0, 117, 0),
(396, '3', 4, 'Testing', '2022-08-25 11:39:36', '2022-08-25 11:39:36', 0, 1, 0),
(397, '3', 18, 'Pink button', '2022-08-25 11:43:26', '2022-08-25 11:43:26', 0, 160, 0),
(398, '3', 20, 'God', '2022-08-25 12:01:53', '2022-08-25 12:01:53', 0, 160, 0),
(399, '3', 18, 'Correct', '2022-08-25 18:55:16', '2022-08-25 18:55:16', 0, 1, 0),
(400, '2', 23900, 'Rate', '2022-08-25 19:19:21', '2022-08-25 19:19:21', 0, 117, 0),
(401, '2', 23900, 'Testinggg', '2022-08-26 22:13:05', '2022-08-26 22:13:05', 0, 130, 0),
(402, '1', 29, 'Testinggg', '2022-08-26 22:16:17', '2022-08-26 22:16:17', 0, 130, 0),
(403, '3', 18, 'Testingg', '2022-08-26 22:18:36', '2022-08-26 22:18:36', 0, 130, 0),
(404, '3', 6, 'Gttf', '2022-08-26 22:30:15', '2022-08-26 22:30:15', 0, 130, 0),
(405, '2', 23941, 'الدكتور غير صحيح', '2022-08-29 22:52:39', '2022-08-29 22:52:39', 0, 41, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_profiles`
--

CREATE TABLE `teacher_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 0,
  `user_added` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_profile` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_profiles`
--

INSERT INTO `teacher_profiles` (`id`, `name`, `profile`, `school_code`, `country`, `status`, `is_delete`, `is_active`, `user_added`, `created_at`, `updated_at`, `subject_code`, `teacher_code`, `lang_code`, `show_profile`) VALUES
(3, 'asdasda', '1626248844.jpg', 'IN01', 'IN', 1, 0, 0, 0, '2021-07-14 02:17:24', '2021-07-14 02:17:24', 'IN0101', 'IN010101', NULL, 0),
(4, 'Dev tech', NULL, 'AM02', 'AM', 1, 0, 0, 0, '2021-07-16 04:00:43', '2021-07-16 04:00:43', 'AM0201', 'AM020101', NULL, 0),
(5, 'Amity', NULL, 'AM02', 'AM', 1, 1, 0, 0, '2021-07-16 04:00:43', '2021-07-16 04:00:52', 'AM0201', 'AM020102', NULL, 0),
(6, 'Subodh', NULL, 'AM02', 'AM', 1, 0, 0, 0, '2021-07-16 04:00:43', '2021-07-16 04:00:43', 'AM0201', 'AM020103', NULL, 0),
(7, 'Manipal', NULL, 'AM02', 'AM', 1, 0, 0, 0, '2021-07-16 04:00:43', '2021-07-16 04:00:43', 'AM0201', 'AM020104', NULL, 0),
(8, 'Sms', NULL, 'AM02', 'AM', 1, 0, 0, 0, '2021-07-16 04:00:43', '2021-07-16 04:00:43', 'AM0201', 'AM020105', NULL, 0),
(9, 'testing Sign', '1626428069.png', 'AM02', 'AM', 1, 0, 0, 0, '2021-07-16 04:04:29', '2021-07-16 04:04:29', 'AM0201', 'AM020106', '1', 0),
(10, 'Dev tech', NULL, 'AM02', 'AM', 1, 0, 0, 0, '2021-07-16 04:08:31', '2021-07-16 04:08:31', 'AM0201', 'AM020107', NULL, 0),
(11, 'Amity', NULL, 'AM02', 'AM', 1, 0, 0, 0, '2021-07-16 04:08:31', '2021-07-16 04:08:31', 'AM0201', 'AM020108', NULL, 0),
(12, 'Subodh', NULL, 'AM02', 'AM', 1, 0, 0, 0, '2021-07-16 04:08:31', '2021-07-16 04:08:31', 'AM0201', 'AM020109', NULL, 0),
(13, 'Manipal', NULL, 'AM02', 'AM', 1, 0, 0, 0, '2021-07-16 04:08:31', '2021-07-16 04:08:31', 'AM0201', 'AM020110', NULL, 0),
(14, 'Sms', NULL, 'AM02', 'AM', 1, 0, 0, 0, '2021-07-16 04:08:31', '2021-07-16 04:08:31', 'AM0201', 'AM020111', NULL, 0),
(15, 'sdss', '1626431101.png', 'IN01', 'IN', 1, 0, 0, 0, '2021-07-16 04:55:01', '2021-07-16 04:55:01', 'IN0101', 'IN010102', '1', 0),
(16, 'developer tech', NULL, 'AM02', 'AM', 1, 0, 0, 0, '2021-07-19 04:15:54', '2021-07-19 04:15:54', 'AM0201', 'AM020112', NULL, 0),
(17, 'Amity', NULL, 'AM02', 'AM', 1, 0, 0, 0, '2021-07-19 04:15:54', '2021-07-19 04:15:54', 'AM0201', 'AM020113', NULL, 0),
(18, 'Subodh', NULL, 'AM02', 'AM', 1, 0, 0, 0, '2021-07-19 04:15:54', '2021-07-19 04:15:54', 'AM0201', 'AM020114', NULL, 0),
(19, 'Manipal', NULL, 'AM02', 'AM', 1, 0, 0, 0, '2021-07-19 04:15:54', '2021-07-19 04:15:54', 'AM0201', 'AM020115', NULL, 0),
(20, 'Sms', NULL, 'AM02', 'AM', 1, 0, 0, 0, '2021-07-19 04:15:54', '2021-07-19 04:15:54', 'AM0201', 'AM020116', NULL, 0),
(21, 'Rajesh Sir', '1627455982.jpg', 'INSCL03', 'IN', 1, 0, 0, 0, '2021-07-28 01:36:22', '2021-07-28 01:36:22', 'INSCL0301', 'INSCL030101', '1', 0),
(22, 'سلمان حبيب', '1627456038.jpg', 'AFSCL01', 'AF', 1, 0, 0, 0, '2021-07-28 01:37:18', '2021-07-28 01:37:18', 'AFSCL0101', 'AFSCL010101', '2', 0),
(23, 'Manish Singh', NULL, 'INSCL03', 'IN', 1, 0, 0, 1, '2021-07-28 03:43:18', '2021-07-28 03:43:18', 'INSCL0301', 'INSCL030102', NULL, 0),
(24, 'أولو', NULL, 'AFSCL01', 'AF', 1, 0, 0, 1, '2021-07-28 03:45:52', '2021-07-28 03:45:52', 'AFSCL0101', 'AFSCL010102', NULL, 0),
(25, 'Shamsher Sir', NULL, 'INSCL03', 'IN', 1, 0, 0, 1, '2021-07-28 07:19:08', '2021-07-28 07:19:08', 'INSCL0301', 'INSCL030103', NULL, 0),
(26, 'test teacher', NULL, 'IN01', 'IN', 1, 0, 0, 1, '2021-07-28 08:09:34', '2021-10-18 10:32:16', 'IN0101', 'IN010103', '1', 0),
(27, 'Manish Soni', NULL, 'IN01', 'IN', 1, 0, 0, 1, '2021-11-01 11:56:26', '2021-11-01 11:56:26', 'IN0101', 'IN010104', NULL, 0),
(28, 'aditya', NULL, 'IN01', 'IN', 1, 0, 0, 1, '2021-12-21 13:09:45', '2021-12-21 13:09:45', 'IN0101', 'IN010105', NULL, 0),
(29, 'حامد الهندال', NULL, 'KWSCL01', 'KW', 1, 0, 0, 1, '2022-05-04 14:01:47', '2022-06-15 10:34:59', 'KWSCL0101', 'KWSCL010101', NULL, 1),
(30, 'developer tech', NULL, 'AM02', 'AM', 1, 0, 0, 0, '2022-05-12 07:20:14', '2022-05-12 07:20:14', 'AM0201', 'AM020117', NULL, 0),
(31, 'Amity', NULL, 'AM02', 'AM', 1, 0, 0, 0, '2022-05-12 07:20:14', '2022-05-12 07:20:14', 'AM0201', 'AM020118', NULL, 0),
(32, 'Subodh', NULL, 'AM02', 'AM', 1, 0, 0, 0, '2022-05-12 07:20:14', '2022-05-12 07:20:14', 'AM0201', 'AM020119', NULL, 0),
(33, 'Manipal', NULL, 'AM02', 'AM', 1, 0, 0, 0, '2022-05-12 07:20:14', '2022-05-12 07:20:14', 'AM0201', 'AM020120', NULL, 0),
(34, 'Sms', NULL, 'AM02', 'AM', 1, 0, 0, 0, '2022-05-12 07:20:14', '2022-05-12 07:20:14', 'AM0201', 'AM020121', NULL, 0),
(35, 'developer tech', NULL, 'AM02', 'AM', 1, 0, 0, 0, '2022-05-12 13:05:15', '2022-05-12 13:05:15', 'AM0201', 'AM020122', NULL, 0),
(36, 'Amity', NULL, 'AM02', 'AM', 1, 0, 0, 0, '2022-05-12 13:05:15', '2022-05-12 13:05:15', 'AM0201', 'AM020123', NULL, 0),
(37, 'Subodh', NULL, 'AM02', 'AM', 1, 0, 0, 0, '2022-05-12 13:05:15', '2022-05-12 13:05:15', 'AM0201', 'AM020124', NULL, 0),
(38, 'Manipal', NULL, 'AM02', 'AM', 1, 0, 0, 0, '2022-05-12 13:05:15', '2022-05-12 13:05:15', 'AM0201', 'AM020125', NULL, 0),
(39, 'Sms', NULL, 'AM02', 'AM', 1, 0, 0, 0, '2022-05-12 13:05:15', '2022-08-29 05:05:49', 'AM0201', 'AM020126', NULL, 0),
(40, 'hari om', NULL, 'INSCL03', 'IN', 1, 0, 0, 1, '2022-05-19 05:39:42', '2022-05-19 05:39:42', 'INSCL0301', 'INSCL030104', NULL, 0),
(41, 'poloi', NULL, 'INSCL03', 'IN', 1, 0, 0, 1, '2022-05-19 06:35:36', '2022-06-15 10:34:55', 'INSCL0301', 'INSCL030105', NULL, 1),
(42, 'Hamed AlHendal', NULL, 'KWSCL01', 'KW', 1, 0, 0, 1, '2022-06-30 11:08:27', '2022-06-30 11:08:27', 'KWSCL0101', 'KWSCL010102', NULL, 0),
(43, 'asdasda sadasd', NULL, 'IN01', 'IN', 1, 0, 0, 1, '2022-06-30 11:40:21', '2022-06-30 11:40:21', 'IN0101', 'IN010106', NULL, 0),
(44, 'Adel Alhendal', NULL, 'KWSCL01', 'KW', 1, 0, 0, 1, '2022-06-30 14:05:50', '2022-06-30 14:05:50', 'KWSCL0101', 'KWSCL010103', NULL, 0),
(45, 'علي الكندري', NULL, 'KWSCL01', 'KW', 1, 0, 0, 1, '2022-07-01 11:26:24', '2022-07-01 11:26:24', 'KWSCL0101', 'KWSCL010104', NULL, 0),
(46, 'فبققلللللل', NULL, 'KWSCL01', 'KW', 1, 0, 0, 1, '2022-07-04 10:45:27', '2022-07-04 10:45:27', 'KWSCL0101', 'KWSCL010105', NULL, 0),
(47, 'لللللللالالالتمممميسص', NULL, 'KWSCL01', 'KW', 1, 0, 0, 1, '2022-07-05 06:08:14', '2022-07-05 06:08:14', 'KWSCL0101', 'KWSCL010106', NULL, 0),
(48, 'test teee', NULL, 'IN01', 'IN', 1, 0, 0, 1, '2022-07-05 13:21:32', '2022-07-05 13:21:32', 'IN0102', 'IN010201', NULL, 0),
(49, 'ayush', NULL, 'INSCL03', 'IN', 1, 0, 0, 1, '2022-07-07 11:09:06', '2022-07-07 11:09:06', 'INSCL0301', 'INSCL030106', NULL, 0),
(50, 'okkkk', NULL, 'INSCL03', 'IN', 1, 0, 0, 1, '2022-07-07 11:27:37', '2022-07-07 11:27:37', 'INSCL0301', 'INSCL030107', NULL, 0),
(51, 'يبببللل', NULL, 'KWSCL01', 'KW', 1, 0, 0, 1, '2022-07-07 12:18:09', '2022-07-07 12:18:09', 'KWSCL0101', 'KWSCL010107', NULL, 0),
(52, 'poloo', NULL, 'INSCL03', 'IN', 1, 0, 0, 1, '2022-07-07 13:16:12', '2022-07-07 13:16:12', 'INSCL0301', 'INSCL030108', NULL, 0),
(53, 'Narayan Smith', NULL, 'IN01', 'IN', 1, 0, 0, 1, '2022-07-07 14:57:18', '2022-07-07 14:57:18', 'IN0102', 'IN010202', NULL, 0),
(54, 'اتت للدد زادا ززز', NULL, 'KWSCL01', 'KW', 1, 0, 0, 1, '2022-07-08 07:00:56', '2022-07-08 07:00:56', 'KWSCL0101', 'KWSCL010108', NULL, 0),
(55, 'علي حسن الكندري جديد', NULL, 'KWSCL01', 'KW', 1, 0, 0, 1, '2022-07-08 19:45:42', '2022-07-08 19:45:42', 'KWSCL0101', 'KWSCL010109', NULL, 0),
(56, 'ayush', NULL, 'IN01', 'IN', 1, 0, 0, 1, '2022-07-12 06:38:08', '2022-07-12 06:38:08', 'IN0101', 'IN010107', NULL, 0),
(57, 'ستستن ستستست ستست', NULL, 'KWSCL01', 'KW', 1, 0, 0, 1, '2022-07-12 06:39:46', '2022-07-12 06:39:46', 'KWSCL0101', 'KWSCL010110', NULL, 0),
(58, 'deepanshu ahemd', NULL, 'INSCL03', 'IN', 1, 0, 0, 1, '2022-07-12 10:06:09', '2022-07-12 10:06:09', 'INSCL0301', 'INSCL030109', NULL, 0),
(59, 'لاازللب اتا لبب', NULL, 'KWSCL01', 'KW', 1, 0, 0, 1, '2022-07-12 10:09:25', '2022-07-12 10:09:25', 'KWSCL0101', 'KWSCL010111', NULL, 0),
(60, 'جمال محمد الراشد', NULL, 'KWSCL01', 'KW', 1, 0, 0, 1, '2022-07-12 11:19:26', '2022-07-12 11:19:26', 'KWSCL0101', 'KWSCL010112', NULL, 0),
(61, 'جمال محمد الرشيد', NULL, 'KWSCL01', 'KW', 1, 0, 0, 1, '2022-07-15 12:11:55', '2022-07-15 12:11:55', 'KWSCL0101', 'KWSCL010113', NULL, 0),
(62, 'حمووووده', NULL, 'KWSCL01', 'KW', 1, 0, 0, 1, '2022-07-25 11:42:37', '2022-07-25 11:42:37', 'KWSCL0101', 'KWSCL010114', NULL, 0),
(63, 'حامد سنان', NULL, 'KWSCL01', 'KW', 1, 0, 0, 1, '2022-07-26 04:20:53', '2022-07-26 04:20:53', 'KWSCL0101', 'KWSCL010115', NULL, 0),
(64, 'حامد فوزي', NULL, 'KWSCL01', 'KW', 1, 0, 0, 1, '2022-07-26 08:25:31', '2022-07-26 08:25:31', 'KWSCL0101', 'KWSCL010116', NULL, 0),
(65, 'Aditya just', NULL, 'INSCL03', 'IN', 1, 0, 0, 1, '2022-08-16 09:45:01', '2022-08-16 09:45:01', 'INSCL0301', 'INSCL030110', NULL, 0),
(66, 'Nitesh', NULL, 'INSCL03', 'IN', 1, 0, 0, 1, '2022-08-16 09:45:25', '2022-08-16 09:45:25', 'INSCL0301', 'INSCL030111', NULL, 0),
(67, 'علي تجربة جديد', NULL, 'KWSCL01', 'KW', 1, 0, 0, 1, '2022-08-18 18:25:50', '2022-08-18 18:25:50', 'KWSCL0101', 'KWSCL010117', NULL, 0),
(68, 'ashok', NULL, 'INSCL03', 'IN', 1, 0, 0, 1, '2022-08-19 04:30:28', '2022-08-19 04:30:28', 'INSCL0301', 'INSCL030112', NULL, 0),
(69, 'ashok2', NULL, 'INSCL03', 'IN', 1, 0, 0, 1, '2022-08-22 05:26:13', '2022-08-22 05:26:13', 'INSCL0301', 'INSCL030113', NULL, 0),
(70, 'rajesh2', NULL, 'INSCL03', 'IN', 1, 0, 0, 1, '2022-08-22 05:37:32', '2022-08-22 05:37:32', 'INSCL0301', 'INSCL030114', NULL, 0),
(71, 'teacher', NULL, 'INSCL03', 'IN', 1, 0, 0, 1, '2022-08-23 12:25:41', '2022-08-23 12:25:41', 'INSCL0301', 'INSCL030115', NULL, 0),
(72, 'teascher', NULL, 'INSCL03', 'IN', 1, 0, 0, 1, '2022-08-23 12:29:10', '2022-08-23 12:29:10', 'INSCL0301', 'INSCL030116', NULL, 0),
(73, 'sadssas', NULL, 'INSCL03', 'IN', 1, 0, 0, 1, '2022-08-25 06:46:28', '2022-08-25 06:46:28', 'INSCL0301', 'INSCL030117', NULL, 0),
(74, 'Aaaaaa', NULL, 'INSCL03', 'IN', 1, 0, 0, 1, '2022-08-25 06:48:56', '2022-08-25 06:48:56', 'INSCL0301', 'INSCL030118', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_ratings`
--

CREATE TABLE `teacher_ratings` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `schoolrange` int(11) DEFAULT NULL,
  `easyrange` int(11) DEFAULT NULL,
  `homerange` int(11) DEFAULT NULL,
  `message` longblob DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `user_id` varchar(255) DEFAULT NULL,
  `likes` varchar(255) DEFAULT NULL,
  `dislikes` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `report` varchar(255) DEFAULT NULL,
  `selected_user_id` int(11) DEFAULT NULL,
  `is_abuse` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_ratings`
--

INSERT INTO `teacher_ratings` (`id`, `teacher_id`, `schoolrange`, `easyrange`, `homerange`, `message`, `parent_id`, `is_delete`, `user_id`, `likes`, `dislikes`, `created_at`, `updated_at`, `report`, `selected_user_id`, `is_abuse`) VALUES
(1, 26, 7, 2, 6, '', 0, 0, '21', '142', '21', '2021-08-31 19:30:38', '2022-07-05 18:48:45', '21', NULL, 0),
(3, 15, 10, 10, 7, NULL, 0, 0, '88', '', '88,79', '2021-11-01 11:39:40', '2021-11-10 12:35:51', NULL, NULL, 0),
(4, 27, 10, 10, 9, 0x476f6f642054656163686572, 0, 0, '79', '79', '', '2021-11-01 17:44:53', '2021-11-18 16:12:20', '79', NULL, 0),
(10, 27, NULL, NULL, NULL, 0x68696969617364, 9, 0, '79', NULL, NULL, '2021-11-15 17:51:20', '2021-11-18 16:41:15', '', 79, 0),
(12, 21, 10, 10, 1, NULL, 0, 0, '92', '1', '160', '2021-11-19 17:31:12', '2022-07-27 14:57:13', NULL, NULL, 0),
(13, 23, 10, 10, 10, NULL, 0, 0, '92', NULL, NULL, '2021-11-19 17:36:14', '2021-11-19 17:36:14', NULL, NULL, 0),
(14, 25, 10, 10, 10, 0x677265617774, 0, 0, '79', NULL, NULL, '2021-11-20 15:55:01', '2021-11-20 15:55:01', NULL, NULL, 0),
(15, 21, 10, 10, 1, NULL, 0, 0, '79', '117,1', '', '2021-11-20 15:56:25', '2022-07-15 15:52:08', NULL, NULL, 0),
(16, 27, 4, 5, 1, '', 0, 0, '98', '79', '98', '2021-11-22 18:40:38', '2022-06-06 17:06:46', '79', NULL, 0),
(18, 23, NULL, NULL, NULL, 0x66676768, 13, 0, '98', NULL, NULL, '2021-11-22 19:05:47', '2021-11-22 19:05:47', NULL, 0, 0),
(19, 23, 5, 5, 6, 0x626262626a, 0, 0, '98', NULL, NULL, '2021-11-22 19:08:30', '2022-07-07 14:56:51', '143', NULL, 0),
(20, 23, 8, 10, 8, 0x6772656174, 0, 0, '22', '79,22,145', '143', '2021-11-27 16:14:23', '2022-07-07 14:56:47', '145', NULL, 0),
(21, 28, 10, 10, 10, 0x677265617420646179, 0, 0, '79', '79', '', '2021-12-21 18:39:55', '2021-12-21 18:40:03', NULL, NULL, 0),
(23, 23, NULL, NULL, NULL, 0x4752414554414444, 22, 0, '111', NULL, NULL, '2022-05-02 10:24:52', '2022-05-02 10:24:52', NULL, 111, 0),
(24, 29, 1, 1, 1, 0xd8aed988d8b420d985d8afd8b1d8b3, 0, 0, '114', NULL, NULL, '2022-05-04 19:32:25', '2022-06-08 15:28:18', '72', NULL, 0),
(25, 27, 10, 10, 10, '', 0, 0, '111', '', '111', '2022-05-19 10:35:42', '2022-06-06 16:46:30', '111', NULL, 0),
(26, 28, 10, 10, 10, NULL, 0, 0, '111', '', '111', '2022-05-19 10:37:43', '2022-05-19 11:03:57', '111', NULL, 0),
(27, 28, 10, 10, 10, '', 0, 0, '127', '151', '', '2022-05-19 10:49:12', '2022-07-12 15:41:57', NULL, NULL, 0),
(28, 40, 10, 10, 10, '', 0, 0, '128', '', '128', '2022-05-19 11:10:37', '2022-06-06 15:52:25', '128', NULL, 0),
(35, 41, 5, 5, 5, NULL, 0, 0, '128', '', '128', '2022-05-19 12:06:18', '2022-05-19 12:06:34', NULL, NULL, 0),
(36, 29, 10, 10, 10, '', 0, 0, '129', '129', '150', '2022-05-26 14:08:13', '2022-07-09 01:09:11', NULL, NULL, 0),
(46, 29, NULL, NULL, NULL, 0x5265706c792074657374, 36, 0, '72', NULL, NULL, '2022-06-08 15:28:06', '2022-06-08 15:28:06', NULL, 0, 0),
(47, 29, NULL, NULL, NULL, 0xd8b5d981d8add8a920d985d8afd8b1d8b320d8abd8a7d986d988d98ad987, 36, 0, '72', NULL, NULL, '2022-06-08 16:13:07', '2022-06-08 16:13:07', NULL, 0, 0),
(48, 29, NULL, NULL, NULL, 0xd8b5d981d8add8a920d985d8afd8b1d8b320d8abd8a7d986d988d98ad987, 36, 0, '72', NULL, NULL, '2022-06-08 16:13:07', '2022-06-08 18:04:08', '1', 0, 0),
(49, 29, NULL, NULL, NULL, 0xd8aad8acd8b1d8a8d8a920d8b1d8af20d8b9d984d98920d985d8afd8b1d8b3, 24, 0, '72', NULL, NULL, '2022-06-08 18:56:13', '2022-06-08 18:56:13', NULL, 0, 0),
(50, 29, NULL, NULL, NULL, 0x54657374696e67207265706c79696e6720206f6e206120746561636865722070616765207265706f7274207370616d, 24, 0, '72', NULL, NULL, '2022-06-08 18:56:46', '2022-06-08 18:56:46', NULL, 0, 0),
(51, 29, NULL, NULL, NULL, 0x54657374696e672032332d362d32303232, 48, 0, '130', '', '130', '2022-06-23 12:57:26', '2022-06-23 12:58:18', NULL, 72, 0),
(52, 21, NULL, NULL, NULL, 0x677265617420616461, 15, 0, '117', '1', '160', '2022-06-24 16:34:51', '2022-07-28 12:31:59', NULL, 0, 0),
(53, 21, 10, 10, 10, 0x47726561742061617364617364, 0, 0, '117', '1', '117', '2022-06-24 16:41:19', '2022-07-29 16:41:16', '117', NULL, 0),
(54, 42, 10, 10, 10, 0x7665727920676f6f642074656163686572, 0, 0, '133', NULL, NULL, '2022-06-30 16:40:10', '2022-06-30 16:40:10', NULL, NULL, 0),
(55, 44, 10, 10, 10, 0xd8aed988d988d988d988d8b420d8a7d984d8aed988d988d988d988d988d988d8b4, 0, 0, '136', NULL, NULL, '2022-06-30 19:38:07', '2022-06-30 19:38:07', NULL, NULL, 0),
(56, 42, 1, 1, 1, 0x6865206973207665727920766572792068617264, 0, 0, '140', '', '140', '2022-07-01 23:53:06', '2022-07-01 23:53:14', NULL, NULL, 0),
(57, 21, NULL, NULL, NULL, 0x677265617420646179, 15, 0, '1', NULL, NULL, '2022-07-04 17:40:50', '2022-07-04 17:40:50', NULL, 117, 0),
(58, 21, NULL, NULL, NULL, 0x677465616461206420617364, 15, 0, '1', NULL, NULL, '2022-07-05 10:09:38', '2022-07-05 10:09:38', NULL, 1, 0),
(59, 21, NULL, NULL, NULL, 0x6772656174206461792068726164, 15, 0, '1', '', '', '2022-07-05 11:05:56', '2022-07-08 18:58:04', NULL, 1, 0),
(60, 21, NULL, NULL, NULL, 0x677265617420646179, 15, 0, '1', NULL, NULL, '2022-07-05 11:07:00', '2022-07-05 11:07:00', NULL, 1, 0),
(61, 21, NULL, NULL, NULL, 0x436f6c6c656769746f2d34783666777920677265617420646179, 15, 0, '1', NULL, NULL, '2022-07-05 11:13:48', '2022-07-05 11:13:48', NULL, 117, 0),
(62, 21, NULL, NULL, NULL, 0x67726179, 15, 0, '1', NULL, NULL, '2022-07-05 11:13:56', '2022-07-05 11:13:56', NULL, 1, 0),
(63, 21, NULL, NULL, NULL, 0x6772656179, 15, 0, '1', NULL, NULL, '2022-07-05 11:14:08', '2022-07-05 11:14:08', NULL, 1, 0),
(64, 26, NULL, NULL, NULL, 0x74657374696e6620692063616e7420736565207768617420696d2077726974696e67, 1, 0, '142', NULL, NULL, '2022-07-05 18:49:25', '2022-07-05 18:49:25', NULL, 0, 0),
(65, 48, 10, 10, 10, 0x676f6f64, 0, 0, '142', NULL, NULL, '2022-07-05 18:51:42', '2022-07-05 18:51:42', NULL, NULL, 0),
(66, 48, NULL, NULL, NULL, 0x68736263, 65, 0, '142', NULL, NULL, '2022-07-05 18:52:06', '2022-07-05 18:52:06', NULL, 0, 0),
(67, 23, NULL, NULL, NULL, 0x68656c6c6f20736972, 20, 0, '143', NULL, NULL, '2022-07-07 14:55:40', '2022-07-07 14:55:40', NULL, 0, 0),
(68, 23, NULL, NULL, NULL, 0x6e6e6e, 20, 0, '145', NULL, NULL, '2022-07-07 14:56:00', '2022-07-07 14:56:00', NULL, 0, 0),
(69, 23, 10, 10, 10, NULL, 0, 0, '143', NULL, NULL, '2022-07-07 14:58:09', '2022-07-07 14:58:09', NULL, NULL, 0),
(70, 21, 10, 10, 10, 0x4772656174207465616361686572, 0, 0, '1', '117,1,151', '', '2022-07-07 15:04:30', '2022-07-15 17:29:06', NULL, NULL, 0),
(71, 23, 10, 10, 10, 0x6579206973207468652073616d65207468696e672077697468206d6520616e6420796f7520617265206120677265617420706572736f6e20616e64204920686176652062656520647265616d73207468617420492068617665206e65766572206d6574207769746820796f75206172652061206769726c2077686f206973206661722066726f6d20686f6d6520746f20796f752061726520796f75206120776f6d616e20616e642049206861766520746f20626520696e2074686520776f726c64206f6620617070, 0, 0, '145', NULL, NULL, '2022-07-07 15:05:07', '2022-07-07 15:05:07', NULL, NULL, 0),
(72, 50, 10, 10, 10, 0x746869732069736e7465686468686420646e6468646a646a207368646864207368736a646a7564206468646868756420646864686a64206462646a646a6864206468646e646a64682064686468646864686468206468646868646864682064686468646a20646864686a64206468646a6864206468646a, 0, 0, '107', '107,147', '', '2022-07-07 16:58:29', '2022-07-07 16:59:56', '107', NULL, 0),
(73, 50, NULL, NULL, NULL, 0x7265616c6c79206e696365, 72, 0, '107', NULL, NULL, '2022-07-07 16:59:03', '2022-07-07 16:59:03', NULL, 0, 0),
(74, 50, NULL, NULL, NULL, 0x7468616e6b73, 72, 0, '107', NULL, NULL, '2022-07-07 17:01:14', '2022-07-07 17:01:14', NULL, 0, 0),
(75, 50, 10, 10, 10, 0x746869732077617320336120616e64207468652073616d65207468696e672068617070656e656420746f206d65206265666f72652049206861766520746f203367657420337468652070726f626c656d206f66206170706f696e746d656e7420616e64207468652073616d65207468696e672068617070656e656420746f206d6520616e6420492068617665206265656e206f6e207468652070686f6e652077697468206d7920626f79667269656e6420666f722061207768696c65206e6f77, 0, 0, '147', NULL, NULL, '2022-07-07 17:04:18', '2022-07-07 17:04:18', NULL, NULL, 0),
(76, 23, 10, 10, 10, NULL, 0, 0, '107', NULL, NULL, '2022-07-07 18:45:24', '2022-07-07 18:45:24', NULL, NULL, 0),
(77, 28, NULL, NULL, NULL, 0x74657374696e67, 21, 0, '149', NULL, NULL, '2022-07-07 20:08:09', '2022-07-07 20:08:09', NULL, 0, 0),
(78, 28, NULL, NULL, NULL, 0x74657374696e67, 26, 0, '149', NULL, NULL, '2022-07-07 20:08:31', '2022-07-07 20:08:31', NULL, 0, 0),
(79, 53, 10, 1, 5, 0x676f6f642074656163686572, 0, 0, '149', NULL, NULL, '2022-07-07 20:28:04', '2022-07-07 20:28:04', NULL, NULL, 0),
(80, 53, NULL, NULL, NULL, 0x74657374696e67, 79, 0, '149', NULL, NULL, '2022-07-07 20:28:23', '2022-07-07 20:28:23', NULL, 0, 0),
(81, 21, NULL, NULL, NULL, 0x677265617420646179, 70, 0, '1', '1', '', '2022-07-08 10:39:04', '2022-07-12 16:39:05', NULL, 0, 0),
(82, 21, NULL, NULL, NULL, 0x5c7468616e6b73, 70, 0, '1', NULL, NULL, '2022-07-08 10:40:33', '2022-07-08 10:40:33', NULL, 0, 0),
(83, 21, NULL, NULL, NULL, 0x5c7468616e6b73, 70, 0, '1', NULL, NULL, '2022-07-08 10:42:26', '2022-07-08 10:42:26', NULL, 0, 0),
(84, 21, NULL, NULL, NULL, 0x5c7468616e6b73, 70, 0, '1', NULL, NULL, '2022-07-08 10:49:01', '2022-07-08 10:49:01', NULL, 0, 0),
(85, 21, NULL, NULL, NULL, 0x5c7468616e6b73, 70, 0, '1', NULL, NULL, '2022-07-08 10:49:05', '2022-07-08 10:49:05', NULL, 0, 0),
(86, 21, NULL, NULL, NULL, 0x5c7468616e6b73, 70, 0, '1', NULL, NULL, '2022-07-08 10:49:57', '2022-07-08 10:49:57', NULL, 0, 0),
(87, 21, NULL, NULL, NULL, 0x6772656174, 70, 0, '117', NULL, NULL, '2022-07-08 11:53:15', '2022-07-08 11:53:15', NULL, 0, 0),
(88, 29, NULL, NULL, NULL, 0x74657374696e67, 36, 0, '150', NULL, NULL, '2022-07-09 01:09:25', '2022-07-09 01:09:25', NULL, 0, 0),
(89, 29, NULL, NULL, NULL, 0x74657374696e672031313131, 36, 0, '150', NULL, NULL, '2022-07-09 01:09:53', '2022-07-09 01:09:53', NULL, 72, 0),
(90, 29, 10, 10, 10, 0x74657374696e67, 0, 0, '150', NULL, NULL, '2022-07-09 01:10:28', '2022-07-09 01:10:28', NULL, NULL, 0),
(91, 55, 10, 10, 10, 0x687368736864, 0, 0, '150', NULL, NULL, '2022-07-09 01:35:01', '2022-07-09 01:35:01', NULL, NULL, 0),
(92, 55, NULL, NULL, NULL, 0x7768656e, 91, 0, '150', NULL, NULL, '2022-07-09 01:35:20', '2022-07-09 01:35:20', NULL, 0, 0),
(93, 55, NULL, NULL, NULL, 0x74657374696e67, 91, 0, '150', NULL, NULL, '2022-07-09 01:35:49', '2022-07-09 01:35:49', NULL, 150, 0),
(94, 21, NULL, NULL, NULL, 0x7a736473616173642061736420616473, 70, 0, '1', NULL, NULL, '2022-07-11 17:15:41', '2022-07-11 17:15:41', NULL, 1, 0),
(95, 21, NULL, NULL, NULL, 0x61736461736420617364612064, 70, 0, '1', NULL, NULL, '2022-07-11 17:16:28', '2022-07-11 17:16:28', NULL, 1, 0),
(96, 21, NULL, NULL, NULL, 0x6173646120617364617364, 70, 0, '1', NULL, NULL, '2022-07-11 17:18:03', '2022-07-11 17:18:03', NULL, 1, 0),
(97, 21, NULL, NULL, NULL, 0x677265617420646179, 70, 0, '117', '', '117', '2022-07-12 10:53:57', '2022-07-12 10:55:39', NULL, 1, 0),
(98, 21, NULL, NULL, NULL, 0x677261617420646179, 70, 0, '117', NULL, NULL, '2022-07-12 10:55:46', '2022-07-12 10:55:46', NULL, 117, 0),
(99, 49, 10, 10, 10, 0x676f6f642074656163686572, 0, 0, '151', '151', '', '2022-07-12 11:25:38', '2022-07-12 11:26:10', '151', NULL, 0),
(100, 49, NULL, NULL, NULL, 0x79656168, 99, 0, '151', '', '151', '2022-07-12 11:26:15', '2022-07-12 11:26:30', '151', 0, 0),
(101, 49, NULL, NULL, NULL, 0x79656168, 99, 0, '151', '151', '', '2022-07-12 11:26:23', '2022-07-12 11:26:34', '151', 151, 0),
(102, 49, NULL, NULL, NULL, 0x73686168, 99, 0, '151', NULL, NULL, '2022-07-12 11:26:42', '2022-07-12 11:26:42', NULL, 151, 0),
(103, 21, 10, 10, 10, 0x6672656168, 0, 0, '151', '160,117,1', '151', '2022-07-12 12:06:56', '2022-08-23 18:29:56', '151,117,160', NULL, 0),
(104, 21, NULL, NULL, NULL, 0x7265706c79, 103, 0, '151', '1', '117', '2022-07-12 12:07:05', '2022-07-13 13:22:00', NULL, 0, 0),
(105, 21, NULL, NULL, NULL, 0x7265706c79206f6e207265706c79, 103, 0, '151', '1', '117', '2022-07-12 12:07:14', '2022-07-13 18:57:13', NULL, 151, 0),
(106, 21, NULL, NULL, NULL, 0x6772656179, 103, 0, '151', '117,1', '', '2022-07-12 12:07:22', '2022-07-13 18:57:19', NULL, 151, 0),
(107, 56, 10, 10, 10, 0x68776873, 0, 0, '151', '', '151', '2022-07-12 12:08:15', '2022-07-12 12:08:17', NULL, NULL, 0),
(108, 58, 10, 10, 10, 0x64656570616e73687520676f6f642074656163686572, 0, 0, '151', '', '151', '2022-07-12 15:36:27', '2022-07-12 15:36:42', NULL, NULL, 0),
(109, 58, NULL, NULL, NULL, 0x676f6f64, 108, 0, '151', NULL, NULL, '2022-07-12 15:37:44', '2022-07-12 15:37:44', NULL, 0, 0),
(110, 58, NULL, NULL, NULL, 0x676f6f64, 108, 0, '151', NULL, NULL, '2022-07-12 15:37:51', '2022-07-12 15:37:51', NULL, 151, 0),
(111, 29, NULL, NULL, NULL, 0x74657374696e672031, 36, 0, '152', NULL, NULL, '2022-07-12 16:09:32', '2022-07-12 16:09:32', NULL, 150, 0),
(112, 29, NULL, NULL, NULL, 0x74657374696e67206e6577, 36, 0, '152', NULL, NULL, '2022-07-12 16:09:59', '2022-07-12 16:09:59', NULL, 150, 0),
(113, 21, NULL, NULL, NULL, 0x68656c6c6f, 15, 0, '151', '', '117', '2022-07-12 18:13:50', '2022-07-21 10:45:11', '117', 1, 0),
(114, 29, NULL, NULL, NULL, 0x74657374696e672070696e6b, 36, 0, '153', NULL, NULL, '2022-07-12 18:16:20', '2022-07-12 18:16:20', NULL, 152, 0),
(115, 21, NULL, NULL, NULL, 0x6168616a616a6120616a61, 15, 0, '151', NULL, NULL, '2022-07-12 18:17:28', '2022-07-12 18:17:28', NULL, 1, 0),
(116, 21, NULL, NULL, NULL, 0x686868, 15, 0, '151', NULL, NULL, '2022-07-12 18:18:18', '2022-07-12 18:18:18', NULL, 151, 0),
(117, 21, NULL, NULL, NULL, 0x74657374696e672070696e6b20636f6d6d656e74, 15, 0, '151', NULL, NULL, '2022-07-12 18:20:07', '2022-07-12 18:20:07', NULL, 1, 0),
(118, 21, NULL, NULL, NULL, 0x7265706c79, 103, 0, '117', '1', '117', '2022-07-13 13:15:27', '2022-07-21 15:09:28', NULL, 151, 0),
(119, 21, NULL, NULL, NULL, 0x68696969, 103, 0, '117', '1', '', '2022-07-13 17:37:53', '2022-07-21 15:10:21', NULL, 151, 0),
(120, 21, NULL, NULL, NULL, 0x7265706c79, 103, 0, '1', NULL, NULL, '2022-07-13 18:47:17', '2022-07-13 18:47:17', NULL, 151, 0),
(121, 21, NULL, NULL, NULL, 0x617364, 103, 0, '1', NULL, NULL, '2022-07-13 18:57:35', '2022-07-13 18:57:35', NULL, 151, 0),
(122, 29, NULL, NULL, NULL, 0xd8aad8acd98ad98ad98ad98ad98ad983, 90, 0, '154', NULL, NULL, '2022-07-13 20:41:49', '2022-07-13 20:41:49', NULL, 0, 0),
(123, 29, NULL, NULL, NULL, 0xd988d8b1d8afd98a, 90, 0, '154', NULL, NULL, '2022-07-13 20:42:00', '2022-07-13 20:42:00', NULL, 154, 0),
(124, 29, NULL, NULL, NULL, 0xd8a7d8b2d8b1d982, 24, 0, '154', NULL, NULL, '2022-07-13 20:43:00', '2022-07-13 20:43:00', NULL, 72, 0),
(125, 29, NULL, NULL, NULL, 0xd988d8b1d8afd98a, 24, 0, '154', NULL, NULL, '2022-07-13 20:46:25', '2022-07-13 20:46:25', NULL, 154, 0),
(126, 29, NULL, NULL, NULL, 0xd8a7d8b2d8b1d982, 24, 0, '154', NULL, NULL, '2022-07-13 20:46:33', '2022-07-13 20:46:33', NULL, 72, 0),
(127, 29, NULL, NULL, NULL, 0x6e69636b6e416d65206d7573742062652070696e6b, 24, 0, '154', NULL, NULL, '2022-07-13 20:49:22', '2022-07-13 20:49:22', NULL, 154, 0),
(128, 29, NULL, NULL, NULL, 0x6e69636b6e616d65206d75737420626520626c7565, 24, 0, '154', NULL, NULL, '2022-07-13 20:49:36', '2022-07-13 20:49:36', NULL, 72, 0),
(129, 29, NULL, NULL, NULL, 0xd988d8b1d8afd98a, 90, 0, '154', NULL, NULL, '2022-07-13 20:50:02', '2022-07-13 20:50:02', NULL, 154, 0),
(130, 29, NULL, NULL, NULL, 0xd8a7d8b2d8b1d982d982, 36, 0, '154', NULL, NULL, '2022-07-13 20:50:17', '2022-07-13 20:50:17', NULL, 153, 0),
(131, 21, NULL, NULL, NULL, 0x7265706c79, 103, 0, '1', NULL, NULL, '2022-07-14 10:28:32', '2022-07-14 10:28:32', NULL, 151, 0),
(132, 21, NULL, NULL, NULL, 0x7265706c75, 103, 0, '1', NULL, NULL, '2022-07-14 10:29:46', '2022-07-14 10:29:46', NULL, 151, 0),
(133, 21, NULL, NULL, NULL, 0x7265706c79, 103, 0, '1', NULL, NULL, '2022-07-14 10:30:03', '2022-07-14 10:30:03', NULL, 0, 0),
(134, 21, NULL, NULL, NULL, 0x74657374696e67207265706c79, 15, 0, '1', NULL, NULL, '2022-07-15 11:12:50', '2022-07-15 11:12:50', NULL, 151, 0),
(135, 21, NULL, NULL, NULL, 0x74657374696e67207265706c7932, 15, 0, '1', NULL, NULL, '2022-07-15 11:13:14', '2022-07-15 11:13:14', NULL, 0, 0),
(136, 21, NULL, NULL, NULL, 0x74657374696e672068657265, 15, 0, '1', NULL, NULL, '2022-07-15 14:39:43', '2022-07-15 14:39:43', NULL, 151, 0),
(137, 21, NULL, NULL, NULL, 0x74657374696e6720333032, 70, 0, '151', NULL, NULL, '2022-07-15 15:01:06', '2022-07-15 15:01:06', NULL, 1, 0),
(138, 21, NULL, NULL, NULL, 0x74657374696e67206275696c64, 70, 0, '151', NULL, NULL, '2022-07-15 15:01:32', '2022-07-15 15:01:32', NULL, 0, 0),
(139, 21, NULL, NULL, NULL, 0x6865797979206d616e, 103, 0, '1', NULL, NULL, '2022-07-15 15:52:24', '2022-07-15 15:52:24', NULL, 151, 0),
(140, 21, NULL, NULL, NULL, 0x74657374696e67, 103, 0, '151', NULL, NULL, '2022-07-15 17:20:41', '2022-07-15 17:20:41', NULL, 0, 0),
(141, 29, NULL, NULL, NULL, 0x74657374696e67207265706c79206e69636b6e616d65206d7573742062652070696e6b, 90, 0, '155', NULL, NULL, '2022-07-15 17:36:43', '2022-07-15 17:36:43', NULL, 154, 0),
(142, 29, NULL, NULL, NULL, 0x74657374696e67207265706c79206e69636b6e616d65206d75737420626520626c7565, 36, 0, '155', NULL, NULL, '2022-07-15 17:37:04', '2022-07-15 17:37:04', NULL, 153, 0),
(143, 29, NULL, NULL, NULL, 0x74657374696e67206e65777777, 90, 0, '155', NULL, NULL, '2022-07-15 17:38:39', '2022-07-15 17:38:39', NULL, 0, 0),
(144, 29, NULL, NULL, NULL, 0x74657374696e67206e6577777777, 90, 0, '155', NULL, NULL, '2022-07-15 17:39:12', '2022-07-15 17:39:12', NULL, 0, 0),
(145, 61, 10, 10, 10, 0x7368686468736878, 0, 0, '155', NULL, NULL, '2022-07-15 17:42:33', '2022-07-15 17:42:33', NULL, NULL, 0),
(146, 21, NULL, NULL, NULL, 0x74657374696e67206275696c643132, 70, 0, '117', NULL, NULL, '2022-07-21 10:44:37', '2022-07-21 10:44:37', NULL, 151, 0),
(147, 21, 9, 9, 9, 0x67726561742074656163686572, 0, 0, '160', '160', '', '2022-07-21 12:15:06', '2022-08-22 15:20:53', '1', NULL, 0),
(148, 21, NULL, NULL, NULL, 0x74657374696e67, 147, 0, '117', '', '160', '2022-07-21 14:36:15', '2022-07-21 14:42:26', NULL, 0, 0),
(149, 21, NULL, NULL, NULL, 0x7265706c79696267, 147, 0, '160', '1,117', '', '2022-07-21 14:42:42', '2022-07-22 11:13:36', NULL, 117, 0),
(150, 21, NULL, NULL, NULL, 0x7265706c79, 53, 0, '160', NULL, NULL, '2022-07-21 14:43:09', '2022-07-21 14:43:09', NULL, 0, 0),
(151, 21, NULL, NULL, NULL, 0x677265617420646179, 147, 0, '1', '', '117,160', '2022-07-21 15:09:13', '2022-07-27 11:35:48', NULL, 117, 0),
(152, 21, NULL, NULL, NULL, 0x7265706c79, 53, 0, '1', NULL, NULL, '2022-07-21 16:33:26', '2022-07-21 16:33:26', NULL, 0, 0),
(153, 21, NULL, NULL, NULL, 0x7265706c79, 15, 0, '1', NULL, NULL, '2022-07-21 16:33:45', '2022-07-21 16:33:45', NULL, 117, 0),
(154, 29, 10, 10, 10, 0xd985d8b1d8a7d8a7d8a7d8a7d8a7d8acd8b9d8a920d98ad8a720d985d8b1d8a7d8acd8b9, 0, 0, '161', NULL, NULL, '2022-07-22 02:41:09', '2022-07-22 02:41:09', NULL, NULL, 0),
(155, 29, NULL, NULL, NULL, 0x74657374696e6767, 154, 0, '161', NULL, NULL, '2022-07-22 02:53:00', '2022-07-22 02:53:00', NULL, 0, 0),
(156, 54, 10, 10, 10, 0xd985d8b1d8add8a8, 0, 0, '117', NULL, NULL, '2022-07-25 10:37:35', '2022-07-25 10:37:35', NULL, NULL, 0),
(157, 26, NULL, NULL, NULL, 0x686868, 1, 0, '160', NULL, NULL, '2022-07-26 19:05:36', '2022-07-26 19:05:36', NULL, 142, 0),
(158, 21, NULL, NULL, NULL, 0x6c6574732074657374, 103, 0, '160', NULL, NULL, '2022-07-27 12:28:18', '2022-07-27 12:28:18', NULL, 1, 0),
(159, 21, NULL, NULL, NULL, 0x48657979, 12, 0, '160', NULL, NULL, '2022-07-27 14:57:18', '2022-07-27 14:57:18', NULL, 0, 0),
(160, 64, 10, 10, 10, 0x4764686420776f726b, 0, 0, '130', NULL, NULL, '2022-08-10 15:27:50', '2022-08-10 15:27:50', NULL, NULL, 0),
(161, 21, NULL, NULL, NULL, 0x74657374, 159, 0, '1', NULL, NULL, '2022-08-23 15:16:08', '2022-08-23 15:16:08', NULL, 160, 0),
(162, 21, NULL, NULL, NULL, 0x74657374, 161, 0, '1', NULL, NULL, '2022-08-23 15:16:25', '2022-08-23 15:16:25', NULL, 1, 0),
(163, 21, NULL, NULL, NULL, 0x74657374, 12, 0, '1', NULL, NULL, '2022-08-23 15:16:35', '2022-08-23 15:16:35', NULL, 0, 0),
(164, 21, NULL, NULL, NULL, 0x74657374, 12, 0, '1', NULL, NULL, '2022-08-23 15:17:26', '2022-08-23 15:17:26', NULL, 0, 0),
(165, 21, NULL, NULL, NULL, 0x74657374, 164, 0, '1', NULL, NULL, '2022-08-23 15:44:24', '2022-08-23 15:44:24', NULL, 1, 0),
(166, 21, NULL, NULL, NULL, 0x74657374, 12, 0, '1', NULL, NULL, '2022-08-23 15:44:32', '2022-08-23 15:44:32', NULL, 0, 0),
(167, 70, 1, 1, 1, '', 0, 0, '117', NULL, NULL, '2022-08-24 18:43:43', '2022-08-24 18:43:43', NULL, NULL, 0),
(170, 74, 1, 1, 1, '', 0, 0, '1', NULL, NULL, '2022-08-25 12:20:07', '2022-08-25 12:20:07', NULL, NULL, 0),
(171, 21, NULL, NULL, NULL, 0x616161616161, 148, 0, '1', NULL, NULL, '2022-08-25 17:40:02', '2022-08-25 17:40:02', NULL, 117, 0),
(172, 21, NULL, NULL, NULL, 0x3131313131, 147, 0, '1', '', '', '2022-08-25 17:40:40', '2022-08-25 17:41:12', NULL, 0, 0),
(173, 28, 10, 5, 10, 0x536f20736f, 0, 0, '130', NULL, NULL, '2022-08-29 16:42:50', '2022-08-29 16:42:50', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_created` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `title_en`, `title_ar`, `image`, `description_en`, `description_ar`, `date_created`, `is_delete`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Latest News 1', 'آخر الأخبار 1', '1651648256.png', '<p>This is news.</p>', '<div id=\"tw-target-text-container\" class=\"tw-ta-container F0azHf tw-lfl\" tabindex=\"0\">\r\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"rtl\" data-placeholder=\"Translation\"><span class=\"Y2IQFc\" lang=\"ar\">هذه أخبار.</span></pre>\r\n</div>\r\n<div id=\"tw-target-rmn-container\" class=\"tw-target-rmn tw-ta-container F0azHf tw-nfl\"></div>', NULL, 0, 0, '2021-07-12 07:34:09', '2022-05-30 14:25:42'),
(2, 'slider 1', 'slider in arabic', '1626163368.jpg', 'description of slider in english', 'description of slider in arabic&nbsp;', '13-July-2021', 0, 0, '2021-07-13 02:32:48', '2022-05-30 14:25:52'),
(3, 'slider1', 'slider1', '', '<p>Description of slider</p>', '<p>description of arabic slider</p>', '13-July-2021', 0, 0, '2021-07-13 03:34:27', '2022-05-30 14:25:58'),
(4, 'Alooo', 'الووو', '1634258979.jpg', 'Aloo22222', 'الووو', '15-October-2021', 0, 0, '2021-10-15 00:49:39', '2022-05-30 14:26:03'),
(5, 'Today’s news', 'اخبار اليوم', '1653671435.png', '<p>Ali news</p>', '<p>صرح علي</p>', '27-May-2022', 0, 0, '2022-05-27 17:10:35', '2022-05-30 14:26:08'),
(6, 'Ppp', 'Ttt', '1653735729.jpg', '<p>Ppp</p>', '<p>Ppp</p>', '28-May-2022', 0, 0, '2022-05-28 11:02:09', '2022-05-30 14:26:13'),
(7, 'Congratulations Hamed', 'مبروك التخرج بو جلو', '1653920873.png', '<p>مبرووووك بو جلو</p>', '<p>Mabroook bo jlooo</p>', '30-May-2022', 0, 1, '2022-05-30 14:27:53', '2022-05-30 14:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `universities`
--

CREATE TABLE `universities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `university_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_code` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `universities`
--

INSERT INTO `universities` (`id`, `name`, `university_code`, `country_code`, `lang_code`, `status`, `is_delete`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'university', 'IN01', 'IN', 1, 1, 0, 0, '2021-06-21 07:54:00', '2021-06-22 00:15:37'),
(2, 'university21', 'MA01', 'MA', 1, 0, 0, 0, '2021-06-21 07:54:52', '2021-07-05 05:46:32'),
(3, 'oxford', 'GB01', 'GB', 1, 1, 0, 0, '2021-06-22 00:35:11', '2021-06-22 00:35:11'),
(4, 'JaipurNationalUniverity', 'IN02', 'IN', 1, 1, 0, 0, '2021-07-14 02:10:02', '2021-07-14 02:10:02'),
(5, 'yellow', 'AF01', 'AF', 1, 1, 0, 0, '2021-07-14 02:13:38', '2021-07-14 02:13:38'),
(6, 'Kuwait uni', 'IN03', 'IN', 2, 1, 0, 0, '2021-07-16 04:45:13', '2021-07-28 12:04:25'),
(7, 'ss sd', 'IN04', 'IN', 1, 1, 0, 0, '2021-07-16 04:45:53', '2021-07-16 04:45:53'),
(8, 'dev university', 'IN05', 'IN', 1, 1, 0, 0, '2021-07-16 07:03:23', '2021-07-16 07:03:23'),
(9, 'sdf', 'IN06', 'IN', 2, 1, 0, 0, '2021-07-16 08:47:32', '2021-07-16 08:47:32'),
(10, 'Dev University', 'IN07', 'IN', 1, 1, 0, 0, '2021-07-19 04:15:09', '2021-07-19 04:15:09'),
(11, 'Subodh ', 'IN08', 'IN', 2, 1, 0, 0, '2021-07-19 04:15:09', '2021-07-19 04:15:09'),
(12, 'IIIM', 'IN09', 'IN', 1, 1, 0, 0, '2021-07-19 04:15:09', '2021-07-19 04:15:09'),
(13, 'Yells', 'IN10', 'IN', 2, 1, 0, 0, '2021-07-19 05:02:02', '2021-07-19 05:02:02'),
(14, 'Hello University', 'IS01', 'IS', 1, 1, 0, 0, '2021-07-19 05:47:43', '2021-07-19 05:47:43'),
(15, 'Oklahama University', 'US01', 'US', 2, 1, 0, 0, '2021-07-19 05:50:29', '2021-07-19 07:29:11'),
(16, 'Poco Univeristy', 'AU01', 'AU', 1, 1, 0, 1, '2021-07-28 01:26:17', '2021-08-18 06:16:05'),
(17, 'سامسونج', 'ES01', 'ES', 2, 1, 1, 0, '2021-07-28 01:27:45', '2021-09-05 19:07:53'),
(18, 'Kuwait university', 'KW01', 'KW', 1, 1, 0, 0, '2021-07-31 13:43:34', '2021-07-31 13:43:34'),
(19, 'سامسونج', 'AF02', 'AF', 1, 1, 1, 1, '2021-08-02 05:03:06', '2021-09-05 19:07:53'),
(20, 'Kuwait uni', 'KW02', 'KW', 1, 1, 0, 0, '2021-08-05 10:37:16', '2021-08-05 10:37:16'),
(21, 'T40', 'DZ01', 'DZ', 1, 1, 1, 0, '2021-08-12 12:28:24', '2021-09-05 19:07:53'),
(22, 'princess nora bint abdul rahman university', 'SA01', 'SA', 2, 1, 0, 0, '2021-09-01 17:42:21', '2021-10-18 10:32:36'),
(3802, 'جامعة عادل تجربة', 'KW03', 'KW', 2, 1, 0, 0, '2022-05-21 19:55:45', '2022-05-21 19:55:45'),
(3803, 'Ali uni', 'KW04', 'KW', 1, 1, 0, 0, '2022-05-22 19:11:06', '2022-05-22 19:11:06');

-- --------------------------------------------------------

--
-- Table structure for table `university_ratings`
--

CREATE TABLE `university_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `university_id` int(11) NOT NULL,
  `professor_range` int(11) DEFAULT NULL,
  `course_range` int(11) DEFAULT NULL,
  `facility_range` int(11) DEFAULT NULL,
  `message` longblob DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `likes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dislikes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selected_user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_abuse` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `university_ratings`
--

INSERT INTO `university_ratings` (`id`, `university_id`, `professor_range`, `course_range`, `facility_range`, `message`, `parent_id`, `is_delete`, `user_id`, `likes`, `dislikes`, `report`, `selected_user_id`, `created_at`, `updated_at`, `is_abuse`) VALUES
(1, 8, 6, 3, 6, 0x6e796320706c61636520746f2066756e, 0, 0, '11', '15,21', '22,11', '21', NULL, '2021-08-13 04:41:33', '2022-06-03 05:41:58', 0),
(2, 16, 1, 3, 9, 0x612073646173206461736420617364206120646464646464646464646464646464646464646464646173642061732064617364612073646173206461736420617364206120646464646464646464646464646464646464646464646173642061732064617364612073646173206461736420617364206120646464646464646464646464646464646464646464646173642061732064617364612073646173206461736420617364206120646464646464646464646464646464646464646464646173642061732064617364612073646173206461736420617364206120646464646464646464646464646464646464646464646173642061732064617364612073646173206461736420617364206120646464646464646464646464646464646464646464646173642061732064617364, 0, 0, '36', NULL, NULL, NULL, NULL, '2021-08-17 09:54:29', '2021-08-17 09:54:29', 0),
(3, 19, 10, 10, 10, 0x617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364617364206173642061736461736420617364206173646173642061736420617364, 0, 0, '36', '36', '', '', NULL, '2021-08-17 09:57:28', '2021-11-10 06:49:53', 0),
(4, 10, 7, 4, 7, 0x736466736466736466736420667364667364662073646673646673206466736466736466736466736466736466736466736420667364667364662073646673646673206466736466736466736466736466736466736466736420667364667364662073646673646673206466736466736466736466736466736466736466736420667364667364662073646673646673206466736466736466736466736466736466736466736420667364667364662073646673646673206466736466736466736466736466736466736466736420667364667364662073646673646673206466736466736466736466, 0, 0, '11', '2', '11', NULL, NULL, '2021-08-26 12:56:27', '2022-05-05 10:08:35', 0),
(5, 6, 10, 1, 6, NULL, 0, 0, '51', '63', '', '51', NULL, '2021-08-29 09:44:13', '2021-09-01 13:38:49', 0),
(6, 6, 10, 2, 6, 0x62616420666f6f64, 0, 1, '63', NULL, NULL, NULL, NULL, '2021-09-01 13:39:26', '2021-09-23 06:14:58', 0),
(7, 4, 4, 7, 3, 0x74657374696e67206d792064617461, 0, 0, '70', '98,1', '', NULL, NULL, '2021-09-07 06:16:28', '2022-05-05 11:50:11', 0),
(10, 4, NULL, NULL, NULL, 0x686579206920616d207265706c79696e67206f6e206d61696e206f6e65, 7, 0, '69', '', '79', NULL, '0', '2021-09-07 06:18:28', '2021-11-15 06:44:11', 0),
(11, 4, NULL, NULL, NULL, 0x68696520616c69, 10, 0, '69', '', '', NULL, '69', '2021-09-07 06:18:58', '2021-11-15 06:40:22', 0),
(12, 4, NULL, NULL, NULL, 0x68696520616c6920616761696e, 11, 0, '69', '', '79', NULL, '69', '2021-09-07 06:21:17', '2021-11-15 06:44:17', 0),
(13, 4, NULL, NULL, NULL, 0x68657979797979797979, 10, 0, '69', '79', '', NULL, '69', '2021-09-07 06:28:03', '2021-11-15 06:32:36', 0),
(14, 4, NULL, NULL, NULL, 0x686579206d61696e2075736572, 10, 0, '69', '', '79', NULL, '69', '2021-09-07 06:30:35', '2021-11-15 06:42:42', 0),
(15, 4, 4, 8, 5, 0x74657374696e67206d7920756e6976657273697479, 0, 0, '22', '22,98,1,117', '', '22', NULL, '2021-09-10 11:02:11', '2022-06-24 12:09:18', 0),
(16, 4, NULL, NULL, NULL, 0x686965206920616d207265706c79696e6720796f75, 7, 0, '22', '', '79', NULL, '0', '2021-09-10 11:05:53', '2021-11-15 06:44:08', 0),
(18, 18, 10, 1, 6, 0x676f6f64207363686f6f6c, 0, 0, '38', NULL, NULL, '39', NULL, '2021-09-29 13:03:05', '2021-10-18 10:26:14', 0),
(19, 18, NULL, NULL, NULL, 0x4e6f7420676f6f64, 18, 0, '39', NULL, NULL, NULL, '0', '2021-10-15 01:10:04', '2021-10-15 01:10:04', 0),
(20, 4, 10, 10, 9, 0x68656c6c6f20677465617420756e6976657273697479, 0, 0, '79', '79,22,117', '', '79,92', NULL, '2021-11-01 04:39:46', '2022-06-24 12:09:16', 0),
(21, 4, NULL, NULL, NULL, 0x68656c6c6f, 20, 0, '79', '22,79', '', NULL, '0', '2021-11-09 09:17:05', '2021-11-15 05:42:33', 0),
(22, 4, NULL, NULL, NULL, 0x68656c6c6f2074657374696e67, 21, 0, '79', '79', '22', NULL, '79', '2021-11-09 09:17:23', '2021-11-15 06:33:26', 0),
(23, 4, 10, 10, 10, 0x4772656174, 0, 0, '89', '89,79', '117', '79,98', NULL, '2021-11-12 06:39:10', '2022-07-26 05:52:19', 0),
(24, 4, NULL, NULL, NULL, 0x68656c6c6f, 23, 0, '79', '', '79', NULL, '0', '2021-11-12 07:38:10', '2021-11-15 06:33:02', 0),
(25, 4, NULL, NULL, NULL, 0x6869207468657265, 23, 0, '79', '', '79', NULL, '0', '2021-11-12 07:39:19', '2021-11-15 06:33:00', 0),
(26, 4, NULL, NULL, NULL, 0x6869696969696969, 23, 0, '79', '', '', NULL, '0', '2021-11-12 09:52:54', '2021-11-15 06:33:06', 0),
(27, 4, NULL, NULL, NULL, 0x6a6a6a, 23, 0, '79', '', '79', NULL, '0', '2021-11-12 10:01:02', '2021-11-15 07:08:42', 0),
(28, 4, NULL, NULL, NULL, 0x6e6f74206772656174, 23, 0, '79', NULL, NULL, NULL, '0', '2021-11-15 07:09:42', '2021-11-15 07:09:42', 0),
(35, 13, 10, 10, 10, NULL, 0, 0, '79', NULL, NULL, NULL, NULL, '2021-11-15 07:35:31', '2021-11-15 07:35:31', 0),
(37, 6, NULL, NULL, NULL, 0x68656c6c6f20616d61736164, 5, 0, '79', NULL, NULL, NULL, '0', '2021-11-15 07:37:15', '2021-11-15 07:37:15', 0),
(38, 6, NULL, NULL, NULL, 0x68696969696969647367617366616673, 5, 0, '79', NULL, NULL, NULL, '0', '2021-11-15 07:41:43', '2021-11-15 07:41:43', 0),
(39, 6, NULL, NULL, NULL, 0x7465737431, 5, 0, '79', NULL, NULL, NULL, '0', '2021-11-15 07:43:30', '2021-11-15 07:43:30', 0),
(41, 6, NULL, NULL, NULL, 0x7465737433, 5, 0, '79', NULL, NULL, NULL, '0', '2021-11-15 07:47:08', '2021-11-15 07:47:08', 0),
(42, 6, NULL, NULL, NULL, 0x7465737434, 5, 0, '79', NULL, NULL, NULL, '0', '2021-11-15 07:48:59', '2021-11-15 07:48:59', 0),
(44, 1, 10, 10, 10, 0x6772656174, 0, 0, '79', '', '79', NULL, NULL, '2021-11-15 07:54:37', '2021-11-15 08:01:54', 0),
(46, 1, NULL, NULL, NULL, 0x7465737432, 44, 0, '79', NULL, NULL, NULL, '0', '2021-11-15 07:55:03', '2021-11-15 07:55:03', 0),
(47, 1, NULL, NULL, NULL, 0x7465737433, 44, 0, '79', '79', '', NULL, '0', '2021-11-15 07:55:19', '2021-11-15 08:01:50', 0),
(48, 1, NULL, NULL, NULL, 0x7465737434, 44, 0, '79', NULL, NULL, NULL, '0', '2021-11-15 09:16:48', '2021-11-15 09:16:48', 0),
(49, 1, NULL, NULL, NULL, 0x7465737435, 44, 0, '79', NULL, NULL, NULL, '0', '2021-11-15 09:17:58', '2021-11-15 09:17:58', 0),
(50, 1, NULL, NULL, NULL, 0x7465737436, 44, 0, '79', NULL, NULL, NULL, '0', '2021-11-15 09:18:36', '2021-11-15 09:18:36', 0),
(51, 4, NULL, NULL, NULL, 0x7465737434, 15, 0, '79', NULL, NULL, NULL, '0', '2021-11-15 09:20:05', '2021-11-15 09:20:05', 0),
(52, 4, NULL, NULL, NULL, 0x7465737435, 15, 0, '79', NULL, NULL, NULL, '0', '2021-11-15 09:24:51', '2021-11-15 09:24:51', 0),
(53, 4, NULL, NULL, NULL, 0x7465737436, 20, 0, '79', '79', '', NULL, '0', '2021-11-15 09:25:34', '2021-11-23 04:32:52', 0),
(54, 4, NULL, NULL, NULL, 0x7465737436, 15, 0, '79', NULL, NULL, '79', '0', '2021-11-15 09:26:20', '2021-11-18 12:23:38', 0),
(55, 4, NULL, NULL, NULL, 0x746573743535, 24, 0, '79', NULL, NULL, NULL, '24', '2021-11-15 09:37:25', '2021-11-15 09:37:25', 0),
(56, 4, NULL, NULL, NULL, 0x74657374343435, 24, 0, '79', '', '151', NULL, '24', '2021-11-15 09:39:42', '2022-07-12 05:58:09', 0),
(57, 4, NULL, NULL, NULL, 0x74657374323331, 24, 0, '79', '', '151', NULL, '24', '2021-11-15 09:41:08', '2022-07-12 05:58:08', 0),
(58, 4, NULL, NULL, NULL, 0x74657374696e673331, 23, 0, '79', '', '79', NULL, '0', '2021-11-15 09:41:25', '2021-11-18 06:08:48', 0),
(59, 4, NULL, NULL, NULL, 0x74657374696e673132, 24, 0, '79', NULL, NULL, NULL, '24', '2021-11-15 09:43:52', '2021-11-15 09:43:52', 0),
(60, 4, NULL, NULL, NULL, 0x746573743231, 58, 0, '79', '', '79', NULL, '58', '2021-11-15 09:46:01', '2021-11-15 11:13:27', 0),
(61, 7, 10, 10, 8, NULL, 0, 0, '79', NULL, NULL, NULL, NULL, '2021-11-15 09:47:13', '2021-11-15 09:47:13', 0),
(62, 7, NULL, NULL, NULL, 0x6869756969, 61, 0, '79', NULL, NULL, NULL, '0', '2021-11-15 09:47:30', '2021-11-15 09:47:30', 0),
(63, 7, NULL, NULL, NULL, 0x686969696969696969, 62, 0, '79', NULL, NULL, NULL, '79', '2021-11-15 09:49:27', '2021-11-15 09:49:27', 0),
(64, 7, NULL, NULL, NULL, 0x7465737432, 63, 0, '79', NULL, NULL, NULL, '79', '2021-11-15 09:51:19', '2021-11-15 09:51:19', 0),
(65, 7, NULL, NULL, NULL, 0x74657374323332, 64, 0, '79', NULL, NULL, NULL, '79', '2021-11-15 09:53:39', '2021-11-15 09:53:39', 0),
(66, 7, NULL, NULL, NULL, 0x74657374323334, 65, 0, '79', NULL, NULL, NULL, '79', '2021-11-15 09:54:26', '2021-11-15 09:54:26', 0),
(67, 7, NULL, NULL, NULL, 0x6764786731, 66, 0, '79', NULL, NULL, NULL, '79', '2021-11-15 09:55:34', '2021-11-15 09:55:34', 0),
(68, 7, NULL, NULL, NULL, 0x6764677a78617a6378, 67, 0, '79', NULL, NULL, NULL, '79', '2021-11-15 09:56:50', '2021-11-15 09:56:50', 0),
(69, 4, NULL, NULL, NULL, 0x746573743132, 53, 0, '79', NULL, NULL, NULL, '79', '2021-11-15 11:19:21', '2021-11-15 11:19:21', 0),
(70, 7, NULL, NULL, NULL, 0x7465737431323131, 68, 0, '79', NULL, NULL, NULL, '79', '2021-11-15 11:20:59', '2021-11-15 11:20:59', 0),
(71, 7, NULL, NULL, NULL, 0x313232313231, 70, 0, '79', NULL, NULL, NULL, '79', '2021-11-15 11:23:14', '2021-11-15 11:23:14', 0),
(72, 7, NULL, NULL, NULL, 0x313233323133313233313233323133, 71, 0, '79', NULL, NULL, NULL, '79', '2021-11-15 11:24:25', '2021-11-15 11:24:25', 0),
(73, 7, NULL, NULL, NULL, 0x74657473743132, 65, 0, '79', NULL, NULL, NULL, '79', '2021-11-15 11:25:25', '2021-11-15 11:25:25', 0),
(74, 7, NULL, NULL, NULL, 0x746573743132313132, 72, 0, '79', NULL, NULL, NULL, '79', '2021-11-15 11:28:07', '2021-11-15 11:28:07', 0),
(75, 1, NULL, NULL, NULL, 0x746573743132, 45, 0, '79', NULL, NULL, NULL, '79', '2021-11-15 11:31:51', '2021-11-15 11:31:51', 0),
(76, 1, NULL, NULL, NULL, 0x74657374206d, 45, 0, '79', NULL, NULL, NULL, '79', '2021-11-15 11:32:49', '2021-11-15 11:32:49', 0),
(77, 16, NULL, NULL, NULL, 0x686c656c6f, 2, 0, '79', NULL, NULL, NULL, '0', '2021-11-15 11:37:20', '2021-11-15 11:37:20', 0),
(78, 16, NULL, NULL, NULL, 0x68656c6c6f, 77, 0, '79', NULL, NULL, NULL, '79', '2021-11-15 11:37:25', '2021-11-15 11:37:25', 0),
(79, 16, NULL, NULL, NULL, 0x68726c6c6f323131, 78, 0, '79', NULL, NULL, NULL, '79', '2021-11-15 11:37:49', '2021-11-15 11:37:49', 0),
(80, 1, NULL, NULL, NULL, 0x74657374617420313233323133, 75, 0, '79', NULL, NULL, NULL, '79', '2021-11-15 11:43:04', '2021-11-15 11:43:04', 0),
(81, 1, NULL, NULL, NULL, 0x7465737431322073756365737366756c6c, 75, 0, '79', NULL, NULL, NULL, '79', '2021-11-15 11:49:28', '2021-11-15 11:49:28', 0),
(82, 4, NULL, NULL, NULL, 0x68656c6c6f203132, 24, 0, '79', NULL, NULL, NULL, '79', '2021-11-15 11:49:59', '2021-11-15 11:49:59', 0),
(83, 4, NULL, NULL, NULL, 0x68656c6c6f207265706c79696e67, 21, 0, '79', NULL, NULL, NULL, '79', '2021-11-15 11:53:22', '2021-11-15 11:53:22', 0),
(84, 4, NULL, NULL, NULL, 0x7265706c79696e682074657374696e3331, 58, 0, '79', NULL, NULL, NULL, '79', '2021-11-15 11:54:12', '2021-11-15 11:54:12', 0),
(85, 4, NULL, NULL, NULL, 0x74657374313233323133323331323331, 17, 0, '79', NULL, NULL, NULL, '22', '2021-11-15 12:05:15', '2021-11-15 12:05:15', 0),
(86, 4, NULL, NULL, NULL, 0x68726c6c6f203136, 58, 0, '79', NULL, NULL, NULL, '79', '2021-11-16 10:46:42', '2021-11-16 10:46:42', 0),
(87, 4, NULL, NULL, NULL, 0x68696969, 7, 0, '79', NULL, NULL, NULL, '0', '2021-11-18 06:06:08', '2021-11-18 06:06:08', 0),
(88, 4, NULL, NULL, NULL, 0x727265706c696e67, 17, 0, '79', NULL, NULL, NULL, '22', '2021-11-18 06:06:52', '2021-11-18 06:06:52', 0),
(89, 4, NULL, NULL, NULL, 0x6864737368736468, 87, 0, '79', NULL, NULL, NULL, '79', '2021-11-18 06:09:24', '2021-11-18 06:09:24', 0),
(90, 4, 7, 8, 6, NULL, 0, 0, '92', NULL, NULL, '79', NULL, '2021-11-19 12:16:43', '2021-11-19 12:48:37', 0),
(91, 12, 10, 10, 10, 0x477265617420756e6976657273697479, 0, 0, '79', NULL, NULL, NULL, NULL, '2021-11-19 12:59:38', '2021-11-19 12:59:38', 0),
(92, 11, 10, 10, 10, 0x68656c6c6f207468657265206e6f74206120676f6f6420636f6c6c656765, 0, 0, '79', NULL, NULL, NULL, NULL, '2021-11-19 13:07:45', '2021-11-19 13:07:45', 0),
(93, 16, 10, 10, 10, NULL, 0, 0, '79', NULL, NULL, NULL, NULL, '2021-11-20 10:35:29', '2021-11-20 10:35:29', 0),
(94, 4, 6, 7, 7, '', 0, 0, '98', '1,151', '', '79', NULL, '2021-11-22 13:23:17', '2022-07-15 09:35:15', 0),
(95, 4, NULL, NULL, NULL, 0x66667863636767, 90, 0, '98', NULL, NULL, NULL, '0', '2021-11-22 13:33:58', '2021-11-22 13:33:58', 0),
(97, 4, NULL, NULL, NULL, 0x6772656174206164736461, 96, 0, '79', NULL, NULL, NULL, '22', '2021-11-27 12:16:59', '2021-11-27 12:16:59', 0),
(98, 4, NULL, NULL, NULL, 0x667564736120617364206461736473, 55, 0, '111', NULL, NULL, NULL, '79', '2022-05-02 04:57:56', '2022-05-02 04:57:56', 0),
(99, 4, NULL, NULL, NULL, 0x7364666473, 98, 0, '111', NULL, NULL, NULL, '111', '2022-05-02 04:58:04', '2022-05-02 04:58:04', 0),
(100, 10, NULL, NULL, NULL, 0x62686169206f79652062686169, 4, 0, '1', '2', '', NULL, '0', '2022-05-05 10:06:05', '2022-05-05 10:52:08', 0),
(102, 4, NULL, NULL, NULL, 0x677265617420646179207368736a736b207368736f7320616868616f73207368736a6b73, 94, 0, '1', '2,151,117', '1', NULL, '0', '2022-05-05 10:09:51', '2022-07-21 05:18:41', 0),
(103, 4, NULL, NULL, NULL, 0x6869696969, 102, 0, '2', NULL, NULL, NULL, '1', '2022-05-05 10:13:01', '2022-05-05 10:13:01', 0),
(104, 10, NULL, NULL, NULL, 0x6f6b6179, 100, 0, '2', '1', '', NULL, '1', '2022-05-05 10:52:20', '2022-05-05 10:53:13', 0),
(105, 10, 10, 10, 10, 0x6e6f74206120677265617420746f6e73756679, 0, 0, '2', '', '1', NULL, NULL, '2022-05-05 10:53:58', '2022-05-05 10:56:49', 0),
(106, 10, 10, 10, 9, 0x677265617467616a616a61, 0, 0, '1', NULL, NULL, NULL, NULL, '2022-05-05 10:54:38', '2022-05-05 10:54:38', 0),
(107, 9, 10, 10, 10, 0x6772656174, 0, 0, '2', '2', '1', NULL, NULL, '2022-05-05 11:09:08', '2022-05-05 12:23:02', 0),
(108, 9, NULL, NULL, NULL, 0x6772656174, 107, 0, '1', '2', '', NULL, '0', '2022-05-05 12:23:11', '2022-05-05 12:23:36', 0),
(110, 18, 10, 10, 10, 0x676f6f6420676f6f64, 0, 0, '125', '133', '', '1', NULL, '2022-05-18 18:55:13', '2022-06-30 08:18:49', 0),
(111, 4, 10, 10, 9, 0x617364617364, 0, 0, '111', '', '1', '117', NULL, '2022-05-18 19:01:54', '2022-07-08 06:56:39', 0),
(112, 1, 10, 10, 10, 0x617364617364, 0, 0, '111', '', '', NULL, NULL, '2022-05-18 19:03:39', '2022-07-08 09:50:08', 0),
(113, 6, 10, 10, 9, NULL, 0, 0, '111', NULL, NULL, NULL, NULL, '2022-05-18 19:04:21', '2022-05-18 19:04:21', 0),
(114, 7, 10, 10, 9, NULL, 0, 0, '111', NULL, NULL, NULL, NULL, '2022-05-18 19:04:36', '2022-05-18 19:04:36', 0),
(115, 8, 10, 10, 10, 0x6772656174, 0, 0, '111', NULL, NULL, NULL, NULL, '2022-05-18 19:04:49', '2022-05-18 19:04:49', 0),
(116, 10, 10, 10, 9, 0x677265617420756e69766572737479, 0, 0, '111', NULL, NULL, NULL, NULL, '2022-05-18 19:05:22', '2022-05-18 19:05:22', 0),
(117, 11, 10, 10, 9, '', 0, 0, '111', NULL, NULL, NULL, NULL, '2022-05-19 10:30:27', '2022-06-06 06:01:55', 0),
(118, 4, 10, 10, 10, '', 0, 0, '127', '1', '', NULL, NULL, '2022-05-19 05:19:38', '2022-07-08 06:56:00', 0),
(119, 4, 10, 10, 10, '', 0, 0, '128', '', '128,117,107', '128', NULL, '2022-05-19 05:46:33', '2022-07-07 11:43:42', 0),
(121, 9, 8, 5, 9, NULL, 0, 0, '128', NULL, NULL, NULL, NULL, '2022-05-19 06:38:38', '2022-05-19 06:38:38', 0),
(122, 20, 10, 10, 10, '', 0, 0, '72', '72', '151', NULL, NULL, '2022-05-22 20:56:31', '2022-07-12 06:38:37', 0),
(123, 3802, 10, 10, 10, '', 0, 0, '72', NULL, NULL, NULL, NULL, '2022-05-30 10:51:13', '2022-05-31 13:27:50', 0),
(125, 4, NULL, NULL, NULL, 0x677272656174206164, 23, 0, '117', '', '117', NULL, '79', '2022-06-24 12:08:50', '2022-07-26 05:52:36', 0),
(126, 18, NULL, NULL, NULL, 0x74657374696e67, 110, 0, '133', NULL, NULL, NULL, '0', '2022-06-30 08:30:03', '2022-06-30 08:30:03', 0),
(127, 18, 1, 1, 1, 0x636166657472696120666f6f64206d7573742062652062657474657220f09f98b4, 0, 0, '139', NULL, NULL, NULL, NULL, '2022-07-01 11:41:11', '2022-07-01 11:41:11', 0),
(128, 18, 10, 10, 10, 0xd8acd8a7d985d8b9d8a920d988d984d8a720d8a7d8b1d988d8b9, 0, 0, '140', '', '161', '153,161', NULL, '2022-07-01 18:24:26', '2022-07-21 21:09:32', 0),
(129, 4, NULL, NULL, NULL, 0x64676467646667, 94, 0, '1', NULL, NULL, NULL, '2', '2022-07-04 10:15:31', '2022-07-04 10:15:31', 0),
(130, 18, 10, 10, 10, NULL, 0, 0, '142', NULL, NULL, NULL, NULL, '2022-07-05 13:39:38', '2022-07-05 13:39:38', 0),
(131, 4, 10, 10, 10, 0x7479697367676762622068, 0, 0, '143', NULL, NULL, NULL, NULL, '2022-07-07 09:37:13', '2022-07-07 09:37:13', 0),
(132, 4, 10, 10, 10, 0x746869732069737375652070726f766964652074686520637573746f6d6572206e6565647320746f2062652036414d20616e642049206861766520746f206265206361726566756c206e6f7420617661696c61626c6520666f72207468652066697273742074696d6520616e6420492068617665206e6f206964656120686f77206d75636820697420776f756c6420626520666f722061207768696c65206e6f7720627574206974206973206661722066726f6d206d7920657870657269656e636520616e642079, 0, 0, '147', '', '1', NULL, NULL, '2022-07-07 11:35:55', '2022-07-08 09:00:33', 0),
(133, 4, 7, 9, 5, 0x746873, 0, 0, '107', '1,117', '151', NULL, NULL, '2022-07-07 11:36:58', '2022-07-21 05:18:27', 0),
(134, 4, NULL, NULL, NULL, 0x6262626e6e6e6b, 7, 0, '107', NULL, NULL, NULL, '0', '2022-07-07 11:44:03', '2022-07-07 11:44:03', 0),
(135, 18, 1, 1, 1, 0x626164, 0, 0, '149', NULL, NULL, '153', NULL, '2022-07-07 14:58:57', '2022-07-12 12:50:56', 0),
(136, 18, NULL, NULL, NULL, 0x74657374, 135, 0, '149', NULL, NULL, NULL, '0', '2022-07-07 14:59:13', '2022-07-07 14:59:13', 0),
(137, 4, NULL, NULL, NULL, 0x7468616e6b73, 94, 0, '1', NULL, NULL, NULL, '1', '2022-07-08 04:50:31', '2022-07-08 04:50:31', 0),
(138, 4, NULL, NULL, NULL, 0x5c7468616e6b73, 94, 0, '1', NULL, NULL, NULL, '1', '2022-07-08 05:01:59', '2022-07-08 05:01:59', 0),
(139, 4, NULL, NULL, NULL, 0x5c7468616e6b73, 94, 0, '1', NULL, NULL, NULL, '1', '2022-07-08 05:02:03', '2022-07-08 05:02:03', 0),
(140, 4, NULL, NULL, NULL, 0x5c7468616e6b73, 94, 0, '1', NULL, NULL, NULL, '1', '2022-07-08 05:02:04', '2022-07-08 05:02:04', 0),
(141, 4, NULL, NULL, NULL, 0x5c7468616e6b73, 94, 0, '1', NULL, NULL, NULL, '1', '2022-07-08 05:02:05', '2022-07-08 05:02:05', 0),
(142, 4, NULL, NULL, NULL, 0x5c7468616e6b73, 94, 0, '1', NULL, NULL, '1', '1', '2022-07-08 05:02:06', '2022-07-08 09:00:58', 0),
(143, 4, NULL, NULL, NULL, 0x5c7468616e6b73, 94, 0, '1', NULL, NULL, NULL, '1', '2022-07-08 05:06:05', '2022-07-08 05:06:05', 0),
(144, 3802, NULL, NULL, NULL, 0x6772656174, 123, 0, '1', NULL, NULL, NULL, '0', '2022-07-08 05:30:14', '2022-07-08 05:30:14', 0),
(145, 18, NULL, NULL, NULL, 0x68616a612061686168, 135, 0, '117', NULL, NULL, NULL, '0', '2022-07-08 06:23:43', '2022-07-08 06:23:43', 0),
(146, 4, NULL, NULL, NULL, 0x61736473616420736164617364, 15, 0, '1', NULL, NULL, NULL, '79', '2022-07-08 06:38:13', '2022-07-08 06:38:13', 0),
(147, 1, NULL, NULL, NULL, 0x687368736a736873687368736861, 44, 0, '1', NULL, NULL, NULL, '79', '2022-07-08 10:17:30', '2022-07-08 10:17:30', 0),
(148, 1, NULL, NULL, NULL, 0x7362736873687368, 44, 0, '1', NULL, NULL, NULL, '79', '2022-07-08 10:17:42', '2022-07-08 10:17:42', 0),
(149, 1, NULL, NULL, NULL, 0x6666686a6b, 112, 0, '1', NULL, NULL, NULL, '0', '2022-07-08 11:45:57', '2022-07-08 11:45:57', 0),
(150, 18, 10, 10, 10, 0x6e657720726174652074657374696e67, 0, 0, '150', '151,117', '', '153', NULL, '2022-07-08 19:41:49', '2022-07-13 09:50:08', 0),
(151, 22, 10, 10, 10, 0x74657374696e67, 0, 0, '150', NULL, NULL, NULL, NULL, '2022-07-08 20:03:40', '2022-07-08 20:03:40', 0),
(152, 4, NULL, NULL, NULL, 0x61736461736420617364616420616473, 23, 0, '1', '', '117', NULL, '79', '2022-07-11 12:00:37', '2022-07-26 05:52:38', 0),
(153, 18, NULL, NULL, NULL, 0x67726561742064617465, 135, 0, '117', NULL, NULL, NULL, '149', '2022-07-12 05:27:52', '2022-07-12 05:27:52', 0),
(154, 4, NULL, NULL, NULL, 0x68656c6c6f, 23, 0, '151', NULL, NULL, NULL, '117', '2022-07-12 05:57:49', '2022-07-12 05:57:49', 0),
(155, 4, 10, 10, 10, 0x796f796f, 0, 0, '151', '', '151,1', '', NULL, '2022-07-12 05:58:28', '2022-08-24 11:45:48', 0),
(156, 20, NULL, NULL, NULL, 0x7265706c79, 122, 0, '151', NULL, NULL, NULL, '0', '2022-07-12 06:38:51', '2022-07-12 06:38:51', 0),
(157, 20, NULL, NULL, NULL, 0x7265706c79, 122, 0, '151', '', '151', NULL, '151', '2022-07-12 06:39:02', '2022-07-12 06:39:13', 0),
(158, 18, NULL, NULL, NULL, 0xd8b3d8aad8b3d8aad8b3, 135, 0, '151', NULL, NULL, NULL, '149', '2022-07-12 10:10:23', '2022-07-12 10:10:23', 0),
(159, 18, 10, 10, 10, 0xd8a8d8aad98ad986d98ad986, 0, 0, '151', '151', '117,1', '153,155', NULL, '2022-07-12 10:10:36', '2022-07-15 13:48:43', 0),
(160, 18, NULL, NULL, NULL, 0x74657374696e67, 135, 0, '152', NULL, NULL, '', '117', '2022-07-12 10:40:42', '2022-08-08 04:58:29', 0),
(161, 18, NULL, NULL, NULL, 0x626c7565206e69636b6e616d6520636865636b20686f772069742062652070696e6b, 135, 0, '152', NULL, NULL, NULL, '117', '2022-07-12 10:41:16', '2022-07-12 10:41:16', 0),
(162, 18, NULL, NULL, NULL, 0x74657374696e672070696e6b6b, 135, 0, '153', NULL, NULL, NULL, '149', '2022-07-12 12:48:14', '2022-07-12 12:48:14', 0),
(163, 18, NULL, NULL, NULL, 0x74657374696e6720626c75652032, 135, 0, '153', NULL, NULL, NULL, '151', '2022-07-12 12:48:45', '2022-07-12 12:48:45', 0),
(164, 18, 10, 10, 10, NULL, 0, 0, '153', '160', '117', NULL, NULL, '2022-07-12 12:49:52', '2022-07-27 10:50:10', 0),
(165, 18, NULL, NULL, NULL, 0x7265706c79, 159, 0, '117', NULL, NULL, NULL, '0', '2022-07-13 12:06:23', '2022-07-13 12:06:23', 0),
(166, 18, NULL, NULL, NULL, 0xd8a7d8b2d8b1d982, 135, 0, '154', NULL, NULL, NULL, '117', '2022-07-13 15:14:12', '2022-07-13 15:14:12', 0),
(167, 18, NULL, NULL, NULL, 0xd988d8b1d8afd98a, 135, 0, '154', NULL, NULL, NULL, '149', '2022-07-13 15:14:36', '2022-07-13 15:14:36', 0),
(168, 18, NULL, NULL, NULL, 0xd8a7d8b2d8b1d982, 135, 0, '154', NULL, NULL, NULL, '153', '2022-07-13 15:14:56', '2022-07-13 15:14:56', 0),
(169, 18, NULL, NULL, NULL, 0x6e69636b6e616d65206d7573742062652070696e6b6b6b, 135, 0, '154', NULL, NULL, NULL, '149', '2022-07-13 15:24:03', '2022-07-13 15:24:03', 0),
(170, 18, NULL, NULL, NULL, 0x6e69636b6e616d65206d75737420626520626c756565, 135, 0, '154', NULL, NULL, NULL, '117', '2022-07-13 15:24:19', '2022-07-13 15:24:19', 0),
(171, 3802, 10, 10, 10, 0xd983d984d8a7d98520d983d984d98ad98ad98ad98ad98ad98ad985, 0, 0, '154', NULL, NULL, NULL, NULL, '2022-07-13 15:37:22', '2022-07-13 15:37:22', 0),
(172, 4, NULL, NULL, NULL, 0x79656168, 94, 0, '1', NULL, NULL, NULL, '1', '2022-07-14 05:42:26', '2022-07-14 05:42:26', 0),
(173, 4, NULL, NULL, NULL, 0x617364616473, 23, 0, '1', NULL, NULL, NULL, '117', '2022-07-14 05:43:10', '2022-07-14 05:43:10', 0),
(174, 4, NULL, NULL, NULL, 0x636f6d6d656e742074657374696e67, 94, 0, '1', NULL, NULL, NULL, '1', '2022-07-14 13:39:55', '2022-07-14 13:39:55', 0),
(175, 4, NULL, NULL, NULL, 0x636f6d6d656e74, 94, 0, '1', NULL, NULL, NULL, '1', '2022-07-14 13:40:16', '2022-07-14 13:40:16', 0),
(176, 4, NULL, NULL, NULL, 0x74657374696e67207265706c79, 20, 0, '1', NULL, NULL, NULL, '79', '2022-07-15 05:48:31', '2022-07-15 05:48:31', 0),
(177, 4, NULL, NULL, NULL, 0x74657374696e67207265706c7932, 20, 0, '1', NULL, NULL, NULL, '0', '2022-07-15 05:49:36', '2022-07-15 05:49:36', 0),
(178, 18, NULL, NULL, NULL, 0x74657374696e67, 159, 0, '1', NULL, NULL, NULL, '0', '2022-07-15 09:39:12', '2022-07-15 09:39:12', 0),
(179, 18, NULL, NULL, NULL, 0x74657374696e67, 159, 0, '1', NULL, NULL, NULL, '117', '2022-07-15 09:39:22', '2022-07-15 09:39:22', 0),
(180, 18, NULL, NULL, NULL, 0x74657374696e67, 159, 0, '1', NULL, NULL, NULL, '0', '2022-07-15 09:43:44', '2022-07-15 09:43:44', 0),
(181, 4, NULL, NULL, NULL, 0x7265706c79, 155, 0, '1', NULL, NULL, NULL, '0', '2022-07-15 10:27:33', '2022-07-15 10:27:33', 0),
(182, 18, NULL, NULL, NULL, 0x74657374696e67206e65777777, 159, 0, '155', NULL, NULL, NULL, '0', '2022-07-15 12:14:48', '2022-07-15 12:14:48', 0),
(183, 18, NULL, NULL, NULL, 0x74657374696e74206e69636b206d75737420626520626c7565, 159, 0, '155', NULL, NULL, NULL, '117', '2022-07-15 12:15:05', '2022-07-15 12:15:05', 0),
(184, 18, NULL, NULL, NULL, 0x74657374696e67206e69636b206d7573742062652070696e6b, 135, 0, '155', NULL, NULL, NULL, '149', '2022-07-15 12:15:22', '2022-07-15 12:15:22', 0),
(185, 18, NULL, NULL, NULL, 0x6e69636b6e616d6520636f6c6f722074657374696e672c206d75737420626520626c7565, 135, 0, '155', NULL, NULL, NULL, '151', '2022-07-15 13:47:47', '2022-07-15 13:47:47', 0),
(186, 18, NULL, NULL, NULL, 0xd8b9d984d98a, 164, 0, '159', '', '117', NULL, '0', '2022-07-19 14:38:32', '2022-07-21 05:15:48', 0),
(187, 4, NULL, NULL, NULL, 0x74657374696e67, 94, 0, '117', NULL, NULL, NULL, '1', '2022-07-21 05:18:51', '2022-07-21 05:18:51', 0),
(188, 18, 10, 10, 10, 0xd8aad8acd8b1d8a8d8a920d8a7d986d8afd8b1d988d98ad8af, 0, 0, '161', NULL, NULL, NULL, NULL, '2022-07-21 21:08:40', '2022-07-21 21:08:40', 0),
(189, 18, NULL, NULL, NULL, 0xd8b4d8b1d8a7d98ad98320d8a8d8a7d984d8aed8b720d8a7d984d8b9d8b1d8a8d98a, 188, 0, '161', NULL, NULL, NULL, '0', '2022-07-21 21:09:09', '2022-07-21 21:09:09', 0),
(190, 3802, 10, 9, 10, 0x676420756e69, 0, 0, '162', NULL, NULL, NULL, NULL, '2022-07-22 17:13:36', '2022-07-22 17:13:36', 0),
(191, 18, NULL, NULL, NULL, 0x48657979, 186, 0, '160', NULL, NULL, NULL, '159', '2022-07-27 10:47:39', '2022-07-27 10:47:39', 0),
(192, 18, NULL, NULL, NULL, 0x74657374696e67, 19, 0, '160', NULL, NULL, NULL, '39', '2022-07-27 12:35:55', '2022-07-27 12:35:55', 0),
(193, 18, 1, 4, 5, 0x6f6c6420666163696c6974696573206d7573742062652072656e6577656420f09fa5b9, 0, 0, '168', NULL, NULL, NULL, NULL, '2022-07-28 06:33:39', '2022-07-28 06:33:39', 0),
(194, 18, NULL, NULL, NULL, 0x426c756520626c756520626c7565, 19, 0, '173', NULL, NULL, NULL, '39', '2022-08-05 11:35:16', '2022-08-05 11:35:16', 0),
(195, 18, NULL, NULL, NULL, 0x426c756520626c756520626c7565, 19, 0, '173', NULL, NULL, NULL, '39', '2022-08-05 11:35:16', '2022-08-05 11:35:16', 0),
(196, 18, NULL, NULL, NULL, 0x426c756520626c756520626c7565, 19, 0, '173', NULL, NULL, NULL, '39', '2022-08-05 11:35:16', '2022-08-05 11:35:16', 0),
(197, 18, NULL, NULL, NULL, 0x426c756520626c756520626c7565, 19, 0, '173', NULL, NULL, NULL, '39', '2022-08-05 11:35:17', '2022-08-05 11:35:17', 0),
(198, 18, NULL, NULL, NULL, 0x7465737474, 189, 0, '160', NULL, NULL, NULL, '161', '2022-08-05 13:52:52', '2022-08-05 13:52:52', 0),
(199, 18, NULL, NULL, NULL, 0x666768666768, 191, 0, '160', NULL, NULL, NULL, '160', '2022-08-05 13:53:40', '2022-08-05 13:53:40', 0),
(200, 18, NULL, NULL, NULL, 0x646667646667, 180, 0, '160', NULL, NULL, NULL, '1', '2022-08-05 13:54:54', '2022-08-05 13:54:54', 0),
(201, 18, NULL, NULL, NULL, 0x746573747474747474, 198, 0, '160', NULL, NULL, NULL, '160', '2022-08-08 04:58:18', '2022-08-08 04:58:18', 0),
(202, 18, NULL, NULL, NULL, 0x746573747474, 198, 0, '160', NULL, NULL, NULL, '160', '2022-08-08 05:00:48', '2022-08-08 05:00:48', 0),
(203, 18, NULL, NULL, NULL, 0x746573747474, 198, 0, '160', NULL, NULL, '160', '160', '2022-08-08 05:20:06', '2022-08-08 05:20:26', 0),
(204, 18, NULL, NULL, NULL, 0x7465737474206c617374, 198, 0, '160', NULL, NULL, NULL, '160', '2022-08-08 05:20:51', '2022-08-08 05:20:51', 0),
(205, 18, NULL, NULL, NULL, 0x686574797979, 204, 0, '160', NULL, NULL, NULL, '160', '2022-08-08 05:21:44', '2022-08-08 05:21:44', 0),
(206, 18, NULL, NULL, NULL, 0x646664666466, 204, 0, '160', NULL, NULL, NULL, '160', '2022-08-08 05:24:43', '2022-08-08 05:24:43', 0),
(207, 18, NULL, NULL, NULL, 0x66646664666466, 204, 0, '160', NULL, NULL, '160', '160', '2022-08-08 05:25:37', '2022-08-08 05:25:48', 0),
(208, 18, NULL, NULL, NULL, 0x6664676664676664, 206, 0, '160', NULL, NULL, NULL, '160', '2022-08-08 05:27:50', '2022-08-08 05:27:50', 0),
(209, 18, NULL, NULL, NULL, 0x64666766676667, 208, 0, '160', NULL, NULL, NULL, '160', '2022-08-08 05:38:02', '2022-08-08 05:38:02', 0),
(210, 18, NULL, NULL, NULL, 0x76626e766e7662, 209, 0, '160', '', '160', '160', '160', '2022-08-08 05:41:51', '2022-08-08 05:42:03', 0),
(211, 18, 10, 10, 10, 0x54657374696e66206e6577, 0, 0, '180', '117', '', NULL, NULL, '2022-08-21 04:40:51', '2022-08-23 07:43:39', 0),
(212, 8, 1, 1, 1, '', 0, 0, '1', NULL, NULL, NULL, NULL, '2022-08-22 05:29:05', '2022-08-22 05:29:05', 0),
(213, 4, NULL, NULL, NULL, 0x68656c6c6f, 134, 0, '1', NULL, NULL, NULL, '107', '2022-08-23 05:27:39', '2022-08-23 05:27:39', 0),
(214, 4, NULL, NULL, NULL, 0x68656c6c6f2075736572, 213, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:28:38', '2022-08-23 05:28:38', 0),
(215, 4, NULL, NULL, NULL, 0x75736572, 214, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:28:49', '2022-08-23 05:28:49', 0),
(216, 4, NULL, NULL, NULL, 0x636f6c6c656761746f72, 215, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:29:21', '2022-08-23 05:29:21', 0),
(217, 4, NULL, NULL, NULL, 0x636f6c6c656761746f72, 215, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:29:33', '2022-08-23 05:29:33', 0),
(218, 4, NULL, NULL, NULL, 0x6473666473666473, 217, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:30:15', '2022-08-23 05:30:15', 0),
(219, 4, NULL, NULL, NULL, 0x736466647366647366, 218, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:31:45', '2022-08-23 05:31:45', 0),
(220, 4, NULL, NULL, NULL, 0x64736473666473, 7, 0, '1', NULL, NULL, NULL, '0', '2022-08-23 05:32:59', '2022-08-23 05:32:59', 0),
(221, 4, NULL, NULL, NULL, 0x647366647366647366, 220, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:33:03', '2022-08-23 05:33:03', 0),
(222, 4, NULL, NULL, NULL, 0x666467646667646667, 221, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:34:02', '2022-08-23 05:34:02', 0),
(223, 4, NULL, NULL, NULL, 0x647366647366647366, 221, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:34:09', '2022-08-23 05:34:09', 0),
(224, 4, NULL, NULL, NULL, 0x666767736466, 223, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:34:36', '2022-08-23 05:34:36', 0),
(225, 4, NULL, NULL, NULL, 0x68656c6c6f, 7, 0, '1', NULL, NULL, NULL, '0', '2022-08-23 05:35:06', '2022-08-23 05:35:06', 0),
(226, 4, NULL, NULL, NULL, 0x68656c6c6f, 225, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:35:12', '2022-08-23 05:35:12', 0),
(227, 4, NULL, NULL, NULL, 0x66647366647366, 226, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:35:45', '2022-08-23 05:35:45', 0),
(228, 4, NULL, NULL, NULL, 0x617364617364736164, 227, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:37:02', '2022-08-23 05:37:02', 0),
(229, 4, NULL, NULL, NULL, 0x68656c6c6f, 7, 0, '1', NULL, NULL, NULL, '0', '2022-08-23 05:39:30', '2022-08-23 05:39:30', 0),
(230, 4, NULL, NULL, NULL, 0x6865656c6f, 229, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:39:35', '2022-08-23 05:39:35', 0),
(231, 4, NULL, NULL, NULL, 0x7366736466736466, 230, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:42:25', '2022-08-23 05:42:25', 0),
(232, 4, NULL, NULL, NULL, 0x7573657232, 231, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:47:26', '2022-08-23 05:47:26', 0),
(233, 4, NULL, NULL, NULL, 0x75736572, 232, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:50:27', '2022-08-23 05:50:27', 0),
(234, 4, NULL, NULL, NULL, 0x66736466736466, 233, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 05:52:55', '2022-08-23 05:52:55', 0),
(235, 4, NULL, NULL, NULL, 0x6667676465676768, 10, 0, '1', NULL, NULL, NULL, '69', '2022-08-23 06:03:04', '2022-08-23 06:03:04', 0),
(236, 4, NULL, NULL, NULL, 0x6164736173647361, 235, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 06:09:11', '2022-08-23 06:09:11', 0),
(237, 4, NULL, NULL, NULL, 0x686969, 236, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 06:31:51', '2022-08-23 06:31:51', 0),
(238, 4, NULL, NULL, NULL, 0x647366647366, 237, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 06:34:44', '2022-08-23 06:34:44', 0),
(239, 4, NULL, NULL, NULL, 0x68696969, 238, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 06:35:55', '2022-08-23 06:35:55', 0),
(240, 4, NULL, NULL, NULL, 0x647366647366647366, 239, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 06:37:21', '2022-08-23 06:37:21', 0),
(241, 4, NULL, NULL, NULL, 0x7a637a78637a78637a78, 240, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 06:37:42', '2022-08-23 06:37:42', 0),
(242, 4, NULL, NULL, NULL, 0x736466647366736466, 241, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 06:39:16', '2022-08-23 06:39:16', 0),
(243, 4, NULL, NULL, NULL, 0x66646764666766, 242, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 06:44:34', '2022-08-23 06:44:34', 0),
(244, 4, NULL, NULL, NULL, 0x647366647366647366, 243, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 06:47:17', '2022-08-23 06:47:17', 0),
(245, 4, NULL, NULL, NULL, 0x646667646667, 235, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 06:48:21', '2022-08-23 06:48:21', 0),
(246, 4, NULL, NULL, NULL, 0x717764716464, 16, 0, '1', NULL, NULL, NULL, '22', '2022-08-23 06:51:27', '2022-08-23 06:51:27', 0),
(247, 4, NULL, NULL, NULL, 0x7371737173717371737173, 16, 0, '1', NULL, NULL, NULL, '22', '2022-08-23 06:51:42', '2022-08-23 06:51:42', 0),
(248, 4, NULL, NULL, NULL, 0x737173717371, 245, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 06:51:54', '2022-08-23 06:51:54', 0),
(249, 4, NULL, NULL, NULL, 0x646667646667, 248, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 06:58:19', '2022-08-23 06:58:19', 0),
(250, 4, NULL, NULL, NULL, 0x646667666467, 249, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 06:58:28', '2022-08-23 06:58:28', 0),
(251, 4, NULL, NULL, NULL, 0x647366647366, 7, 0, '1', NULL, NULL, NULL, '0', '2022-08-23 06:59:29', '2022-08-23 06:59:29', 0),
(252, 4, NULL, NULL, NULL, 0x6464646464646464646464646464646464646464646464, 134, 0, '1', NULL, NULL, NULL, '107', '2022-08-23 07:00:31', '2022-08-23 07:00:31', 0),
(253, 4, NULL, NULL, NULL, 0x6a6a6a6a6a6a6a6a6a6a6a6a6a6a6a6a6a6a6a6a, 251, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 07:00:39', '2022-08-23 07:00:39', 0),
(254, 4, NULL, NULL, NULL, 0x66647366647366, 253, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 07:02:05', '2022-08-23 07:02:05', 0),
(255, 4, NULL, NULL, NULL, 0x736466736466736466, 254, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 07:02:10', '2022-08-23 07:02:10', 0),
(256, 4, NULL, NULL, NULL, 0x647366647366736466647366, 255, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 07:02:31', '2022-08-23 07:02:31', 0),
(257, 4, NULL, NULL, NULL, 0x7361647361646173647361, 256, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 07:03:27', '2022-08-23 07:03:27', 0),
(258, 4, NULL, NULL, NULL, 0x617364617364617364, 257, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 07:03:34', '2022-08-23 07:03:34', 0),
(259, 4, NULL, NULL, NULL, 0x617364617364617364736164736164, 258, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 07:03:42', '2022-08-23 07:03:42', 0),
(260, 4, NULL, NULL, NULL, 0x6164617364617364736164, 259, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 07:03:47', '2022-08-23 07:03:47', 0),
(261, 4, NULL, NULL, NULL, 0x617364617364736164, 260, 0, '1', NULL, NULL, NULL, '1', '2022-08-23 07:04:07', '2022-08-23 07:04:07', 0),
(262, 4, NULL, NULL, NULL, 0x6144736164736164, 7, 0, '1', NULL, NULL, NULL, '0', '2022-08-23 07:36:22', '2022-08-23 07:36:22', 0),
(263, 18, 10, 10, 10, 0x477265617420646179, 0, 0, '117', NULL, NULL, NULL, NULL, '2022-08-23 07:52:32', '2022-08-23 07:52:32', 0),
(264, 4, 1, 1, 1, '', 0, 0, '1', '', '', NULL, NULL, '2022-08-23 07:53:02', '2022-08-24 09:46:24', 0),
(265, 18, 1, 1, 1, '', 0, 0, '1', NULL, NULL, NULL, NULL, '2022-08-23 09:14:27', '2022-08-23 09:14:27', 0),
(266, 20, 1, 1, 1, '', 0, 0, '1', NULL, NULL, NULL, NULL, '2022-08-23 09:19:20', '2022-08-23 09:19:20', 0),
(267, 20, NULL, NULL, NULL, 0x74657374, 122, 0, '1', NULL, NULL, NULL, '0', '2022-08-23 09:20:53', '2022-08-23 09:20:53', 0),
(268, 4, NULL, NULL, NULL, 0x54657374, 7, 0, '1', NULL, NULL, NULL, '0', '2022-08-23 09:22:24', '2022-08-23 09:22:24', 0),
(269, 4, NULL, NULL, NULL, 0x54657372, 155, 0, '1', NULL, NULL, NULL, '0', '2022-08-23 09:23:38', '2022-08-23 09:23:38', 0),
(270, 4, NULL, NULL, NULL, 0x54657374696e67, 264, 0, '1', '1', '', NULL, '0', '2022-08-23 10:12:16', '2022-08-25 09:52:09', 0),
(271, 20, NULL, NULL, NULL, 0x74657374, 157, 0, '1', NULL, NULL, NULL, '151', '2022-08-23 10:13:25', '2022-08-23 10:13:25', 0),
(272, 4, NULL, NULL, NULL, 0x666378637876, 181, 0, '1', NULL, NULL, NULL, '1', '2022-08-24 06:06:14', '2022-08-24 06:06:14', 0),
(273, 4, NULL, NULL, NULL, 0x686969, 270, 0, '1', NULL, NULL, NULL, '1', '2022-08-24 07:20:19', '2022-08-24 07:20:19', 0),
(274, 4, NULL, NULL, NULL, 0x686969, 270, 0, '1', NULL, NULL, NULL, '1', '2022-08-24 07:20:28', '2022-08-24 07:20:28', 0),
(275, 4, NULL, NULL, NULL, 0x66736466736466, 16, 0, '1', NULL, NULL, NULL, '22', '2022-08-24 12:45:03', '2022-08-24 12:45:03', 0),
(276, 4, NULL, NULL, NULL, 0x6473637361647361, 264, 0, '1', NULL, NULL, NULL, '0', '2022-08-24 12:53:19', '2022-08-24 12:53:19', 0),
(277, 4, NULL, NULL, NULL, 0x68696969, 155, 0, '1', NULL, NULL, NULL, '0', '2022-08-25 04:29:53', '2022-08-25 04:29:53', 0),
(278, 4, NULL, NULL, NULL, 0x363431, 264, 0, '1', NULL, NULL, NULL, '0', '2022-08-25 05:53:19', '2022-08-25 05:53:19', 0),
(279, 18, 10, 10, 10, 0x4772656174, 0, 0, '160', NULL, NULL, '1', NULL, '2022-08-25 06:13:10', '2022-08-25 13:29:36', 0),
(322, 4, NULL, NULL, NULL, 0x746573742075736572, 270, 0, '1', NULL, NULL, NULL, '1', '2022-08-25 10:10:45', '2022-08-25 10:10:45', 0),
(323, 18, NULL, NULL, NULL, 0x5265706c79696e67, 188, 0, '117', NULL, NULL, NULL, '0', '2022-08-25 10:25:10', '2022-08-25 10:25:10', 0),
(324, 18, NULL, NULL, NULL, 0x4a646a646a64, 128, 0, '130', NULL, NULL, NULL, '0', '2022-08-25 14:45:23', '2022-08-25 14:45:23', 0),
(325, 18, 10, 10, 10, 0x54657374696e676767, 0, 0, '130', NULL, NULL, NULL, NULL, '2022-08-26 16:49:02', '2022-08-26 16:49:02', 0),
(326, 6, 10, 7, 1, 0x476467646764, 0, 0, '130', NULL, NULL, NULL, NULL, '2022-08-26 17:00:36', '2022-08-26 17:00:36', 0),
(327, 1, 10, 10, 10, 0x536f736f, 0, 0, '130', NULL, NULL, NULL, NULL, '2022-08-29 11:13:58', '2022-08-29 11:13:58', 0),
(328, 18, NULL, NULL, NULL, 0x50696e6b2074657374, 186, 0, '130', NULL, NULL, NULL, '159', '2022-08-29 13:17:49', '2022-08-29 13:17:49', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_delete` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `systemNickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `university` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` tinyint(1) NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trusted` tinyint(1) NOT NULL DEFAULT 0,
  `age` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` int(11) NOT NULL COMMENT '1:android,2:apple',
  `device_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colorpicker` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_type` int(11) NOT NULL DEFAULT 1 COMMENT '1:normal,2:social',
  `followers` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `following` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 2 COMMENT '	1:admin,2:user',
  `mic_access` int(11) NOT NULL DEFAULT 0 COMMENT '0: no access, 1 :access	',
  `message_access` int(11) NOT NULL DEFAULT 0 COMMENT '0: no access, 1 :access	'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `status`, `is_delete`, `nickname`, `systemNickname`, `profile`, `ip`, `university`, `gender`, `color`, `trusted`, `age`, `provider`, `provider_id`, `otp`, `device_type`, `device_token`, `colorpicker`, `login_type`, `followers`, `following`, `role`, `mic_access`, `message_access`) VALUES
(1, 'user', 'user1@getnada.com', NULL, '$2y$10$LhyuBbcoze4LO/BB11Una.rocg.T0SyD00JC0n.tDmh6Cj2y1j6OG', 'LNl3VfxS1jwH0jb30O1DiQdjgaY2nBHH2eRf4aTHYdictZ9LQOfBO1dUacNp', '2021-06-02 23:52:02', '2022-08-29 06:01:47', 1, '0', NULL, 'collegator-user1', '', '192.168.1.1', NULL, 0, NULL, 0, NULL, NULL, NULL, '2967', 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(2, 'user21', 'user2@getnada.com', NULL, '$2y$10$jlx3duc37WYrpPdELHIMEOoTuVM1s4eJTyE6OyhNXKKawB0W4.Zse', NULL, '2021-06-07 03:25:35', '2022-05-05 10:51:21', 0, '1', NULL, '', '', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, 'ekXge81gnkebpQczQJoHiz:APA91bHdiHV5wo5rRag06Yov8LeoAFV6FPhLQW2QZu0tTQ__CngIZtG8_IHIz3R5626Xymqvy404JKwcDH_-cWLFF76wxelFxnkgqfIALkYU3AzdVkhGmfek00hwJfNoHnCvJlVHV2I_', NULL, 1, NULL, NULL, 2, 0, 0),
(3, 'narayan', 'narayan@getnada.com', NULL, '$2y$10$dNwTMqDBUNJNYmItYekljOveHWlySyLt2Gu8Oo.I0wspizZefKvty', 'o9FdRVTz7QrFhnBPLRnxQhb1q8Zh9aRPBj7P30vpSLGdjnJcn4ACne2Vu1BH', '2021-06-08 23:28:16', '2021-07-28 05:20:15', 1, '0', NULL, '', '1627469415.png', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(4, 'usertest by test2', 'usertest@getnada.com', NULL, '$2y$10$aKpveKOSVxHBf0EyYO8saecJ1vjlLI8vpTpNDMZ8Xrzrbt4Rl135y', NULL, '2021-06-11 03:49:44', '2021-07-31 14:03:14', 0, '0', 'Hahahaha', 'Dr Ali', 'male.png', NULL, 'Subodh', 1, NULL, 1, 32, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(5, 'Nitin Sharma Test', 'nitin.sharma@mailinator.com', NULL, '$2y$10$5S62/668C50fWiGnqKd8uurcYSpE2Stnl3lKO4ufb/rHJjxUS3RFa', NULL, '2021-06-14 03:43:23', '2021-06-18 06:18:17', 1, '0', 'nitins', 'BNgl47!!lFVb', 'male.png', NULL, 'Jaipur National University Test', 1, '1', 1, NULL, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(6, 'asd sad', 'asdasd@asdasdad.com', NULL, '$2y$10$fEkKgSyVp0RL3cUyTvesGeGCoV1HUgyN8huz7c3qu4Od9DUN3TI9m', NULL, '2021-06-14 03:50:57', '2021-06-14 03:51:07', 0, '1', NULL, 'NPia55$#HDih', 'male.png', NULL, 'aaaaa', 1, '1', 0, NULL, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(7, 'Checkuser', 'Checkuser@mailinator.com', NULL, '$2y$10$ljD0oXBnhHoeO8AbEMddde7WcpJEiz1t1xWBXI/G0DrGEbgjCS7P6', NULL, '2021-06-21 02:02:02', '2021-06-21 02:02:48', 0, '0', 'Checkuser', 'EXnt34%!k!oE', 'male.png', NULL, 'JNU', 1, '2', 1, NULL, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(8, 'Nitin Kumar Gupta', 'nitinkg@mailinator.com', NULL, '$2y$10$9N/lkcAvLIPQjxoDLgi92uE/.ixiAfCirSN4c6UtawDruZFsoz6km', NULL, '2021-06-23 02:30:44', '2021-06-23 02:32:20', 0, '1', NULL, 'NKG asjkkdashjd', 'male.png', NULL, 'Jaipur National University', 1, NULL, 0, 25, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(9, 'Ramesh Kumar Jha', 'ramesh@mailinator.com', NULL, '$2y$10$szFRN9NNb6izIv3TyJY3se/ni4Y9vmOGK/0jypJcYqAuwinVFzrqy', NULL, '2021-06-23 03:46:27', '2021-06-23 03:49:29', 0, '0', 'qqq', 'asdqq', 'male.png', NULL, 'Jaipur National University', 2, NULL, 1, 20, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(10, 'as dasd asd', 'asdasdasd@asdasdadasd.com', NULL, '$2y$10$6vAgocBfLsW/ZsL2WnlZ8eheDMaCNVfCv32c3/EOTZjsqxQV4DW9.', NULL, '2021-06-23 03:56:19', '2021-06-23 03:56:39', 0, '0', 'qqqqq', 'qqqqqq', 'male.png', NULL, 'Jaipur National University', 2, NULL, 0, 45, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(11, 'Deepanshu', 'deep@getnada.com', NULL, '$2y$10$77pWg1KSlcMj2NkMKk7S0.jP.ERMS6m8irk7aAW8Ujkg6hbnlJs16', NULL, '2021-06-29 04:01:20', '2022-05-04 11:24:12', 1, '0', NULL, 'M2faq26J$kxrXyD!I', '1651663452.png', NULL, 'test', 1, '1', 0, 24, NULL, NULL, '9803', 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(13, 'deepanshu jain', 'alcomoapi1@gmail.com', NULL, NULL, NULL, '2021-07-05 07:38:00', '2021-07-05 07:38:00', 0, '0', NULL, 'JALZduO6q1', 'https://lh3.googleusercontent.com/a/AATXAJy6EpkZM6ODcak1Y_aeeQ5CR3rxvqWOr6REItzL=s96-c', NULL, NULL, 0, NULL, 0, NULL, 'google', '114457919097940813926', NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(14, 'Deepanshu jain', 'deepanshujain388@gmail.com', NULL, NULL, NULL, '2021-07-05 07:40:18', '2021-08-28 10:28:08', 0, '0', NULL, 'g1AB4yMqcu', '1630146488.jpg', NULL, NULL, 0, NULL, 0, NULL, 'google', '110892452990783243139', NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(15, 'Deepanshu', 'deepanshu@getnada.com', NULL, '$2y$10$LhyuBbcoze4LO/BB11Una.rocg.T0SyD00JC0n.tDmh6Cj2y1j6OG', 'PsmKcIeAbfb8EXnAa2uYitq3HJlOVR8ew9JCITnJaJYTLwZl0rr9x9RgoFuQ', '2021-07-13 07:27:23', '2022-04-28 10:09:54', 1, '0', 'deep@1', 'Collegito-#ix03LZn8y1Q65', '1651140594.jpg', NULL, NULL, 1, NULL, 0, 25, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 1, 1),
(16, 'nitin sharma', 'nsjohn0001@gmail.com', NULL, NULL, NULL, '2021-07-14 03:36:05', '2021-07-14 03:36:05', 1, '0', NULL, 'R5WNg2h0sc', 'https://lh3.googleusercontent.com/a-/AOh14GhT7ca4qR8r1Uto4lP5VS5G5HM_73CHLjNGlOKW=s96-c', NULL, NULL, 0, NULL, 0, NULL, 'google', '114415350163299605739', NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(17, 'Nitin Sharma', 'nitinsharma1@mailinator.com', NULL, '$2y$10$CpwXTEDF0mNtTZPfDzv1culm6zNatdxiaHIRHKvuZZBWGxC/bahti', 'ECOlHBbIAWN1oIBpOiQpZIJKoEoyUrvWxQwLC8qhXpcDpI0rVfVaLvQRtUdu', '2021-07-14 03:40:31', '2021-07-14 04:13:01', 1, '0', 'Nitin', 'Collegito-GLEfCH6s@', 'male.png', NULL, NULL, 1, NULL, 0, 19, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(18, 'Monika', 'Monika1@mailinator.com', NULL, '$2y$10$41B8rFyRXA9T5ioipldGv.2034k38NHnbpn9UE9bfyVqY8977fK3m', NULL, '2021-07-14 03:44:43', '2021-07-14 03:44:43', 1, '0', 'Monu', 'Collegita-3D5SQ4aF$s2@ho8ufH', 'female.png', NULL, NULL, 2, NULL, 0, 20, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(19, 'asdhjksahdjshakj dhjsahjd hsajdh jsahdjk shakjdhs kajdhjsahd sakjdh kjsahdkjhaskj hdkjsahd kjhasjdh kjsahdj hasjkdhsajkhd jkhasjkdh jsahdjkashk', 'sahdhsakhdkahskjdhkasdkkas@aksjhdkjsahkdjhsakjdhkjsahdjhsakjdhksjahkdahdkjasdja.com', NULL, '$2y$10$jOR848miYseF7peIpQ6sfeO4wXTXFQnpDVK1vqo5nk3TOxp7yrJ0e', NULL, '2021-07-14 03:46:26', '2021-07-14 03:47:38', 1, '1', 'as kjdhsakjdh jskahdkj sahkjdhsajk dhkjsah jdhsakjdh jksahdkj sahdjk haskjdhksjahdkj sahkjdh sakjdh ksjahd jksahkdj hsajdh kasjdh jashdjk sahdsjakdh jsahdj ahskjdh', 'Collegito-T3NutIBS9m5sQ', 'male.png', NULL, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(20, 'Priya Gautam', 'priyastudent@mailinator.com', NULL, '$2y$10$3iJG2knClduCo7RQ1gQbk.ef9KIC/ho.ZMMstowkCtmCuq.JGA3CG', 'zLekC3p5NhZNkyqTyZg8mwmldJ6oOoNUCjREnYmznKUkSYwE4YH7ssqxBMXy', '2021-07-14 03:48:34', '2021-07-14 03:48:34', 1, '0', NULL, 'Collegita-RbqtE9rI$4ac', 'female.png', NULL, 'Jaipur National University', 2, '2', 0, 22, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(21, 'ayush', 'ayushsir@getnada.com', NULL, '$2y$10$OdLK/UcFfBfmNKjpY8h1SOvDxTRkMmDZUcifHfVjfnq0f3WJtTiBa', NULL, '2021-07-15 23:29:19', '2021-07-15 23:29:19', 1, '0', 'guptaji', 'Collegito-JaQSgK', 'male.png', NULL, NULL, 1, NULL, 0, 85, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(22, 'deepanshu', 'deepanshuj70@getnada.com', NULL, '$2y$10$6wqO9X0pc.iZkM/bocAdruA9zN4/Alw9RdmPUll5MddhNYY7wdA9u', '2XyNhbtM4iHAPEjYTRpN7HgLhJsC0A3bXaT5EarcGbpT4RLAd3qnV353zoYX', '2021-07-16 05:14:50', '2021-11-12 05:49:55', 1, '0', 'deeps', 'Collegito-bAtqgBOeuIPrG4', 'colleicon.png', NULL, NULL, 1, NULL, 0, 24, NULL, NULL, '9433', 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(23, 'collegator', 'colle@getnada.com', NULL, '$2y$10$VrORiJkouNs2BMpM2rmJ2.YKYxyVIwvE/gtPYYkneyKCYQCZHMU6u', 'Z06tSPsCFevbqpVcZY0eT7XcDUDE0nReKT6aDKevpyjK6xMEVKH6dtqSKMN7', '2021-07-16 06:49:54', '2021-07-16 06:59:15', 1, '0', 'collegatorbyme', 'Collegito-Iv6JieMR0gCBUNkaPux', 'male.png', NULL, NULL, 1, NULL, 0, 30, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(24, '', 'nitintest@getnada.com', NULL, '$2y$10$ipwEpeJkehoKLK.L7t/j1.EuwkxiC2iqegrG9s8AEp.mr8pPcLmbK', NULL, '2021-07-19 04:50:26', '2021-07-19 04:50:26', 1, '0', 'nitinji', 'Collegito-m8bIZyaR4o#h', 'male.png', NULL, NULL, 1, NULL, 0, 26, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(25, '', 'popupcheck@getnada.com', NULL, '$2y$10$OP/iwYh0yqYw0ARf9hfqgutZ6.zlv.RT/u/pfrSIMpQ4J5wmJOnnC', NULL, '2021-07-19 06:11:38', '2021-07-19 06:11:38', 1, '0', 'popupcheck', 'Collegito-RFIkXqi!', 'male.png', NULL, NULL, 1, NULL, 0, 26, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(26, '', 'YellowSingh@mailinator.com', NULL, '$2y$10$RS37Y1TSVbfd1wxBDzAD3O1CewURqNqv8QAiaYu/fIplsVPIw2EFu', 'NNnKRRSjCilxVFFdE1krNq3ZSwW2BN9UbySQiudJsP9p8jjCua09bzN9gkCT', '2021-07-19 06:23:02', '2021-07-19 06:30:57', 1, '0', 'YellowSingh', 'Collegito-1Tuw8#', 'male.png', NULL, NULL, 1, NULL, 0, 9, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(27, '', 'asdadd@asd.asd', NULL, '$2y$10$TpTuT1Pe55NGyGieGq7hx.RDurBf6g/wEKfR.GXrAkUpww2V0YKO6', NULL, '2021-07-19 06:36:09', '2021-07-19 06:36:09', 1, '0', '123123', 'Collegita-S#B3', 'female.png', NULL, NULL, 2, NULL, 0, 4, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(28, 'Ayush Gupta', 'rakg143@gmail.com', NULL, NULL, NULL, '2021-07-19 06:47:50', '2021-10-14 10:50:52', 1, '0', 'test', 'Collegito-xw79zm', 'https://graph.facebook.com/v3.3/2985614378391117/picture?type=normal', NULL, '', 1, NULL, 0, 16, 'facebook', '2985614378391117', NULL, 0, '', '#00aabb', 1, NULL, NULL, 2, 0, 0),
(29, '', 'popuptest1@getnada.com', NULL, '$2y$10$V4qtmmBFMzss72qge.RqtuaXM7ZFQl6iuSQ3TxMn3pQzqaTVCJ2VO', '6MzR3jtliS3GFjAheLoCXVzd5IvElTvCDsInt5hSXeCn7msMXGg6NuWLO1oM', '2021-07-19 06:57:51', '2021-07-19 07:00:14', 1, '0', 'popuptest1', 'Collegito-WFD5E2t', 'male.png', NULL, NULL, 1, NULL, 0, 15, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(30, '', 'popuptest2@getnada.com', NULL, '$2y$10$8O3Xb/SM2nGwweLrItg.YuU5ckdqI8yTffC127nOaO4iINFLpH6PW', NULL, '2021-07-19 07:01:22', '2021-07-19 07:01:22', 1, '0', 'popuptest2', 'Collegito-7$Dc0Ojme8WqAws', 'male.png', NULL, NULL, 1, NULL, 0, 9, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(31, '', 'testuser1@mailinator.com', NULL, '$2y$10$dLe7Eok5kRxJ.usLCzqSI.zuzCcq4y.x7Nqk04bHanQ1aCpUl6VH.', 'PvcZMQZ1ZH5m0XOwpCAdQK2BJ4ljILZ5j8GUca7oJ7rq1Pbqj67kwOwpoYy5', '2021-07-19 07:33:43', '2021-07-19 07:36:18', 1, '0', 'Testuser1', 'Collegita-mNt', 'female.png', NULL, NULL, 2, NULL, 0, 2, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(33, 'Jan Dawson', 'geogatedproject328@gmail.com', NULL, NULL, NULL, '2021-07-20 22:35:55', '2021-07-20 22:35:55', 1, '0', NULL, 'lRKsM4fHdh', 'https://graph.facebook.com/v3.3/10150004308275173/picture?type=normal', NULL, NULL, 0, NULL, 0, NULL, 'facebook', '10150004308275173', NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(34, 'Airis Jayden', 'geogatedproject413@gmail.com', NULL, NULL, NULL, '2021-07-20 23:24:59', '2021-07-20 23:24:59', 1, '0', NULL, 'txMAyfouZ9', 'https://graph.facebook.com/v3.3/24302201268667/picture?type=normal', NULL, NULL, 0, NULL, 0, NULL, 'facebook', '24302201268667', NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(35, 'Student One', 'Studentone@mailinator.com', NULL, '$2y$10$lPBzf.OZGObSizMaCQGvlODYyh5XUL315GfN/pER2EMLD1KFKXf46', 'Y7wtPrpssnIf417JVDZIC2A7UprF2SF2Cvo6gNf7AAaYVZjU0W4qeTONLBj0', '2021-07-28 02:16:03', '2021-07-28 07:20:52', 1, '0', 'studentone', 'Collegito-@QTOB', '1627476652.jpg', NULL, NULL, 1, NULL, 0, 33, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(36, '', 'Abhis@mailinator.com', NULL, '$2y$10$foD91in0Q0cbTWP0YI9el..Q3dqrcLqj65suW0bY5HVHWQttDGgi6', NULL, '2021-08-17 06:26:39', '2021-08-17 06:26:39', 1, '0', 'Abhis', 'Collegito-icTAxFalUNrHzg@wM', 'male.png', NULL, NULL, 1, NULL, 0, 29, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(37, '', 'girluser@mailinator.com', NULL, '$2y$10$VHzRcPP9.ONUqUbT1V2ngO8AkQI23yP499J5FAqGxyslYqaya/id2', NULL, '2021-08-17 07:39:41', '2021-08-17 07:39:41', 1, '0', 'girluser', 'Collegita-duGxzSPB3KF7wA$', 'female.png', NULL, NULL, 2, NULL, 0, 23, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(38, 'Ali Alkandari', 'Q8vv@hotmail.com', NULL, '$2y$10$LhyuBbcoze4LO/BB11Una.rocg.T0SyD00JC0n.tDmh6Cj2y1j6OG', NULL, '2021-08-18 10:27:23', '2021-10-04 10:05:32', 1, '0', 'Ali', 'Collegito-0sufSzO', '1633341932.jpg', NULL, NULL, 1, NULL, 0, 26, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(39, '', 'ossc@me.com', NULL, '$2y$10$6hFBvmgql/BQQXfinQhTH.fyioRL.TIji9Ylvxx218kc8vqOoljXm', NULL, '2021-08-18 13:46:53', '2021-08-18 13:46:53', 1, '0', 'Adel', 'Collegito-CFtmQW', 'male.png', NULL, NULL, 1, NULL, 0, 18, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(40, '', 'johndoe@yopmail.com', NULL, '$2y$10$xw9Iw5pQ88hfgF8WtJjUbOyZcT2gcVQsIhab9MBFy2J5fstQROItS', NULL, '2021-08-18 14:50:54', '2021-08-18 14:52:44', 1, '0', 'john', 'Collegito-1ZET', '1629298359.jpg', NULL, NULL, 1, NULL, 0, 39, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(41, 'انت الي اتولي', 'q8races@hotmail.com', NULL, '$2y$10$pM37cRoq5dq9THWSJwo5iuSHSg8JPTdKcout0GjbyVUCXJqNqvHwG', NULL, '2021-08-19 02:13:13', '2022-08-29 17:08:58', 1, '0', 'hamed', 'Collegito-45Lb8mHux', '1629339618.png', '192.168.1.1', '', 1, NULL, 0, 36, NULL, NULL, NULL, 0, '', '#00aabb', 1, NULL, NULL, 2, 0, 0),
(42, '', 'aalhendal@me.com', NULL, '$2y$10$4d6yEdEe4GVvQqgALarRZeVaSj3Yi/qa5dH24otr1goqes2qLR3eW', NULL, '2021-08-26 17:42:00', '2021-08-26 17:47:03', 1, '0', '3dl', 'Collegito-f$kAx5jwnM1q!Si', '1629999949.jpg', NULL, NULL, 1, NULL, 0, 21, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(43, '', 'dgdfdddd@gfggdfg.com', NULL, '$2y$10$1a1mZFbZZDFW.fbfwPVg4ODCQeFWv5/9fwB1VX6hkVKGVgKhRylj.', NULL, '2021-08-26 17:59:31', '2021-08-26 17:59:31', 1, '0', 'Ggg', 'Collegita-f@8aDUjQevg6ztS', 'female.png', NULL, NULL, 2, NULL, 0, 16, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(44, '', 'deepanshu1@getnada.com', NULL, '$2y$10$OMdToEN3lgWbNsYk43iKt.53jxkAMvqkWpRjJCu8Nz1Gb5bgGpCPm', NULL, '2021-08-28 09:17:49', '2021-08-28 09:17:49', 1, '0', 'deepanshu', 'Collegito-7ym8wpsl1jv3rhbn', 'male.png', NULL, NULL, 1, NULL, 0, 24, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(45, 'collegator dev', 'collegator@gmail.com', NULL, NULL, NULL, '2021-08-28 09:38:03', '2021-08-28 09:38:03', 1, '0', NULL, 'VPHJ7IbxOz', 'https://lh3.googleusercontent.com/a/AATXAJwhUIaNWakKSmep8DL-OCd327SjZ4yTCyMjchpB=s96-c', NULL, NULL, 0, NULL, 0, NULL, 'google', '114733491373303561787', NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(46, 'Saif Al Fahad', 'advaapp@gmail.com', NULL, NULL, NULL, '2021-08-28 12:30:58', '2021-10-14 09:28:33', 1, '0', 'sdsd', 'Collegita-0qsv3m', 'https://lh3.googleusercontent.com/a/AATXAJyYJpoG7BAxEUVmu6CqVNXi5p3vgtFLpPgYmdOR=s96-c', NULL, '', 2, NULL, 0, 1, 'google', '105396116630827150321', NULL, 0, '', '#40d469', 1, NULL, NULL, 2, 0, 0),
(47, '', 'adel@m.com', NULL, '$2y$10$jbJCyg3.urwCR6bixPqlxu07UPFvRym3QQBd.p0ZqH1C6/kChQZnm', NULL, '2021-08-28 18:49:18', '2021-08-28 18:49:18', 1, '0', 'Hhh', 'Collegito-onafejxsbdg2v51pk7y', 'male.png', NULL, NULL, 1, NULL, 0, 19, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(48, '', 'alialii@hotmail.com', NULL, '$2y$10$7hOaXCFhJX2wqndaNwpVse78jsnF0AObxWXMzyWiVnhaqogryTn.m', NULL, '2021-08-29 09:26:58', '2021-08-29 09:26:58', 1, '0', 'Bo3alwaaa', 'Collegita-vf495s', 'female.png', NULL, NULL, 2, NULL, 0, 19, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(49, '', 'q8vvo@hotmail.com', NULL, '$2y$10$lyvjtEYX0sC9yAED/BwdZeS11dael4IZI.7jd15cR/e6JZSJZ7Es2', NULL, '2021-08-29 09:28:39', '2021-08-29 09:28:39', 1, '0', 'aliali3', 'Collegito-yqjicdgam', 'male.png', NULL, NULL, 1, NULL, 0, 23, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(50, 'Ali Alkandari', 'kuwait2@hotmail.com', NULL, '$2y$10$1jnFFA8QC5v19v6gkG/QYerVi.oMrWWSP3aySHH04wirw5ZuBRHMO', NULL, '2021-08-29 09:30:39', '2021-08-29 09:32:38', 1, '0', 'alialii', 'Collegito-aibt1cnwxeg4f0ly287d', 'male.png', NULL, NULL, 1, NULL, 0, 18, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(51, '', 'jjfie@hotmail.com', NULL, '$2y$10$9egzM.rgPSPbFFHBWXUwKulnS/Jh7JTVxFOehggivItyhRkLP.FXu', NULL, '2021-08-29 09:42:12', '2021-08-29 09:42:12', 1, '0', 'nohaa', 'Collegita-qa42', 'female.png', NULL, NULL, 2, NULL, 0, 23, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(52, '', 'q8VVV@hotmail.com', NULL, '$2y$10$Q6GF2xenbGdlw5ztp4TJCeSC0mmpO3K/H1rpyAbjnn7Fn6XMhoIya', NULL, '2021-08-29 09:59:49', '2021-08-29 09:59:49', 1, '0', 'alihasan', 'Collegito-2q8psbfi6eoh1t', 'male.png', NULL, NULL, 1, NULL, 0, 25, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(53, '', 'alihaakandarii@hotmail.com', NULL, '$2y$10$MMTuK3tfU.if.BoN9mBCfOCprKL6NuAvaZ.3Kjj1S8vIQ.5ERzwji', NULL, '2021-08-29 10:58:53', '2021-08-29 10:58:53', 1, '0', 'alilaiaia', 'Collegito-8c462u9qpjsfrnodkhla', 'male.png', NULL, NULL, 1, NULL, 0, 27, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(54, '', 'aaae3@gmail.com', NULL, '$2y$10$cQctgFoelGHJnbfUzu1rBONSEIVJVo5xsrNLC8leR/9mIpHCRFENy', NULL, '2021-08-29 13:58:22', '2021-08-29 13:58:22', 1, '0', 'Dalooa', 'Collegita-zl6s821m', 'female.png', NULL, NULL, 2, NULL, 0, 20, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(55, '', 'kdids@hotmail.com', NULL, '$2y$10$sL0shyaHhPuc/Xl9ejl4eexaRsnBHUb0WNISztC6hn2WMV3qZWxDu', NULL, '2021-08-29 14:08:18', '2021-08-29 14:08:18', 1, '0', 'jamelaq8', 'Collegita-a3lrt247ynbfgs6w', 'female.png', NULL, NULL, 2, NULL, 0, 19, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(56, '', 'fajkda@hotmail.com', NULL, '$2y$10$2fqag9LtgP2FoSVvwpzps.OIICyBqxiN.tjsbXvGd.ny.go1GKKNC', NULL, '2021-08-29 17:48:50', '2021-08-29 17:48:50', 1, '0', 'aliali', 'Collegito-fvecja6i2ms', 'male.png', NULL, NULL, 1, NULL, 0, 18, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(57, '', 'nfanf92@gmail.com', NULL, '$2y$10$nH25XVwU3KV8yoCZ3nre3.VnCO3wrGUO59nW7EXYFJJh3MGB/JTKO', NULL, '2021-08-30 04:13:56', '2021-08-30 04:13:56', 1, '0', 'nouf', 'Collegita-oy5d9fcwnae3pl74i', 'female.png', NULL, NULL, 2, NULL, 0, 29, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(58, '', 'vidhi@getnada.com', NULL, '$2y$10$jId2EZGn94y8E.P1puHnquV6ZQb7EsbYVVWiaGqSOvkIfvine/56G', NULL, '2021-09-01 05:14:51', '2021-09-01 05:14:51', 1, '0', 'vidhi', 'Collegita-9ir1fq', 'female.png', NULL, NULL, 2, NULL, 0, 24, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(59, '', 'akdwe@hotmail.com', NULL, '$2y$10$AVdy3GaBxZi6J92.K4EJsuTJZbDR..mkzk1/RRdtVi3j0a.RaJ332', NULL, '2021-09-01 12:22:00', '2021-09-01 12:22:00', 1, '0', 'AliAlAli', 'Collegito-uylspg', 'male.png', NULL, NULL, 1, NULL, 0, 21, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(60, '', 'fjdaskflas@hotmail.com', NULL, '$2y$10$/HC6loPiLOEogNqlCTVa9OpvVY7LUvyZS9YorKGsz/ZOSNn5EVr2u', NULL, '2021-09-01 12:26:05', '2021-09-01 12:26:05', 1, '0', 'Nonaaaq8', 'Collegita-o76s5m', 'female.png', NULL, NULL, 2, NULL, 0, 21, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(61, '', 'fdjkasr@hotmail.com', NULL, '$2y$10$0XB2hIV.pmziIvYXCwDT.OCz3fiR1maUS/d5isQkt.ro0FxRd8eD2', NULL, '2021-09-01 12:28:14', '2021-09-01 12:28:14', 1, '0', 'Ansak', 'Collegito-rs6yq5', 'male.png', NULL, NULL, 1, NULL, 0, 18, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(62, '', 'fjaskdakl@hotmail.com', NULL, '$2y$10$svN7XiUIWGGInbURgqSmNe9j.YcuTDcMckskZtRbTFC4Q4DWyZOyu', NULL, '2021-09-01 12:34:12', '2021-09-01 12:34:12', 1, '0', 'noraaali', 'Collegita-7pjz50', 'female.png', NULL, NULL, 2, NULL, 0, 21, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(63, '', 'fjakls@hotmail.com', NULL, '$2y$10$Pi5Ta3phEHbyS3uE81kekO2JBtTWIKz3V7tiYcUtOil8.nYGAX9UW', NULL, '2021-09-01 12:53:03', '2021-09-01 12:53:03', 1, '0', 'JamelJamal', 'Collegito-bds5i4', 'male.png', NULL, NULL, 1, NULL, 0, 19, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(64, '', 'adel@adel.com', NULL, '$2y$10$MghYb.UODIncqCJf4JqX2emUVrTQeiiWYj.3KyY9qfc0TrMU1g1/i', NULL, '2021-09-01 16:39:23', '2021-09-01 16:39:23', 1, '0', 'Aaaaa', 'Collegito-inj9zh', 'male.png', NULL, NULL, 1, NULL, 0, 21, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(65, '', 'fjdakafdsk@hotmail.com', NULL, '$2y$10$JetcG.oWbNb8elKCGzI/o.EdujxVfENhetICm0xCee3vGnpqNQXsa', NULL, '2021-09-01 17:02:15', '2021-09-01 17:02:15', 1, '0', 'AliAlawi', 'Collegito-zxpjkr', 'male.png', NULL, NULL, 1, NULL, 0, 27, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(66, '', 'amitji@getnada.com', NULL, '$2y$10$ZsQDu8.Jr1/WdY0bd8A/cuq89qd8IrmkxOOAbT8JtlFQqQ5gHBybe', NULL, '2021-09-02 13:38:11', '2021-09-02 13:38:11', 1, '0', 'amitji', 'Collegito-clvnts', 'male.png', NULL, NULL, 1, NULL, 0, 28, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(67, '', 'jfdklalkads@hotmail.com', NULL, '$2y$10$E8BCNWt6l9I3NHaP0x1JeuW.5UOEeusEGZuBBG4xujwOfasq00LOy', NULL, '2021-09-04 16:16:33', '2021-09-04 16:16:33', 1, '0', 'alimn', 'Collegito-ioua0p', 'male.png', NULL, NULL, 1, NULL, 0, 21, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(68, '', 'jkfdjaks@hotmail.com', NULL, '$2y$10$GMu2YGrbLwb882d1PY.KzOpRSmQenh25.QCB9SFmlHUm4l76./L3W', NULL, '2021-09-04 16:42:39', '2021-09-04 16:42:39', 1, '0', 'nonamaynona', 'Collegita-i5vlu9', 'female.png', NULL, NULL, 2, NULL, 0, 26, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(69, '', 'vidhi1@getnada.com', NULL, '$2y$10$99TPSoJLNJzdViLf1C5oneQZDOH54SKjEns1CxPeHD7oL04ZTs0iS', 'kL5T5XgTigwNlKat5l40Bs0L79kbM7vmku4OheTjVkwmn2GdQaLM67L07QKy', '2021-09-07 05:49:43', '2021-09-27 12:30:46', 1, '0', 'qwertyuiop', 'Collegita-wo31uy', 'female.png', NULL, NULL, 2, NULL, 0, 20, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(70, '', 'Vidhu@getnada.com', NULL, '$2y$10$JcNiPcEEIrzHa8/5BRgB7.hApjN8c/OnpejIFe1nL9.4klxcdh5Om', NULL, '2021-09-07 05:51:06', '2021-09-07 06:36:49', 1, '0', 'qwertt', 'Collegito-hwl7xd', '1630996609.png', NULL, NULL, 1, NULL, 0, 24, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(71, '', 'Nitinstu@mailinator.com', NULL, '$2y$10$Ok09eQieL40kN8sK1dUprOfFgPTQ66jI6k5AY0FhM.T8Wc9dPqw82', NULL, '2021-09-25 06:45:41', '2021-09-28 04:38:18', 1, '0', 'nitinstudent', 'Collegito-9kvnq7', 'male.png', NULL, NULL, 1, NULL, 0, 28, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(72, 'Ali', 'hdhehd@hotmail.com', NULL, '$2y$10$FwuAju8erZtfUHdqyioA9epnGXu3VU2myw3ZGcHTCtUynMDMYjRMe', NULL, '2021-09-28 10:32:02', '2022-07-13 13:14:33', 1, '0', 'Aloosh', 'Ali', 'male.png', '192.168.1.1', 'N/L', 1, NULL, 1, 21, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(73, 'Hamood', 'hgughhjjhhhhnhhhhalo@hotmail.com', NULL, '$2y$10$DQssrT7A0ZnZEBUcPM20leyRAfL/bEfyEKrw18HAHUZCaHADMrpOa', NULL, '2021-09-30 23:28:15', '2021-09-30 23:28:15', 1, '0', NULL, 'Collegito-ztprG', 'male.png', NULL, 'N/l', 1, '1', 0, 21, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(74, 'Adel', 'fjakjdfklajkl@hotmail.com', NULL, '$2y$10$q4Vvvtae6FiTpyLndz0gTuLuImbzVnw7wO46roAM3Is.1GoFwJrBu', NULL, '2021-10-04 10:14:37', '2021-10-15 00:27:47', 0, '0', 'Adooool', 'Collegito-xca5z2', '1634257645.jpg', NULL, 'Uni', 1, NULL, 1, 20, NULL, NULL, NULL, 0, '', '#00aabb', 1, NULL, NULL, 2, 0, 0),
(75, '', 'testemail22@mailinator.com', NULL, '$2y$10$eIEHj3f2H2Qd2gDDteROlOujQi5NrqEVGsnipV506hGzK5D9enzre', NULL, '2021-10-19 05:56:19', '2021-10-19 06:08:26', 1, '0', 'testemail22', 'Collegito-9lhcb7', '1634623706.jpg', NULL, '', 1, NULL, 0, 22, NULL, NULL, NULL, 0, NULL, '#d2229d', 1, NULL, NULL, 2, 0, 0),
(76, 'imagetest', 'imagetest@getnada.com', NULL, '$2y$10$zXcn9.hfnqnHnqT6aw.acu9wunlN.Hhr.b2xOkhnfq/3Ps6mz9IWS', NULL, '2021-10-19 07:38:30', '2021-10-19 07:39:05', 1, '0', 'imagetest', 'Collegito-v0eau5', '1634629145.jpg', NULL, '', 1, NULL, 0, 16, NULL, NULL, NULL, 0, NULL, '#00aabb', 1, NULL, NULL, 2, 0, 0),
(77, 'imagetest', 'imagetest1@getnada.com', NULL, '$2y$10$GiupvsR9AjMEPNmlP6kgaezKgZdm0szDfgU8rklibZE/VvkT5D0lK', NULL, '2021-10-19 09:21:22', '2021-10-19 09:21:22', 1, '0', NULL, 'Collegito-05dvts', 'colleicon.png', NULL, '', 1, '1', 0, 16, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(78, '', 'nitinqateam@getnada.com', NULL, NULL, NULL, '2021-10-29 10:43:03', '2021-10-29 10:43:03', 1, '0', 'applewaleji', 'Collegito-nq3h5d', 'colleicon.png', NULL, NULL, 1, NULL, 0, 16, 'apple', '12346578981', NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(79, '', 'aditya1106@getnada.com', NULL, '$2y$10$PEVpCVHW34cDNqulVjk2RerlZKMs5T.zcC94l23HQ.RLbtGjyGqh6', NULL, '2021-10-29 12:18:18', '2022-04-29 06:12:51', 1, '0', 'aditya11', 'Collegito-yq97ld', '1638875476.jpg', NULL, '', 1, NULL, 0, 22, NULL, NULL, '8751', 0, NULL, '#00aabb', 1, NULL, NULL, 2, 0, 0),
(80, '', 'aditya@gmail.com', NULL, '$2y$10$3qSgTyj/j5KGiiZtgDrF3uxDmSmxtmZ0YiKTG88ZDaisQ7IvGIDXa', NULL, '2021-10-29 12:19:38', '2021-10-29 12:19:38', 1, '0', 'aditya222', 'Collegito-e6h3dr', 'colleicon.png', NULL, NULL, 1, NULL, 0, 18, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(81, '', 'adity1@gmail.com', NULL, '$2y$10$YmIlTOrceAsDVCRmE8bUZ.r62dS74M3LJ.Ru1wiBGIInQBHB8D.A.', NULL, '2021-10-29 13:33:59', '2021-10-29 13:33:59', 1, '0', 'adadasasdasd', 'Collegito-a69ndj', 'colleicon.png', NULL, NULL, 1, NULL, 0, 17, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(82, '', 'ado@gail.com', NULL, '$2y$10$1JSH5qe8rfEcazf0IGpcKuT/wmzZJANfv525GcuTdI07KrA4mFMk6', NULL, '2021-10-29 13:39:21', '2021-10-29 13:39:21', 1, '0', 'adity', 'Collegito-q12sun', 'colleicon.png', NULL, NULL, 1, NULL, 0, 17, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(83, '', 'ak@ak.com', NULL, '$2y$10$PDCL3JSI3yr2QsmDWOf53eRBY0VS3BcfVJo01L91Gs.AdpHY6pTPO', NULL, '2021-10-29 13:41:50', '2021-10-29 13:41:50', 1, '0', 'kal', 'Collegito-5g0uol', 'colleicon.png', NULL, NULL, 1, NULL, 0, 17, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(84, '', 'manish@getnada.com', NULL, '$2y$10$l2Tu6HwbVQdV7lx4tY0k9Oozd4VGZ1o8mMhhyqyhPBpS7dH/eGIhu', NULL, '2021-10-30 11:02:24', '2021-10-30 11:02:24', 1, '0', 'manish', 'Collegito-wy1rx0', 'colleicon.png', NULL, NULL, 1, NULL, 0, 17, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(85, '', 'n@getnada.com', NULL, '$2y$10$yQQvfxaHL93NnWXoW6SAEO3BoGvIYGU8S/XSlHUFxDClF9MM2pmsy', NULL, '2021-11-01 04:48:53', '2021-11-01 04:48:53', 1, '0', 'apple', 'Collegito-1er8va', 'colleicon.png', NULL, NULL, 1, NULL, 0, 16, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(86, '', 'asdfg@getnada.com', NULL, '$2y$10$Bgy8XioaoYjFUuUPO9k2E.Bm96bjh6d3pyTCZEhhiAKOKW8fBmh/y', NULL, '2021-11-01 05:06:52', '2021-11-01 05:06:52', 1, '0', 'asdfg', 'Collegito-va0i9b', 'male.png', NULL, NULL, 1, NULL, 0, 17, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(87, '', 'ns@getnada.com', NULL, '$2y$10$u6IS5pXkhQgen7dN9uCtk.4cGefzaXsp/e1pi5WGIxw/DR48/OdSy', NULL, '2021-11-01 05:19:46', '2021-11-01 05:19:46', 1, '0', 'applew', 'Collegito-58wgfi', 'colleicon.png', NULL, NULL, 1, NULL, 0, 16, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(88, '', 'adi1106@getnada.com', NULL, '$2y$10$.0TaeEF48OxCByyixuzPNuaHoVAWoGaURXFFeCdWSZCTh0V2TpGSq', NULL, '2021-11-01 05:44:36', '2021-11-01 05:44:36', 1, '0', 'adiyta', 'Collegito-76pfhq', 'colleicon.png', NULL, NULL, 1, NULL, 0, 18, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(89, '', 'manishSoni@getnada.com', NULL, '$2y$10$klhDKYomcmyd7XI78HVSHOHAUn0AHxdE5mUG2hwaP.9JVemdD7avC', NULL, '2021-11-12 05:25:19', '2021-11-12 05:25:19', 1, '0', 'manishSoni', 'Collegito-5r1cha', 'colleicon.png', NULL, NULL, 1, NULL, 0, 17, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(90, '', 'manish22@getnada.com', NULL, '$2y$10$QsLX/eQayV7d00hH0g53S.2Rk88wtg7LoAgw14.wpYxggKgyYe9wO', NULL, '2021-11-12 05:27:17', '2021-11-12 05:27:17', 1, '0', 'mansiha', 'Collegita-o8qvh6', 'colleicon.png', NULL, NULL, 2, NULL, 0, 17, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(91, '', 'mans@getnada.com', NULL, '$2y$10$SKMvDISzJehVirNhY1Wfh.S4AGp7aM6xJMk0mC9WTmQV0EJsNG4eu', NULL, '2021-11-12 05:28:14', '2021-11-12 05:28:14', 1, '0', 'masnadasd', 'Collegita-7db9pf', 'colleicon.png', NULL, NULL, 2, NULL, 0, 16, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(92, '', 'milan@getnada.com', NULL, '$2y$10$eAgwjlvN5i3RtV8BxlHwA.GI1Q0x8zrAGOcmNpRtr.hhLq1dkDQte', NULL, '2021-11-19 09:13:28', '2021-11-22 06:38:04', 1, '0', 'milan', 'Collegito-8nmh9v', '1637315072.jpg', NULL, NULL, 1, NULL, 0, 18, NULL, NULL, '7430', 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(93, '', 'nitinqa@mailinator.com', NULL, '$2y$10$aVIp/iFcrMQiNwfWu7wA9.5EH/8werrApoCnFyHSRBtkPv90NvgqS', NULL, '2021-11-19 09:18:21', '2021-11-19 09:18:21', 1, '0', 'nitinqa', 'Collegito-7lwy6z', 'colleicon.png', NULL, NULL, 1, NULL, 0, 16, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(94, '', 'aditys@getnada.com', NULL, '$2y$10$jIoGDi11djv5ZmueakPwUOxTsWMdisBLXpMyVaovfXHrYzIUk.bSO', NULL, '2021-11-22 05:58:22', '2021-11-22 05:58:22', 1, '0', 'aditya1', 'Collegito-6nhlj7', 'colleicon.png', NULL, NULL, 1, NULL, 0, 17, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(95, '', 'get@getnada.com', NULL, '$2y$10$L1S6jOY7/Hiqy7s/P65BIuaXUJPvZfyJlomWsnx.xc.IhZyZ9FOCy', NULL, '2021-11-22 06:08:07', '2021-11-22 06:08:07', 1, '0', 'getnada', 'Collegita-y65ifd', 'colleicon.png', NULL, NULL, 2, NULL, 0, 17, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(96, '', '1ossc@me.com', NULL, '$2y$10$yzV6C50EYSLHMjFdhyvINenmA.fQoUUK4aeD1eLrWaqfo3Z1aYJOe', NULL, '2021-11-22 07:36:27', '2021-11-22 07:36:27', 1, '0', 'haweq8', 'Collegito-8oxle4', 'colleicon.png', NULL, NULL, 1, NULL, 0, 38, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(97, '', 'final@getnad.com', NULL, '$2y$10$ipifaAln28tXw51gP14Eku5WZgthLn2gyP8jnEct3.0qvnds/Z2ta', NULL, '2021-11-22 10:20:13', '2021-11-22 10:20:13', 1, '0', 'sandeep', 'Collegito-lbm62r', 'colleicon.png', NULL, NULL, 1, NULL, 0, 17, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(98, '', 'final@getnada.com', NULL, '$2y$10$hh8.S8a.wr/OOnoIhlQ4b.uIy2p27I7sYHebkBWHKjgMITMGS6wd.', NULL, '2021-11-22 10:30:06', '2021-11-23 05:10:29', 1, '0', 'sandeepppp', 'Collegita-naby47', 'colleicon.png', NULL, NULL, 2, NULL, 0, 17, NULL, NULL, '4125', 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(99, '', 'aditya23@getnada.com', NULL, '$2y$10$mFLNWFDr95f.BeeS3yVuB.C2QT9FqARbfp.xrJ.toXJWINjauw4oy', NULL, '2021-11-22 12:01:08', '2021-11-22 12:01:08', 1, '0', 'adityaqw', 'Collegito-3dv0kb', 'colleicon.png', NULL, NULL, 1, NULL, 0, 18, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(100, '', 'aalialii@hotmail.com', NULL, '$2y$10$MER8.WNzALyTeYgnNehOZuU3apLQMPF1V7HYYqByeqXklk9ZpIDA6', NULL, '2021-12-01 05:30:49', '2021-12-01 05:30:49', 1, '0', 'bo3alwa', 'Collegito-2bnyk5', 'colleicon.png', NULL, NULL, 1, NULL, 0, 30, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(101, '', 'aaaa@gmail.com', NULL, '$2y$10$jZyb1HqAtLBrTSs9e5bEEOe0ss9NBpp/8D80XZv636R8GCP31d2O.', NULL, '2021-12-01 07:26:31', '2021-12-01 07:26:31', 1, '0', 'aliiii', 'Collegita-f7n8ey', 'colleicon.png', NULL, NULL, 2, NULL, 0, 18, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(106, '', 'tarun.devtechnosys@gmail.com', NULL, NULL, NULL, '2021-12-06 07:35:45', '2021-12-06 07:35:45', 1, '0', 'tarunsir', 'Collegito-4yqbm0', 'colleicon.png', NULL, NULL, 1, NULL, 0, 17, 'apple', '000263.a1ea5a8a115d432bb7184efab7406584.0543', NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(107, '', 'testingbydev@gmail.com', NULL, NULL, 'ZL2G9gs3obJoqY7qewAPKJj3AiTnePrnRuKdDRwLxJSlP3KeFEN1TD7vTmLr', '2021-12-06 07:43:26', '2022-07-08 06:13:52', 1, '0', 'hellothere', 'Collegita-awr9f2', 'colleicon.png', '192.168.1.127', NULL, 2, NULL, 0, 17, 'facebook', 'facebook', '3927', 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(108, '', 'imaditya1@getnada.com', NULL, '$2y$10$AIJRNU5gAOeZ.RFVq.OmIe1el3ok7kVgsUj5Iyul3zhCufiA4JLky', NULL, '2021-12-06 09:13:17', '2021-12-06 09:13:17', 1, '0', 'hellotherei', 'Collegito-29noza', 'colleicon.png', NULL, NULL, 1, NULL, 0, 25, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(109, '', 'ossc123123@me.com', NULL, '$2y$10$5xQguvtQVOum4mFPnWbPC.gLWKVv2HPBeAQBFJxp2laKXOp6rkcNC', NULL, '2022-03-11 13:50:10', '2022-03-11 13:50:10', 1, '0', 'haweq88', 'Collegito-pklh18', 'colleicon.png', NULL, NULL, 1, NULL, 0, 39, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(110, '', 'adi@getnada.com', NULL, '$2y$10$Ogo.7AniEPsQRDun6au5FOUGaD.URXMCPmuKWeagJvUdQANVQKw16', NULL, '2022-04-19 10:21:26', '2022-04-19 10:21:26', 1, '0', 'aditya', 'Collegita-xn1v0i', 'colleicon.png', NULL, NULL, 2, NULL, 0, 17, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(111, '', 'ad@getnada.com', NULL, '$2y$10$YfdtvpGoBIjEDCDJpah2lOTsPaiCSbriyflLi/eduByTJnGlonnKq', NULL, '2022-04-29 06:13:28', '2022-06-20 05:53:49', 1, '0', 'adit11', 'Collegito-54hwio', '1651312005.jpg', '192.168.1.85', NULL, 1, NULL, 0, 18, NULL, NULL, NULL, 0, 'fZR752VX3Uu2kxgUIiQ8hY:APA91bGky41M5hWAj8ve_LU9-3XT5fNcqem4Ll5x6eTnZ4wliztT4nWIQwuWg7YsDzSgv4E2SPFutmUVJrmNB1OqOWfrPnjwoS4Yl0QDFCuFTRioaybuRKaGPeklonBMMV4-gE4u5U-g', NULL, 1, NULL, NULL, 2, 0, 0),
(112, '', 'vidhi.dev25@gamil.com', NULL, '$2y$10$M2DwUFfc4gVNgrCRl7YQcOT6WL41w7MKVao0gc.PvUbl7dty0If6e', NULL, '2022-05-04 07:29:45', '2022-05-04 07:29:45', 1, '0', 'vidhu', 'Collegita-5h2bqc', 'female.png', NULL, NULL, 2, NULL, 0, 20, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(113, '', 'JFDAJFKLDFGJSL@HOTMAIL.COM', NULL, '$2y$10$2mD3c9hOIsqYiQB.VGyWqe9dTJqFUqBxOMyUT0xHai4OCvrzdtspK', NULL, '2022-05-04 11:59:18', '2022-05-04 11:59:18', 1, '0', 'alialkandari', 'Collegito-q9nr7h', 'male.png', NULL, NULL, 1, NULL, 0, 17, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(114, '', 'jfkdjklfea@hotmail.com', NULL, '$2y$10$NX4mDe4ZQByOqb3RYe2H..8MIPZYUtEb4CJM/FsHszBvgkmZcRWpm', NULL, '2022-05-04 13:30:18', '2022-05-04 13:30:18', 1, '0', 'jfdkaklda', 'Collegita-se9aj5', 'female.png', NULL, NULL, 2, NULL, 0, 21, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(115, 'Gorme', 'hhh@hhh.com', NULL, '$2y$10$TyFdvcZ2DAHj2d4DeVV5.uNKojJNFzYNpDIe3zp7h5qs7eQCS8B0m', NULL, '2022-05-04 16:46:27', '2022-05-04 16:46:27', 1, '0', NULL, 'Collegito-kq81ox', 'colleicon.png', NULL, 'Uni clo', 1, '1', 0, 23, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(116, '', 'ffff@mmmm.com', NULL, '$2y$10$dSutVOZie8T84tDnXp/ji.yO/LcpohUVmNbf4P2YRF8PMrm6N6Nb6', NULL, '2022-05-04 18:41:42', '2022-05-04 18:41:42', 1, '0', 'Googoo', 'Collegita-27cmin', 'female.png', NULL, NULL, 2, NULL, 0, 23, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(117, 'aditya', 'aditya@getnada.com', NULL, '$2y$10$TKIotLVAZWP5lOLhLVdHt.Iy3ko8X6K.gKmZdRG4TWHsSX6FOjGYq', NULL, '2022-05-06 04:25:45', '2022-08-29 11:57:55', 1, '0', 'aditya12', 'Collegito-4x6fwy', 'colleicon.png', '192.168.1.1', NULL, 1, NULL, 0, 16, NULL, NULL, '', 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(118, '', 'whehhe@hotmail.com', NULL, '$2y$10$h/AGAlFh837PvkM0FJJpTe/stojTqoDHI.hWlZFmUjHrJrnm0rdsq', NULL, '2022-05-12 06:28:13', '2022-05-12 06:28:13', 1, '0', NULL, 'Collegito-k7j6tr', 'colleicon.png', NULL, NULL, 1, NULL, 0, 18, NULL, NULL, NULL, 0, 'eQ9RmrqfhkxIgpGsVOO4wE:APA91bF_Qcb4t53520paWzXgFQpgTob8KpTJd7pbILyQCcBwJOorlIr2rz6o_DSrTXLrACbGJzWhTvypAC4AX9Q9LV3hFWr8JOdwApsonv3taH7AGqgp5aFIRoCK4yDfngJZff54P_WX', NULL, 1, NULL, NULL, 2, 0, 0),
(119, '', 'shhshd@hotmail.com', NULL, '$2y$10$o6wdo/zRcqejQjrWvn2uVOws2FTvaM.koJDBWiQrteKHqXf7sXAr6', NULL, '2022-05-13 16:20:09', '2022-05-13 16:20:09', 1, '0', NULL, 'Collegito-3hpot0', 'colleicon.png', NULL, NULL, 1, NULL, 0, 18, NULL, NULL, NULL, 0, 'f4FgrwGae0yBrCB9oL8X1s:APA91bHJVyQNW7RMxVNDn1LSffkiikgvk9qjlL-jmwQfNvPS51Va3SYBrgXBshJS3mNEjEw85II1-blLLjv3ng2Qqv9TZQnd1Cp4xU6fKtqViWeZiIZtSArzi2UTWvtL_yppgyS-7O09', NULL, 1, NULL, NULL, 2, 0, 0),
(120, '', 'bsbdbd@hotmail.com', NULL, '$2y$10$6nGVO8v0WqCoBHZpkyItm.bGubwSvxII03ae2k2ZWvr4rjBpM6f6u', NULL, '2022-05-15 14:34:09', '2022-05-15 14:34:09', 1, '0', NULL, 'Collegito-6lhze0', 'colleicon.png', NULL, NULL, 1, NULL, 0, 18, NULL, NULL, NULL, 0, 'f4FgrwGae0yBrCB9oL8X1s:APA91bHJVyQNW7RMxVNDn1LSffkiikgvk9qjlL-jmwQfNvPS51Va3SYBrgXBshJS3mNEjEw85II1-blLLjv3ng2Qqv9TZQnd1Cp4xU6fKtqViWeZiIZtSArzi2UTWvtL_yppgyS-7O09', NULL, 1, NULL, NULL, 2, 0, 0),
(121, '', 'ab@getnada.com', NULL, '$2y$10$nicX0.VHeCNa//dH7KctkeUUYNAXYhOgIlbn3gmaoo9wiLSl0Yd82', NULL, '2022-05-16 08:53:16', '2022-05-16 08:53:16', 1, '0', NULL, 'Collegito-b50knw', 'colleicon.png', NULL, NULL, 1, NULL, 0, 17, NULL, NULL, NULL, 0, 'coPlIFwqFEuzikC9g7oDos:APA91bHyHooBzMz4zhfm4NvCB0VVBbbT3FKMBCgHykHPbXQysW2t8B-NBNNqkvJFCUM4v25xxwbBwubw6qjpM8nyfp_U874N8rTSGh6IQldQhd7fH2SSdEBNsQs30vHCK7cS_B2MpMIH', NULL, 1, NULL, NULL, 2, 0, 0),
(122, '', 'ad1@getnada.com', NULL, '$2y$10$vUuFoTIvQR9LPP/wLqtK1OGkk/gItPrl6PekRs1twBWAxwkqYrrLy', NULL, '2022-05-16 09:03:04', '2022-05-16 09:03:04', 1, '0', NULL, 'Collegito-7o1csj', 'colleicon.png', NULL, NULL, 1, NULL, 0, 18, NULL, NULL, NULL, 0, 'coPlIFwqFEuzikC9g7oDos:APA91bHyHooBzMz4zhfm4NvCB0VVBbbT3FKMBCgHykHPbXQysW2t8B-NBNNqkvJFCUM4v25xxwbBwubw6qjpM8nyfp_U874N8rTSGh6IQldQhd7fH2SSdEBNsQs30vHCK7cS_B2MpMIH', NULL, 1, NULL, NULL, 2, 0, 0),
(123, '', 'sandeepSir@getnada.com', NULL, '$2y$10$Y1s0Julb.JtAygbO5KnzkO0m13qkwiELOiMqIF6nPNgUcOaDHjij6', NULL, '2022-05-17 13:05:07', '2022-05-30 14:21:17', 0, '0', NULL, 'Collegito-31ulpj', 'colleicon.png', NULL, NULL, 1, NULL, 0, 18, NULL, NULL, NULL, 0, 'c0B-Hg0utE2zl5ppa8-gaA:APA91bGYbKd4P0py3yMDuhUg7uEpa04nRo3Mp3ZNWbu0v5v9UnELE-7hsYYJxcG8lRVewRSs1wqvMUuESIqk_3me12_t1vc4YQCUtbhSX3ix9CHqj2ZmIApYJH-dX_2GUClaTAk-YvYQ', NULL, 1, NULL, NULL, 2, 0, 0),
(124, '', 'jdjshsh@hotmail.com', NULL, '$2y$10$ttHoOW2.CcciXl/96g9mKO6RZ/nmpQpus3Nnsv5FnfXvt8PxSvNJG', NULL, '2022-05-18 09:05:36', '2022-05-18 09:05:36', 1, '0', NULL, 'Collegito-vu7n5k', 'colleicon.png', NULL, NULL, 1, NULL, 0, 16, NULL, NULL, NULL, 0, 'c6LaRvKl6U1VqOVd3foA9l:APA91bFgH-_ZI9WbBOaJCw0-o1ZknI_WnCA1PjvSm2x9GblB9WQq-YoiKtUtRdJLERj0dNPT8SERhLWCjb69Vb3lfbVTRiplg30v1gBEUOjS3AqwVA8PYTKi732ocspLXHBdnCp6H9LT', NULL, 1, NULL, NULL, 2, 0, 0),
(125, '', 'hshshs@hotmail.com', NULL, '$2y$10$b7/0I7o0Z.f1d2WluNy4WeTqTp08b2thUU15R/1r2XMDhyRxxyjg6', NULL, '2022-05-18 18:47:50', '2022-05-18 18:47:50', 1, '0', NULL, 'Collegito-9fcg0m', 'colleicon.png', NULL, NULL, 1, NULL, 0, 39, NULL, NULL, NULL, 0, 'fcxoX4zlXU4vqf-qTYodXK:APA91bFdxrDfStSal7JOEt5jKj4M312YvdzURlJcZf-Q4Y9pzEOrImF_cKMskxJxZ1-ciqNfANoZ6SL9AkzLR6ucQBE0QCbFsIJOiKhkOV0MbLDMv3wTQzV3P8tNFvSWrX80aHZm1t4X', NULL, 1, NULL, NULL, 2, 0, 0),
(126, '', 'dhshdh@hotmail.com', NULL, '$2y$10$2mvRhwReukbW5KvvcS6qTO0c0k8zispqQh0nLtCHmPcoRCf61xzCe', NULL, '2022-05-18 19:12:30', '2022-05-18 19:12:30', 1, '0', NULL, 'Collegito-2uiv3a', 'colleicon.png', NULL, NULL, 1, NULL, 0, 17, NULL, NULL, NULL, 0, 'fcxoX4zlXU4vqf-qTYodXK:APA91bFdxrDfStSal7JOEt5jKj4M312YvdzURlJcZf-Q4Y9pzEOrImF_cKMskxJxZ1-ciqNfANoZ6SL9AkzLR6ucQBE0QCbFsIJOiKhkOV0MbLDMv3wTQzV3P8tNFvSWrX80aHZm1t4X', NULL, 1, NULL, NULL, 2, 0, 0),
(127, '', 'vijendra@getnada.com', NULL, '$2y$10$sGRs0Er/QYgFAtX06rVD3OnwdRtTFiDqXoDa6g96x7r/k6sT7Zr/.', NULL, '2022-05-19 05:17:50', '2022-05-19 05:17:50', 1, '0', NULL, 'Collegito-5v8bgm', 'colleicon.png', NULL, NULL, 1, NULL, 0, 17, NULL, NULL, NULL, 0, 'dkM2YcviRUOwlA2wLsfoZl:APA91bFd3U8Wv_dI_8cr9V22hsaIfRtXfDVD4Ik-5Us7AaZwODW2wTPgo3AKUOBeFkKg9kCvr4lqGVY8KAn-E3hpdPvXIWrVgSYuxGufR0b6L262sx1hNKFs57bRVyghui9qE-GHnqUD', NULL, 1, NULL, NULL, 2, 0, 0),
(128, '', 'polo@getnada.com', NULL, '$2y$10$frPZQDBdtnzXt4fR9iB/Be/O3Y5ykrvg1ZDuCBtgMoVUoqE6rq2jm', NULL, '2022-05-19 05:28:09', '2022-05-19 06:32:56', 1, '0', NULL, 'Collegito-5sfpa9', 'colleicon.png', '192.168.1.30', NULL, 1, NULL, 0, 16, NULL, NULL, NULL, 0, 'c2UnYuhcl00vpC4Nzz9vDp:APA91bHlNhiLzLsGjDcffI8d08xnAfpI3NTAKyTPwvE6gqzeeL0r_b1XXJUm9SbCtH6UPsOzsF78s-P-taJQ9laEe03O7kqeOInqCczWrpRuxf6kspSOcCGPSXAWcSyHGmwdWZi-OGX1', NULL, 1, NULL, NULL, 2, 0, 0),
(129, '', 'hdhdhehe@hotmail.com', NULL, '$2y$10$rlQtgSc66VJzZquoxq2EP.eZV.v7CBQIfk5JLH.U9JOr7C6aKcqWm', NULL, '2022-05-26 05:58:42', '2022-05-27 17:18:33', 1, '0', '3alawi', 'Collegito-uktn52', 'male.png', '192.168.1.1', '', 1, NULL, 0, 19, NULL, NULL, NULL, 0, NULL, '#00aabb', 1, NULL, NULL, 2, 0, 0),
(130, '', 'hdhshdgs@hotmail.com', NULL, '$2y$10$JyalduVMbThZpLc19gQTb.V4SZYO.E2hqM6oweLvLqTDd8NNyHLqW', NULL, '2022-06-08 13:33:52', '2022-08-29 13:17:00', 1, '0', NULL, 'Collegito-2ucp6y', 'male.png', '192.168.1.1', NULL, 1, NULL, 0, 20, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(131, '', 'ushshsg@hotmail.com', NULL, '$2y$10$AsZUDZUUGWh08URPd3fHguIkjWnv8SyJ5O6S7FgJuw/R/71L0QiLC', NULL, '2022-06-09 13:12:22', '2022-06-09 13:12:22', 1, '0', NULL, 'Collegito-b73zpv', 'male.png', '192.168.1.1', NULL, 1, NULL, 0, 20, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(132, '', 'devtest@getnada.com', NULL, '$2y$10$qfeGIuoI1NhLV2YQaHizt.UAFvEb5VmANu2dL9gl7UxFonSVmt5Jm', NULL, '2022-06-14 09:51:07', '2022-06-14 09:51:15', 1, '0', '', 'Collegito-ne1sk4', 'colleicon.png', NULL, '', 1, NULL, 0, 45, NULL, NULL, NULL, 0, NULL, '#00aabb', 1, NULL, NULL, 2, 0, 0),
(133, '', 'hshshdhss@hotmail.com', NULL, '$2y$10$6aHqPFRMf8pqWoJnb8E.nuSLqp5nWww8GQXa0NY0q65Kg8TD7WckS', NULL, '2022-06-30 07:05:00', '2022-06-30 07:05:00', 1, '0', NULL, 'Collegito-g14hvi', 'colleicon.png', NULL, NULL, 1, NULL, 0, 25, NULL, NULL, NULL, 0, 'ftqlFGHOAU-Nqgqz7dViA1:APA91bHTUoCSKhTyWZyc5PQOekva-30fRtkC2gOVyeGipXwmHrC-PVvVyLjwB9QnWengF8jzbZ7ShtyO01nntWRM4RlZEUu9iT-1KgvtTVpL6_UFQo2UWBAdbcnH0-F_HVb3RRLEE3gb', NULL, 1, NULL, NULL, 2, 0, 0),
(134, '', 'hdhehe@hotmail.com', NULL, '$2y$10$PBu36vBf3rby3qeWWSEA0uuLIBhh3j/Blk571cIAK2UspJKvayMLK', NULL, '2022-06-30 12:40:07', '2022-06-30 12:40:07', 1, '0', NULL, 'Collegito-ejw8l0', 'colleicon.png', NULL, NULL, 1, NULL, 0, 20, NULL, NULL, NULL, 0, 'ftqlFGHOAU-Nqgqz7dViA1:APA91bHTUoCSKhTyWZyc5PQOekva-30fRtkC2gOVyeGipXwmHrC-PVvVyLjwB9QnWengF8jzbZ7ShtyO01nntWRM4RlZEUu9iT-1KgvtTVpL6_UFQo2UWBAdbcnH0-F_HVb3RRLEE3gb', NULL, 1, NULL, NULL, 2, 0, 0),
(135, '', 'shshdhd@hotmail.com', NULL, '$2y$10$9vIySBHDUhRjEBHVn2h4SOVDFZQp9ke1RrfEI6Mk03fLBzXBi8TTK', NULL, '2022-06-30 13:20:34', '2022-06-30 13:20:34', 1, '0', NULL, 'Collegita-wh46fd', 'colleicon.png', NULL, NULL, 2, NULL, 0, 21, NULL, NULL, NULL, 0, 'ftqlFGHOAU-Nqgqz7dViA1:APA91bHTUoCSKhTyWZyc5PQOekva-30fRtkC2gOVyeGipXwmHrC-PVvVyLjwB9QnWengF8jzbZ7ShtyO01nntWRM4RlZEUu9iT-1KgvtTVpL6_UFQo2UWBAdbcnH0-F_HVb3RRLEE3gb', NULL, 1, NULL, NULL, 2, 0, 0),
(136, '', 'hshsheaa@hotmail.com', NULL, '$2y$10$u5Esm0O.9ARsYkei95yri.fhRoD74KTTT2oSPnkN7hBpwReRx6Si2', NULL, '2022-06-30 13:40:28', '2022-06-30 13:40:28', 1, '0', NULL, 'Collegita-oz53fj', 'colleicon.png', NULL, NULL, 2, NULL, 0, 21, NULL, NULL, NULL, 0, 'efKcQ-aEskfSkgB5F77NRO:APA91bE7f_GiLXGpu6FpWMVAPpHVgcrr4dwvTRnjUznYxASfFiCsYW_yHCuqUR1cycshjzxt_I2WydgyWp87y_vtSKMFjZ9SDJqWpXXr-p4Dhyc7t7jRMNqR54ag60eATD06kcUZYqsP', NULL, 1, NULL, NULL, 2, 0, 0),
(137, '', 'hdhxhx@gmail.com', NULL, '$2y$10$wjAapdPCS/aVGD5u30RMsehL1eQTehpVjvTBv5iroW.enRrG1TR3a', NULL, '2022-06-30 20:08:21', '2022-06-30 20:08:21', 1, '0', NULL, 'Collegito-7sfpa9', 'colleicon.png', NULL, NULL, 1, NULL, 0, 19, NULL, NULL, NULL, 0, 'efKcQ-aEskfSkgB5F77NRO:APA91bE7f_GiLXGpu6FpWMVAPpHVgcrr4dwvTRnjUznYxASfFiCsYW_yHCuqUR1cycshjzxt_I2WydgyWp87y_vtSKMFjZ9SDJqWpXXr-p4Dhyc7t7jRMNqR54ag60eATD06kcUZYqsP', NULL, 1, NULL, NULL, 2, 0, 0),
(138, '', 'hdhdhhd@hotmail.com', NULL, '$2y$10$6XERpgAAtg8sUDarqfW5MOJvhstTmIuuAc.vJhqla2hnvppSMdD6K', NULL, '2022-07-01 10:55:11', '2022-07-01 10:55:11', 1, '0', NULL, 'Collegita-f1qlp5', 'colleicon.png', NULL, NULL, 2, NULL, 0, 21, NULL, NULL, NULL, 0, 'efKcQ-aEskfSkgB5F77NRO:APA91bE7f_GiLXGpu6FpWMVAPpHVgcrr4dwvTRnjUznYxASfFiCsYW_yHCuqUR1cycshjzxt_I2WydgyWp87y_vtSKMFjZ9SDJqWpXXr-p4Dhyc7t7jRMNqR54ag60eATD06kcUZYqsP', NULL, 1, NULL, NULL, 2, 0, 0),
(139, '', 'hsjdhsaa@hotmail.com', NULL, '$2y$10$2T5nJ/dhVstZh9h6wyNQO.XaU9.LMxrJsxONRvDkGKb/ay51C7iau', NULL, '2022-07-01 10:56:27', '2022-07-01 10:56:27', 1, '0', NULL, 'Collegita-3uytv4', 'colleicon.png', NULL, NULL, 2, NULL, 0, 21, NULL, NULL, NULL, 0, 'efKcQ-aEskfSkgB5F77NRO:APA91bE7f_GiLXGpu6FpWMVAPpHVgcrr4dwvTRnjUznYxASfFiCsYW_yHCuqUR1cycshjzxt_I2WydgyWp87y_vtSKMFjZ9SDJqWpXXr-p4Dhyc7t7jRMNqR54ag60eATD06kcUZYqsP', NULL, 1, NULL, NULL, 2, 0, 0),
(140, '', 'ahshhs@hotmail.com', NULL, '$2y$10$wjTmnAK1QLGv.oAabrljieOhgj9Y2C4dsfZBjzfed64loo6WMSyiK', NULL, '2022-07-01 13:43:11', '2022-07-01 13:43:11', 1, '0', NULL, 'Collegita-0isgh2', 'colleicon.png', NULL, NULL, 2, NULL, 0, 27, NULL, NULL, NULL, 0, 'dNYu6Huw4EGZtgxYxZwTxe:APA91bEZcawfQ5zlsTUF4eZrSGxCAxl8RXmS1ZvYYzMuqQbJ6UKwZkUQ92V_28oYfPXsYLj68GQ0lpwRQSu0Za41IvGIHq-zINQVa1MRIgMi8fODWkdDOkoMii-YVseUDW2LXrmItVY8', NULL, 1, NULL, NULL, 2, 0, 0),
(141, '', 'dhhdhehd@hotmail.com', NULL, '$2y$10$jzaySJ15JgKh7N/A1D/I7.5enLg6GIdn.W0jl5Z/1TK4fGpBo1Zwi', NULL, '2022-07-02 10:59:43', '2022-07-02 10:59:43', 1, '0', NULL, 'Collegito-9vi1to', 'colleicon.png', NULL, NULL, 1, NULL, 0, 20, NULL, NULL, NULL, 0, 'dNYu6Huw4EGZtgxYxZwTxe:APA91bEZcawfQ5zlsTUF4eZrSGxCAxl8RXmS1ZvYYzMuqQbJ6UKwZkUQ92V_28oYfPXsYLj68GQ0lpwRQSu0Za41IvGIHq-zINQVa1MRIgMi8fODWkdDOkoMii-YVseUDW2LXrmItVY8', NULL, 1, NULL, NULL, 2, 0, 0),
(142, '', 'isusus@hotmail.com', NULL, '$2y$10$98sNkA5hqJcg26eotJAo.eKkJhg7.GZeoSWmCj6QHUVuvVcYyZhk2', NULL, '2022-07-05 12:19:46', '2022-07-05 12:19:46', 1, '0', NULL, 'Collegito-8xr3oh', 'colleicon.png', NULL, NULL, 1, NULL, 0, 17, NULL, NULL, NULL, 0, 'cviiWgDoXENzsS1ct7fCAC:APA91bFFDmMfOBVWbUcHcPk2gMkmebaeA33JnxmsjgLBYvph-yEhHsMiJ_7rCXZskz8DRQnLRZDfeoJNCndaFJ5tPgLaxRdGfMNB9mRvtP1V9lOImRhTIp7HdfpgHoNzsZRiaUsH-Eg7', NULL, 1, NULL, NULL, 2, 0, 0),
(143, '', 'customer@getnada.com', NULL, '$2y$10$J20cRYTknywUTBRppaZk..0NMRy99Img1BfKAQ47BuVqn8e/A.r.2', NULL, '2022-07-07 06:01:20', '2022-07-07 12:52:14', 1, '0', NULL, 'Collegito-ko6v1m', 'colleicon.png', '192.168.1.38', NULL, 1, NULL, 0, 16, NULL, NULL, '6581', 0, 'c0tl1NRf6UI4uFXHQornM8:APA91bFiKbekfVzUU60x0sG39kUwK0uQDDkKraA_pgZD0McVEqJyiUuYCSdEhs-RMXB4l356qqFoBJumnnGnfZKxQG4o7VdxxXF4jDnYlOG3T965OQ99N13zfqvtinyviFhLQm7c_NW-', NULL, 1, NULL, NULL, 2, 0, 0),
(144, '', 'customer2@getnada.com', NULL, '$2y$10$qvKZlg7EZYzqJ/W7c/mGseJLqQ6t.UQwb3bfy1/9l6hmjAcEyOYe.', NULL, '2022-07-07 06:17:01', '2022-07-07 06:19:32', 1, '0', NULL, 'Collegita-c7gib3', 'colleicon.png', NULL, NULL, 2, NULL, 0, 17, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(145, '', 'customer3@getnada.com', NULL, '$2y$10$.whl.pMR5B8myNTAxSBBiO/pHhPcnO15Fbj1dCzklcabA1mYa6SZC', NULL, '2022-07-07 07:37:33', '2022-07-07 07:37:33', 1, '0', NULL, 'Collegito-pa4yr0', 'colleicon.png', NULL, NULL, 1, NULL, 0, 17, NULL, NULL, NULL, 0, 'fAx6P4-vQg2WGOSxLvjE8e:APA91bGp4insdeaqIVVIhnZUnmpV0adLqSPDDZloWhtaj2VRaYiPa15m_oaPdezrASblKnUs1HTjpldM4AFjsPHFMIeljVNSa0eY7CjLI5icdQVWeG3QzLaYCil4C-4dmwmy2hjqHjFe', NULL, 1, NULL, NULL, 2, 0, 0),
(146, '', 'testingbydev1@gmail.com', NULL, NULL, NULL, '2022-07-07 09:58:41', '2022-07-07 09:58:41', 1, '0', NULL, 'Collegito-2j1wfy', 'colleicon.png', NULL, NULL, 1, NULL, 0, 18, 'google', 'google.com', NULL, 0, 'fZR752VX3Uu2kxgUIiQ8hY:APA91bGky41M5hWAj8ve_LU9-3XT5fNcqem4Ll5x6eTnZ4wliztT4nWIQwuWg7YsDzSgv4E2SPFutmUVJrmNB1OqOWfrPnjwoS4Yl0QDFCuFTRioaybuRKaGPeklonBMMV4-gE4u5U-g', NULL, 1, NULL, NULL, 2, 0, 0),
(147, '', 'customer4@getnada.com', NULL, '$2y$10$rLslZtFFyouowMGzr2ynYOJ3oM188ZTc06xeZG8J7vMmZtqUk9Opm', NULL, '2022-07-07 11:01:30', '2022-07-07 12:47:09', 1, '0', NULL, 'Collegito-mua50b', 'colleicon.png', NULL, NULL, 1, NULL, 0, 17, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(148, '', 'ajajs@hotmail.com', NULL, '$2y$10$UUyOUCDZa2jLkpwh13fCK.Xs9ANWjrH75AaxkvW99WzWBivRckHba', NULL, '2022-07-07 13:41:29', '2022-07-07 13:41:29', 1, '0', NULL, 'Collegito-igo89a', 'colleicon.png', NULL, NULL, 1, NULL, 0, 22, NULL, NULL, NULL, 0, 'cVouAdjEtkhAp99KuAtg5H:APA91bHygmAOGUTwA96mJSkdUNCUi2ZfcPuZP0s4ciznr07TeO0AM7kOHWPs696MX-L44EuMxl15yUq6BTmVBUc6N_LCp7BMlmLoBC5LpeX-ytR6CmRYD_9JM145KX5jJaYyJHPpDFCs', NULL, 1, NULL, NULL, 2, 0, 0),
(149, '', 'hxjdjdjdj@hotmail.com', NULL, '$2y$10$uFCpF.xEkT9AXGqp0NNM4OobI26WU8GH./YByV5iEpabKB03yCLrW', NULL, '2022-07-07 14:24:33', '2022-07-07 14:24:33', 1, '0', NULL, 'Collegita-iyb84c', 'colleicon.png', NULL, NULL, 2, NULL, 0, 21, NULL, NULL, NULL, 0, 'd-PqurXnj088qRhL9DPMyN:APA91bH11uCHDxUvVaVmh0gJtgidYXtcKss1RBQKkexqElsWNkS5WEcVst3rv-yLw_HTrOCPiEtib5lGXX7yL9zR3-ZM_CxMRQawhrAzJ7fb5bJyeqcE8SIL3OJHA_yt1KrJQQZaBgC5', NULL, 1, NULL, NULL, 2, 0, 0),
(150, '', 'dhshhd@hotmail.com', NULL, '$2y$10$99PlVFJj1vYOn03bV2/QZu6ZctzomPccWdl2.dTDjpnPF7A9vo1km', NULL, '2022-07-08 10:01:59', '2022-07-08 10:01:59', 1, '0', NULL, 'Collegito-jvg2r5', 'colleicon.png', NULL, NULL, 1, NULL, 0, 19, NULL, NULL, NULL, 0, 'e8JuHqYF708knIvg3f0v8k:APA91bFXic-21MqJfP-LEHSrjJpZdkKdB8pJv3TVi21ZihQiWhz0RBgAmzcqNHgp1dRhjDUvtxrLFDN3gfZDKQ5QTCbcnI39tGI56XiXJ8Jf6CRucn5nZ1mc5vOZAXTgUIOLChHzUcnI', NULL, 1, NULL, NULL, 2, 0, 0),
(151, '', 'swap@getnada.com', NULL, '$2y$10$5MbQWGBKkHI4mRzUgIi2KOGef1Hd1VoEOYtk9J7cp9Gi.3K.l/eT6', NULL, '2022-07-12 05:33:46', '2022-07-15 12:00:19', 1, '0', NULL, 'Collegito-f04ups', 'colleicon.png', '192.168.1.128', NULL, 1, NULL, 0, 16, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(152, '', 'hshdhfhf@hotmail.com', NULL, '$2y$10$F.9uP55Y5o4/KkRVTRh2luOCBqUk2EetXGs3mJvoSD9wsUajt2UEi', NULL, '2022-07-12 10:33:06', '2022-07-12 10:33:06', 1, '0', NULL, 'Collegita-c6nky7', 'colleicon.png', NULL, NULL, 2, NULL, 0, 21, NULL, NULL, NULL, 0, 'c2qvDzIBOEdwhayjKK7mgN:APA91bEM6UDxrswhXDOeUa7LiI00UBgamcibdSkkbs-z7Uo1INqVICBLzGePX7s08v4NbqRlT8Wz7oUxxzubpZHlvGjWu0yaW0oO1Sl3fCcTGaqWznCkuR0-lSXk6jhsBRVqg3nDt6V7', NULL, 1, NULL, NULL, 2, 0, 0),
(153, '', 'hshehhd@hotmail.com', NULL, '$2y$10$w24AQakU0p0qpAS5BNiIb.OnE0HDZ.PijggJh.W82QyCPBvpAUfRC', NULL, '2022-07-12 12:38:51', '2022-07-12 12:38:51', 1, '0', NULL, 'Collegito-03qmpk', 'colleicon.png', NULL, NULL, 1, NULL, 0, 20, NULL, NULL, NULL, 0, 'cAvqsYKHhk19nF9oKyosMf:APA91bEwLHWtalRDSZOXwJCQDfPCfWc0g_3Yyswzz4XY0PiAP7w81GGgBDCfpecvwYf1gJZIixa6nfQb0wjMnO7boiopVJjjWMHKhCdKzYS1ulRnp4Rl80qec1H0-OHK6WnQoAkPOcq0', NULL, 1, NULL, NULL, 2, 0, 0);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `status`, `is_delete`, `nickname`, `systemNickname`, `profile`, `ip`, `university`, `gender`, `color`, `trusted`, `age`, `provider`, `provider_id`, `otp`, `device_type`, `device_token`, `colorpicker`, `login_type`, `followers`, `following`, `role`, `mic_access`, `message_access`) VALUES
(154, '', 'ajabsa@hotmail.com', NULL, '$2y$10$O2uLIqP2PFAy3A2s0o3ZGee5BLmpcJaugsRQBPkzQc57e/hwsi8Aq', NULL, '2022-07-13 14:11:14', '2022-07-13 14:11:14', 1, '0', NULL, 'Collegita-cx5lj4', 'colleicon.png', NULL, NULL, 2, NULL, 0, 19, NULL, NULL, NULL, 0, 'daxSq0vcpEbHoqEYTeHX_0:APA91bEDP47wTVgyffBFgf9d0WiCPeeBhiFEJchIKPvs6z89EOqwVSfxgcJXhOm5SB7iEUBTsWwK63dtA8RkY1Cuv84oC6qUM1pUbp4pBfv_tunhmbQ2o94X0qryeZWBqI38pSyxsMvx', NULL, 1, NULL, NULL, 2, 0, 0),
(155, '', 'Hdhehdha@hotmail.com', NULL, '$2y$10$X.QgxmMKbnEIZonsLUXUwOhfTFWRVjxvtHYHIO.da7c1R/5wlccJS', NULL, '2022-07-15 11:58:38', '2022-07-15 12:18:50', 1, '0', NULL, 'Collegita-qm8wh4', 'colleicon.png', '192.168.0.121', NULL, 2, NULL, 0, 21, NULL, NULL, NULL, 0, 'fYWfwKCAoEshgoooEEShKd:APA91bEi9aFssMnje0yK0kgLbHBTBMUvP8MGAfaXB94WFtuECY2foM_Zxl2rorRvqg-cUufV2sEamTlxzJSlYpfUdywuxDrVh9Baa3uqWfuATH8-MosTz4PytoIQTz36FgcKX350lOLd', NULL, 1, NULL, NULL, 2, 0, 0),
(156, '', 'aditya11@getnada.com', NULL, '$2y$10$JCxTPCjG4zNesobSRuITr.UuzCszM4tiabAP3SLEwkAvk8MRqdTl2', NULL, '2022-07-15 12:01:24', '2022-07-15 12:01:38', 1, '0', NULL, 'Collegito-dltz30', 'colleicon.png', NULL, NULL, 1, NULL, 0, 17, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(157, '', 'aditya1@getnada.com', NULL, '$2y$10$YPPr3ARRr8K8EKu.3f0yE.7tsMcxObOCBUmR6zDaEJH4.zy7RCWBa', NULL, '2022-07-15 12:02:34', '2022-07-20 05:59:31', 1, '0', NULL, 'Collegito-of79ut', 'colleicon.png', NULL, NULL, 1, NULL, 0, 18, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(158, '', 'Hdhehdha22@hotmail.com', NULL, '$2y$10$X8qYhRQd72ucrHS92WxnR.3HdYkfYhkUxHlwwnSnhnUdVWCdYWrhi', NULL, '2022-07-15 12:16:56', '2022-07-15 12:18:31', 1, '0', NULL, 'Collegito-6hjq4z', 'colleicon.png', NULL, NULL, 1, NULL, 0, 20, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(159, '', 'bhhdddfd@hotmail.com', NULL, '$2y$10$6hJhKHtgROgN23nDxBs51uV1e5FrFABL5yKw131LRzD1ZrVWH7lg2', NULL, '2022-07-19 14:01:25', '2022-07-19 14:01:25', 1, '0', NULL, 'Collegita-6o7rnf', 'colleicon.png', NULL, NULL, 2, NULL, 0, 22, NULL, NULL, NULL, 0, 'fk7bRppMwEvRgqQjqD1ThO:APA91bFigqcuX5VLhtkq1_DwFx-9lXZzgWy59E0fyV49zIHsj9jyk-Rul9Pa3hbo5DS3zYsmTOMvSYtUN7mCrnuWqGud1XA1kI7HISqaTYkCBnRJDnwGhdidxyLGscSeF_9Kp5IKLl6z', NULL, 1, NULL, NULL, 2, 0, 0),
(160, '', 'aditya12@getnada.com', NULL, '$2y$10$Bnm2AmoMMe26T5gWBNjJNu6tBx5w.kxpFWPjvqWre6zjOIzuqn88W', NULL, '2022-07-21 05:58:57', '2022-08-29 11:38:55', 1, '0', NULL, 'Collegito-1g7vxf', 'colleicon.png', '192.168.1.1', NULL, 1, NULL, 0, 16, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(161, '', 'hdhdheehd@hotmail.com', NULL, '$2y$10$1/DrsnYnm5OObY6hziw5wOEG73GtWYI1/NyERgVSGtMLSL4MWpPKK', NULL, '2022-07-21 20:57:25', '2022-07-21 20:57:25', 1, '0', NULL, 'Collegito-4bt8ng', 'colleicon.png', NULL, NULL, 1, NULL, 0, 17, NULL, NULL, NULL, 0, 'fjZJhqIjTDaEdATd9amMWX:APA91bG9cVxqoPGjBN1wRaFD9NlK99wdZ2WxoCALqDcUyZhTzvbvDryA_uCcVYs0RmxdEQBbJ0m_QLetjiimG2NLbPmPx2FmQUskDsy6MnPCXZpAk8ZGm9aIG31TX7qM62ISuSTmLU6T', NULL, 1, NULL, NULL, 2, 0, 0),
(162, '', 'tyyyy6@hotmail.com', NULL, '$2y$10$oCKOT4i2Jw61abEuFi5JPOA6RLbU19U/03Sj1TL1voXmSUkuE5dtu', NULL, '2022-07-22 16:40:01', '2022-07-22 16:40:01', 1, '0', NULL, 'Collegita-ykf9u6', 'colleicon.png', NULL, NULL, 2, NULL, 0, 17, NULL, NULL, NULL, 0, 'eixBHcotQduoGfBSn4-015:APA91bHCboNWBZotJGQMfWcyD1oNfFC2jU3LXANn8u-baNMSGlmXeCvoHNGMcGhGqimase-EeSysO3jPsGQsoJU5yNendgtztVkmyWlKUztb3-e4MMjSKBMM6tJIHpW_VMhhoaFtRU4b', NULL, 1, NULL, NULL, 2, 0, 0),
(163, '', 'lettest@getnada.com', NULL, '$2y$10$KJ9zwR7iohAai72MQC0lFOsOo/w2f7AFYDJ.DjSeJp8qqFi/0NDty', NULL, '2022-07-25 06:54:26', '2022-07-25 06:54:26', 1, '0', NULL, 'Collegito-f2kp1i', 'colleicon.png', NULL, NULL, 1, NULL, 0, 53, NULL, NULL, NULL, 0, 'dgx8rlmTSmqoZ92mBNRY4p:APA91bGk_oY85BbFiMuBGxjfy1zyLvKx6K6PbA9eV2Ttr_WMoSOSSUqwJ3elEjhMcoSCpgcrqxp23CR5XcXswir0-SUlEXRamrKLpcRmbFZ0FG0QpdN_sQLw7UJG3ERW6Rr3T0BfPmtA', NULL, 1, NULL, NULL, 2, 0, 0),
(164, '', 'ududhhdyd@hotmail.com', NULL, '$2y$10$axxOoEWnL5nquklMRss7MuQ8CK7w4gMTAWTczN4QRGtzlJuyGCS92', NULL, '2022-07-25 11:34:40', '2022-07-25 11:34:40', 1, '0', NULL, 'Collegita-z7ju8g', 'colleicon.png', NULL, NULL, 2, NULL, 0, 20, NULL, NULL, NULL, 0, 'dP93U6-qRVO7LkdXzj7y0Z:APA91bHoXCLMcJ6Nr7PFjj1BNa2FVaFVq1gQGvW13tN_L7CjKDmWMP2aWlelEhn15OMvjL1BJDovlSHw1NVIEgge9BXM7LUhCJgbAWtLKAtI6Uyt45fTtEoSz78Dho04ZhMgLnVJm98D', NULL, 1, NULL, NULL, 2, 0, 0),
(165, '', 'dhdhdbhd@hotmail.com', NULL, '$2y$10$auWVyHRbPPihe.udXAt2Iui3wAkh3XDAJWhujigzMAXtYrOyZZYOC', NULL, '2022-07-26 04:14:54', '2022-07-26 04:14:54', 1, '0', NULL, 'Collegito-qsl79i', 'colleicon.png', NULL, NULL, 1, NULL, 0, 19, NULL, NULL, NULL, 0, 'exioXDUaS92XtdkqePCv4W:APA91bHrjxOsyb6iVGzkOtykSYDym3kDgiAALwZ6k6SY1fCFZkGhjI3Cu4mEXpHAjzGrgmMnBxyg5arVafdb71072ZVvDOzu-6ks5kFA5ZvGGEjc_SSLxUcDqn3TBnc2q7VjUsfnJU1Y', NULL, 1, NULL, NULL, 2, 0, 0),
(166, '', 'jdijeje@hotmail.com', NULL, '$2y$10$Dd4Yb6YqiukwAz/ZLHM4x.lHGEXlnSc6k49HGQHGbFhs5AKkFlZKW', NULL, '2022-07-26 08:20:36', '2022-07-26 08:20:36', 1, '0', NULL, 'Collegita-r7scp9', 'colleicon.png', NULL, NULL, 2, NULL, 0, 20, NULL, NULL, NULL, 0, 'dHxNnh1YRtKHw3H85gg6nL:APA91bFM4dtCYCaDeLCUUttVb51F3Vr3KfYVASWE8zBt4FZHHutNCs-eQvg4XswoCG60l9fcMOsi1TkP9yMOtf2-Xl7OujrKlGfn19F6v3kDII3CsXTXvDaJqiOEMB3S3enNSQbugRNk', NULL, 1, NULL, NULL, 2, 0, 0),
(167, '', 'dhhrhfhd@hotmail.com', NULL, '$2y$10$YClzxtmmzyrMcnujRLQqmu39nlwOs9L8VKCRspMUaPSVa2gNA3ta6', NULL, '2022-07-26 09:58:43', '2022-07-26 09:58:43', 1, '0', NULL, 'Collegita-a2ws3i', 'colleicon.png', NULL, NULL, 2, NULL, 0, 22, NULL, NULL, NULL, 0, 'fSD0a_OSQhOkazZw8VXVbE:APA91bGPLQrao-BwxChxnZopnxt-vhRY94I3QXb5DJtz89saIMTd8xXodVDTTn9NwfbGFTOYeoUQFfP-Lm-ItNCMgb8BZQ2qXJxq0Mw3oiH5Tx1ZupJhqdJZNopbKTXACmVnTVuKrSa6', NULL, 1, NULL, NULL, 2, 0, 0),
(168, '', 'jdjdjhs@hotmail.com', NULL, '$2y$10$uJ63FmEjBjOni8r.KJK3FuxSjc6E2EyZZd24Y0JR.Hi4DPG3Rtegy', NULL, '2022-07-26 10:51:16', '2022-08-04 12:57:08', 1, '0', NULL, 'Collegito-8wqr6b', 'colleicon.png', NULL, NULL, 1, NULL, 0, 22, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(169, '', 'nsjjsjs@hotmail.com', NULL, '$2y$10$sHN41uLVPjv5P6aK1toWn.WPW5oFtj8WIjmvgrddNsuoxynrzai1m', NULL, '2022-08-04 13:03:33', '2022-08-04 13:10:22', 1, '0', NULL, 'Collegito-rc4uq3', 'colleicon.png', NULL, NULL, 1, NULL, 0, 17, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(170, '', 'hshshjd@hotmail.com', NULL, '$2y$10$jKLUggaI.2H2Qy/SZ4hW0unr9F.gy0GPPQOubmig.ycCnNqCW37h6', NULL, '2022-08-04 13:19:08', '2022-08-04 13:19:08', 1, '0', NULL, 'Collegito-hu0yj6', 'male.png', '192.168.1.1', NULL, 1, NULL, 0, 21, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(171, '', 'jsjsjshjs@hotmail.com', NULL, '$2y$10$0/i0ftCVjbSzk6EzHh6E6eMcWEcfggBnw/tyTyMqvM0eN8RZEgPI2', NULL, '2022-08-04 13:55:18', '2022-08-04 13:55:18', 1, '0', NULL, 'Collegita-0ietl1', 'colleicon.png', NULL, NULL, 2, NULL, 0, 17, NULL, NULL, NULL, 0, 'c9nRmYM8P03jsgxW8iBae0:APA91bGlTMLkuT5NpGzRivDbty2_ZfO5Xu-o5GCQ0aB1M-4sK6oTXJ993xYbOT-QPxc9yx1z2xTesF0qG-HLF6FHebw-PXjdDz8be4IekTllQmkdY0aegAkRL8StlA4kXVBfPLkMen4f', NULL, 1, NULL, NULL, 2, 0, 0),
(172, '', 'dee1@getnada.com', NULL, '$2y$10$ybQWDQhhxJ7oCS4CGTphw.ZMJzvF999yr7uVKBjml/mwz6S5z5MYC', NULL, '2022-08-05 09:23:02', '2022-08-05 09:41:26', 1, '0', NULL, 'Collegito-o6nma3', 'colleicon.png', NULL, NULL, 1, NULL, 0, 16, NULL, NULL, NULL, 0, '', NULL, 1, NULL, NULL, 2, 0, 0),
(173, '', 'hshshehhd@hotmail.com', NULL, '$2y$10$pFf/TiBZUU.rf/yBWqc9meQkwP8A9rdiwJOfW/3mhX9QJrwKKuu6e', NULL, '2022-08-05 11:08:31', '2022-08-05 11:08:31', 1, '0', NULL, 'Collegita-p1rt0s', 'female.png', '192.168.1.1', NULL, 2, NULL, 0, 21, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(174, '', 'hehehehhdss@hotmail.com', NULL, '$2y$10$9AI1DeFLPT0ZCdVEpNa0T.3IM9A3u2rJ0HS7muoT851GWDS2hWiN.', NULL, '2022-08-05 15:33:08', '2022-08-05 15:33:08', 1, '0', NULL, 'Collegito-f7ed5z', 'male.png', '192.168.1.1', NULL, 1, NULL, 0, 20, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(175, '', 'deep5@getnada.com', NULL, '$2y$10$glxwFi9mEiMx7c0bCMbaxO2UqOMpfRMx5/zb0nXkA07EQ1O5/rVcm', NULL, '2022-08-08 06:40:12', '2022-08-08 06:40:12', 1, '0', NULL, 'Collegito-g2tzu1', 'colleicon.png', NULL, NULL, 1, NULL, 0, 16, NULL, NULL, NULL, 0, 'fuzG16QPV0rtsNqqWpcPtX:APA91bF39ifN6VrXAVVhdJ9vJkbC5UYTaNoliQD_PmC___9_klPp7Kt_sz6kn4zwr9LoZd3v1HSTMm1pHjQyQUMYDkLXez30JDoaf95YU0gsq9OYADt8X0v4eMlcuhLS6i0rw_TZl-M6', NULL, 1, NULL, NULL, 2, 0, 0),
(176, '', 'deep6@getnada.com', NULL, '$2y$10$QHYzzwQrkBKzD1MBjwo70Oyzb/xEV9eMNnNCqjC/ob4.ZxpUbqdtm', NULL, '2022-08-08 07:05:04', '2022-08-08 07:05:04', 1, '0', NULL, 'Collegito-i1ap3o', 'male.png', '192.168.1.1', NULL, 1, NULL, 0, 19, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(177, '', 'jdjhshdhsuus@hotmail.com', NULL, '$2y$10$Ykak8zKYHqVGAFjKdnEwru5Kim9SuGbjtT677IM82zUtax15elH1q', NULL, '2022-08-08 11:56:43', '2022-08-08 11:56:43', 1, '0', NULL, 'Collegita-ehz85c', 'female.png', '192.168.1.1', NULL, 2, NULL, 0, 35, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(178, '', 'frontuser@getnada.com', NULL, '$2y$10$C4X1mme/QCWZWWCRYf7N3OnLtbBHS/O.QlY8Z1OVO/O1XXHbb3Ivy', NULL, '2022-08-18 07:38:03', '2022-08-18 07:38:03', 1, '0', NULL, 'Collegito-7hc0lb', 'male.png', '192.168.1.1', NULL, 1, NULL, 0, 24, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(179, '', 'res@getnada.com', NULL, '$2y$10$WANDmSjr/04TkBJ6pwFsvOs3wlgAzgkyOkP8gFxjKQzZznfDon.4m', NULL, '2022-08-19 04:37:52', '2022-08-19 04:54:44', 1, '0', NULL, 'Collegito-61vume', 'male.png', '192.168.1.1', NULL, 1, NULL, 0, 33, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(180, '', 'hsudhdhhdud@hotmail.com', NULL, '$2y$10$gLcqUz8szxgzuk47.I9gR.9je4B93Q/HHojhPYI3IkTSHauTJgvbG', NULL, '2022-08-21 04:19:56', '2022-08-21 04:19:56', 1, '0', NULL, 'Collegito-o3i6gf', 'male.png', '192.168.1.1', NULL, 1, NULL, 0, 21, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(181, '', 'hsjdhdhhdhd@hotmail.com', NULL, '$2y$10$n8p1iQw2NvoisDnG2ryiOe/wHhWUbOGip.134UZ4JMkBcoCgLn4U.', NULL, '2022-08-24 04:14:53', '2022-08-24 04:14:53', 1, '0', NULL, 'Collegito-7ik6fn', 'male.png', '192.168.1.1', NULL, 1, NULL, 0, 23, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0),
(182, '', 'aditya112@getnada.com', NULL, '$2y$10$5IzoFtCJeHeG93TAt5upmOKL9U/WjVzEIER6/zqolS1vmoNep03VG', NULL, '2022-08-29 10:02:58', '2022-08-29 10:02:58', 1, '0', NULL, 'Collegito-1v6wir', 'male.png', '192.168.1.1', NULL, 1, NULL, 0, 19, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_followers`
--

CREATE TABLE `user_followers` (
  `id` int(11) NOT NULL,
  `following` int(11) NOT NULL,
  `follower` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_followers`
--

INSERT INTO `user_followers` (`id`, `following`, `follower`) VALUES
(4, 1, 2),
(5, 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `abuse_words`
--
ALTER TABLE `abuse_words`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `channel_joined_users`
--
ALTER TABLE `channel_joined_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_pages`
--
ALTER TABLE `cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_contact`
--
ALTER TABLE `customer_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_settings`
--
ALTER TABLE `global_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `high_schools`
--
ALTER TABLE `high_schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `introductions`
--
ALTER TABLE `introductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professor_profiles`
--
ALTER TABLE `professor_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professor_ratings`
--
ALTER TABLE `professor_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_messaging`
--
ALTER TABLE `social_messaging`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `story_reports`
--
ALTER TABLE `story_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_admins`
--
ALTER TABLE `sub_admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_admins_email_unique` (`email`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_profiles`
--
ALTER TABLE `teacher_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_ratings`
--
ALTER TABLE `teacher_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `university_ratings`
--
ALTER TABLE `university_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_followers`
--
ALTER TABLE `user_followers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `abuse_words`
--
ALTER TABLE `abuse_words`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `channel_joined_users`
--
ALTER TABLE `channel_joined_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cms_pages`
--
ALTER TABLE `cms_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `customer_contact`
--
ALTER TABLE `customer_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `global_settings`
--
ALTER TABLE `global_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `high_schools`
--
ALTER TABLE `high_schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `introductions`
--
ALTER TABLE `introductions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT for table `professor_profiles`
--
ALTER TABLE `professor_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23963;

--
-- AUTO_INCREMENT for table `professor_ratings`
--
ALTER TABLE `professor_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=546;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `social_messaging`
--
ALTER TABLE `social_messaging`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `story_reports`
--
ALTER TABLE `story_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sub_admins`
--
ALTER TABLE `sub_admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;

--
-- AUTO_INCREMENT for table `teacher_profiles`
--
ALTER TABLE `teacher_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `teacher_ratings`
--
ALTER TABLE `teacher_ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `universities`
--
ALTER TABLE `universities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3804;

--
-- AUTO_INCREMENT for table `university_ratings`
--
ALTER TABLE `university_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `user_followers`
--
ALTER TABLE `user_followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
