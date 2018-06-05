-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Mar 08, 2018 at 02:29 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `motorbike`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
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
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:7080/motorbike', 'yes'),
(2, 'home', 'http://localhost:7080/motorbike', 'yes'),
(3, 'blogname', 'Motorbike', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tongtong0507@live.com', 'yes'),
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
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:135:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:8:\"motor/?$\";s:25:\"index.php?post_type=motor\";s:38:\"motor/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=motor&feed=$matches[1]\";s:33:\"motor/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=motor&feed=$matches[1]\";s:25:\"motor/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=motor&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:44:\"brand/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?brand=$matches[1]&feed=$matches[2]\";s:39:\"brand/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?brand=$matches[1]&feed=$matches[2]\";s:20:\"brand/(.+?)/embed/?$\";s:38:\"index.php?brand=$matches[1]&embed=true\";s:32:\"brand/(.+?)/page/?([0-9]{1,})/?$\";s:45:\"index.php?brand=$matches[1]&paged=$matches[2]\";s:14:\"brand/(.+?)/?$\";s:27:\"index.php?brand=$matches[1]\";s:33:\"motor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"motor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"motor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"motor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"motor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"motor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"motor/([^/]+)/embed/?$\";s:38:\"index.php?motor=$matches[1]&embed=true\";s:26:\"motor/([^/]+)/trackback/?$\";s:32:\"index.php?motor=$matches[1]&tb=1\";s:46:\"motor/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?motor=$matches[1]&feed=$matches[2]\";s:41:\"motor/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?motor=$matches[1]&feed=$matches[2]\";s:34:\"motor/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?motor=$matches[1]&paged=$matches[2]\";s:41:\"motor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?motor=$matches[1]&cpage=$matches[2]\";s:30:\"motor/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?motor=$matches[1]&page=$matches[2]\";s:22:\"motor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"motor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"motor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"motor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"motor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"motor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"amn_smtp/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"amn_smtp/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"amn_smtp/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"amn_smtp/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"amn_smtp/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"amn_smtp/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"amn_smtp/([^/]+)/embed/?$\";s:41:\"index.php?amn_smtp=$matches[1]&embed=true\";s:29:\"amn_smtp/([^/]+)/trackback/?$\";s:35:\"index.php?amn_smtp=$matches[1]&tb=1\";s:37:\"amn_smtp/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?amn_smtp=$matches[1]&paged=$matches[2]\";s:44:\"amn_smtp/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?amn_smtp=$matches[1]&cpage=$matches[2]\";s:33:\"amn_smtp/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?amn_smtp=$matches[1]&page=$matches[2]\";s:25:\"amn_smtp/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"amn_smtp/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"amn_smtp/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"amn_smtp/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"amn_smtp/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"amn_smtp/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=71&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:41:\"admin-custom-login/admin-custom-login.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:21:\"imsanity/imsanity.php\";i:5;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";i:6;s:33:\"wpcf7-redirect/wpcf7-redirect.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:73:\"/Applications/MAMP/htdocs/motorbike/wp-content/themes/motorbike/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'motorbike', 'yes'),
(41, 'stylesheet', 'motorbike', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '71', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:4:{i:1520533709;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1520576922;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1520583538;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.4\";s:7:\"version\";s:5:\"4.9.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1520518247;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(116, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1520518269;s:7:\"checked\";a:1:{s:9:\"motorbike\";s:5:\"1.4.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(117, '_site_transient_timeout_browser_c3f4880a341235d5e458bb552045ed84', '1520663324', 'no'),
(118, '_site_transient_browser_c3f4880a341235d5e458bb552045ed84', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"64.0.3282.186\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(120, 'can_compress_scripts', '1', 'no'),
(133, 'theme_mods_twentyseventeen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1520058843;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(134, 'current_theme', 'Twenty Seventeen/motorbike', 'yes'),
(135, 'theme_mods_motorbike', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(136, 'theme_switched', '', 'yes'),
(140, 'recently_activated', 'a:7:{s:23:\"wordfence/wordfence.php\";i:1520262493;s:30:\"contact-form-7-skins/index.php\";i:1520163650;s:33:\"cf7-customizer/cf7-customizer.php\";i:1520163275;s:44:\"cf7-multi-step/contact-form-7-multi-step.php\";i:1520159848;s:69:\"contact-form-7-multi-step-module/contact-form-7-multi-step-module.php\";i:1520157191;s:24:\"wpforms-lite/wpforms.php\";i:1520147782;s:13:\"cmb2/init.php\";i:1520084451;}', 'yes'),
(145, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1520059358;s:7:\"version\";s:5:\"5.0.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(148, 'category_children', 'a:0:{}', 'yes'),
(151, 'WPLANG', '', 'yes'),
(152, 'new_admin_email', 'tongtong0507@live.com', 'yes'),
(157, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(163, 'acf_version', '5.6.9', 'yes'),
(171, 'cptui_new_install', 'false', 'yes'),
(172, 'cptui_post_types', 'a:1:{s:5:\"motor\";a:28:{s:4:\"name\";s:5:\"motor\";s:5:\"label\";s:5:\"Motor\";s:14:\"singular_label\";s:5:\"Motor\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:13:\"custom-fields\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(183, 'cptui_taxonomies', 'a:1:{s:5:\"brand\";a:21:{s:4:\"name\";s:5:\"brand\";s:5:\"label\";s:6:\"Brands\";s:14:\"singular_label\";s:5:\"Brand\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"1\";s:17:\"show_admin_column\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:12:\"object_types\";a:1:{i:0;s:5:\"motor\";}}}', 'yes'),
(209, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3NjoiYjNKa1pYSmZhV1E5TVRJMk1USXpmSFI1Y0dVOVpHVjJaV3h2Y0dWeWZHUmhkR1U5TWpBeE9DMHdNeTB3TXlBeE5Ub3dPVG94T0E9PSI7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6NzA4MC9tb3RvcmJpa2UiO30=', 'yes'),
(274, 'imsanity_max_height', '400', 'yes'),
(275, 'imsanity_max_width', '500', 'yes'),
(276, 'imsanity_max_height_library', '300', 'yes'),
(277, 'imsanity_max_width_library', '300', 'yes'),
(278, 'imsanity_max_height_other', '2048', 'yes'),
(279, 'imsanity_max_width_other', '2048', 'yes'),
(280, 'imsanity_bmp_to_jpg', '1', 'yes'),
(281, 'imsanity_png_to_jpg', '0', 'yes'),
(282, 'imsanity_quality', '82', 'yes'),
(318, 'wpforms_preview_page', '112', 'yes'),
(319, 'wpforms_version', '1.4.4.1', 'yes'),
(320, 'wpforms_activated', 'a:1:{s:4:\"lite\";i:1520146487;}', 'yes'),
(323, 'widget_wpforms-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(324, '_amn_wpforms-lite_last_checked', '1520121600', 'yes'),
(325, 'wpforms_review', 'a:2:{s:4:\"time\";i:1520146490;s:9:\"dismissed\";b:0;}', 'yes'),
(338, 'wp_mail_smtp_version', '1.2.5', 'yes'),
(339, 'wp_mail_smtp', 'a:5:{s:4:\"mail\";a:4:{s:10:\"from_email\";s:0:\"\";s:9:\"from_name\";s:9:\"Motorbike\";s:6:\"mailer\";s:5:\"gmail\";s:11:\"return_path\";b:0;}s:4:\"smtp\";a:7:{s:7:\"autotls\";s:3:\"yes\";s:4:\"host\";s:14:\"smtp.gmail.com\";s:4:\"port\";s:3:\"465\";s:10:\"encryption\";s:3:\"ssl\";s:4:\"user\";s:9:\"motorbike\";s:4:\"pass\";s:8:\"1q2w3e4r\";s:4:\"auth\";s:3:\"yes\";}s:5:\"gmail\";a:5:{s:9:\"client_id\";s:72:\"758260770427-910ni0qbbrhk05sagrv6amd6ok7c9pnp.apps.googleusercontent.com\";s:13:\"client_secret\";s:24:\"qsFjvmKiwRetAn1G5wCDVwNO\";s:9:\"auth_code\";s:89:\"4/AADKbJXZHZ1eoEew-ZFaVCyRXIyocq0Np37CGl0TjR_fCKXkKREAWJNQIzJPpPMeqzfz1Kjk0xvA6Yeq-1SbDCc\";s:12:\"access_token\";a:5:{s:12:\"access_token\";s:131:\"ya29.Glx0BTqDDNhuorN5rQo3lawpcFYGSPtg68QD7d9CpWGKKWW4Il7jSGj7gc5w5Yv1zP33mKgyAkxhH1kPct7sYxcPpwUccaxoVUwsm_c7KbyAT72IYU8nWi-fl7K0Pw\";s:10:\"token_type\";s:6:\"Bearer\";s:10:\"expires_in\";i:3600;s:7:\"created\";i:1520169935;s:13:\"refresh_token\";s:66:\"1/TIUG2aYzB4jB4cT7h7wOH_fPyIFChH_Cbhhj9OY1mNDaO6q-3kKu5Gt-M9dWmTMR\";}s:13:\"refresh_token\";s:66:\"1/TIUG2aYzB4jB4cT7h7wOH_fPyIFChH_Cbhhj9OY1mNDaO6q-3kKu5Gt-M9dWmTMR\";}s:7:\"mailgun\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:8:\"sendgrid\";a:1:{s:7:\"api_key\";s:0:\"\";}}', 'no'),
(340, '_amn_smtp_last_checked', '1520467200', 'yes'),
(342, 'wp_mail_smtp_debug', 'a:0:{}', 'no'),
(357, 'fs_active_plugins', 'O:8:\"stdClass\":2:{s:7:\"plugins\";a:1:{s:44:\"cf7-customizer/assets/admin/inc/sdk/freemius\";O:8:\"stdClass\":3:{s:7:\"version\";s:9:\"1.2.1.6.1\";s:9:\"timestamp\";i:1520163293;s:11:\"plugin_path\";s:33:\"cf7-customizer/cf7-customizer.php\";}}s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:33:\"cf7-customizer/cf7-customizer.php\";s:8:\"sdk_path\";s:44:\"cf7-customizer/assets/admin/inc/sdk/freemius\";s:7:\"version\";s:9:\"1.2.1.6.1\";s:13:\"in_activation\";b:1;s:9:\"timestamp\";i:1520163293;}}', 'yes'),
(358, 'fs_debug_mode', '', 'yes'),
(359, 'fs_accounts', 'a:6:{s:21:\"id_slug_type_path_map\";a:1:{i:1614;a:3:{s:4:\"slug\";s:32:\"contact-form-7-multi-step-module\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:69:\"contact-form-7-multi-step-module/contact-form-7-multi-step-module.php\";}}s:11:\"plugin_data\";a:2:{s:32:\"contact-form-7-multi-step-module\";a:16:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:69:\"contact-form-7-multi-step-module/contact-form-7-multi-step-module.php\";}s:17:\"install_timestamp\";i:1520156606;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:0;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"1.2.3\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"3.0.3\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:14:\"localhost:7080\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1520156606;s:7:\"version\";s:5:\"3.0.3\";}s:15:\"prev_is_premium\";b:0;s:16:\"uninstall_reason\";O:8:\"stdClass\":3:{s:2:\"id\";s:2:\"10\";s:4:\"info\";s:0:\"\";s:12:\"is_anonymous\";b:0;}s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1520157166;s:7:\"version\";s:5:\"3.0.3\";}}s:14:\"cf7-customizer\";a:16:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:88:\"/Applications/MAMP/htdocs/motorbike/wp-content/plugins/cf7-customizer/cf7-customizer.php\";}s:17:\"install_timestamp\";i:1520163098;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:9:\"1.2.1.6.1\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"1.1.1\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:21:\"is_plugin_new_install\";b:1;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:14:\"localhost:7080\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1520163098;s:7:\"version\";s:5:\"1.1.1\";}s:17:\"was_plugin_loaded\";b:1;s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1520163112;s:7:\"version\";s:5:\"1.1.1\";}s:16:\"uninstall_reason\";O:8:\"stdClass\":3:{s:2:\"id\";s:2:\"10\";s:4:\"info\";s:0:\"\";s:12:\"is_anonymous\";b:0;}}}s:13:\"file_slug_map\";a:2:{s:69:\"contact-form-7-multi-step-module/contact-form-7-multi-step-module.php\";s:32:\"contact-form-7-multi-step-module\";s:33:\"cf7-customizer/cf7-customizer.php\";s:14:\"cf7-customizer\";}s:7:\"plugins\";a:2:{s:32:\"contact-form-7-multi-step-module\";O:9:\"FS_Plugin\":17:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:31:\"Contact Form 7 Multi-Step Forms\";s:4:\"slug\";s:32:\"contact-form-7-multi-step-module\";s:4:\"type\";s:6:\"plugin\";s:4:\"file\";s:69:\"contact-form-7-multi-step-module/contact-form-7-multi-step-module.php\";s:7:\"version\";s:5:\"3.0.3\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:7:\"is_live\";b:1;s:10:\"public_key\";s:32:\"pk_b445061ad8b540f6a89c2c4f4df19\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"1614\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;s:20:\"affiliate_moderation\";b:0;}s:14:\"cf7-customizer\";O:9:\"FS_Plugin\":16:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:14:\"CF7 Customizer\";s:4:\"slug\";s:14:\"cf7-customizer\";s:4:\"type\";N;s:4:\"file\";s:33:\"cf7-customizer/cf7-customizer.php\";s:7:\"version\";s:5:\"1.1.1\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:7:\"is_live\";b:1;s:10:\"public_key\";s:32:\"pk_0b419183244d583e3b33a7736921c\";s:10:\"secret_key\";N;s:2:\"id\";s:2:\"91\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"c471de05c54820f7f770ec8559b19457\";s:13:\"admin_notices\";a:2:{s:32:\"contact-form-7-multi-step-module\";a:0:{}s:14:\"cf7-customizer\";a:0:{}}}', 'yes'),
(360, 'fs_api_cache', 'a:0:{}', 'yes'),
(422, 'wordfence_version', '7.1.0', 'yes'),
(423, 'wordfenceActivated', '0', 'yes'),
(424, 'wf_plugin_act_error', '', 'yes'),
(467, 'brand_children', 'a:0:{}', 'yes'),
(470, '_site_transient_timeout_theme_roots', '1520519523', 'no'),
(471, '_site_transient_theme_roots', 'a:1:{s:9:\"motorbike\";s:7:\"/themes\";}', 'no'),
(473, '_site_transient_timeout_community-events-4501c091b0366d76ea3218b6cfdd8097', '1520560929', 'no'),
(474, '_site_transient_community-events-4501c091b0366d76ea3218b6cfdd8097', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:2:\"::\";}s:6:\"events\";a:0:{}}', 'no'),
(475, '_transient_timeout_plugin_slugs', '1520604678', 'no'),
(476, '_transient_plugin_slugs', 'a:11:{i:0;s:41:\"admin-custom-login/admin-custom-login.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:19:\"akismet/akismet.php\";i:3;s:13:\"cmb2/init.php\";i:4;s:36:\"contact-form-7/wp-contact-form-7.php\";i:5;s:33:\"wpcf7-redirect/wpcf7-redirect.php\";i:6;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:7;s:9:\"hello.php\";i:8;s:21:\"imsanity/imsanity.php\";i:9;s:23:\"wordfence/wordfence.php\";i:10;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";}', 'no'),
(477, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1520528669', 'no'),
(478, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4436;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2625;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2545;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2409;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1857;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1638;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1627;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1447;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1383;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1380;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1374;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1301;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1282;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1184;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1087;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1058;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1012;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:993;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:866;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:861;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:822;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:796;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:790;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:697;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:689;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:682;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:674;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:669;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:654;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:651;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:639;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:636;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:631;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:609;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:607;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:599;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:598;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:586;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:584;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:584;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:557;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:543;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:535;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:528;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:518;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:511;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:510;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:504;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:489;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:486;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:485;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:484;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:476;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:469;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:464;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:462;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:453;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:449;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:435;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:424;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:423;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:417;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:417;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:416;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:411;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:410;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:401;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:395;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:391;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:383;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:371;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:361;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:354;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:353;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:349;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:343;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:340;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:339;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:337;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:335;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:334;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:333;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:332;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:329;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:328;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:324;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:315;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:310;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:305;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:303;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:301;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:300;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:295;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:292;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:292;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:290;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:287;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:287;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:285;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:284;}}', 'no'),
(481, 'Admin_custome_login_Version', 's:30:\"a:1:{s:7:\"Version\";s:3:\"1.0\";}\";', 'yes'),
(482, 'Admin_custome_login_dashboard', 's:44:\"a:1:{s:16:\"dashboard_status\";s:7:\"disable\";}\";', 'yes'),
(483, 'Admin_custome_login_top', 's:392:\"a:9:{s:11:\"top_bg_type\";s:23:\"static-background-image\";s:9:\"top_color\";s:7:\"#f9fad2\";s:9:\"top_image\";s:72:\"http://localhost:7080/motorbike/wp-content/uploads/2018/03/YAMAHA_bg.jpg\";s:9:\"top_cover\";s:3:\"yes\";s:10:\"top_repeat\";s:6:\"repeat\";s:12:\"top_position\";s:8:\"left top\";s:14:\"top_attachment\";s:5:\"fixed\";s:16:\"top_slideshow_no\";s:1:\"6\";s:23:\"top_bg_slider_animation\";s:13:\"slider-style1\";}\";', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(484, 'Admin_custome_login_login', 's:838:\"a:20:{s:19:\"login_form_position\";s:7:\"default\";s:16:\"login_form_float\";s:6:\"center\";s:15:\"login_form_left\";s:3:\"700\";s:14:\"login_form_top\";s:3:\"300\";s:16:\"login_custom_css\";s:0:\"\";s:19:\"login_redirect_user\";s:0:\"\";s:13:\"login_bg_type\";s:23:\"static-background-image\";s:14:\"login_bg_color\";s:7:\"#1e73be\";s:15:\"login_bg_effect\";s:9:\"pattern-1\";s:14:\"login_bg_image\";s:95:\"http://localhost:7080/motorbike/wp-content/plugins/admin-custom-login//images/3d-background.jpg\";s:18:\"login_form_opacity\";s:2:\"10\";s:16:\"login_form_width\";s:3:\"520\";s:17:\"login_form_radius\";s:2:\"10\";s:18:\"login_border_style\";s:5:\"solid\";s:21:\"login_border_thikness\";s:1:\"4\";s:18:\"login_border_color\";s:7:\"#0069A0\";s:15:\"login_bg_repeat\";s:6:\"repeat\";s:17:\"login_bg_position\";s:8:\"left top\";s:19:\"login_enable_shadow\";s:3:\"yes\";s:18:\"login_shadow_color\";s:7:\"#C8C8C8\";}\";', 'yes'),
(485, 'Admin_custome_login_text', 's:627:\"a:17:{s:18:\"heading_font_color\";s:7:\"#ffffff\";s:16:\"input_font_color\";s:7:\"#000000\";s:10:\"link_color\";s:7:\"#ffffff\";s:12:\"button_color\";s:7:\"#dd3333\";s:17:\"heading_font_size\";s:2:\"14\";s:15:\"input_font_size\";s:2:\"18\";s:9:\"link_size\";s:2:\"14\";s:16:\"button_font_size\";s:2:\"14\";s:18:\"enable_link_shadow\";s:3:\"yes\";s:17:\"link_shadow_color\";s:7:\"#ffffff\";s:18:\"heading_font_style\";s:9:\"Open Sans\";s:16:\"input_font_style\";s:9:\"Open Sans\";s:15:\"link_font_style\";s:9:\"Open Sans\";s:17:\"button_font_style\";s:9:\"Open Sans\";s:20:\"enable_inputbox_icon\";s:3:\"yes\";s:15:\"user_input_icon\";s:7:\"fa-user\";s:19:\"password_input_icon\";s:6:\"fa-key\";}\";', 'yes'),
(486, 'Admin_custome_login_logo', 's:289:\"a:5:{s:10:\"logo_image\";s:94:\"http://localhost:7080/motorbike/wp-content/plugins/admin-custom-login//images/default-logo.png\";s:10:\"logo_width\";s:3:\"274\";s:11:\"logo_height\";s:2:\"63\";s:8:\"logo_url\";s:31:\"http://localhost:7080/motorbike\";s:14:\"logo_url_title\";s:23:\"Your Site Name and Info\";}\";', 'yes'),
(487, 'Admin_custome_login_Social', 's:955:\"a:21:{s:18:\"enable_social_icon\";s:5:\"outer\";s:16:\"social_icon_size\";s:6:\"mediam\";s:18:\"social_icon_layout\";s:9:\"rectangle\";s:17:\"social_icon_color\";s:7:\"#ffffff\";s:25:\"social_icon_color_onhover\";s:7:\"#1e73be\";s:14:\"social_icon_bg\";s:7:\"#1e73be\";s:22:\"social_icon_bg_onhover\";s:7:\"#ffffff\";s:20:\"social_facebook_link\";s:19:\"http://facebook.com\";s:19:\"social_twitter_link\";s:33:\"https://twitter.com/minimalmonkey\";s:20:\"social_linkedin_link\";s:0:\"\";s:23:\"social_google_plus_link\";s:22:\"http://plus.google.com\";s:21:\"social_pinterest_link\";s:0:\"\";s:16:\"social_digg_link\";s:0:\"\";s:19:\"social_youtube_link\";s:19:\"https://youtube.com\";s:18:\"social_flickr_link\";s:18:\"https://flickr.com\";s:18:\"social_tumblr_link\";s:0:\"\";s:21:\"social_vkontakte_link\";s:0:\"\";s:17:\"social_skype_link\";s:0:\"\";s:21:\"social_instagram_link\";s:21:\"https://instagram.com\";s:20:\"social_telegram_link\";s:21:\"https://telegram.org/\";s:20:\"social_whatsapp_link\";s:21:\"https://whatsapp.com/\";}\";', 'yes'),
(488, 'Admin_custome_login_Slidshow', 's:1033:\"a:12:{s:16:\"Slidshow_image_1\";s:93:\"http://localhost:7080/motorbike/wp-content/plugins/admin-custom-login//images/rpg-default.jpg\";s:16:\"Slidshow_image_2\";s:93:\"http://localhost:7080/motorbike/wp-content/plugins/admin-custom-login//images/rpg-default.jpg\";s:16:\"Slidshow_image_3\";s:93:\"http://localhost:7080/motorbike/wp-content/plugins/admin-custom-login//images/rpg-default.jpg\";s:16:\"Slidshow_image_4\";s:93:\"http://localhost:7080/motorbike/wp-content/plugins/admin-custom-login//images/rpg-default.jpg\";s:16:\"Slidshow_image_5\";s:93:\"http://localhost:7080/motorbike/wp-content/plugins/admin-custom-login//images/rpg-default.jpg\";s:16:\"Slidshow_image_6\";s:93:\"http://localhost:7080/motorbike/wp-content/plugins/admin-custom-login//images/rpg-default.jpg\";s:22:\"Slidshow_image_label_1\";s:9:\"undefined\";s:22:\"Slidshow_image_label_2\";s:9:\"undefined\";s:22:\"Slidshow_image_label_3\";s:9:\"undefined\";s:22:\"Slidshow_image_label_4\";s:9:\"undefined\";s:22:\"Slidshow_image_label_5\";s:9:\"undefined\";s:22:\"Slidshow_image_label_6\";s:9:\"undefined\";}\";', 'yes'),
(489, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1520518275;s:7:\"checked\";a:11:{s:41:\"admin-custom-login/admin-custom-login.php\";s:5:\"2.5.9\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.6.9\";s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:13:\"cmb2/init.php\";s:5:\"2.3.0\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.1\";s:33:\"wpcf7-redirect/wpcf7-redirect.php\";s:5:\"1.2.5\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.5.7\";s:9:\"hello.php\";s:3:\"1.6\";s:21:\"imsanity/imsanity.php\";s:6:\"2.3.10\";s:23:\"wordfence/wordfence.php\";s:5:\"7.1.0\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"1.2.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:10:{s:41:\"admin-custom-login/admin-custom-login.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/admin-custom-login\";s:4:\"slug\";s:18:\"admin-custom-login\";s:6:\"plugin\";s:41:\"admin-custom-login/admin-custom-login.php\";s:11:\"new_version\";s:5:\"2.5.9\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/admin-custom-login/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/admin-custom-login.2.5.9.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:71:\"https://ps.w.org/admin-custom-login/assets/icon-128x128.png?rev=1121656\";s:2:\"2x\";s:71:\"https://ps.w.org/admin-custom-login/assets/icon-256x256.png?rev=1121656\";s:7:\"default\";s:71:\"https://ps.w.org/admin-custom-login/assets/icon-256x256.png?rev=1121656\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:73:\"https://ps.w.org/admin-custom-login/assets/banner-772x250.jpg?rev=1121656\";s:7:\"default\";s:73:\"https://ps.w.org/admin-custom-login/assets/banner-772x250.jpg?rev=1121656\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:13:\"cmb2/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:18:\"w.org/plugins/cmb2\";s:4:\"slug\";s:4:\"cmb2\";s:6:\"plugin\";s:13:\"cmb2/init.php\";s:11:\"new_version\";s:5:\"2.3.0\";s:3:\"url\";s:35:\"https://wordpress.org/plugins/cmb2/\";s:7:\"package\";s:47:\"https://downloads.wordpress.org/plugin/cmb2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:57:\"https://ps.w.org/cmb2/assets/icon-128x128.png?rev=1081087\";s:2:\"2x\";s:57:\"https://ps.w.org/cmb2/assets/icon-256x256.png?rev=1081087\";s:7:\"default\";s:57:\"https://ps.w.org/cmb2/assets/icon-256x256.png?rev=1081087\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/cmb2/assets/banner-1544x500.png?rev=1081087\";s:2:\"1x\";s:59:\"https://ps.w.org/cmb2/assets/banner-772x250.png?rev=1081087\";s:7:\"default\";s:60:\"https://ps.w.org/cmb2/assets/banner-1544x500.png?rev=1081087\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:7:\"default\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";s:7:\"default\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"wpcf7-redirect/wpcf7-redirect.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wpcf7-redirect\";s:4:\"slug\";s:14:\"wpcf7-redirect\";s:6:\"plugin\";s:33:\"wpcf7-redirect/wpcf7-redirect.php\";s:11:\"new_version\";s:5:\"1.2.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wpcf7-redirect/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wpcf7-redirect.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:67:\"https://ps.w.org/wpcf7-redirect/assets/icon-128x128.png?rev=1732522\";s:2:\"2x\";s:67:\"https://ps.w.org/wpcf7-redirect/assets/icon-256x256.png?rev=1732522\";s:7:\"default\";s:67:\"https://ps.w.org/wpcf7-redirect/assets/icon-256x256.png?rev=1732522\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:70:\"https://ps.w.org/wpcf7-redirect/assets/banner-1544x500.png?rev=1734873\";s:2:\"1x\";s:69:\"https://ps.w.org/wpcf7-redirect/assets/banner-772x250.png?rev=1734873\";s:7:\"default\";s:70:\"https://ps.w.org/wpcf7-redirect/assets/banner-1544x500.png?rev=1734873\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.5.7\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.7.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:7:\"default\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";s:7:\"default\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"imsanity/imsanity.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/imsanity\";s:4:\"slug\";s:8:\"imsanity\";s:6:\"plugin\";s:21:\"imsanity/imsanity.php\";s:11:\"new_version\";s:6:\"2.3.10\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/imsanity/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/imsanity.2.3.10.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:61:\"https://ps.w.org/imsanity/assets/icon-128x128.png?rev=1170755\";s:2:\"2x\";s:61:\"https://ps.w.org/imsanity/assets/icon-256x256.png?rev=1094749\";s:7:\"default\";s:61:\"https://ps.w.org/imsanity/assets/icon-256x256.png?rev=1094749\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:62:\"https://ps.w.org/imsanity/assets/banner-772x250.png?rev=900541\";s:7:\"default\";s:62:\"https://ps.w.org/imsanity/assets/banner-772x250.png?rev=900541\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"wordfence/wordfence.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/wordfence\";s:4:\"slug\";s:9:\"wordfence\";s:6:\"plugin\";s:23:\"wordfence/wordfence.php\";s:11:\"new_version\";s:5:\"7.1.0\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/wordfence/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/wordfence.7.1.0.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:62:\"https://ps.w.org/wordfence/assets/icon-128x128.png?rev=1457724\";s:2:\"2x\";s:62:\"https://ps.w.org/wordfence/assets/icon-256x256.png?rev=1457724\";s:7:\"default\";s:62:\"https://ps.w.org/wordfence/assets/icon-256x256.png?rev=1457724\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:65:\"https://ps.w.org/wordfence/assets/banner-1544x500.png?rev=1808795\";s:2:\"1x\";s:64:\"https://ps.w.org/wordfence/assets/banner-772x250.png?rev=1808795\";s:7:\"default\";s:65:\"https://ps.w.org/wordfence/assets/banner-1544x500.png?rev=1808795\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"1.2.5\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:7:\"default\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=1785565\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=1785565\";s:7:\"default\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=1785565\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(490, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 4, '_form', '<div class=\"col-lg-6\">\n<div class=\"loan_all loan_personal\">\n<h2>1. Personal Information</h2>\n<label> Full Name<span class=\"required\">*</span>\n    [text* FullName] </label>\n\n<label> Mobile Number<span class=\"required\">*</span>\n    [tel* MobileNumber id:mobile_number]</label>\n\n<label> Current Home Address<span class=\"required\">*</span>\n[textarea* CurrentHomeAddress id:current_home_address]</label>\n\n<label> Residence Type<span class=\"required\">*</span>\n[select* ResidenceType id:residence_type include_blank \"Own \" \"Parent\" \"Relative\" \"Renting\" \"Company\"]</label>\n\n<label> Years Of Stay<span class=\"required\">*</span>\n[select* YearsOfStay id:years_of_stay include_blank \"< 1 year\" \"1 - 5 years\" \"6 - 10 years\" \"> 10 years\"]</label>\n\n<label> Status<span class=\"required\">*</span>\n[select* Status id:status include_blank \"Single\" \"Married\"]</label>\n</div>\n</div>\n\n\n\n\n\n<div class=\"col-lg-6\">\n<div class=\"loan_all loan_company col-lg-6\">\n<h2>2. Company Information</h2>\n<label> Company Name<span class=\"required\">*</span>\n[text CompanyName id:company_name]</label>\n\n<label> Contact Number<span class=\"required\">*</span>\n[tel CompanyContact id:company_contact]</label>\n\n<label> Company Address<span class=\"required\">*</span>\n[textarea* CompanyAddress id:company_address]</label>\n\n<label> Employment Status<span class=\"required\">*</span>\n[select* EmploymentStatus id:employment_status include_blank \"Employed\" \"Self-Employed\"]</label>\n\n<label> Years Of Service<span class=\"required\">*</span>\n[select* YearsOfService id:years_of_service_company include_blank \"< 3 Months\" \"< 1 Year\" \"1 - 5 Years\" \"6 - 10 Years\" \"> 10 Years\"]</label>\n\n<label>Job Position/Department<span class=\"required\">*</span>\n[text* JobPositionDepartment id:position_department akismet:author]</label>\n</div>\n</div>\n\n\n\n\n<div class=\"col-lg-6\">\n<div class=\"loan_all loan col-lg-6\">\n<h2>3. Loan Information</h2>\n<label> Bike Model/Registration Number<span class=\"required\">*</span>\n[text* BikeRegistrationNumber id:bike_registration_number]</label>\n\n<label> Bike Condition<span class=\"required\">*</span>\n[select* BikeCondition id:bike_condition include_blank \"New\" \"Used\"]</label>\n\n<label> Downpayment<span class=\"required\">*</span>\n[text Downpayment id:downpayment]</label>\n\n<label> Instalment Period<span class=\"required\">*</span>\n[select* InstalmentPeriod id:instalment_period include_blank \"12 Months\" \"24 Months\" \"36 Months\" \"48 Months\" \"60 Months\" \"72 Months\" \"84 Months\"]</label>\n\n<label>Preferred Location For Bike Collection<span class=\"required\">*</span>\n[select* PreferredLocationForBikeCollection id:bike_collect_location include_blank \"Batu Cave\" \"Ampang\" \"Batang Kali\"]</label>\n</div>\n</div>\n\n\n\n<div class=\"col-lg-6\">\n<div class=\"loan_all loan_attachment\">\n<h2>4. Attachment</h2>\n<label> Scan Copy of IC (Front) <span class=\"required\">*</span>\n    [file* ICFront limit:2000000 id:ic_front]<label class=\"custom-file-label\" for=\"ic_front\"><strong>Choose a file</strong></label></label>\n\n<label> Scan Copy of IC (Back) <span class=\"required\">*</span>\n    [file* ICBack limit:2000000 id:ic_back]<label class=\"custom-file-label\" for=\"ic_back\"><strong>Choose a file</strong></label></label>\n\n<label> Scan Copy 0f Salary Slip OR SSM (PaySlip1)<span class=\"required\">*</span>\n    [file* Payslip1 limit:2000000 id:payslip_1] <label class=\"custom-file-label\" for=\"payslip_1\"><strong>Choose a file</strong></label></label>\n\n<label> Scan Copy 0f Salary Slip OR SSM (PaySlip2)<span class=\"required\">*</span>\n    [file* Payslip2 limit:2000000 id:payslip_2] <label class=\"custom-file-label\" for=\"payslip_2\"><strong>Choose a file</strong></label></label>\n</div>\n</div>\n\n\n\n<div class=\"col-lg-6\">\n<div class=\"loan_all loan_emergency_1\">\n<h2>5. Emergency Contact 1</h2>\n<label> Full Name (Immediate Family or Relatives)<span class=\"required\">*</span>\n[text Emergency1FullName id:emergency_1_full_name]</label>\n\n<label> Current Home Address<span class=\"required\">*</span>\n[textarea* Emergency1Address id:emergency_1_address]</label>\n\n<label> Contact Number<span class=\"required\">*</span>\n[tel Emergency1Contact id:id:emergency_1_contact]</label>\n\n<label> Relationship <span class=\"required\">*</span>\n[text* Emergency1Relationship id:id:emergency_1_relationship]</label>\n</div>\n</div>\n\n\n\n\n\n<div class=\"col-lg-6\">\n<div class=\"loan_all loan_emergency_2 \">\n<h2>6. Emergency Contact 2</h2>\n<label> Full Name (Immediate Family or Relatives)<span class=\"required\">*</span>\n[text Emergency2FullName id:emergency_2_full_name]</label>\n\n<label> Current Home Address<span class=\"required\">*</span>\n[textarea* Emergency2Address id:emergency_2_address]</label>\n\n<label> Contact Number<span class=\"required\">*</span>\n[tel Emergency2Contact id:id:emergency_2_contact]</label>\n\n<label> Relationship <span class=\"required\">*</span>\n[text* Emergency2Relationship id:id:emergency_2_relationship]</label>\n</div>\n</div>\n\n\n[submit id:loan_submit_button \"Submit\"]'),
(3, 4, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:10:\"Apply loan\";s:6:\"sender\";s:34:\"[FullName] <tongtong0507@live.com>\";s:9:\"recipient\";s:21:\"tongtong0507@live.com\";s:4:\"body\";s:424:\"From: [FullName]\nSubject: Apply Loan\n\n[MobileNumber]\n[CurrentHomeAddress]\n[ResidenceType]\n[YearsOfStay]\n[Status]\n[CompanyName]\n[CompanyAddress]\n[CompanyContact]\n[EmploymentStatus]\n[YearsOfService]\n[JobPositionDepartment]\n[BikeRegistrationNumber]\n[BikeCondition]\n[Downpayment]\n[InstalmentPeriod]\n[PreferredLocationForBikeCollection]\n\n-- \nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:37:\"[ICFront][ICBack][Payslip1][Payslip2]\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(4, 4, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:26:\"Motorbike \"[your-subject]\"\";s:6:\"sender\";s:33:\"Motorbike <tongtong0507@live.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:121:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\";s:18:\"additional_headers\";s:31:\"Reply-To: tongtong0507@live.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(5, 4, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(6, 4, '_additional_settings', ''),
(7, 4, '_locale', 'en_US'),
(21, 8, '_edit_last', '1'),
(22, 8, '_edit_lock', '1520346462:1'),
(27, 15, '_edit_last', '1'),
(28, 15, '_edit_lock', '1520347784:1'),
(53, 25, '_edit_last', '1'),
(54, 25, '_edit_lock', '1520518280:1'),
(105, 7, '_customize_restore_dismissed', '1'),
(106, 61, '_edit_last', '1'),
(107, 61, '_edit_lock', '1520133629:1'),
(110, 61, 'name', ''),
(111, 61, '_name', 'field_5a9a5dcc57b8d'),
(112, 61, 'price', ''),
(113, 61, '_price', 'field_5a9a5a77edf2d'),
(114, 61, 'image', '62'),
(115, 61, '_image', 'field_5a9a5d7a57b8b'),
(116, 61, 'gallery', ''),
(117, 61, '_gallery', 'field_5a9a5dba57b8c'),
(118, 61, 'contact_detail', ''),
(119, 61, '_contact_detail', 'field_5a9ab6a25ac13'),
(120, 63, '_edit_last', '1'),
(121, 63, '_edit_lock', '1520133653:1'),
(124, 63, 'name', ''),
(125, 63, '_name', 'field_5a9a5dcc57b8d'),
(126, 63, 'price', ''),
(127, 63, '_price', 'field_5a9a5a77edf2d'),
(128, 63, 'image', '64'),
(129, 63, '_image', 'field_5a9a5d7a57b8b'),
(130, 63, 'gallery', ''),
(131, 63, '_gallery', 'field_5a9a5dba57b8c'),
(132, 63, 'contact_detail', ''),
(133, 63, '_contact_detail', 'field_5a9ab6a25ac13'),
(134, 65, '_edit_last', '1'),
(135, 65, '_edit_lock', '1520133548:1'),
(138, 65, 'name', ''),
(139, 65, '_name', 'field_5a9a5dcc57b8d'),
(140, 65, 'price', ''),
(141, 65, '_price', 'field_5a9a5a77edf2d'),
(142, 65, 'image', '66'),
(143, 65, '_image', 'field_5a9a5d7a57b8b'),
(144, 65, 'gallery', ''),
(145, 65, '_gallery', 'field_5a9a5dba57b8c'),
(146, 65, 'contact_detail', ''),
(147, 65, '_contact_detail', 'field_5a9ab6a25ac13'),
(148, 67, '_edit_last', '1'),
(149, 67, '_edit_lock', '1520346451:1'),
(152, 67, 'name', ''),
(153, 67, '_name', 'field_5a9a5dcc57b8d'),
(154, 67, 'price', ''),
(155, 67, '_price', 'field_5a9a5a77edf2d'),
(156, 67, 'image', '68'),
(157, 67, '_image', 'field_5a9a5d7a57b8b'),
(158, 67, 'gallery', ''),
(159, 67, '_gallery', 'field_5a9a5dba57b8c'),
(160, 67, 'contact_detail', ''),
(161, 67, '_contact_detail', 'field_5a9ab6a25ac13'),
(177, 71, '_edit_last', '1'),
(178, 71, '_edit_lock', '1520347849:1'),
(179, 71, '_wp_page_template', 'page-homepage.php'),
(180, 71, 'new_arrival', 'a:4:{i:0;s:2:\"61\";i:1;s:2:\"63\";i:2;s:2:\"65\";i:3;s:2:\"67\";}'),
(181, 71, '_new_arrival', 'field_5a9a5e3582500'),
(182, 73, 'new_arrival', 'a:4:{i:0;s:2:\"61\";i:1;s:2:\"63\";i:2;s:2:\"65\";i:3;s:2:\"67\";}'),
(183, 73, '_new_arrival', 'field_5a9a5e3582500'),
(184, 74, 'new_arrival', 'a:4:{i:0;s:2:\"61\";i:1;s:2:\"63\";i:2;s:2:\"65\";i:3;s:2:\"67\";}'),
(185, 74, '_new_arrival', 'field_5a9a5e3582500'),
(212, 82, 'new_arrival', 'a:4:{i:0;s:2:\"61\";i:1;s:2:\"63\";i:2;s:2:\"65\";i:3;s:2:\"67\";}'),
(213, 82, '_new_arrival', 'field_5a9a5e3582500'),
(214, 84, '_edit_last', '1'),
(215, 84, '_wp_page_template', 'default'),
(216, 84, '_edit_lock', '1520149463:1'),
(217, 86, '_edit_last', '1'),
(218, 86, '_wp_page_template', 'default'),
(219, 86, '_edit_lock', '1520125881:1'),
(220, 88, '_menu_item_type', 'post_type'),
(221, 88, '_menu_item_menu_item_parent', '0'),
(222, 88, '_menu_item_object_id', '86'),
(223, 88, '_menu_item_object', 'page'),
(224, 88, '_menu_item_target', ''),
(225, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(226, 88, '_menu_item_xfn', ''),
(227, 88, '_menu_item_url', ''),
(229, 89, '_menu_item_type', 'post_type'),
(230, 89, '_menu_item_menu_item_parent', '0'),
(231, 89, '_menu_item_object_id', '84'),
(232, 89, '_menu_item_object', 'page'),
(233, 89, '_menu_item_target', ''),
(234, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(235, 89, '_menu_item_xfn', ''),
(236, 89, '_menu_item_url', ''),
(240, 84, 'new_arrival', 'a:1:{i:0;s:2:\"64\";}'),
(241, 84, '_new_arrival', 'field_5a9b572601c95'),
(242, 92, 'new_arrival', 'a:1:{i:0;s:2:\"64\";}'),
(243, 92, '_new_arrival', 'field_5a9b572601c95'),
(250, 93, '_menu_item_type', 'post_type'),
(251, 93, '_menu_item_menu_item_parent', '0'),
(252, 93, '_menu_item_object_id', '71'),
(253, 93, '_menu_item_object', 'page'),
(254, 93, '_menu_item_target', ''),
(255, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(256, 93, '_menu_item_xfn', ''),
(257, 93, '_menu_item_url', ''),
(262, 71, 'new_arrivals', 'a:3:{i:0;s:2:\"61\";i:1;s:2:\"63\";i:2;s:2:\"65\";}'),
(263, 71, '_new_arrivals', 'field_5a9a5e3582500'),
(264, 94, 'new_arrival', 'a:4:{i:0;s:2:\"61\";i:1;s:2:\"63\";i:2;s:2:\"65\";i:3;s:2:\"67\";}'),
(265, 94, '_new_arrival', 'field_5a9a5e3582500'),
(266, 94, 'new_arrivals', 'a:4:{i:0;s:2:\"61\";i:1;s:2:\"63\";i:2;s:2:\"65\";i:3;s:2:\"67\";}'),
(267, 94, '_new_arrivals', 'field_5a9a5e3582500'),
(277, 98, '_wp_attached_file', '2018/03/kawasaki_dummy_2.jpg'),
(278, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:375;s:4:\"file\";s:28:\"2018/03/kawasaki_dummy_2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"kawasaki_dummy_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"kawasaki_dummy_2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:28:\"kawasaki_dummy_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(279, 67, '_thumbnail_id', '98'),
(280, 99, '_wp_attached_file', '2018/03/kawasaki_dummy_1.jpg'),
(281, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:375;s:4:\"file\";s:28:\"2018/03/kawasaki_dummy_1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"kawasaki_dummy_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"kawasaki_dummy_1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:28:\"kawasaki_dummy_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(282, 65, '_thumbnail_id', '99'),
(283, 100, '_wp_attached_file', '2018/03/honda_dummy_2.jpeg'),
(284, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:317;s:4:\"file\";s:26:\"2018/03/honda_dummy_2.jpeg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"honda_dummy_2-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"honda_dummy_2-300x190.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:26:\"honda_dummy_2-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(285, 101, '_wp_attached_file', '2018/03/honda_dummy_1.jpg'),
(286, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:307;s:4:\"file\";s:25:\"2018/03/honda_dummy_1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"honda_dummy_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"honda_dummy_1-300x184.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:25:\"honda_dummy_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(287, 61, '_thumbnail_id', '101'),
(288, 63, '_thumbnail_id', '100'),
(295, 114, 'new_arrival', 'a:1:{i:0;s:2:\"64\";}'),
(296, 114, '_new_arrival', 'field_5a9b572601c95'),
(312, 117, '_edit_last', '1'),
(313, 117, '_edit_lock', '1520160291:1'),
(314, 117, '_wp_page_template', 'default'),
(315, 4, '_wpcf7_redirect_page_id', '117'),
(316, 4, '_wpcf7_redirect_external_url', ''),
(317, 4, '_wpcf7_redirect_use_external_url', ''),
(318, 4, '_wpcf7_redirect_http_build_query', ''),
(319, 4, '_wpcf7_redirect_open_in_new_tab', ''),
(320, 4, '_wpcf7_redirect_after_sent_script', ''),
(321, 119, '_form', '<div class=\"loan_all loan_personal col-lg-6\">\n<h2>Personal Information</h2>\n<label> Full Name (required)\n    [text* FullName] </label>\n\n<label> Mobile Number (required)\n    [tel* MobileNumber id:mobile_number]</label>\n\n<label> Current Home Address (required)\n[textarea* CurrentHomeAddress id:current_home_address]</label>\n\n<label> Residence Type (required)\n[select* ResidenceType id:residence_type include_blank \"Own \" \"Parent\" \"Relative\" \"Renting\" \"Company\"]</label>\n\n<label> Years Of Stay (required)\n[select* YearsOfStay id:years_of_stay include_blank \"< 1 year\" \"1 - 5 years\" \"6 - 10 years\" \"> 10 years\"]</label>\n\n<label> Status (required)\n[select* Status id:status include_blank \"Single\" \"Married\"]</label>\n</div>'),
(322, 119, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:26:\"Motorbike \"[MobileNumber]\"\";s:6:\"sender\";s:34:\"[FullName] <tongtong0507@live.com>\";s:9:\"recipient\";s:21:\"tongtong0507@live.com\";s:4:\"body\";s:204:\"From: [FullName]\nSubject: Apply Loan\n\n[CurrentHomeAddress]\n[ResidenceType]\n[YearsOfStay]\n[Status]\n[CompanyName]\n\n-- \nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:19:\"[ScanCopyofICFront]\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(323, 119, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:26:\"Motorbike \"[your-subject]\"\";s:6:\"sender\";s:33:\"Motorbike <tongtong0507@live.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:121:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\";s:18:\"additional_headers\";s:31:\"Reply-To: tongtong0507@live.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(324, 119, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(325, 119, '_additional_settings', ''),
(326, 119, '_locale', 'en_US'),
(327, 119, '_wpcf7_redirect_page_id', '117'),
(328, 119, '_wpcf7_redirect_external_url', ''),
(329, 119, '_wpcf7_redirect_use_external_url', ''),
(330, 119, '_wpcf7_redirect_http_build_query', ''),
(331, 119, '_wpcf7_redirect_open_in_new_tab', ''),
(332, 119, '_wpcf7_redirect_after_sent_script', ''),
(334, 120, '_form', '<div class=\"loan_all loan col-lg-6\">\n<h2>Loan Information</h2>\n<label> Bike Registration Number (required)\n[text* BikeRegistrationNumber id:bike_registration_number]</label>\n\n<label> Bike Condition (required)\n[select* BikeCondition id:bike_condition include_blank \"New\" \"Used\"]</label>\n\n<label> Downpayment (required)\n[text Downpayment id:downpayment]</label>\n\n<label> Instalment Period (required)\n[select* InstalmentPeriod id:instalment_period include_blank \"12 Months\" \"24 Months\" \"36 Months\" \"48 Months\" \"60 Months\" \"72 Months\" \"84 Months\"]</label>\n\n<label>Preferred Location For Bike Collection (required)\n[select* PreferredLocationForBikeCollection id:bike_collect_location include_blank \"Batu Cave\" \"Ampang\" \"Batang Kali\"]</label>\n</div>'),
(335, 120, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:26:\"Motorbike \"[MobileNumber]\"\";s:6:\"sender\";s:34:\"[FullName] <tongtong0507@live.com>\";s:9:\"recipient\";s:21:\"tongtong0507@live.com\";s:4:\"body\";s:204:\"From: [FullName]\nSubject: Apply Loan\n\n[CurrentHomeAddress]\n[ResidenceType]\n[YearsOfStay]\n[Status]\n[CompanyName]\n\n-- \nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:19:\"[ScanCopyofICFront]\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(336, 120, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:26:\"Motorbike \"[your-subject]\"\";s:6:\"sender\";s:33:\"Motorbike <tongtong0507@live.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:121:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\";s:18:\"additional_headers\";s:31:\"Reply-To: tongtong0507@live.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(337, 120, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(338, 120, '_additional_settings', ''),
(339, 120, '_locale', 'en_US'),
(340, 120, '_wpcf7_redirect_page_id', '117'),
(341, 120, '_wpcf7_redirect_external_url', ''),
(342, 120, '_wpcf7_redirect_use_external_url', ''),
(343, 120, '_wpcf7_redirect_http_build_query', ''),
(344, 120, '_wpcf7_redirect_open_in_new_tab', ''),
(345, 120, '_wpcf7_redirect_after_sent_script', ''),
(359, 122, '_form', '<div class=\"loan_all loan_company col-lg-6\">\n<h2>Company Information</h2>\n<label> Company Name*\n[text CompanyName id:company_name]</label>\n\n<label> Company Address*\n[textarea* CompanyAddress id:company_address]</label>\n\n<label> Contact Number*\n[tel CompanyContact id:company_contact]</label>\n\n<label> Employment Status*\n[select* EmploymentStatus id:employment_status include_blank \"Employed\" \"Self-Employed\"]</label>\n\n<label> Years Of Service*\n[select* YearsOfService id:years_of_service_company include_blank \"< 3 Months\" \"< 1 Year\" \"1 - 5 Years\" \"6 - 10 Years\" \"> 10 Years\"]</label>\n\n<label>Job Position/Department*\n[text* JobPositionDepartment id:position_department akismet:author]</label>\n</div>'),
(360, 122, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:35:\"[your-name] <tongtong0507@live.com>\";s:6:\"sender\";s:35:\"[your-name] <tongtong0507@live.com>\";s:9:\"recipient\";s:21:\"tongtong0507@live.com\";s:4:\"body\";s:179:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(361, 122, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:26:\"Motorbike \"[your-subject]\"\";s:6:\"sender\";s:33:\"Motorbike <tongtong0507@live.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:121:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\";s:18:\"additional_headers\";s:31:\"Reply-To: tongtong0507@live.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(362, 122, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(363, 122, '_additional_settings', ''),
(364, 122, '_locale', 'en_US'),
(365, 122, '_wpcf7_redirect_page_id', '0'),
(366, 122, '_wpcf7_redirect_external_url', ''),
(367, 122, '_wpcf7_redirect_use_external_url', ''),
(368, 122, '_wpcf7_redirect_http_build_query', ''),
(369, 122, '_wpcf7_redirect_open_in_new_tab', ''),
(370, 122, '_wpcf7_redirect_after_sent_script', ''),
(371, 123, '_form', '<div class=\"loan_all loan_attachment\">\n<h2>Attachment</h2>\n<label> Scan Copy of IC (Front) <span class=\"required\">*</span>\n    [file* ICFront limit:2000000 id:ic_front] </label>\n\n<label> Scan Copy of IC (Back) <span class=\"required\">*</span>\n    [file* ICBack limit:2000000 id:ic_back]</label>\n\n<label> Scan Copy 0f Salary Slip OR SSM (PaySlip1)<span class=\"required\">*</span>\n    [file* Payslip1 limit:2000000 id:payslip_1] </label>\n\n<label> Scan Copy 0f Salary Slip OR SSM (PaySlip2)<span class=\"required\">*</span>\n    [file* Payslip2 limit:2000000 id:payslip_2] </label>\n</div>'),
(372, 123, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:26:\"Motorbike \"[your-subject]\"\";s:6:\"sender\";s:35:\"[your-name] <tongtong0507@live.com>\";s:9:\"recipient\";s:21:\"tongtong0507@live.com\";s:4:\"body\";s:179:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(373, 123, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:26:\"Motorbike \"[your-subject]\"\";s:6:\"sender\";s:33:\"Motorbike <tongtong0507@live.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:121:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\";s:18:\"additional_headers\";s:31:\"Reply-To: tongtong0507@live.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(374, 123, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(375, 123, '_additional_settings', ''),
(376, 123, '_locale', 'en_US'),
(377, 123, '_wpcf7_redirect_page_id', '0'),
(378, 123, '_wpcf7_redirect_external_url', ''),
(379, 123, '_wpcf7_redirect_use_external_url', ''),
(380, 123, '_wpcf7_redirect_http_build_query', ''),
(381, 123, '_wpcf7_redirect_open_in_new_tab', ''),
(382, 123, '_wpcf7_redirect_after_sent_script', ''),
(383, 124, '_form', '<div class=\"loan_all loan_emergency_1 col-lg-6\">\n<h2>Emergency Contact 1</h2>\n<label> Full Name (Immediate Family or Relatives)<span class=\"required\">*</span>\n[text Emergency1FullName id:emergency_1_full_name]</label>\n\n<label> Current Home Address<span class=\"required\">*</span>\n[textarea* Emergency1Address id:emergency_1_address]</label>\n\n<label> Contact Number<span class=\"required\">*</span>\n[tel Emergency1Contact id:id:emergency_1_contact]</label>\n\n<label> Relationship <span class=\"required\">*</span>\n[text* Emergency1Relationship id:id:emergency_1_relationship]</label>\n</div>'),
(384, 124, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:26:\"Motorbike \"[your-subject]\"\";s:6:\"sender\";s:35:\"[your-name] <tongtong0507@live.com>\";s:9:\"recipient\";s:21:\"tongtong0507@live.com\";s:4:\"body\";s:179:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(385, 124, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:26:\"Motorbike \"[your-subject]\"\";s:6:\"sender\";s:33:\"Motorbike <tongtong0507@live.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:121:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\";s:18:\"additional_headers\";s:31:\"Reply-To: tongtong0507@live.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(386, 124, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(387, 124, '_additional_settings', ''),
(388, 124, '_locale', 'en_US'),
(389, 124, '_wpcf7_redirect_page_id', '0'),
(390, 124, '_wpcf7_redirect_external_url', ''),
(391, 124, '_wpcf7_redirect_use_external_url', ''),
(392, 124, '_wpcf7_redirect_http_build_query', ''),
(393, 124, '_wpcf7_redirect_open_in_new_tab', ''),
(394, 124, '_wpcf7_redirect_after_sent_script', ''),
(395, 124, '_config_errors', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(396, 125, '_form', '<div class=\"loan_all loan_emergency_2 col-lg-6\">\n<h2>Emergency Contact 2</h2>\n<label> Full Name (Immediate Family or Relatives)<span class=\"required\">*</span>\n[text Emergency2FullName id:emergency_2_full_name]</label>\n\n<label> Current Home Address<span class=\"required\">*</span>\n[textarea* Emergency2Address id:emergency_2_address]</label>\n\n<label> Contact Number<span class=\"required\">*</span>\n[tel Emergency2Contact id:id:emergency_2_contact]</label>\n\n<label> Relationship <span class=\"required\">*</span>\n[text* Emergency2Relationship id:id:emergency_2_relationship]</label>\n</div>'),
(397, 125, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:26:\"Motorbike \"[your-subject]\"\";s:6:\"sender\";s:35:\"[your-name] <tongtong0507@live.com>\";s:9:\"recipient\";s:21:\"tongtong0507@live.com\";s:4:\"body\";s:179:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(398, 125, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:26:\"Motorbike \"[your-subject]\"\";s:6:\"sender\";s:33:\"Motorbike <tongtong0507@live.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:121:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\";s:18:\"additional_headers\";s:31:\"Reply-To: tongtong0507@live.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(399, 125, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(400, 125, '_additional_settings', ''),
(401, 125, '_locale', 'en_US'),
(402, 125, '_wpcf7_redirect_page_id', '0'),
(403, 125, '_wpcf7_redirect_external_url', ''),
(404, 125, '_wpcf7_redirect_use_external_url', ''),
(405, 125, '_wpcf7_redirect_http_build_query', ''),
(406, 125, '_wpcf7_redirect_open_in_new_tab', ''),
(407, 125, '_wpcf7_redirect_after_sent_script', ''),
(408, 125, '_config_errors', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(409, 126, 'new_arrival', 'a:4:{i:0;s:2:\"61\";i:1;s:2:\"63\";i:2;s:2:\"65\";i:3;s:2:\"67\";}'),
(410, 126, '_new_arrival', 'field_5a9a5e3582500'),
(411, 126, 'new_arrivals', 'a:3:{i:0;s:2:\"61\";i:1;s:2:\"63\";i:2;s:2:\"65\";}'),
(412, 126, '_new_arrivals', 'field_5a9a5e3582500'),
(413, 127, '_wp_attached_file', '2018/03/honda.png'),
(414, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:241;s:4:\"file\";s:17:\"2018/03/honda.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"honda-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"honda-300x241.png\";s:5:\"width\";i:300;s:6:\"height\";i:241;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:17:\"honda-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(415, 128, '_wp_attached_file', '2018/03/kawasaki.png'),
(416, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:225;s:4:\"file\";s:20:\"2018/03/kawasaki.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"kawasaki-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"kawasaki-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"kawasaki-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(417, 129, '_wp_attached_file', '2018/03/YAMAHA_bg.jpg'),
(418, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:188;s:4:\"file\";s:21:\"2018/03/YAMAHA_bg.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"YAMAHA_bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"YAMAHA_bg-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:21:\"YAMAHA_bg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(419, 130, '_menu_item_type', 'taxonomy'),
(420, 130, '_menu_item_menu_item_parent', '88'),
(421, 130, '_menu_item_object_id', '3'),
(422, 130, '_menu_item_object', 'brand'),
(423, 130, '_menu_item_target', ''),
(424, 130, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(425, 130, '_menu_item_xfn', ''),
(426, 130, '_menu_item_url', ''),
(428, 131, '_menu_item_type', 'taxonomy'),
(429, 131, '_menu_item_menu_item_parent', '88'),
(430, 131, '_menu_item_object_id', '4'),
(431, 131, '_menu_item_object', 'brand'),
(432, 131, '_menu_item_target', ''),
(433, 131, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(434, 131, '_menu_item_xfn', ''),
(435, 131, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(3, 1, '2018-03-03 06:28:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-03 06:28:44', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?p=3', 0, 'post', '', 0),
(4, 1, '2018-03-03 06:42:38', '2018-03-03 06:42:38', '<div class=\"col-lg-6\">\r\n<div class=\"loan_all loan_personal\">\r\n<h2>1. Personal Information</h2>\r\n<label> Full Name<span class=\"required\">*</span>\r\n    [text* FullName] </label>\r\n\r\n<label> Mobile Number<span class=\"required\">*</span>\r\n    [tel* MobileNumber id:mobile_number]</label>\r\n\r\n<label> Current Home Address<span class=\"required\">*</span>\r\n[textarea* CurrentHomeAddress id:current_home_address]</label>\r\n\r\n<label> Residence Type<span class=\"required\">*</span>\r\n[select* ResidenceType id:residence_type include_blank \"Own \" \"Parent\" \"Relative\" \"Renting\" \"Company\"]</label>\r\n\r\n<label> Years Of Stay<span class=\"required\">*</span>\r\n[select* YearsOfStay id:years_of_stay include_blank \"< 1 year\" \"1 - 5 years\" \"6 - 10 years\" \"> 10 years\"]</label>\r\n\r\n<label> Status<span class=\"required\">*</span>\r\n[select* Status id:status include_blank \"Single\" \"Married\"]</label>\r\n</div>\r\n</div>\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"col-lg-6\">\r\n<div class=\"loan_all loan_company col-lg-6\">\r\n<h2>2. Company Information</h2>\r\n<label> Company Name<span class=\"required\">*</span>\r\n[text CompanyName id:company_name]</label>\r\n\r\n<label> Contact Number<span class=\"required\">*</span>\r\n[tel CompanyContact id:company_contact]</label>\r\n\r\n<label> Company Address<span class=\"required\">*</span>\r\n[textarea* CompanyAddress id:company_address]</label>\r\n\r\n<label> Employment Status<span class=\"required\">*</span>\r\n[select* EmploymentStatus id:employment_status include_blank \"Employed\" \"Self-Employed\"]</label>\r\n\r\n<label> Years Of Service<span class=\"required\">*</span>\r\n[select* YearsOfService id:years_of_service_company include_blank \"< 3 Months\" \"< 1 Year\" \"1 - 5 Years\" \"6 - 10 Years\" \"> 10 Years\"]</label>\r\n\r\n<label>Job Position/Department<span class=\"required\">*</span>\r\n[text* JobPositionDepartment id:position_department akismet:author]</label>\r\n</div>\r\n</div>\r\n\r\n\r\n\r\n\r\n<div class=\"col-lg-6\">\r\n<div class=\"loan_all loan col-lg-6\">\r\n<h2>3. Loan Information</h2>\r\n<label> Bike Model/Registration Number<span class=\"required\">*</span>\r\n[text* BikeRegistrationNumber id:bike_registration_number]</label>\r\n\r\n<label> Bike Condition<span class=\"required\">*</span>\r\n[select* BikeCondition id:bike_condition include_blank \"New\" \"Used\"]</label>\r\n\r\n<label> Downpayment<span class=\"required\">*</span>\r\n[text Downpayment id:downpayment]</label>\r\n\r\n<label> Instalment Period<span class=\"required\">*</span>\r\n[select* InstalmentPeriod id:instalment_period include_blank \"12 Months\" \"24 Months\" \"36 Months\" \"48 Months\" \"60 Months\" \"72 Months\" \"84 Months\"]</label>\r\n\r\n<label>Preferred Location For Bike Collection<span class=\"required\">*</span>\r\n[select* PreferredLocationForBikeCollection id:bike_collect_location include_blank \"Batu Cave\" \"Ampang\" \"Batang Kali\"]</label>\r\n</div>\r\n</div>\r\n\r\n\r\n\r\n<div class=\"col-lg-6\">\r\n<div class=\"loan_all loan_attachment\">\r\n<h2>4. Attachment</h2>\r\n<label> Scan Copy of IC (Front) <span class=\"required\">*</span>\r\n    [file* ICFront limit:2000000 id:ic_front]<label class=\"custom-file-label\" for=\"ic_front\"><strong>Choose a file</strong></label></label>\r\n\r\n<label> Scan Copy of IC (Back) <span class=\"required\">*</span>\r\n    [file* ICBack limit:2000000 id:ic_back]<label class=\"custom-file-label\" for=\"ic_back\"><strong>Choose a file</strong></label></label>\r\n\r\n<label> Scan Copy 0f Salary Slip OR SSM (PaySlip1)<span class=\"required\">*</span>\r\n    [file* Payslip1 limit:2000000 id:payslip_1] <label class=\"custom-file-label\" for=\"payslip_1\"><strong>Choose a file</strong></label></label>\r\n\r\n<label> Scan Copy 0f Salary Slip OR SSM (PaySlip2)<span class=\"required\">*</span>\r\n    [file* Payslip2 limit:2000000 id:payslip_2] <label class=\"custom-file-label\" for=\"payslip_2\"><strong>Choose a file</strong></label></label>\r\n</div>\r\n</div>\r\n\r\n\r\n\r\n<div class=\"col-lg-6\">\r\n<div class=\"loan_all loan_emergency_1\">\r\n<h2>5. Emergency Contact 1</h2>\r\n<label> Full Name (Immediate Family or Relatives)<span class=\"required\">*</span>\r\n[text Emergency1FullName id:emergency_1_full_name]</label>\r\n\r\n<label> Current Home Address<span class=\"required\">*</span>\r\n[textarea* Emergency1Address id:emergency_1_address]</label>\r\n\r\n<label> Contact Number<span class=\"required\">*</span>\r\n[tel Emergency1Contact id:id:emergency_1_contact]</label>\r\n\r\n<label> Relationship <span class=\"required\">*</span>\r\n[text* Emergency1Relationship id:id:emergency_1_relationship]</label>\r\n</div>\r\n</div>\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"col-lg-6\">\r\n<div class=\"loan_all loan_emergency_2 \">\r\n<h2>6. Emergency Contact 2</h2>\r\n<label> Full Name (Immediate Family or Relatives)<span class=\"required\">*</span>\r\n[text Emergency2FullName id:emergency_2_full_name]</label>\r\n\r\n<label> Current Home Address<span class=\"required\">*</span>\r\n[textarea* Emergency2Address id:emergency_2_address]</label>\r\n\r\n<label> Contact Number<span class=\"required\">*</span>\r\n[tel Emergency2Contact id:id:emergency_2_contact]</label>\r\n\r\n<label> Relationship <span class=\"required\">*</span>\r\n[text* Emergency2Relationship id:id:emergency_2_relationship]</label>\r\n</div>\r\n</div>\r\n\r\n\r\n[submit id:loan_submit_button \"Submit\"]\n1\nApply loan\n[FullName] <tongtong0507@live.com>\ntongtong0507@live.com\nFrom: [FullName]\r\nSubject: Apply Loan\r\n\r\n[MobileNumber]\r\n[CurrentHomeAddress]\r\n[ResidenceType]\r\n[YearsOfStay]\r\n[Status]\r\n[CompanyName]\r\n[CompanyAddress]\r\n[CompanyContact]\r\n[EmploymentStatus]\r\n[YearsOfService]\r\n[JobPositionDepartment]\r\n[BikeRegistrationNumber]\r\n[BikeCondition]\r\n[Downpayment]\r\n[InstalmentPeriod]\r\n[PreferredLocationForBikeCollection]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\n\n[ICFront][ICBack][Payslip1][Payslip2]\n\n\n\nMotorbike \"[your-subject]\"\nMotorbike <tongtong0507@live.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\nReply-To: tongtong0507@live.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Apply Loan', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-03-05 15:04:11', '2018-03-05 15:04:11', '', 0, 'http://localhost:7080/motorbike/?post_type=wpcf7_contact_form&#038;p=4', 0, 'wpcf7_contact_form', '', 0),
(7, 1, '2018-03-03 07:44:50', '0000-00-00 00:00:00', '{\n    \"motorbike::nav_menu_locations[social]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-03 07:44:50\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '6717018b-77a0-4191-9fe0-4518f799c671', '', '', '2018-03-03 07:44:50', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?p=7', 0, 'customize_changeset', '', 0),
(8, 1, '2018-03-03 08:19:12', '2018-03-03 08:19:12', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"motor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Motor Attributes', 'motor-attributes', 'publish', 'closed', 'closed', '', 'group_5a9a5a7268371', '', '', '2018-03-04 05:16:15', '2018-03-04 05:16:15', '', 0, 'http://localhost:7080/motorbike/?post_type=acf-field-group&#038;p=8', 0, 'acf-field-group', '', 0),
(9, 1, '2018-03-03 08:19:12', '2018-03-03 08:19:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Price', 'price', 'publish', 'closed', 'closed', '', 'field_5a9a5a77edf2d', '', '', '2018-03-03 16:00:37', '2018-03-03 16:00:37', '', 8, 'http://localhost:7080/motorbike/?post_type=acf-field&#038;p=9', 0, 'acf-field', '', 0),
(13, 1, '2018-03-03 08:33:56', '2018-03-03 08:33:56', 'a:16:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Gallery', 'gallery', 'publish', 'closed', 'closed', '', 'field_5a9a5dba57b8c', '', '', '2018-03-03 16:00:37', '2018-03-03 16:00:37', '', 8, 'http://localhost:7080/motorbike/?post_type=acf-field&#038;p=13', 1, 'acf-field', '', 0),
(14, 1, '2018-03-03 08:34:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 08:34:22', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=14', 0, 'motor', '', 0),
(15, 1, '2018-03-03 08:36:50', '2018-03-03 08:36:50', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"71\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home Page', 'home-page', 'publish', 'closed', 'closed', '', 'group_5a9a5e21eefe4', '', '', '2018-03-06 14:52:03', '2018-03-06 14:52:03', '', 0, 'http://localhost:7080/motorbike/?post_type=acf-field-group&#038;p=15', 0, 'acf-field-group', '', 0),
(16, 1, '2018-03-03 08:36:51', '2018-03-03 08:36:51', 'a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:5:\"motor\";}s:8:\"taxonomy\";a:0:{}s:7:\"filters\";s:0:\"\";s:8:\"elements\";a:1:{i:0;s:14:\"featured_image\";}s:3:\"min\";i:3;s:3:\"max\";i:8;s:13:\"return_format\";s:6:\"object\";}', 'New Arrivals', 'new_arrivals', 'publish', 'closed', 'closed', '', 'field_5a9a5e3582500', '', '', '2018-03-06 14:52:03', '2018-03-06 14:52:03', '', 15, 'http://localhost:7080/motorbike/?post_type=acf-field&#038;p=16', 0, 'acf-field', '', 0),
(19, 1, '2018-03-03 08:45:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 08:45:42', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=acf-field-group&p=19', 0, 'acf-field-group', '', 0),
(24, 1, '2018-03-03 10:17:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 10:17:24', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=24', 0, 'motor', '', 0),
(25, 1, '2018-03-03 10:20:55', '2018-03-03 10:20:55', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"brand\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Brands Attributes', 'brands-attributes', 'publish', 'closed', 'closed', '', 'group_5a9a76ed6d950', '', '', '2018-03-03 14:59:58', '2018-03-03 14:59:58', '', 0, 'http://localhost:7080/motorbike/?post_type=acf-field-group&#038;p=25', 0, 'acf-field-group', '', 0),
(26, 1, '2018-03-03 10:20:55', '2018-03-03 10:20:55', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_5a9a76f23965e', '', '', '2018-03-03 10:20:55', '2018-03-03 10:20:55', '', 25, 'http://localhost:7080/motorbike/?post_type=acf-field&p=26', 0, 'acf-field', '', 0),
(27, 1, '2018-03-03 10:21:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 10:21:53', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=27', 0, 'motor', '', 0),
(28, 1, '2018-03-03 10:23:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 10:23:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=28', 0, 'motor', '', 0),
(29, 1, '2018-03-03 13:12:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 13:12:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=29', 0, 'motor', '', 0),
(30, 1, '2018-03-03 13:13:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 13:13:55', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=30', 0, 'motor', '', 0),
(31, 1, '2018-03-03 13:36:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 13:36:51', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=31', 0, 'motor', '', 0),
(32, 1, '2018-03-03 13:37:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 13:37:26', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=32', 0, 'motor', '', 0),
(33, 1, '2018-03-03 13:50:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 13:50:40', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=33', 0, 'motor', '', 0),
(34, 1, '2018-03-03 13:55:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 13:55:53', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=34', 0, 'motor', '', 0),
(35, 1, '2018-03-03 13:56:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 13:56:45', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=35', 0, 'motor', '', 0),
(36, 1, '2018-03-03 14:02:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 14:02:01', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=36', 0, 'motor', '', 0),
(37, 1, '2018-03-03 14:02:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 14:02:37', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=37', 0, 'motor', '', 0),
(38, 1, '2018-03-03 14:08:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 14:08:14', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=38', 0, 'motor', '', 0),
(39, 1, '2018-03-03 14:09:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 14:09:25', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=39', 0, 'motor', '', 0),
(40, 1, '2018-03-03 14:11:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 14:11:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=40', 0, 'motor', '', 0),
(41, 1, '2018-03-03 14:12:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 14:12:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=41', 0, 'motor', '', 0),
(44, 1, '2018-03-03 14:21:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 14:21:06', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=44', 0, 'motor', '', 0),
(45, 1, '2018-03-03 14:22:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 14:22:24', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=45', 0, 'motor', '', 0),
(46, 1, '2018-03-03 14:23:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 14:23:05', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=46', 0, 'motor', '', 0),
(47, 1, '2018-03-03 14:23:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 14:23:40', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=47', 0, 'motor', '', 0),
(48, 1, '2018-03-03 14:23:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 14:23:54', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=48', 0, 'motor', '', 0),
(49, 1, '2018-03-03 14:24:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 14:24:17', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=49', 0, 'motor', '', 0),
(50, 1, '2018-03-03 14:24:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 14:24:49', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=50', 0, 'motor', '', 0),
(51, 1, '2018-03-03 14:27:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 14:27:10', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=51', 0, 'motor', '', 0),
(52, 1, '2018-03-03 14:27:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 14:27:39', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=52', 0, 'motor', '', 0),
(54, 1, '2018-03-03 14:56:22', '2018-03-03 14:56:22', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Contact Detail', 'contact_detail', 'publish', 'closed', 'closed', '', 'field_5a9ab6a25ac13', '', '', '2018-03-03 16:00:37', '2018-03-03 16:00:37', '', 8, 'http://localhost:7080/motorbike/?post_type=acf-field&#038;p=54', 2, 'acf-field', '', 0),
(55, 1, '2018-03-03 14:56:22', '2018-03-03 14:56:22', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Outlet Contact', 'outlet_contact', 'publish', 'closed', 'closed', '', 'field_5a9ab6b95ac14', '', '', '2018-03-03 14:56:22', '2018-03-03 14:56:22', '', 54, 'http://localhost:7080/motorbike/?post_type=acf-field&p=55', 0, 'acf-field', '', 0),
(56, 1, '2018-03-03 14:57:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 14:57:51', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=56', 0, 'motor', '', 0),
(57, 1, '2018-03-03 15:17:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 15:17:05', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=acf-field-group&p=57', 0, 'acf-field-group', '', 0),
(58, 1, '2018-03-03 15:25:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-03 15:25:00', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=acf-field-group&p=58', 0, 'acf-field-group', '', 0),
(61, 1, '2018-03-03 15:55:29', '2018-03-03 15:55:29', '', 'Honda 1', '', 'publish', 'closed', 'closed', '', 'honda-1', '', '', '2018-03-04 03:22:51', '2018-03-04 03:22:51', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&#038;p=61', 0, 'motor', '', 0),
(63, 1, '2018-03-03 15:55:53', '2018-03-03 15:55:53', '', 'Honda 2', '', 'publish', 'closed', 'closed', '', 'honda-2', '', '', '2018-03-04 03:23:15', '2018-03-04 03:23:15', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&#038;p=63', 0, 'motor', '', 0),
(65, 1, '2018-03-03 15:56:17', '2018-03-03 15:56:17', '', 'Kawasaki 1', '', 'publish', 'closed', 'closed', '', 'kawasaki-1', '', '', '2018-03-04 03:21:30', '2018-03-04 03:21:30', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&#038;p=65', 0, 'motor', '', 0),
(67, 1, '2018-03-03 15:56:39', '2018-03-03 15:56:39', '', 'Kawasaki 2', '', 'publish', 'closed', 'closed', '', 'kawasaki-2', '', '', '2018-03-04 03:21:14', '2018-03-04 03:21:14', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&#038;p=67', 0, 'motor', '', 0),
(71, 1, '2018-03-03 16:13:46', '2018-03-03 16:13:46', '', 'Landing Page', '', 'publish', 'closed', 'closed', '', 'landing-page', '', '', '2018-03-06 14:52:14', '2018-03-06 14:52:14', '', 0, 'http://localhost:7080/motorbike/?page_id=71', 0, 'page', '', 0),
(72, 1, '2018-03-03 16:13:46', '2018-03-03 16:13:46', '', 'Landing Page', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2018-03-03 16:13:46', '2018-03-03 16:13:46', '', 71, 'http://localhost:7080/motorbike/2018/03/03/71-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-03-03 16:14:33', '2018-03-03 16:14:33', '', 'Landing Page', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2018-03-03 16:14:33', '2018-03-03 16:14:33', '', 71, 'http://localhost:7080/motorbike/2018/03/03/71-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-03-03 16:14:55', '2018-03-03 16:14:55', 'hjh', 'Landing Page', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2018-03-03 16:14:55', '2018-03-03 16:14:55', '', 71, 'http://localhost:7080/motorbike/2018/03/03/71-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-03-04 01:05:42', '2018-03-04 01:05:42', '', 'Landing Page', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2018-03-04 01:05:42', '2018-03-04 01:05:42', '', 71, 'http://localhost:7080/motorbike/2018/03/04/71-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-03-04 01:13:09', '2018-03-04 01:13:09', '[contact-form-7 id=\"4\" title=\"Apply Loan\"]', 'Apply Loan', '', 'publish', 'closed', 'closed', '', 'apply-loan', '', '', '2018-03-04 07:46:29', '2018-03-04 07:46:29', '', 0, 'http://localhost:7080/motorbike/?page_id=84', 0, 'page', '', 0),
(85, 1, '2018-03-04 01:13:09', '2018-03-04 01:13:09', '', 'Apply Loan', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2018-03-04 01:13:09', '2018-03-04 01:13:09', '', 84, 'http://localhost:7080/motorbike/2018/03/04/84-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-03-04 01:13:36', '2018-03-04 01:13:36', '', 'Top Brands', '', 'publish', 'closed', 'closed', '', 'top-brands', '', '', '2018-03-04 01:13:36', '2018-03-04 01:13:36', '', 0, 'http://localhost:7080/motorbike/?page_id=86', 0, 'page', '', 0),
(87, 1, '2018-03-04 01:13:36', '2018-03-04 01:13:36', '', 'Top Brands', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-03-04 01:13:36', '2018-03-04 01:13:36', '', 86, 'http://localhost:7080/motorbike/2018/03/04/86-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-03-04 01:14:00', '2018-03-04 01:14:00', ' ', '', '', 'publish', 'closed', 'closed', '', '88', '', '', '2018-03-08 14:14:35', '2018-03-08 14:14:35', '', 0, 'http://localhost:7080/motorbike/?p=88', 2, 'nav_menu_item', '', 0),
(89, 1, '2018-03-04 01:14:00', '2018-03-04 01:14:00', ' ', '', '', 'publish', 'closed', 'closed', '', '89', '', '', '2018-03-08 14:14:35', '2018-03-08 14:14:35', '', 0, 'http://localhost:7080/motorbike/?p=89', 5, 'nav_menu_item', '', 0),
(92, 1, '2018-03-04 02:17:57', '2018-03-04 02:17:57', '', 'Apply Loan', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2018-03-04 02:17:57', '2018-03-04 02:17:57', '', 84, 'http://localhost:7080/motorbike/2018/03/04/84-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2018-03-04 02:19:48', '2018-03-04 02:19:48', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-03-08 14:14:35', '2018-03-08 14:14:35', '', 0, 'http://localhost:7080/motorbike/?p=93', 1, 'nav_menu_item', '', 0),
(94, 1, '2018-03-04 02:32:08', '2018-03-04 02:32:08', '', 'Landing Page', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2018-03-04 02:32:08', '2018-03-04 02:32:08', '', 71, 'http://localhost:7080/motorbike/2018/03/04/71-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2018-03-04 03:21:10', '2018-03-04 03:21:10', '', 'kawasaki_dummy_2', '', 'inherit', 'open', 'closed', '', 'kawasaki_dummy_2', '', '', '2018-03-04 03:21:10', '2018-03-04 03:21:10', '', 67, 'http://localhost:7080/motorbike/wp-content/uploads/2018/03/kawasaki_dummy_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2018-03-04 03:21:26', '2018-03-04 03:21:26', '', 'kawasaki_dummy_1', '', 'inherit', 'open', 'closed', '', 'kawasaki_dummy_1', '', '', '2018-03-04 03:21:26', '2018-03-04 03:21:26', '', 65, 'http://localhost:7080/motorbike/wp-content/uploads/2018/03/kawasaki_dummy_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2018-03-04 03:21:49', '2018-03-04 03:21:49', '', 'honda_dummy_2', '', 'inherit', 'open', 'closed', '', 'honda_dummy_2', '', '', '2018-03-04 03:21:49', '2018-03-04 03:21:49', '', 63, 'http://localhost:7080/motorbike/wp-content/uploads/2018/03/honda_dummy_2.jpeg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2018-03-04 03:22:48', '2018-03-04 03:22:48', '', 'honda_dummy_1', '', 'inherit', 'open', 'closed', '', 'honda_dummy_1', '', '', '2018-03-04 03:22:48', '2018-03-04 03:22:48', '', 61, 'http://localhost:7080/motorbike/wp-content/uploads/2018/03/honda_dummy_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2018-03-04 04:39:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-04 04:39:43', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=102', 0, 'motor', '', 0),
(103, 1, '2018-03-04 04:41:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-04 04:41:43', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?page_id=103', 0, 'page', '', 0),
(104, 1, '2018-03-04 04:42:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-04 04:42:53', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=acf-field-group&p=104', 0, 'acf-field-group', '', 0),
(105, 1, '2018-03-04 05:14:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-04 05:14:10', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=car&p=105', 0, 'car', '', 0),
(106, 1, '2018-03-04 05:14:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-04 05:14:19', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=106', 0, 'motor', '', 0),
(107, 1, '2018-03-04 05:14:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-04 05:14:55', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=acf-field-group&p=107', 0, 'acf-field-group', '', 0),
(108, 1, '2018-03-04 05:15:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-04 05:15:56', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=motor&p=108', 0, 'motor', '', 0),
(109, 1, '2018-03-04 05:16:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-04 05:16:03', '0000-00-00 00:00:00', '', 0, 'http://localhost:7080/motorbike/?post_type=car&p=109', 0, 'car', '', 0),
(113, 1, '2018-03-04 07:12:48', '2018-03-04 07:12:48', '{\"id\":\"113\",\"field_id\":1,\"settings\":{\"form_title\":\"Apply Loan\",\"form_desc\":\"\",\"form_class\":\"\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"submit_class\":\"\",\"honeypot\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Apply Loan Entry\",\"sender_name\":\"Motorbike\",\"sender_address\":\"{admin_email}\",\"replyto\":\"\",\"message\":\"{all_fields}\"}},\"confirmation_type\":\"message\",\"confirmation_message\":\"Thanks for contacting us! We will be in touch with you shortly.\",\"confirmation_message_scroll\":\"1\",\"confirmation_page\":\"84\",\"confirmation_redirect\":\"\"},\"meta\":{\"template\":\"blank\"}}', 'Apply Loan', '', 'publish', 'closed', 'closed', '', 'apply-loan', '', '', '2018-03-04 07:12:49', '2018-03-04 07:12:49', '', 0, 'http://localhost:7080/motorbike/?post_type=wpforms&#038;p=113', 0, 'wpforms', '', 0),
(114, 1, '2018-03-04 07:46:13', '2018-03-04 07:46:13', '[contact-form-7 id=\"4\" title=\"Apply Loan\"]', 'Apply Loan', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2018-03-04 07:46:13', '2018-03-04 07:46:13', '', 84, 'http://localhost:7080/motorbike/2018/03/04/84-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2018-03-04 10:47:10', '2018-03-04 10:47:10', 'Thank you very muchie', 'Success', '', 'publish', 'closed', 'closed', '', 'success', '', '', '2018-03-04 10:47:10', '2018-03-04 10:47:10', '', 0, 'http://localhost:7080/motorbike/?page_id=117', 0, 'page', '', 0),
(118, 1, '2018-03-04 10:47:10', '2018-03-04 10:47:10', 'Thank you very muchie', 'Success', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2018-03-04 10:47:10', '2018-03-04 10:47:10', '', 117, 'http://localhost:7080/motorbike/2018/03/04/117-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2018-03-04 10:50:16', '2018-03-04 10:50:16', '<div class=\"loan_all loan_personal col-lg-6\">\r\n<h2>Personal Information</h2>\r\n<label> Full Name (required)\r\n    [text* FullName] </label>\r\n\r\n<label> Mobile Number (required)\r\n    [tel* MobileNumber id:mobile_number]</label>\r\n\r\n<label> Current Home Address (required)\r\n[textarea* CurrentHomeAddress id:current_home_address]</label>\r\n\r\n<label> Residence Type (required)\r\n[select* ResidenceType id:residence_type include_blank \"Own \" \"Parent\" \"Relative\" \"Renting\" \"Company\"]</label>\r\n\r\n<label> Years Of Stay (required)\r\n[select* YearsOfStay id:years_of_stay include_blank \"< 1 year\" \"1 - 5 years\" \"6 - 10 years\" \"> 10 years\"]</label>\r\n\r\n<label> Status (required)\r\n[select* Status id:status include_blank \"Single\" \"Married\"]</label>\r\n</div>\n1\nMotorbike \"[MobileNumber]\"\n[FullName] <tongtong0507@live.com>\ntongtong0507@live.com\nFrom: [FullName]\r\nSubject: Apply Loan\r\n\r\n[CurrentHomeAddress]\r\n[ResidenceType]\r\n[YearsOfStay]\r\n[Status]\r\n[CompanyName]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\n\n[ScanCopyofICFront]\n\n\n\nMotorbike \"[your-subject]\"\nMotorbike <tongtong0507@live.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\nReply-To: tongtong0507@live.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Sub - Personal Information', '', 'publish', 'closed', 'closed', '', 'apply-loan_copy', '', '', '2018-03-04 12:42:49', '2018-03-04 12:42:49', '', 0, 'http://localhost:7080/motorbike/?post_type=wpcf7_contact_form&#038;p=119', 0, 'wpcf7_contact_form', '', 0),
(120, 1, '2018-03-04 11:54:57', '2018-03-04 11:54:57', '<div class=\"loan_all loan col-lg-6\">\r\n<h2>Loan Information</h2>\r\n<label> Bike Registration Number (required)\r\n[text* BikeRegistrationNumber id:bike_registration_number]</label>\r\n\r\n<label> Bike Condition (required)\r\n[select* BikeCondition id:bike_condition include_blank \"New\" \"Used\"]</label>\r\n\r\n<label> Downpayment (required)\r\n[text Downpayment id:downpayment]</label>\r\n\r\n<label> Instalment Period (required)\r\n[select* InstalmentPeriod id:instalment_period include_blank \"12 Months\" \"24 Months\" \"36 Months\" \"48 Months\" \"60 Months\" \"72 Months\" \"84 Months\"]</label>\r\n\r\n<label>Preferred Location For Bike Collection (required)\r\n[select* PreferredLocationForBikeCollection id:bike_collect_location include_blank \"Batu Cave\" \"Ampang\" \"Batang Kali\"]</label>\r\n</div>\n1\nMotorbike \"[MobileNumber]\"\n[FullName] <tongtong0507@live.com>\ntongtong0507@live.com\nFrom: [FullName]\r\nSubject: Apply Loan\r\n\r\n[CurrentHomeAddress]\r\n[ResidenceType]\r\n[YearsOfStay]\r\n[Status]\r\n[CompanyName]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\n\n[ScanCopyofICFront]\n\n\n\nMotorbike \"[your-subject]\"\nMotorbike <tongtong0507@live.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\nReply-To: tongtong0507@live.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Sub - Loan Information', '', 'publish', 'closed', 'closed', '', 'apply-loan_copy-2', '', '', '2018-03-04 12:42:41', '2018-03-04 12:42:41', '', 0, 'http://localhost:7080/motorbike/?post_type=wpcf7_contact_form&#038;p=120', 0, 'wpcf7_contact_form', '', 0),
(122, 1, '2018-03-04 12:28:30', '2018-03-04 12:28:30', '<div class=\"loan_all loan_company col-lg-6\">\r\n<h2>Company Information</h2>\r\n<label> Company Name*\r\n[text CompanyName id:company_name]</label>\r\n\r\n<label> Company Address*\r\n[textarea* CompanyAddress id:company_address]</label>\r\n\r\n<label> Contact Number*\r\n[tel CompanyContact id:company_contact]</label>\r\n\r\n<label> Employment Status*\r\n[select* EmploymentStatus id:employment_status include_blank \"Employed\" \"Self-Employed\"]</label>\r\n\r\n<label> Years Of Service*\r\n[select* YearsOfService id:years_of_service_company include_blank \"< 3 Months\" \"< 1 Year\" \"1 - 5 Years\" \"6 - 10 Years\" \"> 10 Years\"]</label>\r\n\r\n<label>Job Position/Department*\r\n[text* JobPositionDepartment id:position_department akismet:author]</label>\r\n</div>\n1\n[your-name] <tongtong0507@live.com>\n[your-name] <tongtong0507@live.com>\ntongtong0507@live.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\n\n\n\n\n\nMotorbike \"[your-subject]\"\nMotorbike <tongtong0507@live.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\nReply-To: tongtong0507@live.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Sub - Company Information', '', 'publish', 'closed', 'closed', '', 'sub-company-information', '', '', '2018-03-04 13:13:39', '2018-03-04 13:13:39', '', 0, 'http://localhost:7080/motorbike/?post_type=wpcf7_contact_form&#038;p=122', 0, 'wpcf7_contact_form', '', 0),
(123, 1, '2018-03-04 13:20:41', '2018-03-04 13:20:41', '<div class=\"loan_all loan_attachment\">\r\n<h2>Attachment</h2>\r\n<label> Scan Copy of IC (Front) <span class=\"required\">*</span>\r\n    [file* ICFront limit:2000000 id:ic_front] </label>\r\n\r\n<label> Scan Copy of IC (Back) <span class=\"required\">*</span>\r\n    [file* ICBack limit:2000000 id:ic_back]</label>\r\n\r\n<label> Scan Copy 0f Salary Slip OR SSM (PaySlip1)<span class=\"required\">*</span>\r\n    [file* Payslip1 limit:2000000 id:payslip_1] </label>\r\n\r\n<label> Scan Copy 0f Salary Slip OR SSM (PaySlip2)<span class=\"required\">*</span>\r\n    [file* Payslip2 limit:2000000 id:payslip_2] </label>\r\n</div>\n1\nMotorbike \"[your-subject]\"\n[your-name] <tongtong0507@live.com>\ntongtong0507@live.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\n\n\n\n\n\nMotorbike \"[your-subject]\"\nMotorbike <tongtong0507@live.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\nReply-To: tongtong0507@live.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Sub - Attachement', '', 'publish', 'closed', 'closed', '', 'sub-attachement', '', '', '2018-03-04 13:21:00', '2018-03-04 13:21:00', '', 0, 'http://localhost:7080/motorbike/?post_type=wpcf7_contact_form&#038;p=123', 0, 'wpcf7_contact_form', '', 0),
(124, 1, '2018-03-05 13:19:27', '2018-03-05 13:19:27', '<div class=\"loan_all loan_emergency_1 col-lg-6\">\r\n<h2>Emergency Contact 1</h2>\r\n<label> Full Name (Immediate Family or Relatives)<span class=\"required\">*</span>\r\n[text Emergency1FullName id:emergency_1_full_name]</label>\r\n\r\n<label> Current Home Address<span class=\"required\">*</span>\r\n[textarea* Emergency1Address id:emergency_1_address]</label>\r\n\r\n<label> Contact Number<span class=\"required\">*</span>\r\n[tel Emergency1Contact id:id:emergency_1_contact]</label>\r\n\r\n<label> Relationship <span class=\"required\">*</span>\r\n[text* Emergency1Relationship id:id:emergency_1_relationship]</label>\r\n</div>\n1\nMotorbike \"[your-subject]\"\n[your-name] <tongtong0507@live.com>\ntongtong0507@live.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\nReply-To: [your-email]\n\n\n\n\nMotorbike \"[your-subject]\"\nMotorbike <tongtong0507@live.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\nReply-To: tongtong0507@live.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Sub - Emergency Contact 1', '', 'publish', 'closed', 'closed', '', 'sub-emergency-contact-1', '', '', '2018-03-05 13:25:04', '2018-03-05 13:25:04', '', 0, 'http://localhost:7080/motorbike/?post_type=wpcf7_contact_form&#038;p=124', 0, 'wpcf7_contact_form', '', 0),
(125, 1, '2018-03-05 13:26:20', '2018-03-05 13:26:20', '<div class=\"loan_all loan_emergency_2 col-lg-6\">\r\n<h2>Emergency Contact 2</h2>\r\n<label> Full Name (Immediate Family or Relatives)<span class=\"required\">*</span>\r\n[text Emergency2FullName id:emergency_2_full_name]</label>\r\n\r\n<label> Current Home Address<span class=\"required\">*</span>\r\n[textarea* Emergency2Address id:emergency_2_address]</label>\r\n\r\n<label> Contact Number<span class=\"required\">*</span>\r\n[tel Emergency2Contact id:id:emergency_2_contact]</label>\r\n\r\n<label> Relationship <span class=\"required\">*</span>\r\n[text* Emergency2Relationship id:id:emergency_2_relationship]</label>\r\n</div>\n1\nMotorbike \"[your-subject]\"\n[your-name] <tongtong0507@live.com>\ntongtong0507@live.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\nReply-To: [your-email]\n\n\n\n\nMotorbike \"[your-subject]\"\nMotorbike <tongtong0507@live.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Motorbike (http://localhost:7080/motorbike)\nReply-To: tongtong0507@live.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Emergency Contact 2', '', 'publish', 'closed', 'closed', '', 'emergency-contact-2', '', '', '2018-03-05 13:26:20', '2018-03-05 13:26:20', '', 0, 'http://localhost:7080/motorbike/?post_type=wpcf7_contact_form&p=125', 0, 'wpcf7_contact_form', '', 0),
(126, 1, '2018-03-06 14:52:14', '2018-03-06 14:52:14', '', 'Landing Page', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2018-03-06 14:52:14', '2018-03-06 14:52:14', '', 71, 'http://localhost:7080/motorbike/2018/03/06/71-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2018-03-07 15:14:05', '2018-03-07 15:14:05', '', 'honda', '', 'inherit', 'open', 'closed', '', 'honda', '', '', '2018-03-07 15:14:10', '2018-03-07 15:14:10', '', 0, 'http://localhost:7080/motorbike/wp-content/uploads/2018/03/honda.png', 0, 'attachment', 'image/png', 0),
(128, 1, '2018-03-07 15:14:34', '2018-03-07 15:14:34', '', 'kawasaki', '', 'inherit', 'open', 'closed', '', 'kawasaki', '', '', '2018-03-07 15:14:36', '2018-03-07 15:14:36', '', 0, 'http://localhost:7080/motorbike/wp-content/uploads/2018/03/kawasaki.png', 0, 'attachment', 'image/png', 0),
(129, 1, '2018-03-08 14:08:39', '2018-03-08 14:08:39', '', 'YAMAHA_bg', '', 'inherit', 'open', 'closed', '', 'yamaha_bg', '', '', '2018-03-08 14:08:39', '2018-03-08 14:08:39', '', 0, 'http://localhost:7080/motorbike/wp-content/uploads/2018/03/YAMAHA_bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2018-03-08 14:14:35', '2018-03-08 14:14:35', ' ', '', '', 'publish', 'closed', 'closed', '', '130', '', '', '2018-03-08 14:14:35', '2018-03-08 14:14:35', '', 0, 'http://localhost:7080/motorbike/?p=130', 3, 'nav_menu_item', '', 0),
(131, 1, '2018-03-08 14:14:35', '2018-03-08 14:14:35', ' ', '', '', 'publish', 'closed', 'closed', '', '131', '', '', '2018-03-08 14:14:35', '2018-03-08 14:14:35', '', 0, 'http://localhost:7080/motorbike/?p=131', 4, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 3, 'logo', '127'),
(2, 3, '_logo', 'field_5a9a76f23965e'),
(3, 4, 'logo', '128'),
(4, 4, '_logo', 'field_5a9a76f23965e');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Header', 'header', 0),
(3, 'Honda', 'honda', 0),
(4, 'Kawasaki', 'kawasaki', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(61, 3, 0),
(63, 3, 0),
(65, 4, 0),
(67, 4, 0),
(88, 2, 0),
(89, 2, 0),
(93, 2, 0),
(130, 2, 0),
(131, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'brand', '', 0, 2),
(4, 4, 'brand', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'motorbike'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:\"5.0\";}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(22, 1, 'nav_menu_recently_edited', '2'),
(23, 1, 'closedpostboxes_page', 'a:0:{}'),
(24, 1, 'metaboxhidden_page', 'a:7:{i:0;s:23:\"acf-group_5a9a76ed6d950\";i:1;s:23:\"acf-group_5a9a5a7268371\";i:2;s:12:\"revisionsdiv\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(25, 1, 'closedpostboxes_post', 'a:1:{i:0;s:9:\"formatdiv\";}'),
(26, 1, 'metaboxhidden_post', 'a:8:{i:0;s:23:\"acf-group_5a9a76ed6d950\";i:1;s:23:\"acf-group_5a9a5e21eefe4\";i:2;s:23:\"acf-group_5a9a5a7268371\";i:3;s:11:\"postexcerpt\";i:4;s:13:\"trackbacksdiv\";i:5;s:16:\"commentstatusdiv\";i:6;s:7:\"slugdiv\";i:7;s:9:\"authordiv\";}'),
(27, 1, 'closedpostboxes_motor', 'a:0:{}'),
(28, 1, 'metaboxhidden_motor', 'a:3:{i:0;s:23:\"acf-group_5a9a76ed6d950\";i:1;s:23:\"acf-group_5a9a5e21eefe4\";i:2;s:7:\"slugdiv\";}'),
(29, 1, 'meta-box-order_motor', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,tagsdiv-brand,postimagediv\";s:6:\"normal\";s:79:\"acf-group_5a9a76ed6d950,acf-group_5a9a5e21eefe4,acf-group_5a9a5a7268371,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(30, 1, 'screen_layout_motor', '2'),
(31, 1, 'wp_user-settings', 'editor_expand=on&libraryContent=browse&imgsize=full'),
(32, 1, 'wp_user-settings-time', '1520518136'),
(33, 1, 'acf_user_settings', 'a:0:{}'),
(34, 1, 'manageedit-acf-field-groupcolumnshidden', 'a:1:{i:0;s:18:\"acf-fg-description\";}'),
(35, 1, 'edit_acf-field-group_per_page', '20'),
(36, 1, 'closedpostboxes_dashboard', 'a:3:{i:0;s:18:\"dashboard_activity\";i:1;s:21:\"dashboard_quick_press\";i:2;s:17:\"dashboard_primary\";}'),
(37, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(38, 1, 'session_tokens', 'a:3:{s:64:\"b7e1c5700ab52606bb1929e9661cef0d83d58de43db864840d6372cc608eac3f\";a:4:{s:10:\"expiration\";i:1520607482;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36\";s:5:\"login\";i:1520434682;}s:64:\"96938a35bf1af860967a7a272dbb8dd26b01f71d216204775b17298d769c0494\";a:4:{s:10:\"expiration\";i:1520690523;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36\";s:5:\"login\";i:1520517723;}s:64:\"03ba581475a391ac8bef4e990ed9f0fe9575dfa50dcc49ec03634dca73ffb2a1\";a:4:{s:10:\"expiration\";i:1520691035;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36\";s:5:\"login\";i:1520518235;}}'),
(39, 1, 'wp_media_library_mode', 'list'),
(40, 1, 'meta-box-order_acf-field-group', 'a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:80:\"acf-field-group-fields,acf-field-group-locations,acf-field-group-options,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(41, 1, 'screen_layout_acf-field-group', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'motorbike', '$P$B08vvNbj4UT1q2StUizE6r3qqqn149/', 'motorbike', 'tongtong0507@live.com', '', '2018-03-03 06:28:28', '', 0, 'motorbike');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfBadLeechers`
--

CREATE TABLE `wp_wfBadLeechers` (
  `eMin` int(10) UNSIGNED NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hits` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfBlockedCommentLog`
--

CREATE TABLE `wp_wfBlockedCommentLog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `countryCode` varchar(2) NOT NULL,
  `blockCount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unixday` int(10) UNSIGNED NOT NULL,
  `blockType` varchar(50) NOT NULL DEFAULT 'gsb'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfBlockedIPLog`
--

CREATE TABLE `wp_wfBlockedIPLog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `countryCode` varchar(2) NOT NULL,
  `blockCount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unixday` int(10) UNSIGNED NOT NULL,
  `blockType` varchar(50) NOT NULL DEFAULT 'generic'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfBlocks7`
--

CREATE TABLE `wp_wfBlocks7` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `blockedTime` bigint(20) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `lastAttempt` int(10) UNSIGNED DEFAULT '0',
  `blockedHits` int(10) UNSIGNED DEFAULT '0',
  `expiration` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `parameters` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfConfig`
--

CREATE TABLE `wp_wfConfig` (
  `name` varchar(100) NOT NULL,
  `val` longblob,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wfConfig`
--

INSERT INTO `wp_wfConfig` (`name`, `val`, `autoload`) VALUES
('actUpdateInterval', 0x32, 'yes'),
('addCacheComment', 0x30, 'yes'),
('adminUserList', 0x623a303b, 'yes'),
('advancedCommentScanning', 0x31, 'yes'),
('ajaxWatcherDisabled_admin', 0x30, 'yes'),
('ajaxWatcherDisabled_front', 0x30, 'yes'),
('alertEmails', '', 'yes'),
('alertOn_adminLogin', 0x31, 'yes'),
('alertOn_block', 0x31, 'yes'),
('alertOn_breachLogin', 0x31, 'yes'),
('alertOn_critical', 0x31, 'yes'),
('alertOn_firstAdminLoginOnly', 0x30, 'yes'),
('alertOn_firstNonAdminLoginOnly', 0x30, 'yes'),
('alertOn_loginLockout', 0x31, 'yes'),
('alertOn_lostPasswdForm', 0x31, 'yes'),
('alertOn_nonAdminLogin', 0x30, 'yes'),
('alertOn_throttle', 0x30, 'yes'),
('alertOn_update', 0x30, 'yes'),
('alertOn_warnings', 0x31, 'yes'),
('alertOn_wordfenceDeactivated', 0x31, 'yes'),
('alert_maxHourly', 0x30, 'yes'),
('allowed404s', 0x2f66617669636f6e2e69636f0a2f6170706c652d746f7563682d69636f6e2a2e706e670a2f2a4032782e706e670a2f62726f77736572636f6e6669672e786d6c, 'yes'),
('allowed404s6116Migration', 0x31, 'yes'),
('allowHTTPSCaching', 0x30, 'yes'),
('allScansScheduled', 0x613a303a7b7d, 'yes'),
('apiKey', 0x31333231643138366536323135343636333732306161303533663030626132376333343638393531353639323366616163393338656232613138393833626264613564633534663934656538373239303662323063653331623566643466316639353963666539666138383833333530356235646632663433613035303966353732666332633138376637343830336332396432653534373032613865363738, 'yes'),
('autoBlockScanners', 0x31, 'yes'),
('autoUpdate', 0x31, 'yes'),
('autoUpdateChoice', 0x31, 'yes'),
('bannedURLs', '', 'yes'),
('betaThreatDefenseFeed', 0x30, 'yes'),
('blockedTime', 0x333030, 'yes'),
('blockFakeBots', 0x30, 'yes'),
('blocks702Migration', 0x31, 'yes'),
('cacheType', 0x64697361626c6564, 'yes'),
('cbl_action', 0x626c6f636b, 'yes'),
('cbl_bypassRedirDest', '', 'yes'),
('cbl_bypassRedirURL', '', 'yes'),
('cbl_bypassViewURL', '', 'yes'),
('cbl_cookieVal', 0x35613964343333353064303633, 'yes'),
('cbl_loggedInBlocked', '', 'yes'),
('cbl_redirURL', '', 'yes'),
('cbl_restOfSiteBlocked', 0x31, 'yes'),
('checkSpamIP', 0x31, 'yes'),
('config701Migration', 0x31, 'yes'),
('currentCronKey', '', 'yes'),
('dashboardData', 0x613a343a7b733a393a2267656e657261746564223b693a313532303235333134323b733a333a22746466223b613a333a7b733a393a22636f6d6d756e697479223b693a353331383b733a373a227072656d69756d223b693a353339343b733a393a22626c61636b6c697374223b693a323638333b7d733a31303a2261747461636b64617461223b613a333a7b733a333a22323468223b613a32343a7b693a303b613a323a7b733a313a2274223b693a313532303136343830303b733a313a2263223b693a3830333237353b7d693a313b613a323a7b733a313a2274223b693a313532303136383430303b733a313a2263223b693a3738393633323b7d693a323b613a323a7b733a313a2274223b693a313532303137323030303b733a313a2263223b693a3738363838393b7d693a333b613a323a7b733a313a2274223b693a313532303137353630303b733a313a2263223b693a3835343132373b7d693a343b613a323a7b733a313a2274223b693a313532303137393230303b733a313a2263223b693a3834333933303b7d693a353b613a323a7b733a313a2274223b693a313532303138323830303b733a313a2263223b693a3830343436313b7d693a363b613a323a7b733a313a2274223b693a313532303138363430303b733a313a2263223b693a3735353833313b7d693a373b613a323a7b733a313a2274223b693a313532303139303030303b733a313a2263223b693a3638393034363b7d693a383b613a323a7b733a313a2274223b693a313532303139333630303b733a313a2263223b693a3636313632373b7d693a393b613a323a7b733a313a2274223b693a313532303139373230303b733a313a2263223b693a3638383337383b7d693a31303b613a323a7b733a313a2274223b693a313532303230303830303b733a313a2263223b693a3735363835323b7d693a31313b613a323a7b733a313a2274223b693a313532303230343430303b733a313a2263223b693a3830373538383b7d693a31323b613a323a7b733a313a2274223b693a313532303230383030303b733a313a2263223b693a3735363337393b7d693a31333b613a323a7b733a313a2274223b693a313532303231313630303b733a313a2263223b693a3734313438383b7d693a31343b613a323a7b733a313a2274223b693a313532303231353230303b733a313a2263223b693a3732383835373b7d693a31353b613a323a7b733a313a2274223b693a313532303231383830303b733a313a2263223b693a3834323131333b7d693a31363b613a323a7b733a313a2274223b693a313532303232323430303b733a313a2263223b693a3831333933323b7d693a31373b613a323a7b733a313a2274223b693a313532303232363030303b733a313a2263223b693a3739333035343b7d693a31383b613a323a7b733a313a2274223b693a313532303232393630303b733a313a2263223b693a3836353230393b7d693a31393b613a323a7b733a313a2274223b693a313532303233333230303b733a313a2263223b693a3835393339343b7d693a32303b613a323a7b733a313a2274223b693a313532303233363830303b733a313a2263223b693a3833303537343b7d693a32313b613a323a7b733a313a2274223b693a313532303234303430303b733a313a2263223b693a3737333934363b7d693a32323b613a323a7b733a313a2274223b693a313532303234343030303b733a313a2263223b693a3734313636323b7d693a32333b613a323a7b733a313a2274223b693a313532303234373630303b733a313a2263223b693a3734383731333b7d7d733a323a223764223b613a373a7b693a303b613a323a7b733a313a2274223b693a313531393630333230303b733a313a2263223b693a32323134323830373b7d693a313b613a323a7b733a313a2274223b693a313531393638393630303b733a313a2263223b693a32373633343233393b7d693a323b613a323a7b733a313a2274223b693a313531393737363030303b733a313a2263223b693a32383831383037303b7d693a333b613a323a7b733a313a2274223b693a313531393836323430303b733a313a2263223b693a32353134333432373b7d693a343b613a323a7b733a313a2274223b693a313531393934383830303b733a313a2263223b693a32323035323936383b7d693a353b613a323a7b733a313a2274223b693a313532303033353230303b733a313a2263223b693a32323331363737303b7d693a363b613a323a7b733a313a2274223b693a313532303132313630303b733a313a2263223b693a31393933373636373b7d7d733a333a22333064223b613a33303a7b693a303b613a323a7b733a313a2274223b693a313531373631363030303b733a313a2263223b693a34343238313834343b7d693a313b613a323a7b733a313a2274223b693a313531373730323430303b733a313a2263223b693a33333235353233393b7d693a323b613a323a7b733a313a2274223b693a313531373738383830303b733a313a2263223b693a32313032383634313b7d693a333b613a323a7b733a313a2274223b693a313531373837353230303b733a313a2263223b693a32313033363832383b7d693a343b613a323a7b733a313a2274223b693a313531373936313630303b733a313a2263223b693a32383933363137303b7d693a353b613a323a7b733a313a2274223b693a313531383034383030303b733a313a2263223b693a33343135313839313b7d693a363b613a323a7b733a313a2274223b693a313531383133343430303b733a313a2263223b693a33353835313437333b7d693a373b613a323a7b733a313a2274223b693a313531383232303830303b733a313a2263223b693a32393533363232373b7d693a383b613a323a7b733a313a2274223b693a313531383330373230303b733a313a2263223b693a33303638303037363b7d693a393b613a323a7b733a313a2274223b693a313531383339333630303b733a313a2263223b693a32383533373836373b7d693a31303b613a323a7b733a313a2274223b693a313531383438303030303b733a313a2263223b693a32373235323736303b7d693a31313b613a323a7b733a313a2274223b693a313531383536363430303b733a313a2263223b693a32373134393830333b7d693a31323b613a323a7b733a313a2274223b693a313531383635323830303b733a313a2263223b693a32343133303333393b7d693a31333b613a323a7b733a313a2274223b693a313531383733393230303b733a313a2263223b693a32353539383934353b7d693a31343b613a323a7b733a313a2274223b693a313531383832353630303b733a313a2263223b693a32343733363038363b7d693a31353b613a323a7b733a313a2274223b693a313531383931323030303b733a313a2263223b693a32333237303636333b7d693a31363b613a323a7b733a313a2274223b693a313531383939383430303b733a313a2263223b693a32323034303337373b7d693a31373b613a323a7b733a313a2274223b693a313531393038343830303b733a313a2263223b693a32323834333434393b7d693a31383b613a323a7b733a313a2274223b693a313531393137313230303b733a313a2263223b693a32333231303532333b7d693a31393b613a323a7b733a313a2274223b693a313531393235373630303b733a313a2263223b693a32343832353637303b7d693a32303b613a323a7b733a313a2274223b693a313531393334343030303b733a313a2263223b693a32333538353031333b7d693a32313b613a323a7b733a313a2274223b693a313531393433303430303b733a313a2263223b693a32313335303538373b7d693a32323b613a323a7b733a313a2274223b693a313531393531363830303b733a313a2263223b693a31393736303833363b7d693a32333b613a323a7b733a313a2274223b693a313531393630333230303b733a313a2263223b693a32323134323830373b7d693a32343b613a323a7b733a313a2274223b693a313531393638393630303b733a313a2263223b693a32373633343233393b7d693a32353b613a323a7b733a313a2274223b693a313531393737363030303b733a313a2263223b693a32383831383037303b7d693a32363b613a323a7b733a313a2274223b693a313531393836323430303b733a313a2263223b693a32353134333432373b7d693a32373b613a323a7b733a313a2274223b693a313531393934383830303b733a313a2263223b693a32323035323936383b7d693a32383b613a323a7b733a313a2274223b693a313532303033353230303b733a313a2263223b693a32323331363737303b7d693a32393b613a323a7b733a313a2274223b693a313532303132313630303b733a313a2263223b693a31393933373636373b7d7d7d733a393a22636f756e7472696573223b613a313a7b733a323a223764223b613a31303a7b693a303b613a323a7b733a323a226364223b733a323a225255223b733a323a226374223b693a33373834353434363b7d693a313b613a323a7b733a323a226364223b733a323a225541223b733a323a226374223b693a31393339393230353b7d693a323b613a323a7b733a323a226364223b733a323a225553223b733a323a226374223b693a31383839313038363b7d693a333b613a323a7b733a323a226364223b733a323a225452223b733a323a226374223b693a31333830333038323b7d693a343b613a323a7b733a323a226364223b733a323a22434e223b733a323a226374223b693a31323939393731353b7d693a353b613a323a7b733a323a226364223b733a323a22504c223b733a323a226374223b693a31303735313638363b7d693a363b613a323a7b733a323a226364223b733a323a224652223b733a323a226374223b693a31303032353337353b7d693a373b613a323a7b733a323a226364223b733a323a224445223b733a323a226374223b693a353030353332383b7d693a383b613a323a7b733a323a226364223b733a323a224252223b733a323a226374223b693a333538303730313b7d693a393b613a323a7b733a323a226364223b733a323a22494e223b733a323a226374223b693a333438353437323b7d7d7d7d, 'yes'),
('debugOn', 0x30, 'yes'),
('deleteTablesOnDeact', 0x30, 'yes'),
('detectProxyNextCheck', 0x31353230383630353935, 'no'),
('detectProxyNonce', 0x39356639306337643066323563633661353536643462643634333131663861333262653835373139626339353538376565616431386232303064653637363462, 'no'),
('detectProxyRecommendation', '', 'no'),
('disableCodeExecutionUploads', 0x30, 'yes'),
('disableConfigCaching', 0x30, 'yes'),
('disableCookies', 0x30, 'yes'),
('disableWAFIPBlocking', 0x30, 'yes'),
('dismissAutoPrependNotice', 0x31, 'yes'),
('displayAutomaticBlocks', 0x31, 'yes'),
('displayTopLevelBlocking', 0x30, 'yes'),
('displayTopLevelLiveTraffic', 0x30, 'yes'),
('displayTopLevelOptions', 0x31, 'yes'),
('email_summary_dashboard_widget_enabled', 0x31, 'yes'),
('email_summary_enabled', 0x31, 'yes'),
('email_summary_excluded_directories', 0x77702d636f6e74656e742f63616368652c77702d636f6e74656e742f77666c6f6773, 'yes'),
('email_summary_interval', 0x7765656b6c79, 'yes'),
('encKey', 0x31613263656262363233353463333038, 'yes'),
('fileContentsGSB6315Migration', 0x31, 'yes'),
('firewallEnabled', 0x31, 'yes'),
('geoIPVersionHash', 0x34323139313836366661323861653833383865616536316163623038373564613566653630633831326331366434633131343135306163613339633839613733, 'yes'),
('howGetIPs', '', 'yes'),
('howGetIPs_trusted_proxies', '', 'yes'),
('isPaid', '', 'yes'),
('keyType', 0x66726565, 'yes'),
('lastBlockAggregation', 0x31353230323535373933, 'yes'),
('lastDailyCron', 0x31353230323535383036, 'yes'),
('lastDashboardCheck', 0x31353230323535383038, 'yes'),
('lastScanCompleted', 0x6f6b, 'yes'),
('lastScanFailureType', '', 'yes'),
('liveActivityPauseEnabled', 0x31, 'yes'),
('liveTrafficEnabled', 0x31, 'yes'),
('liveTraf_displayExpandedRecords', 0x30, 'no'),
('liveTraf_ignoreIPs', '', 'yes'),
('liveTraf_ignorePublishers', 0x31, 'yes'),
('liveTraf_ignoreUA', '', 'yes'),
('liveTraf_ignoreUsers', '', 'yes'),
('liveTraf_maxRows', 0x32303030, 'yes'),
('loginSecurityEnabled', 0x31, 'yes'),
('loginSec_blockAdminReg', 0x31, 'yes'),
('loginSec_breachPasswds', 0x61646d696e73, 'yes'),
('loginSec_breachPasswds_enabled', 0x31, 'yes'),
('loginSec_countFailMins', 0x323430, 'yes'),
('loginSec_disableAuthorScan', 0x31, 'yes'),
('loginSec_disableOEmbedAuthor', 0x30, 'yes'),
('loginSec_enableSeparateTwoFactor', '', 'yes'),
('loginSec_lockInvalidUsers', 0x30, 'yes'),
('loginSec_lockoutMins', 0x323430, 'yes'),
('loginSec_maskLoginErrors', 0x31, 'yes'),
('loginSec_maxFailures', 0x3230, 'yes'),
('loginSec_maxForgotPasswd', 0x3230, 'yes'),
('loginSec_requireAdminTwoFactor', 0x30, 'yes'),
('loginSec_strongPasswds', 0x70756273, 'yes'),
('loginSec_strongPasswds_enabled', 0x31, 'yes'),
('loginSec_userBlacklist', '', 'yes'),
('lowResourceScansEnabled', 0x30, 'yes'),
('lowResourceScanWaitStep', '', 'yes'),
('manualScanType', 0x6f6e63654461696c79, 'yes'),
('max404Crawlers', 0x44495341424c4544, 'yes'),
('max404Crawlers_action', 0x7468726f74746c65, 'yes'),
('max404Humans', 0x44495341424c4544, 'yes'),
('max404Humans_action', 0x7468726f74746c65, 'yes'),
('maxExecutionTime', 0x30, 'yes'),
('maxGlobalRequests', 0x44495341424c4544, 'yes'),
('maxGlobalRequests_action', 0x7468726f74746c65, 'yes'),
('maxMem', 0x323536, 'yes'),
('maxRequestsCrawlers', 0x44495341424c4544, 'yes'),
('maxRequestsCrawlers_action', 0x7468726f74746c65, 'yes'),
('maxRequestsHumans', 0x44495341424c4544, 'yes'),
('maxRequestsHumans_action', 0x7468726f74746c65, 'yes'),
('maxScanHits', 0x44495341424c4544, 'yes'),
('maxScanHits_action', 0x7468726f74746c65, 'yes'),
('migration636_email_summary_excluded_directories', 0x31, 'no'),
('needsNewTour_blocking', 0x31, 'yes'),
('needsNewTour_dashboard', 0x31, 'yes'),
('needsNewTour_firewall', 0x31, 'yes'),
('needsNewTour_livetraffic', 0x31, 'yes'),
('needsNewTour_scan', 0x31, 'yes'),
('needsUpgradeTour_blocking', 0x30, 'yes'),
('needsUpgradeTour_dashboard', 0x30, 'yes'),
('needsUpgradeTour_firewall', 0x30, 'yes'),
('needsUpgradeTour_livetraffic', 0x30, 'yes'),
('needsUpgradeTour_scan', 0x30, 'yes'),
('neverBlockBG', 0x6e65766572426c6f636b5665726966696564, 'yes'),
('noc1ScanSchedule', 0x613a333a7b693a303b693a313532303239373430303b693a313b693a313532303535363630303b693a323b693a313532303831353830303b7d, 'yes'),
('notification_blogHighlights', 0x31, 'yes'),
('notification_productUpdates', 0x31, 'yes'),
('notification_promotions', 0x31, 'yes'),
('notification_scanStatus', 0x31, 'yes'),
('notification_securityAlerts', 0x31, 'yes'),
('notification_updatesNeeded', 0x31, 'yes'),
('onboardingAttempt1', 0x736b6970706564, 'yes'),
('onboardingAttempt2', '', 'no'),
('onboardingAttempt3', '', 'no'),
('onboardingAttempt3Initial', 0x30, 'yes'),
('other_blockBadPOST', 0x30, 'yes'),
('other_bypassLitespeedNoabort', 0x30, 'yes'),
('other_hideWPVersion', 0x30, 'yes'),
('other_noAnonMemberComments', 0x31, 'yes'),
('other_pwStrengthOnUpdate', 0x31, 'yes'),
('other_scanComments', 0x31, 'yes'),
('other_scanOutside', 0x30, 'yes'),
('other_WFNet', 0x31, 'yes'),
('scansEnabled_checkGSB', 0x31, 'yes'),
('scansEnabled_checkHowGetIPs', 0x31, 'yes'),
('scansEnabled_checkReadableConfig', 0x31, 'yes'),
('scansEnabled_comments', 0x31, 'yes'),
('scansEnabled_core', 0x31, 'yes'),
('scansEnabled_coreUnknown', 0x31, 'yes'),
('scansEnabled_diskSpace', 0x31, 'yes'),
('scansEnabled_dns', 0x31, 'yes'),
('scansEnabled_fileContents', 0x31, 'yes'),
('scansEnabled_fileContentsGSB', 0x31, 'yes'),
('scansEnabled_highSense', 0x30, 'yes'),
('scansEnabled_malware', 0x31, 'yes'),
('scansEnabled_oldVersions', 0x31, 'yes'),
('scansEnabled_options', 0x31, 'yes'),
('scansEnabled_passwds', 0x31, 'yes'),
('scansEnabled_plugins', 0x30, 'yes'),
('scansEnabled_posts', 0x31, 'yes'),
('scansEnabled_scanImages', 0x30, 'yes'),
('scansEnabled_suspectedFiles', 0x31, 'yes'),
('scansEnabled_suspiciousAdminUsers', 0x31, 'yes'),
('scansEnabled_suspiciousOptions', 0x31, 'yes'),
('scansEnabled_themes', 0x30, 'yes'),
('scansEnabled_wpscan_directoryListingEnabled', 0x31, 'yes'),
('scansEnabled_wpscan_fullPathDisclosure', 0x31, 'yes'),
('scanTime', 0x313532303235353831332e39313738, 'yes'),
('scanType', 0x7374616e64617264, 'yes'),
('scan_exclude', '', 'yes'),
('scan_include_extra', '', 'yes'),
('scan_maxDuration', '', 'yes'),
('scan_maxIssues', 0x31303030, 'yes'),
('schedMode', 0x6175746f, 'yes'),
('schedStartHour', 0x3130, 'yes'),
('scheduledScansEnabled', 0x31, 'yes'),
('showAdminBarMenu', 0x31, 'yes'),
('spamvertizeCheck', 0x31, 'yes'),
('ssl_verify', 0x31, 'yes'),
('startScansRemotely', 0x30, 'yes'),
('supportContent', 0x7b22746f70223a5b7b227469746c65223a224920616d206c6f636b6564206f7574206f66206d792073697465222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f726174652d6c696d6974696e675c2f23692d616d2d6c6f636b65642d6f75742d6f662d6d792d73697465222c226f72646572223a307d2c7b227469746c65223a22576f726466656e63652037222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f74726f75626c6573686f6f74696e675c2f776f726466656e63652d375c2f222c226f72646572223a317d2c7b227469746c65223a22576f726466656e636520576562204170706c69636174696f6e204669726577616c6c202857414629222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f222c226f72646572223a327d2c7b227469746c65223a225363616e2054726f75626c6573686f6f74696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f74726f75626c6573686f6f74696e675c2f222c226f72646572223a337d2c7b227469746c65223a224f7074696d697a696e6720546865204669726577616c6c222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f6f7074696d697a696e672d7468652d6669726577616c6c5c2f222c226f72646572223a347d2c7b227469746c65223a225363616e20526573756c7473222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f7363616e2d726573756c74735c2f222c226f72646572223a357d2c7b227469746c65223a2250485020466174616c206572726f723a204661696c6564206f70656e696e6720726571756972656420776f726466656e63652d7761662e706870222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f237068702d666174616c2d6572726f722d6661696c65642d6f70656e696e672d72657175697265642d776f726466656e63652d7761662d706870222c226f72646572223a367d5d2c22616c6c223a5b7b227469746c65223a22486f7720746f2055736520576f726466656e63652037222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f776f726466656e63652d375c2f222c2265786365727074223a22437573746f6d697a6520796f757220576f726466656e6365206d656e752c206c6f63617465206f7074696f6e7320616e64206c6561726e20686f7720746f20706572666f726d20636f6d6d6f6e207461736b7320696e20576f726466656e636520372e222c226f72646572223a307d2c7b227469746c65223a2244617368626f617264222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f64617368626f6172645c2f222c2265786365727074223a2254686520576f726466656e63652044617368626f6172642070726f766964657320696e736967687420696e746f207468652063757272656e74207374617465206f6620796f75722073697465e28099732073656375726974792e222c226368696c6472656e223a5b7b227469746c65223a224f7074696f6e73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f64617368626f6172645c2f6f7074696f6e735c2f222c226f72646572223a307d2c7b227469746c65223a22416c65727473222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f64617368626f6172645c2f616c657274735c2f222c226f72646572223a317d5d2c226f72646572223a317d2c7b227469746c65223a224669726577616c6c222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f222c2265786365727074223a2254686520576f726466656e636520576562204170706c69636174696f6e204669726577616c6c2069732061205048502062617365642c206170706c69636174696f6e206c6576656c206669726577616c6c20746861742066696c74657273206f7574206d616c6963696f757320726571756573747320746f20796f757220736974652e20222c226368696c6472656e223a5b7b227469746c65223a224f7074696d697a696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f6f7074696d697a696e672d7468652d6669726577616c6c5c2f222c226f72646572223a307d2c7b227469746c65223a224c6561726e696e67204d6f6465222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f6c6561726e696e672d6d6f64655c2f222c226f72646572223a317d2c7b227469746c65223a2253746174697374696373222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f737461746973746963735c2f222c226f72646572223a327d2c7b227469746c65223a224f7074696f6e73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f6f7074696f6e735c2f222c226f72646572223a337d2c7b227469746c65223a22427275746520466f7263652050726f74656374696f6e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f62727574652d666f7263655c2f222c226f72646572223a347d2c7b227469746c65223a2252617465204c696d6974696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f726174652d6c696d6974696e675c2f222c226f72646572223a357d2c7b227469746c65223a2254726f75626c6573686f6f74696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f74726f75626c6573686f6f74696e675c2f222c226f72646572223a367d5d2c226f72646572223a327d2c7b227469746c65223a22426c6f636b696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f626c6f636b696e675c2f222c2265786365727074223a2241736964652066726f6d20746865204669726577616c6c2072756c657320746861742070726f7465637420616761696e73742053514c2d696e6a656374696f6e2c2058535320616e64206d6f72652c20576f726466656e636520616c736f2068617320637573746f6d20666561747572657320666f72206164646974696f6e616c20626c6f636b696e672e20222c226368696c6472656e223a5b7b227469746c65223a22426c6f636b6564206f72204c6f636b6564204f7574222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f626c6f636b696e675c2f626c6f636b65642d6f722d6c6f636b65642d6f75745c2f222c226f72646572223a307d2c7b227469746c65223a22436f756e74727920426c6f636b696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f626c6f636b696e675c2f636f756e7472792d626c6f636b696e675c2f222c226f72646572223a317d2c7b227469746c65223a2254726f75626c6573686f6f74696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f626c6f636b696e675c2f74726f75626c6573686f6f74696e675c2f222c226f72646572223a327d5d2c226f72646572223a337d2c7b227469746c65223a225363616e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f222c2265786365727074223a224120576f726466656e6365207363616e206578616d696e657320616c6c2066696c6573206f6e20796f757220576f726450726573732077656273697465206c6f6f6b696e6720666f72206d616c6963696f757320636f64652c206261636b646f6f72732c207368656c6c732074686174206861636b657273206861766520696e7374616c6c65642c206b6e6f776e206d616c6963696f75732055524c7320616e64206b6e6f776e207061747465726e73206f6620696e66656374696f6e732e222c226368696c6472656e223a5b7b227469746c65223a224f7074696f6e73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f6f7074696f6e735c2f222c226f72646572223a307d2c7b227469746c65223a22526573756c7473222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f7363616e2d726573756c74735c2f222c226f72646572223a317d2c7b227469746c65223a225363686564756c696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f7363686564756c696e675c2f222c226f72646572223a327d2c7b227469746c65223a2254726f75626c6573686f6f74696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f74726f75626c6573686f6f74696e675c2f222c226f72646572223a337d5d2c226f72646572223a347d2c7b227469746c65223a22546f6f6c73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f222c2265786365727074223a22576f726466656e636520546f6f6c7320696e636c7564652054776f20466163746f722041757468656e7469636174696f6e2c2057686f6973204c6f6f6b75702c2050617373776f72642041756469742c20436f6d6d656e74205370616d2046696c7465722c204c697665205472616666696320616e6420446961676e6f73746963732e222c226368696c6472656e223a5b7b227469746c65223a2250617373776f7264204175646974696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f70617373776f72642d6175646974696e675c2f222c226f72646572223a307d2c7b227469746c65223a2257686f6973204c6f6f6b7570222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f77686f69732d6c6f6f6b75705c2f222c226f72646572223a317d2c7b227469746c65223a22436f6d6d656e74205370616d2046696c746572222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f636f6d6d656e742d7370616d2d66696c7465725c2f222c226f72646572223a327d2c7b227469746c65223a22446961676e6f7374696373222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f646961676e6f73746963735c2f222c226f72646572223a337d2c7b227469746c65223a224c6976652054726166666963222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f6c6976652d747261666669635c2f222c226f72646572223a347d2c7b227469746c65223a2254776f20466163746f722041757468656e7469636174696f6e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f74776f2d666163746f722d61757468656e7469636174696f6e5c2f222c226f72646572223a357d5d2c226f72646572223a357d2c7b227469746c65223a22416476616e636564222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f222c2265786365727074223a22496620796f752077616e7420746f206b6e6f77206d6f72652061626f75742074686520746563686e6963616c2064657461696c73206f6620576f726466656e63652c20796f75276c6c2066696e642074686520616e737765727320696e20746869732073656374696f6e2e222c226368696c6472656e223a5b7b227469746c65223a2253797374656d20726571756972656d656e7473222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f73797374656d2d726571756972656d656e74735c2f222c226f72646572223a307d2c7b227469746c65223a2252656d6f7665206f72205265736574222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f72656d6f76652d6f722d72657365745c2f222c226f72646572223a317d2c7b227469746c65223a22436f6e7374616e7473222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f636f6e7374616e74735c2f222c226f72646572223a327d2c7b227469746c65223a224368616e67656c6f67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f6368616e67656c6f675c2f222c226f72646572223a337d2c7b227469746c65223a22546563686e6963616c2044657461696c73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f746563686e6963616c2d64657461696c735c2f222c226f72646572223a347d2c7b227469746c65223a22576f726466656e636520415049222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f776f726466656e63652d6170695c2f222c226f72646572223a357d2c7b227469746c65223a2254726f75626c6573686f6f74696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f74726f75626c6573686f6f74696e675c2f222c226f72646572223a367d5d2c226f72646572223a367d2c7b227469746c65223a22576f726466656e6365205072656d69756d222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7072656d69756d5c2f222c2265786365727074223a22576f726466656e6365205072656d69756d20636f6d6573207769746820616e20495020426c61636b6c6973742c205265616c2054696d652050726f74656374696f6e20616e64206d756368206d6f72652e222c226368696c6472656e223a5b7b227469746c65223a224c6963656e7365204b6579222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7072656d69756d5c2f6170692d6b65795c2f222c226f72646572223a307d5d2c226f72646572223a377d2c7b227469746c65223a225369746520436c65616e696e6720616e6420536563757269747920417564697473222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f73656375726974792d73657276696365735c2f222c2265786365727074223a224c6574206f6e65206f66206f757220536563757269747920416e616c797374732068656c7020796f7520636c65616e20796f757220696e6665637465642073697465206f7220696e737065637420697420666f722076756c6e65726162696c69746965732e222c226f72646572223a387d5d7d, 'yes'),
('supportHash', 0x33613139313263343833373038646563666235646635393736626261383762396461663066613438393633316232333239373338383336313138316431303433, 'yes'),
('timeoffset_wf', 0x30, 'yes'),
('timeoffset_wf_updated', 0x31353230323535373932, 'yes'),
('totalAlertsSent', 0x31, 'yes'),
('totalScansRun', 0x31, 'yes'),
('vulnerabilities_plugin', 0x613a31303a7b693a303b613a343a7b733a343a22736c7567223b733a373a22616b69736d6574223b733a31313a2266726f6d56657273696f6e223b733a353a22342e302e33223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a313b613a343a7b733a343a22736c7567223b733a343a22636d6232223b733a31313a2266726f6d56657273696f6e223b733a353a22322e332e30223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a323b613a343a7b733a343a22736c7567223b733a31343a22636f6e746163742d666f726d2d37223b733a31313a2266726f6d56657273696f6e223b733a353a22352e302e31223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a333b613a343a7b733a343a22736c7567223b733a31343a2277706366372d7265646972656374223b733a31313a2266726f6d56657273696f6e223b733a353a22312e322e35223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a343b613a343a7b733a343a22736c7567223b733a31393a22637573746f6d2d706f73742d747970652d7569223b733a31313a2266726f6d56657273696f6e223b733a353a22312e352e36223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a353b613a343a7b733a343a22736c7567223b733a31313a2268656c6c6f2d646f6c6c79223b733a31313a2266726f6d56657273696f6e223b733a333a22312e36223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a363b613a343a7b733a343a22736c7567223b733a383a22696d73616e697479223b733a31313a2266726f6d56657273696f6e223b733a363a22322e332e3130223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a373b613a343a7b733a343a22736c7567223b733a393a22776f726466656e6365223b733a31313a2266726f6d56657273696f6e223b733a353a22372e312e30223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a383b613a343a7b733a343a22736c7567223b733a31323a2277702d6d61696c2d736d7470223b733a31313a2266726f6d56657273696f6e223b733a353a22312e322e35223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a393b613a343a7b733a343a22736c7567223b733a32363a22616476616e6365642d637573746f6d2d6669656c64732d70726f223b733a31313a2266726f6d56657273696f6e223b733a353a22352e362e39223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d7d, 'yes'),
('vulnRegex', 0x2f283f3a776f726466656e63655f746573745f76756c6e5f6d617463687c5c2f74696d7468756d625c2e7068707c5c2f7468756d625c2e7068707c5c2f7468756d62735c2e7068707c5c2f7468756d626e61696c5c2e7068707c5c2f7468756d626e61696c735c2e7068707c5c2f7468756d6e61696c735c2e7068707c5c2f63726f707065725c2e7068707c5c2f70696373697a655c2e7068707c5c2f726573697a65725c2e7068707c636f6e6e6563746f72735c2f75706c6f6164746573745c2e68746d6c7c636f6e6e6563746f72735c2f746573745c2e68746d6c7c6d696e676c65666f72756d616374696f6e7c75706c6f61646966795c2e7068707c616c6c7765626d656e75732d776f726470726573732d6d656e752d706c7567696e7c77702d6379636c652d706c61796c6973747c636f756e742d7065722d6461797c77702d6175746f796f75747562657c7061792d776974682d74776565747c636f6d6d656e742d726174696e675c2f636b2d70726f636573736b61726d615c2e706870292f69, 'yes'),
('wafAlertInterval', 0x363030, 'yes'),
('wafAlertOnAttacks', 0x31, 'yes'),
('wafAlertThreshold', 0x313030, 'yes'),
('wafAlertWhitelist', '', 'yes'),
('wfKillRequested', 0x30, 'no'),
('wfPeakMemory', 0x3139313336353132, 'no'),
('wfScanStartVersion', 0x342e392e34, 'yes'),
('wfStatusStartMsgs', 0x613a313a7b693a303b733a303a22223b7d, 'yes'),
('wf_scanLastStatusTime', 0x30, 'yes'),
('wf_scanRunning', '', 'yes'),
('wf_summaryItems', 0x613a383a7b733a31323a227363616e6e6564506f737473223b693a303b733a31353a227363616e6e6564436f6d6d656e7473223b693a303b733a31323a227363616e6e656446696c6573223b693a303b733a31343a227363616e6e6564506c7567696e73223b693a303b733a31333a227363616e6e65645468656d6573223b693a303b733a31323a227363616e6e65645573657273223b693a303b733a31313a227363616e6e656455524c73223b693a303b733a31303a226c617374557064617465223b693a313532303235353831333b7d, 'yes'),
('whitelisted', '', 'yes'),
('wp_home_url', 0x687474703a2f2f6c6f63616c686f73743a373038302f6d6f746f7262696b65, 'yes'),
('wp_site_url', 0x687474703a2f2f6c6f63616c686f73743a373038302f6d6f746f7262696b65, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfCrawlers`
--

CREATE TABLE `wp_wfCrawlers` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `patternSig` binary(16) NOT NULL,
  `status` char(8) NOT NULL,
  `lastUpdate` int(10) UNSIGNED NOT NULL,
  `PTR` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfFileChanges`
--

CREATE TABLE `wp_wfFileChanges` (
  `filenameHash` char(64) NOT NULL,
  `file` varchar(1000) NOT NULL,
  `md5` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfFileMods`
--

CREATE TABLE `wp_wfFileMods` (
  `filenameMD5` binary(16) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  `knownFile` tinyint(3) UNSIGNED NOT NULL,
  `oldMD5` binary(16) NOT NULL,
  `newMD5` binary(16) NOT NULL,
  `SHAC` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `stoppedOnSignature` varchar(255) NOT NULL DEFAULT '',
  `stoppedOnPosition` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `isSafeFile` varchar(1) NOT NULL DEFAULT '?'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfHits`
--

CREATE TABLE `wp_wfHits` (
  `id` int(10) UNSIGNED NOT NULL,
  `attackLogTime` double(17,6) UNSIGNED NOT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `jsRun` tinyint(4) DEFAULT '0',
  `statusCode` int(11) NOT NULL DEFAULT '200',
  `isGoogle` tinyint(4) NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `newVisit` tinyint(3) UNSIGNED NOT NULL,
  `URL` text,
  `referer` text,
  `UA` text,
  `action` varchar(64) NOT NULL DEFAULT '',
  `actionDescription` text,
  `actionData` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfHoover`
--

CREATE TABLE `wp_wfHoover` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner` text,
  `host` text,
  `path` text,
  `hostKey` varbinary(124) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfIssues`
--

CREATE TABLE `wp_wfIssues` (
  `id` int(10) UNSIGNED NOT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `lastUpdated` int(10) UNSIGNED NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) UNSIGNED NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfKnownFileList`
--

CREATE TABLE `wp_wfKnownFileList` (
  `id` int(11) UNSIGNED NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfLeechers`
--

CREATE TABLE `wp_wfLeechers` (
  `eMin` int(10) UNSIGNED NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hits` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfLocs`
--

CREATE TABLE `wp_wfLocs` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ctime` int(10) UNSIGNED NOT NULL,
  `failed` tinyint(3) UNSIGNED NOT NULL,
  `city` varchar(255) DEFAULT '',
  `region` varchar(255) DEFAULT '',
  `countryName` varchar(255) DEFAULT '',
  `countryCode` char(2) DEFAULT '',
  `lat` float(10,7) DEFAULT '0.0000000',
  `lon` float(10,7) DEFAULT '0.0000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfLogins`
--

CREATE TABLE `wp_wfLogins` (
  `id` int(10) UNSIGNED NOT NULL,
  `hitID` int(11) DEFAULT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `fail` tinyint(3) UNSIGNED NOT NULL,
  `action` varchar(40) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `UA` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfNet404s`
--

CREATE TABLE `wp_wfNet404s` (
  `sig` binary(16) NOT NULL,
  `ctime` int(10) UNSIGNED NOT NULL,
  `URI` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfNotifications`
--

CREATE TABLE `wp_wfNotifications` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `new` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `category` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '1000',
  `ctime` int(10) UNSIGNED NOT NULL,
  `html` text NOT NULL,
  `links` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfPendingIssues`
--

CREATE TABLE `wp_wfPendingIssues` (
  `id` int(10) UNSIGNED NOT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `lastUpdated` int(10) UNSIGNED NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) UNSIGNED NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfReverseCache`
--

CREATE TABLE `wp_wfReverseCache` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `host` varchar(255) NOT NULL,
  `lastUpdate` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfScanners`
--

CREATE TABLE `wp_wfScanners` (
  `eMin` int(10) UNSIGNED NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hits` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfSNIPCache`
--

CREATE TABLE `wp_wfSNIPCache` (
  `id` int(10) UNSIGNED NOT NULL,
  `IP` varchar(45) NOT NULL DEFAULT '',
  `expiration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `body` varchar(255) NOT NULL DEFAULT '',
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfStatus`
--

CREATE TABLE `wp_wfStatus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `level` tinyint(3) UNSIGNED NOT NULL,
  `type` char(5) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wfStatus`
--

INSERT INTO `wp_wfStatus` (`id`, `ctime`, `level`, `type`, `msg`) VALUES
(1, 1520255813.884385, 10, 'info', 'SUM_PREP:Preparing a new scan.'),
(2, 1520255813.887692, 1, 'info', 'Initiating quick scan'),
(3, 1520255813.891595, 10, 'info', 'SUM_START:Scanning for old themes, plugins and core files'),
(4, 1520255813.907416, 10, 'info', 'SUM_ENDOK:Scanning for old themes, plugins and core files'),
(5, 1520255813.911878, 1, 'info', '-------------------'),
(6, 1520255813.914043, 2, 'info', 'Wordfence used 0 B of memory for scan. Server peak memory usage was: 18.25 MB'),
(7, 1520255813.914704, 1, 'info', 'Quick Scan Complete. Scanned in less than 1 second.'),
(8, 1520255813.915312, 10, 'info', 'SUM_FINAL:Scan complete. Congratulations, no new problems found.');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfVulnScanners`
--

CREATE TABLE `wp_wfVulnScanners` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ctime` int(10) UNSIGNED NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- Indexes for table `wp_wfBadLeechers`
--
ALTER TABLE `wp_wfBadLeechers`
  ADD PRIMARY KEY (`eMin`,`IP`);

--
-- Indexes for table `wp_wfBlockedCommentLog`
--
ALTER TABLE `wp_wfBlockedCommentLog`
  ADD PRIMARY KEY (`IP`,`unixday`,`blockType`);

--
-- Indexes for table `wp_wfBlockedIPLog`
--
ALTER TABLE `wp_wfBlockedIPLog`
  ADD PRIMARY KEY (`IP`,`unixday`,`blockType`);

--
-- Indexes for table `wp_wfBlocks7`
--
ALTER TABLE `wp_wfBlocks7`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `IP` (`IP`),
  ADD KEY `expiration` (`expiration`);

--
-- Indexes for table `wp_wfConfig`
--
ALTER TABLE `wp_wfConfig`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `wp_wfCrawlers`
--
ALTER TABLE `wp_wfCrawlers`
  ADD PRIMARY KEY (`IP`,`patternSig`);

--
-- Indexes for table `wp_wfFileChanges`
--
ALTER TABLE `wp_wfFileChanges`
  ADD PRIMARY KEY (`filenameHash`);

--
-- Indexes for table `wp_wfFileMods`
--
ALTER TABLE `wp_wfFileMods`
  ADD PRIMARY KEY (`filenameMD5`);

--
-- Indexes for table `wp_wfHits`
--
ALTER TABLE `wp_wfHits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`ctime`),
  ADD KEY `k2` (`IP`,`ctime`),
  ADD KEY `attackLogTime` (`attackLogTime`);

--
-- Indexes for table `wp_wfHoover`
--
ALTER TABLE `wp_wfHoover`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k2` (`hostKey`);

--
-- Indexes for table `wp_wfIssues`
--
ALTER TABLE `wp_wfIssues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lastUpdated` (`lastUpdated`),
  ADD KEY `status` (`status`),
  ADD KEY `ignoreP` (`ignoreP`),
  ADD KEY `ignoreC` (`ignoreC`);

--
-- Indexes for table `wp_wfKnownFileList`
--
ALTER TABLE `wp_wfKnownFileList`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wfLeechers`
--
ALTER TABLE `wp_wfLeechers`
  ADD PRIMARY KEY (`eMin`,`IP`);

--
-- Indexes for table `wp_wfLocs`
--
ALTER TABLE `wp_wfLocs`
  ADD PRIMARY KEY (`IP`);

--
-- Indexes for table `wp_wfLogins`
--
ALTER TABLE `wp_wfLogins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`IP`,`fail`),
  ADD KEY `hitID` (`hitID`);

--
-- Indexes for table `wp_wfNet404s`
--
ALTER TABLE `wp_wfNet404s`
  ADD PRIMARY KEY (`sig`),
  ADD KEY `k1` (`ctime`);

--
-- Indexes for table `wp_wfNotifications`
--
ALTER TABLE `wp_wfNotifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wfPendingIssues`
--
ALTER TABLE `wp_wfPendingIssues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lastUpdated` (`lastUpdated`),
  ADD KEY `status` (`status`),
  ADD KEY `ignoreP` (`ignoreP`),
  ADD KEY `ignoreC` (`ignoreC`);

--
-- Indexes for table `wp_wfReverseCache`
--
ALTER TABLE `wp_wfReverseCache`
  ADD PRIMARY KEY (`IP`);

--
-- Indexes for table `wp_wfScanners`
--
ALTER TABLE `wp_wfScanners`
  ADD PRIMARY KEY (`eMin`,`IP`);

--
-- Indexes for table `wp_wfSNIPCache`
--
ALTER TABLE `wp_wfSNIPCache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expiration` (`expiration`),
  ADD KEY `IP` (`IP`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `wp_wfStatus`
--
ALTER TABLE `wp_wfStatus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`ctime`),
  ADD KEY `k2` (`type`);

--
-- Indexes for table `wp_wfVulnScanners`
--
ALTER TABLE `wp_wfVulnScanners`
  ADD PRIMARY KEY (`IP`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=491;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=437;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wfBlocks7`
--
ALTER TABLE `wp_wfBlocks7`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfHits`
--
ALTER TABLE `wp_wfHits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfHoover`
--
ALTER TABLE `wp_wfHoover`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfIssues`
--
ALTER TABLE `wp_wfIssues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfKnownFileList`
--
ALTER TABLE `wp_wfKnownFileList`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfLogins`
--
ALTER TABLE `wp_wfLogins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfPendingIssues`
--
ALTER TABLE `wp_wfPendingIssues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfSNIPCache`
--
ALTER TABLE `wp_wfSNIPCache`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfStatus`
--
ALTER TABLE `wp_wfStatus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
