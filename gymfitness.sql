-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 28, 2023 at 12:46 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gymfitness`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://es.wordpress.org/', '', '2023-03-20 18:53:34', '2023-03-20 21:53:34', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visitá en el escritorio la pantalla de comentarios.\nLos avatares de los comentaristas provienen de <a href=\"https://es.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/gymfitness', 'yes'),
(2, 'home', 'http://localhost/gymfitness', 'yes'),
(3, 'blogname', 'Gym Fitness', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nadinperez6@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:112:{s:20:\"gymfitness_clases/?$\";s:37:\"index.php?post_type=gymfitness_clases\";s:50:\"gymfitness_clases/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?post_type=gymfitness_clases&feed=$matches[1]\";s:45:\"gymfitness_clases/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?post_type=gymfitness_clases&feed=$matches[1]\";s:37:\"gymfitness_clases/page/([0-9]{1,})/?$\";s:55:\"index.php?post_type=gymfitness_clases&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:43:\"gymfitness_clases/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"gymfitness_clases/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"gymfitness_clases/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"gymfitness_clases/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"gymfitness_clases/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"gymfitness_clases/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"gymfitness_clases/(.+?)/embed/?$\";s:50:\"index.php?gymfitness_clases=$matches[1]&embed=true\";s:36:\"gymfitness_clases/(.+?)/trackback/?$\";s:44:\"index.php?gymfitness_clases=$matches[1]&tb=1\";s:56:\"gymfitness_clases/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?gymfitness_clases=$matches[1]&feed=$matches[2]\";s:51:\"gymfitness_clases/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?gymfitness_clases=$matches[1]&feed=$matches[2]\";s:44:\"gymfitness_clases/(.+?)/page/?([0-9]{1,})/?$\";s:57:\"index.php?gymfitness_clases=$matches[1]&paged=$matches[2]\";s:51:\"gymfitness_clases/(.+?)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?gymfitness_clases=$matches[1]&cpage=$matches[2]\";s:40:\"gymfitness_clases/(.+?)(?:/([0-9]+))?/?$\";s:56:\"index.php?gymfitness_clases=$matches[1]&page=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:33:\"acf-openstreetmap-field/index.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:39:\"disable-gutenberg/disable-gutenberg.php\";i:4;s:47:\"gymfitness-post-types/gymfitness_post_types.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'gymfitness', 'yes'),
(41, 'stylesheet', 'gymfitness', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:33:\"acf-openstreetmap-field/index.php\";a:2:{i:0;s:33:\"ACFFieldOpenstreetmap\\Core\\Plugin\";i:1;s:9:\"uninstall\";}}', 'no'),
(80, 'timezone_string', 'America/Argentina/Buenos_Aires', 'yes'),
(81, 'page_for_posts', '19', 'yes'),
(82, 'page_on_front', '6', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1694901210', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'es_AR', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:160:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Entradas recientes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentarios recientes</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorías</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar_1\";a:0:{}s:9:\"sidebar_2\";a:1:{i:0;s:19:\"gymfitness_widget-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:7:{i:1679961215;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1679997215;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1679997238;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1680040414;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1680040438;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1680040440;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(125, 'theme_mods_twentytwentythree', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1679359881;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(130, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:28:\"Falló la verificación SSL.\";}}', 'yes'),
(152, 'can_compress_scripts', '1', 'no'),
(163, 'finished_updating_comment_type', '1', 'yes'),
(200, 'current_theme', 'Gym Fitness', 'yes'),
(201, 'theme_mods_gymfitness', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:14:\"menu-principal\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1679430846;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(202, 'theme_switched', '', 'yes'),
(204, 'theme_mods_twentytwentyone', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1679430849;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(240, 'recently_activated', 'a:1:{s:33:\"classic-editor/classic-editor.php\";i:1679431627;}', 'yes'),
(253, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(328, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":6,\"critical\":0}', 'yes'),
(335, 'recovery_mode_email_last_sent', '1679436285', 'yes'),
(382, 'acf_version', '6.0.7', 'yes'),
(439, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(497, 'new_admin_email', 'nadinperez6@gmail.com', 'yes'),
(528, 'widget_gymfitness_widget', 'a:2:{i:2;a:1:{s:8:\"cantidad\";s:1:\"3\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(625, 'category_children', 'a:0:{}', 'yes'),
(717, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_AR/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"es_AR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_AR/wordpress-6.1.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1679954539;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(719, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1679952453;s:7:\"checked\";a:1:{s:10:\"gymfitness\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:10:\"gymfitness\";a:6:{s:5:\"theme\";s:10:\"gymfitness\";s:11:\"new_version\";s:3:\"0.2\";s:3:\"url\";s:40:\"https://wordpress.org/themes/gymfitness/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/gymfitness.0.2.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}}', 'no'),
(720, 'wpcf7', 'a:3:{s:7:\"version\";s:7:\"5.7.5.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1679805203;s:7:\"version\";s:7:\"5.7.5.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}s:10:\"sendinblue\";a:1:{s:7:\"api_key\";s:89:\"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\";}}', 'yes'),
(733, 'secret_key', '06J9o.+LV&W2{.{f@6X`zL,=5P8%ouh5K!#zSFgZ+%FBz(b~yQY*OCLozrtEP#cF', 'no'),
(745, 'acf_osm_provider_tokens', 'a:0:{}', 'no'),
(746, 'acf_osm_providers', 'a:9:{s:13:\"OpenStreetMap\";a:1:{s:8:\"variants\";a:2:{s:2:\"CH\";s:1:\"0\";s:3:\"BZH\";s:1:\"0\";}}s:9:\"FreeMapSK\";s:1:\"0\";s:9:\"BasemapAT\";s:1:\"0\";s:6:\"nlmaps\";s:1:\"0\";s:8:\"NASAGIBS\";s:1:\"0\";s:3:\"NLS\";s:1:\"0\";s:10:\"JusticeMap\";s:1:\"0\";s:16:\"GeoportailFrance\";s:1:\"0\";s:8:\"OneMapSG\";s:1:\"0\";}', 'no'),
(747, 'acf-openstreetmap-field_version', '1.4.3', 'no'),
(912, '_site_transient_timeout_theme_roots', '1679956339', 'no'),
(913, '_site_transient_theme_roots', 'a:1:{s:10:\"gymfitness\";s:7:\"/themes\";}', 'no'),
(914, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1679954540;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.2\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:33:\"acf-openstreetmap-field/index.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/acf-openstreetmap-field\";s:4:\"slug\";s:23:\"acf-openstreetmap-field\";s:6:\"plugin\";s:33:\"acf-openstreetmap-field/index.php\";s:11:\"new_version\";s:5:\"1.4.3\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/acf-openstreetmap-field/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/acf-openstreetmap-field.1.4.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/acf-openstreetmap-field/assets/icon-256x256.png?rev=2117994\";s:2:\"1x\";s:76:\"https://ps.w.org/acf-openstreetmap-field/assets/icon-128x128.png?rev=2117994\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/acf-openstreetmap-field/assets/banner-1544x500.png?rev=2118002\";s:2:\"1x\";s:78:\"https://ps.w.org/acf-openstreetmap-field/assets/banner-772x250.png?rev=2118002\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.8\";}s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.0.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.0.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:7:\"5.7.5.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/contact-form-7.5.7.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:3:\"2.9\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/disable-gutenberg.2.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:7:{s:33:\"acf-openstreetmap-field/index.php\";s:5:\"1.4.3\";s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.0.7\";s:19:\"akismet/akismet.php\";s:5:\"5.0.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:7:\"5.7.5.1\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:3:\"2.9\";s:47:\"gymfitness-post-types/gymfitness_post_types.php\";s:5:\"1.0.0\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(940, '_transient_timeout_global_styles_gymfitness', '1679960427', 'no'),
(941, '_transient_global_styles_gymfitness', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_wp_trash_meta_status', 'publish'),
(4, 2, '_wp_trash_meta_time', '1679361858'),
(5, 2, '_wp_desired_post_slug', 'pagina-ejemplo'),
(6, 6, '_edit_lock', '1679879783:1'),
(7, 7, '_edit_lock', '1679437017:1'),
(8, 9, '_edit_lock', '1679807381:1'),
(9, 12, '_edit_lock', '1679430065:1'),
(10, 13, '_edit_lock', '1679431251:1'),
(11, 15, '_menu_item_type', 'post_type'),
(12, 15, '_menu_item_menu_item_parent', '0'),
(13, 15, '_menu_item_object_id', '6'),
(14, 15, '_menu_item_object', 'page'),
(15, 15, '_menu_item_target', ''),
(16, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(17, 15, '_menu_item_xfn', ''),
(18, 15, '_menu_item_url', ''),
(29, 17, '_menu_item_type', 'post_type'),
(30, 17, '_menu_item_menu_item_parent', '0'),
(31, 17, '_menu_item_object_id', '9'),
(32, 17, '_menu_item_object', 'page'),
(33, 17, '_menu_item_target', ''),
(34, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 17, '_menu_item_xfn', ''),
(36, 17, '_menu_item_url', ''),
(38, 18, '_menu_item_type', 'post_type'),
(39, 18, '_menu_item_menu_item_parent', '0'),
(40, 18, '_menu_item_object_id', '7'),
(41, 18, '_menu_item_object', 'page'),
(42, 18, '_menu_item_target', ''),
(43, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 18, '_menu_item_xfn', ''),
(45, 18, '_menu_item_url', ''),
(47, 13, '_wp_trash_meta_status', 'publish'),
(48, 13, '_wp_trash_meta_time', '1679434433'),
(49, 13, '_wp_desired_post_slug', 'blog'),
(50, 19, '_edit_last', '1'),
(51, 19, '_edit_lock', '1679698590:1'),
(52, 22, '_edit_last', '1'),
(53, 22, '_edit_lock', '1679798310:1'),
(54, 24, '_edit_last', '1'),
(55, 24, '_edit_lock', '1679877039:1'),
(56, 26, '_menu_item_type', 'post_type'),
(57, 26, '_menu_item_menu_item_parent', '0'),
(58, 26, '_menu_item_object_id', '24'),
(59, 26, '_menu_item_object', 'page'),
(60, 26, '_menu_item_target', ''),
(61, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 26, '_menu_item_xfn', ''),
(63, 26, '_menu_item_url', ''),
(65, 27, '_menu_item_type', 'post_type'),
(66, 27, '_menu_item_menu_item_parent', '0'),
(67, 27, '_menu_item_object_id', '22'),
(68, 27, '_menu_item_object', 'page'),
(69, 27, '_menu_item_target', ''),
(70, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 27, '_menu_item_xfn', ''),
(72, 27, '_menu_item_url', ''),
(74, 28, '_menu_item_type', 'post_type'),
(75, 28, '_menu_item_menu_item_parent', '0'),
(76, 28, '_menu_item_object_id', '19'),
(77, 28, '_menu_item_object', 'page'),
(78, 28, '_menu_item_target', ''),
(79, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 28, '_menu_item_xfn', ''),
(81, 28, '_menu_item_url', ''),
(83, 29, '_wp_attached_file', '2023/03/weight-lifting-1284616_1920.jpg'),
(84, 29, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1279;s:4:\"file\";s:39:\"2023/03/weight-lifting-1284616_1920.jpg\";s:8:\"filesize\";i:343467;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:39:\"weight-lifting-1284616_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14537;}s:5:\"large\";a:5:{s:4:\"file\";s:40:\"weight-lifting-1284616_1920-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:80558;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:39:\"weight-lifting-1284616_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7037;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:39:\"weight-lifting-1284616_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:52610;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:41:\"weight-lifting-1284616_1920-1536x1023.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1023;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:148305;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 7, '_edit_last', '1'),
(86, 7, '_thumbnail_id', '29'),
(87, 7, '_wp_page_template', 'page-contenido-centrado.php'),
(88, 34, '_edit_last', '1'),
(89, 34, '_edit_lock', '1679704612:1'),
(90, 36, '_edit_last', '1'),
(91, 36, '_edit_lock', '1679714267:1'),
(92, 40, '_edit_last', '1'),
(93, 40, '_edit_lock', '1679715717:1'),
(94, 41, '_wp_attached_file', '2023/03/biceps-2945912_640-1.jpg'),
(95, 41, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:640;s:6:\"height\";i:386;s:4:\"file\";s:32:\"2023/03/biceps-2945912_640-1.jpg\";s:8:\"filesize\";i:74100;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:32:\"biceps-2945912_640-1-300x181.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12812;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"biceps-2945912_640-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5862;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.3\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D3300\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"31\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(96, 42, '_wp_attached_file', '2023/03/crossfit-534615_1920-1.jpg'),
(97, 42, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:34:\"2023/03/crossfit-534615_1920-1.jpg\";s:8:\"filesize\";i:366439;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"crossfit-534615_1920-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9438;}s:5:\"large\";a:5:{s:4:\"file\";s:35:\"crossfit-534615_1920-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72157;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"crossfit-534615_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4094;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:34:\"crossfit-534615_1920-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43815;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:36:\"crossfit-534615_1920-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:144265;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(98, 43, '_wp_attached_file', '2023/03/cross-fit-1126999_1920-1.jpg'),
(99, 43, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1283;s:4:\"file\";s:36:\"2023/03/cross-fit-1126999_1920-1.jpg\";s:8:\"filesize\";i:677309;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:36:\"cross-fit-1126999_1920-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17395;}s:5:\"large\";a:5:{s:4:\"file\";s:37:\"cross-fit-1126999_1920-1-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:120906;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:36:\"cross-fit-1126999_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7657;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:36:\"cross-fit-1126999_1920-1-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:76229;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:38:\"cross-fit-1126999_1920-1-1536x1026.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1026;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:240820;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 44, '_wp_attached_file', '2023/03/dumbbell-3324976_1920-1.jpg'),
(101, 44, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:35:\"2023/03/dumbbell-3324976_1920-1.jpg\";s:8:\"filesize\";i:262763;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:35:\"dumbbell-3324976_1920-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11022;}s:5:\"large\";a:5:{s:4:\"file\";s:36:\"dumbbell-3324976_1920-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:60152;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:35:\"dumbbell-3324976_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5765;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:35:\"dumbbell-3324976_1920-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:39316;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:37:\"dumbbell-3324976_1920-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:110398;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:14:\"Canon EOS 100D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"32\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:4:\"0.25\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(102, 45, '_wp_attached_file', '2023/03/exercise-86200_1920-1.jpg'),
(103, 45, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:33:\"2023/03/exercise-86200_1920-1.jpg\";s:8:\"filesize\";i:757201;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:33:\"exercise-86200_1920-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19299;}s:5:\"large\";a:5:{s:4:\"file\";s:34:\"exercise-86200_1920-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:133885;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:33:\"exercise-86200_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8967;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:33:\"exercise-86200_1920-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:83428;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:35:\"exercise-86200_1920-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:268138;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 46, '_wp_attached_file', '2023/03/fitness-375472_1920-1.jpg'),
(105, 46, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1276;s:4:\"file\";s:33:\"2023/03/fitness-375472_1920-1.jpg\";s:8:\"filesize\";i:425750;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:33:\"fitness-375472_1920-1-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16202;}s:5:\"large\";a:5:{s:4:\"file\";s:34:\"fitness-375472_1920-1-1024x681.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:681;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:88629;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:33:\"fitness-375472_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8194;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:33:\"fitness-375472_1920-1-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58479;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:35:\"fitness-375472_1920-1-1536x1021.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1021;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:163399;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(106, 47, '_wp_attached_file', '2023/03/fitness-1677212_1920-1.jpg'),
(107, 47, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:34:\"2023/03/fitness-1677212_1920-1.jpg\";s:8:\"filesize\";i:437456;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"fitness-1677212_1920-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13614;}s:5:\"large\";a:5:{s:4:\"file\";s:35:\"fitness-1677212_1920-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:82556;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"fitness-1677212_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7045;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:34:\"fitness-1677212_1920-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:52511;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:36:\"fitness-1677212_1920-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:159850;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.3\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:22:\"Canon EOS 350D DIGITAL\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"48\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(108, 48, '_wp_attached_file', '2023/03/fitness-1882721_1920-1.jpg'),
(109, 48, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:34:\"2023/03/fitness-1882721_1920-1.jpg\";s:8:\"filesize\";i:557094;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"fitness-1882721_1920-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11488;}s:5:\"large\";a:5:{s:4:\"file\";s:35:\"fitness-1882721_1920-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:112161;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"fitness-1882721_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5503;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:34:\"fitness-1882721_1920-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66362;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:36:\"fitness-1882721_1920-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:225579;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:22:\"Canon EOS 400D DIGITAL\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"125\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:17:\"0.033333333333333\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(110, 49, '_wp_attached_file', '2023/03/fitness-3767884_1920-1.jpg'),
(111, 49, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1279;s:4:\"file\";s:34:\"2023/03/fitness-3767884_1920-1.jpg\";s:8:\"filesize\";i:415854;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"fitness-3767884_1920-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11030;}s:5:\"large\";a:5:{s:4:\"file\";s:35:\"fitness-3767884_1920-1-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:70292;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"fitness-3767884_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5205;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:34:\"fitness-3767884_1920-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:44433;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:36:\"fitness-3767884_1920-1-1536x1023.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1023;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:139835;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D5500\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:17:\"0.033333333333333\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(112, 50, '_wp_attached_file', '2023/03/gym-455164_1920-1.jpg'),
(113, 50, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1327;s:4:\"file\";s:29:\"2023/03/gym-455164_1920-1.jpg\";s:8:\"filesize\";i:391493;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"gym-455164_1920-1-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16099;}s:5:\"large\";a:5:{s:4:\"file\";s:30:\"gym-455164_1920-1-1024x708.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:708;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:100389;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"gym-455164_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8445;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:29:\"gym-455164_1920-1-768x531.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:531;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66203;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:31:\"gym-455164_1920-1-1536x1062.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1062;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:179100;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(114, 51, '_wp_attached_file', '2023/03/gym-457072_1280-1.jpg'),
(115, 51, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:903;s:4:\"file\";s:29:\"2023/03/gym-457072_1280-1.jpg\";s:8:\"filesize\";i:329936;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"gym-457072_1280-1-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16128;}s:5:\"large\";a:5:{s:4:\"file\";s:30:\"gym-457072_1280-1-1024x722.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:722;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:114135;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"gym-457072_1280-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7693;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:29:\"gym-457072_1280-1-768x542.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:542;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:69276;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(116, 52, '_wp_attached_file', '2023/03/gym-526995_1920-1.jpg'),
(117, 52, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:29:\"2023/03/gym-526995_1920-1.jpg\";s:8:\"filesize\";i:628589;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"gym-526995_1920-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17493;}s:5:\"large\";a:5:{s:4:\"file\";s:30:\"gym-526995_1920-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:140694;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"gym-526995_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7926;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:29:\"gym-526995_1920-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:87027;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:31:\"gym-526995_1920-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:270164;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 53, '_wp_attached_file', '2023/03/gym-546138_1920-1.jpg'),
(119, 53, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1285;s:4:\"file\";s:29:\"2023/03/gym-546138_1920-1.jpg\";s:8:\"filesize\";i:565221;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"gym-546138_1920-1-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11264;}s:5:\"large\";a:5:{s:4:\"file\";s:30:\"gym-546138_1920-1-1024x685.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:685;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72833;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"gym-546138_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5706;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:29:\"gym-546138_1920-1-768x514.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:514;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43372;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:31:\"gym-546138_1920-1-1536x1028.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1028;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:170993;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(120, 54, '_wp_attached_file', '2023/03/gym-room-1180062_1920-2.jpg'),
(121, 54, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1272;s:4:\"file\";s:35:\"2023/03/gym-room-1180062_1920-2.jpg\";s:8:\"filesize\";i:560069;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:35:\"gym-room-1180062_1920-2-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15463;}s:5:\"large\";a:5:{s:4:\"file\";s:36:\"gym-room-1180062_1920-2-1024x678.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:678;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:98781;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:35:\"gym-room-1180062_1920-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7385;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:35:\"gym-room-1180062_1920-2-768x509.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:509;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:63518;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:37:\"gym-room-1180062_1920-2-1536x1018.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1018;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:197776;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(122, 55, '_wp_attached_file', '2023/03/home-fitness-equipment-1840858_1920-1.jpg'),
(123, 55, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1275;s:4:\"file\";s:49:\"2023/03/home-fitness-equipment-1840858_1920-1.jpg\";s:8:\"filesize\";i:809004;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:49:\"home-fitness-equipment-1840858_1920-1-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15053;}s:5:\"large\";a:5:{s:4:\"file\";s:50:\"home-fitness-equipment-1840858_1920-1-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:140288;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:49:\"home-fitness-equipment-1840858_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6494;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:49:\"home-fitness-equipment-1840858_1920-1-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:82794;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:51:\"home-fitness-equipment-1840858_1920-1-1536x1020.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1020;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:300377;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D300\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"31\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 56, '_wp_attached_file', '2023/03/kettle-bell-592905_1920-1.jpg'),
(125, 56, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:37:\"2023/03/kettle-bell-592905_1920-1.jpg\";s:8:\"filesize\";i:412116;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:37:\"kettle-bell-592905_1920-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12585;}s:5:\"large\";a:5:{s:4:\"file\";s:38:\"kettle-bell-592905_1920-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:79193;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:37:\"kettle-bell-592905_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6104;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:37:\"kettle-bell-592905_1920-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50938;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:39:\"kettle-bell-592905_1920-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:151478;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 57, '_wp_attached_file', '2023/03/kettlebell-2052793_1280-1.jpg'),
(127, 57, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:942;s:4:\"file\";s:37:\"2023/03/kettlebell-2052793_1280-1.jpg\";s:8:\"filesize\";i:250940;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:37:\"kettlebell-2052793_1280-1-300x221.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9412;}s:5:\"large\";a:5:{s:4:\"file\";s:38:\"kettlebell-2052793_1280-1-1024x754.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:754;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:74128;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:37:\"kettlebell-2052793_1280-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4955;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:37:\"kettlebell-2052793_1280-1-768x565.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:565;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:41066;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(128, 58, '_wp_attached_file', '2023/03/kettlebells-1677217_1920-1.jpg'),
(129, 58, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:38:\"2023/03/kettlebells-1677217_1920-1.jpg\";s:8:\"filesize\";i:369752;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:38:\"kettlebells-1677217_1920-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9797;}s:5:\"large\";a:5:{s:4:\"file\";s:39:\"kettlebells-1677217_1920-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:59830;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:38:\"kettlebells-1677217_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5503;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:38:\"kettlebells-1677217_1920-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:37142;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:40:\"kettlebells-1677217_1920-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:123545;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"7.1\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:22:\"Canon EOS 350D DIGITAL\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"40\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:4:\"0.04\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(130, 59, '_wp_attached_file', '2023/03/machines-91849_1920-1.jpg'),
(131, 59, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1220;s:4:\"file\";s:33:\"2023/03/machines-91849_1920-1.jpg\";s:8:\"filesize\";i:544567;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:33:\"machines-91849_1920-1-300x191.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17191;}s:5:\"large\";a:5:{s:4:\"file\";s:34:\"machines-91849_1920-1-1024x651.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:651;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:123639;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:33:\"machines-91849_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7508;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:33:\"machines-91849_1920-1-768x488.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:488;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:78472;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:34:\"machines-91849_1920-1-1536x976.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:976;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:235359;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 60, '_wp_attached_file', '2023/03/mobility-603558_1280-1.jpg'),
(133, 60, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:34:\"2023/03/mobility-603558_1280-1.jpg\";s:8:\"filesize\";i:299740;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"mobility-603558_1280-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14857;}s:5:\"large\";a:5:{s:4:\"file\";s:35:\"mobility-603558_1280-1-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:119026;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"mobility-603558_1280-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7137;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:34:\"mobility-603558_1280-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72938;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 61, '_wp_attached_file', '2023/03/people-2604149_1920-1.jpg'),
(135, 61, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:33:\"2023/03/people-2604149_1920-1.jpg\";s:8:\"filesize\";i:599302;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:33:\"people-2604149_1920-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12752;}s:5:\"large\";a:5:{s:4:\"file\";s:34:\"people-2604149_1920-1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:104117;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:33:\"people-2604149_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6899;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:33:\"people-2604149_1920-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:63946;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:34:\"people-2604149_1920-1-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:213576;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 62, '_wp_attached_file', '2023/03/sports-1962574_1920-1.jpg'),
(137, 62, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1281;s:4:\"file\";s:33:\"2023/03/sports-1962574_1920-1.jpg\";s:8:\"filesize\";i:437121;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:33:\"sports-1962574_1920-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19620;}s:5:\"large\";a:5:{s:4:\"file\";s:34:\"sports-1962574_1920-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:111042;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:33:\"sports-1962574_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9207;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:33:\"sports-1962574_1920-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:74302;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:35:\"sports-1962574_1920-1-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:195715;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D610\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"560\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 63, '_wp_attached_file', '2023/03/training-828726_1920-1.jpg'),
(139, 63, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1275;s:4:\"file\";s:34:\"2023/03/training-828726_1920-1.jpg\";s:8:\"filesize\";i:246018;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"training-828726_1920-1-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8631;}s:5:\"large\";a:5:{s:4:\"file\";s:35:\"training-828726_1920-1-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:51609;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"training-828726_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3673;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:34:\"training-828726_1920-1-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33608;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:36:\"training-828726_1920-1-1536x1020.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1020;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:98966;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 64, '_wp_attached_file', '2023/03/training-828732_1920-1.jpg'),
(141, 64, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1275;s:4:\"file\";s:34:\"2023/03/training-828732_1920-1.jpg\";s:8:\"filesize\";i:232546;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"training-828732_1920-1-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5527;}s:5:\"large\";a:5:{s:4:\"file\";s:35:\"training-828732_1920-1-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:40445;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"training-828732_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2279;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:34:\"training-828732_1920-1-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24104;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:36:\"training-828732_1920-1-1536x1020.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1020;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:86242;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 65, '_wp_attached_file', '2023/03/training-828741_1920-1.jpg'),
(143, 65, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1274;s:4:\"file\";s:34:\"2023/03/training-828741_1920-1.jpg\";s:8:\"filesize\";i:296696;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"training-828741_1920-1-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7273;}s:5:\"large\";a:5:{s:4:\"file\";s:35:\"training-828741_1920-1-1024x679.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:679;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:51944;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"training-828741_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4413;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:34:\"training-828741_1920-1-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:31141;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:36:\"training-828741_1920-1-1536x1019.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1019;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:111179;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(144, 66, '_wp_attached_file', '2023/03/weight-lifting-1284616_1920-3.jpg'),
(145, 66, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1279;s:4:\"file\";s:41:\"2023/03/weight-lifting-1284616_1920-3.jpg\";s:8:\"filesize\";i:343467;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:41:\"weight-lifting-1284616_1920-3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14537;}s:5:\"large\";a:5:{s:4:\"file\";s:42:\"weight-lifting-1284616_1920-3-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:80558;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:41:\"weight-lifting-1284616_1920-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7037;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:41:\"weight-lifting-1284616_1920-3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:52610;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:43:\"weight-lifting-1284616_1920-3-1536x1023.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1023;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:148305;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(146, 67, '_wp_attached_file', '2023/03/weights-646497_1920-1.jpg'),
(147, 67, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1664;s:4:\"file\";s:33:\"2023/03/weights-646497_1920-1.jpg\";s:8:\"filesize\";i:691278;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:33:\"weights-646497_1920-1-300x260.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16616;}s:5:\"large\";a:5:{s:4:\"file\";s:34:\"weights-646497_1920-1-1024x887.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:887;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:101042;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:33:\"weights-646497_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6956;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:33:\"weights-646497_1920-1-768x666.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:666;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:63633;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:35:\"weights-646497_1920-1-1536x1331.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1331;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:217139;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(148, 68, '_wp_attached_file', '2023/03/weights-652486_1920.jpg'),
(149, 68, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1282;s:4:\"file\";s:31:\"2023/03/weights-652486_1920.jpg\";s:8:\"filesize\";i:336552;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"weights-652486_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10905;}s:5:\"large\";a:5:{s:4:\"file\";s:32:\"weights-652486_1920-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72632;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"weights-652486_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5498;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"weights-652486_1920-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46217;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:33:\"weights-652486_1920-1536x1026.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1026;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:139333;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(150, 69, '_wp_attached_file', '2023/03/weights-652487_1920.jpg'),
(151, 69, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1277;s:6:\"height\";i:1920;s:4:\"file\";s:31:\"2023/03/weights-652487_1920.jpg\";s:8:\"filesize\";i:407656;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"weights-652487_1920-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14911;}s:5:\"large\";a:5:{s:4:\"file\";s:32:\"weights-652487_1920-681x1024.jpg\";s:5:\"width\";i:681;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:93533;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"weights-652487_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7703;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:32:\"weights-652487_1920-768x1155.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1155;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:112495;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:33:\"weights-652487_1920-1022x1536.jpg\";s:5:\"width\";i:1022;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:173350;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 70, '_wp_attached_file', '2023/03/weights-652488_1920.jpg'),
(153, 70, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1279;s:4:\"file\";s:31:\"2023/03/weights-652488_1920.jpg\";s:8:\"filesize\";i:511949;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"weights-652488_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18562;}s:5:\"large\";a:5:{s:4:\"file\";s:32:\"weights-652488_1920-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:123253;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"weights-652488_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8533;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"weights-652488_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:79619;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:33:\"weights-652488_1920-1536x1023.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1023;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:223889;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(154, 71, '_wp_attached_file', '2023/03/weights-817635_1920.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(155, 71, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1184;s:4:\"file\";s:31:\"2023/03/weights-817635_1920.jpg\";s:8:\"filesize\";i:478805;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"weights-817635_1920-300x185.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:185;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15568;}s:5:\"large\";a:5:{s:4:\"file\";s:32:\"weights-817635_1920-1024x631.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:631;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:113125;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"weights-817635_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6869;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"weights-817635_1920-768x474.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72115;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:32:\"weights-817635_1920-1536x947.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:947;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:209809;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(156, 72, '_wp_attached_file', '2023/03/workout-1931107_1920.jpg'),
(157, 72, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:32:\"2023/03/workout-1931107_1920.jpg\";s:8:\"filesize\";i:346677;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:32:\"workout-1931107_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10962;}s:5:\"large\";a:5:{s:4:\"file\";s:33:\"workout-1931107_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:68427;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"workout-1931107_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5429;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:32:\"workout-1931107_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43345;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:34:\"workout-1931107_1920-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:130133;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:14:\"Canon EOS 550D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"10\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:17:\"0.076923076923077\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(158, 73, '_wp_attached_file', '2023/03/yoga-1994667_1920.jpg'),
(159, 73, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1281;s:4:\"file\";s:29:\"2023/03/yoga-1994667_1920.jpg\";s:8:\"filesize\";i:533573;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"yoga-1994667_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16603;}s:5:\"large\";a:5:{s:4:\"file\";s:30:\"yoga-1994667_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:93774;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"yoga-1994667_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8088;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:29:\"yoga-1994667_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:60378;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:31:\"yoga-1994667_1920-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:187078;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.3\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D5200\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"62\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:5:\"0.025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(160, 74, '_wp_attached_file', '2023/03/young-woman-1178123_1280.jpg'),
(161, 74, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:914;s:4:\"file\";s:36:\"2023/03/young-woman-1178123_1280.jpg\";s:8:\"filesize\";i:348209;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:36:\"young-woman-1178123_1280-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20720;}s:5:\"large\";a:5:{s:4:\"file\";s:37:\"young-woman-1178123_1280-1024x731.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:731;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:140439;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:36:\"young-woman-1178123_1280-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8866;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:36:\"young-woman-1178123_1280-768x548.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:548;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:90602;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(162, 40, '_thumbnail_id', '54'),
(163, 40, 'dias_clases', 'Lunes a Viernes'),
(164, 40, '_dias_clases', 'field_641e2eb155dde'),
(165, 40, 'comiezo_clases', '08:00:00'),
(166, 40, '_comiezo_clases', 'field_641e2ed355ddf'),
(167, 40, 'fin_clases', '20:00:00'),
(168, 40, '_fin_clases', 'field_641e2ef555de0'),
(169, 75, '_edit_last', '1'),
(170, 75, '_thumbnail_id', '62'),
(171, 75, 'dias_clases', 'Lunes, Miercoles y Viernes'),
(172, 75, '_dias_clases', 'field_641e2eb155dde'),
(173, 75, 'comiezo_clases', '10:00:00'),
(174, 75, '_comiezo_clases', 'field_641e2ed355ddf'),
(175, 75, 'fin_clases', '10:30:00'),
(176, 75, '_fin_clases', 'field_641e2ef555de0'),
(177, 75, '_edit_lock', '1679720613:1'),
(178, 76, '_edit_last', '1'),
(179, 76, '_edit_lock', '1679699883:1'),
(180, 76, '_thumbnail_id', '57'),
(181, 76, 'dias_clases', 'Martes y Jueves'),
(182, 76, '_dias_clases', 'field_641e2eb155dde'),
(183, 76, 'comiezo_clases', '18:00:00'),
(184, 76, '_comiezo_clases', 'field_641e2ed355ddf'),
(185, 76, 'fin_clases', '20:00:00'),
(186, 76, '_fin_clases', 'field_641e2ef555de0'),
(187, 77, '_edit_last', '1'),
(188, 77, '_edit_lock', '1679699929:1'),
(189, 77, '_thumbnail_id', '68'),
(190, 77, 'dias_clases', 'Martes y Jueves'),
(191, 77, '_dias_clases', 'field_641e2eb155dde'),
(192, 77, 'comiezo_clases', '10:00:00'),
(193, 77, '_comiezo_clases', 'field_641e2ed355ddf'),
(194, 77, 'fin_clases', '11:00:00'),
(195, 77, '_fin_clases', 'field_641e2ef555de0'),
(196, 78, '_edit_last', '1'),
(197, 78, '_edit_lock', '1679699978:1'),
(198, 78, '_thumbnail_id', '71'),
(199, 78, 'dias_clases', 'Lunes, Miercoles y Viernes'),
(200, 78, '_dias_clases', 'field_641e2eb155dde'),
(201, 78, 'comiezo_clases', '16:00:00'),
(202, 78, '_comiezo_clases', 'field_641e2ed355ddf'),
(203, 78, 'fin_clases', '17:00:00'),
(204, 78, '_fin_clases', 'field_641e2ef555de0'),
(205, 79, '_edit_last', '1'),
(206, 79, '_thumbnail_id', '45'),
(207, 79, 'dias_clases', 'Todos los dias'),
(208, 79, '_dias_clases', 'field_641e2eb155dde'),
(209, 79, 'comiezo_clases', '08:00:00'),
(210, 79, '_comiezo_clases', 'field_641e2ed355ddf'),
(211, 79, 'fin_clases', '09:00:00'),
(212, 79, '_fin_clases', 'field_641e2ef555de0'),
(213, 79, '_edit_lock', '1679700021:1'),
(214, 80, '_edit_last', '1'),
(215, 80, '_thumbnail_id', '55'),
(216, 80, 'dias_clases', 'Martes y Jueves'),
(217, 80, '_dias_clases', 'field_641e2eb155dde'),
(218, 80, 'comiezo_clases', '11:00:00'),
(219, 80, '_comiezo_clases', 'field_641e2ed355ddf'),
(220, 80, 'fin_clases', '12:00:00'),
(221, 80, '_fin_clases', 'field_641e2ef555de0'),
(222, 80, '_edit_lock', '1679700393:1'),
(223, 24, '_wp_page_template', 'page-listado-clases.php'),
(224, 34, '_wp_trash_meta_status', 'publish'),
(225, 34, '_wp_trash_meta_time', '1679704971'),
(226, 34, '_wp_desired_post_slug', 'group_641e2d379244e'),
(227, 35, '_wp_trash_meta_status', 'publish'),
(228, 35, '_wp_trash_meta_time', '1679704971'),
(229, 35, '_wp_desired_post_slug', 'field_641e2d3788cdc'),
(230, 15, '_wp_old_date', '2023-03-21'),
(231, 18, '_wp_old_date', '2023-03-21'),
(232, 26, '_wp_old_date', '2023-03-21'),
(233, 27, '_wp_old_date', '2023-03-21'),
(234, 28, '_wp_old_date', '2023-03-21'),
(235, 17, '_wp_old_date', '2023-03-21'),
(236, 85, '_edit_last', '1'),
(239, 85, '_edit_lock', '1679708246:1'),
(240, 85, '_wp_trash_meta_status', 'publish'),
(241, 85, '_wp_trash_meta_time', '1679708398'),
(242, 85, '_wp_desired_post_slug', 'clases'),
(243, 87, '_edit_last', '1'),
(244, 87, '_edit_lock', '1679714936:1'),
(245, 87, '_wp_trash_meta_status', 'draft'),
(246, 87, '_wp_trash_meta_time', '1679714947'),
(247, 87, '_wp_desired_post_slug', ''),
(248, 1, '_edit_lock', '1679716673:1'),
(249, 89, '_edit_last', '1'),
(250, 89, '_edit_lock', '1679716636:1'),
(253, 89, '_wp_trash_meta_status', 'publish'),
(254, 89, '_wp_trash_meta_time', '1679716796'),
(255, 89, '_wp_desired_post_slug', 'kgnjfl'),
(256, 22, '_wp_page_template', 'default'),
(257, 1, '_wp_trash_meta_status', 'publish'),
(258, 1, '_wp_trash_meta_time', '1679801275'),
(259, 1, '_wp_desired_post_slug', 'hola-mundo'),
(260, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(261, 98, '_edit_last', '1'),
(262, 98, '_edit_lock', '1679801198:1'),
(263, 98, '_thumbnail_id', '73'),
(266, 100, '_edit_last', '1'),
(267, 100, '_edit_lock', '1679801256:1'),
(268, 100, '_thumbnail_id', '71'),
(271, 102, '_edit_last', '1'),
(272, 102, '_thumbnail_id', '68'),
(275, 102, '_edit_lock', '1679804109:1'),
(276, 104, '_edit_last', '1'),
(277, 104, '_thumbnail_id', '65'),
(280, 104, '_edit_lock', '1679801329:1'),
(283, 106, '_form', '<label> Tu nombre\n    [text* your-name autocomplete:name] </label>\n\n<label> Tu correo electrónico\n    [email* your-email autocomplete:email] </label>\n\n<label> Asunto\n    [text* your-subject] </label>\n\n<label> Tu mensaje (opcional)\n    [textarea your-message] </label>\n\n[submit \"Enviar\"]'),
(284, 106, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:37:\"[_site_title] <nadinperez6@gmail.com>\";s:4:\"body\";s:182:\"De: [your-name] [your-email]\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(285, 106, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:37:\"[_site_title] <nadinperez6@gmail.com>\";s:4:\"body\";s:129:\"Cuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(286, 106, '_messages', 'a:12:{s:12:\"mail_sent_ok\";s:43:\"Gracias por tu mensaje, ya ha sido enviado.\";s:12:\"mail_sent_ng\";s:73:\"Hubo un error al intentar enviar tu mensaje. Intentalo de nuevo después.\";s:16:\"validation_error\";s:75:\"Uno o más campos tienen un error. Por favor, revisá e intentalo de nuevo.\";s:4:\"spam\";s:73:\"Hubo un error al intentar enviar tu mensaje. Intentalo de nuevo después.\";s:12:\"accept_terms\";s:74:\"Tenés que aceptar los términos y condiciones antes de enviar tu mensaje.\";s:16:\"invalid_required\";s:31:\"Por favor, rellená este campo.\";s:16:\"invalid_too_long\";s:45:\"Este campo tiene una entrada demasiado larga.\";s:17:\"invalid_too_short\";s:45:\"Este campo tiene una entrada demasiado corta.\";s:13:\"upload_failed\";s:46:\"Hubo un error desconocido subiendo el archivo.\";s:24:\"upload_file_type_invalid\";s:52:\"No tenés permisos para subir archivos de este tipo.\";s:21:\"upload_file_too_large\";s:38:\"El archivo subido es demasiado grande.\";s:23:\"upload_failed_php_error\";s:34:\"Hubo un error al subir el archivo.\";}'),
(287, 106, '_additional_settings', ''),
(288, 106, '_locale', 'es_AR'),
(289, 9, '_edit_last', '1'),
(290, 9, '_wp_page_template', 'page-contenido-centrado.php'),
(291, 108, '_edit_last', '1'),
(292, 108, '_edit_lock', '1679806642:1'),
(293, 9, 'ubicacion', 'a:7:{s:3:\"lat\";d:-31.42978;s:3:\"lng\";d:-62.0861757;s:4:\"zoom\";i:16;s:7:\"markers\";a:1:{i:0;a:6:{s:5:\"label\";s:65:\"Bulevard 25 de Mayo 1700, X2400 San Francisco, Córdoba Argentina\";s:13:\"default_label\";s:65:\"Bulevard 25 de Mayo 1700, X2400 San Francisco, Córdoba Argentina\";s:3:\"lat\";d:-31.4294261;s:3:\"lng\";d:-62.0846415;s:7:\"geocode\";a:1:{i:0;a:5:{s:4:\"name\";s:156:\"1700, Bulevard 25 de Mayo, Iturraspe, San Francisco, Municipio de San Francisco, Pedanía Juárez Celman, Departamento San Justo, Córdoba, X2400, Argentina\";s:4:\"html\";s:65:\"Bulevard 25 de Mayo 1700, X2400 San Francisco, Córdoba Argentina\";s:6:\"center\";a:2:{s:3:\"lat\";d:-31.4295017;s:3:\"lng\";d:-62.0848018;}s:4:\"bbox\";a:2:{s:10:\"_southWest\";a:2:{s:3:\"lat\";d:-31.4295017;s:3:\"lng\";d:-62.0848018;}s:10:\"_northEast\";a:2:{s:3:\"lat\";d:-31.4295017;s:3:\"lng\";d:-62.0848018;}}s:10:\"properties\";a:9:{s:8:\"place_id\";i:43632132;s:7:\"licence\";s:71:\"Data © OpenStreetMap contributors, ODbL 1.0. https://osm.org/copyright\";s:8:\"osm_type\";s:4:\"node\";s:6:\"osm_id\";i:3652955230;s:3:\"lat\";s:11:\"-31.4295017\";s:3:\"lon\";s:11:\"-62.0848018\";s:12:\"display_name\";s:156:\"1700, Bulevard 25 de Mayo, Iturraspe, San Francisco, Municipio de San Francisco, Pedanía Juárez Celman, Departamento San Justo, Córdoba, X2400, Argentina\";s:7:\"address\";a:17:{s:12:\"house_number\";s:4:\"1700\";s:4:\"road\";s:19:\"Bulevard 25 de Mayo\";s:6:\"suburb\";s:9:\"Iturraspe\";s:13:\"city_district\";s:9:\"Iturraspe\";s:4:\"town\";s:13:\"San Francisco\";s:12:\"municipality\";s:26:\"Municipio de San Francisco\";s:6:\"county\";s:23:\"Pedanía Juárez Celman\";s:14:\"state_district\";s:22:\"Departamento San Justo\";s:5:\"state\";s:8:\"Córdoba\";s:14:\"ISO3166-2-lvl4\";s:4:\"AR-X\";s:8:\"postcode\";s:5:\"X2400\";s:7:\"country\";s:9:\"Argentina\";s:12:\"country_code\";s:2:\"ar\";s:8:\"building\";s:0:\"\";s:4:\"city\";s:0:\"\";s:7:\"village\";s:0:\"\";s:6:\"hamlet\";s:0:\"\";}s:11:\"boundingbox\";a:4:{i:0;s:11:\"-31.4295517\";i:1;s:11:\"-31.4294517\";i:2;s:11:\"-62.0848518\";i:3;s:11:\"-62.0847518\";}}}}s:4:\"uuid\";s:20:\"marker_641fd17362e25\";}}s:7:\"address\";s:65:\"Bulevard 25 de Mayo 1700, X2400 San Francisco, Córdoba Argentina\";s:6:\"layers\";a:1:{i:0;s:20:\"OpenStreetMap.Mapnik\";}s:7:\"version\";s:5:\"1.4.3\";}'),
(294, 9, '_ubicacion', 'field_641fd0297ac62'),
(295, 110, 'ubicacion', 'a:7:{s:3:\"lat\";d:-31.42978;s:3:\"lng\";d:-62.0861757;s:4:\"zoom\";i:16;s:7:\"markers\";a:1:{i:0;a:6:{s:5:\"label\";s:65:\"Bulevard 25 de Mayo 1700, X2400 San Francisco, Córdoba Argentina\";s:13:\"default_label\";s:65:\"Bulevard 25 de Mayo 1700, X2400 San Francisco, Córdoba Argentina\";s:3:\"lat\";d:-31.4294261;s:3:\"lng\";d:-62.0846415;s:7:\"geocode\";a:1:{i:0;a:5:{s:4:\"name\";s:156:\"1700, Bulevard 25 de Mayo, Iturraspe, San Francisco, Municipio de San Francisco, Pedanía Juárez Celman, Departamento San Justo, Córdoba, X2400, Argentina\";s:4:\"html\";s:65:\"Bulevard 25 de Mayo 1700, X2400 San Francisco, Córdoba Argentina\";s:6:\"center\";a:2:{s:3:\"lat\";d:-31.4295017;s:3:\"lng\";d:-62.0848018;}s:4:\"bbox\";a:2:{s:10:\"_southWest\";a:2:{s:3:\"lat\";d:-31.4295017;s:3:\"lng\";d:-62.0848018;}s:10:\"_northEast\";a:2:{s:3:\"lat\";d:-31.4295017;s:3:\"lng\";d:-62.0848018;}}s:10:\"properties\";a:9:{s:8:\"place_id\";i:43632132;s:7:\"licence\";s:71:\"Data © OpenStreetMap contributors, ODbL 1.0. https://osm.org/copyright\";s:8:\"osm_type\";s:4:\"node\";s:6:\"osm_id\";i:3652955230;s:3:\"lat\";s:11:\"-31.4295017\";s:3:\"lon\";s:11:\"-62.0848018\";s:12:\"display_name\";s:156:\"1700, Bulevard 25 de Mayo, Iturraspe, San Francisco, Municipio de San Francisco, Pedanía Juárez Celman, Departamento San Justo, Córdoba, X2400, Argentina\";s:7:\"address\";a:17:{s:12:\"house_number\";s:4:\"1700\";s:4:\"road\";s:19:\"Bulevard 25 de Mayo\";s:6:\"suburb\";s:9:\"Iturraspe\";s:13:\"city_district\";s:9:\"Iturraspe\";s:4:\"town\";s:13:\"San Francisco\";s:12:\"municipality\";s:26:\"Municipio de San Francisco\";s:6:\"county\";s:23:\"Pedanía Juárez Celman\";s:14:\"state_district\";s:22:\"Departamento San Justo\";s:5:\"state\";s:8:\"Córdoba\";s:14:\"ISO3166-2-lvl4\";s:4:\"AR-X\";s:8:\"postcode\";s:5:\"X2400\";s:7:\"country\";s:9:\"Argentina\";s:12:\"country_code\";s:2:\"ar\";s:8:\"building\";s:0:\"\";s:4:\"city\";s:0:\"\";s:7:\"village\";s:0:\"\";s:6:\"hamlet\";s:0:\"\";}s:11:\"boundingbox\";a:4:{i:0;s:11:\"-31.4295517\";i:1;s:11:\"-31.4294517\";i:2;s:11:\"-62.0848518\";i:3;s:11:\"-62.0847518\";}}}}s:4:\"uuid\";s:20:\"marker_641fd17362e25\";}}s:7:\"address\";s:65:\"Bulevard 25 de Mayo 1700, X2400 San Francisco, Córdoba Argentina\";s:6:\"layers\";a:1:{i:0;s:20:\"OpenStreetMap.Mapnik\";}s:7:\"version\";s:5:\"1.4.3\";}'),
(296, 110, '_ubicacion', 'field_641fd0297ac62'),
(297, 111, 'ubicacion', 'a:7:{s:3:\"lat\";d:-31.42978;s:3:\"lng\";d:-62.0861757;s:4:\"zoom\";i:16;s:7:\"markers\";a:1:{i:0;a:6:{s:5:\"label\";s:65:\"Bulevard 25 de Mayo 1700, X2400 San Francisco, Córdoba Argentina\";s:13:\"default_label\";s:65:\"Bulevard 25 de Mayo 1700, X2400 San Francisco, Córdoba Argentina\";s:3:\"lat\";d:-31.4294261;s:3:\"lng\";d:-62.0846415;s:7:\"geocode\";a:1:{i:0;a:5:{s:4:\"name\";s:156:\"1700, Bulevard 25 de Mayo, Iturraspe, San Francisco, Municipio de San Francisco, Pedanía Juárez Celman, Departamento San Justo, Córdoba, X2400, Argentina\";s:4:\"html\";s:65:\"Bulevard 25 de Mayo 1700, X2400 San Francisco, Córdoba Argentina\";s:6:\"center\";a:2:{s:3:\"lat\";d:-31.4295017;s:3:\"lng\";d:-62.0848018;}s:4:\"bbox\";a:2:{s:10:\"_southWest\";a:2:{s:3:\"lat\";d:-31.4295017;s:3:\"lng\";d:-62.0848018;}s:10:\"_northEast\";a:2:{s:3:\"lat\";d:-31.4295017;s:3:\"lng\";d:-62.0848018;}}s:10:\"properties\";a:9:{s:8:\"place_id\";i:43632132;s:7:\"licence\";s:71:\"Data © OpenStreetMap contributors, ODbL 1.0. https://osm.org/copyright\";s:8:\"osm_type\";s:4:\"node\";s:6:\"osm_id\";i:3652955230;s:3:\"lat\";s:11:\"-31.4295017\";s:3:\"lon\";s:11:\"-62.0848018\";s:12:\"display_name\";s:156:\"1700, Bulevard 25 de Mayo, Iturraspe, San Francisco, Municipio de San Francisco, Pedanía Juárez Celman, Departamento San Justo, Córdoba, X2400, Argentina\";s:7:\"address\";a:17:{s:12:\"house_number\";s:4:\"1700\";s:4:\"road\";s:19:\"Bulevard 25 de Mayo\";s:6:\"suburb\";s:9:\"Iturraspe\";s:13:\"city_district\";s:9:\"Iturraspe\";s:4:\"town\";s:13:\"San Francisco\";s:12:\"municipality\";s:26:\"Municipio de San Francisco\";s:6:\"county\";s:23:\"Pedanía Juárez Celman\";s:14:\"state_district\";s:22:\"Departamento San Justo\";s:5:\"state\";s:8:\"Córdoba\";s:14:\"ISO3166-2-lvl4\";s:4:\"AR-X\";s:8:\"postcode\";s:5:\"X2400\";s:7:\"country\";s:9:\"Argentina\";s:12:\"country_code\";s:2:\"ar\";s:8:\"building\";s:0:\"\";s:4:\"city\";s:0:\"\";s:7:\"village\";s:0:\"\";s:6:\"hamlet\";s:0:\"\";}s:11:\"boundingbox\";a:4:{i:0;s:11:\"-31.4295517\";i:1;s:11:\"-31.4294517\";i:2;s:11:\"-62.0848518\";i:3;s:11:\"-62.0847518\";}}}}s:4:\"uuid\";s:20:\"marker_641fd17362e25\";}}s:7:\"address\";s:65:\"Bulevard 25 de Mayo 1700, X2400 San Francisco, Córdoba Argentina\";s:6:\"layers\";a:1:{i:0;s:20:\"OpenStreetMap.Mapnik\";}s:7:\"version\";s:5:\"1.4.3\";}'),
(298, 111, '_ubicacion', 'field_641fd0297ac62'),
(299, 112, 'ubicacion', 'a:7:{s:3:\"lat\";d:-31.42978;s:3:\"lng\";d:-62.0861757;s:4:\"zoom\";i:16;s:7:\"markers\";a:1:{i:0;a:6:{s:5:\"label\";s:65:\"Bulevard 25 de Mayo 1700, X2400 San Francisco, Córdoba Argentina\";s:13:\"default_label\";s:65:\"Bulevard 25 de Mayo 1700, X2400 San Francisco, Córdoba Argentina\";s:3:\"lat\";d:-31.4294261;s:3:\"lng\";d:-62.0846415;s:7:\"geocode\";a:1:{i:0;a:5:{s:4:\"name\";s:156:\"1700, Bulevard 25 de Mayo, Iturraspe, San Francisco, Municipio de San Francisco, Pedanía Juárez Celman, Departamento San Justo, Córdoba, X2400, Argentina\";s:4:\"html\";s:65:\"Bulevard 25 de Mayo 1700, X2400 San Francisco, Córdoba Argentina\";s:6:\"center\";a:2:{s:3:\"lat\";d:-31.4295017;s:3:\"lng\";d:-62.0848018;}s:4:\"bbox\";a:2:{s:10:\"_southWest\";a:2:{s:3:\"lat\";d:-31.4295017;s:3:\"lng\";d:-62.0848018;}s:10:\"_northEast\";a:2:{s:3:\"lat\";d:-31.4295017;s:3:\"lng\";d:-62.0848018;}}s:10:\"properties\";a:9:{s:8:\"place_id\";i:43632132;s:7:\"licence\";s:71:\"Data © OpenStreetMap contributors, ODbL 1.0. https://osm.org/copyright\";s:8:\"osm_type\";s:4:\"node\";s:6:\"osm_id\";i:3652955230;s:3:\"lat\";s:11:\"-31.4295017\";s:3:\"lon\";s:11:\"-62.0848018\";s:12:\"display_name\";s:156:\"1700, Bulevard 25 de Mayo, Iturraspe, San Francisco, Municipio de San Francisco, Pedanía Juárez Celman, Departamento San Justo, Córdoba, X2400, Argentina\";s:7:\"address\";a:17:{s:12:\"house_number\";s:4:\"1700\";s:4:\"road\";s:19:\"Bulevard 25 de Mayo\";s:6:\"suburb\";s:9:\"Iturraspe\";s:13:\"city_district\";s:9:\"Iturraspe\";s:4:\"town\";s:13:\"San Francisco\";s:12:\"municipality\";s:26:\"Municipio de San Francisco\";s:6:\"county\";s:23:\"Pedanía Juárez Celman\";s:14:\"state_district\";s:22:\"Departamento San Justo\";s:5:\"state\";s:8:\"Córdoba\";s:14:\"ISO3166-2-lvl4\";s:4:\"AR-X\";s:8:\"postcode\";s:5:\"X2400\";s:7:\"country\";s:9:\"Argentina\";s:12:\"country_code\";s:2:\"ar\";s:8:\"building\";s:0:\"\";s:4:\"city\";s:0:\"\";s:7:\"village\";s:0:\"\";s:6:\"hamlet\";s:0:\"\";}s:11:\"boundingbox\";a:4:{i:0;s:11:\"-31.4295517\";i:1;s:11:\"-31.4294517\";i:2;s:11:\"-62.0848518\";i:3;s:11:\"-62.0847518\";}}}}s:4:\"uuid\";s:20:\"marker_641fd17362e25\";}}s:7:\"address\";s:65:\"Bulevard 25 de Mayo 1700, X2400 San Francisco, Córdoba Argentina\";s:6:\"layers\";a:1:{i:0;s:20:\"OpenStreetMap.Mapnik\";}s:7:\"version\";s:5:\"1.4.3\";}'),
(300, 112, '_ubicacion', 'field_641fd0297ac62'),
(301, 113, '_edit_last', '1'),
(302, 113, '_edit_lock', '1679875984:1'),
(303, 6, '_edit_last', '1'),
(304, 6, '_wp_page_template', 'default'),
(305, 6, 'encabezado_bienvenida', 'Bienvenido a nuestro sitio web'),
(306, 6, '_encabezado_bienvenida', 'field_6420bf552866d'),
(307, 6, 'texto_bienvenida', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eleifend vitae nibh quis scelerisque. '),
(308, 6, '_texto_bienvenida', 'field_6420bf842866e'),
(309, 117, 'encabezado_bienvenida', 'Bienvenido a nuestro sitioo web'),
(310, 117, '_encabezado_bienvenida', 'field_6420bf552866d'),
(311, 117, 'texto_bienvenida', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eleifend vitae nibh quis scelerisque. Ut faucibus consequat lorem in tincidunt. In hac habitasse platea dictumst. '),
(312, 117, '_texto_bienvenida', 'field_6420bf842866e'),
(313, 118, 'encabezado_bienvenida', 'Bienvenido a nuestro sitio web'),
(314, 118, '_encabezado_bienvenida', 'field_6420bf552866d'),
(315, 118, 'texto_bienvenida', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eleifend vitae nibh quis scelerisque. Ut faucibus consequat lorem in tincidunt. In hac habitasse platea dictumst. '),
(316, 118, '_texto_bienvenida', 'field_6420bf842866e'),
(317, 119, 'encabezado_bienvenida', 'Bienvenido a nuestro sitio web'),
(318, 119, '_encabezado_bienvenida', 'field_6420bf552866d'),
(319, 119, 'texto_bienvenida', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eleifend vitae nibh quis scelerisque. Ut faucibus consequat lorem in tincidunt. In hac habitasse platea dictumst. Nulla placerat lorem nisi, in ullamcorper elit imperdiet ac. Donec porttitor orci vehicula elementum vestibulum. Vestibulum sodales neque vel augue vulputate, id facilisis mauris accumsan. Etiam vel leo tortor. Fusce in lacinia ex, sed maximus est. Nam ut placerat tortor, in dapibus ante. Sed et mi vel nisl gravida ultrices sit amet eget eros. Ut porttitor maximus libero quis eleifend. Proin et nunc vel magna facilisis lacinia.'),
(320, 119, '_texto_bienvenida', 'field_6420bf842866e'),
(321, 120, 'encabezado_bienvenida', 'Bienvenido a nuestro sitio web'),
(322, 120, '_encabezado_bienvenida', 'field_6420bf552866d'),
(323, 120, 'texto_bienvenida', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eleifend vitae nibh quis scelerisque. '),
(324, 120, '_texto_bienvenida', 'field_6420bf842866e'),
(325, 6, 'area_1_imagen', '45'),
(326, 6, '_area_1_imagen', 'field_6420c5454c755'),
(327, 6, 'area_1_texto', 'Area de Yoga'),
(328, 6, '_area_1_texto', 'field_6420c5794c757'),
(329, 6, 'area_1', ''),
(330, 6, '_area_1', 'field_6420c5174c754'),
(331, 120, 'area_1_imagen', ''),
(332, 120, '_area_1_imagen', 'field_6420c5454c755'),
(333, 120, 'area_1_texto', ''),
(334, 120, '_area_1_texto', 'field_6420c5794c757'),
(335, 120, 'area_1', ''),
(336, 120, '_area_1', 'field_6420c5174c754'),
(337, 6, 'area_2_imagen', '53'),
(338, 6, '_area_2_imagen', 'field_6420c63486b15'),
(339, 6, 'area_2_texto', 'Area de Pesas'),
(340, 6, '_area_2_texto', 'field_6420c63486b16'),
(341, 6, 'area_2', ''),
(342, 6, '_area_2', 'field_6420c63486b14'),
(343, 6, 'area_3_imagen', '62'),
(344, 6, '_area_3_imagen', 'field_6420c62886b12'),
(345, 6, 'area_3_texto', 'Area de Cardio'),
(346, 6, '_area_3_texto', 'field_6420c62886b13'),
(347, 6, 'area_3', ''),
(348, 6, '_area_3', 'field_6420c62886b11'),
(349, 6, 'area_4_imagen', '59'),
(350, 6, '_area_4_imagen', 'field_6420c66da094f'),
(351, 6, 'area_4_texto', 'Area de Aparatos'),
(352, 6, '_area_4_texto', 'field_6420c66da0950'),
(353, 6, 'area_4', ''),
(354, 6, '_area_4', 'field_6420c66da094e'),
(355, 135, 'encabezado_bienvenida', 'Bienvenido a nuestro sitio web'),
(356, 135, '_encabezado_bienvenida', 'field_6420bf552866d'),
(357, 135, 'texto_bienvenida', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eleifend vitae nibh quis scelerisque. '),
(358, 135, '_texto_bienvenida', 'field_6420bf842866e'),
(359, 135, 'area_1_imagen', '45'),
(360, 135, '_area_1_imagen', 'field_6420c5454c755'),
(361, 135, 'area_1_texto', 'Area de Yoga'),
(362, 135, '_area_1_texto', 'field_6420c5794c757'),
(363, 135, 'area_1', ''),
(364, 135, '_area_1', 'field_6420c5174c754'),
(365, 135, 'area_2_imagen', '46'),
(366, 135, '_area_2_imagen', 'field_6420c63486b15'),
(367, 135, 'area_2_texto', 'Area de Pesas'),
(368, 135, '_area_2_texto', 'field_6420c63486b16'),
(369, 135, 'area_2', ''),
(370, 135, '_area_2', 'field_6420c63486b14'),
(371, 135, 'area_3_imagen', '62'),
(372, 135, '_area_3_imagen', 'field_6420c62886b12'),
(373, 135, 'area_3_texto', 'Area de Cardio'),
(374, 135, '_area_3_texto', 'field_6420c62886b13'),
(375, 135, 'area_3', ''),
(376, 135, '_area_3', 'field_6420c62886b11'),
(377, 135, 'area_4_imagen', '59'),
(378, 135, '_area_4_imagen', 'field_6420c66da094f'),
(379, 135, 'area_4_texto', 'Area de Aparatos'),
(380, 135, '_area_4_texto', 'field_6420c66da0950'),
(381, 135, 'area_4', ''),
(382, 135, '_area_4', 'field_6420c66da094e'),
(410, 136, 'encabezado_bienvenida', 'Bienvenido a nuestro sitio web'),
(411, 136, '_encabezado_bienvenida', 'field_6420bf552866d'),
(412, 136, 'texto_bienvenida', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eleifend vitae nibh quis scelerisque. '),
(413, 136, '_texto_bienvenida', 'field_6420bf842866e'),
(414, 136, 'area_1_imagen', '45'),
(415, 136, '_area_1_imagen', 'field_6420c5454c755'),
(416, 136, 'area_1_texto', 'Area de Yoga'),
(417, 136, '_area_1_texto', 'field_6420c5794c757'),
(418, 136, 'area_1', ''),
(419, 136, '_area_1', 'field_6420c5174c754'),
(420, 136, 'area_2_imagen', '46'),
(421, 136, '_area_2_imagen', 'field_6420c63486b15'),
(422, 136, 'area_2_texto', 'Area de Pesas'),
(423, 136, '_area_2_texto', 'field_6420c63486b16'),
(424, 136, 'area_2', ''),
(425, 136, '_area_2', 'field_6420c63486b14'),
(426, 136, 'area_3_imagen', '62'),
(427, 136, '_area_3_imagen', 'field_6420c62886b12'),
(428, 136, 'area_3_texto', 'Area de Cardio'),
(429, 136, '_area_3_texto', 'field_6420c62886b13'),
(430, 136, 'area_3', ''),
(431, 136, '_area_3', 'field_6420c62886b11'),
(432, 136, 'area_4_imagen', '59'),
(433, 136, '_area_4_imagen', 'field_6420c66da094f'),
(434, 136, 'area_4_texto', 'Area de Aparatos'),
(435, 136, '_area_4_texto', 'field_6420c66da0950'),
(436, 136, 'area_4', ''),
(437, 136, '_area_4', 'field_6420c66da094e'),
(438, 138, 'encabezado_bienvenida', 'Bienvenido a nuestro sitio web'),
(439, 138, '_encabezado_bienvenida', 'field_6420bf552866d'),
(440, 138, 'texto_bienvenida', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eleifend vitae nibh quis scelerisque. '),
(441, 138, '_texto_bienvenida', 'field_6420bf842866e'),
(442, 138, 'area_1_imagen', '45'),
(443, 138, '_area_1_imagen', 'field_6420c5454c755'),
(444, 138, 'area_1_texto', 'Area de Yoga'),
(445, 138, '_area_1_texto', 'field_6420c5794c757'),
(446, 138, 'area_1', ''),
(447, 138, '_area_1', 'field_6420c5174c754'),
(448, 138, 'area_2_imagen', '66'),
(449, 138, '_area_2_imagen', 'field_6420c63486b15'),
(450, 138, 'area_2_texto', 'Area de Pesas'),
(451, 138, '_area_2_texto', 'field_6420c63486b16'),
(452, 138, 'area_2', ''),
(453, 138, '_area_2', 'field_6420c63486b14'),
(454, 138, 'area_3_imagen', '62'),
(455, 138, '_area_3_imagen', 'field_6420c62886b12'),
(456, 138, 'area_3_texto', 'Area de Cardio'),
(457, 138, '_area_3_texto', 'field_6420c62886b13'),
(458, 138, 'area_3', ''),
(459, 138, '_area_3', 'field_6420c62886b11'),
(460, 138, 'area_4_imagen', '59'),
(461, 138, '_area_4_imagen', 'field_6420c66da094f'),
(462, 138, 'area_4_texto', 'Area de Aparatos'),
(463, 138, '_area_4_texto', 'field_6420c66da0950'),
(464, 138, 'area_4', ''),
(465, 138, '_area_4', 'field_6420c66da094e'),
(466, 139, 'encabezado_bienvenida', 'Bienvenido a nuestro sitio web'),
(467, 139, '_encabezado_bienvenida', 'field_6420bf552866d'),
(468, 139, 'texto_bienvenida', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eleifend vitae nibh quis scelerisque. '),
(469, 139, '_texto_bienvenida', 'field_6420bf842866e'),
(470, 139, 'area_1_imagen', '45'),
(471, 139, '_area_1_imagen', 'field_6420c5454c755'),
(472, 139, 'area_1_texto', 'Area de Yoga'),
(473, 139, '_area_1_texto', 'field_6420c5794c757'),
(474, 139, 'area_1', ''),
(475, 139, '_area_1', 'field_6420c5174c754'),
(476, 139, 'area_2_imagen', '53'),
(477, 139, '_area_2_imagen', 'field_6420c63486b15'),
(478, 139, 'area_2_texto', 'Area de Pesa'),
(479, 139, '_area_2_texto', 'field_6420c63486b16'),
(480, 139, 'area_2', ''),
(481, 139, '_area_2', 'field_6420c63486b14'),
(482, 139, 'area_3_imagen', '62'),
(483, 139, '_area_3_imagen', 'field_6420c62886b12'),
(484, 139, 'area_3_texto', 'Area de Cardio'),
(485, 139, '_area_3_texto', 'field_6420c62886b13'),
(486, 139, 'area_3', ''),
(487, 139, '_area_3', 'field_6420c62886b11'),
(488, 139, 'area_4_imagen', '59'),
(489, 139, '_area_4_imagen', 'field_6420c66da094f'),
(490, 139, 'area_4_texto', 'Area de Aparatos'),
(491, 139, '_area_4_texto', 'field_6420c66da0950'),
(492, 139, 'area_4', ''),
(493, 139, '_area_4', 'field_6420c66da094e'),
(494, 140, 'encabezado_bienvenida', 'Bienvenido a nuestro sitio web'),
(495, 140, '_encabezado_bienvenida', 'field_6420bf552866d'),
(496, 140, 'texto_bienvenida', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eleifend vitae nibh quis scelerisque. '),
(497, 140, '_texto_bienvenida', 'field_6420bf842866e'),
(498, 140, 'area_1_imagen', '45'),
(499, 140, '_area_1_imagen', 'field_6420c5454c755'),
(500, 140, 'area_1_texto', 'Area de Yoga'),
(501, 140, '_area_1_texto', 'field_6420c5794c757'),
(502, 140, 'area_1', ''),
(503, 140, '_area_1', 'field_6420c5174c754'),
(504, 140, 'area_2_imagen', '53'),
(505, 140, '_area_2_imagen', 'field_6420c63486b15'),
(506, 140, 'area_2_texto', 'Area de Pesas'),
(507, 140, '_area_2_texto', 'field_6420c63486b16'),
(508, 140, 'area_2', ''),
(509, 140, '_area_2', 'field_6420c63486b14'),
(510, 140, 'area_3_imagen', '62'),
(511, 140, '_area_3_imagen', 'field_6420c62886b12'),
(512, 140, 'area_3_texto', 'Area de Cardio'),
(513, 140, '_area_3_texto', 'field_6420c62886b13'),
(514, 140, 'area_3', ''),
(515, 140, '_area_3', 'field_6420c62886b11'),
(516, 140, 'area_4_imagen', '59'),
(517, 140, '_area_4_imagen', 'field_6420c66da094f'),
(518, 140, 'area_4_texto', 'Area de Aparatos'),
(519, 140, '_area_4_texto', 'field_6420c66da0950'),
(520, 140, 'area_4', ''),
(521, 140, '_area_4', 'field_6420c66da094e'),
(522, 142, '_edit_last', '1'),
(523, 142, '_edit_lock', '1679881538:1'),
(524, 144, '_edit_last', '1'),
(525, 144, '_edit_lock', '1679879201:1'),
(526, 144, '_thumbnail_id', '61'),
(527, 144, 'especialidad', 'a:3:{i:0;s:5:\"pesas\";i:1;s:17:\"acondicionamiento\";i:2;s:8:\"spinning\";}'),
(528, 144, '_especialidad', 'field_6420e6cedb272'),
(529, 145, '_edit_last', '1'),
(530, 145, '_edit_lock', '1679879219:1'),
(531, 145, '_thumbnail_id', '63'),
(532, 145, 'especialidad', 'a:2:{i:0;s:17:\"acondicionamiento\";i:1;s:8:\"spinning\";}'),
(533, 145, '_especialidad', 'field_6420e6cedb272'),
(534, 146, '_edit_last', '1'),
(535, 146, '_edit_lock', '1679879244:1'),
(536, 146, '_thumbnail_id', '51'),
(537, 146, 'especialidad', 'a:2:{i:0;s:5:\"pesas\";i:1;s:5:\"boxeo\";}'),
(538, 146, '_especialidad', 'field_6420e6cedb272'),
(539, 147, '_edit_last', '1'),
(540, 147, '_edit_lock', '1679879529:1'),
(541, 147, '_thumbnail_id', '57'),
(542, 147, 'especialidad', 'a:2:{i:0;s:5:\"pesas\";i:1;s:6:\"cardio\";}'),
(543, 147, '_especialidad', 'field_6420e6cedb272');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-03-20 18:53:34', '2023-03-20 21:53:34', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Editala o borrala, y después ¡empezá a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola mundo!', '', 'trash', 'open', 'open', '', 'hola-mundo__trashed', '', '', '2023-03-26 00:27:55', '2023-03-26 03:27:55', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2023-03-20 18:53:34', '2023-03-20 21:53:34', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página \"Acerca de\" que los presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Hola! Soy mensajero en bicicleta de día, actor aspirante de noche, y esta es mi página web. Vivo en Los Ángeles, tengo un gran perro llamado Jack, y me gustan las piñas coladas. (Y ser atrapado por la lluvia.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...o algo como esto:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La compañia XYZ Trasto fue fundada en 1971, y provee trastos de calidad para el público desde entonces. Ubicado en Ciudad Gótica, XYZ le da empleo a más de 2000 personas y hace todo tipo de cosas asombrosas para la comunidad de Gótica.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías dirigirte a <a href=\"http://localhost/wordpress/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Divertite!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-ejemplo__trashed', '', '', '2023-03-20 22:24:18', '2023-03-21 01:24:18', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-03-20 18:53:34', '2023-03-20 21:53:34', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>La dirección de nuestra web es: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentarios</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador, para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible en https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil será visible para el público en el contexto de su comentario.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Multimedia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si subís imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejás un comentario en nuestro sitio, podés optar por guardar tu nombre, dirección de correo electrónico y sitio web en las cookies. Estos son para tu conveniencia para que no tengas que volver a ingresar tus datos cuando dejés otro comentario. Estas cookies durarán un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tenés una cuenta e iniciás sesión en este sitio, estableceremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y es descartada al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando iniciás sesión, también configuraremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización en pantalla. Las cookies de inicio de sesión duran dos días y las cookies de opciones de pantalla duran un año. Si seleccionás &quot;Recordarme&quot;, tu inicio de sesión se mantendrá durante dos semanas. Si cerrás la sesión, se eliminarán las cookies de inicio de sesión.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editás o publicás un artículo, se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID de publicación del artículo que acabás de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenido embebido desde otros sitios web</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los artículos en este sitio pueden incluir contenido incrustado (por ejemplo, videos, imágenes, artículos, etc.). El contenido incrustado de otros sitios web se comporta de la misma manera que si el visitante hubiera visitado el otro sitio web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estos sitios web pueden recopilar tus datos, utilizar cookies, incrustar un sistema de seguimiento de terceros y supervisar su interacción con ese contenido incrustado, incluyendo el rastreo de tu interacción con el contenido incrustado si tenés una cuenta y estás conectado a ese sitio web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Con quién compartimos datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si solicitás un restablecimiento de contraseña, tu dirección IP será incluida en el correo electrónico de restablecimiento.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cuánto tiempo guardamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejás un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar cualquier comentario de seguimiento de forma automática en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para los usuarios que se registran en nuestro sitio web (si corresponde), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores del sitio web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tenés sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si tenés una cuenta en este sitio o has dejado comentarios, podés solicitar un archivo exportado de los datos personales tuyos que tenemos, incluidos los datos que nos hayas proporcionado. También podés solicitar que borremos cualquier dato personal tuyo que tengamos. Esto no incluye datos que estamos obligados a mantener para fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde se envían tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los comentarios de los visitantes se pueden verificar a través de un servicio automático de detección de spam.</p><!-- /wp:paragraph -->', 'Política de privacidad', '', 'draft', 'closed', 'open', '', 'politica-privacidad', '', '', '2023-03-20 18:53:34', '2023-03-20 21:53:34', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2023-03-20 22:24:18', '2023-03-21 01:24:18', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página \"Acerca de\" que los presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Hola! Soy mensajero en bicicleta de día, actor aspirante de noche, y esta es mi página web. Vivo en Los Ángeles, tengo un gran perro llamado Jack, y me gustan las piñas coladas. (Y ser atrapado por la lluvia.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...o algo como esto:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La compañia XYZ Trasto fue fundada en 1971, y provee trastos de calidad para el público desde entonces. Ubicado en Ciudad Gótica, XYZ le da empleo a más de 2000 personas y hace todo tipo de cosas asombrosas para la comunidad de Gótica.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías dirigirte a <a href=\"http://localhost/wordpress/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Divertite!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-03-20 22:24:18', '2023-03-21 01:24:18', '', 2, 'http://localhost/wordpress/?p=5', 0, 'revision', '', 0),
(6, 1, '2023-03-20 22:26:30', '2023-03-21 01:26:30', '<!-- wp:paragraph -->\r\n<p>Pagina de Inicio</p>\r\n<!-- /wp:paragraph -->', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2023-03-26 21:12:12', '2023-03-27 00:12:12', '', 0, 'http://localhost/wordpress/?page_id=6', 0, 'page', '', 0),
(7, 1, '2023-03-20 22:25:42', '2023-03-21 01:25:42', '<!-- wp:paragraph -->\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eu dapibus est, vitae congue risus. Integer et diam blandit, viverra mauris at, pretium tortor. Integer condimentum ultrices quam, et accumsan lacus interdum non. Sed condimentum metus ex, ut consectetur nibh congue ac. Cras ut vehicula sapien. Nullam vitae lacus sed neque elementum aliquam. Duis pretium ligula nunc, sed sodales massa iaculis quis. Integer et arcu pellentesque, rutrum lectus sit amet, porttitor diam. Nullam leo ante, sodales vel sagittis ut, pellentesque sagittis dolor.</p>\r\n<p>Nulla id ex rhoncus, vulputate lectus at, dictum neque. Cras vestibulum, ante sed viverra fermentum, velit massa semper urna, in euismod ligula purus vel turpis. Quisque eu tristique velit, in malesuada purus. Nunc eu eros quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas nec consequat odio. Nullam egestas in dolor eget blandit. Praesent condimentum feugiat mauris a condimentum. Aenean tempus sed ligula id tempor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse dolor nibh, sollicitudin nec scelerisque vel, pulvinar vel tellus.</p>\r\n<!-- /wp:paragraph -->', 'Nosotros', '', 'publish', 'closed', 'closed', '', 'nosotros', '', '', '2023-03-21 19:17:48', '2023-03-21 22:17:48', '', 0, 'http://localhost/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2023-03-20 22:25:42', '2023-03-21 01:25:42', '<!-- wp:paragraph -->\n<p>Pagina de Nosotros</p>\n<!-- /wp:paragraph -->', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-03-20 22:25:42', '2023-03-21 01:25:42', '', 7, 'http://localhost/wordpress/?p=8', 0, 'revision', '', 0),
(9, 1, '2023-03-20 22:26:02', '2023-03-21 01:26:02', '<!-- wp:paragraph -->\r\n<p>[gymfitness_ubicacion]</p>\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2023-03-26 02:06:06', '2023-03-26 05:06:06', '', 0, 'http://localhost/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2023-03-20 22:26:02', '2023-03-21 01:26:02', '<!-- wp:paragraph -->\n<p>Pagina de Contacto</p>\n<!-- /wp:paragraph -->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2023-03-20 22:26:02', '2023-03-21 01:26:02', '', 9, 'http://localhost/wordpress/?p=10', 0, 'revision', '', 0),
(11, 1, '2023-03-20 22:26:30', '2023-03-21 01:26:30', '<!-- wp:paragraph -->\n<p>Pagina de Inicio</p>\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-03-20 22:26:30', '2023-03-21 01:26:30', '', 6, 'http://localhost/wordpress/?p=11', 0, 'revision', '', 0),
(12, 1, '2023-03-21 17:23:22', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-03-21 17:23:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=12', 0, 'page', '', 0),
(13, 1, '2023-03-21 17:32:02', '2023-03-21 20:32:02', '<!-- wp:paragraph -->\n<p>Pagina de Blog</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'trash', 'closed', 'closed', '', 'blog__trashed', '', '', '2023-03-21 18:33:53', '2023-03-21 21:33:53', '', 0, 'http://localhost/wordpress/?page_id=13', 0, 'page', '', 0),
(14, 1, '2023-03-21 17:32:02', '2023-03-21 20:32:02', '<!-- wp:paragraph -->\n<p>Pagina de Blog</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-03-21 17:32:02', '2023-03-21 20:32:02', '', 13, 'http://localhost/wordpress/?p=14', 0, 'revision', '', 0),
(15, 1, '2023-03-24 22:17:22', '2023-03-21 20:32:42', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2023-03-24 22:17:22', '2023-03-25 01:17:22', '', 0, 'http://localhost/wordpress/?p=15', 1, 'nav_menu_item', '', 0),
(17, 1, '2023-03-24 22:17:22', '2023-03-21 20:32:42', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2023-03-24 22:17:22', '2023-03-25 01:17:22', '', 0, 'http://localhost/wordpress/?p=17', 6, 'nav_menu_item', '', 0),
(18, 1, '2023-03-24 22:17:22', '2023-03-21 20:32:42', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2023-03-24 22:17:22', '2023-03-25 01:17:22', '', 0, 'http://localhost/wordpress/?p=18', 2, 'nav_menu_item', '', 0),
(19, 1, '2023-03-21 18:36:04', '2023-03-21 21:36:04', 'Pagina de Blog', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2023-03-21 18:36:04', '2023-03-21 21:36:04', '', 0, 'http://localhost/wordpress/?page_id=19', 0, 'page', '', 0),
(20, 1, '2023-03-21 18:36:04', '2023-03-21 21:36:04', 'Pagina de Blog', 'Blog', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-03-21 18:36:04', '2023-03-21 21:36:04', '', 19, 'http://localhost/wordpress/?p=20', 0, 'revision', '', 0),
(21, 1, '2023-03-21 18:40:53', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-03-21 18:40:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=21', 0, 'page', '', 0),
(22, 1, '2023-03-21 18:43:39', '2023-03-21 21:43:39', '[gallery link=\"file\" ids=\"46,47,74,67,56,58,57,73,68,48,62,72,60,50\"]\r\n\r\n&nbsp;', 'Galeria', '', 'publish', 'closed', 'closed', '', 'galeria', '', '', '2023-03-25 23:17:33', '2023-03-26 02:17:33', '', 0, 'http://localhost/wordpress/?page_id=22', 0, 'page', '', 0),
(23, 1, '2023-03-21 18:43:39', '2023-03-21 21:43:39', 'Pagina de Galeria', 'Galeria', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2023-03-21 18:43:39', '2023-03-21 21:43:39', '', 22, 'http://localhost/wordpress/?p=23', 0, 'revision', '', 0),
(24, 1, '2023-03-21 18:43:57', '2023-03-21 21:43:57', '<p style=\"text-align: center;\">Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.</p>', 'Nuestras Clases', '', 'publish', 'closed', 'closed', '', 'clases', '', '', '2023-03-26 21:33:01', '2023-03-27 00:33:01', '', 0, 'http://localhost/wordpress/?page_id=24', 0, 'page', '', 0),
(25, 1, '2023-03-21 18:43:57', '2023-03-21 21:43:57', 'Pagina Clases', 'Clases', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2023-03-21 18:43:57', '2023-03-21 21:43:57', '', 24, 'http://localhost/wordpress/?p=25', 0, 'revision', '', 0),
(26, 1, '2023-03-24 22:17:22', '2023-03-21 21:44:52', '', 'Clases', '', 'publish', 'closed', 'closed', '', '26', '', '', '2023-03-24 22:17:22', '2023-03-25 01:17:22', '', 0, 'http://localhost/wordpress/?p=26', 3, 'nav_menu_item', '', 0),
(27, 1, '2023-03-24 22:17:22', '2023-03-21 21:44:52', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2023-03-24 22:17:22', '2023-03-25 01:17:22', '', 0, 'http://localhost/wordpress/?p=27', 4, 'nav_menu_item', '', 0),
(28, 1, '2023-03-24 22:17:22', '2023-03-21 21:44:52', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2023-03-24 22:17:22', '2023-03-25 01:17:22', '', 0, 'http://localhost/wordpress/?p=28', 5, 'nav_menu_item', '', 0),
(29, 1, '2023-03-21 19:06:31', '2023-03-21 22:06:31', '', 'weight-lifting-1284616_1920', '', 'inherit', 'open', 'closed', '', 'weight-lifting-1284616_1920', '', '', '2023-03-21 19:06:31', '2023-03-21 22:06:31', '', 7, 'http://localhost/wordpress/wp-content/uploads/2023/03/weight-lifting-1284616_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2023-03-21 19:07:24', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-03-21 19:07:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=30', 0, 'post', '', 0),
(31, 1, '2023-03-21 19:13:25', '2023-03-21 22:13:25', '<!-- wp:paragraph -->\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eu dapibus est, vitae congue risus. Integer et diam blandit, viverra mauris at, pretium tortor. Integer condimentum ultrices quam, et accumsan lacus interdum non. Sed condimentum metus ex, ut consectetur nibh congue ac. Cras ut vehicula sapien. Nullam vitae lacus sed neque elementum aliquam. Duis pretium ligula nunc, sed sodales massa iaculis quis. Integer et arcu pellentesque, rutrum lectus sit amet, porttitor diam. Nullam leo ante, sodales vel sagittis ut, pellentesque sagittis dolor.</p>\r\n<p>Nulla id ex rhoncus, vulputate lectus at, dictum neque. Cras vestibulum, ante sed viverra fermentum, velit massa semper urna, in euismod ligula purus vel turpis. Quisque eu tristique velit, in malesuada purus. Nunc eu eros quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas nec consequat odio. Nullam egestas in dolor eget blandit. Praesent condimentum feugiat mauris a condimentum. Aenean tempus sed ligula id tempor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse dolor nibh, sollicitudin nec scelerisque vel, pulvinar vel tellus.</p>\r\n<!-- /wp:paragraph -->', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-03-21 19:13:25', '2023-03-21 22:13:25', '', 7, 'http://localhost/wordpress/?p=31', 0, 'revision', '', 0),
(32, 1, '2023-03-24 19:57:18', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-03-24 19:57:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=32', 0, 'post', '', 0),
(33, 1, '2023-03-24 20:05:19', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-03-24 20:05:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&p=33', 0, 'acf-field-group', '', 0),
(34, 1, '2023-03-24 20:08:13', '2023-03-24 23:08:13', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Campos para Clases', 'campos-para-clases', 'trash', 'closed', 'closed', '', 'group_641e2d379244e__trashed', '', '', '2023-03-24 21:42:51', '2023-03-25 00:42:51', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=34', 0, 'acf-field-group', '', 0),
(35, 1, '2023-03-24 20:08:13', '2023-03-24 23:08:13', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Campos para Clases', 'campos_para_clases', 'trash', 'closed', 'closed', '', 'field_641e2d3788cdc__trashed', '', '', '2023-03-24 21:42:51', '2023-03-25 00:42:51', '', 34, 'http://localhost/wordpress/?post_type=acf-field&#038;p=35', 0, 'acf-field', '', 0),
(36, 1, '2023-03-24 20:15:41', '2023-03-24 23:15:41', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"gymfitness_clases\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Campos para Clases', 'campos-para-clases', 'publish', 'closed', 'closed', '', 'group_641e2dac90e53', '', '', '2023-03-24 20:15:41', '2023-03-24 23:15:41', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=36', 0, 'acf-field-group', '', 0),
(37, 1, '2023-03-24 20:15:41', '2023-03-24 23:15:41', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Dias Clases', 'dias_clases', 'publish', 'closed', 'closed', '', 'field_641e2eb155dde', '', '', '2023-03-24 20:15:41', '2023-03-24 23:15:41', '', 36, 'http://localhost/wordpress/?post_type=acf-field&p=37', 0, 'acf-field', '', 0),
(38, 1, '2023-03-24 20:15:41', '2023-03-24 23:15:41', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"g:i a\";s:13:\"return_format\";s:5:\"g:i a\";}', 'Comiezo Clases', 'comiezo_clases', 'publish', 'closed', 'closed', '', 'field_641e2ed355ddf', '', '', '2023-03-24 20:15:41', '2023-03-24 23:15:41', '', 36, 'http://localhost/wordpress/?post_type=acf-field&p=38', 1, 'acf-field', '', 0),
(39, 1, '2023-03-24 20:15:41', '2023-03-24 23:15:41', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"g:i a\";s:13:\"return_format\";s:5:\"g:i a\";}', 'Fin Clases', 'fin_clases', 'publish', 'closed', 'closed', '', 'field_641e2ef555de0', '', '', '2023-03-24 20:15:41', '2023-03-24 23:15:41', '', 36, 'http://localhost/wordpress/?post_type=acf-field&p=39', 2, 'acf-field', '', 0),
(40, 1, '2023-03-24 20:18:27', '2023-03-24 23:18:27', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas viverra fermentum neque, ac volutpat lorem consectetur iaculis. Duis vitae urna mauris. Etiam vel molestie orci. Nunc a efficitur nibh, sed dictum libero. Morbi lectus libero, iaculis nec iaculis quis, mollis non tellus. Aenean tincidunt vulputate mi, vel semper urna tempor id. Suspendisse fermentum tellus quam, semper pharetra ante iaculis non. Donec hendrerit elementum massa a posuere. In id nisi leo. Cras volutpat molestie risus, at ornare libero maximus eu.\r\n\r\nNullam scelerisque cursus turpis et posuere. Donec varius elementum elit ut consequat. Nulla facilisi. Morbi velit magna, fringilla eu erat ut, porttitor mattis enim. Donec augue elit, tincidunt eget arcu id, posuere cursus sapien. Phasellus pharetra augue justo, eu ultricies tortor efficitur ut. Maecenas consectetur tortor fringilla mi tincidunt euismod. Nulla tempor at ex eget viverra. Integer hendrerit molestie ante vitae imperdiet.\r\n\r\nPhasellus consectetur varius erat ut lobortis. In rhoncus ex in pulvinar porta. Maecenas et leo feugiat, dignissim quam id, molestie augue. Maecenas mi est, malesuada in magna in, semper congue mauris. Nulla vitae venenatis turpis. Etiam sed imperdiet risus. Cras vehicula libero id varius rhoncus. Pellentesque porta justo a ex consequat volutpat. Nullam a arcu aliquam, volutpat nulla eget, gravida libero.', 'Cardio para Principiantes', '', 'publish', 'closed', 'closed', '', 'cardio-para-principiantes', '', '', '2023-03-24 20:18:27', '2023-03-24 23:18:27', '', 0, 'http://localhost/wordpress/?post_type=gymfitness_clases&#038;p=40', 0, 'gymfitness_clases', '', 0),
(41, 1, '2023-03-24 20:17:06', '2023-03-24 23:17:06', '', 'biceps-2945912_640', '', 'inherit', 'open', 'closed', '', 'biceps-2945912_640', '', '', '2023-03-24 20:17:06', '2023-03-24 23:17:06', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/biceps-2945912_640-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2023-03-24 20:17:06', '2023-03-24 23:17:06', '', 'crossfit-534615_1920', '', 'inherit', 'open', 'closed', '', 'crossfit-534615_1920', '', '', '2023-03-24 20:17:06', '2023-03-24 23:17:06', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/crossfit-534615_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2023-03-24 20:17:07', '2023-03-24 23:17:07', '', 'cross-fit-1126999_1920', '', 'inherit', 'open', 'closed', '', 'cross-fit-1126999_1920', '', '', '2023-03-24 20:17:07', '2023-03-24 23:17:07', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/cross-fit-1126999_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2023-03-24 20:17:09', '2023-03-24 23:17:09', '', 'dumbbell-3324976_1920', '', 'inherit', 'open', 'closed', '', 'dumbbell-3324976_1920', '', '', '2023-03-24 20:17:09', '2023-03-24 23:17:09', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/dumbbell-3324976_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2023-03-24 20:17:10', '2023-03-24 23:17:10', '', 'exercise-86200_1920', '', 'inherit', 'open', 'closed', '', 'exercise-86200_1920', '', '', '2023-03-24 20:17:10', '2023-03-24 23:17:10', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/exercise-86200_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2023-03-24 20:17:11', '2023-03-24 23:17:11', '', 'fitness-375472_1920', '', 'inherit', 'open', 'closed', '', 'fitness-375472_1920', '', '', '2023-03-24 20:17:11', '2023-03-24 23:17:11', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/fitness-375472_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2023-03-24 20:17:12', '2023-03-24 23:17:12', '', 'fitness-1677212_1920', '', 'inherit', 'open', 'closed', '', 'fitness-1677212_1920', '', '', '2023-03-24 20:17:12', '2023-03-24 23:17:12', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/fitness-1677212_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2023-03-24 20:17:13', '2023-03-24 23:17:13', '', 'fitness-1882721_1920', '', 'inherit', 'open', 'closed', '', 'fitness-1882721_1920', '', '', '2023-03-24 20:17:13', '2023-03-24 23:17:13', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/fitness-1882721_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2023-03-24 20:17:15', '2023-03-24 23:17:15', '', 'fitness-3767884_1920', '', 'inherit', 'open', 'closed', '', 'fitness-3767884_1920', '', '', '2023-03-24 20:17:15', '2023-03-24 23:17:15', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/fitness-3767884_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2023-03-24 20:17:16', '2023-03-24 23:17:16', '', 'gym-455164_1920', '', 'inherit', 'open', 'closed', '', 'gym-455164_1920', '', '', '2023-03-24 20:17:16', '2023-03-24 23:17:16', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/gym-455164_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2023-03-24 20:17:17', '2023-03-24 23:17:17', '', 'gym-457072_1280', '', 'inherit', 'open', 'closed', '', 'gym-457072_1280', '', '', '2023-03-24 20:17:17', '2023-03-24 23:17:17', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/gym-457072_1280-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2023-03-24 20:17:18', '2023-03-24 23:17:18', '', 'gym-526995_1920', '', 'inherit', 'open', 'closed', '', 'gym-526995_1920', '', '', '2023-03-24 20:17:18', '2023-03-24 23:17:18', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/gym-526995_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2023-03-24 20:17:19', '2023-03-24 23:17:19', '', 'gym-546138_1920', '', 'inherit', 'open', 'closed', '', 'gym-546138_1920', '', '', '2023-03-24 20:17:19', '2023-03-24 23:17:19', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/gym-546138_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2023-03-24 20:17:21', '2023-03-24 23:17:21', '', 'gym-room-1180062_1920', '', 'inherit', 'open', 'closed', '', 'gym-room-1180062_1920', '', '', '2023-03-24 20:17:21', '2023-03-24 23:17:21', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/gym-room-1180062_1920-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2023-03-24 20:17:22', '2023-03-24 23:17:22', '', 'home-fitness-equipment-1840858_1920', '', 'inherit', 'open', 'closed', '', 'home-fitness-equipment-1840858_1920', '', '', '2023-03-24 20:17:22', '2023-03-24 23:17:22', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/home-fitness-equipment-1840858_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2023-03-24 20:17:23', '2023-03-24 23:17:23', '', 'kettle-bell-592905_1920', '', 'inherit', 'open', 'closed', '', 'kettle-bell-592905_1920', '', '', '2023-03-24 20:17:23', '2023-03-24 23:17:23', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/kettle-bell-592905_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2023-03-24 20:17:24', '2023-03-24 23:17:24', '', 'kettlebell-2052793_1280', '', 'inherit', 'open', 'closed', '', 'kettlebell-2052793_1280', '', '', '2023-03-24 20:17:24', '2023-03-24 23:17:24', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/kettlebell-2052793_1280-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2023-03-24 20:17:25', '2023-03-24 23:17:25', '', 'kettlebells-1677217_1920', '', 'inherit', 'open', 'closed', '', 'kettlebells-1677217_1920', '', '', '2023-03-24 20:17:25', '2023-03-24 23:17:25', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/kettlebells-1677217_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2023-03-24 20:17:27', '2023-03-24 23:17:27', '', 'machines-91849_1920', '', 'inherit', 'open', 'closed', '', 'machines-91849_1920', '', '', '2023-03-24 20:17:27', '2023-03-24 23:17:27', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/machines-91849_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2023-03-24 20:17:28', '2023-03-24 23:17:28', '', 'mobility-603558_1280', '', 'inherit', 'open', 'closed', '', 'mobility-603558_1280', '', '', '2023-03-24 20:17:28', '2023-03-24 23:17:28', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/mobility-603558_1280-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2023-03-24 20:17:29', '2023-03-24 23:17:29', '', 'people-2604149_1920', '', 'inherit', 'open', 'closed', '', 'people-2604149_1920', '', '', '2023-03-24 20:17:29', '2023-03-24 23:17:29', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/people-2604149_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2023-03-24 20:17:30', '2023-03-24 23:17:30', '', 'sports-1962574_1920', '', 'inherit', 'open', 'closed', '', 'sports-1962574_1920', '', '', '2023-03-24 20:17:30', '2023-03-24 23:17:30', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/sports-1962574_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2023-03-24 20:17:31', '2023-03-24 23:17:31', '', 'training-828726_1920', '', 'inherit', 'open', 'closed', '', 'training-828726_1920', '', '', '2023-03-24 20:17:31', '2023-03-24 23:17:31', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/training-828726_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2023-03-24 20:17:32', '2023-03-24 23:17:32', '', 'training-828732_1920', '', 'inherit', 'open', 'closed', '', 'training-828732_1920', '', '', '2023-03-24 20:17:32', '2023-03-24 23:17:32', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/training-828732_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2023-03-24 20:17:34', '2023-03-24 23:17:34', '', 'training-828741_1920', '', 'inherit', 'open', 'closed', '', 'training-828741_1920', '', '', '2023-03-24 20:17:34', '2023-03-24 23:17:34', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/training-828741_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2023-03-24 20:17:35', '2023-03-24 23:17:35', '', 'weight-lifting-1284616_1920', '', 'inherit', 'open', 'closed', '', 'weight-lifting-1284616_1920-2', '', '', '2023-03-24 20:17:35', '2023-03-24 23:17:35', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/weight-lifting-1284616_1920-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2023-03-24 20:17:36', '2023-03-24 23:17:36', '', 'weights-646497_1920', '', 'inherit', 'open', 'closed', '', 'weights-646497_1920', '', '', '2023-03-24 20:17:36', '2023-03-24 23:17:36', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/weights-646497_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2023-03-24 20:17:38', '2023-03-24 23:17:38', '', 'weights-652486_1920', '', 'inherit', 'open', 'closed', '', 'weights-652486_1920', '', '', '2023-03-24 20:17:38', '2023-03-24 23:17:38', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/weights-652486_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2023-03-24 20:17:39', '2023-03-24 23:17:39', '', 'weights-652487_1920', '', 'inherit', 'open', 'closed', '', 'weights-652487_1920', '', '', '2023-03-24 20:17:39', '2023-03-24 23:17:39', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/weights-652487_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2023-03-24 20:17:40', '2023-03-24 23:17:40', '', 'weights-652488_1920', '', 'inherit', 'open', 'closed', '', 'weights-652488_1920', '', '', '2023-03-24 20:17:40', '2023-03-24 23:17:40', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/weights-652488_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2023-03-24 20:17:42', '2023-03-24 23:17:42', '', 'weights-817635_1920', '', 'inherit', 'open', 'closed', '', 'weights-817635_1920', '', '', '2023-03-24 20:17:42', '2023-03-24 23:17:42', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/weights-817635_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2023-03-24 20:17:43', '2023-03-24 23:17:43', '', 'workout-1931107_1920', '', 'inherit', 'open', 'closed', '', 'workout-1931107_1920', '', '', '2023-03-24 20:17:43', '2023-03-24 23:17:43', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/workout-1931107_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2023-03-24 20:17:44', '2023-03-24 23:17:44', '', 'yoga-1994667_1920', '', 'inherit', 'open', 'closed', '', 'yoga-1994667_1920', '', '', '2023-03-24 20:17:44', '2023-03-24 23:17:44', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/yoga-1994667_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2023-03-24 20:17:45', '2023-03-24 23:17:45', '', 'young-woman-1178123_1280', '', 'inherit', 'open', 'closed', '', 'young-woman-1178123_1280', '', '', '2023-03-24 20:17:45', '2023-03-24 23:17:45', '', 40, 'http://localhost/wordpress/wp-content/uploads/2023/03/young-woman-1178123_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2023-03-24 20:19:17', '2023-03-24 23:19:17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas viverra fermentum neque, ac volutpat lorem consectetur iaculis. Duis vitae urna mauris. Etiam vel molestie orci. Nunc a efficitur nibh, sed dictum libero. Morbi lectus libero, iaculis nec iaculis quis, mollis non tellus. Aenean tincidunt vulputate mi, vel semper urna tempor id. Suspendisse fermentum tellus quam, semper pharetra ante iaculis non. Donec hendrerit elementum massa a posuere. In id nisi leo. Cras volutpat molestie risus, at ornare libero maximus eu.\r\n\r\nNullam scelerisque cursus turpis et posuere. Donec varius elementum elit ut consequat. Nulla facilisi. Morbi velit magna, fringilla eu erat ut, porttitor mattis enim. Donec augue elit, tincidunt eget arcu id, posuere cursus sapien. Phasellus pharetra augue justo, eu ultricies tortor efficitur ut. Maecenas consectetur tortor fringilla mi tincidunt euismod. Nulla tempor at ex eget viverra. Integer hendrerit molestie ante vitae imperdiet.\r\n\r\nPhasellus consectetur varius erat ut lobortis. In rhoncus ex in pulvinar porta. Maecenas et leo feugiat, dignissim quam id, molestie augue. Maecenas mi est, malesuada in magna in, semper congue mauris. Nulla vitae venenatis turpis. Etiam sed imperdiet risus. Cras vehicula libero id varius rhoncus. Pellentesque porta justo a ex consequat volutpat. Nullam a arcu aliquam, volutpat nulla eget, gravida libero.', 'Clase de Spinning', '', 'publish', 'closed', 'closed', '', 'clase-de-spinning', '', '', '2023-03-25 02:04:01', '2023-03-25 05:04:01', '', 0, 'http://localhost/wordpress/?post_type=gymfitness_clases&#038;p=75', 0, 'gymfitness_clases', '', 0),
(76, 1, '2023-03-24 20:20:23', '2023-03-24 23:20:23', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas viverra fermentum neque, ac volutpat lorem consectetur iaculis. Duis vitae urna mauris. Etiam vel molestie orci. Nunc a efficitur nibh, sed dictum libero. Morbi lectus libero, iaculis nec iaculis quis, mollis non tellus. Aenean tincidunt vulputate mi, vel semper urna tempor id. Suspendisse fermentum tellus quam, semper pharetra ante iaculis non. Donec hendrerit elementum massa a posuere. In id nisi leo. Cras volutpat molestie risus, at ornare libero maximus eu.\r\n\r\nNullam scelerisque cursus turpis et posuere. Donec varius elementum elit ut consequat. Nulla facilisi. Morbi velit magna, fringilla eu erat ut, porttitor mattis enim. Donec augue elit, tincidunt eget arcu id, posuere cursus sapien. Phasellus pharetra augue justo, eu ultricies tortor efficitur ut. Maecenas consectetur tortor fringilla mi tincidunt euismod. Nulla tempor at ex eget viverra. Integer hendrerit molestie ante vitae imperdiet.\r\n\r\nPhasellus consectetur varius erat ut lobortis. In rhoncus ex in pulvinar porta. Maecenas et leo feugiat, dignissim quam id, molestie augue. Maecenas mi est, malesuada in magna in, semper congue mauris. Nulla vitae venenatis turpis. Etiam sed imperdiet risus. Cras vehicula libero id varius rhoncus. Pellentesque porta justo a ex consequat volutpat. Nullam a arcu aliquam, volutpat nulla eget, gravida libero.', 'Kickboxing para Principiantes', '', 'publish', 'closed', 'closed', '', 'kickboxing-para-principiantes', '', '', '2023-03-24 20:20:23', '2023-03-24 23:20:23', '', 0, 'http://localhost/wordpress/?post_type=gymfitness_clases&#038;p=76', 0, 'gymfitness_clases', '', 0),
(77, 1, '2023-03-24 20:21:11', '2023-03-24 23:21:11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas viverra fermentum neque, ac volutpat lorem consectetur iaculis. Duis vitae urna mauris. Etiam vel molestie orci. Nunc a efficitur nibh, sed dictum libero. Morbi lectus libero, iaculis nec iaculis quis, mollis non tellus. Aenean tincidunt vulputate mi, vel semper urna tempor id. Suspendisse fermentum tellus quam, semper pharetra ante iaculis non. Donec hendrerit elementum massa a posuere. In id nisi leo. Cras volutpat molestie risus, at ornare libero maximus eu.\r\n\r\nNullam scelerisque cursus turpis et posuere. Donec varius elementum elit ut consequat. Nulla facilisi. Morbi velit magna, fringilla eu erat ut, porttitor mattis enim. Donec augue elit, tincidunt eget arcu id, posuere cursus sapien. Phasellus pharetra augue justo, eu ultricies tortor efficitur ut. Maecenas consectetur tortor fringilla mi tincidunt euismod. Nulla tempor at ex eget viverra. Integer hendrerit molestie ante vitae imperdiet.\r\n\r\nPhasellus consectetur varius erat ut lobortis. In rhoncus ex in pulvinar porta. Maecenas et leo feugiat, dignissim quam id, molestie augue. Maecenas mi est, malesuada in magna in, semper congue mauris. Nulla vitae venenatis turpis. Etiam sed imperdiet risus. Cras vehicula libero id varius rhoncus. Pellentesque porta justo a ex consequat volutpat. Nullam a arcu aliquam, volutpat nulla eget, gravida libero.', 'Levantamiento de Pesas para Principiantes', '', 'publish', 'closed', 'closed', '', 'levantamiento-de-pesas-para-principiantes', '', '', '2023-03-24 20:21:11', '2023-03-24 23:21:11', '', 0, 'http://localhost/wordpress/?post_type=gymfitness_clases&#038;p=77', 0, 'gymfitness_clases', '', 0),
(78, 1, '2023-03-24 20:21:55', '2023-03-24 23:21:55', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas viverra fermentum neque, ac volutpat lorem consectetur iaculis. Duis vitae urna mauris. Etiam vel molestie orci. Nunc a efficitur nibh, sed dictum libero. Morbi lectus libero, iaculis nec iaculis quis, mollis non tellus. Aenean tincidunt vulputate mi, vel semper urna tempor id. Suspendisse fermentum tellus quam, semper pharetra ante iaculis non. Donec hendrerit elementum massa a posuere. In id nisi leo. Cras volutpat molestie risus, at ornare libero maximus eu.\r\n\r\nNullam scelerisque cursus turpis et posuere. Donec varius elementum elit ut consequat. Nulla facilisi. Morbi velit magna, fringilla eu erat ut, porttitor mattis enim. Donec augue elit, tincidunt eget arcu id, posuere cursus sapien. Phasellus pharetra augue justo, eu ultricies tortor efficitur ut. Maecenas consectetur tortor fringilla mi tincidunt euismod. Nulla tempor at ex eget viverra. Integer hendrerit molestie ante vitae imperdiet.\r\n\r\nPhasellus consectetur varius erat ut lobortis. In rhoncus ex in pulvinar porta. Maecenas et leo feugiat, dignissim quam id, molestie augue. Maecenas mi est, malesuada in magna in, semper congue mauris. Nulla vitae venenatis turpis. Etiam sed imperdiet risus. Cras vehicula libero id varius rhoncus. Pellentesque porta justo a ex consequat volutpat. Nullam a arcu aliquam, volutpat nulla eget, gravida libero.', 'Masterclass Crossfit', '', 'publish', 'closed', 'closed', '', 'masterclass-crossfit', '', '', '2023-03-24 20:21:55', '2023-03-24 23:21:55', '', 0, 'http://localhost/wordpress/?post_type=gymfitness_clases&#038;p=78', 0, 'gymfitness_clases', '', 0),
(79, 1, '2023-03-24 20:22:42', '2023-03-24 23:22:42', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas viverra fermentum neque, ac volutpat lorem consectetur iaculis. Duis vitae urna mauris. Etiam vel molestie orci. Nunc a efficitur nibh, sed dictum libero. Morbi lectus libero, iaculis nec iaculis quis, mollis non tellus. Aenean tincidunt vulputate mi, vel semper urna tempor id. Suspendisse fermentum tellus quam, semper pharetra ante iaculis non. Donec hendrerit elementum massa a posuere. In id nisi leo. Cras volutpat molestie risus, at ornare libero maximus eu.\r\n\r\nNullam scelerisque cursus turpis et posuere. Donec varius elementum elit ut consequat. Nulla facilisi. Morbi velit magna, fringilla eu erat ut, porttitor mattis enim. Donec augue elit, tincidunt eget arcu id, posuere cursus sapien. Phasellus pharetra augue justo, eu ultricies tortor efficitur ut. Maecenas consectetur tortor fringilla mi tincidunt euismod. Nulla tempor at ex eget viverra. Integer hendrerit molestie ante vitae imperdiet.\r\n\r\nPhasellus consectetur varius erat ut lobortis. In rhoncus ex in pulvinar porta. Maecenas et leo feugiat, dignissim quam id, molestie augue. Maecenas mi est, malesuada in magna in, semper congue mauris. Nulla vitae venenatis turpis. Etiam sed imperdiet risus. Cras vehicula libero id varius rhoncus. Pellentesque porta justo a ex consequat volutpat. Nullam a arcu aliquam, volutpat nulla eget, gravida libero.', 'Primer Semana de Gym', '', 'publish', 'closed', 'closed', '', 'primer-semana-de-gym', '', '', '2023-03-24 20:22:42', '2023-03-24 23:22:42', '', 0, 'http://localhost/wordpress/?post_type=gymfitness_clases&#038;p=79', 0, 'gymfitness_clases', '', 0),
(80, 1, '2023-03-24 20:23:20', '2023-03-24 23:23:20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas viverra fermentum neque, ac volutpat lorem consectetur iaculis. Duis vitae urna mauris. Etiam vel molestie orci. Nunc a efficitur nibh, sed dictum libero. Morbi lectus libero, iaculis nec iaculis quis, mollis non tellus. Aenean tincidunt vulputate mi, vel semper urna tempor id. Suspendisse fermentum tellus quam, semper pharetra ante iaculis non. Donec hendrerit elementum massa a posuere. In id nisi leo. Cras volutpat molestie risus, at ornare libero maximus eu.\r\n\r\nNullam scelerisque cursus turpis et posuere. Donec varius elementum elit ut consequat. Nulla facilisi. Morbi velit magna, fringilla eu erat ut, porttitor mattis enim. Donec augue elit, tincidunt eget arcu id, posuere cursus sapien. Phasellus pharetra augue justo, eu ultricies tortor efficitur ut. Maecenas consectetur tortor fringilla mi tincidunt euismod. Nulla tempor at ex eget viverra. Integer hendrerit molestie ante vitae imperdiet.\r\n\r\nPhasellus consectetur varius erat ut lobortis. In rhoncus ex in pulvinar porta. Maecenas et leo feugiat, dignissim quam id, molestie augue. Maecenas mi est, malesuada in magna in, semper congue mauris. Nulla vitae venenatis turpis. Etiam sed imperdiet risus. Cras vehicula libero id varius rhoncus. Pellentesque porta justo a ex consequat volutpat. Nullam a arcu aliquam, volutpat nulla eget, gravida libero.', 'Yoga para Principiantes', '', 'publish', 'closed', 'closed', '', 'yoga-para-principiantes', '', '', '2023-03-24 20:23:20', '2023-03-24 23:23:20', '', 0, 'http://localhost/wordpress/?post_type=gymfitness_clases&#038;p=80', 0, 'gymfitness_clases', '', 0),
(81, 1, '2023-03-24 22:15:57', '2023-03-25 01:15:57', 'Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.', 'Clases', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2023-03-24 22:15:57', '2023-03-25 01:15:57', '', 24, 'http://localhost/wordpress/?p=81', 0, 'revision', '', 0),
(82, 1, '2023-03-24 22:16:53', '2023-03-25 01:16:53', 'Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.', 'Nestas Clases', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2023-03-24 22:16:53', '2023-03-25 01:16:53', '', 24, 'http://localhost/wordpress/?p=82', 0, 'revision', '', 0),
(83, 1, '2023-03-24 22:17:10', '2023-03-25 01:17:10', 'Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.', 'Nuestas Clases', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2023-03-24 22:17:10', '2023-03-25 01:17:10', '', 24, 'http://localhost/wordpress/?p=83', 0, 'revision', '', 0),
(84, 1, '2023-03-24 22:18:14', '2023-03-25 01:18:14', '<p style=\"text-align: center;\">Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.</p>', 'Nuestas Clases', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2023-03-24 22:18:14', '2023-03-25 01:18:14', '', 24, 'http://localhost/wordpress/?p=84', 0, 'revision', '', 0),
(85, 1, '2023-03-24 22:39:47', '2023-03-25 01:39:47', '', 'Clases', '', 'trash', 'open', 'open', '', 'clases__trashed', '', '', '2023-03-24 22:39:58', '2023-03-25 01:39:58', '', 0, 'http://localhost/wordpress/?p=85', 0, 'post', '', 0),
(86, 1, '2023-03-24 22:39:47', '2023-03-25 01:39:47', '', 'Clases', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2023-03-24 22:39:47', '2023-03-25 01:39:47', '', 85, 'http://localhost/wordpress/?p=86', 0, 'revision', '', 0),
(87, 1, '2023-03-25 00:29:07', '2023-03-25 03:29:07', '', 'Clases', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2023-03-25 00:29:07', '2023-03-25 03:29:07', '', 0, 'http://localhost/wordpress/?p=87', 0, 'post', '', 0),
(88, 1, '2023-03-25 00:29:07', '2023-03-25 03:29:07', '', 'Clases', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2023-03-25 00:29:07', '2023-03-25 03:29:07', '', 87, 'http://localhost/wordpress/?p=88', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(89, 1, '2023-03-25 00:59:33', '2023-03-25 03:59:33', '', 'KGNJFL', '', 'trash', 'open', 'open', '', 'kgnjfl__trashed', '', '', '2023-03-25 00:59:56', '2023-03-25 03:59:56', '', 0, 'http://localhost/wordpress/?p=89', 0, 'post', '', 0),
(90, 1, '2023-03-25 00:59:33', '2023-03-25 03:59:33', '', 'KGNJFL', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2023-03-25 00:59:33', '2023-03-25 03:59:33', '', 89, 'http://localhost/wordpress/?p=90', 0, 'revision', '', 0),
(91, 1, '2023-03-25 00:59:41', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-03-25 00:59:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=91', 0, 'post', '', 0),
(92, 1, '2023-03-25 00:59:41', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-03-25 00:59:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=92', 0, 'post', '', 0),
(93, 1, '2023-03-25 22:39:37', '2023-03-26 01:39:37', '[gallery link=\"file\" ids=\"46,47,74,67,56,58,57,73,68,48,62,72,60,69,53\"]\r\n\r\n&nbsp;', 'Galeria', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2023-03-25 22:39:37', '2023-03-26 01:39:37', '', 22, 'http://localhost/gymfitness/?p=93', 0, 'revision', '', 0),
(94, 1, '2023-03-25 23:15:43', '2023-03-26 02:15:43', '[gallery link=\"file\" ids=\"46,47,74,67,56,58,57,73,68,48,62,72,60,69\"]\r\n\r\n&nbsp;', 'Galeria', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2023-03-25 23:15:43', '2023-03-26 02:15:43', '', 22, 'http://localhost/gymfitness/?p=94', 0, 'revision', '', 0),
(95, 1, '2023-03-25 23:16:54', '2023-03-26 02:16:54', '[gallery link=\"file\" ids=\"46,47,74,67,56,58,57,73,68,48,62,72,69,60\"]\r\n\r\n&nbsp;', 'Galeria', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2023-03-25 23:16:54', '2023-03-26 02:16:54', '', 22, 'http://localhost/gymfitness/?p=95', 0, 'revision', '', 0),
(96, 1, '2023-03-25 23:17:33', '2023-03-26 02:17:33', '[gallery link=\"file\" ids=\"46,47,74,67,56,58,57,73,68,48,62,72,60,50\"]\r\n\r\n&nbsp;', 'Galeria', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2023-03-25 23:17:33', '2023-03-26 02:17:33', '', 22, 'http://localhost/gymfitness/?p=96', 0, 'revision', '', 0),
(97, 1, '2023-03-26 00:27:55', '2023-03-26 03:27:55', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Editala o borrala, y después ¡empezá a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-03-26 00:27:55', '2023-03-26 03:27:55', '', 1, 'http://localhost/gymfitness/?p=97', 0, 'revision', '', 0),
(98, 1, '2023-03-26 00:28:59', '2023-03-26 03:28:59', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue lectus eu sem blandit, a eleifend risus fringilla. Sed tristique lacus nec purus sagittis vehicula ac id elit. Vivamus elementum eget libero ac imperdiet. Maecenas dapibus, leo vitae fringilla volutpat, augue velit facilisis ligula, sit amet sagittis neque urna at odio. Cras viverra dolor in felis sollicitudin tempus. Morbi nulla velit, gravida sit amet aliquam nec, consequat sed orci. Praesent volutpat purus nec elementum varius. Praesent ornare mattis dui eget placerat. Sed lacinia risus erat, eget ultricies tellus aliquam eu. Nulla turpis nisi, tincidunt ac odio quis, tincidunt maximus tortor. Aenean id consequat nunc. Maecenas a risus est. Praesent vel enim in urna ultrices imperdiet. Nam quis ultrices quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nNullam ultricies, tellus eget tempor hendrerit, enim nulla varius ante, nec scelerisque lorem turpis sit amet sapien. Integer dictum elit quis auctor tempus. Nulla pellentesque venenatis dignissim. Maecenas rutrum, urna non feugiat pretium, tortor libero suscipit nisl, non malesuada ipsum tortor eget augue. Cras finibus non nunc a pellentesque. Ut ac mi a velit tempor elementum quis vitae lacus. Morbi a consequat dui, id accumsan velit. Ut in commodo mauris. Mauris facilisis et ligula in luctus. Nullam interdum egestas sapien quis pharetra. Sed in gravida lorem.\r\n\r\nFusce mollis urna in sollicitudin fermentum. Nullam at tempor lacus. Suspendisse venenatis, leo sit amet vulputate porttitor, sem urna mollis nisl, vitae fringilla massa diam eget mi. Integer vehicula neque vitae tellus maximus, et sodales ex faucibus. Maecenas orci mi, consequat vitae pulvinar vitae, convallis at ipsum. Quisque at erat nec turpis faucibus ullamcorper. Sed vitae urna facilisis, imperdiet massa id, tincidunt felis. Aliquam imperdiet, sem vitae viverra mattis, erat ante venenatis urna, nec vestibulum ligula quam ac mauris. Maecenas viverra magna non posuere ornare. Sed ut nisi quis elit hendrerit viverra.\r\n\r\nSuspendisse cursus neque dolor, vitae suscipit dolor mattis at. Nam vehicula nunc sit amet ipsum fringilla vulputate. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur consequat id quam eget tempor. Cras fermentum diam ac lacus congue, sit amet dignissim metus aliquam. Vestibulum convallis dui placerat lacus fermentum, id facilisis sapien pretium. Ut elementum tincidunt mi nec auctor. Maecenas semper est risus, non auctor lorem accumsan in. Nam mattis, massa at tincidunt egestas, sem lacus tempus nunc, in consequat odio ex nec purus.', '5 Ejercicios de estiramiento', '', 'publish', 'open', 'open', '', '5-ejercicios-de-estiramiento', '', '', '2023-03-26 00:28:59', '2023-03-26 03:28:59', '', 0, 'http://localhost/gymfitness/?p=98', 0, 'post', '', 0),
(99, 1, '2023-03-26 00:28:59', '2023-03-26 03:28:59', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue lectus eu sem blandit, a eleifend risus fringilla. Sed tristique lacus nec purus sagittis vehicula ac id elit. Vivamus elementum eget libero ac imperdiet. Maecenas dapibus, leo vitae fringilla volutpat, augue velit facilisis ligula, sit amet sagittis neque urna at odio. Cras viverra dolor in felis sollicitudin tempus. Morbi nulla velit, gravida sit amet aliquam nec, consequat sed orci. Praesent volutpat purus nec elementum varius. Praesent ornare mattis dui eget placerat. Sed lacinia risus erat, eget ultricies tellus aliquam eu. Nulla turpis nisi, tincidunt ac odio quis, tincidunt maximus tortor. Aenean id consequat nunc. Maecenas a risus est. Praesent vel enim in urna ultrices imperdiet. Nam quis ultrices quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nNullam ultricies, tellus eget tempor hendrerit, enim nulla varius ante, nec scelerisque lorem turpis sit amet sapien. Integer dictum elit quis auctor tempus. Nulla pellentesque venenatis dignissim. Maecenas rutrum, urna non feugiat pretium, tortor libero suscipit nisl, non malesuada ipsum tortor eget augue. Cras finibus non nunc a pellentesque. Ut ac mi a velit tempor elementum quis vitae lacus. Morbi a consequat dui, id accumsan velit. Ut in commodo mauris. Mauris facilisis et ligula in luctus. Nullam interdum egestas sapien quis pharetra. Sed in gravida lorem.\r\n\r\nFusce mollis urna in sollicitudin fermentum. Nullam at tempor lacus. Suspendisse venenatis, leo sit amet vulputate porttitor, sem urna mollis nisl, vitae fringilla massa diam eget mi. Integer vehicula neque vitae tellus maximus, et sodales ex faucibus. Maecenas orci mi, consequat vitae pulvinar vitae, convallis at ipsum. Quisque at erat nec turpis faucibus ullamcorper. Sed vitae urna facilisis, imperdiet massa id, tincidunt felis. Aliquam imperdiet, sem vitae viverra mattis, erat ante venenatis urna, nec vestibulum ligula quam ac mauris. Maecenas viverra magna non posuere ornare. Sed ut nisi quis elit hendrerit viverra.\r\n\r\nSuspendisse cursus neque dolor, vitae suscipit dolor mattis at. Nam vehicula nunc sit amet ipsum fringilla vulputate. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur consequat id quam eget tempor. Cras fermentum diam ac lacus congue, sit amet dignissim metus aliquam. Vestibulum convallis dui placerat lacus fermentum, id facilisis sapien pretium. Ut elementum tincidunt mi nec auctor. Maecenas semper est risus, non auctor lorem accumsan in. Nam mattis, massa at tincidunt egestas, sem lacus tempus nunc, in consequat odio ex nec purus.', '5 Ejercicios de estiramiento', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2023-03-26 00:28:59', '2023-03-26 03:28:59', '', 98, 'http://localhost/gymfitness/?p=99', 0, 'revision', '', 0),
(100, 1, '2023-03-26 00:29:53', '2023-03-26 03:29:53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue lectus eu sem blandit, a eleifend risus fringilla. Sed tristique lacus nec purus sagittis vehicula ac id elit. Vivamus elementum eget libero ac imperdiet. Maecenas dapibus, leo vitae fringilla volutpat, augue velit facilisis ligula, sit amet sagittis neque urna at odio. Cras viverra dolor in felis sollicitudin tempus. Morbi nulla velit, gravida sit amet aliquam nec, consequat sed orci. Praesent volutpat purus nec elementum varius. Praesent ornare mattis dui eget placerat. Sed lacinia risus erat, eget ultricies tellus aliquam eu. Nulla turpis nisi, tincidunt ac odio quis, tincidunt maximus tortor. Aenean id consequat nunc. Maecenas a risus est. Praesent vel enim in urna ultrices imperdiet. Nam quis ultrices quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nNullam ultricies, tellus eget tempor hendrerit, enim nulla varius ante, nec scelerisque lorem turpis sit amet sapien. Integer dictum elit quis auctor tempus. Nulla pellentesque venenatis dignissim. Maecenas rutrum, urna non feugiat pretium, tortor libero suscipit nisl, non malesuada ipsum tortor eget augue. Cras finibus non nunc a pellentesque. Ut ac mi a velit tempor elementum quis vitae lacus. Morbi a consequat dui, id accumsan velit. Ut in commodo mauris. Mauris facilisis et ligula in luctus. Nullam interdum egestas sapien quis pharetra. Sed in gravida lorem.\r\n\r\nFusce mollis urna in sollicitudin fermentum. Nullam at tempor lacus. Suspendisse venenatis, leo sit amet vulputate porttitor, sem urna mollis nisl, vitae fringilla massa diam eget mi. Integer vehicula neque vitae tellus maximus, et sodales ex faucibus. Maecenas orci mi, consequat vitae pulvinar vitae, convallis at ipsum. Quisque at erat nec turpis faucibus ullamcorper. Sed vitae urna facilisis, imperdiet massa id, tincidunt felis. Aliquam imperdiet, sem vitae viverra mattis, erat ante venenatis urna, nec vestibulum ligula quam ac mauris. Maecenas viverra magna non posuere ornare. Sed ut nisi quis elit hendrerit viverra.\r\n\r\nSuspendisse cursus neque dolor, vitae suscipit dolor mattis at. Nam vehicula nunc sit amet ipsum fringilla vulputate. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur consequat id quam eget tempor. Cras fermentum diam ac lacus congue, sit amet dignissim metus aliquam. Vestibulum convallis dui placerat lacus fermentum, id facilisis sapien pretium. Ut elementum tincidunt mi nec auctor. Maecenas semper est risus, non auctor lorem accumsan in. Nam mattis, massa at tincidunt egestas, sem lacus tempus nunc, in consequat odio ex nec purus.', 'Cómo comenzar una rutina', '', 'publish', 'open', 'open', '', 'como-comenzar-una-rutina', '', '', '2023-03-26 00:29:53', '2023-03-26 03:29:53', '', 0, 'http://localhost/gymfitness/?p=100', 0, 'post', '', 0),
(101, 1, '2023-03-26 00:29:53', '2023-03-26 03:29:53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue lectus eu sem blandit, a eleifend risus fringilla. Sed tristique lacus nec purus sagittis vehicula ac id elit. Vivamus elementum eget libero ac imperdiet. Maecenas dapibus, leo vitae fringilla volutpat, augue velit facilisis ligula, sit amet sagittis neque urna at odio. Cras viverra dolor in felis sollicitudin tempus. Morbi nulla velit, gravida sit amet aliquam nec, consequat sed orci. Praesent volutpat purus nec elementum varius. Praesent ornare mattis dui eget placerat. Sed lacinia risus erat, eget ultricies tellus aliquam eu. Nulla turpis nisi, tincidunt ac odio quis, tincidunt maximus tortor. Aenean id consequat nunc. Maecenas a risus est. Praesent vel enim in urna ultrices imperdiet. Nam quis ultrices quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nNullam ultricies, tellus eget tempor hendrerit, enim nulla varius ante, nec scelerisque lorem turpis sit amet sapien. Integer dictum elit quis auctor tempus. Nulla pellentesque venenatis dignissim. Maecenas rutrum, urna non feugiat pretium, tortor libero suscipit nisl, non malesuada ipsum tortor eget augue. Cras finibus non nunc a pellentesque. Ut ac mi a velit tempor elementum quis vitae lacus. Morbi a consequat dui, id accumsan velit. Ut in commodo mauris. Mauris facilisis et ligula in luctus. Nullam interdum egestas sapien quis pharetra. Sed in gravida lorem.\r\n\r\nFusce mollis urna in sollicitudin fermentum. Nullam at tempor lacus. Suspendisse venenatis, leo sit amet vulputate porttitor, sem urna mollis nisl, vitae fringilla massa diam eget mi. Integer vehicula neque vitae tellus maximus, et sodales ex faucibus. Maecenas orci mi, consequat vitae pulvinar vitae, convallis at ipsum. Quisque at erat nec turpis faucibus ullamcorper. Sed vitae urna facilisis, imperdiet massa id, tincidunt felis. Aliquam imperdiet, sem vitae viverra mattis, erat ante venenatis urna, nec vestibulum ligula quam ac mauris. Maecenas viverra magna non posuere ornare. Sed ut nisi quis elit hendrerit viverra.\r\n\r\nSuspendisse cursus neque dolor, vitae suscipit dolor mattis at. Nam vehicula nunc sit amet ipsum fringilla vulputate. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur consequat id quam eget tempor. Cras fermentum diam ac lacus congue, sit amet dignissim metus aliquam. Vestibulum convallis dui placerat lacus fermentum, id facilisis sapien pretium. Ut elementum tincidunt mi nec auctor. Maecenas semper est risus, non auctor lorem accumsan in. Nam mattis, massa at tincidunt egestas, sem lacus tempus nunc, in consequat odio ex nec purus.', 'Cómo comenzar una rutina', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2023-03-26 00:29:53', '2023-03-26 03:29:53', '', 100, 'http://localhost/gymfitness/?p=101', 0, 'revision', '', 0),
(102, 1, '2023-03-26 00:30:23', '2023-03-26 03:30:23', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue lectus eu sem blandit, a eleifend risus fringilla. Sed tristique lacus nec purus sagittis vehicula ac id elit. Vivamus elementum eget libero ac imperdiet. Maecenas dapibus, leo vitae fringilla volutpat, augue velit facilisis ligula, sit amet sagittis neque urna at odio. Cras viverra dolor in felis sollicitudin tempus. Morbi nulla velit, gravida sit amet aliquam nec, consequat sed orci. Praesent volutpat purus nec elementum varius. Praesent ornare mattis dui eget placerat. Sed lacinia risus erat, eget ultricies tellus aliquam eu. Nulla turpis nisi, tincidunt ac odio quis, tincidunt maximus tortor. Aenean id consequat nunc. Maecenas a risus est. Praesent vel enim in urna ultrices imperdiet. Nam quis ultrices quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nNullam ultricies, tellus eget tempor hendrerit, enim nulla varius ante, nec scelerisque lorem turpis sit amet sapien. Integer dictum elit quis auctor tempus. Nulla pellentesque venenatis dignissim. Maecenas rutrum, urna non feugiat pretium, tortor libero suscipit nisl, non malesuada ipsum tortor eget augue. Cras finibus non nunc a pellentesque. Ut ac mi a velit tempor elementum quis vitae lacus. Morbi a consequat dui, id accumsan velit. Ut in commodo mauris. Mauris facilisis et ligula in luctus. Nullam interdum egestas sapien quis pharetra. Sed in gravida lorem.\r\n\r\nFusce mollis urna in sollicitudin fermentum. Nullam at tempor lacus. Suspendisse venenatis, leo sit amet vulputate porttitor, sem urna mollis nisl, vitae fringilla massa diam eget mi. Integer vehicula neque vitae tellus maximus, et sodales ex faucibus. Maecenas orci mi, consequat vitae pulvinar vitae, convallis at ipsum. Quisque at erat nec turpis faucibus ullamcorper. Sed vitae urna facilisis, imperdiet massa id, tincidunt felis. Aliquam imperdiet, sem vitae viverra mattis, erat ante venenatis urna, nec vestibulum ligula quam ac mauris. Maecenas viverra magna non posuere ornare. Sed ut nisi quis elit hendrerit viverra.\r\n\r\nSuspendisse cursus neque dolor, vitae suscipit dolor mattis at. Nam vehicula nunc sit amet ipsum fringilla vulputate. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur consequat id quam eget tempor. Cras fermentum diam ac lacus congue, sit amet dignissim metus aliquam. Vestibulum convallis dui placerat lacus fermentum, id facilisis sapien pretium. Ut elementum tincidunt mi nec auctor. Maecenas semper est risus, non auctor lorem accumsan in. Nam mattis, massa at tincidunt egestas, sem lacus tempus nunc, in consequat odio ex nec purus.', '5 Ejercicios con barras', '', 'publish', 'open', 'open', '', '5-ejercicios-con-barras', '', '', '2023-03-26 01:14:20', '2023-03-26 04:14:20', '', 0, 'http://localhost/gymfitness/?p=102', 0, 'post', '', 0),
(103, 1, '2023-03-26 00:30:23', '2023-03-26 03:30:23', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue lectus eu sem blandit, a eleifend risus fringilla. Sed tristique lacus nec purus sagittis vehicula ac id elit. Vivamus elementum eget libero ac imperdiet. Maecenas dapibus, leo vitae fringilla volutpat, augue velit facilisis ligula, sit amet sagittis neque urna at odio. Cras viverra dolor in felis sollicitudin tempus. Morbi nulla velit, gravida sit amet aliquam nec, consequat sed orci. Praesent volutpat purus nec elementum varius. Praesent ornare mattis dui eget placerat. Sed lacinia risus erat, eget ultricies tellus aliquam eu. Nulla turpis nisi, tincidunt ac odio quis, tincidunt maximus tortor. Aenean id consequat nunc. Maecenas a risus est. Praesent vel enim in urna ultrices imperdiet. Nam quis ultrices quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nNullam ultricies, tellus eget tempor hendrerit, enim nulla varius ante, nec scelerisque lorem turpis sit amet sapien. Integer dictum elit quis auctor tempus. Nulla pellentesque venenatis dignissim. Maecenas rutrum, urna non feugiat pretium, tortor libero suscipit nisl, non malesuada ipsum tortor eget augue. Cras finibus non nunc a pellentesque. Ut ac mi a velit tempor elementum quis vitae lacus. Morbi a consequat dui, id accumsan velit. Ut in commodo mauris. Mauris facilisis et ligula in luctus. Nullam interdum egestas sapien quis pharetra. Sed in gravida lorem.\r\n\r\nFusce mollis urna in sollicitudin fermentum. Nullam at tempor lacus. Suspendisse venenatis, leo sit amet vulputate porttitor, sem urna mollis nisl, vitae fringilla massa diam eget mi. Integer vehicula neque vitae tellus maximus, et sodales ex faucibus. Maecenas orci mi, consequat vitae pulvinar vitae, convallis at ipsum. Quisque at erat nec turpis faucibus ullamcorper. Sed vitae urna facilisis, imperdiet massa id, tincidunt felis. Aliquam imperdiet, sem vitae viverra mattis, erat ante venenatis urna, nec vestibulum ligula quam ac mauris. Maecenas viverra magna non posuere ornare. Sed ut nisi quis elit hendrerit viverra.\r\n\r\nSuspendisse cursus neque dolor, vitae suscipit dolor mattis at. Nam vehicula nunc sit amet ipsum fringilla vulputate. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur consequat id quam eget tempor. Cras fermentum diam ac lacus congue, sit amet dignissim metus aliquam. Vestibulum convallis dui placerat lacus fermentum, id facilisis sapien pretium. Ut elementum tincidunt mi nec auctor. Maecenas semper est risus, non auctor lorem accumsan in. Nam mattis, massa at tincidunt egestas, sem lacus tempus nunc, in consequat odio ex nec purus.', '5 Ejercicios con barras', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2023-03-26 00:30:23', '2023-03-26 03:30:23', '', 102, 'http://localhost/gymfitness/?p=103', 0, 'revision', '', 0),
(104, 1, '2023-03-26 00:31:08', '2023-03-26 03:31:08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue lectus eu sem blandit, a eleifend risus fringilla. Sed tristique lacus nec purus sagittis vehicula ac id elit. Vivamus elementum eget libero ac imperdiet. Maecenas dapibus, leo vitae fringilla volutpat, augue velit facilisis ligula, sit amet sagittis neque urna at odio. Cras viverra dolor in felis sollicitudin tempus. Morbi nulla velit, gravida sit amet aliquam nec, consequat sed orci. Praesent volutpat purus nec elementum varius. Praesent ornare mattis dui eget placerat. Sed lacinia risus erat, eget ultricies tellus aliquam eu. Nulla turpis nisi, tincidunt ac odio quis, tincidunt maximus tortor. Aenean id consequat nunc. Maecenas a risus est. Praesent vel enim in urna ultrices imperdiet. Nam quis ultrices quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nNullam ultricies, tellus eget tempor hendrerit, enim nulla varius ante, nec scelerisque lorem turpis sit amet sapien. Integer dictum elit quis auctor tempus. Nulla pellentesque venenatis dignissim. Maecenas rutrum, urna non feugiat pretium, tortor libero suscipit nisl, non malesuada ipsum tortor eget augue. Cras finibus non nunc a pellentesque. Ut ac mi a velit tempor elementum quis vitae lacus. Morbi a consequat dui, id accumsan velit. Ut in commodo mauris. Mauris facilisis et ligula in luctus. Nullam interdum egestas sapien quis pharetra. Sed in gravida lorem.\r\n\r\nFusce mollis urna in sollicitudin fermentum. Nullam at tempor lacus. Suspendisse venenatis, leo sit amet vulputate porttitor, sem urna mollis nisl, vitae fringilla massa diam eget mi. Integer vehicula neque vitae tellus maximus, et sodales ex faucibus. Maecenas orci mi, consequat vitae pulvinar vitae, convallis at ipsum. Quisque at erat nec turpis faucibus ullamcorper. Sed vitae urna facilisis, imperdiet massa id, tincidunt felis. Aliquam imperdiet, sem vitae viverra mattis, erat ante venenatis urna, nec vestibulum ligula quam ac mauris. Maecenas viverra magna non posuere ornare. Sed ut nisi quis elit hendrerit viverra.\r\n\r\nSuspendisse cursus neque dolor, vitae suscipit dolor mattis at. Nam vehicula nunc sit amet ipsum fringilla vulputate. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur consequat id quam eget tempor. Cras fermentum diam ac lacus congue, sit amet dignissim metus aliquam. Vestibulum convallis dui placerat lacus fermentum, id facilisis sapien pretium. Ut elementum tincidunt mi nec auctor. Maecenas semper est risus, non auctor lorem accumsan in. Nam mattis, massa at tincidunt egestas, sem lacus tempus nunc, in consequat odio ex nec purus.', 'Ejercicios para tu primer semana', '', 'publish', 'open', 'open', '', 'ejercicios-para-tu-primer-semana', '', '', '2023-03-26 00:31:08', '2023-03-26 03:31:08', '', 0, 'http://localhost/gymfitness/?p=104', 0, 'post', '', 0),
(105, 1, '2023-03-26 00:31:08', '2023-03-26 03:31:08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue lectus eu sem blandit, a eleifend risus fringilla. Sed tristique lacus nec purus sagittis vehicula ac id elit. Vivamus elementum eget libero ac imperdiet. Maecenas dapibus, leo vitae fringilla volutpat, augue velit facilisis ligula, sit amet sagittis neque urna at odio. Cras viverra dolor in felis sollicitudin tempus. Morbi nulla velit, gravida sit amet aliquam nec, consequat sed orci. Praesent volutpat purus nec elementum varius. Praesent ornare mattis dui eget placerat. Sed lacinia risus erat, eget ultricies tellus aliquam eu. Nulla turpis nisi, tincidunt ac odio quis, tincidunt maximus tortor. Aenean id consequat nunc. Maecenas a risus est. Praesent vel enim in urna ultrices imperdiet. Nam quis ultrices quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nNullam ultricies, tellus eget tempor hendrerit, enim nulla varius ante, nec scelerisque lorem turpis sit amet sapien. Integer dictum elit quis auctor tempus. Nulla pellentesque venenatis dignissim. Maecenas rutrum, urna non feugiat pretium, tortor libero suscipit nisl, non malesuada ipsum tortor eget augue. Cras finibus non nunc a pellentesque. Ut ac mi a velit tempor elementum quis vitae lacus. Morbi a consequat dui, id accumsan velit. Ut in commodo mauris. Mauris facilisis et ligula in luctus. Nullam interdum egestas sapien quis pharetra. Sed in gravida lorem.\r\n\r\nFusce mollis urna in sollicitudin fermentum. Nullam at tempor lacus. Suspendisse venenatis, leo sit amet vulputate porttitor, sem urna mollis nisl, vitae fringilla massa diam eget mi. Integer vehicula neque vitae tellus maximus, et sodales ex faucibus. Maecenas orci mi, consequat vitae pulvinar vitae, convallis at ipsum. Quisque at erat nec turpis faucibus ullamcorper. Sed vitae urna facilisis, imperdiet massa id, tincidunt felis. Aliquam imperdiet, sem vitae viverra mattis, erat ante venenatis urna, nec vestibulum ligula quam ac mauris. Maecenas viverra magna non posuere ornare. Sed ut nisi quis elit hendrerit viverra.\r\n\r\nSuspendisse cursus neque dolor, vitae suscipit dolor mattis at. Nam vehicula nunc sit amet ipsum fringilla vulputate. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur consequat id quam eget tempor. Cras fermentum diam ac lacus congue, sit amet dignissim metus aliquam. Vestibulum convallis dui placerat lacus fermentum, id facilisis sapien pretium. Ut elementum tincidunt mi nec auctor. Maecenas semper est risus, non auctor lorem accumsan in. Nam mattis, massa at tincidunt egestas, sem lacus tempus nunc, in consequat odio ex nec purus.', 'Ejercicios para tu primer semana', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2023-03-26 00:31:08', '2023-03-26 03:31:08', '', 104, 'http://localhost/gymfitness/?p=105', 0, 'revision', '', 0),
(106, 1, '2023-03-26 01:33:23', '2023-03-26 04:33:23', '<label> Tu nombre\n    [text* your-name autocomplete:name] </label>\n\n<label> Tu correo electrónico\n    [email* your-email autocomplete:email] </label>\n\n<label> Asunto\n    [text* your-subject] </label>\n\n<label> Tu mensaje (opcional)\n    [textarea your-message] </label>\n\n[submit \"Enviar\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <nadinperez6@gmail.com>\nDe: [your-name] [your-email]\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <nadinperez6@gmail.com>\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nGracias por tu mensaje, ya ha sido enviado.\nHubo un error al intentar enviar tu mensaje. Intentalo de nuevo después.\nUno o más campos tienen un error. Por favor, revisá e intentalo de nuevo.\nHubo un error al intentar enviar tu mensaje. Intentalo de nuevo después.\nTenés que aceptar los términos y condiciones antes de enviar tu mensaje.\nPor favor, rellená este campo.\nEste campo tiene una entrada demasiado larga.\nEste campo tiene una entrada demasiado corta.\nHubo un error desconocido subiendo el archivo.\nNo tenés permisos para subir archivos de este tipo.\nEl archivo subido es demasiado grande.\nHubo un error al subir el archivo.', 'Formulario de contacto 1', '', 'publish', 'closed', 'closed', '', 'formulario-de-contacto-1', '', '', '2023-03-26 01:33:23', '2023-03-26 04:33:23', '', 0, 'http://localhost/gymfitness/?post_type=wpcf7_contact_form&p=106', 0, 'wpcf7_contact_form', '', 0),
(107, 1, '2023-03-26 01:36:11', '2023-03-26 04:36:11', '<!-- wp:paragraph -->\r\n<p>[contact-form-7 id=\"106\" title=\"Formulario de contacto 1\"]</p>\r\n<!-- /wp:paragraph -->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2023-03-26 01:36:11', '2023-03-26 04:36:11', '', 9, 'http://localhost/gymfitness/?p=107', 0, 'revision', '', 0),
(108, 1, '2023-03-26 01:55:04', '2023-03-26 04:55:04', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"9\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Contacto', 'contacto', 'publish', 'closed', 'closed', '', 'group_641fcf5dc1d22', '', '', '2023-03-26 01:59:41', '2023-03-26 04:59:41', '', 0, 'http://localhost/gymfitness/?post_type=acf-field-group&#038;p=108', 0, 'acf-field-group', '', 0),
(109, 1, '2023-03-26 01:55:53', '2023-03-26 04:55:53', 'a:14:{s:10:\"center_lat\";d:-31.429786;s:10:\"center_lng\";d:-62.0861738155;s:4:\"zoom\";i:16;s:6:\"height\";i:400;s:13:\"return_format\";s:7:\"leaflet\";s:16:\"allow_map_layers\";i:1;s:11:\"max_markers\";s:0:\"\";s:6:\"layers\";a:1:{i:0;s:20:\"OpenStreetMap.Mapnik\";}s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:15:\"open_street_map\";s:12:\"instructions\";s:34:\"Arrastre el pin hacia su ubicacion\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}}', 'ubicacion', 'ubicacion', 'publish', 'closed', 'closed', '', 'field_641fd0297ac62', '', '', '2023-03-26 01:59:41', '2023-03-26 04:59:41', '', 108, 'http://localhost/gymfitness/?post_type=acf-field&#038;p=109', 0, 'acf-field', '', 0),
(110, 1, '2023-03-26 02:00:48', '2023-03-26 05:00:48', '<!-- wp:paragraph -->\r\n<p>[contact-form-7 id=\"106\" title=\"Formulario de contacto 1\"]</p>\r\n<!-- /wp:paragraph -->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2023-03-26 02:00:48', '2023-03-26 05:00:48', '', 9, 'http://localhost/gymfitness/?p=110', 0, 'revision', '', 0),
(111, 1, '2023-03-26 02:05:20', '2023-03-26 05:05:20', '<!-- wp:paragraph -->\r\n<p>[gymfitness_ubicacion]</p>\r\n<p>[contact-form-7 id=\"106\" title=\"Formulario de contacto 1\"]</p>\r\n<!-- /wp:paragraph -->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2023-03-26 02:05:20', '2023-03-26 05:05:20', '', 9, 'http://localhost/gymfitness/?p=111', 0, 'revision', '', 0),
(112, 1, '2023-03-26 02:06:06', '2023-03-26 05:06:06', '<!-- wp:paragraph -->\r\n<p>[gymfitness_ubicacion]</p>\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2023-03-26 02:06:06', '2023-03-26 05:06:06', '', 9, 'http://localhost/gymfitness/?p=112', 0, 'revision', '', 0),
(113, 1, '2023-03-26 18:55:18', '2023-03-26 21:55:18', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"6\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Pagina de Inicio', 'pagina-de-inicio', 'publish', 'closed', 'closed', '', 'group_6420bf3a1b49a', '', '', '2023-03-26 21:11:06', '2023-03-27 00:11:06', '', 0, 'http://localhost/gymfitness/?post_type=acf-field-group&#038;p=113', 0, 'acf-field-group', '', 0),
(115, 1, '2023-03-26 18:57:12', '2023-03-26 21:57:12', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Encabezado Bienvenida', 'encabezado_bienvenida', 'publish', 'closed', 'closed', '', 'field_6420bf552866d', '', '', '2023-03-26 20:53:39', '2023-03-26 23:53:39', '', 113, 'http://localhost/gymfitness/?post_type=acf-field&#038;p=115', 1, 'acf-field', '', 0),
(116, 1, '2023-03-26 18:57:12', '2023-03-26 21:57:12', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Texto Bienvenida', 'texto_bienvenida', 'publish', 'closed', 'closed', '', 'field_6420bf842866e', '', '', '2023-03-26 20:53:39', '2023-03-26 23:53:39', '', 113, 'http://localhost/gymfitness/?post_type=acf-field&#038;p=116', 2, 'acf-field', '', 0),
(117, 1, '2023-03-26 18:58:11', '2023-03-26 21:58:11', '<!-- wp:paragraph -->\r\n<p>Pagina de Inicio</p>\r\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-03-26 18:58:11', '2023-03-26 21:58:11', '', 6, 'http://localhost/gymfitness/?p=117', 0, 'revision', '', 0),
(118, 1, '2023-03-26 18:59:57', '2023-03-26 21:59:57', '<!-- wp:paragraph -->\r\n<p>Pagina de Inicio</p>\r\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-03-26 18:59:57', '2023-03-26 21:59:57', '', 6, 'http://localhost/gymfitness/?p=118', 0, 'revision', '', 0),
(119, 1, '2023-03-26 19:18:35', '2023-03-26 22:18:35', '<!-- wp:paragraph -->\r\n<p>Pagina de Inicio</p>\r\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-03-26 19:18:35', '2023-03-26 22:18:35', '', 6, 'http://localhost/gymfitness/?p=119', 0, 'revision', '', 0),
(120, 1, '2023-03-26 19:19:07', '2023-03-26 22:19:07', '<!-- wp:paragraph -->\r\n<p>Pagina de Inicio</p>\r\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-03-26 19:19:07', '2023-03-26 22:19:07', '', 6, 'http://localhost/gymfitness/?p=120', 0, 'revision', '', 0),
(121, 1, '2023-03-26 19:21:58', '2023-03-26 22:21:58', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Area 1', 'area_1', 'publish', 'closed', 'closed', '', 'field_6420c5174c754', '', '', '2023-03-26 20:53:40', '2023-03-26 23:53:40', '', 113, 'http://localhost/gymfitness/?post_type=acf-field&#038;p=121', 4, 'acf-field', '', 0),
(122, 1, '2023-03-26 19:21:59', '2023-03-26 22:21:59', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Imagen', 'imagen', 'publish', 'closed', 'closed', '', 'field_6420c5454c755', '', '', '2023-03-26 19:21:59', '2023-03-26 22:21:59', '', 121, 'http://localhost/gymfitness/?post_type=acf-field&p=122', 0, 'acf-field', '', 0),
(123, 1, '2023-03-26 19:21:59', '2023-03-26 22:21:59', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Texto', 'texto', 'publish', 'closed', 'closed', '', 'field_6420c5794c757', '', '', '2023-03-26 19:21:59', '2023-03-26 22:21:59', '', 121, 'http://localhost/gymfitness/?post_type=acf-field&p=123', 1, 'acf-field', '', 0),
(124, 1, '2023-03-26 19:23:58', '2023-03-26 22:23:58', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Bienvenida', 'bienvenida', 'publish', 'closed', 'closed', '', 'field_6420c5a4fd9f0', '', '', '2023-03-26 20:53:39', '2023-03-26 23:53:39', '', 113, 'http://localhost/gymfitness/?post_type=acf-field&#038;p=124', 0, 'acf-field', '', 0),
(125, 1, '2023-03-26 19:23:58', '2023-03-26 22:23:58', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Areas', 'bienvenida_copy', 'publish', 'closed', 'closed', '', 'field_6420c5d2fd9f1', '', '', '2023-03-26 20:53:39', '2023-03-26 23:53:39', '', 113, 'http://localhost/gymfitness/?post_type=acf-field&#038;p=125', 3, 'acf-field', '', 0),
(126, 1, '2023-03-26 19:25:17', '2023-03-26 22:25:17', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Area 2', 'area_2', 'publish', 'closed', 'closed', '', 'field_6420c63486b14', '', '', '2023-03-26 20:53:40', '2023-03-26 23:53:40', '', 113, 'http://localhost/gymfitness/?post_type=acf-field&#038;p=126', 5, 'acf-field', '', 0),
(127, 1, '2023-03-26 19:25:17', '2023-03-26 22:25:17', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Imagen', 'imagen', 'publish', 'closed', 'closed', '', 'field_6420c63486b15', '', '', '2023-03-26 19:25:17', '2023-03-26 22:25:17', '', 126, 'http://localhost/gymfitness/?post_type=acf-field&p=127', 0, 'acf-field', '', 0),
(128, 1, '2023-03-26 19:25:17', '2023-03-26 22:25:17', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Texto', 'texto', 'publish', 'closed', 'closed', '', 'field_6420c63486b16', '', '', '2023-03-26 19:25:17', '2023-03-26 22:25:17', '', 126, 'http://localhost/gymfitness/?post_type=acf-field&p=128', 1, 'acf-field', '', 0),
(129, 1, '2023-03-26 19:25:17', '2023-03-26 22:25:17', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Area 3', 'area_3', 'publish', 'closed', 'closed', '', 'field_6420c62886b11', '', '', '2023-03-26 20:53:40', '2023-03-26 23:53:40', '', 113, 'http://localhost/gymfitness/?post_type=acf-field&#038;p=129', 6, 'acf-field', '', 0),
(130, 1, '2023-03-26 19:25:17', '2023-03-26 22:25:17', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Imagen', 'imagen', 'publish', 'closed', 'closed', '', 'field_6420c62886b12', '', '', '2023-03-26 19:25:17', '2023-03-26 22:25:17', '', 129, 'http://localhost/gymfitness/?post_type=acf-field&p=130', 0, 'acf-field', '', 0),
(131, 1, '2023-03-26 19:25:17', '2023-03-26 22:25:17', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Texto', 'texto', 'publish', 'closed', 'closed', '', 'field_6420c62886b13', '', '', '2023-03-26 19:25:17', '2023-03-26 22:25:17', '', 129, 'http://localhost/gymfitness/?post_type=acf-field&p=131', 1, 'acf-field', '', 0),
(132, 1, '2023-03-26 19:25:52', '2023-03-26 22:25:52', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Area 4', 'area_4', 'publish', 'closed', 'closed', '', 'field_6420c66da094e', '', '', '2023-03-26 20:53:41', '2023-03-26 23:53:41', '', 113, 'http://localhost/gymfitness/?post_type=acf-field&#038;p=132', 7, 'acf-field', '', 0),
(133, 1, '2023-03-26 19:25:52', '2023-03-26 22:25:52', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Imagen', 'imagen', 'publish', 'closed', 'closed', '', 'field_6420c66da094f', '', '', '2023-03-26 19:25:52', '2023-03-26 22:25:52', '', 132, 'http://localhost/gymfitness/?post_type=acf-field&p=133', 0, 'acf-field', '', 0),
(134, 1, '2023-03-26 19:25:52', '2023-03-26 22:25:52', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Texto', 'texto', 'publish', 'closed', 'closed', '', 'field_6420c66da0950', '', '', '2023-03-26 19:25:52', '2023-03-26 22:25:52', '', 132, 'http://localhost/gymfitness/?post_type=acf-field&p=134', 1, 'acf-field', '', 0),
(135, 1, '2023-03-26 19:27:18', '2023-03-26 22:27:18', '<!-- wp:paragraph -->\r\n<p>Pagina de Inicio</p>\r\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-03-26 19:27:18', '2023-03-26 22:27:18', '', 6, 'http://localhost/gymfitness/?p=135', 0, 'revision', '', 0),
(136, 1, '2023-03-26 20:56:34', '2023-03-26 23:56:34', '<!-- wp:paragraph -->\r\n<p>Pagina de Inicio</p>\r\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-03-26 20:56:34', '2023-03-26 23:56:34', '', 6, 'http://localhost/gymfitness/?p=136', 0, 'revision', '', 0),
(137, 1, '2023-03-26 20:56:36', '2023-03-26 23:56:36', '<!-- wp:paragraph -->\n<p>Pagina de Inicio</p>\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '6-autosave-v1', '', '', '2023-03-26 20:56:36', '2023-03-26 23:56:36', '', 6, 'http://localhost/gymfitness/?p=137', 0, 'revision', '', 0),
(138, 1, '2023-03-26 20:56:51', '2023-03-26 23:56:51', '<!-- wp:paragraph -->\r\n<p>Pagina de Inicio</p>\r\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-03-26 20:56:51', '2023-03-26 23:56:51', '', 6, 'http://localhost/gymfitness/?p=138', 0, 'revision', '', 0),
(139, 1, '2023-03-26 21:11:59', '2023-03-27 00:11:59', '<!-- wp:paragraph -->\r\n<p>Pagina de Inicio</p>\r\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-03-26 21:11:59', '2023-03-27 00:11:59', '', 6, 'http://localhost/gymfitness/?p=139', 0, 'revision', '', 0),
(140, 1, '2023-03-26 21:12:12', '2023-03-27 00:12:12', '<!-- wp:paragraph -->\r\n<p>Pagina de Inicio</p>\r\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-03-26 21:12:12', '2023-03-27 00:12:12', '', 6, 'http://localhost/gymfitness/?p=140', 0, 'revision', '', 0),
(141, 1, '2023-03-26 21:33:01', '2023-03-27 00:33:01', '<p style=\"text-align: center;\">Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.</p>', 'Nuestras Clases', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2023-03-26 21:33:01', '2023-03-27 00:33:01', '', 24, 'http://localhost/gymfitness/?p=141', 0, 'revision', '', 0),
(142, 1, '2023-03-26 21:45:59', '2023-03-27 00:45:59', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"instructores\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Instructores', 'instructores', 'publish', 'closed', 'closed', '', 'group_6420e6cdc351e', '', '', '2023-03-26 22:19:17', '2023-03-27 01:19:17', '', 0, 'http://localhost/gymfitness/?post_type=acf-field-group&#038;p=142', 0, 'acf-field-group', '', 0),
(143, 1, '2023-03-26 21:45:59', '2023-03-27 00:45:59', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:6:{s:5:\"pesas\";s:5:\"Pesas\";s:6:\"cardio\";s:6:\"Cardio\";s:17:\"acondicionamiento\";s:17:\"Acondicionamiento\";s:4:\"yoga\";s:4:\"Yoga\";s:8:\"spinning\";s:8:\"Spinning\";s:5:\"boxeo\";s:5:\"Boxeo\";}s:13:\"default_value\";a:0:{}s:13:\"return_format\";s:5:\"label\";s:12:\"allow_custom\";i:0;s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:11:\"save_custom\";i:0;}', 'Especialidad', 'especialidad', 'publish', 'closed', 'closed', '', 'field_6420e6cedb272', '', '', '2023-03-26 22:19:17', '2023-03-27 01:19:17', '', 142, 'http://localhost/gymfitness/?post_type=acf-field&#038;p=143', 0, 'acf-field', '', 0),
(144, 1, '2023-03-26 22:09:02', '2023-03-27 01:09:02', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'Juan', '', 'publish', 'closed', 'closed', '', 'juan', '', '', '2023-03-26 22:09:02', '2023-03-27 01:09:02', '', 0, 'http://localhost/gymfitness/?post_type=instructores&#038;p=144', 0, 'instructores', '', 0),
(145, 1, '2023-03-26 22:09:21', '2023-03-27 01:09:21', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'Andrea', '', 'publish', 'closed', 'closed', '', 'andrea', '', '', '2023-03-26 22:09:21', '2023-03-27 01:09:21', '', 0, 'http://localhost/gymfitness/?post_type=instructores&#038;p=145', 0, 'instructores', '', 0),
(146, 1, '2023-03-26 22:09:45', '2023-03-27 01:09:45', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'Vanesa', '', 'publish', 'closed', 'closed', '', 'vanesa', '', '', '2023-03-26 22:09:45', '2023-03-27 01:09:45', '', 0, 'http://localhost/gymfitness/?post_type=instructores&#038;p=146', 0, 'instructores', '', 0),
(147, 1, '2023-03-26 22:10:03', '2023-03-27 01:10:03', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'Pedro', '', 'publish', 'closed', 'closed', '', 'pedro', '', '', '2023-03-26 22:10:03', '2023-03-27 01:10:03', '', 0, 'http://localhost/gymfitness/?post_type=instructores&#038;p=147', 0, 'instructores', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Menu Principal', 'menu-principal', 0),
(3, 'Tips', 'tips', 0),
(4, 'Ejercicios', 'ejercicios', 0),
(5, 'Basicos', 'basicos', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(15, 2, 0),
(17, 2, 0),
(18, 2, 0),
(26, 2, 0),
(27, 2, 0),
(28, 2, 0),
(85, 1, 0),
(87, 1, 0),
(89, 1, 0),
(98, 3, 0),
(98, 4, 0),
(100, 3, 0),
(100, 4, 0),
(100, 5, 0),
(102, 4, 0),
(104, 3, 0),
(104, 4, 0),
(104, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'category', '', 0, 3),
(4, 4, 'category', '', 0, 4),
(5, 5, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', 'Nadin'),
(3, 1, 'last_name', 'Perez'),
(4, 1, 'description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam congue lectus eu sem blandit, a eleifend risus fringilla. Sed tristique lacus nec purus sagittis vehicula ac id elit.'),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:10:{s:64:\"192918f186766615359b6c6b1eba66eb1184d137366baf7530bf45097231d5f6\";a:4:{s:10:\"expiration\";i:1680558838;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";s:5:\"login\";i:1679349238;}s:64:\"f2400f01dd25ac44bc6816945d3da480222cb559b10ba19b11cf8f8b6ea8da16\";a:4:{s:10:\"expiration\";i:1680639784;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";s:5:\"login\";i:1679430184;}s:64:\"a5591771de819321874ef29804065f0987e42fddadccdda5ce75bc541939b077\";a:4:{s:10:\"expiration\";i:1679871338;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";s:5:\"login\";i:1679698538;}s:64:\"4f8ecdd3a4fa1547a83163fb6eecae0ffd70432afb4c75706e5359e74f61a194\";a:4:{s:10:\"expiration\";i:1679880813;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";s:5:\"login\";i:1679708013;}s:64:\"fda86e3f6fe9fa8689023fcc16aa54c22425839cecd112f4ee37914e564a425f\";a:4:{s:10:\"expiration\";i:1679885924;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";s:5:\"login\";i:1679713124;}s:64:\"d5e51e605b7684234e3d238f45edb3688b80d215fba5f82dce6bd61f2f4237db\";a:4:{s:10:\"expiration\";i:1679888442;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";s:5:\"login\";i:1679715642;}s:64:\"f0c93d8ce0d12574bf5c4cae5e3255a4831dbdbb686de93334cf0aa8a47e9eff\";a:4:{s:10:\"expiration\";i:1679888854;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";s:5:\"login\";i:1679716054;}s:64:\"19200a256c2e54f8efea1871bd495995aabb123a56a8414fe91f15e1e8c30129\";a:4:{s:10:\"expiration\";i:1679889735;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";s:5:\"login\";i:1679716935;}s:64:\"fb6a46268ecbd644881eabc973bfda0594c90a2b4d5e569026407763aeac7617\";a:4:{s:10:\"expiration\";i:1679967214;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";s:5:\"login\";i:1679794414;}s:64:\"c67400eb908315769fb9e83ecb446dd6216b3e30b70315967d4422c0464cda86\";a:4:{s:10:\"expiration\";i:1680040211;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";s:5:\"login\";i:1679867411;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2023-03-21T01:24:33.052Z\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'closedpostboxes_page', 'a:0:{}'),
(23, 1, 'metaboxhidden_page', 'a:5:{i:0;s:12:\"revisionsdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(24, 1, 'wp_user-settings', 'libraryContent=browse'),
(25, 1, 'wp_user-settings-time', '1679436438'),
(26, 1, 'meta-box-order_post', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:51:\"submitdiv,tagsdiv-post_tag,categorydiv,postimagediv\";s:6:\"normal\";s:60:\"postexcerpt,trackbacksdiv,commentstatusdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(27, 1, 'screen_layout_post', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BKNruPOdEl40TtFFFy.NVLG0mlQsAL/', 'root', 'nadinperez6@gmail.com', 'http://localhost/wordpress', '2023-03-20 21:53:33', '', 0, 'Nadin Perez');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=942;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=544;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
