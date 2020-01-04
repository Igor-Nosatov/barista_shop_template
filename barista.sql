-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Янв 04 2020 г., 08:57
-- Версия сервера: 5.7.28
-- Версия PHP: 7.1.33-2+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `barista`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
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

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-12-20 09:20:59', '2019-12-20 09:20:59', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 246, 'ActionScheduler', '', '', '', '2019-12-20 10:18:16', '2019-12-20 10:18:16', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(3, 246, 'ActionScheduler', '', '', '', '2019-12-20 10:19:02', '2019-12-20 10:19:02', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(4, 246, 'ActionScheduler', '', '', '', '2019-12-20 10:19:02', '2019-12-20 10:19:02', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(5, 357, 'WooCommerce', '', '', '', '2019-12-28 09:44:17', '2019-12-28 09:44:17', 'Awaiting BACS payment Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
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
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress4', 'yes'),
(2, 'home', 'http://localhost/wordpress4', 'yes'),
(3, 'blogname', 'barista', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sinevor13@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:164:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:17:"index.php/shop/?$";s:27:"index.php?post_type=product";s:47:"index.php/shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:42:"index.php/shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:34:"index.php/shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"index.php/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:42:"index.php/category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:30:"index.php/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:39:"index.php/tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:31:"index.php/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:54:"index.php/brand/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?pwb-brand=$matches[1]&feed=$matches[2]";s:49:"index.php/brand/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?pwb-brand=$matches[1]&feed=$matches[2]";s:30:"index.php/brand/(.+?)/embed/?$";s:42:"index.php?pwb-brand=$matches[1]&embed=true";s:42:"index.php/brand/(.+?)/page/?([0-9]{1,})/?$";s:49:"index.php?pwb-brand=$matches[1]&paged=$matches[2]";s:49:"index.php/brand/(.+?)/comment-page-([0-9]{1,})/?$";s:49:"index.php?pwb-brand=$matches[1]&cpage=$matches[2]";s:39:"index.php/brand/(.+?)/wc-api(/(.*))?/?$";s:50:"index.php?pwb-brand=$matches[1]&wc-api=$matches[3]";s:24:"index.php/brand/(.+?)/?$";s:31:"index.php?pwb-brand=$matches[1]";s:65:"index.php/product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:60:"index.php/product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:41:"index.php/product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:53:"index.php/product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:35:"index.php/product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:62:"index.php/product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:57:"index.php/product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:38:"index.php/product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:50:"index.php/product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:32:"index.php/product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:45:"index.php/product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"index.php/product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"index.php/product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"index.php/product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"index.php/product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"index.php/product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"index.php/product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:38:"index.php/product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:58:"index.php/product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:53:"index.php/product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:46:"index.php/product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:53:"index.php/product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:43:"index.php/product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:49:"index.php/product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"index.php/product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"index.php/product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:34:"index.php/product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"index.php/product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"index.php/product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"index.php/product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"index.php/product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"index.php/product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:37:"index.php/comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=11&cpage=$matches[1]";s:27:"index.php/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:36:"index.php/comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:39:"index.php/search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:42:"index.php/author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:64:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:51:"index.php/([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:38:"index.php/([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:72:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:72:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:83:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:35:"index.php/(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:38:"index.php/(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:43:"index.php/(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:35:"index.php/(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:39:"index.php/(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:38:"index.php/(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:41:"index.php/(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:41:"index.php/(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:44:"index.php/(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:42:"index.php/(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:44:"index.php/(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:47:"index.php/(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:50:"index.php/(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:55:"index.php/(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:41:"index.php/.?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:52:"index.php/.?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:19:"jetpack/jetpack.php";i:3;s:35:"perfect-woocommerce-brands/main.php";i:4;s:57:"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php";i:5;s:45:"woocommerce-services/woocommerce-services.php";i:6;s:27:"woocommerce/woocommerce.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'barista', 'yes'),
(41, 'stylesheet', 'barista', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:45:"woocommerce-services/woocommerce-services.php";a:2:{i:0;s:17:"WC_Connect_Loader";i:1;s:16:"plugin_uninstall";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '11', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1592385658', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:114:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:92:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"edit_theme_options";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}s:12:"shop-sidebar";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(103, 'cron', 'a:14:{i:1578120469;a:1:{s:26:"action_scheduler_run_queue";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:12:"every_minute";s:4:"args";a:0:{}s:8:"interval";i:60;}}}i:1578122460;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1578122800;a:1:{s:20:"jetpack_clean_nonces";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1578124006;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1578129660;a:4:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1578129672;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1578129674;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1578129948;a:1:{s:33:"woocommerce_cleanup_personal_data";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1578129958;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1578140748;a:1:{s:24:"woocommerce_cleanup_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1578151548;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1578182400;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1578355200;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'nonce_key', '`?SfQD$J-ogHu-=6t:./Bu2 P!XLst*X},t%DxgN[nX!h>AIBjct(mU1@X`iBgc;', 'no'),
(111, 'nonce_salt', '}>UT#+Uu2A3+/PO<wpb{(h$}R1UgC[t6yqk5lc`b,^VtD14VG(}g%T<{B7de_4fy', 'no'),
(112, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(117, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.3.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.3.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.3.2";s:7:"version";s:5:"5.3.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1578120407;s:15:"version_checked";s:5:"5.3.2";s:12:"translations";a:0:{}}', 'no'),
(120, 'theme_mods_twentytwenty', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1576833794;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:9:"sidebar-2";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}}}}', 'yes'),
(124, 'auth_key', 'D@/l<JeTw>(si:[ya]I_srJLRk!Wr5nexi)BNcEO@=ar>-+3xUpo7Unf)d9[!4J:', 'no'),
(125, 'auth_salt', 'yx$Q_Hu?+MN6_:nwrVw&VT.m:=:4$P ,dmH(=0>#3Y|hmGEPQMo_5>q=zf5nkZLd', 'no'),
(126, 'logged_in_key', 'u!G_)Hdu.GE>o)_&>^s;tbxCM}=&-bP[L]I!95_,XhRlaU1`<d=M</Y8<lygq^P,', 'no'),
(127, 'logged_in_salt', 'NxyM1L8G5Joo,R4(2HrMn?}-/yGAcJ52R.v32w} nTN@L2XDPpv(KSB.E$]#t$M?', 'no'),
(133, 'can_compress_scripts', '0', 'no'),
(146, 'current_theme', 'Barista', 'yes'),
(147, 'theme_mods_barista', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:9:{s:14:"subheader-menu";i:39;s:11:"header-menu";i:40;s:11:"mobile-menu";i:41;s:16:"information-menu";i:42;s:9:"tags-menu";i:43;s:18:"barista-tools-menu";i:44;s:11:"aside-menu1";i:45;s:11:"aside-menu2";i:46;s:11:"aside-menu3";i:47;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(155, 'woocommerce_store_address', 'pobeda24', 'yes'),
(156, 'woocommerce_store_address_2', 'pobeda24', 'yes'),
(157, 'woocommerce_store_city', 'Zp', 'yes'),
(158, 'woocommerce_default_country', 'GB:*', 'yes'),
(159, 'woocommerce_store_postcode', '69012', 'yes'),
(160, 'woocommerce_allowed_countries', 'all', 'yes'),
(161, 'woocommerce_all_except_countries', '', 'yes'),
(162, 'woocommerce_specific_allowed_countries', '', 'yes'),
(163, 'woocommerce_ship_to_countries', '', 'yes'),
(164, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(165, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(166, 'woocommerce_calc_taxes', 'no', 'yes'),
(167, 'woocommerce_enable_coupons', 'yes', 'yes'),
(168, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(169, 'woocommerce_currency', 'UAH', 'yes'),
(170, 'woocommerce_currency_pos', 'left', 'yes'),
(171, 'woocommerce_price_thousand_sep', ',', 'yes'),
(172, 'woocommerce_price_decimal_sep', '.', 'yes'),
(173, 'woocommerce_price_num_decimals', '2', 'yes'),
(174, 'woocommerce_shop_page_id', '6', 'yes'),
(175, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(176, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(177, 'woocommerce_placeholder_image', '5', 'yes'),
(178, 'woocommerce_weight_unit', 'kg', 'yes'),
(179, 'woocommerce_dimension_unit', 'cm', 'yes'),
(180, 'woocommerce_enable_reviews', 'yes', 'yes'),
(181, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(182, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(183, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(184, 'woocommerce_review_rating_required', 'yes', 'no'),
(185, 'woocommerce_manage_stock', 'yes', 'yes'),
(186, 'woocommerce_hold_stock_minutes', '60', 'no'),
(187, 'woocommerce_notify_low_stock', 'yes', 'no'),
(188, 'woocommerce_notify_no_stock', 'yes', 'no'),
(189, 'woocommerce_stock_email_recipient', 'sinevor13@gmail.com', 'no'),
(190, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(191, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(192, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(193, 'woocommerce_stock_format', '', 'yes'),
(194, 'woocommerce_file_download_method', 'force', 'no'),
(195, 'woocommerce_downloads_require_login', 'no', 'no'),
(196, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(197, 'woocommerce_prices_include_tax', 'no', 'yes'),
(198, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(199, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(200, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(201, 'woocommerce_tax_classes', '', 'yes'),
(202, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(203, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(204, 'woocommerce_price_display_suffix', '', 'yes'),
(205, 'woocommerce_tax_total_display', 'itemized', 'no'),
(206, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(207, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(208, 'woocommerce_ship_to_destination', 'billing', 'no'),
(209, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(210, 'woocommerce_enable_guest_checkout', 'no', 'no'),
(211, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(212, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(213, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(214, 'woocommerce_registration_generate_username', 'no', 'no'),
(215, 'woocommerce_registration_generate_password', 'no', 'no'),
(216, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(217, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(218, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(219, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(220, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(221, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(222, 'woocommerce_trash_pending_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:4:"days";}', 'no'),
(223, 'woocommerce_trash_failed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:4:"days";}', 'no'),
(224, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:4:"days";}', 'no'),
(225, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(226, 'woocommerce_email_from_name', 'barista', 'no'),
(227, 'woocommerce_email_from_address', 'sinevor13@gmail.com', 'no'),
(228, 'woocommerce_email_header_image', '', 'no'),
(229, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(230, 'woocommerce_email_base_color', '#96588a', 'no'),
(231, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(232, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(233, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(234, 'woocommerce_cart_page_id', '7', 'no'),
(235, 'woocommerce_checkout_page_id', '8', 'no'),
(236, 'woocommerce_myaccount_page_id', '9', 'no'),
(237, 'woocommerce_terms_page_id', '', 'no'),
(238, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(239, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(240, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(241, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(242, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(243, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(244, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(245, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(246, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(247, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(248, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(249, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(250, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(251, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(252, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(253, 'woocommerce_api_enabled', 'no', 'yes'),
(254, 'woocommerce_allow_tracking', 'yes', 'no'),
(255, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(256, 'woocommerce_single_image_width', '600', 'yes'),
(257, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(258, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(259, 'woocommerce_demo_store', 'no', 'no'),
(260, 'woocommerce_permalinks', 'a:5:{s:12:"product_base";s:7:"product";s:13:"category_base";s:16:"product-category";s:8:"tag_base";s:11:"product-tag";s:14:"attribute_base";s:0:"";s:22:"use_verbose_page_rules";b:0;}', 'yes'),
(261, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(262, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(263, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(265, 'default_product_cat', '15', 'yes'),
(268, 'woocommerce_version', '3.8.1', 'yes'),
(269, 'woocommerce_db_version', '3.8.1', 'yes'),
(270, 'recently_activated', 'a:0:{}', 'yes'),
(271, 'woocommerce_admin_notices', 'a:2:{i:1;s:20:"no_secure_connection";i:2;s:8:"wc_admin";}', 'yes'),
(272, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(273, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(274, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(275, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(276, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(277, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(278, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(279, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(280, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(281, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(282, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(283, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(284, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(291, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(295, 'woocommerce_obw_last_completed_step', 'recommended', 'yes'),
(298, 'woocommerce_product_type', 'both', 'yes'),
(302, 'woocommerce_stripe_settings', 'a:3:{s:7:"enabled";s:3:"yes";s:14:"create_account";s:3:"yes";s:5:"email";s:19:"sinevor13@gmail.com";}', 'yes'),
(303, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(304, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(305, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(308, 'jetpack_activated', '1', 'yes'),
(311, 'jetpack_activation_source', 'a:2:{i:0;s:7:"unknown";i:1;N;}', 'yes'),
(312, 'jetpack_options', 'a:4:{s:7:"version";s:14:"8.0:1576834001";s:11:"old_version";s:14:"8.0:1576834001";s:28:"fallback_no_verify_ssl_certs";i:0;s:9:"time_diff";i:0;}', 'yes'),
(313, 'jetpack_sync_settings_disable', '0', 'yes'),
(314, 'jetpack_testimonial', '0', 'yes'),
(322, 'do_activate', '0', 'yes'),
(327, '_transient_shipping-transient-version', '1576834005', 'yes'),
(329, 'woocommerce_tracker_last_send', '1577524760', 'yes'),
(331, 'wc_stripe_show_style_notice', 'no', 'yes'),
(332, 'wc_stripe_show_sca_notice', 'no', 'yes'),
(333, 'wc_stripe_version', '4.3.1', 'yes'),
(337, '_transient_timeout_wc_shipping_method_count_legacy', '1579426099', 'no'),
(338, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:"version";s:10:"1576834005";s:5:"value";i:0;}', 'no'),
(340, 'woocommerce_tracker_ua', 'a:1:{i:0;s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36";}', 'yes'),
(379, 'acf_version', '5.8.7', 'yes'),
(385, '_transient_timeout_jetpack_file_data_8.0', '1579341638', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(386, '_transient_jetpack_file_data_8.0', 'a:51:{s:32:"212a162108f1dc20cc6c768d5b47d4f2";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"d3576702faeb399eb47ad20f586c3804";a:14:{s:4:"name";s:8:"Carousel";s:11:"description";s:75:"Display images and galleries in a gorgeous, full-screen browsing experience";s:4:"sort";s:2:"22";s:20:"recommendation_order";s:2:"12";s:10:"introduced";s:3:"1.5";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:17:"Photos and Videos";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:80:"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image";s:12:"plan_classes";s:0:"";}s:32:"55409a5f8388b8d33e2350ef80de3ea3";a:14:{s:4:"name";s:13:"Comment Likes";s:11:"description";s:64:"Increase visitor engagement by adding a Like button to comments.";s:4:"sort";s:2:"39";s:20:"recommendation_order";s:2:"17";s:10:"introduced";s:3:"5.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:37:"like widget, like button, like, likes";s:12:"plan_classes";s:0:"";}s:32:"e914e6d31cb61f5a9ef86e1b9573430e";a:14:{s:4:"name";s:8:"Comments";s:11:"description";s:81:"Let visitors use a WordPress.com, Twitter, Facebook, or Google account to comment";s:4:"sort";s:2:"20";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:53:"comments, comment, facebook, twitter, google+, social";s:12:"plan_classes";s:0:"";}s:32:"f1b8c61705fb18eb8c8584c9f9cdffd9";a:14:{s:4:"name";s:12:"Contact Form";s:11:"description";s:81:"Add a customizable contact form to any post or page using the Jetpack Form Block.";s:4:"sort";s:2:"15";s:20:"recommendation_order";s:2:"14";s:10:"introduced";s:3:"1.3";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:5:"Other";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:214:"contact, form, grunion, feedback, submission, contact form, email, feedback, contact form plugin, custom form, custom form plugin, form builder, forms, form maker, survey, contact by jetpack, contact us, forms free";s:12:"plan_classes";s:0:"";}s:32:"4fca6eb23a793155d69fdb119a094926";a:14:{s:4:"name";s:9:"Copy Post";s:11:"description";s:77:"Enable the option to copy entire posts and pages, including tags and settings";s:4:"sort";s:2:"15";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"7.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:15:"copy, duplicate";s:12:"plan_classes";s:0:"";}s:32:"cfdac01e3c3c529f93a8f49edef1f5db";a:14:{s:4:"name";s:20:"Custom content types";s:11:"description";s:74:"Display different types of content on your site with custom content types.";s:4:"sort";s:2:"34";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:72:"cpt, custom post types, portfolio, portfolios, testimonial, testimonials";s:12:"plan_classes";s:0:"";}s:32:"4b9137ecf507290743735fb1f94535df";a:14:{s:4:"name";s:10:"Custom CSS";s:11:"description";s:88:"Adds options for CSS preprocessor use, disabling the theme\'s CSS, or custom image width.";s:4:"sort";s:1:"2";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.7";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:10:"Appearance";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:108:"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet";s:12:"plan_classes";s:0:"";}s:32:"95d75b38d76d2ee1b5b537026eadb8ff";a:14:{s:4:"name";s:21:"Enhanced Distribution";s:11:"description";s:27:"Increase reach and traffic.";s:4:"sort";s:1:"5";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:6:"Public";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:54:"google, seo, firehose, search, broadcast, broadcasting";s:12:"plan_classes";s:0:"";}s:32:"f1bb571a95c5de1e6adaf9db8567c039";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"822f9ef1281dace3fb7cc420c77d24e0";a:14:{s:4:"name";s:16:"Google Analytics";s:11:"description";s:56:"Set up Google Analytics without touching a line of code.";s:4:"sort";s:2:"37";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"4.5";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:0:"";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:37:"webmaster, google, analytics, console";s:12:"plan_classes";s:17:"business, premium";}s:32:"c167275f926ef0eefaec9a679bd88d34";a:14:{s:4:"name";s:19:"Gravatar Hovercards";s:11:"description";s:58:"Enable pop-up business cards over commenters’ Gravatars.";s:4:"sort";s:2:"11";s:20:"recommendation_order";s:2:"13";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:18:"Social, Appearance";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:20:"gravatar, hovercards";s:12:"plan_classes";s:0:"";}s:32:"58cbd4585a74829a1c88aa9c295f3993";a:14:{s:4:"name";s:15:"Infinite Scroll";s:11:"description";s:53:"Automatically load new content when a visitor scrolls";s:4:"sort";s:2:"26";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:10:"Appearance";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:33:"scroll, infinite, infinite scroll";s:12:"plan_classes";s:0:"";}s:32:"d4a35eabc948caefad71a0d3303b95c8";a:14:{s:4:"name";s:8:"JSON API";s:11:"description";s:51:"Allow applications to securely access your content.";s:4:"sort";s:2:"19";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:6:"Public";s:11:"module_tags";s:19:"Writing, Developers";s:7:"feature";s:7:"General";s:25:"additional_search_queries";s:50:"api, rest, develop, developers, json, klout, oauth";s:12:"plan_classes";s:0:"";}s:32:"7b0c670bc3f8209dc83abb8610e23a89";a:14:{s:4:"name";s:14:"Beautiful Math";s:11:"description";s:74:"Use the LaTeX markup language to write mathematical equations and formulas";s:4:"sort";s:2:"12";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:47:"latex, math, equation, equations, formula, code";s:12:"plan_classes";s:0:"";}s:32:"b00e4e6c109ce6f77b5c83fbaaaead4c";a:14:{s:4:"name";s:11:"Lazy Images";s:11:"description";s:137:"Speed up your site and create a smoother viewing experience by loading images as visitors scroll down the screen, instead of all at once.";s:4:"sort";s:2:"24";s:20:"recommendation_order";s:2:"14";s:10:"introduced";s:5:"5.6.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:23:"Appearance, Recommended";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:150:"mobile, theme, fast images, fast image, image, lazy, lazy load, lazyload, images, lazy images, thumbnail, image lazy load, lazy loading, load, loading";s:12:"plan_classes";s:0:"";}s:32:"8e46c72906c928eca634ac2c8b1bc84f";a:14:{s:4:"name";s:5:"Likes";s:11:"description";s:63:"Give visitors an easy way to show they appreciate your content.";s:4:"sort";s:2:"23";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:26:"like, likes, wordpress.com";s:12:"plan_classes";s:0:"";}s:32:"2df2264a07aff77e0556121e33349dce";a:14:{s:4:"name";s:8:"Markdown";s:11:"description";s:50:"Write posts or pages in plain-text Markdown syntax";s:4:"sort";s:2:"31";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.8";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:12:"md, markdown";s:12:"plan_classes";s:0:"";}s:32:"0337eacae47d30c946cb9fc4e5ece649";a:14:{s:4:"name";s:21:"WordPress.com Toolbar";s:11:"description";s:91:"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com.";s:4:"sort";s:2:"38";s:20:"recommendation_order";s:2:"16";s:10:"introduced";s:3:"4.8";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:7:"General";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:19:"adminbar, masterbar";s:12:"plan_classes";s:0:"";}s:32:"cb5d81445061b89d19cb9c7754697a39";a:14:{s:4:"name";s:12:"Mobile Theme";s:11:"description";s:31:"Enable the Jetpack Mobile theme";s:4:"sort";s:2:"21";s:20:"recommendation_order";s:2:"11";s:10:"introduced";s:3:"1.8";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:31:"Appearance, Mobile, Recommended";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:24:"mobile, theme, minileven";s:12:"plan_classes";s:0:"";}s:32:"ea0fbbd64080c81a90a784924603588c";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"5c53fdb3633ba3232f60180116900273";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"40b97d9ce396339d3e8e46b833a045b5";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"0739df64747f2d02c140f23ce6c19cd8";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"c54bb0a65b39f1316da8632197a88a4e";a:14:{s:4:"name";s:7:"Monitor";s:11:"description";s:118:"Jetpack’s downtime monitoring will continuously watch your site, and alert you the moment that downtime is detected.";s:4:"sort";s:2:"28";s:20:"recommendation_order";s:2:"10";s:10:"introduced";s:3:"2.6";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:11:"Recommended";s:7:"feature";s:8:"Security";s:25:"additional_search_queries";s:123:"monitor, uptime, downtime, monitoring, maintenance, maintenance mode, offline, site is down, site down, down, repair, error";s:12:"plan_classes";s:0:"";}s:32:"cc013f4c5480c7bdc1e7edb2f410bf3c";a:14:{s:4:"name";s:13:"Notifications";s:11:"description";s:57:"Receive instant notifications of site comments and likes.";s:4:"sort";s:2:"13";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:5:"Other";s:7:"feature";s:7:"General";s:25:"additional_search_queries";s:62:"notification, notifications, toolbar, adminbar, push, comments";s:12:"plan_classes";s:0:"";}s:32:"b3b34928b1e549bb52f866accc0450c5";a:14:{s:4:"name";s:9:"Asset CDN";s:11:"description";s:154:"Jetpack’s Site Accelerator loads your site faster by optimizing your images and serving your images and static files from our global network of servers.";s:4:"sort";s:2:"26";s:20:"recommendation_order";s:1:"1";s:10:"introduced";s:3:"6.6";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:42:"Photos and Videos, Appearance, Recommended";s:7:"feature";s:23:"Recommended, Appearance";s:25:"additional_search_queries";s:160:"site accelerator, accelerate, static, assets, javascript, css, files, performance, cdn, bandwidth, content delivery network, pagespeed, combine js, optimize css";s:12:"plan_classes";s:0:"";}s:32:"714284944f56d6936a40f3309900bc8e";a:14:{s:4:"name";s:9:"Image CDN";s:11:"description";s:141:"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.";s:4:"sort";s:2:"25";s:20:"recommendation_order";s:1:"1";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:42:"Photos and Videos, Appearance, Recommended";s:7:"feature";s:23:"Recommended, Appearance";s:25:"additional_search_queries";s:171:"photon, photo cdn, image cdn, speed, compression, resize, responsive images, responsive, content distribution network, optimize, page speed, image optimize, photon jetpack";s:12:"plan_classes";s:0:"";}s:32:"348754bc914ee02c72d9af445627784c";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"041704e207c4c59eea93e0499c908bff";a:14:{s:4:"name";s:13:"Post by email";s:11:"description";s:33:"Publish posts by sending an email";s:4:"sort";s:2:"14";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:20:"post by email, email";s:12:"plan_classes";s:0:"";}s:32:"26e6cb3e08a6cfd0811c17e7c633c72c";a:14:{s:4:"name";s:7:"Protect";s:11:"description";s:151:"Enabling brute force protection will prevent bots and hackers from attempting to log in to your website with common username and password combinations.";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:1:"4";s:10:"introduced";s:3:"3.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:11:"Recommended";s:7:"feature";s:8:"Security";s:25:"additional_search_queries";s:173:"security, jetpack protect, secure, protection, botnet, brute force, protect, login, bot, password, passwords, strong passwords, strong password, wp-login.php,  protect admin";s:12:"plan_classes";s:0:"";}s:32:"915a504082f797395713fd01e0e2e713";a:14:{s:4:"name";s:9:"Publicize";s:11:"description";s:128:"Publicize makes it easy to share your site’s posts on several social media networks automatically when you publish a new post.";s:4:"sort";s:2:"10";s:20:"recommendation_order";s:1:"7";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:19:"Social, Recommended";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:220:"facebook, jetpack publicize, twitter, tumblr, linkedin, social, tweet, connections, sharing, social media, automated, automated sharing, auto publish, auto tweet and like, auto tweet, facebook auto post, facebook posting";s:12:"plan_classes";s:0:"";}s:32:"a7b21cc562ee9ffa357bba19701fe45b";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"9243c1a718566213f4eaf3b44cf14b07";a:14:{s:4:"name";s:13:"Related posts";s:11:"description";s:113:"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.";s:4:"sort";s:2:"29";s:20:"recommendation_order";s:1:"9";s:10:"introduced";s:3:"2.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:11:"Recommended";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:360:"related, jetpack related posts, related posts for wordpress, related posts, popular posts, popular, related content, related post, contextual, context, contextual related posts, related articles, similar posts, easy related posts, related page, simple related posts, free related posts, related thumbnails, similar, engagement, yet another related posts plugin";s:12:"plan_classes";s:0:"";}s:32:"583e4cda5596ee1b28a19cde33f438be";a:14:{s:4:"name";s:6:"Search";s:11:"description";s:87:"Enhanced search, powered by Elasticsearch, a powerful replacement for WordPress search.";s:4:"sort";s:2:"34";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"5.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:5:"false";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:0:"";s:7:"feature";s:6:"Search";s:25:"additional_search_queries";s:110:"search, elastic, elastic search, elasticsearch, fast search, search results, search performance, google search";s:12:"plan_classes";s:8:"business";}s:32:"15346c1f7f2a5f29d34378774ecfa830";a:14:{s:4:"name";s:9:"SEO Tools";s:11:"description";s:50:"Better results on search engines and social media.";s:4:"sort";s:2:"35";s:20:"recommendation_order";s:2:"15";s:10:"introduced";s:3:"4.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:18:"Social, Appearance";s:7:"feature";s:7:"Traffic";s:25:"additional_search_queries";s:81:"search engine optimization, social preview, meta description, custom title format";s:12:"plan_classes";s:17:"business, premium";}s:32:"72a0ff4cfae86074a7cdd2dcd432ef11";a:14:{s:4:"name";s:7:"Sharing";s:11:"description";s:120:"Add Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.";s:4:"sort";s:1:"7";s:20:"recommendation_order";s:1:"6";s:10:"introduced";s:3:"1.1";s:7:"changed";s:3:"1.2";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:19:"Social, Recommended";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:229:"share, sharing, sharedaddy, social buttons, buttons, share facebook, share twitter, social media sharing, social media share, social share, icons, email, facebook, twitter, linkedin, pinterest, pocket, social widget, social media";s:12:"plan_classes";s:0:"";}s:32:"bb8c6c190aaec212a7ab6e940165af4d";a:14:{s:4:"name";s:16:"Shortcode Embeds";s:11:"description";s:177:"Shortcodes are WordPress-specific markup that let you add media from popular sites. This feature is no longer necessary as the editor now handles media embeds rather gracefully.";s:4:"sort";s:1:"3";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:3:"1.2";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:46:"Photos and Videos, Social, Writing, Appearance";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:236:"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube";s:12:"plan_classes";s:0:"";}s:32:"1abd31fe07ae4fb0f8bb57dc24592219";a:14:{s:4:"name";s:16:"WP.me Shortlinks";s:11:"description";s:82:"Generates shorter links so you can have more space to write on social media sites.";s:4:"sort";s:1:"8";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:17:"shortlinks, wp.me";s:12:"plan_classes";s:0:"";}s:32:"cae5f097f8d658e0b0ae50733d7c6476";a:14:{s:4:"name";s:8:"Sitemaps";s:11:"description";s:50:"Make it easy for search engines to find your site.";s:4:"sort";s:2:"13";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:20:"Recommended, Traffic";s:7:"feature";s:11:"Recommended";s:25:"additional_search_queries";s:39:"sitemap, traffic, search, site map, seo";s:12:"plan_classes";s:0:"";}s:32:"e9b8318133b2f95e7906cedb3557a87d";a:14:{s:4:"name";s:14:"Secure Sign On";s:11:"description";s:63:"Allow users to log in to this site using WordPress.com accounts";s:4:"sort";s:2:"30";s:20:"recommendation_order";s:1:"5";s:10:"introduced";s:3:"2.6";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:10:"Developers";s:7:"feature";s:8:"Security";s:25:"additional_search_queries";s:34:"sso, single sign on, login, log in";s:12:"plan_classes";s:0:"";}s:32:"17e66a12031ccf11d8d45ceee0955f05";a:14:{s:4:"name";s:10:"Site Stats";s:11:"description";s:44:"Collect valuable traffic stats and insights.";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:1:"2";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:23:"Site Stats, Recommended";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:54:"statistics, tracking, analytics, views, traffic, stats";s:12:"plan_classes";s:0:"";}s:32:"346cf9756e7c1252acecb9a8ca81a21c";a:14:{s:4:"name";s:13:"Subscriptions";s:11:"description";s:58:"Let visitors subscribe to new posts and comments via email";s:4:"sort";s:1:"9";s:20:"recommendation_order";s:1:"8";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:74:"subscriptions, subscription, email, follow, followers, subscribers, signup";s:12:"plan_classes";s:0:"";}s:32:"4f84d218792a6efa06ed6feae09c4dd5";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"ca086af79d0d9dccacc934ccff5b4fd7";a:14:{s:4:"name";s:15:"Tiled Galleries";s:11:"description";s:61:"Display image galleries in a variety of elegant arrangements.";s:4:"sort";s:2:"24";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:17:"Photos and Videos";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:43:"gallery, tiles, tiled, grid, mosaic, images";s:12:"plan_classes";s:0:"";}s:32:"43c24feb7c541c376af93e0251c1a261";a:14:{s:4:"name";s:20:"Backups and Scanning";s:11:"description";s:100:"Protect your site with daily or real-time backups and automated virus scanning and threat detection.";s:4:"sort";s:2:"32";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:5:"0:1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:5:"false";s:4:"free";s:5:"false";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:0:"";s:7:"feature";s:16:"Security, Health";s:25:"additional_search_queries";s:386:"backup, cloud backup, database backup, restore, wordpress backup, backup plugin, wordpress backup plugin, back up, backup wordpress, backwpup, vaultpress, backups, off-site backups, offsite backup, offsite, off-site, antivirus, malware scanner, security, virus, viruses, prevent viruses, scan, anti-virus, antimalware, protection, safe browsing, malware, wp security, wordpress security";s:12:"plan_classes";s:27:"personal, business, premium";}s:32:"b9396d8038fc29140b499098d2294d79";a:14:{s:4:"name";s:17:"Site verification";s:11:"description";s:58:"Establish your site\'s authenticity with external services.";s:4:"sort";s:2:"33";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:0:"";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:56:"webmaster, seo, google, bing, pinterest, search, console";s:12:"plan_classes";s:0:"";}s:32:"afe184082e106c1bdfe1ee844f98aef3";a:14:{s:4:"name";s:10:"VideoPress";s:11:"description";s:101:"Save on hosting storage and bandwidth costs by streaming fast, ad-free video from our global network.";s:4:"sort";s:2:"27";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.5";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:5:"false";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:17:"Photos and Videos";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:118:"video, videos, videopress, video gallery, video player, videoplayer, mobile video, vimeo, youtube, html5 video, stream";s:12:"plan_classes";s:17:"business, premium";}s:32:"44637d43460370af9a1b31ce3ccec0cd";a:14:{s:4:"name";s:17:"Widget Visibility";s:11:"description";s:42:"Control where widgets appear on your site.";s:4:"sort";s:2:"17";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:10:"Appearance";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:54:"widget visibility, logic, conditional, widgets, widget";s:12:"plan_classes";s:0:"";}s:32:"694c105a5c3b659acfcddad220048d08";a:14:{s:4:"name";s:21:"Extra Sidebar Widgets";s:11:"description";s:49:"Provides additional widgets for use on your site.";s:4:"sort";s:1:"4";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:18:"Social, Appearance";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:65:"widget, widgets, facebook, gallery, twitter, gravatar, image, rss";s:12:"plan_classes";s:0:"";}s:32:"ae15da72c5802d72f320640bad669561";a:14:{s:4:"name";s:3:"Ads";s:11:"description";s:60:"Earn income by allowing Jetpack to display high quality ads.";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:5:"4.5.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:19:"Traffic, Appearance";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:26:"advertising, ad codes, ads";s:12:"plan_classes";s:17:"premium, business";}}', 'no'),
(387, 'jetpack_available_modules', 'a:1:{s:3:"8.0";a:42:{s:8:"carousel";s:3:"1.5";s:13:"comment-likes";s:3:"5.1";s:8:"comments";s:3:"1.4";s:12:"contact-form";s:3:"1.3";s:9:"copy-post";s:3:"7.0";s:20:"custom-content-types";s:3:"3.1";s:10:"custom-css";s:3:"1.7";s:21:"enhanced-distribution";s:3:"1.2";s:16:"google-analytics";s:3:"4.5";s:19:"gravatar-hovercards";s:3:"1.1";s:15:"infinite-scroll";s:3:"2.0";s:8:"json-api";s:3:"1.9";s:5:"latex";s:3:"1.1";s:11:"lazy-images";s:5:"5.6.0";s:5:"likes";s:3:"2.2";s:8:"markdown";s:3:"2.8";s:9:"masterbar";s:3:"4.8";s:9:"minileven";s:3:"1.8";s:7:"monitor";s:3:"2.6";s:5:"notes";s:3:"1.9";s:10:"photon-cdn";s:3:"6.6";s:6:"photon";s:3:"2.0";s:13:"post-by-email";s:3:"2.0";s:7:"protect";s:3:"3.4";s:9:"publicize";s:3:"2.0";s:13:"related-posts";s:3:"2.9";s:6:"search";s:3:"5.0";s:9:"seo-tools";s:3:"4.4";s:10:"sharedaddy";s:3:"1.1";s:10:"shortcodes";s:3:"1.1";s:10:"shortlinks";s:3:"1.1";s:8:"sitemaps";s:3:"3.9";s:3:"sso";s:3:"2.6";s:5:"stats";s:3:"1.1";s:13:"subscriptions";s:3:"1.2";s:13:"tiled-gallery";s:3:"2.1";s:10:"vaultpress";s:5:"0:1.2";s:18:"verification-tools";s:3:"3.0";s:10:"videopress";s:3:"2.5";s:17:"widget-visibility";s:3:"2.4";s:7:"widgets";s:3:"1.2";s:7:"wordads";s:5:"4.5.0";}}', 'yes'),
(390, 'wc_pwb_admin_tab_brand_single_position', 'after_meta', 'yes'),
(391, 'pwb_activate_on', '1576836117', 'yes'),
(392, 'old_wc_pwb_admin_tab_slug', 'brand', 'yes'),
(393, 'widget_pwb_list_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(394, 'widget_pwb_dropdown_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(395, 'widget_pwb_filter_by_brand_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(402, '_transient_product_query-transient-version', '1577526055', 'yes'),
(403, '_transient_timeout_wc_product_loop_16b8d7733cb5d3fa41f2dbfb464b94b0', '1580118093', 'no'),
(404, '_transient_wc_product_loop_16b8d7733cb5d3fa41f2dbfb464b94b0', 'a:2:{s:7:"version";s:10:"1577526055";s:5:"value";O:8:"stdClass":5:{s:3:"ids";a:3:{i:0;i:336;i:1;i:344;i:2;i:345;}s:5:"total";i:3;s:11:"total_pages";i:1;s:8:"per_page";i:3;s:12:"current_page";i:1;}}', 'no'),
(427, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:"suggestions";a:26:{i:0;a:4:{s:4:"slug";s:28:"product-edit-meta-tab-header";s:7:"context";s:28:"product-edit-meta-tab-header";s:5:"title";s:22:"Recommended extensions";s:13:"allow-dismiss";b:0;}i:1;a:6:{s:4:"slug";s:39:"product-edit-meta-tab-footer-browse-all";s:7:"context";s:28:"product-edit-meta-tab-footer";s:9:"link-text";s:21:"Browse all extensions";s:3:"url";s:64:"https://woocommerce.com/product-category/woocommerce-extensions/";s:8:"promoted";s:31:"category-woocommerce-extensions";s:13:"allow-dismiss";b:0;}i:2;a:9:{s:4:"slug";s:46:"product-edit-mailchimp-woocommerce-memberships";s:7:"product";s:33:"woocommerce-memberships-mailchimp";s:14:"show-if-active";a:1:{i:0;s:23:"woocommerce-memberships";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:117:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/mailchimp-for-memberships.svg";s:5:"title";s:25:"Mailchimp for Memberships";s:4:"copy";s:79:"Completely automate your email lists by syncing membership changes to Mailchimp";s:11:"button-text";s:10:"Learn More";s:3:"url";s:67:"https://woocommerce.com/products/mailchimp-woocommerce-memberships/";}i:3;a:9:{s:4:"slug";s:19:"product-edit-addons";s:7:"product";s:26:"woocommerce-product-addons";s:14:"show-if-active";a:2:{i:0;s:25:"woocommerce-subscriptions";i:1;s:20:"woocommerce-bookings";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:107:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-add-ons.svg";s:5:"title";s:15:"Product Add-Ons";s:4:"copy";s:93:"Offer add-ons like gift wrapping, special messages or other special options for your products";s:11:"button-text";s:10:"Learn More";s:3:"url";s:49:"https://woocommerce.com/products/product-add-ons/";}i:4;a:9:{s:4:"slug";s:46:"product-edit-woocommerce-subscriptions-gifting";s:7:"product";s:33:"woocommerce-subscriptions-gifting";s:14:"show-if-active";a:1:{i:0;s:25:"woocommerce-subscriptions";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:117:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/gifting-for-subscriptions.svg";s:5:"title";s:25:"Gifting for Subscriptions";s:4:"copy";s:70:"Let customers buy subscriptions for others - they\'re the ultimate gift";s:11:"button-text";s:10:"Learn More";s:3:"url";s:67:"https://woocommerce.com/products/woocommerce-subscriptions-gifting/";}i:5;a:9:{s:4:"slug";s:42:"product-edit-teams-woocommerce-memberships";s:7:"product";s:33:"woocommerce-memberships-for-teams";s:14:"show-if-active";a:1:{i:0;s:23:"woocommerce-memberships";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:113:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/teams-for-memberships.svg";s:5:"title";s:21:"Teams for Memberships";s:4:"copy";s:123:"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts";s:11:"button-text";s:10:"Learn More";s:3:"url";s:63:"https://woocommerce.com/products/teams-woocommerce-memberships/";}i:6;a:8:{s:4:"slug";s:29:"product-edit-variation-images";s:7:"product";s:39:"woocommerce-additional-variation-images";s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:119:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/additional-variation-images.svg";s:5:"title";s:27:"Additional Variation Images";s:4:"copy";s:72:"Showcase your products in the best light with a image for each variation";s:11:"button-text";s:10:"Learn More";s:3:"url";s:73:"https://woocommerce.com/products/woocommerce-additional-variation-images/";}i:7;a:9:{s:4:"slug";s:47:"product-edit-woocommerce-subscription-downloads";s:7:"product";s:34:"woocommerce-subscription-downloads";s:14:"show-if-active";a:1:{i:0;s:25:"woocommerce-subscriptions";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:114:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscription-downloads.svg";s:5:"title";s:22:"Subscription Downloads";s:4:"copy";s:57:"Give customers special downloads with their subscriptions";s:11:"button-text";s:10:"Learn More";s:3:"url";s:68:"https://woocommerce.com/products/woocommerce-subscription-downloads/";}i:8;a:8:{s:4:"slug";s:31:"product-edit-min-max-quantities";s:7:"product";s:30:"woocommerce-min-max-quantities";s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:110:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/min-max-quantities.svg";s:5:"title";s:18:"Min/Max Quantities";s:4:"copy";s:81:"Specify minimum and maximum allowed product quantities for orders to be completed";s:11:"button-text";s:10:"Learn More";s:3:"url";s:52:"https://woocommerce.com/products/min-max-quantities/";}i:9;a:8:{s:4:"slug";s:28:"product-edit-name-your-price";s:7:"product";s:27:"woocommerce-name-your-price";s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:107:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/name-your-price.svg";s:5:"title";s:15:"Name Your Price";s:4:"copy";s:70:"Let customers pay what they want - useful for donations, tips and more";s:11:"button-text";s:10:"Learn More";s:3:"url";s:49:"https://woocommerce.com/products/name-your-price/";}i:10;a:8:{s:4:"slug";s:42:"product-edit-woocommerce-one-page-checkout";s:7:"product";s:29:"woocommerce-one-page-checkout";s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:109:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/one-page-checkout.svg";s:5:"title";s:17:"One Page Checkout";s:4:"copy";s:92:"Don\'t make customers click around - let them choose products, checkout & pay all on one page";s:11:"button-text";s:10:"Learn More";s:3:"url";s:63:"https://woocommerce.com/products/woocommerce-one-page-checkout/";}i:11;a:4:{s:4:"slug";s:19:"orders-empty-header";s:7:"context";s:24:"orders-list-empty-header";s:5:"title";s:20:"Tools for your store";s:13:"allow-dismiss";b:0;}i:12;a:6:{s:4:"slug";s:30:"orders-empty-footer-browse-all";s:7:"context";s:24:"orders-list-empty-footer";s:9:"link-text";s:21:"Browse all extensions";s:3:"url";s:64:"https://woocommerce.com/product-category/woocommerce-extensions/";s:8:"promoted";s:31:"category-woocommerce-extensions";s:13:"allow-dismiss";b:0;}i:13;a:8:{s:4:"slug";s:19:"orders-empty-zapier";s:7:"context";s:22:"orders-list-empty-body";s:7:"product";s:18:"woocommerce-zapier";s:4:"icon";s:98:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/zapier.svg";s:5:"title";s:6:"Zapier";s:4:"copy";s:88:"Save time and increase productivity by connecting your store to more than 1000+ services";s:11:"button-text";s:10:"Learn More";s:3:"url";s:52:"https://woocommerce.com/products/woocommerce-zapier/";}i:14;a:8:{s:4:"slug";s:30:"orders-empty-shipment-tracking";s:7:"context";s:22:"orders-list-empty-body";s:7:"product";s:29:"woocommerce-shipment-tracking";s:4:"icon";s:109:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipment-tracking.svg";s:5:"title";s:17:"Shipment Tracking";s:4:"copy";s:86:"Let customers know when their orders will arrive by adding shipment tracking to emails";s:11:"button-text";s:10:"Learn More";s:3:"url";s:51:"https://woocommerce.com/products/shipment-tracking/";}i:15;a:8:{s:4:"slug";s:32:"orders-empty-table-rate-shipping";s:7:"context";s:22:"orders-list-empty-body";s:7:"product";s:31:"woocommerce-table-rate-shipping";s:4:"icon";s:111:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/table-rate-shipping.svg";s:5:"title";s:19:"Table Rate Shipping";s:4:"copy";s:122:"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count";s:11:"button-text";s:10:"Learn More";s:3:"url";s:53:"https://woocommerce.com/products/table-rate-shipping/";}i:16;a:8:{s:4:"slug";s:40:"orders-empty-shipping-carrier-extensions";s:7:"context";s:22:"orders-list-empty-body";s:4:"icon";s:119:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipping-carrier-extensions.svg";s:5:"title";s:27:"Shipping Carrier Extensions";s:4:"copy";s:116:"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again";s:11:"button-text";s:13:"Find Carriers";s:8:"promoted";s:26:"category-shipping-carriers";s:3:"url";s:99:"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/";}i:17;a:8:{s:4:"slug";s:32:"orders-empty-google-product-feed";s:7:"context";s:22:"orders-list-empty-body";s:7:"product";s:25:"woocommerce-product-feeds";s:4:"icon";s:111:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/google-product-feed.svg";s:5:"title";s:19:"Google Product Feed";s:4:"copy";s:76:"Increase sales by letting customers find you when they\'re shopping on Google";s:11:"button-text";s:10:"Learn More";s:3:"url";s:53:"https://woocommerce.com/products/google-product-feed/";}i:18;a:4:{s:4:"slug";s:35:"products-empty-header-product-types";s:7:"context";s:26:"products-list-empty-header";s:5:"title";s:23:"Other types of products";s:13:"allow-dismiss";b:0;}i:19;a:6:{s:4:"slug";s:32:"products-empty-footer-browse-all";s:7:"context";s:26:"products-list-empty-footer";s:9:"link-text";s:21:"Browse all extensions";s:3:"url";s:64:"https://woocommerce.com/product-category/woocommerce-extensions/";s:8:"promoted";s:31:"category-woocommerce-extensions";s:13:"allow-dismiss";b:0;}i:20;a:8:{s:4:"slug";s:30:"products-empty-product-vendors";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:27:"woocommerce-product-vendors";s:4:"icon";s:107:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-vendors.svg";s:5:"title";s:15:"Product Vendors";s:4:"copy";s:47:"Turn your store into a multi-vendor marketplace";s:11:"button-text";s:10:"Learn More";s:3:"url";s:49:"https://woocommerce.com/products/product-vendors/";}i:21;a:8:{s:4:"slug";s:26:"products-empty-memberships";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:23:"woocommerce-memberships";s:4:"icon";s:103:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/memberships.svg";s:5:"title";s:11:"Memberships";s:4:"copy";s:76:"Give members access to restricted content or products, for a fee or for free";s:11:"button-text";s:10:"Learn More";s:3:"url";s:57:"https://woocommerce.com/products/woocommerce-memberships/";}i:22;a:9:{s:4:"slug";s:35:"products-empty-woocommerce-deposits";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:20:"woocommerce-deposits";s:14:"show-if-active";a:1:{i:0;s:20:"woocommerce-bookings";}s:4:"icon";s:100:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/deposits.svg";s:5:"title";s:8:"Deposits";s:4:"copy";s:75:"Make it easier for customers to pay by offering a deposit or a payment plan";s:11:"button-text";s:10:"Learn More";s:3:"url";s:54:"https://woocommerce.com/products/woocommerce-deposits/";}i:23;a:8:{s:4:"slug";s:40:"products-empty-woocommerce-subscriptions";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:25:"woocommerce-subscriptions";s:4:"icon";s:105:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscriptions.svg";s:5:"title";s:13:"Subscriptions";s:4:"copy";s:97:"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis";s:11:"button-text";s:10:"Learn More";s:3:"url";s:59:"https://woocommerce.com/products/woocommerce-subscriptions/";}i:24;a:8:{s:4:"slug";s:35:"products-empty-woocommerce-bookings";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:20:"woocommerce-bookings";s:4:"icon";s:100:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/bookings.svg";s:5:"title";s:8:"Bookings";s:4:"copy";s:99:"Allow customers to book appointments, make reservations or rent equipment without leaving your site";s:11:"button-text";s:10:"Learn More";s:3:"url";s:54:"https://woocommerce.com/products/woocommerce-bookings/";}i:25;a:8:{s:4:"slug";s:30:"products-empty-product-bundles";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:27:"woocommerce-product-bundles";s:4:"icon";s:107:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-bundles.svg";s:5:"title";s:15:"Product Bundles";s:4:"copy";s:49:"Offer customizable bundles and assembled products";s:11:"button-text";s:10:"Learn More";s:3:"url";s:49:"https://woocommerce.com/products/product-bundles/";}}s:7:"updated";i:1576837142;}', 'no'),
(438, 'pwb-brand_children', 'a:0:{}', 'yes'),
(444, 'product_cat_children', 'a:0:{}', 'yes'),
(448, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(483, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1578120411;s:7:"checked";a:9:{s:30:"advanced-custom-fields/acf.php";s:5:"5.8.7";s:19:"akismet/akismet.php";s:5:"4.1.3";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"5.1.6";s:9:"hello.php";s:5:"1.7.2";s:19:"jetpack/jetpack.php";s:3:"8.0";s:35:"perfect-woocommerce-brands/main.php";s:5:"1.7.7";s:27:"woocommerce/woocommerce.php";s:5:"3.8.1";s:45:"woocommerce-services/woocommerce-services.php";s:6:"1.22.2";s:57:"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php";s:5:"4.3.1";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:9:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"5.8.7";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}}s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.1.6";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}}s:19:"jetpack/jetpack.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/jetpack";s:4:"slug";s:7:"jetpack";s:6:"plugin";s:19:"jetpack/jetpack.php";s:11:"new_version";s:3:"8.0";s:3:"url";s:38:"https://wordpress.org/plugins/jetpack/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/jetpack.8.0.zip";s:5:"icons";a:3:{s:2:"2x";s:60:"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404";s:2:"1x";s:52:"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404";s:3:"svg";s:52:"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404";}s:7:"banners";a:2:{s:2:"2x";s:63:"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404";s:2:"1x";s:62:"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404";}s:11:"banners_rtl";a:0:{}}s:35:"perfect-woocommerce-brands/main.php";O:8:"stdClass":9:{s:2:"id";s:40:"w.org/plugins/perfect-woocommerce-brands";s:4:"slug";s:26:"perfect-woocommerce-brands";s:6:"plugin";s:35:"perfect-woocommerce-brands/main.php";s:11:"new_version";s:5:"1.7.7";s:3:"url";s:57:"https://wordpress.org/plugins/perfect-woocommerce-brands/";s:7:"package";s:75:"https://downloads.wordpress.org/plugin/perfect-woocommerce-brands.1.7.7.zip";s:5:"icons";a:1:{s:2:"1x";s:79:"https://ps.w.org/perfect-woocommerce-brands/assets/icon-128x128.png?rev=1838232";}s:7:"banners";a:1:{s:2:"1x";s:81:"https://ps.w.org/perfect-woocommerce-brands/assets/banner-772x250.png?rev=2029384";}s:11:"banners_rtl";a:0:{}}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/woocommerce";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"3.8.1";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.3.8.1.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035";s:2:"1x";s:64:"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035";}s:7:"banners";a:2:{s:2:"2x";s:67:"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035";s:2:"1x";s:66:"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035";}s:11:"banners_rtl";a:0:{}}s:45:"woocommerce-services/woocommerce-services.php";O:8:"stdClass":9:{s:2:"id";s:34:"w.org/plugins/woocommerce-services";s:4:"slug";s:20:"woocommerce-services";s:6:"plugin";s:45:"woocommerce-services/woocommerce-services.php";s:11:"new_version";s:6:"1.22.2";s:3:"url";s:51:"https://wordpress.org/plugins/woocommerce-services/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/woocommerce-services.1.22.2.zip";s:5:"icons";a:2:{s:2:"2x";s:73:"https://ps.w.org/woocommerce-services/assets/icon-256x256.png?rev=1910075";s:2:"1x";s:73:"https://ps.w.org/woocommerce-services/assets/icon-128x128.png?rev=1910075";}s:7:"banners";a:2:{s:2:"2x";s:76:"https://ps.w.org/woocommerce-services/assets/banner-1544x500.png?rev=1962920";s:2:"1x";s:75:"https://ps.w.org/woocommerce-services/assets/banner-772x250.png?rev=1962920";}s:11:"banners_rtl";a:0:{}}s:57:"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php";O:8:"stdClass":9:{s:2:"id";s:40:"w.org/plugins/woocommerce-gateway-stripe";s:4:"slug";s:26:"woocommerce-gateway-stripe";s:6:"plugin";s:57:"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php";s:11:"new_version";s:5:"4.3.1";s:3:"url";s:57:"https://wordpress.org/plugins/woocommerce-gateway-stripe/";s:7:"package";s:75:"https://downloads.wordpress.org/plugin/woocommerce-gateway-stripe.4.3.1.zip";s:5:"icons";a:2:{s:2:"2x";s:79:"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-256x256.png?rev=1917495";s:2:"1x";s:79:"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-128x128.png?rev=1917495";}s:7:"banners";a:2:{s:2:"2x";s:82:"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-1544x500.png?rev=1917495";s:2:"1x";s:81:"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-772x250.png?rev=1917495";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(484, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.1.6";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1576839137;s:7:"version";s:5:"5.1.6";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(497, '_transient_product-transient-version', '1576841268', 'yes'),
(530, '_transient_timeout_wc_term_counts', '1579594465', 'no'),
(531, '_transient_wc_term_counts', 'a:11:{i:25;s:1:"5";i:26;s:1:"5";i:27;s:1:"3";i:28;s:1:"3";i:29;s:1:"6";i:32;s:1:"1";i:30;s:1:"3";i:38;s:1:"1";i:34;s:1:"1";i:48;s:1:"1";i:49;s:1:"1";}', 'no'),
(566, '_transient_timeout_external_ip_address_::1', '1578129552', 'no'),
(567, '_transient_external_ip_address_::1', '178.133.15.121', 'no'),
(580, '_transient_timeout_external_ip_address_127.0.0.1', '1578129561', 'no'),
(581, '_transient_external_ip_address_127.0.0.1', '178.133.15.121', 'no'),
(604, '_site_transient_timeout_browser_54ce89ca7237487f0b8c3586d2bf77de', '1578130854', 'no'),
(605, '_site_transient_browser_54ce89ca7237487f0b8c3586d2bf77de', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"78.0.3904.108";s:8:"platform";s:5:"Linux";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(606, '_site_transient_timeout_php_check_e63c19ade47f93021c07f04976ed603c', '1578130855', 'no'),
(607, '_site_transient_php_check_e63c19ade47f93021c07f04976ed603c', 'a:5:{s:19:"recommended_version";s:3:"7.3";s:15:"minimum_version";s:6:"5.6.20";s:12:"is_supported";b:0;s:9:"is_secure";b:1;s:13:"is_acceptable";b:1;}', 'no'),
(608, '_transient_timeout_wc_low_stock_count', '1580118055', 'no'),
(609, '_transient_wc_low_stock_count', '0', 'no'),
(610, '_transient_timeout_wc_outofstock_count', '1580118055', 'no'),
(611, '_transient_wc_outofstock_count', '0', 'no'),
(633, '_transient_orders-transient-version', '1577526362', 'yes'),
(637, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:14:"total_comments";i:1;s:3:"all";i:1;s:8:"approved";s:1:"1";s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(638, '_transient_as_comment_count', 'O:8:"stdClass":7:{s:8:"approved";s:1:"1";s:14:"total_comments";i:1;s:3:"all";i:1;s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(645, 'woocommerce_gateway_stripe_retention', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:4:"days";}', 'no'),
(656, '_transient_timeout_jetpack_idc_allowed', '1578058631', 'no'),
(657, '_transient_jetpack_idc_allowed', '1', 'no'),
(660, '_transient_timeout__woocommerce_helper_subscriptions', '1578121308', 'no'),
(661, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(662, '_site_transient_timeout_theme_roots', '1578122208', 'no'),
(663, '_site_transient_theme_roots', 'a:5:{s:7:"barista";s:7:"/themes";s:14:"twentynineteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";s:12:"twentytwenty";s:7:"/themes";}', 'no'),
(664, '_transient_timeout__woocommerce_helper_updates', '1578163608', 'no'),
(665, '_transient__woocommerce_helper_updates', 'a:4:{s:4:"hash";s:32:"d751713988987e9331980363e24189ce";s:7:"updated";i:1578120408;s:8:"products";a:0:{}s:6:"errors";a:1:{i:0;s:10:"http-error";}}', 'no'),
(666, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1578120411;s:7:"checked";a:5:{s:7:"barista";s:5:"1.0.0";s:14:"twentynineteen";s:3:"1.4";s:15:"twentyseventeen";s:3:"2.2";s:13:"twentysixteen";s:3:"2.0";s:12:"twentytwenty";s:3:"1.1";}s:8:"response";a:1:{s:7:"barista";a:6:{s:5:"theme";s:7:"barista";s:11:"new_version";s:3:"2.6";s:3:"url";s:37:"https://wordpress.org/themes/barista/";s:7:"package";s:53:"https://downloads.wordpress.org/theme/barista.2.6.zip";s:8:"requires";b:0;s:12:"requires_php";b:0;}}s:12:"translations";a:0:{}}', 'no'),
(668, '_transient_timeout_wc_related_336', '1578206826', 'no'),
(669, '_transient_wc_related_336', 'a:1:{s:51:"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=336";a:4:{i:0;s:3:"335";i:1;s:3:"338";i:2;s:3:"340";i:3;s:3:"344";}}', 'no'),
(670, '_transient_timeout_wc_related_345', '1578206834', 'no'),
(671, '_transient_wc_related_345', 'a:1:{s:51:"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=345";a:7:{i:0;s:3:"341";i:1;s:3:"343";i:2;s:3:"337";i:3;s:3:"344";i:4;s:3:"335";i:5;s:3:"338";i:6;s:3:"342";}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', 'woocommerce-placeholder.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:1200;s:4:"file";s:27:"woocommerce-placeholder.png";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:35:"woocommerce-placeholder-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:37:"woocommerce-placeholder-1024x1024.png";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:35:"woocommerce-placeholder-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:35:"woocommerce-placeholder-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(5, 11, '_edit_lock', '1576838148:1'),
(6, 11, '_wp_page_template', 'front-page.php'),
(7, 13, '_edit_lock', '1576835969:1'),
(8, 13, '_wp_page_template', 'contact.php'),
(9, 15, '_edit_last', '1'),
(10, 15, '_edit_lock', '1576837918:1'),
(11, 21, '_wp_attached_file', '2019/12/free-shipping-1.png'),
(12, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:64;s:6:"height";i:64;s:4:"file";s:27:"2019/12/free-shipping-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(13, 22, '_wp_attached_file', '2019/12/brand8-300x300-1.png'),
(14, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:28:"2019/12/brand8-300x300-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"brand8-300x300-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand8-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand8-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(15, 23, '_wp_attached_file', '2019/12/brand8-250x250-1.png'),
(16, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:28:"2019/12/brand8-250x250-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"brand8-250x250-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand8-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand8-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(17, 24, '_wp_attached_file', '2019/12/brand8-200x200-1.png'),
(18, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:28:"2019/12/brand8-200x200-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"brand8-200x200-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand8-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand8-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(19, 25, '_wp_attached_file', '2019/12/brand8-150x150-1.png'),
(20, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:28:"2019/12/brand8-150x150-1.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand8-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand8-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(21, 26, '_wp_attached_file', '2019/12/brand8-100x100-1.png'),
(22, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:28:"2019/12/brand8-100x100-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(23, 27, '_wp_attached_file', '2019/12/brand8-1.png'),
(24, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:477;s:6:"height";i:477;s:4:"file";s:20:"2019/12/brand8-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:20:"brand8-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"brand8-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"brand8-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"brand8-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"brand8-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"brand8-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(25, 28, '_wp_attached_file', '2019/12/brand7-300x300-1.png'),
(26, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:28:"2019/12/brand7-300x300-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"brand7-300x300-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand7-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand7-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(27, 29, '_wp_attached_file', '2019/12/brand7-250x250-1.png'),
(28, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:28:"2019/12/brand7-250x250-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"brand7-250x250-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand7-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand7-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(29, 30, '_wp_attached_file', '2019/12/brand7-200x200-1.png'),
(30, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:28:"2019/12/brand7-200x200-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"brand7-200x200-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand7-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand7-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(31, 31, '_wp_attached_file', '2019/12/brand7-150x150-1.png'),
(32, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:28:"2019/12/brand7-150x150-1.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand7-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand7-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(33, 32, '_wp_attached_file', '2019/12/brand7-100x100-1.png'),
(34, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:28:"2019/12/brand7-100x100-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(35, 33, '_wp_attached_file', '2019/12/brand7-1.png'),
(36, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:477;s:6:"height";i:477;s:4:"file";s:20:"2019/12/brand7-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:20:"brand7-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"brand7-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"brand7-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"brand7-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"brand7-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"brand7-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(37, 34, '_wp_attached_file', '2019/12/brand6-300x300-1.png'),
(38, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:28:"2019/12/brand6-300x300-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"brand6-300x300-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand6-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand6-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(39, 35, '_wp_attached_file', '2019/12/brand6-250x250-1.png'),
(40, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:28:"2019/12/brand6-250x250-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"brand6-250x250-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand6-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand6-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(41, 36, '_wp_attached_file', '2019/12/brand6-200x200-1.png'),
(42, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:28:"2019/12/brand6-200x200-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"brand6-200x200-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand6-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand6-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(43, 37, '_wp_attached_file', '2019/12/brand6-150x150-1.png'),
(44, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:28:"2019/12/brand6-150x150-1.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand6-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand6-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(45, 38, '_wp_attached_file', '2019/12/brand6-100x100-1.png'),
(46, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:28:"2019/12/brand6-100x100-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(47, 39, '_wp_attached_file', '2019/12/brand6-1.png'),
(48, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:477;s:6:"height";i:477;s:4:"file";s:20:"2019/12/brand6-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:20:"brand6-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"brand6-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"brand6-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"brand6-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"brand6-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"brand6-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(49, 40, '_wp_attached_file', '2019/12/brand5-300x300-1.png'),
(50, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:28:"2019/12/brand5-300x300-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"brand5-300x300-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand5-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand5-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(51, 41, '_wp_attached_file', '2019/12/brand5-250x250-1.png'),
(52, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:28:"2019/12/brand5-250x250-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"brand5-250x250-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand5-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand5-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(53, 42, '_wp_attached_file', '2019/12/brand5-200x200-1.png'),
(54, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:28:"2019/12/brand5-200x200-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"brand5-200x200-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand5-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand5-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(55, 43, '_wp_attached_file', '2019/12/brand5-150x150-1.png'),
(56, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:28:"2019/12/brand5-150x150-1.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand5-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand5-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(57, 44, '_wp_attached_file', '2019/12/brand5-100x100-1.png'),
(58, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:28:"2019/12/brand5-100x100-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(59, 45, '_wp_attached_file', '2019/12/brand5-1.png'),
(60, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:477;s:6:"height";i:477;s:4:"file";s:20:"2019/12/brand5-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:20:"brand5-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"brand5-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"brand5-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"brand5-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"brand5-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"brand5-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(61, 46, '_wp_attached_file', '2019/12/brand4-300x300-1.png'),
(62, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:28:"2019/12/brand4-300x300-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"brand4-300x300-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand4-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand4-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(63, 47, '_wp_attached_file', '2019/12/brand4-250x250-1.png'),
(64, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:28:"2019/12/brand4-250x250-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"brand4-250x250-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand4-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand4-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(65, 48, '_wp_attached_file', '2019/12/brand4-200x200-1.png'),
(66, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:28:"2019/12/brand4-200x200-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"brand4-200x200-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand4-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand4-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(67, 49, '_wp_attached_file', '2019/12/brand4-150x150-1.png'),
(68, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:28:"2019/12/brand4-150x150-1.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand4-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand4-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(69, 50, '_wp_attached_file', '2019/12/brand4-100x100-1.png'),
(70, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:28:"2019/12/brand4-100x100-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(71, 51, '_wp_attached_file', '2019/12/brand4-1.png'),
(72, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:20:"2019/12/brand4-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:20:"brand4-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"brand4-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"brand4-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"brand4-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"brand4-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"brand4-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(73, 52, '_wp_attached_file', '2019/12/brand3-300x300-1.png'),
(74, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:28:"2019/12/brand3-300x300-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"brand3-300x300-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand3-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand3-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(75, 53, '_wp_attached_file', '2019/12/brand3-250x250-1.png'),
(76, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:28:"2019/12/brand3-250x250-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"brand3-250x250-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand3-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand3-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(77, 54, '_wp_attached_file', '2019/12/brand3-200x200-1.png'),
(78, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:28:"2019/12/brand3-200x200-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"brand3-200x200-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand3-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand3-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(79, 55, '_wp_attached_file', '2019/12/brand3-150x150-1.png'),
(80, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:28:"2019/12/brand3-150x150-1.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand3-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand3-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(81, 56, '_wp_attached_file', '2019/12/brand3-100x100-1.png'),
(82, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:28:"2019/12/brand3-100x100-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(83, 57, '_wp_attached_file', '2019/12/brand3-1.png'),
(84, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:477;s:6:"height";i:477;s:4:"file";s:20:"2019/12/brand3-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:20:"brand3-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"brand3-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"brand3-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"brand3-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"brand3-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"brand3-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(85, 58, '_wp_attached_file', '2019/12/brand2-300x300-1.png'),
(86, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:28:"2019/12/brand2-300x300-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"brand2-300x300-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand2-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand2-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(87, 59, '_wp_attached_file', '2019/12/brand2-250x250-1.png'),
(88, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:28:"2019/12/brand2-250x250-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"brand2-250x250-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand2-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand2-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(89, 60, '_wp_attached_file', '2019/12/brand2-200x200-1.png'),
(90, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:28:"2019/12/brand2-200x200-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"brand2-200x200-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand2-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand2-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(91, 61, '_wp_attached_file', '2019/12/brand2-150x150-1.png'),
(92, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:28:"2019/12/brand2-150x150-1.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand2-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand2-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(93, 62, '_wp_attached_file', '2019/12/brand2-100x100-1.png'),
(94, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:28:"2019/12/brand2-100x100-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(95, 63, '_wp_attached_file', '2019/12/brand2-1.png'),
(96, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:477;s:6:"height";i:477;s:4:"file";s:20:"2019/12/brand2-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:20:"brand2-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"brand2-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"brand2-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"brand2-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"brand2-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"brand2-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(97, 64, '_wp_attached_file', '2019/12/brand1-300x300-1.png'),
(98, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:28:"2019/12/brand1-300x300-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"brand1-300x300-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand1-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand1-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(99, 65, '_wp_attached_file', '2019/12/brand1-250x250-1.png'),
(100, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:28:"2019/12/brand1-250x250-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"brand1-250x250-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand1-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand1-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(101, 66, '_wp_attached_file', '2019/12/brand1-200x200-1.png'),
(102, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:28:"2019/12/brand1-200x200-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"brand1-200x200-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand1-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand1-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(103, 67, '_wp_attached_file', '2019/12/brand1-150x150-1.png'),
(104, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:28:"2019/12/brand1-150x150-1.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"brand1-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"brand1-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(105, 68, '_wp_attached_file', '2019/12/brand1-100x100-1.png'),
(106, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:28:"2019/12/brand1-100x100-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(107, 69, '_wp_attached_file', '2019/12/brand1-1-300x300-1.png'),
(108, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:30:"2019/12/brand1-1-300x300-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"brand1-1-300x300-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:30:"brand1-1-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"brand1-1-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(109, 70, '_wp_attached_file', '2019/12/brand1-1-250x250-1.png'),
(110, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:30:"2019/12/brand1-1-250x250-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"brand1-1-250x250-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:30:"brand1-1-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"brand1-1-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(111, 71, '_wp_attached_file', '2019/12/brand1-1-200x200-1.png'),
(112, 71, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:30:"2019/12/brand1-1-200x200-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"brand1-1-200x200-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:30:"brand1-1-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"brand1-1-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(113, 72, '_wp_attached_file', '2019/12/brand1-1-150x150-1.png'),
(114, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:30:"2019/12/brand1-1-150x150-1.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:30:"brand1-1-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"brand1-1-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(115, 73, '_wp_attached_file', '2019/12/brand1-1-100x100-1.png'),
(116, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:30:"2019/12/brand1-1-100x100-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(117, 74, '_wp_attached_file', '2019/12/brand1-1-1.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(118, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:477;s:6:"height";i:477;s:4:"file";s:22:"2019/12/brand1-1-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:22:"brand1-1-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:22:"brand1-1-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:22:"brand1-1-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:22:"brand1-1-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"brand1-1-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"brand1-1-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(119, 75, '_wp_attached_file', '2019/12/brand1-2.png'),
(120, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:477;s:6:"height";i:477;s:4:"file";s:20:"2019/12/brand1-2.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:20:"brand1-2-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"brand1-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"brand1-2-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"brand1-2-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"brand1-2-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"brand1-2-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(121, 76, '_wp_attached_file', '2019/12/bl5-1024x683-1.jpeg'),
(122, 76, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:683;s:4:"file";s:27:"2019/12/bl5-1024x683-1.jpeg";s:5:"sizes";a:9:{s:6:"medium";a:4:{s:4:"file";s:27:"bl5-1024x683-1-300x200.jpeg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:27:"bl5-1024x683-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"bl5-1024x683-1-768x512.jpeg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:27:"bl5-1024x683-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:27:"bl5-1024x683-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:27:"bl5-1024x683-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:27:"bl5-1024x683-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:27:"bl5-1024x683-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"bl5-1024x683-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(123, 77, '_wp_attached_file', '2019/12/bl5-768x512-1.jpeg'),
(124, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:768;s:6:"height";i:512;s:4:"file";s:26:"2019/12/bl5-768x512-1.jpeg";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:26:"bl5-768x512-1-300x200.jpeg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl5-768x512-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:26:"bl5-768x512-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:26:"bl5-768x512-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl5-768x512-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"bl5-768x512-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"bl5-768x512-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl5-768x512-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(125, 78, '_wp_attached_file', '2019/12/bl5-600x400-1.jpeg'),
(126, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:400;s:4:"file";s:26:"2019/12/bl5-600x400-1.jpeg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:26:"bl5-600x400-1-300x200.jpeg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl5-600x400-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:26:"bl5-600x400-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl5-600x400-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"bl5-600x400-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl5-600x400-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(127, 79, '_wp_attached_file', '2019/12/bl5-500x333-1.jpeg'),
(128, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:333;s:4:"file";s:26:"2019/12/bl5-500x333-1.jpeg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:26:"bl5-500x333-1-300x200.jpeg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl5-500x333-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:26:"bl5-500x333-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl5-500x333-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"bl5-500x333-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl5-500x333-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(129, 80, '_wp_attached_file', '2019/12/bl5-300x300-1.jpeg'),
(130, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:26:"2019/12/bl5-300x300-1.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl5-300x300-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl5-300x300-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl5-300x300-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(131, 81, '_wp_attached_file', '2019/12/bl5-300x200-1.jpeg'),
(132, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:200;s:4:"file";s:26:"2019/12/bl5-300x200-1.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl5-300x200-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl5-300x200-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl5-300x200-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(133, 82, '_wp_attached_file', '2019/12/bl5-250x250-1.jpeg'),
(134, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:26:"2019/12/bl5-250x250-1.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl5-250x250-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl5-250x250-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl5-250x250-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(135, 83, '_wp_attached_file', '2019/12/bl5-200x200-1.jpeg'),
(136, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:26:"2019/12/bl5-200x200-1.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl5-200x200-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl5-200x200-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl5-200x200-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(137, 84, '_wp_attached_file', '2019/12/bl5-150x150-1.jpeg'),
(138, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:26:"2019/12/bl5-150x150-1.jpeg";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl5-150x150-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl5-150x150-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(139, 85, '_wp_attached_file', '2019/12/bl5-100x100-1.jpeg'),
(140, 85, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:26:"2019/12/bl5-100x100-1.jpeg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(141, 86, '_wp_attached_file', '2019/12/bl5-1.jpeg'),
(142, 86, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1350;s:6:"height";i:900;s:4:"file";s:18:"2019/12/bl5-1.jpeg";s:5:"sizes";a:10:{s:6:"medium";a:4:{s:4:"file";s:18:"bl5-1-300x200.jpeg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"bl5-1-1024x683.jpeg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"bl5-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"bl5-1-768x512.jpeg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:18:"bl5-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:18:"bl5-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:18:"bl5-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"bl5-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"bl5-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"bl5-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(143, 87, '_wp_attached_file', '2019/12/bl4-600x900-1.jpeg'),
(144, 87, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:900;s:4:"file";s:26:"2019/12/bl4-600x900-1.jpeg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:26:"bl4-600x900-1-200x300.jpeg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl4-600x900-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:26:"bl4-600x900-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl4-600x900-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"bl4-600x900-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl4-600x900-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(145, 88, '_wp_attached_file', '2019/12/bl4-500x750-1.jpeg'),
(146, 88, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:750;s:4:"file";s:26:"2019/12/bl4-500x750-1.jpeg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:26:"bl4-500x750-1-200x300.jpeg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl4-500x750-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:26:"bl4-500x750-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl4-500x750-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"bl4-500x750-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl4-500x750-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(147, 89, '_wp_attached_file', '2019/12/bl4-300x300-1.jpeg'),
(148, 89, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:26:"2019/12/bl4-300x300-1.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl4-300x300-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl4-300x300-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl4-300x300-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(149, 90, '_wp_attached_file', '2019/12/bl4-250x250-1.jpeg'),
(150, 90, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:26:"2019/12/bl4-250x250-1.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl4-250x250-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl4-250x250-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl4-250x250-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(151, 91, '_wp_attached_file', '2019/12/bl4-200x300-1.jpeg'),
(152, 91, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:300;s:4:"file";s:26:"2019/12/bl4-200x300-1.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl4-200x300-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl4-200x300-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl4-200x300-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(153, 92, '_wp_attached_file', '2019/12/bl4-200x200-1.jpeg'),
(154, 92, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:26:"2019/12/bl4-200x200-1.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl4-200x200-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl4-200x200-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl4-200x200-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(155, 93, '_wp_attached_file', '2019/12/bl4-150x150-1.jpeg'),
(156, 93, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:26:"2019/12/bl4-150x150-1.jpeg";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl4-150x150-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl4-150x150-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(157, 94, '_wp_attached_file', '2019/12/bl4-100x100-1.jpeg'),
(158, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:26:"2019/12/bl4-100x100-1.jpeg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(159, 95, '_wp_attached_file', '2019/12/bl4-1.jpeg'),
(160, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:634;s:6:"height";i:951;s:4:"file";s:18:"2019/12/bl4-1.jpeg";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:18:"bl4-1-200x300.jpeg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"bl4-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:18:"bl4-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:18:"bl4-1-600x900.jpeg";s:5:"width";i:600;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:18:"bl4-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"bl4-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"bl4-1-600x900.jpeg";s:5:"width";i:600;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"bl4-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(161, 96, '_wp_attached_file', '2019/12/bl3-300x300-1.jpeg'),
(162, 96, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:26:"2019/12/bl3-300x300-1.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl3-300x300-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl3-300x300-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl3-300x300-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(163, 97, '_wp_attached_file', '2019/12/bl3-250x250-1.jpeg'),
(164, 97, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:26:"2019/12/bl3-250x250-1.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl3-250x250-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl3-250x250-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl3-250x250-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(165, 98, '_wp_attached_file', '2019/12/bl3-200x300-1.jpeg'),
(166, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:300;s:4:"file";s:26:"2019/12/bl3-200x300-1.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl3-200x300-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl3-200x300-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl3-200x300-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(167, 99, '_wp_attached_file', '2019/12/bl3-200x200-1.jpeg'),
(168, 99, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:26:"2019/12/bl3-200x200-1.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl3-200x200-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl3-200x200-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl3-200x200-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(169, 100, '_wp_attached_file', '2019/12/bl3-150x150-1.jpeg'),
(170, 100, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:26:"2019/12/bl3-150x150-1.jpeg";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl3-150x150-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl3-150x150-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(171, 101, '_wp_attached_file', '2019/12/bl3-100x100-1.jpeg'),
(172, 101, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:26:"2019/12/bl3-100x100-1.jpeg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(173, 102, '_wp_attached_file', '2019/12/bl3-1.jpeg'),
(174, 102, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:750;s:4:"file";s:18:"2019/12/bl3-1.jpeg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:18:"bl3-1-200x300.jpeg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"bl3-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:18:"bl3-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:18:"bl3-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"bl3-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"bl3-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(175, 103, '_wp_attached_file', '2019/12/bl2-300x300-1.jpeg'),
(176, 103, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:26:"2019/12/bl2-300x300-1.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl2-300x300-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl2-300x300-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl2-300x300-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(177, 104, '_wp_attached_file', '2019/12/bl2-250x250-1.jpeg'),
(178, 104, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:26:"2019/12/bl2-250x250-1.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl2-250x250-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl2-250x250-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl2-250x250-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(179, 105, '_wp_attached_file', '2019/12/bl2-214x300-1.jpeg'),
(180, 105, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:214;s:6:"height";i:300;s:4:"file";s:26:"2019/12/bl2-214x300-1.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl2-214x300-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl2-214x300-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl2-214x300-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(181, 106, '_wp_attached_file', '2019/12/bl2-200x200-1.jpeg'),
(182, 106, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:26:"2019/12/bl2-200x200-1.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl2-200x200-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl2-200x200-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl2-200x200-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(183, 107, '_wp_attached_file', '2019/12/bl2-150x150-1.jpeg'),
(184, 107, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:26:"2019/12/bl2-150x150-1.jpeg";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl2-150x150-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl2-150x150-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(185, 108, '_wp_attached_file', '2019/12/bl2-100x100-1.jpeg'),
(186, 108, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:26:"2019/12/bl2-100x100-1.jpeg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(187, 109, '_wp_attached_file', '2019/12/bl2-1.jpeg'),
(188, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:701;s:4:"file";s:18:"2019/12/bl2-1.jpeg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:18:"bl2-1-214x300.jpeg";s:5:"width";i:214;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"bl2-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:18:"bl2-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:18:"bl2-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"bl2-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"bl2-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(189, 110, '_wp_attached_file', '2019/12/bl1-1024x683-1.jpeg'),
(190, 110, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:683;s:4:"file";s:27:"2019/12/bl1-1024x683-1.jpeg";s:5:"sizes";a:9:{s:6:"medium";a:4:{s:4:"file";s:27:"bl1-1024x683-1-300x200.jpeg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:27:"bl1-1024x683-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"bl1-1024x683-1-768x512.jpeg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:27:"bl1-1024x683-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:27:"bl1-1024x683-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:27:"bl1-1024x683-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:27:"bl1-1024x683-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:27:"bl1-1024x683-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"bl1-1024x683-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(191, 111, '_wp_attached_file', '2019/12/bl1-768x512-1.jpeg'),
(192, 111, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:768;s:6:"height";i:512;s:4:"file";s:26:"2019/12/bl1-768x512-1.jpeg";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:26:"bl1-768x512-1-300x200.jpeg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl1-768x512-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:26:"bl1-768x512-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:26:"bl1-768x512-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl1-768x512-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"bl1-768x512-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"bl1-768x512-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl1-768x512-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(193, 112, '_wp_attached_file', '2019/12/bl1-600x400-1.jpeg'),
(194, 112, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:400;s:4:"file";s:26:"2019/12/bl1-600x400-1.jpeg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:26:"bl1-600x400-1-300x200.jpeg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl1-600x400-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:26:"bl1-600x400-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl1-600x400-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"bl1-600x400-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl1-600x400-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(195, 113, '_wp_attached_file', '2019/12/bl1-500x333-1.jpeg'),
(196, 113, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:333;s:4:"file";s:26:"2019/12/bl1-500x333-1.jpeg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:26:"bl1-500x333-1-300x200.jpeg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl1-500x333-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:26:"bl1-500x333-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl1-500x333-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"bl1-500x333-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl1-500x333-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(197, 114, '_wp_attached_file', '2019/12/bl1-300x300-1.jpeg'),
(198, 114, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:26:"2019/12/bl1-300x300-1.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl1-300x300-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl1-300x300-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl1-300x300-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(199, 115, '_wp_attached_file', '2019/12/bl1-300x200-1.jpeg'),
(200, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:200;s:4:"file";s:26:"2019/12/bl1-300x200-1.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl1-300x200-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl1-300x200-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl1-300x200-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(201, 116, '_wp_attached_file', '2019/12/bl1-250x250-1.jpeg'),
(202, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:26:"2019/12/bl1-250x250-1.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl1-250x250-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl1-250x250-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl1-250x250-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(203, 117, '_wp_attached_file', '2019/12/bl1-200x200-1.jpeg'),
(204, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:26:"2019/12/bl1-200x200-1.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"bl1-200x200-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl1-200x200-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl1-200x200-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(205, 118, '_wp_attached_file', '2019/12/bl1-150x150-1.jpeg'),
(206, 118, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:26:"2019/12/bl1-150x150-1.jpeg";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"bl1-150x150-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"bl1-150x150-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(207, 119, '_wp_attached_file', '2019/12/bl1-100x100-1.jpeg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(208, 119, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:26:"2019/12/bl1-100x100-1.jpeg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(209, 120, '_wp_attached_file', '2019/12/bl1-1.jpeg'),
(210, 120, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1350;s:6:"height";i:900;s:4:"file";s:18:"2019/12/bl1-1.jpeg";s:5:"sizes";a:10:{s:6:"medium";a:4:{s:4:"file";s:18:"bl1-1-300x200.jpeg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"bl1-1-1024x683.jpeg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"bl1-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"bl1-1-768x512.jpeg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:18:"bl1-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:18:"bl1-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:18:"bl1-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"bl1-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"bl1-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"bl1-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(211, 121, '_wp_attached_file', '2019/12/10-400x392-1.png'),
(212, 121, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:392;s:4:"file";s:24:"2019/12/10-400x392-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:24:"10-400x392-1-300x294.png";s:5:"width";i:300;s:6:"height";i:294;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"10-400x392-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:24:"10-400x392-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:24:"10-400x392-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:24:"10-400x392-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"10-400x392-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(213, 122, '_wp_attached_file', '2019/12/10-300x300-1.png'),
(214, 122, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:24:"2019/12/10-300x300-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"10-300x300-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:24:"10-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"10-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(215, 123, '_wp_attached_file', '2019/12/10-300x255-1.png'),
(216, 123, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:255;s:4:"file";s:24:"2019/12/10-300x255-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"10-300x255-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:24:"10-300x255-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"10-300x255-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(217, 124, '_wp_attached_file', '2019/12/10-300x225-1.png'),
(218, 124, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:225;s:4:"file";s:24:"2019/12/10-300x225-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"10-300x225-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:24:"10-300x225-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"10-300x225-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(219, 125, '_wp_attached_file', '2019/12/10-300x150-1.png'),
(220, 125, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:150;s:4:"file";s:24:"2019/12/10-300x150-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"10-300x150-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:24:"10-300x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"10-300x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(221, 126, '_wp_attached_file', '2019/12/10-300x75-1.png'),
(222, 126, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:75;s:4:"file";s:23:"2019/12/10-300x75-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"10-300x75-1-150x75.png";s:5:"width";i:150;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:22:"10-300x75-1-100x75.png";s:5:"width";i:100;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"10-300x75-1-100x75.png";s:5:"width";i:100;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(223, 127, '_wp_attached_file', '2019/12/10-250x250-1.png'),
(224, 127, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:24:"2019/12/10-250x250-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"10-250x250-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:24:"10-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"10-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(225, 128, '_wp_attached_file', '2019/12/10-200x200-1.png'),
(226, 128, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:24:"2019/12/10-200x200-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"10-200x200-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:24:"10-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"10-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(227, 129, '_wp_attached_file', '2019/12/10-150x150-1.png'),
(228, 129, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:24:"2019/12/10-150x150-1.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:24:"10-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"10-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(229, 130, '_wp_attached_file', '2019/12/10-100x100-1.png'),
(230, 130, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:24:"2019/12/10-100x100-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(231, 131, '_wp_attached_file', '2019/12/10-25x25-1.png'),
(232, 131, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:25;s:6:"height";i:25;s:4:"file";s:22:"2019/12/10-25x25-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(233, 132, '_wp_attached_file', '2019/12/10-1.png'),
(234, 132, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:462;s:6:"height";i:392;s:4:"file";s:16:"2019/12/10-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:16:"10-1-300x255.png";s:5:"width";i:300;s:6:"height";i:255;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:16:"10-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:16:"10-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:16:"10-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"10-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"10-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(235, 133, '_wp_attached_file', '2019/12/9-400x392-1.png'),
(236, 133, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:392;s:4:"file";s:23:"2019/12/9-400x392-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:23:"9-400x392-1-300x294.png";s:5:"width";i:300;s:6:"height";i:294;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:23:"9-400x392-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:23:"9-400x392-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"9-400x392-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"9-400x392-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"9-400x392-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(237, 134, '_wp_attached_file', '2019/12/9-300x300-1.png'),
(238, 134, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:23:"2019/12/9-300x300-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"9-300x300-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"9-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"9-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(239, 135, '_wp_attached_file', '2019/12/9-300x255-1.png'),
(240, 135, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:255;s:4:"file";s:23:"2019/12/9-300x255-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"9-300x255-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"9-300x255-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"9-300x255-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(241, 136, '_wp_attached_file', '2019/12/9-300x225-1.png'),
(242, 136, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:225;s:4:"file";s:23:"2019/12/9-300x225-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"9-300x225-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"9-300x225-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"9-300x225-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(243, 137, '_wp_attached_file', '2019/12/9-300x150-1.png'),
(244, 137, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:150;s:4:"file";s:23:"2019/12/9-300x150-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"9-300x150-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"9-300x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"9-300x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(245, 138, '_wp_attached_file', '2019/12/9-300x75-1.png'),
(246, 138, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:75;s:4:"file";s:22:"2019/12/9-300x75-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"9-300x75-1-150x75.png";s:5:"width";i:150;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:21:"9-300x75-1-100x75.png";s:5:"width";i:100;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"9-300x75-1-100x75.png";s:5:"width";i:100;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(247, 139, '_wp_attached_file', '2019/12/9-250x250-1.png'),
(248, 139, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:23:"2019/12/9-250x250-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"9-250x250-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"9-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"9-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(249, 140, '_wp_attached_file', '2019/12/9-200x200-1.png'),
(250, 140, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:23:"2019/12/9-200x200-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"9-200x200-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"9-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"9-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(251, 141, '_wp_attached_file', '2019/12/9-150x150-1.png'),
(252, 141, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:23:"2019/12/9-150x150-1.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"9-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"9-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(253, 142, '_wp_attached_file', '2019/12/9-100x100-1.png'),
(254, 142, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:23:"2019/12/9-100x100-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(255, 143, '_wp_attached_file', '2019/12/9-25x25-1.png'),
(256, 143, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:25;s:6:"height";i:25;s:4:"file";s:21:"2019/12/9-25x25-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(257, 144, '_wp_attached_file', '2019/12/9-1.png'),
(258, 144, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:462;s:6:"height";i:392;s:4:"file";s:15:"2019/12/9-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:15:"9-1-300x255.png";s:5:"width";i:300;s:6:"height";i:255;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:15:"9-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:15:"9-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:15:"9-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"9-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"9-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(259, 145, '_wp_attached_file', '2019/12/8-400x392-1.png'),
(260, 145, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:392;s:4:"file";s:23:"2019/12/8-400x392-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:23:"8-400x392-1-300x294.png";s:5:"width";i:300;s:6:"height";i:294;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:23:"8-400x392-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:23:"8-400x392-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"8-400x392-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"8-400x392-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"8-400x392-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(261, 146, '_wp_attached_file', '2019/12/8-300x300-1.png'),
(262, 146, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:23:"2019/12/8-300x300-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"8-300x300-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"8-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"8-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(263, 147, '_wp_attached_file', '2019/12/8-300x255-1.png'),
(264, 147, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:255;s:4:"file";s:23:"2019/12/8-300x255-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"8-300x255-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"8-300x255-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"8-300x255-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(265, 148, '_wp_attached_file', '2019/12/8-300x225-1.png'),
(266, 148, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:225;s:4:"file";s:23:"2019/12/8-300x225-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"8-300x225-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"8-300x225-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"8-300x225-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(267, 149, '_wp_attached_file', '2019/12/8-300x150-1.png'),
(268, 149, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:150;s:4:"file";s:23:"2019/12/8-300x150-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"8-300x150-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"8-300x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"8-300x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(269, 150, '_wp_attached_file', '2019/12/8-300x75-1.png'),
(270, 150, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:75;s:4:"file";s:22:"2019/12/8-300x75-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"8-300x75-1-150x75.png";s:5:"width";i:150;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:21:"8-300x75-1-100x75.png";s:5:"width";i:100;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"8-300x75-1-100x75.png";s:5:"width";i:100;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(271, 151, '_wp_attached_file', '2019/12/8-250x250-1.png'),
(272, 151, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:23:"2019/12/8-250x250-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"8-250x250-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"8-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"8-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(273, 152, '_wp_attached_file', '2019/12/8-200x200-1.png'),
(274, 152, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:23:"2019/12/8-200x200-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"8-200x200-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"8-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"8-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(275, 153, '_wp_attached_file', '2019/12/8-150x150-1.png'),
(276, 153, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:23:"2019/12/8-150x150-1.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"8-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"8-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(277, 154, '_wp_attached_file', '2019/12/8-100x100-1.png'),
(278, 154, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:23:"2019/12/8-100x100-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(279, 155, '_wp_attached_file', '2019/12/8-25x25-1.png'),
(280, 155, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:25;s:6:"height";i:25;s:4:"file";s:21:"2019/12/8-25x25-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(281, 156, '_wp_attached_file', '2019/12/8-1.png'),
(282, 156, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:462;s:6:"height";i:392;s:4:"file";s:15:"2019/12/8-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:15:"8-1-300x255.png";s:5:"width";i:300;s:6:"height";i:255;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:15:"8-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:15:"8-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:15:"8-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"8-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"8-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(283, 157, '_wp_attached_file', '2019/12/7-400x392-1.png'),
(284, 157, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:392;s:4:"file";s:23:"2019/12/7-400x392-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:23:"7-400x392-1-300x294.png";s:5:"width";i:300;s:6:"height";i:294;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:23:"7-400x392-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:23:"7-400x392-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"7-400x392-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"7-400x392-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"7-400x392-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(285, 158, '_wp_attached_file', '2019/12/7-300x300-1.png'),
(286, 158, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:23:"2019/12/7-300x300-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"7-300x300-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"7-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"7-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(287, 159, '_wp_attached_file', '2019/12/7-300x255-1.png'),
(288, 159, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:255;s:4:"file";s:23:"2019/12/7-300x255-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"7-300x255-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"7-300x255-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"7-300x255-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(289, 160, '_wp_attached_file', '2019/12/7-300x225-1.png'),
(290, 160, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:225;s:4:"file";s:23:"2019/12/7-300x225-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"7-300x225-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"7-300x225-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"7-300x225-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(291, 161, '_wp_attached_file', '2019/12/7-300x150-1.png'),
(292, 161, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:150;s:4:"file";s:23:"2019/12/7-300x150-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"7-300x150-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"7-300x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"7-300x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(293, 162, '_wp_attached_file', '2019/12/7-300x75-1.png'),
(294, 162, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:75;s:4:"file";s:22:"2019/12/7-300x75-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"7-300x75-1-150x75.png";s:5:"width";i:150;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:21:"7-300x75-1-100x75.png";s:5:"width";i:100;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"7-300x75-1-100x75.png";s:5:"width";i:100;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(295, 163, '_wp_attached_file', '2019/12/7-250x250-1.png'),
(296, 163, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:23:"2019/12/7-250x250-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"7-250x250-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"7-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"7-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(297, 164, '_wp_attached_file', '2019/12/7-200x200-1.png'),
(298, 164, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:23:"2019/12/7-200x200-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"7-200x200-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"7-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"7-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(299, 165, '_wp_attached_file', '2019/12/7-150x150-1.png'),
(300, 165, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:23:"2019/12/7-150x150-1.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"7-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"7-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(301, 166, '_wp_attached_file', '2019/12/7-100x100-1.png'),
(302, 166, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:23:"2019/12/7-100x100-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(303, 167, '_wp_attached_file', '2019/12/7-25x25-1.png'),
(304, 167, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:25;s:6:"height";i:25;s:4:"file";s:21:"2019/12/7-25x25-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(305, 168, '_wp_attached_file', '2019/12/7-1.png'),
(306, 168, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:462;s:6:"height";i:392;s:4:"file";s:15:"2019/12/7-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:15:"7-1-300x255.png";s:5:"width";i:300;s:6:"height";i:255;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:15:"7-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:15:"7-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:15:"7-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"7-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"7-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(307, 169, '_wp_attached_file', '2019/12/6-400x392-1.png'),
(308, 169, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:392;s:4:"file";s:23:"2019/12/6-400x392-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:23:"6-400x392-1-300x294.png";s:5:"width";i:300;s:6:"height";i:294;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:23:"6-400x392-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:23:"6-400x392-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"6-400x392-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"6-400x392-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"6-400x392-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(309, 170, '_wp_attached_file', '2019/12/6-300x300-1.png'),
(310, 170, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:23:"2019/12/6-300x300-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"6-300x300-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"6-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"6-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(311, 171, '_wp_attached_file', '2019/12/6-300x255-1.png'),
(312, 171, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:255;s:4:"file";s:23:"2019/12/6-300x255-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"6-300x255-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"6-300x255-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"6-300x255-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(313, 172, '_wp_attached_file', '2019/12/6-300x225-1.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(314, 172, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:225;s:4:"file";s:23:"2019/12/6-300x225-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"6-300x225-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"6-300x225-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"6-300x225-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(315, 173, '_wp_attached_file', '2019/12/6-300x150-1.png'),
(316, 173, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:150;s:4:"file";s:23:"2019/12/6-300x150-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"6-300x150-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"6-300x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"6-300x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(317, 174, '_wp_attached_file', '2019/12/6-300x75-1.png'),
(318, 174, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:75;s:4:"file";s:22:"2019/12/6-300x75-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"6-300x75-1-150x75.png";s:5:"width";i:150;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:21:"6-300x75-1-100x75.png";s:5:"width";i:100;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"6-300x75-1-100x75.png";s:5:"width";i:100;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(319, 175, '_wp_attached_file', '2019/12/6-250x250-1.png'),
(320, 175, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:23:"2019/12/6-250x250-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"6-250x250-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"6-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"6-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(321, 176, '_wp_attached_file', '2019/12/6-200x200-1.png'),
(322, 176, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:23:"2019/12/6-200x200-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"6-200x200-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"6-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"6-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(323, 177, '_wp_attached_file', '2019/12/6-150x150-1.png'),
(324, 177, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:23:"2019/12/6-150x150-1.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"6-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"6-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(325, 178, '_wp_attached_file', '2019/12/6-100x100-1.png'),
(326, 178, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:23:"2019/12/6-100x100-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(327, 179, '_wp_attached_file', '2019/12/6-25x25-1.png'),
(328, 179, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:25;s:6:"height";i:25;s:4:"file";s:21:"2019/12/6-25x25-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(329, 180, '_wp_attached_file', '2019/12/6-1.png'),
(330, 180, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:462;s:6:"height";i:392;s:4:"file";s:15:"2019/12/6-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:15:"6-1-300x255.png";s:5:"width";i:300;s:6:"height";i:255;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:15:"6-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:15:"6-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:15:"6-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"6-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"6-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(331, 181, '_wp_attached_file', '2019/12/5-300x300-1.png'),
(332, 181, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:23:"2019/12/5-300x300-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"5-300x300-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"5-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"5-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(333, 182, '_wp_attached_file', '2019/12/5-300x225-1.png'),
(334, 182, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:225;s:4:"file";s:23:"2019/12/5-300x225-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"5-300x225-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"5-300x225-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"5-300x225-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(335, 183, '_wp_attached_file', '2019/12/5-300x150-1.png'),
(336, 183, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:150;s:4:"file";s:23:"2019/12/5-300x150-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"5-300x150-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"5-300x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"5-300x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(337, 184, '_wp_attached_file', '2019/12/5-300x75-1.png'),
(338, 184, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:75;s:4:"file";s:22:"2019/12/5-300x75-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"5-300x75-1-150x75.png";s:5:"width";i:150;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:21:"5-300x75-1-100x75.png";s:5:"width";i:100;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"5-300x75-1-100x75.png";s:5:"width";i:100;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(339, 185, '_wp_attached_file', '2019/12/5-250x250-1.png'),
(340, 185, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:23:"2019/12/5-250x250-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"5-250x250-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"5-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"5-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(341, 186, '_wp_attached_file', '2019/12/5-200x200-1.png'),
(342, 186, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:23:"2019/12/5-200x200-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"5-200x200-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"5-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"5-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(343, 187, '_wp_attached_file', '2019/12/5-150x150-1.png'),
(344, 187, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:23:"2019/12/5-150x150-1.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"5-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"5-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(345, 188, '_wp_attached_file', '2019/12/5-100x100-1.png'),
(346, 188, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:23:"2019/12/5-100x100-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(347, 189, '_wp_attached_file', '2019/12/5-1.png'),
(348, 189, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:458;s:6:"height";i:458;s:4:"file";s:15:"2019/12/5-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:15:"5-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:15:"5-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:15:"5-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:15:"5-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"5-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"5-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(349, 190, '_wp_attached_file', '2019/12/4-300x300-1.png'),
(350, 190, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:23:"2019/12/4-300x300-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"4-300x300-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"4-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"4-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(351, 191, '_wp_attached_file', '2019/12/4-300x225-1.png'),
(352, 191, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:225;s:4:"file";s:23:"2019/12/4-300x225-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"4-300x225-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"4-300x225-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"4-300x225-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(353, 192, '_wp_attached_file', '2019/12/4-300x150-1.png'),
(354, 192, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:150;s:4:"file";s:23:"2019/12/4-300x150-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"4-300x150-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"4-300x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"4-300x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(355, 193, '_wp_attached_file', '2019/12/4-300x75-1.png'),
(356, 193, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:75;s:4:"file";s:22:"2019/12/4-300x75-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"4-300x75-1-150x75.png";s:5:"width";i:150;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:21:"4-300x75-1-100x75.png";s:5:"width";i:100;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"4-300x75-1-100x75.png";s:5:"width";i:100;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(357, 194, '_wp_attached_file', '2019/12/4-250x250-1.png'),
(358, 194, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:23:"2019/12/4-250x250-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"4-250x250-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"4-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"4-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(359, 195, '_wp_attached_file', '2019/12/4-200x200-1.png'),
(360, 195, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:23:"2019/12/4-200x200-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"4-200x200-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"4-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"4-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(361, 196, '_wp_attached_file', '2019/12/4-150x150-1.png'),
(362, 196, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:23:"2019/12/4-150x150-1.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"4-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"4-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(363, 197, '_wp_attached_file', '2019/12/4-100x100-1.png'),
(364, 197, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:23:"2019/12/4-100x100-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(365, 198, '_wp_attached_file', '2019/12/4-1.png'),
(366, 198, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:458;s:6:"height";i:458;s:4:"file";s:15:"2019/12/4-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:15:"4-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:15:"4-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:15:"4-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:15:"4-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"4-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"4-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(367, 199, '_wp_attached_file', '2019/12/3-400x392-1.png'),
(368, 199, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:392;s:4:"file";s:23:"2019/12/3-400x392-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:23:"3-400x392-1-300x294.png";s:5:"width";i:300;s:6:"height";i:294;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:23:"3-400x392-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:23:"3-400x392-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"3-400x392-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"3-400x392-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"3-400x392-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(369, 200, '_wp_attached_file', '2019/12/3-300x300-1.png'),
(370, 200, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:23:"2019/12/3-300x300-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"3-300x300-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"3-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"3-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(371, 201, '_wp_attached_file', '2019/12/3-300x300-1.jpg'),
(372, 201, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:23:"2019/12/3-300x300-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"3-300x300-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"3-300x300-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"3-300x300-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(373, 202, '_wp_attached_file', '2019/12/3-300x255-1.png'),
(374, 202, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:255;s:4:"file";s:23:"2019/12/3-300x255-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"3-300x255-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"3-300x255-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"3-300x255-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(375, 203, '_wp_attached_file', '2019/12/3-300x255-1.jpg'),
(376, 203, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:255;s:4:"file";s:23:"2019/12/3-300x255-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"3-300x255-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"3-300x255-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"3-300x255-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(377, 204, '_wp_attached_file', '2019/12/3-300x225-1.png'),
(378, 204, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:225;s:4:"file";s:23:"2019/12/3-300x225-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"3-300x225-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"3-300x225-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"3-300x225-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(379, 205, '_wp_attached_file', '2019/12/3-300x150-1.png'),
(380, 205, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:150;s:4:"file";s:23:"2019/12/3-300x150-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"3-300x150-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"3-300x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"3-300x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(381, 206, '_wp_attached_file', '2019/12/3-300x75-1.png'),
(382, 206, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:75;s:4:"file";s:22:"2019/12/3-300x75-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"3-300x75-1-150x75.png";s:5:"width";i:150;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:21:"3-300x75-1-100x75.png";s:5:"width";i:100;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"3-300x75-1-100x75.png";s:5:"width";i:100;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(383, 207, '_wp_attached_file', '2019/12/3-250x250-1.png'),
(384, 207, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:23:"2019/12/3-250x250-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"3-250x250-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"3-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"3-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(385, 208, '_wp_attached_file', '2019/12/3-250x250-1.jpg'),
(386, 208, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:23:"2019/12/3-250x250-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"3-250x250-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"3-250x250-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"3-250x250-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(387, 209, '_wp_attached_file', '2019/12/3-200x200-1.png'),
(388, 209, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:23:"2019/12/3-200x200-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"3-200x200-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"3-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"3-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(389, 210, '_wp_attached_file', '2019/12/3-200x200-1.jpg'),
(390, 210, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:23:"2019/12/3-200x200-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"3-200x200-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"3-200x200-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"3-200x200-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(391, 211, '_wp_attached_file', '2019/12/3-150x150-1.png'),
(392, 211, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:23:"2019/12/3-150x150-1.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"3-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"3-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(393, 212, '_wp_attached_file', '2019/12/3-150x150-1.jpg'),
(394, 212, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:23:"2019/12/3-150x150-1.jpg";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"3-150x150-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"3-150x150-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(395, 213, '_wp_attached_file', '2019/12/3-100x100-1.png'),
(396, 213, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:23:"2019/12/3-100x100-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(397, 214, '_wp_attached_file', '2019/12/3-100x100-1.jpg'),
(398, 214, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:23:"2019/12/3-100x100-1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(399, 215, '_wp_attached_file', '2019/12/3-25x25-1.png'),
(400, 215, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:25;s:6:"height";i:25;s:4:"file";s:21:"2019/12/3-25x25-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(401, 216, '_wp_attached_file', '2019/12/3-1.png'),
(402, 216, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:462;s:6:"height";i:392;s:4:"file";s:15:"2019/12/3-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:15:"3-1-300x255.png";s:5:"width";i:300;s:6:"height";i:255;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:15:"3-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:15:"3-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:15:"3-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"3-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"3-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(403, 217, '_wp_attached_file', '2019/12/3-1.jpg'),
(404, 217, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:462;s:6:"height";i:392;s:4:"file";s:15:"2019/12/3-1.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:15:"3-1-300x255.jpg";s:5:"width";i:300;s:6:"height";i:255;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:15:"3-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:15:"3-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:15:"3-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"3-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"3-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(405, 218, '_wp_attached_file', '2019/12/2-400x392-1.png'),
(406, 218, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:392;s:4:"file";s:23:"2019/12/2-400x392-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:23:"2-400x392-1-300x294.png";s:5:"width";i:300;s:6:"height";i:294;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:23:"2-400x392-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:23:"2-400x392-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"2-400x392-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"2-400x392-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"2-400x392-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(407, 219, '_wp_attached_file', '2019/12/2-300x300-1.png'),
(408, 219, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:23:"2019/12/2-300x300-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"2-300x300-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"2-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"2-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(409, 220, '_wp_attached_file', '2019/12/2-300x255-1.png'),
(410, 220, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:255;s:4:"file";s:23:"2019/12/2-300x255-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"2-300x255-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"2-300x255-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"2-300x255-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(411, 221, '_wp_attached_file', '2019/12/2-300x225-1.png'),
(412, 221, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:225;s:4:"file";s:23:"2019/12/2-300x225-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"2-300x225-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"2-300x225-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"2-300x225-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(413, 222, '_wp_attached_file', '2019/12/2-300x150-1.png'),
(414, 222, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:150;s:4:"file";s:23:"2019/12/2-300x150-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"2-300x150-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"2-300x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"2-300x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(415, 223, '_wp_attached_file', '2019/12/2-300x75-1.png'),
(416, 223, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:75;s:4:"file";s:22:"2019/12/2-300x75-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"2-300x75-1-150x75.png";s:5:"width";i:150;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:21:"2-300x75-1-100x75.png";s:5:"width";i:100;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"2-300x75-1-100x75.png";s:5:"width";i:100;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(417, 224, '_wp_attached_file', '2019/12/2-250x250-1.png'),
(418, 224, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:23:"2019/12/2-250x250-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"2-250x250-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"2-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"2-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(419, 225, '_wp_attached_file', '2019/12/2-200x200-1.png'),
(420, 225, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:23:"2019/12/2-200x200-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"2-200x200-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"2-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"2-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(421, 226, '_wp_attached_file', '2019/12/2-150x150-1.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(422, 226, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:23:"2019/12/2-150x150-1.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"2-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"2-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(423, 227, '_wp_attached_file', '2019/12/2-100x100-1.png'),
(424, 227, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:23:"2019/12/2-100x100-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(425, 228, '_wp_attached_file', '2019/12/2-25x25-1.png'),
(426, 228, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:25;s:6:"height";i:25;s:4:"file";s:21:"2019/12/2-25x25-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(427, 229, '_wp_attached_file', '2019/12/2-1.png'),
(428, 229, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:462;s:6:"height";i:392;s:4:"file";s:15:"2019/12/2-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:15:"2-1-300x255.png";s:5:"width";i:300;s:6:"height";i:255;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:15:"2-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:15:"2-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:15:"2-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"2-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"2-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(429, 230, '_wp_attached_file', '2019/12/1-768x768-1.png'),
(430, 230, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:768;s:6:"height";i:768;s:4:"file";s:23:"2019/12/1-768x768-1.png";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:23:"1-768x768-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:23:"1-768x768-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:23:"1-768x768-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:23:"1-768x768-1-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"1-768x768-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"1-768x768-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:23:"1-768x768-1-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"1-768x768-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(431, 231, '_wp_attached_file', '2019/12/1-600x600-1.png'),
(432, 231, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:23:"2019/12/1-600x600-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:23:"1-600x600-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:23:"1-600x600-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:23:"1-600x600-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"1-600x600-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"1-600x600-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"1-600x600-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(433, 232, '_wp_attached_file', '2019/12/1-500x500-1.png'),
(434, 232, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:23:"2019/12/1-500x500-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:23:"1-500x500-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:23:"1-500x500-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:23:"1-500x500-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"1-500x500-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"1-500x500-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"1-500x500-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(435, 233, '_wp_attached_file', '2019/12/1-300x300-1.png'),
(436, 233, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:23:"2019/12/1-300x300-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"1-300x300-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"1-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"1-300x300-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(437, 234, '_wp_attached_file', '2019/12/1-300x225-1.png'),
(438, 234, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:225;s:4:"file";s:23:"2019/12/1-300x225-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"1-300x225-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"1-300x225-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"1-300x225-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(439, 235, '_wp_attached_file', '2019/12/1-300x150-1.png'),
(440, 235, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:150;s:4:"file";s:23:"2019/12/1-300x150-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"1-300x150-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"1-300x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"1-300x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(441, 236, '_wp_attached_file', '2019/12/1-300x75-1.png'),
(442, 236, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:75;s:4:"file";s:22:"2019/12/1-300x75-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"1-300x75-1-150x75.png";s:5:"width";i:150;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:21:"1-300x75-1-100x75.png";s:5:"width";i:100;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"1-300x75-1-100x75.png";s:5:"width";i:100;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(443, 237, '_wp_attached_file', '2019/12/1-250x250-1.png'),
(444, 237, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:23:"2019/12/1-250x250-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"1-250x250-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"1-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"1-250x250-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(445, 238, '_wp_attached_file', '2019/12/1-200x200-1.png'),
(446, 238, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:23:"2019/12/1-200x200-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"1-200x200-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"1-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"1-200x200-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(447, 239, '_wp_attached_file', '2019/12/1-150x150-1.png'),
(448, 239, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:23:"2019/12/1-150x150-1.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"1-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"1-150x150-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(449, 240, '_wp_attached_file', '2019/12/1-100x100-1.png'),
(450, 240, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:23:"2019/12/1-100x100-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(451, 241, '_wp_attached_file', '2019/12/1-1.png'),
(452, 241, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:15:"2019/12/1-1.png";s:5:"sizes";a:9:{s:6:"medium";a:4:{s:4:"file";s:15:"1-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:15:"1-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:15:"1-1-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:15:"1-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:15:"1-1-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:15:"1-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"1-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:15:"1-1-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"1-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(453, 11, '_edit_last', '1'),
(454, 11, 'banner1', '109'),
(455, 11, '_banner1', 'field_5dfc9c3c230b9'),
(456, 11, 'banner2', '102'),
(457, 11, '_banner2', 'field_5dfc9c47230ba'),
(458, 11, 'banner3', '86'),
(459, 11, '_banner3', 'field_5dfc9c53230bb'),
(460, 11, 'banner4', '95'),
(461, 11, '_banner4', 'field_5dfc9c5d230bc'),
(462, 11, 'banner', '120'),
(463, 11, '_banner', 'field_5dfc9c9ad7fdb'),
(464, 242, 'banner1', '109'),
(465, 242, '_banner1', 'field_5dfc9c3c230b9'),
(466, 242, 'banner2', '102'),
(467, 242, '_banner2', 'field_5dfc9c47230ba'),
(468, 242, 'banner3', '86'),
(469, 242, '_banner3', 'field_5dfc9c53230bb'),
(470, 242, 'banner4', '95'),
(471, 242, '_banner4', 'field_5dfc9c5d230bc'),
(472, 242, 'banner', '120'),
(473, 242, '_banner', 'field_5dfc9c9ad7fdb'),
(474, 243, 'banner1', '109'),
(475, 243, '_banner1', 'field_5dfc9c3c230b9'),
(476, 243, 'banner2', '102'),
(477, 243, '_banner2', 'field_5dfc9c47230ba'),
(478, 243, 'banner3', '86'),
(479, 243, '_banner3', 'field_5dfc9c53230bb'),
(480, 243, 'banner4', '95'),
(481, 243, '_banner4', 'field_5dfc9c5d230bc'),
(482, 243, 'banner', '120'),
(483, 243, '_banner', 'field_5dfc9c9ad7fdb'),
(484, 244, 'banner1', '109'),
(485, 244, '_banner1', 'field_5dfc9c3c230b9'),
(486, 244, 'banner2', '102'),
(487, 244, '_banner2', 'field_5dfc9c47230ba'),
(488, 244, 'banner3', '86'),
(489, 244, '_banner3', 'field_5dfc9c53230bb'),
(490, 244, 'banner4', '95'),
(491, 244, '_banner4', 'field_5dfc9c5d230bc'),
(492, 244, 'banner', '120'),
(493, 244, '_banner', 'field_5dfc9c9ad7fdb'),
(504, 246, '_action_manager_schedule', 'O:30:"ActionScheduler_SimpleSchedule":1:{s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1576837096;}'),
(505, 247, '_menu_item_type', 'post_type'),
(506, 247, '_menu_item_menu_item_parent', '0'),
(507, 247, '_menu_item_object_id', '13'),
(508, 247, '_menu_item_object', 'page'),
(509, 247, '_menu_item_target', ''),
(510, 247, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(511, 247, '_menu_item_xfn', ''),
(512, 247, '_menu_item_url', ''),
(514, 248, '_menu_item_type', 'post_type'),
(515, 248, '_menu_item_menu_item_parent', '0'),
(516, 248, '_menu_item_object_id', '8'),
(517, 248, '_menu_item_object', 'page'),
(518, 248, '_menu_item_target', ''),
(519, 248, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(520, 248, '_menu_item_xfn', ''),
(521, 248, '_menu_item_url', ''),
(523, 249, '_menu_item_type', 'post_type'),
(524, 249, '_menu_item_menu_item_parent', '0'),
(525, 249, '_menu_item_object_id', '7'),
(526, 249, '_menu_item_object', 'page'),
(527, 249, '_menu_item_target', ''),
(528, 249, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(529, 249, '_menu_item_xfn', ''),
(530, 249, '_menu_item_url', ''),
(541, 251, '_menu_item_type', 'post_type'),
(542, 251, '_menu_item_menu_item_parent', '254'),
(543, 251, '_menu_item_object_id', '7'),
(544, 251, '_menu_item_object', 'page'),
(545, 251, '_menu_item_target', ''),
(546, 251, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(547, 251, '_menu_item_xfn', ''),
(548, 251, '_menu_item_url', ''),
(550, 252, '_menu_item_type', 'post_type'),
(551, 252, '_menu_item_menu_item_parent', '254'),
(552, 252, '_menu_item_object_id', '8'),
(553, 252, '_menu_item_object', 'page'),
(554, 252, '_menu_item_target', ''),
(555, 252, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(556, 252, '_menu_item_xfn', ''),
(557, 252, '_menu_item_url', ''),
(568, 254, '_menu_item_type', 'post_type'),
(569, 254, '_menu_item_menu_item_parent', '0'),
(570, 254, '_menu_item_object_id', '9'),
(571, 254, '_menu_item_object', 'page'),
(572, 254, '_menu_item_target', ''),
(573, 254, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(574, 254, '_menu_item_xfn', ''),
(575, 254, '_menu_item_url', ''),
(577, 255, '_menu_item_type', 'post_type'),
(578, 255, '_menu_item_menu_item_parent', '0'),
(579, 255, '_menu_item_object_id', '6'),
(580, 255, '_menu_item_object', 'page'),
(581, 255, '_menu_item_target', ''),
(582, 255, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(583, 255, '_menu_item_xfn', ''),
(584, 255, '_menu_item_url', ''),
(586, 256, '_menu_item_type', 'post_type'),
(587, 256, '_menu_item_menu_item_parent', '0'),
(588, 256, '_menu_item_object_id', '11'),
(589, 256, '_menu_item_object', 'page'),
(590, 256, '_menu_item_target', ''),
(591, 256, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(592, 256, '_menu_item_xfn', ''),
(593, 256, '_menu_item_url', ''),
(595, 257, '_menu_item_type', 'post_type'),
(596, 257, '_menu_item_menu_item_parent', '0'),
(597, 257, '_menu_item_object_id', '7'),
(598, 257, '_menu_item_object', 'page'),
(599, 257, '_menu_item_target', ''),
(600, 257, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(601, 257, '_menu_item_xfn', ''),
(602, 257, '_menu_item_url', ''),
(604, 258, '_menu_item_type', 'post_type'),
(605, 258, '_menu_item_menu_item_parent', '0'),
(606, 258, '_menu_item_object_id', '8'),
(607, 258, '_menu_item_object', 'page'),
(608, 258, '_menu_item_target', ''),
(609, 258, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(610, 258, '_menu_item_xfn', ''),
(611, 258, '_menu_item_url', ''),
(613, 259, '_menu_item_type', 'post_type'),
(614, 259, '_menu_item_menu_item_parent', '0'),
(615, 259, '_menu_item_object_id', '13'),
(616, 259, '_menu_item_object', 'page'),
(617, 259, '_menu_item_target', ''),
(618, 259, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(619, 259, '_menu_item_xfn', ''),
(620, 259, '_menu_item_url', ''),
(622, 260, '_menu_item_type', 'post_type'),
(623, 260, '_menu_item_menu_item_parent', '0'),
(624, 260, '_menu_item_object_id', '9'),
(625, 260, '_menu_item_object', 'page'),
(626, 260, '_menu_item_target', ''),
(627, 260, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(628, 260, '_menu_item_xfn', ''),
(629, 260, '_menu_item_url', ''),
(631, 261, '_menu_item_type', 'post_type'),
(632, 261, '_menu_item_menu_item_parent', '0'),
(633, 261, '_menu_item_object_id', '6'),
(634, 261, '_menu_item_object', 'page'),
(635, 261, '_menu_item_target', ''),
(636, 261, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(637, 261, '_menu_item_xfn', ''),
(638, 261, '_menu_item_url', ''),
(640, 262, '_menu_item_type', 'post_type'),
(641, 262, '_menu_item_menu_item_parent', '0'),
(642, 262, '_menu_item_object_id', '11'),
(643, 262, '_menu_item_object', 'page'),
(644, 262, '_menu_item_target', ''),
(645, 262, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(646, 262, '_menu_item_xfn', ''),
(647, 262, '_menu_item_url', ''),
(649, 263, '_menu_item_type', 'post_type'),
(650, 263, '_menu_item_menu_item_parent', '0'),
(651, 263, '_menu_item_object_id', '7'),
(652, 263, '_menu_item_object', 'page'),
(653, 263, '_menu_item_target', ''),
(654, 263, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(655, 263, '_menu_item_xfn', ''),
(656, 263, '_menu_item_url', ''),
(658, 264, '_menu_item_type', 'post_type'),
(659, 264, '_menu_item_menu_item_parent', '0'),
(660, 264, '_menu_item_object_id', '8'),
(661, 264, '_menu_item_object', 'page'),
(662, 264, '_menu_item_target', ''),
(663, 264, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(664, 264, '_menu_item_xfn', ''),
(665, 264, '_menu_item_url', ''),
(667, 265, '_menu_item_type', 'post_type'),
(668, 265, '_menu_item_menu_item_parent', '0'),
(669, 265, '_menu_item_object_id', '13'),
(670, 265, '_menu_item_object', 'page'),
(671, 265, '_menu_item_target', ''),
(672, 265, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(673, 265, '_menu_item_xfn', ''),
(674, 265, '_menu_item_url', ''),
(676, 266, '_menu_item_type', 'post_type'),
(677, 266, '_menu_item_menu_item_parent', '0'),
(678, 266, '_menu_item_object_id', '9'),
(679, 266, '_menu_item_object', 'page'),
(680, 266, '_menu_item_target', ''),
(681, 266, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(682, 266, '_menu_item_xfn', ''),
(683, 266, '_menu_item_url', ''),
(685, 267, '_menu_item_type', 'post_type'),
(686, 267, '_menu_item_menu_item_parent', '0'),
(687, 267, '_menu_item_object_id', '6'),
(688, 267, '_menu_item_object', 'page'),
(689, 267, '_menu_item_target', ''),
(690, 267, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(691, 267, '_menu_item_xfn', ''),
(692, 267, '_menu_item_url', ''),
(694, 268, '_menu_item_type', 'taxonomy'),
(695, 268, '_menu_item_menu_item_parent', '0'),
(696, 268, '_menu_item_object_id', '32'),
(697, 268, '_menu_item_object', 'product_tag'),
(698, 268, '_menu_item_target', ''),
(699, 268, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(700, 268, '_menu_item_xfn', ''),
(701, 268, '_menu_item_url', ''),
(703, 269, '_menu_item_type', 'taxonomy'),
(704, 269, '_menu_item_menu_item_parent', '0'),
(705, 269, '_menu_item_object_id', '30'),
(706, 269, '_menu_item_object', 'product_tag'),
(707, 269, '_menu_item_target', ''),
(708, 269, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(709, 269, '_menu_item_xfn', ''),
(710, 269, '_menu_item_url', ''),
(712, 270, '_menu_item_type', 'taxonomy'),
(713, 270, '_menu_item_menu_item_parent', '0'),
(714, 270, '_menu_item_object_id', '38'),
(715, 270, '_menu_item_object', 'product_tag'),
(716, 270, '_menu_item_target', ''),
(717, 270, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(718, 270, '_menu_item_xfn', ''),
(719, 270, '_menu_item_url', ''),
(721, 271, '_menu_item_type', 'taxonomy'),
(722, 271, '_menu_item_menu_item_parent', '0'),
(723, 271, '_menu_item_object_id', '33'),
(724, 271, '_menu_item_object', 'product_tag'),
(725, 271, '_menu_item_target', ''),
(726, 271, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(727, 271, '_menu_item_xfn', ''),
(728, 271, '_menu_item_url', ''),
(730, 272, '_menu_item_type', 'taxonomy'),
(731, 272, '_menu_item_menu_item_parent', '0'),
(732, 272, '_menu_item_object_id', '34'),
(733, 272, '_menu_item_object', 'product_tag'),
(734, 272, '_menu_item_target', ''),
(735, 272, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(736, 272, '_menu_item_xfn', ''),
(737, 272, '_menu_item_url', ''),
(739, 273, '_menu_item_type', 'taxonomy'),
(740, 273, '_menu_item_menu_item_parent', '0'),
(741, 273, '_menu_item_object_id', '37'),
(742, 273, '_menu_item_object', 'product_tag'),
(743, 273, '_menu_item_target', ''),
(744, 273, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(745, 273, '_menu_item_xfn', ''),
(746, 273, '_menu_item_url', ''),
(748, 274, '_menu_item_type', 'taxonomy'),
(749, 274, '_menu_item_menu_item_parent', '0'),
(750, 274, '_menu_item_object_id', '31'),
(751, 274, '_menu_item_object', 'product_tag'),
(752, 274, '_menu_item_target', ''),
(753, 274, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(754, 274, '_menu_item_xfn', ''),
(755, 274, '_menu_item_url', ''),
(757, 275, '_menu_item_type', 'taxonomy'),
(758, 275, '_menu_item_menu_item_parent', '0'),
(759, 275, '_menu_item_object_id', '36'),
(760, 275, '_menu_item_object', 'product_tag'),
(761, 275, '_menu_item_target', ''),
(762, 275, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(763, 275, '_menu_item_xfn', ''),
(764, 275, '_menu_item_url', ''),
(766, 276, '_menu_item_type', 'taxonomy'),
(767, 276, '_menu_item_menu_item_parent', '0'),
(768, 276, '_menu_item_object_id', '35'),
(769, 276, '_menu_item_object', 'product_tag'),
(770, 276, '_menu_item_target', ''),
(771, 276, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(772, 276, '_menu_item_xfn', ''),
(773, 276, '_menu_item_url', ''),
(775, 277, '_menu_item_type', 'taxonomy'),
(776, 277, '_menu_item_menu_item_parent', '0'),
(777, 277, '_menu_item_object_id', '25'),
(778, 277, '_menu_item_object', 'product_cat'),
(779, 277, '_menu_item_target', ''),
(780, 277, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(781, 277, '_menu_item_xfn', ''),
(782, 277, '_menu_item_url', ''),
(784, 278, '_menu_item_type', 'taxonomy'),
(785, 278, '_menu_item_menu_item_parent', '0'),
(786, 278, '_menu_item_object_id', '26'),
(787, 278, '_menu_item_object', 'product_cat'),
(788, 278, '_menu_item_target', ''),
(789, 278, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(790, 278, '_menu_item_xfn', ''),
(791, 278, '_menu_item_url', ''),
(793, 279, '_menu_item_type', 'taxonomy'),
(794, 279, '_menu_item_menu_item_parent', '0'),
(795, 279, '_menu_item_object_id', '27'),
(796, 279, '_menu_item_object', 'product_cat'),
(797, 279, '_menu_item_target', ''),
(798, 279, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(799, 279, '_menu_item_xfn', ''),
(800, 279, '_menu_item_url', ''),
(802, 280, '_menu_item_type', 'taxonomy'),
(803, 280, '_menu_item_menu_item_parent', '0'),
(804, 280, '_menu_item_object_id', '28'),
(805, 280, '_menu_item_object', 'product_cat'),
(806, 280, '_menu_item_target', ''),
(807, 280, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(808, 280, '_menu_item_xfn', ''),
(809, 280, '_menu_item_url', ''),
(811, 281, '_menu_item_type', 'taxonomy'),
(812, 281, '_menu_item_menu_item_parent', '0'),
(813, 281, '_menu_item_object_id', '29'),
(814, 281, '_menu_item_object', 'product_cat'),
(815, 281, '_menu_item_target', ''),
(816, 281, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(817, 281, '_menu_item_xfn', ''),
(818, 281, '_menu_item_url', ''),
(820, 11, 'free_sheeping', '21'),
(821, 11, '_free_sheeping', 'field_5dfca316271f5'),
(822, 11, 'brand_image1', '75'),
(823, 11, '_brand_image1', 'field_5dfca33dbf5cd'),
(824, 11, 'brand_image2', '63'),
(825, 11, '_brand_image2', 'field_5dfca352bf5ce'),
(826, 11, 'brand_image3', '57'),
(827, 11, '_brand_image3', 'field_5dfca364bf5cf'),
(828, 11, 'brand_image4', '51'),
(829, 11, '_brand_image4', 'field_5dfca36ebf5d0'),
(830, 11, 'brand_image5', '45'),
(831, 11, '_brand_image5', 'field_5dfca37cbf5d1'),
(832, 11, 'brand_image6', '39'),
(833, 11, '_brand_image6', 'field_5dfca38bbf5d2'),
(834, 11, 'brand_image7', '27'),
(835, 11, '_brand_image7', 'field_5dfca397bf5d3'),
(836, 290, 'banner1', '109'),
(837, 290, '_banner1', 'field_5dfc9c3c230b9'),
(838, 290, 'banner2', '102'),
(839, 290, '_banner2', 'field_5dfc9c47230ba'),
(840, 290, 'banner3', '86'),
(841, 290, '_banner3', 'field_5dfc9c53230bb'),
(842, 290, 'banner4', '95'),
(843, 290, '_banner4', 'field_5dfc9c5d230bc'),
(844, 290, 'banner', '120'),
(845, 290, '_banner', 'field_5dfc9c9ad7fdb'),
(846, 290, 'free_sheeping', '21'),
(847, 290, '_free_sheeping', 'field_5dfca316271f5'),
(848, 290, 'brand_image1', '75'),
(849, 290, '_brand_image1', 'field_5dfca33dbf5cd'),
(850, 290, 'brand_image2', '63'),
(851, 290, '_brand_image2', 'field_5dfca352bf5ce'),
(852, 290, 'brand_image3', '57'),
(853, 290, '_brand_image3', 'field_5dfca364bf5cf'),
(854, 290, 'brand_image4', '51'),
(855, 290, '_brand_image4', 'field_5dfca36ebf5d0'),
(856, 290, 'brand_image5', '45'),
(857, 290, '_brand_image5', 'field_5dfca37cbf5d1'),
(858, 290, 'brand_image6', '39'),
(859, 290, '_brand_image6', 'field_5dfca38bbf5d2'),
(860, 290, 'brand_image7', '27'),
(861, 290, '_brand_image7', 'field_5dfca397bf5d3'),
(862, 291, 'banner1', '109'),
(863, 291, '_banner1', 'field_5dfc9c3c230b9'),
(864, 291, 'banner2', '102'),
(865, 291, '_banner2', 'field_5dfc9c47230ba'),
(866, 291, 'banner3', '86'),
(867, 291, '_banner3', 'field_5dfc9c53230bb'),
(868, 291, 'banner4', '95'),
(869, 291, '_banner4', 'field_5dfc9c5d230bc'),
(870, 291, 'banner', '120'),
(871, 291, '_banner', 'field_5dfc9c9ad7fdb'),
(872, 291, 'free_sheeping', '21'),
(873, 291, '_free_sheeping', 'field_5dfca316271f5'),
(874, 291, 'brand_image1', '75'),
(875, 291, '_brand_image1', 'field_5dfca33dbf5cd'),
(876, 291, 'brand_image2', '63'),
(877, 291, '_brand_image2', 'field_5dfca352bf5ce'),
(878, 291, 'brand_image3', '57'),
(879, 291, '_brand_image3', 'field_5dfca364bf5cf'),
(880, 291, 'brand_image4', '51'),
(881, 291, '_brand_image4', 'field_5dfca36ebf5d0'),
(882, 291, 'brand_image5', '45'),
(883, 291, '_brand_image5', 'field_5dfca37cbf5d1'),
(884, 291, 'brand_image6', '39'),
(885, 291, '_brand_image6', 'field_5dfca38bbf5d2'),
(886, 291, 'brand_image7', '27'),
(887, 291, '_brand_image7', 'field_5dfca397bf5d3'),
(933, 297, '_menu_item_type', 'taxonomy'),
(934, 297, '_menu_item_menu_item_parent', '255'),
(935, 297, '_menu_item_object_id', '25'),
(936, 297, '_menu_item_object', 'product_cat'),
(937, 297, '_menu_item_target', ''),
(938, 297, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(939, 297, '_menu_item_xfn', ''),
(940, 297, '_menu_item_url', ''),
(942, 298, '_menu_item_type', 'taxonomy'),
(943, 298, '_menu_item_menu_item_parent', '255'),
(944, 298, '_menu_item_object_id', '26'),
(945, 298, '_menu_item_object', 'product_cat'),
(946, 298, '_menu_item_target', ''),
(947, 298, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(948, 298, '_menu_item_xfn', ''),
(949, 298, '_menu_item_url', ''),
(951, 299, '_menu_item_type', 'taxonomy'),
(952, 299, '_menu_item_menu_item_parent', '255'),
(953, 299, '_menu_item_object_id', '27'),
(954, 299, '_menu_item_object', 'product_cat'),
(955, 299, '_menu_item_target', ''),
(956, 299, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(957, 299, '_menu_item_xfn', ''),
(958, 299, '_menu_item_url', ''),
(960, 300, '_menu_item_type', 'taxonomy'),
(961, 300, '_menu_item_menu_item_parent', '255'),
(962, 300, '_menu_item_object_id', '28'),
(963, 300, '_menu_item_object', 'product_cat'),
(964, 300, '_menu_item_target', ''),
(965, 300, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(966, 300, '_menu_item_xfn', ''),
(967, 300, '_menu_item_url', ''),
(969, 301, '_menu_item_type', 'taxonomy'),
(970, 301, '_menu_item_menu_item_parent', '255'),
(971, 301, '_menu_item_object_id', '29'),
(972, 301, '_menu_item_object', 'product_cat'),
(973, 301, '_menu_item_target', ''),
(974, 301, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(975, 301, '_menu_item_xfn', ''),
(976, 301, '_menu_item_url', ''),
(978, 302, '_menu_item_type', 'taxonomy'),
(979, 302, '_menu_item_menu_item_parent', '0'),
(980, 302, '_menu_item_object_id', '17'),
(981, 302, '_menu_item_object', 'pwb-brand'),
(982, 302, '_menu_item_target', ''),
(983, 302, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(984, 302, '_menu_item_xfn', ''),
(985, 302, '_menu_item_url', ''),
(987, 303, '_menu_item_type', 'taxonomy'),
(988, 303, '_menu_item_menu_item_parent', '302'),
(989, 303, '_menu_item_object_id', '22'),
(990, 303, '_menu_item_object', 'pwb-brand'),
(991, 303, '_menu_item_target', ''),
(992, 303, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(993, 303, '_menu_item_xfn', ''),
(994, 303, '_menu_item_url', ''),
(996, 304, '_menu_item_type', 'taxonomy'),
(997, 304, '_menu_item_menu_item_parent', '302'),
(998, 304, '_menu_item_object_id', '20'),
(999, 304, '_menu_item_object', 'pwb-brand'),
(1000, 304, '_menu_item_target', ''),
(1001, 304, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1002, 304, '_menu_item_xfn', ''),
(1003, 304, '_menu_item_url', ''),
(1005, 305, '_menu_item_type', 'taxonomy'),
(1006, 305, '_menu_item_menu_item_parent', '302'),
(1007, 305, '_menu_item_object_id', '21'),
(1008, 305, '_menu_item_object', 'pwb-brand'),
(1009, 305, '_menu_item_target', ''),
(1010, 305, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1011, 305, '_menu_item_xfn', ''),
(1012, 305, '_menu_item_url', ''),
(1014, 306, '_menu_item_type', 'taxonomy'),
(1015, 306, '_menu_item_menu_item_parent', '302'),
(1016, 306, '_menu_item_object_id', '23'),
(1017, 306, '_menu_item_object', 'pwb-brand'),
(1018, 306, '_menu_item_target', ''),
(1019, 306, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1020, 306, '_menu_item_xfn', ''),
(1021, 306, '_menu_item_url', ''),
(1023, 307, '_menu_item_type', 'taxonomy'),
(1024, 307, '_menu_item_menu_item_parent', '302'),
(1025, 307, '_menu_item_object_id', '18'),
(1026, 307, '_menu_item_object', 'pwb-brand'),
(1027, 307, '_menu_item_target', ''),
(1028, 307, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1029, 307, '_menu_item_xfn', ''),
(1030, 307, '_menu_item_url', ''),
(1032, 308, '_menu_item_type', 'taxonomy'),
(1033, 308, '_menu_item_menu_item_parent', '302'),
(1034, 308, '_menu_item_object_id', '19'),
(1035, 308, '_menu_item_object', 'pwb-brand'),
(1036, 308, '_menu_item_target', ''),
(1037, 308, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1038, 308, '_menu_item_xfn', ''),
(1039, 308, '_menu_item_url', ''),
(1041, 309, '_menu_item_type', 'taxonomy'),
(1042, 309, '_menu_item_menu_item_parent', '302'),
(1043, 309, '_menu_item_object_id', '24'),
(1044, 309, '_menu_item_object', 'pwb-brand'),
(1045, 309, '_menu_item_target', ''),
(1046, 309, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1047, 309, '_menu_item_xfn', ''),
(1048, 309, '_menu_item_url', ''),
(1050, 310, '_menu_item_type', 'taxonomy'),
(1051, 310, '_menu_item_menu_item_parent', '302'),
(1052, 310, '_menu_item_object_id', '17'),
(1053, 310, '_menu_item_object', 'pwb-brand'),
(1054, 310, '_menu_item_target', ''),
(1055, 310, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1056, 310, '_menu_item_xfn', ''),
(1057, 310, '_menu_item_url', ''),
(1059, 311, '_menu_item_type', 'taxonomy'),
(1060, 311, '_menu_item_menu_item_parent', '0'),
(1061, 311, '_menu_item_object_id', '17'),
(1062, 311, '_menu_item_object', 'pwb-brand'),
(1063, 311, '_menu_item_target', ''),
(1064, 311, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1065, 311, '_menu_item_xfn', ''),
(1066, 311, '_menu_item_url', ''),
(1068, 312, '_menu_item_type', 'taxonomy'),
(1069, 312, '_menu_item_menu_item_parent', '0'),
(1070, 312, '_menu_item_object_id', '22'),
(1071, 312, '_menu_item_object', 'pwb-brand'),
(1072, 312, '_menu_item_target', ''),
(1073, 312, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1074, 312, '_menu_item_xfn', ''),
(1075, 312, '_menu_item_url', ''),
(1077, 313, '_menu_item_type', 'taxonomy'),
(1078, 313, '_menu_item_menu_item_parent', '0'),
(1079, 313, '_menu_item_object_id', '20'),
(1080, 313, '_menu_item_object', 'pwb-brand'),
(1081, 313, '_menu_item_target', ''),
(1082, 313, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1083, 313, '_menu_item_xfn', ''),
(1084, 313, '_menu_item_url', ''),
(1086, 314, '_menu_item_type', 'taxonomy'),
(1087, 314, '_menu_item_menu_item_parent', '0'),
(1088, 314, '_menu_item_object_id', '21'),
(1089, 314, '_menu_item_object', 'pwb-brand'),
(1090, 314, '_menu_item_target', ''),
(1091, 314, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1092, 314, '_menu_item_xfn', ''),
(1093, 314, '_menu_item_url', ''),
(1095, 315, '_menu_item_type', 'taxonomy'),
(1096, 315, '_menu_item_menu_item_parent', '0'),
(1097, 315, '_menu_item_object_id', '23'),
(1098, 315, '_menu_item_object', 'pwb-brand'),
(1099, 315, '_menu_item_target', ''),
(1100, 315, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1101, 315, '_menu_item_xfn', ''),
(1102, 315, '_menu_item_url', ''),
(1104, 316, '_menu_item_type', 'taxonomy'),
(1105, 316, '_menu_item_menu_item_parent', '0'),
(1106, 316, '_menu_item_object_id', '18'),
(1107, 316, '_menu_item_object', 'pwb-brand'),
(1108, 316, '_menu_item_target', ''),
(1109, 316, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1110, 316, '_menu_item_xfn', ''),
(1111, 316, '_menu_item_url', ''),
(1113, 317, '_menu_item_type', 'taxonomy'),
(1114, 317, '_menu_item_menu_item_parent', '0'),
(1115, 317, '_menu_item_object_id', '19'),
(1116, 317, '_menu_item_object', 'pwb-brand'),
(1117, 317, '_menu_item_target', ''),
(1118, 317, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1119, 317, '_menu_item_xfn', ''),
(1120, 317, '_menu_item_url', ''),
(1122, 318, '_menu_item_type', 'taxonomy'),
(1123, 318, '_menu_item_menu_item_parent', '0'),
(1124, 318, '_menu_item_object_id', '24'),
(1125, 318, '_menu_item_object', 'pwb-brand'),
(1126, 318, '_menu_item_target', ''),
(1127, 318, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1128, 318, '_menu_item_xfn', ''),
(1129, 318, '_menu_item_url', ''),
(1131, 319, '_menu_item_type', 'taxonomy'),
(1132, 319, '_menu_item_menu_item_parent', '0'),
(1133, 319, '_menu_item_object_id', '25'),
(1134, 319, '_menu_item_object', 'product_cat'),
(1135, 319, '_menu_item_target', ''),
(1136, 319, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1137, 319, '_menu_item_xfn', ''),
(1138, 319, '_menu_item_url', ''),
(1140, 320, '_menu_item_type', 'taxonomy'),
(1141, 320, '_menu_item_menu_item_parent', '0'),
(1142, 320, '_menu_item_object_id', '26'),
(1143, 320, '_menu_item_object', 'product_cat'),
(1144, 320, '_menu_item_target', ''),
(1145, 320, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1146, 320, '_menu_item_xfn', ''),
(1147, 320, '_menu_item_url', ''),
(1149, 321, '_menu_item_type', 'taxonomy'),
(1150, 321, '_menu_item_menu_item_parent', '0'),
(1151, 321, '_menu_item_object_id', '27'),
(1152, 321, '_menu_item_object', 'product_cat'),
(1153, 321, '_menu_item_target', ''),
(1154, 321, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1155, 321, '_menu_item_xfn', ''),
(1156, 321, '_menu_item_url', ''),
(1158, 322, '_menu_item_type', 'taxonomy'),
(1159, 322, '_menu_item_menu_item_parent', '0'),
(1160, 322, '_menu_item_object_id', '28'),
(1161, 322, '_menu_item_object', 'product_cat'),
(1162, 322, '_menu_item_target', ''),
(1163, 322, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1164, 322, '_menu_item_xfn', ''),
(1165, 322, '_menu_item_url', ''),
(1167, 323, '_menu_item_type', 'taxonomy'),
(1168, 323, '_menu_item_menu_item_parent', '0'),
(1169, 323, '_menu_item_object_id', '29'),
(1170, 323, '_menu_item_object', 'product_cat'),
(1171, 323, '_menu_item_target', ''),
(1172, 323, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1173, 323, '_menu_item_xfn', ''),
(1174, 323, '_menu_item_url', ''),
(1176, 324, '_menu_item_type', 'taxonomy'),
(1177, 324, '_menu_item_menu_item_parent', '0'),
(1178, 324, '_menu_item_object_id', '32'),
(1179, 324, '_menu_item_object', 'product_tag'),
(1180, 324, '_menu_item_target', ''),
(1181, 324, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1182, 324, '_menu_item_xfn', ''),
(1183, 324, '_menu_item_url', ''),
(1185, 325, '_menu_item_type', 'taxonomy'),
(1186, 325, '_menu_item_menu_item_parent', '0'),
(1187, 325, '_menu_item_object_id', '30'),
(1188, 325, '_menu_item_object', 'product_tag'),
(1189, 325, '_menu_item_target', ''),
(1190, 325, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1191, 325, '_menu_item_xfn', ''),
(1192, 325, '_menu_item_url', ''),
(1194, 326, '_menu_item_type', 'taxonomy'),
(1195, 326, '_menu_item_menu_item_parent', '0'),
(1196, 326, '_menu_item_object_id', '38'),
(1197, 326, '_menu_item_object', 'product_tag'),
(1198, 326, '_menu_item_target', ''),
(1199, 326, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1200, 326, '_menu_item_xfn', ''),
(1201, 326, '_menu_item_url', ''),
(1203, 327, '_menu_item_type', 'taxonomy'),
(1204, 327, '_menu_item_menu_item_parent', '0'),
(1205, 327, '_menu_item_object_id', '33'),
(1206, 327, '_menu_item_object', 'product_tag'),
(1207, 327, '_menu_item_target', ''),
(1208, 327, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1209, 327, '_menu_item_xfn', ''),
(1210, 327, '_menu_item_url', ''),
(1212, 328, '_menu_item_type', 'taxonomy'),
(1213, 328, '_menu_item_menu_item_parent', '0'),
(1214, 328, '_menu_item_object_id', '34'),
(1215, 328, '_menu_item_object', 'product_tag'),
(1216, 328, '_menu_item_target', ''),
(1217, 328, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1218, 328, '_menu_item_xfn', ''),
(1219, 328, '_menu_item_url', ''),
(1221, 329, '_menu_item_type', 'taxonomy'),
(1222, 329, '_menu_item_menu_item_parent', '0'),
(1223, 329, '_menu_item_object_id', '37'),
(1224, 329, '_menu_item_object', 'product_tag'),
(1225, 329, '_menu_item_target', ''),
(1226, 329, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1227, 329, '_menu_item_xfn', ''),
(1228, 329, '_menu_item_url', ''),
(1230, 330, '_menu_item_type', 'taxonomy'),
(1231, 330, '_menu_item_menu_item_parent', '0'),
(1232, 330, '_menu_item_object_id', '31'),
(1233, 330, '_menu_item_object', 'product_tag'),
(1234, 330, '_menu_item_target', ''),
(1235, 330, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1236, 330, '_menu_item_xfn', ''),
(1237, 330, '_menu_item_url', ''),
(1239, 331, '_menu_item_type', 'taxonomy'),
(1240, 331, '_menu_item_menu_item_parent', '0'),
(1241, 331, '_menu_item_object_id', '36'),
(1242, 331, '_menu_item_object', 'product_tag'),
(1243, 331, '_menu_item_target', ''),
(1244, 331, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1245, 331, '_menu_item_xfn', ''),
(1246, 331, '_menu_item_url', ''),
(1248, 332, '_menu_item_type', 'taxonomy'),
(1249, 332, '_menu_item_menu_item_parent', '0'),
(1250, 332, '_menu_item_object_id', '35'),
(1251, 332, '_menu_item_object', 'product_tag'),
(1252, 332, '_menu_item_target', ''),
(1253, 332, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1254, 332, '_menu_item_xfn', ''),
(1255, 332, '_menu_item_url', ''),
(1257, 333, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]'),
(1258, 333, '_mail', 'a:8:{s:7:"subject";s:24:"barista "[your-subject]"";s:6:"sender";s:29:"barista <sinevor13@gmail.com>";s:4:"body";s:173:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on barista (http://localhost/wordpress4)";s:9:"recipient";s:19:"sinevor13@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(1259, 333, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:24:"barista "[your-subject]"";s:6:"sender";s:29:"barista <sinevor13@gmail.com>";s:4:"body";s:115:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on barista (http://localhost/wordpress4)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:29:"Reply-To: sinevor13@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(1260, 333, '_messages', 'a:8:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";}'),
(1261, 333, '_additional_settings', NULL),
(1262, 333, '_locale', 'en_US'),
(1263, 334, '_menu_item_type', 'post_type'),
(1264, 334, '_menu_item_menu_item_parent', '0'),
(1265, 334, '_menu_item_object_id', '11'),
(1266, 334, '_menu_item_object', 'page'),
(1267, 334, '_menu_item_target', ''),
(1268, 334, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1269, 334, '_menu_item_xfn', ''),
(1270, 334, '_menu_item_url', ''),
(1272, 335, '_edit_last', '1'),
(1273, 335, '_edit_lock', '1576839770:1'),
(1274, 335, '_thumbnail_id', '189'),
(1275, 335, '_regular_price', '24'),
(1276, 335, '_sale_price', '21'),
(1277, 335, 'total_sales', '0'),
(1278, 335, '_tax_status', 'taxable'),
(1279, 335, '_tax_class', ''),
(1280, 335, '_manage_stock', 'no'),
(1281, 335, '_backorders', 'no'),
(1282, 335, '_sold_individually', 'no'),
(1283, 335, '_virtual', 'no'),
(1284, 335, '_downloadable', 'no'),
(1285, 335, '_download_limit', '-1'),
(1286, 335, '_download_expiry', '-1'),
(1287, 335, '_stock', NULL),
(1288, 335, '_stock_status', 'instock'),
(1289, 335, '_wc_average_rating', '0'),
(1290, 335, '_wc_review_count', '0'),
(1291, 335, '_product_version', '3.8.1'),
(1292, 335, '_price', '21'),
(1293, 336, '_edit_last', '1'),
(1294, 336, '_edit_lock', '1576839874:1'),
(1295, 346, '_wp_attached_file', '2019/12/aluminum-scoop-12oz-350ml.jpg'),
(1296, 346, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:458;s:6:"height";i:458;s:4:"file";s:37:"2019/12/aluminum-scoop-12oz-350ml.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:37:"aluminum-scoop-12oz-350ml-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:37:"aluminum-scoop-12oz-350ml-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:37:"aluminum-scoop-12oz-350ml-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:37:"aluminum-scoop-12oz-350ml-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:37:"aluminum-scoop-12oz-350ml-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:37:"aluminum-scoop-12oz-350ml-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1297, 336, '_thumbnail_id', '346'),
(1298, 336, '_regular_price', '55'),
(1299, 336, '_sale_price', '23'),
(1300, 336, 'total_sales', '1'),
(1301, 336, '_tax_status', 'taxable'),
(1302, 336, '_tax_class', ''),
(1303, 336, '_manage_stock', 'no'),
(1304, 336, '_backorders', 'no'),
(1305, 336, '_sold_individually', 'no'),
(1306, 336, '_virtual', 'no'),
(1307, 336, '_downloadable', 'no'),
(1308, 336, '_download_limit', '-1'),
(1309, 336, '_download_expiry', '-1'),
(1310, 336, '_stock', NULL),
(1311, 336, '_stock_status', 'instock'),
(1312, 336, '_wc_average_rating', '0'),
(1313, 336, '_wc_review_count', '0'),
(1314, 336, '_product_version', '3.8.1'),
(1315, 336, '_price', '23'),
(1316, 337, '_edit_last', '1'),
(1317, 337, '_edit_lock', '1576839970:1'),
(1318, 347, '_wp_attached_file', '2019/12/hario-buono-v60-power-kettle-800ml.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1319, 347, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:46:"2019/12/hario-buono-v60-power-kettle-800ml.jpg";s:5:"sizes";a:9:{s:6:"medium";a:4:{s:4:"file";s:46:"hario-buono-v60-power-kettle-800ml-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:46:"hario-buono-v60-power-kettle-800ml-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:46:"hario-buono-v60-power-kettle-800ml-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:46:"hario-buono-v60-power-kettle-800ml-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:46:"hario-buono-v60-power-kettle-800ml-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:46:"hario-buono-v60-power-kettle-800ml-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:46:"hario-buono-v60-power-kettle-800ml-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:46:"hario-buono-v60-power-kettle-800ml-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:46:"hario-buono-v60-power-kettle-800ml-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1320, 337, '_thumbnail_id', '347'),
(1321, 337, '_regular_price', '34'),
(1322, 337, '_sale_price', '22'),
(1323, 337, 'total_sales', '0'),
(1324, 337, '_tax_status', 'taxable'),
(1325, 337, '_tax_class', ''),
(1326, 337, '_manage_stock', 'no'),
(1327, 337, '_backorders', 'no'),
(1328, 337, '_sold_individually', 'no'),
(1329, 337, '_virtual', 'no'),
(1330, 337, '_downloadable', 'no'),
(1331, 337, '_download_limit', '-1'),
(1332, 337, '_download_expiry', '-1'),
(1333, 337, '_stock', NULL),
(1334, 337, '_stock_status', 'instock'),
(1335, 337, '_wc_average_rating', '0'),
(1336, 337, '_wc_review_count', '0'),
(1337, 337, '_product_version', '3.8.1'),
(1338, 337, '_price', '22'),
(1339, 338, '_edit_last', '1'),
(1340, 338, '_edit_lock', '1576840353:1'),
(1341, 348, '_wp_attached_file', '2019/12/hario-one-cup-tea-maker-200ml.jpg'),
(1342, 348, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:458;s:6:"height";i:458;s:4:"file";s:41:"2019/12/hario-one-cup-tea-maker-200ml.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:41:"hario-one-cup-tea-maker-200ml-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:41:"hario-one-cup-tea-maker-200ml-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:41:"hario-one-cup-tea-maker-200ml-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:41:"hario-one-cup-tea-maker-200ml-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:41:"hario-one-cup-tea-maker-200ml-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:41:"hario-one-cup-tea-maker-200ml-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1343, 338, '_thumbnail_id', '348'),
(1344, 338, '_regular_price', '45'),
(1345, 338, '_sale_price', '23'),
(1346, 338, 'total_sales', '0'),
(1347, 338, '_tax_status', 'taxable'),
(1348, 338, '_tax_class', ''),
(1349, 338, '_manage_stock', 'no'),
(1350, 338, '_backorders', 'no'),
(1351, 338, '_sold_individually', 'no'),
(1352, 338, '_virtual', 'no'),
(1353, 338, '_downloadable', 'no'),
(1354, 338, '_download_limit', '-1'),
(1355, 338, '_download_expiry', '-1'),
(1356, 338, '_stock', NULL),
(1357, 338, '_stock_status', 'instock'),
(1358, 338, '_wc_average_rating', '0'),
(1359, 338, '_wc_review_count', '0'),
(1360, 338, '_product_version', '3.8.1'),
(1361, 338, '_price', '23'),
(1362, 339, '_edit_last', '1'),
(1363, 339, '_edit_lock', '1576841268:1'),
(1364, 349, '_wp_attached_file', '2019/12/belogia-milk-pitcher-mpt-100-600ml.jpg'),
(1365, 349, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:458;s:6:"height";i:458;s:4:"file";s:46:"2019/12/belogia-milk-pitcher-mpt-100-600ml.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:46:"belogia-milk-pitcher-mpt-100-600ml-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:46:"belogia-milk-pitcher-mpt-100-600ml-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:46:"belogia-milk-pitcher-mpt-100-600ml-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:46:"belogia-milk-pitcher-mpt-100-600ml-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:46:"belogia-milk-pitcher-mpt-100-600ml-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:46:"belogia-milk-pitcher-mpt-100-600ml-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1366, 339, '_thumbnail_id', '349'),
(1367, 339, '_regular_price', '56'),
(1368, 339, '_sale_price', '34'),
(1369, 339, 'total_sales', '0'),
(1370, 339, '_tax_status', 'taxable'),
(1371, 339, '_tax_class', ''),
(1372, 339, '_manage_stock', 'no'),
(1373, 339, '_backorders', 'no'),
(1374, 339, '_sold_individually', 'no'),
(1375, 339, '_virtual', 'no'),
(1376, 339, '_downloadable', 'no'),
(1377, 339, '_download_limit', '-1'),
(1378, 339, '_download_expiry', '-1'),
(1379, 339, '_stock', NULL),
(1380, 339, '_stock_status', 'instock'),
(1381, 339, '_wc_average_rating', '0'),
(1382, 339, '_wc_review_count', '0'),
(1383, 339, '_product_version', '3.8.1'),
(1384, 339, '_price', '34'),
(1385, 340, '_edit_last', '1'),
(1386, 340, '_edit_lock', '1576840663:1'),
(1387, 350, '_wp_attached_file', '2019/12/belogia-milk-pitcher-teflon-350ml.jpg'),
(1388, 350, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:458;s:6:"height";i:458;s:4:"file";s:45:"2019/12/belogia-milk-pitcher-teflon-350ml.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:45:"belogia-milk-pitcher-teflon-350ml-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"belogia-milk-pitcher-teflon-350ml-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:45:"belogia-milk-pitcher-teflon-350ml-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:45:"belogia-milk-pitcher-teflon-350ml-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:45:"belogia-milk-pitcher-teflon-350ml-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:45:"belogia-milk-pitcher-teflon-350ml-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1389, 340, '_thumbnail_id', '350'),
(1390, 340, '_regular_price', '12'),
(1391, 340, 'total_sales', '0'),
(1392, 340, '_tax_status', 'taxable'),
(1393, 340, '_tax_class', ''),
(1394, 340, '_manage_stock', 'no'),
(1395, 340, '_backorders', 'no'),
(1396, 340, '_sold_individually', 'no'),
(1397, 340, '_virtual', 'no'),
(1398, 340, '_downloadable', 'no'),
(1399, 340, '_download_limit', '-1'),
(1400, 340, '_download_expiry', '-1'),
(1401, 340, '_stock', NULL),
(1402, 340, '_stock_status', 'instock'),
(1403, 340, '_wc_average_rating', '0'),
(1404, 340, '_wc_review_count', '0'),
(1405, 340, '_product_version', '3.8.1'),
(1406, 340, '_price', '12'),
(1407, 341, '_edit_last', '1'),
(1408, 341, '_edit_lock', '1576840740:1'),
(1409, 351, '_wp_attached_file', '2019/12/belogia-milk-pitcher-mpt-110-590ml.jpg'),
(1410, 351, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:458;s:6:"height";i:458;s:4:"file";s:46:"2019/12/belogia-milk-pitcher-mpt-110-590ml.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:46:"belogia-milk-pitcher-mpt-110-590ml-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:46:"belogia-milk-pitcher-mpt-110-590ml-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:46:"belogia-milk-pitcher-mpt-110-590ml-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:46:"belogia-milk-pitcher-mpt-110-590ml-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:46:"belogia-milk-pitcher-mpt-110-590ml-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:46:"belogia-milk-pitcher-mpt-110-590ml-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1411, 341, '_thumbnail_id', '351'),
(1412, 341, '_regular_price', '21'),
(1413, 341, 'total_sales', '0'),
(1414, 341, '_tax_status', 'taxable'),
(1415, 341, '_tax_class', ''),
(1416, 341, '_manage_stock', 'no'),
(1417, 341, '_backorders', 'no'),
(1418, 341, '_sold_individually', 'no'),
(1419, 341, '_virtual', 'no'),
(1420, 341, '_downloadable', 'no'),
(1421, 341, '_download_limit', '-1'),
(1422, 341, '_download_expiry', '-1'),
(1423, 341, '_stock', NULL),
(1424, 341, '_stock_status', 'instock'),
(1425, 341, '_wc_average_rating', '0'),
(1426, 341, '_wc_review_count', '0'),
(1427, 341, '_product_version', '3.8.1'),
(1428, 341, '_price', '21'),
(1429, 342, '_edit_last', '1'),
(1430, 342, '_edit_lock', '1576840824:1'),
(1431, 352, '_wp_attached_file', '2019/12/belogia-milk-pitcher-mpt-130-transparent-red-350ml.jpg'),
(1432, 352, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:458;s:6:"height";i:458;s:4:"file";s:62:"2019/12/belogia-milk-pitcher-mpt-130-transparent-red-350ml.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:62:"belogia-milk-pitcher-mpt-130-transparent-red-350ml-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:62:"belogia-milk-pitcher-mpt-130-transparent-red-350ml-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:62:"belogia-milk-pitcher-mpt-130-transparent-red-350ml-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:62:"belogia-milk-pitcher-mpt-130-transparent-red-350ml-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:62:"belogia-milk-pitcher-mpt-130-transparent-red-350ml-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:62:"belogia-milk-pitcher-mpt-130-transparent-red-350ml-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1433, 342, '_thumbnail_id', '352'),
(1434, 342, '_regular_price', '67'),
(1435, 342, 'total_sales', '0'),
(1436, 342, '_tax_status', 'taxable'),
(1437, 342, '_tax_class', ''),
(1438, 342, '_manage_stock', 'no'),
(1439, 342, '_backorders', 'no'),
(1440, 342, '_sold_individually', 'no'),
(1441, 342, '_virtual', 'no'),
(1442, 342, '_downloadable', 'no'),
(1443, 342, '_download_limit', '-1'),
(1444, 342, '_download_expiry', '-1'),
(1445, 342, '_stock', NULL),
(1446, 342, '_stock_status', 'instock'),
(1447, 342, '_wc_average_rating', '0'),
(1448, 342, '_wc_review_count', '0'),
(1449, 342, '_product_version', '3.8.1'),
(1450, 342, '_price', '67'),
(1451, 345, '_edit_last', '1'),
(1452, 345, '_edit_lock', '1576840874:1'),
(1453, 353, '_wp_attached_file', '2019/12/barista-shop-stainless-steel-coffee-spoon-7g.jpg'),
(1454, 353, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:458;s:6:"height";i:458;s:4:"file";s:56:"2019/12/barista-shop-stainless-steel-coffee-spoon-7g.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:56:"barista-shop-stainless-steel-coffee-spoon-7g-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:56:"barista-shop-stainless-steel-coffee-spoon-7g-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:56:"barista-shop-stainless-steel-coffee-spoon-7g-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:56:"barista-shop-stainless-steel-coffee-spoon-7g-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:56:"barista-shop-stainless-steel-coffee-spoon-7g-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:56:"barista-shop-stainless-steel-coffee-spoon-7g-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1455, 345, '_thumbnail_id', '353'),
(1456, 345, '_regular_price', '4'),
(1457, 345, 'total_sales', '0'),
(1458, 345, '_tax_status', 'taxable'),
(1459, 345, '_tax_class', ''),
(1460, 345, '_manage_stock', 'no'),
(1461, 345, '_backorders', 'no'),
(1462, 345, '_sold_individually', 'no'),
(1463, 345, '_virtual', 'no'),
(1464, 345, '_downloadable', 'no'),
(1465, 345, '_download_limit', '-1'),
(1466, 345, '_download_expiry', '-1'),
(1467, 345, '_stock', NULL),
(1468, 345, '_stock_status', 'instock'),
(1469, 345, '_wc_average_rating', '0'),
(1470, 345, '_wc_review_count', '0'),
(1471, 345, '_product_version', '3.8.1'),
(1472, 345, '_price', '4'),
(1473, 343, '_edit_last', '1'),
(1474, 343, '_edit_lock', '1576840945:1'),
(1475, 354, '_wp_attached_file', '2019/12/belogia-milk-pitcher-silicon-mpt-160-590ml.jpg'),
(1476, 354, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:458;s:6:"height";i:458;s:4:"file";s:54:"2019/12/belogia-milk-pitcher-silicon-mpt-160-590ml.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:54:"belogia-milk-pitcher-silicon-mpt-160-590ml-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:54:"belogia-milk-pitcher-silicon-mpt-160-590ml-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:54:"belogia-milk-pitcher-silicon-mpt-160-590ml-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:54:"belogia-milk-pitcher-silicon-mpt-160-590ml-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:54:"belogia-milk-pitcher-silicon-mpt-160-590ml-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:54:"belogia-milk-pitcher-silicon-mpt-160-590ml-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1477, 343, '_thumbnail_id', '354'),
(1478, 343, '_regular_price', '14'),
(1479, 343, 'total_sales', '0'),
(1480, 343, '_tax_status', 'taxable'),
(1481, 343, '_tax_class', ''),
(1482, 343, '_manage_stock', 'no'),
(1483, 343, '_backorders', 'no'),
(1484, 343, '_sold_individually', 'no'),
(1485, 343, '_virtual', 'no'),
(1486, 343, '_downloadable', 'no'),
(1487, 343, '_download_limit', '-1'),
(1488, 343, '_download_expiry', '-1'),
(1489, 343, '_stock', NULL),
(1490, 343, '_stock_status', 'instock'),
(1491, 343, '_wc_average_rating', '0'),
(1492, 343, '_wc_review_count', '0'),
(1493, 343, '_product_version', '3.8.1'),
(1494, 343, '_price', '14'),
(1495, 344, '_edit_last', '1'),
(1496, 344, '_edit_lock', '1576841263:1'),
(1497, 355, '_wp_attached_file', '2019/12/bar-organiser-black.jpg'),
(1498, 355, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:458;s:6:"height";i:458;s:4:"file";s:31:"2019/12/bar-organiser-black.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:31:"bar-organiser-black-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:31:"bar-organiser-black-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:31:"bar-organiser-black-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:31:"bar-organiser-black-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"bar-organiser-black-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"bar-organiser-black-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1499, 344, '_thumbnail_id', '355'),
(1500, 344, '_regular_price', '23'),
(1501, 344, 'total_sales', '0'),
(1502, 344, '_tax_status', 'taxable'),
(1503, 344, '_tax_class', ''),
(1504, 344, '_manage_stock', 'no'),
(1505, 344, '_backorders', 'no'),
(1506, 344, '_sold_individually', 'no'),
(1507, 344, '_virtual', 'no'),
(1508, 344, '_downloadable', 'no'),
(1509, 344, '_download_limit', '-1'),
(1510, 344, '_download_expiry', '-1'),
(1511, 344, '_stock', NULL),
(1512, 344, '_stock_status', 'instock'),
(1513, 344, '_wc_average_rating', '0'),
(1514, 344, '_wc_review_count', '0'),
(1515, 344, '_product_version', '3.8.1'),
(1516, 344, '_price', '23'),
(1517, 357, '_order_key', 'wc_order_WOwPkQ7PrewA7'),
(1518, 357, '_customer_user', '0'),
(1519, 357, '_payment_method', 'bacs'),
(1520, 357, '_payment_method_title', 'Direct bank transfer'),
(1521, 357, '_customer_ip_address', '::1'),
(1522, 357, '_customer_user_agent', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36'),
(1523, 357, '_created_via', 'checkout'),
(1524, 357, '_cart_hash', '9ec4f837e0c2fe68a9b31e413210d0a2'),
(1525, 357, '_billing_first_name', 'afd'),
(1526, 357, '_billing_last_name', 'asfdv'),
(1527, 357, '_billing_company', 'afdvasef'),
(1528, 357, '_billing_address_1', 'aerdsfsef'),
(1529, 357, '_billing_address_2', 'aserfsaef'),
(1530, 357, '_billing_city', 'aerfsezf'),
(1531, 357, '_billing_state', 'sergfvsd'),
(1532, 357, '_billing_postcode', '3453'),
(1533, 357, '_billing_country', 'UA'),
(1534, 357, '_billing_email', 'serfgs@rsthdrh.edrgse'),
(1535, 357, '_billing_phone', '345345'),
(1536, 357, '_order_currency', 'UAH'),
(1537, 357, '_cart_discount', '0'),
(1538, 357, '_cart_discount_tax', '0'),
(1539, 357, '_order_shipping', '0.00'),
(1540, 357, '_order_shipping_tax', '0'),
(1541, 357, '_order_tax', '0'),
(1542, 357, '_order_total', '23.00'),
(1543, 357, '_order_version', '3.8.1'),
(1544, 357, '_prices_include_tax', 'no'),
(1545, 357, '_billing_address_index', 'afd asfdv afdvasef aerdsfsef aserfsaef aerfsezf sergfvsd 3453 UA serfgs@rsthdrh.edrgse 345345'),
(1546, 357, '_shipping_address_index', '        '),
(1547, 357, 'is_vat_exempt', 'no'),
(1548, 357, '_recorded_sales', 'yes'),
(1549, 357, '_recorded_coupon_usage_counts', 'yes'),
(1550, 357, '_order_stock_reduced', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
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
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-12-20 09:20:59', '2019-12-20 09:20:59', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-12-20 09:20:59', '2019-12-20 09:20:59', '', 0, 'http://localhost/wordpress4/?p=1', 0, 'post', '', 1),
(2, 1, '2019-12-20 09:20:59', '2019-12-20 09:20:59', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://localhost/wordpress4/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-12-20 09:20:59', '2019-12-20 09:20:59', '', 0, 'http://localhost/wordpress4/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-12-20 09:20:59', '2019-12-20 09:20:59', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/wordpress4.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-12-20 09:20:59', '2019-12-20 09:20:59', '', 0, 'http://localhost/wordpress4/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-12-20 09:25:48', '2019-12-20 09:25:48', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2019-12-20 09:25:48', '2019-12-20 09:25:48', '', 0, 'http://localhost/wordpress4/wp-content/uploads/2019/12/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2019-12-20 09:26:18', '2019-12-20 09:26:18', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2019-12-20 09:26:18', '2019-12-20 09:26:18', '', 0, 'http://localhost/wordpress4/index.php/shop/', 0, 'page', '', 0),
(7, 1, '2019-12-20 09:26:18', '2019-12-20 09:26:18', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2019-12-20 09:26:18', '2019-12-20 09:26:18', '', 0, 'http://localhost/wordpress4/index.php/cart/', 0, 'page', '', 0),
(8, 1, '2019-12-20 09:26:18', '2019-12-20 09:26:18', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2019-12-20 09:26:18', '2019-12-20 09:26:18', '', 0, 'http://localhost/wordpress4/index.php/checkout/', 0, 'page', '', 0),
(9, 1, '2019-12-20 09:26:18', '2019-12-20 09:26:18', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2019-12-20 09:26:18', '2019-12-20 09:26:18', '', 0, 'http://localhost/wordpress4/index.php/my-account/', 0, 'page', '', 0),
(11, 1, '2019-12-20 10:01:29', '2019-12-20 10:01:29', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-12-20 10:36:07', '2019-12-20 10:36:07', '', 0, 'http://localhost/wordpress4/?page_id=11', 0, 'page', '', 0),
(12, 1, '2019-12-20 10:01:29', '2019-12-20 10:01:29', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-12-20 10:01:29', '2019-12-20 10:01:29', '', 11, 'http://localhost/wordpress4/index.php/2019/12/20/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-12-20 10:01:51', '2019-12-20 10:01:51', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-12-20 10:01:51', '2019-12-20 10:01:51', '', 0, 'http://localhost/wordpress4/?page_id=13', 0, 'page', '', 0),
(14, 1, '2019-12-20 10:01:51', '2019-12-20 10:01:51', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-12-20 10:01:51', '2019-12-20 10:01:51', '', 13, 'http://localhost/wordpress4/index.php/2019/12/20/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-12-20 10:02:19', '2019-12-20 10:02:19', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"11";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Home Page', 'home-page', 'publish', 'closed', 'closed', '', 'group_5dfc9c1b4d029', '', '', '2019-12-20 10:34:17', '2019-12-20 10:34:17', '', 0, 'http://localhost/wordpress4/?post_type=acf-field-group&#038;p=15', 0, 'acf-field-group', '', 0),
(16, 1, '2019-12-20 10:03:22', '2019-12-20 10:03:22', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Banner1', 'banner1', 'publish', 'closed', 'closed', '', 'field_5dfc9c3c230b9', '', '', '2019-12-20 10:03:50', '2019-12-20 10:03:50', '', 15, 'http://localhost/wordpress4/?post_type=acf-field&#038;p=16', 0, 'acf-field', '', 0),
(17, 1, '2019-12-20 10:03:22', '2019-12-20 10:03:22', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Banner2', 'banner2', 'publish', 'closed', 'closed', '', 'field_5dfc9c47230ba', '', '', '2019-12-20 10:03:22', '2019-12-20 10:03:22', '', 15, 'http://localhost/wordpress4/?post_type=acf-field&p=17', 1, 'acf-field', '', 0),
(18, 1, '2019-12-20 10:03:22', '2019-12-20 10:03:22', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Banner3', 'banner3', 'publish', 'closed', 'closed', '', 'field_5dfc9c53230bb', '', '', '2019-12-20 10:03:22', '2019-12-20 10:03:22', '', 15, 'http://localhost/wordpress4/?post_type=acf-field&p=18', 2, 'acf-field', '', 0),
(19, 1, '2019-12-20 10:03:22', '2019-12-20 10:03:22', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Banner4', 'banner4', 'publish', 'closed', 'closed', '', 'field_5dfc9c5d230bc', '', '', '2019-12-20 10:03:22', '2019-12-20 10:03:22', '', 15, 'http://localhost/wordpress4/?post_type=acf-field&p=19', 3, 'acf-field', '', 0),
(20, 1, '2019-12-20 10:04:22', '2019-12-20 10:04:22', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'field_5dfc9c9ad7fdb', '', '', '2019-12-20 10:04:22', '2019-12-20 10:04:22', '', 15, 'http://localhost/wordpress4/?post_type=acf-field&p=20', 4, 'acf-field', '', 0),
(21, 1, '2019-12-20 10:06:06', '2019-12-20 10:06:06', '', 'free-shipping', '', 'inherit', 'open', 'closed', '', 'free-shipping', '', '', '2019-12-20 10:06:06', '2019-12-20 10:06:06', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/free-shipping-1.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2019-12-20 10:06:06', '2019-12-20 10:06:06', '', 'brand8-300x300', '', 'inherit', 'open', 'closed', '', 'brand8-300x300', '', '', '2019-12-20 10:06:06', '2019-12-20 10:06:06', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand8-300x300-1.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2019-12-20 10:06:07', '2019-12-20 10:06:07', '', 'brand8-250x250', '', 'inherit', 'open', 'closed', '', 'brand8-250x250', '', '', '2019-12-20 10:06:07', '2019-12-20 10:06:07', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand8-250x250-1.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2019-12-20 10:06:07', '2019-12-20 10:06:07', '', 'brand8-200x200', '', 'inherit', 'open', 'closed', '', 'brand8-200x200', '', '', '2019-12-20 10:06:07', '2019-12-20 10:06:07', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand8-200x200-1.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2019-12-20 10:06:08', '2019-12-20 10:06:08', '', 'brand8-150x150', '', 'inherit', 'open', 'closed', '', 'brand8-150x150', '', '', '2019-12-20 10:06:08', '2019-12-20 10:06:08', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand8-150x150-1.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2019-12-20 10:06:08', '2019-12-20 10:06:08', '', 'brand8-100x100', '', 'inherit', 'open', 'closed', '', 'brand8-100x100', '', '', '2019-12-20 10:06:08', '2019-12-20 10:06:08', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand8-100x100-1.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2019-12-20 10:06:08', '2019-12-20 10:06:08', '', 'brand8', '', 'inherit', 'open', 'closed', '', 'brand8', '', '', '2019-12-20 10:06:08', '2019-12-20 10:06:08', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand8-1.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2019-12-20 10:06:09', '2019-12-20 10:06:09', '', 'brand7-300x300', '', 'inherit', 'open', 'closed', '', 'brand7-300x300', '', '', '2019-12-20 10:06:09', '2019-12-20 10:06:09', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand7-300x300-1.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2019-12-20 10:06:10', '2019-12-20 10:06:10', '', 'brand7-250x250', '', 'inherit', 'open', 'closed', '', 'brand7-250x250', '', '', '2019-12-20 10:06:10', '2019-12-20 10:06:10', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand7-250x250-1.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2019-12-20 10:06:10', '2019-12-20 10:06:10', '', 'brand7-200x200', '', 'inherit', 'open', 'closed', '', 'brand7-200x200', '', '', '2019-12-20 10:06:10', '2019-12-20 10:06:10', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand7-200x200-1.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2019-12-20 10:06:10', '2019-12-20 10:06:10', '', 'brand7-150x150', '', 'inherit', 'open', 'closed', '', 'brand7-150x150', '', '', '2019-12-20 10:06:10', '2019-12-20 10:06:10', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand7-150x150-1.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2019-12-20 10:06:11', '2019-12-20 10:06:11', '', 'brand7-100x100', '', 'inherit', 'open', 'closed', '', 'brand7-100x100', '', '', '2019-12-20 10:06:11', '2019-12-20 10:06:11', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand7-100x100-1.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2019-12-20 10:06:11', '2019-12-20 10:06:11', '', 'brand7', '', 'inherit', 'open', 'closed', '', 'brand7', '', '', '2019-12-20 10:06:11', '2019-12-20 10:06:11', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand7-1.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2019-12-20 10:06:12', '2019-12-20 10:06:12', '', 'brand6-300x300', '', 'inherit', 'open', 'closed', '', 'brand6-300x300', '', '', '2019-12-20 10:06:12', '2019-12-20 10:06:12', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand6-300x300-1.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2019-12-20 10:06:12', '2019-12-20 10:06:12', '', 'brand6-250x250', '', 'inherit', 'open', 'closed', '', 'brand6-250x250', '', '', '2019-12-20 10:06:12', '2019-12-20 10:06:12', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand6-250x250-1.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2019-12-20 10:06:13', '2019-12-20 10:06:13', '', 'brand6-200x200', '', 'inherit', 'open', 'closed', '', 'brand6-200x200', '', '', '2019-12-20 10:06:13', '2019-12-20 10:06:13', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand6-200x200-1.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2019-12-20 10:06:13', '2019-12-20 10:06:13', '', 'brand6-150x150', '', 'inherit', 'open', 'closed', '', 'brand6-150x150', '', '', '2019-12-20 10:06:13', '2019-12-20 10:06:13', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand6-150x150-1.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2019-12-20 10:06:13', '2019-12-20 10:06:13', '', 'brand6-100x100', '', 'inherit', 'open', 'closed', '', 'brand6-100x100', '', '', '2019-12-20 10:06:13', '2019-12-20 10:06:13', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand6-100x100-1.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2019-12-20 10:06:14', '2019-12-20 10:06:14', '', 'brand6', '', 'inherit', 'open', 'closed', '', 'brand6', '', '', '2019-12-20 10:06:14', '2019-12-20 10:06:14', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand6-1.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2019-12-20 10:06:15', '2019-12-20 10:06:15', '', 'brand5-300x300', '', 'inherit', 'open', 'closed', '', 'brand5-300x300', '', '', '2019-12-20 10:06:15', '2019-12-20 10:06:15', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand5-300x300-1.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2019-12-20 10:06:15', '2019-12-20 10:06:15', '', 'brand5-250x250', '', 'inherit', 'open', 'closed', '', 'brand5-250x250', '', '', '2019-12-20 10:06:15', '2019-12-20 10:06:15', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand5-250x250-1.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2019-12-20 10:06:16', '2019-12-20 10:06:16', '', 'brand5-200x200', '', 'inherit', 'open', 'closed', '', 'brand5-200x200', '', '', '2019-12-20 10:06:16', '2019-12-20 10:06:16', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand5-200x200-1.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2019-12-20 10:06:17', '2019-12-20 10:06:17', '', 'brand5-150x150', '', 'inherit', 'open', 'closed', '', 'brand5-150x150', '', '', '2019-12-20 10:06:17', '2019-12-20 10:06:17', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand5-150x150-1.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2019-12-20 10:06:18', '2019-12-20 10:06:18', '', 'brand5-100x100', '', 'inherit', 'open', 'closed', '', 'brand5-100x100', '', '', '2019-12-20 10:06:18', '2019-12-20 10:06:18', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand5-100x100-1.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2019-12-20 10:06:19', '2019-12-20 10:06:19', '', 'brand5', '', 'inherit', 'open', 'closed', '', 'brand5', '', '', '2019-12-20 10:06:19', '2019-12-20 10:06:19', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand5-1.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2019-12-20 10:06:20', '2019-12-20 10:06:20', '', 'brand4-300x300', '', 'inherit', 'open', 'closed', '', 'brand4-300x300', '', '', '2019-12-20 10:06:20', '2019-12-20 10:06:20', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand4-300x300-1.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2019-12-20 10:06:21', '2019-12-20 10:06:21', '', 'brand4-250x250', '', 'inherit', 'open', 'closed', '', 'brand4-250x250', '', '', '2019-12-20 10:06:21', '2019-12-20 10:06:21', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand4-250x250-1.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2019-12-20 10:06:22', '2019-12-20 10:06:22', '', 'brand4-200x200', '', 'inherit', 'open', 'closed', '', 'brand4-200x200', '', '', '2019-12-20 10:06:22', '2019-12-20 10:06:22', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand4-200x200-1.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2019-12-20 10:06:23', '2019-12-20 10:06:23', '', 'brand4-150x150', '', 'inherit', 'open', 'closed', '', 'brand4-150x150', '', '', '2019-12-20 10:06:23', '2019-12-20 10:06:23', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand4-150x150-1.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2019-12-20 10:06:24', '2019-12-20 10:06:24', '', 'brand4-100x100', '', 'inherit', 'open', 'closed', '', 'brand4-100x100', '', '', '2019-12-20 10:06:24', '2019-12-20 10:06:24', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand4-100x100-1.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2019-12-20 10:06:24', '2019-12-20 10:06:24', '', 'brand4', '', 'inherit', 'open', 'closed', '', 'brand4', '', '', '2019-12-20 10:06:24', '2019-12-20 10:06:24', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand4-1.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2019-12-20 10:06:26', '2019-12-20 10:06:26', '', 'brand3-300x300', '', 'inherit', 'open', 'closed', '', 'brand3-300x300', '', '', '2019-12-20 10:06:26', '2019-12-20 10:06:26', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand3-300x300-1.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2019-12-20 10:06:27', '2019-12-20 10:06:27', '', 'brand3-250x250', '', 'inherit', 'open', 'closed', '', 'brand3-250x250', '', '', '2019-12-20 10:06:27', '2019-12-20 10:06:27', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand3-250x250-1.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2019-12-20 10:06:28', '2019-12-20 10:06:28', '', 'brand3-200x200', '', 'inherit', 'open', 'closed', '', 'brand3-200x200', '', '', '2019-12-20 10:06:28', '2019-12-20 10:06:28', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand3-200x200-1.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2019-12-20 10:06:29', '2019-12-20 10:06:29', '', 'brand3-150x150', '', 'inherit', 'open', 'closed', '', 'brand3-150x150', '', '', '2019-12-20 10:06:29', '2019-12-20 10:06:29', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand3-150x150-1.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2019-12-20 10:06:29', '2019-12-20 10:06:29', '', 'brand3-100x100', '', 'inherit', 'open', 'closed', '', 'brand3-100x100', '', '', '2019-12-20 10:06:29', '2019-12-20 10:06:29', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand3-100x100-1.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2019-12-20 10:06:30', '2019-12-20 10:06:30', '', 'brand3', '', 'inherit', 'open', 'closed', '', 'brand3', '', '', '2019-12-20 10:06:30', '2019-12-20 10:06:30', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand3-1.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2019-12-20 10:06:32', '2019-12-20 10:06:32', '', 'brand2-300x300', '', 'inherit', 'open', 'closed', '', 'brand2-300x300', '', '', '2019-12-20 10:06:32', '2019-12-20 10:06:32', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand2-300x300-1.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2019-12-20 10:06:32', '2019-12-20 10:06:32', '', 'brand2-250x250', '', 'inherit', 'open', 'closed', '', 'brand2-250x250', '', '', '2019-12-20 10:06:32', '2019-12-20 10:06:32', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand2-250x250-1.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2019-12-20 10:06:34', '2019-12-20 10:06:34', '', 'brand2-200x200', '', 'inherit', 'open', 'closed', '', 'brand2-200x200', '', '', '2019-12-20 10:06:34', '2019-12-20 10:06:34', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand2-200x200-1.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2019-12-20 10:06:34', '2019-12-20 10:06:34', '', 'brand2-150x150', '', 'inherit', 'open', 'closed', '', 'brand2-150x150', '', '', '2019-12-20 10:06:34', '2019-12-20 10:06:34', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand2-150x150-1.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2019-12-20 10:06:35', '2019-12-20 10:06:35', '', 'brand2-100x100', '', 'inherit', 'open', 'closed', '', 'brand2-100x100', '', '', '2019-12-20 10:06:35', '2019-12-20 10:06:35', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand2-100x100-1.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2019-12-20 10:06:36', '2019-12-20 10:06:36', '', 'brand2', '', 'inherit', 'open', 'closed', '', 'brand2', '', '', '2019-12-20 10:06:36', '2019-12-20 10:06:36', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand2-1.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2019-12-20 10:06:38', '2019-12-20 10:06:38', '', 'brand1-300x300', '', 'inherit', 'open', 'closed', '', 'brand1-300x300', '', '', '2019-12-20 10:06:38', '2019-12-20 10:06:38', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand1-300x300-1.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2019-12-20 10:06:38', '2019-12-20 10:06:38', '', 'brand1-250x250', '', 'inherit', 'open', 'closed', '', 'brand1-250x250', '', '', '2019-12-20 10:06:38', '2019-12-20 10:06:38', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand1-250x250-1.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2019-12-20 10:06:40', '2019-12-20 10:06:40', '', 'brand1-200x200', '', 'inherit', 'open', 'closed', '', 'brand1-200x200', '', '', '2019-12-20 10:06:40', '2019-12-20 10:06:40', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand1-200x200-1.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2019-12-20 10:06:41', '2019-12-20 10:06:41', '', 'brand1-150x150', '', 'inherit', 'open', 'closed', '', 'brand1-150x150', '', '', '2019-12-20 10:06:41', '2019-12-20 10:06:41', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand1-150x150-1.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2019-12-20 10:06:42', '2019-12-20 10:06:42', '', 'brand1-100x100', '', 'inherit', 'open', 'closed', '', 'brand1-100x100', '', '', '2019-12-20 10:06:42', '2019-12-20 10:06:42', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand1-100x100-1.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2019-12-20 10:06:42', '2019-12-20 10:06:42', '', 'brand1-1-300x300', '', 'inherit', 'open', 'closed', '', 'brand1-1-300x300', '', '', '2019-12-20 10:06:42', '2019-12-20 10:06:42', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand1-1-300x300-1.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2019-12-20 10:06:43', '2019-12-20 10:06:43', '', 'brand1-1-250x250', '', 'inherit', 'open', 'closed', '', 'brand1-1-250x250', '', '', '2019-12-20 10:06:43', '2019-12-20 10:06:43', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand1-1-250x250-1.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2019-12-20 10:06:44', '2019-12-20 10:06:44', '', 'brand1-1-200x200', '', 'inherit', 'open', 'closed', '', 'brand1-1-200x200', '', '', '2019-12-20 10:06:44', '2019-12-20 10:06:44', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand1-1-200x200-1.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2019-12-20 10:06:46', '2019-12-20 10:06:46', '', 'brand1-1-150x150', '', 'inherit', 'open', 'closed', '', 'brand1-1-150x150', '', '', '2019-12-20 10:06:46', '2019-12-20 10:06:46', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand1-1-150x150-1.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2019-12-20 10:06:47', '2019-12-20 10:06:47', '', 'brand1-1-100x100', '', 'inherit', 'open', 'closed', '', 'brand1-1-100x100', '', '', '2019-12-20 10:06:47', '2019-12-20 10:06:47', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand1-1-100x100-1.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2019-12-20 10:06:48', '2019-12-20 10:06:48', '', 'brand1-1', '', 'inherit', 'open', 'closed', '', 'brand1-1', '', '', '2019-12-20 10:06:48', '2019-12-20 10:06:48', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand1-1-1.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2019-12-20 10:06:48', '2019-12-20 10:06:48', '', 'brand1', '', 'inherit', 'open', 'closed', '', 'brand1', '', '', '2019-12-20 10:06:48', '2019-12-20 10:06:48', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/brand1-2.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2019-12-20 10:06:50', '2019-12-20 10:06:50', '', 'bl5-1024x683', '', 'inherit', 'open', 'closed', '', 'bl5-1024x683', '', '', '2019-12-20 10:06:50', '2019-12-20 10:06:50', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl5-1024x683-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2019-12-20 10:06:52', '2019-12-20 10:06:52', '', 'bl5-768x512', '', 'inherit', 'open', 'closed', '', 'bl5-768x512', '', '', '2019-12-20 10:06:52', '2019-12-20 10:06:52', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl5-768x512-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2019-12-20 10:06:52', '2019-12-20 10:06:52', '', 'bl5-600x400', '', 'inherit', 'open', 'closed', '', 'bl5-600x400', '', '', '2019-12-20 10:06:52', '2019-12-20 10:06:52', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl5-600x400-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2019-12-20 10:06:54', '2019-12-20 10:06:54', '', 'bl5-500x333', '', 'inherit', 'open', 'closed', '', 'bl5-500x333', '', '', '2019-12-20 10:06:54', '2019-12-20 10:06:54', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl5-500x333-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2019-12-20 10:06:54', '2019-12-20 10:06:54', '', 'bl5-300x300', '', 'inherit', 'open', 'closed', '', 'bl5-300x300', '', '', '2019-12-20 10:06:54', '2019-12-20 10:06:54', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl5-300x300-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2019-12-20 10:06:56', '2019-12-20 10:06:56', '', 'bl5-300x200', '', 'inherit', 'open', 'closed', '', 'bl5-300x200', '', '', '2019-12-20 10:06:56', '2019-12-20 10:06:56', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl5-300x200-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2019-12-20 10:06:57', '2019-12-20 10:06:57', '', 'bl5-250x250', '', 'inherit', 'open', 'closed', '', 'bl5-250x250', '', '', '2019-12-20 10:06:57', '2019-12-20 10:06:57', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl5-250x250-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2019-12-20 10:06:58', '2019-12-20 10:06:58', '', 'bl5-200x200', '', 'inherit', 'open', 'closed', '', 'bl5-200x200', '', '', '2019-12-20 10:06:58', '2019-12-20 10:06:58', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl5-200x200-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2019-12-20 10:06:59', '2019-12-20 10:06:59', '', 'bl5-150x150', '', 'inherit', 'open', 'closed', '', 'bl5-150x150', '', '', '2019-12-20 10:06:59', '2019-12-20 10:06:59', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl5-150x150-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2019-12-20 10:06:59', '2019-12-20 10:06:59', '', 'bl5-100x100', '', 'inherit', 'open', 'closed', '', 'bl5-100x100', '', '', '2019-12-20 10:06:59', '2019-12-20 10:06:59', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl5-100x100-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2019-12-20 10:07:01', '2019-12-20 10:07:01', '', 'bl5', '', 'inherit', 'open', 'closed', '', 'bl5', '', '', '2019-12-20 10:07:01', '2019-12-20 10:07:01', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl5-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2019-12-20 10:07:03', '2019-12-20 10:07:03', '', 'bl4-600x900', '', 'inherit', 'open', 'closed', '', 'bl4-600x900', '', '', '2019-12-20 10:07:03', '2019-12-20 10:07:03', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl4-600x900-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2019-12-20 10:07:04', '2019-12-20 10:07:04', '', 'bl4-500x750', '', 'inherit', 'open', 'closed', '', 'bl4-500x750', '', '', '2019-12-20 10:07:04', '2019-12-20 10:07:04', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl4-500x750-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2019-12-20 10:07:04', '2019-12-20 10:07:04', '', 'bl4-300x300', '', 'inherit', 'open', 'closed', '', 'bl4-300x300', '', '', '2019-12-20 10:07:04', '2019-12-20 10:07:04', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl4-300x300-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2019-12-20 10:07:05', '2019-12-20 10:07:05', '', 'bl4-250x250', '', 'inherit', 'open', 'closed', '', 'bl4-250x250', '', '', '2019-12-20 10:07:05', '2019-12-20 10:07:05', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl4-250x250-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2019-12-20 10:07:07', '2019-12-20 10:07:07', '', 'bl4-200x300', '', 'inherit', 'open', 'closed', '', 'bl4-200x300', '', '', '2019-12-20 10:07:07', '2019-12-20 10:07:07', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl4-200x300-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2019-12-20 10:07:07', '2019-12-20 10:07:07', '', 'bl4-200x200', '', 'inherit', 'open', 'closed', '', 'bl4-200x200', '', '', '2019-12-20 10:07:07', '2019-12-20 10:07:07', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl4-200x200-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2019-12-20 10:07:08', '2019-12-20 10:07:08', '', 'bl4-150x150', '', 'inherit', 'open', 'closed', '', 'bl4-150x150', '', '', '2019-12-20 10:07:08', '2019-12-20 10:07:08', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl4-150x150-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2019-12-20 10:07:10', '2019-12-20 10:07:10', '', 'bl4-100x100', '', 'inherit', 'open', 'closed', '', 'bl4-100x100', '', '', '2019-12-20 10:07:10', '2019-12-20 10:07:10', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl4-100x100-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2019-12-20 10:07:11', '2019-12-20 10:07:11', '', 'bl4', '', 'inherit', 'open', 'closed', '', 'bl4', '', '', '2019-12-20 10:07:11', '2019-12-20 10:07:11', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl4-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2019-12-20 10:07:11', '2019-12-20 10:07:11', '', 'bl3-300x300', '', 'inherit', 'open', 'closed', '', 'bl3-300x300', '', '', '2019-12-20 10:07:11', '2019-12-20 10:07:11', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl3-300x300-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2019-12-20 10:07:13', '2019-12-20 10:07:13', '', 'bl3-250x250', '', 'inherit', 'open', 'closed', '', 'bl3-250x250', '', '', '2019-12-20 10:07:13', '2019-12-20 10:07:13', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl3-250x250-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2019-12-20 10:07:13', '2019-12-20 10:07:13', '', 'bl3-200x300', '', 'inherit', 'open', 'closed', '', 'bl3-200x300', '', '', '2019-12-20 10:07:13', '2019-12-20 10:07:13', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl3-200x300-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2019-12-20 10:07:14', '2019-12-20 10:07:14', '', 'bl3-200x200', '', 'inherit', 'open', 'closed', '', 'bl3-200x200', '', '', '2019-12-20 10:07:14', '2019-12-20 10:07:14', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl3-200x200-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2019-12-20 10:07:16', '2019-12-20 10:07:16', '', 'bl3-150x150', '', 'inherit', 'open', 'closed', '', 'bl3-150x150', '', '', '2019-12-20 10:07:16', '2019-12-20 10:07:16', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl3-150x150-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2019-12-20 10:07:16', '2019-12-20 10:07:16', '', 'bl3-100x100', '', 'inherit', 'open', 'closed', '', 'bl3-100x100', '', '', '2019-12-20 10:07:16', '2019-12-20 10:07:16', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl3-100x100-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2019-12-20 10:07:17', '2019-12-20 10:07:17', '', 'bl3', '', 'inherit', 'open', 'closed', '', 'bl3', '', '', '2019-12-20 10:07:17', '2019-12-20 10:07:17', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl3-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2019-12-20 10:07:19', '2019-12-20 10:07:19', '', 'bl2-300x300', '', 'inherit', 'open', 'closed', '', 'bl2-300x300', '', '', '2019-12-20 10:07:19', '2019-12-20 10:07:19', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl2-300x300-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2019-12-20 10:07:19', '2019-12-20 10:07:19', '', 'bl2-250x250', '', 'inherit', 'open', 'closed', '', 'bl2-250x250', '', '', '2019-12-20 10:07:19', '2019-12-20 10:07:19', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl2-250x250-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2019-12-20 10:07:21', '2019-12-20 10:07:21', '', 'bl2-214x300', '', 'inherit', 'open', 'closed', '', 'bl2-214x300', '', '', '2019-12-20 10:07:21', '2019-12-20 10:07:21', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl2-214x300-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2019-12-20 10:07:22', '2019-12-20 10:07:22', '', 'bl2-200x200', '', 'inherit', 'open', 'closed', '', 'bl2-200x200', '', '', '2019-12-20 10:07:22', '2019-12-20 10:07:22', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl2-200x200-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2019-12-20 10:07:23', '2019-12-20 10:07:23', '', 'bl2-150x150', '', 'inherit', 'open', 'closed', '', 'bl2-150x150', '', '', '2019-12-20 10:07:23', '2019-12-20 10:07:23', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl2-150x150-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2019-12-20 10:07:24', '2019-12-20 10:07:24', '', 'bl2-100x100', '', 'inherit', 'open', 'closed', '', 'bl2-100x100', '', '', '2019-12-20 10:07:24', '2019-12-20 10:07:24', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl2-100x100-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2019-12-20 10:07:25', '2019-12-20 10:07:25', '', 'bl2', '', 'inherit', 'open', 'closed', '', 'bl2', '', '', '2019-12-20 10:07:25', '2019-12-20 10:07:25', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl2-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2019-12-20 10:07:26', '2019-12-20 10:07:26', '', 'bl1-1024x683', '', 'inherit', 'open', 'closed', '', 'bl1-1024x683', '', '', '2019-12-20 10:07:26', '2019-12-20 10:07:26', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl1-1024x683-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2019-12-20 10:07:26', '2019-12-20 10:07:26', '', 'bl1-768x512', '', 'inherit', 'open', 'closed', '', 'bl1-768x512', '', '', '2019-12-20 10:07:26', '2019-12-20 10:07:26', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl1-768x512-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2019-12-20 10:07:28', '2019-12-20 10:07:28', '', 'bl1-600x400', '', 'inherit', 'open', 'closed', '', 'bl1-600x400', '', '', '2019-12-20 10:07:28', '2019-12-20 10:07:28', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl1-600x400-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2019-12-20 10:07:29', '2019-12-20 10:07:29', '', 'bl1-500x333', '', 'inherit', 'open', 'closed', '', 'bl1-500x333', '', '', '2019-12-20 10:07:29', '2019-12-20 10:07:29', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl1-500x333-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2019-12-20 10:07:30', '2019-12-20 10:07:30', '', 'bl1-300x300', '', 'inherit', 'open', 'closed', '', 'bl1-300x300', '', '', '2019-12-20 10:07:30', '2019-12-20 10:07:30', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl1-300x300-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2019-12-20 10:07:31', '2019-12-20 10:07:31', '', 'bl1-300x200', '', 'inherit', 'open', 'closed', '', 'bl1-300x200', '', '', '2019-12-20 10:07:31', '2019-12-20 10:07:31', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl1-300x200-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2019-12-20 10:07:32', '2019-12-20 10:07:32', '', 'bl1-250x250', '', 'inherit', 'open', 'closed', '', 'bl1-250x250', '', '', '2019-12-20 10:07:32', '2019-12-20 10:07:32', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl1-250x250-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2019-12-20 10:07:32', '2019-12-20 10:07:32', '', 'bl1-200x200', '', 'inherit', 'open', 'closed', '', 'bl1-200x200', '', '', '2019-12-20 10:07:32', '2019-12-20 10:07:32', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl1-200x200-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2019-12-20 10:07:34', '2019-12-20 10:07:34', '', 'bl1-150x150', '', 'inherit', 'open', 'closed', '', 'bl1-150x150', '', '', '2019-12-20 10:07:34', '2019-12-20 10:07:34', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl1-150x150-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2019-12-20 10:07:34', '2019-12-20 10:07:34', '', 'bl1-100x100', '', 'inherit', 'open', 'closed', '', 'bl1-100x100', '', '', '2019-12-20 10:07:34', '2019-12-20 10:07:34', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl1-100x100-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2019-12-20 10:07:36', '2019-12-20 10:07:36', '', 'bl1', '', 'inherit', 'open', 'closed', '', 'bl1', '', '', '2019-12-20 10:07:36', '2019-12-20 10:07:36', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bl1-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2019-12-20 10:07:38', '2019-12-20 10:07:38', '', '10-400x392', '', 'inherit', 'open', 'closed', '', '10-400x392', '', '', '2019-12-20 10:07:38', '2019-12-20 10:07:38', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/10-400x392-1.png', 0, 'attachment', 'image/png', 0),
(122, 1, '2019-12-20 10:07:39', '2019-12-20 10:07:39', '', '10-300x300', '', 'inherit', 'open', 'closed', '', '10-300x300', '', '', '2019-12-20 10:07:39', '2019-12-20 10:07:39', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/10-300x300-1.png', 0, 'attachment', 'image/png', 0),
(123, 1, '2019-12-20 10:07:40', '2019-12-20 10:07:40', '', '10-300x255', '', 'inherit', 'open', 'closed', '', '10-300x255', '', '', '2019-12-20 10:07:40', '2019-12-20 10:07:40', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/10-300x255-1.png', 0, 'attachment', 'image/png', 0),
(124, 1, '2019-12-20 10:07:41', '2019-12-20 10:07:41', '', '10-300x225', '', 'inherit', 'open', 'closed', '', '10-300x225', '', '', '2019-12-20 10:07:41', '2019-12-20 10:07:41', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/10-300x225-1.png', 0, 'attachment', 'image/png', 0),
(125, 1, '2019-12-20 10:07:42', '2019-12-20 10:07:42', '', '10-300x150', '', 'inherit', 'open', 'closed', '', '10-300x150', '', '', '2019-12-20 10:07:42', '2019-12-20 10:07:42', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/10-300x150-1.png', 0, 'attachment', 'image/png', 0),
(126, 1, '2019-12-20 10:07:43', '2019-12-20 10:07:43', '', '10-300x75', '', 'inherit', 'open', 'closed', '', '10-300x75', '', '', '2019-12-20 10:07:43', '2019-12-20 10:07:43', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/10-300x75-1.png', 0, 'attachment', 'image/png', 0),
(127, 1, '2019-12-20 10:07:44', '2019-12-20 10:07:44', '', '10-250x250', '', 'inherit', 'open', 'closed', '', '10-250x250', '', '', '2019-12-20 10:07:44', '2019-12-20 10:07:44', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/10-250x250-1.png', 0, 'attachment', 'image/png', 0),
(128, 1, '2019-12-20 10:07:45', '2019-12-20 10:07:45', '', '10-200x200', '', 'inherit', 'open', 'closed', '', '10-200x200', '', '', '2019-12-20 10:07:45', '2019-12-20 10:07:45', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/10-200x200-1.png', 0, 'attachment', 'image/png', 0),
(129, 1, '2019-12-20 10:07:46', '2019-12-20 10:07:46', '', '10-150x150', '', 'inherit', 'open', 'closed', '', '10-150x150', '', '', '2019-12-20 10:07:46', '2019-12-20 10:07:46', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/10-150x150-1.png', 0, 'attachment', 'image/png', 0),
(130, 1, '2019-12-20 10:07:47', '2019-12-20 10:07:47', '', '10-100x100', '', 'inherit', 'open', 'closed', '', '10-100x100', '', '', '2019-12-20 10:07:47', '2019-12-20 10:07:47', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/10-100x100-1.png', 0, 'attachment', 'image/png', 0),
(131, 1, '2019-12-20 10:07:48', '2019-12-20 10:07:48', '', '10-25x25', '', 'inherit', 'open', 'closed', '', '10-25x25', '', '', '2019-12-20 10:07:48', '2019-12-20 10:07:48', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/10-25x25-1.png', 0, 'attachment', 'image/png', 0),
(132, 1, '2019-12-20 10:07:49', '2019-12-20 10:07:49', '', '10', '', 'inherit', 'open', 'closed', '', '10', '', '', '2019-12-20 10:07:49', '2019-12-20 10:07:49', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/10-1.png', 0, 'attachment', 'image/png', 0),
(133, 1, '2019-12-20 10:07:50', '2019-12-20 10:07:50', '', '9-400x392', '', 'inherit', 'open', 'closed', '', '9-400x392', '', '', '2019-12-20 10:07:50', '2019-12-20 10:07:50', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/9-400x392-1.png', 0, 'attachment', 'image/png', 0),
(134, 1, '2019-12-20 10:07:51', '2019-12-20 10:07:51', '', '9-300x300', '', 'inherit', 'open', 'closed', '', '9-300x300', '', '', '2019-12-20 10:07:51', '2019-12-20 10:07:51', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/9-300x300-1.png', 0, 'attachment', 'image/png', 0),
(135, 1, '2019-12-20 10:07:51', '2019-12-20 10:07:51', '', '9-300x255', '', 'inherit', 'open', 'closed', '', '9-300x255', '', '', '2019-12-20 10:07:51', '2019-12-20 10:07:51', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/9-300x255-1.png', 0, 'attachment', 'image/png', 0),
(136, 1, '2019-12-20 10:07:53', '2019-12-20 10:07:53', '', '9-300x225', '', 'inherit', 'open', 'closed', '', '9-300x225', '', '', '2019-12-20 10:07:53', '2019-12-20 10:07:53', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/9-300x225-1.png', 0, 'attachment', 'image/png', 0),
(137, 1, '2019-12-20 10:07:54', '2019-12-20 10:07:54', '', '9-300x150', '', 'inherit', 'open', 'closed', '', '9-300x150', '', '', '2019-12-20 10:07:54', '2019-12-20 10:07:54', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/9-300x150-1.png', 0, 'attachment', 'image/png', 0),
(138, 1, '2019-12-20 10:07:55', '2019-12-20 10:07:55', '', '9-300x75', '', 'inherit', 'open', 'closed', '', '9-300x75', '', '', '2019-12-20 10:07:55', '2019-12-20 10:07:55', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/9-300x75-1.png', 0, 'attachment', 'image/png', 0),
(139, 1, '2019-12-20 10:07:56', '2019-12-20 10:07:56', '', '9-250x250', '', 'inherit', 'open', 'closed', '', '9-250x250', '', '', '2019-12-20 10:07:56', '2019-12-20 10:07:56', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/9-250x250-1.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(140, 1, '2019-12-20 10:07:57', '2019-12-20 10:07:57', '', '9-200x200', '', 'inherit', 'open', 'closed', '', '9-200x200', '', '', '2019-12-20 10:07:57', '2019-12-20 10:07:57', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/9-200x200-1.png', 0, 'attachment', 'image/png', 0),
(141, 1, '2019-12-20 10:07:58', '2019-12-20 10:07:58', '', '9-150x150', '', 'inherit', 'open', 'closed', '', '9-150x150', '', '', '2019-12-20 10:07:58', '2019-12-20 10:07:58', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/9-150x150-1.png', 0, 'attachment', 'image/png', 0),
(142, 1, '2019-12-20 10:07:59', '2019-12-20 10:07:59', '', '9-100x100', '', 'inherit', 'open', 'closed', '', '9-100x100', '', '', '2019-12-20 10:07:59', '2019-12-20 10:07:59', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/9-100x100-1.png', 0, 'attachment', 'image/png', 0),
(143, 1, '2019-12-20 10:08:00', '2019-12-20 10:08:00', '', '9-25x25', '', 'inherit', 'open', 'closed', '', '9-25x25', '', '', '2019-12-20 10:08:00', '2019-12-20 10:08:00', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/9-25x25-1.png', 0, 'attachment', 'image/png', 0),
(144, 1, '2019-12-20 10:08:01', '2019-12-20 10:08:01', '', '9', '', 'inherit', 'open', 'closed', '', '9', '', '', '2019-12-20 10:08:01', '2019-12-20 10:08:01', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/9-1.png', 0, 'attachment', 'image/png', 0),
(145, 1, '2019-12-20 10:08:01', '2019-12-20 10:08:01', '', '8-400x392', '', 'inherit', 'open', 'closed', '', '8-400x392', '', '', '2019-12-20 10:08:01', '2019-12-20 10:08:01', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/8-400x392-1.png', 0, 'attachment', 'image/png', 0),
(146, 1, '2019-12-20 10:08:03', '2019-12-20 10:08:03', '', '8-300x300', '', 'inherit', 'open', 'closed', '', '8-300x300', '', '', '2019-12-20 10:08:03', '2019-12-20 10:08:03', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/8-300x300-1.png', 0, 'attachment', 'image/png', 0),
(147, 1, '2019-12-20 10:08:03', '2019-12-20 10:08:03', '', '8-300x255', '', 'inherit', 'open', 'closed', '', '8-300x255', '', '', '2019-12-20 10:08:03', '2019-12-20 10:08:03', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/8-300x255-1.png', 0, 'attachment', 'image/png', 0),
(148, 1, '2019-12-20 10:08:05', '2019-12-20 10:08:05', '', '8-300x225', '', 'inherit', 'open', 'closed', '', '8-300x225', '', '', '2019-12-20 10:08:05', '2019-12-20 10:08:05', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/8-300x225-1.png', 0, 'attachment', 'image/png', 0),
(149, 1, '2019-12-20 10:08:05', '2019-12-20 10:08:05', '', '8-300x150', '', 'inherit', 'open', 'closed', '', '8-300x150', '', '', '2019-12-20 10:08:05', '2019-12-20 10:08:05', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/8-300x150-1.png', 0, 'attachment', 'image/png', 0),
(150, 1, '2019-12-20 10:08:07', '2019-12-20 10:08:07', '', '8-300x75', '', 'inherit', 'open', 'closed', '', '8-300x75', '', '', '2019-12-20 10:08:07', '2019-12-20 10:08:07', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/8-300x75-1.png', 0, 'attachment', 'image/png', 0),
(151, 1, '2019-12-20 10:08:08', '2019-12-20 10:08:08', '', '8-250x250', '', 'inherit', 'open', 'closed', '', '8-250x250', '', '', '2019-12-20 10:08:08', '2019-12-20 10:08:08', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/8-250x250-1.png', 0, 'attachment', 'image/png', 0),
(152, 1, '2019-12-20 10:08:09', '2019-12-20 10:08:09', '', '8-200x200', '', 'inherit', 'open', 'closed', '', '8-200x200', '', '', '2019-12-20 10:08:09', '2019-12-20 10:08:09', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/8-200x200-1.png', 0, 'attachment', 'image/png', 0),
(153, 1, '2019-12-20 10:08:10', '2019-12-20 10:08:10', '', '8-150x150', '', 'inherit', 'open', 'closed', '', '8-150x150', '', '', '2019-12-20 10:08:10', '2019-12-20 10:08:10', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/8-150x150-1.png', 0, 'attachment', 'image/png', 0),
(154, 1, '2019-12-20 10:08:11', '2019-12-20 10:08:11', '', '8-100x100', '', 'inherit', 'open', 'closed', '', '8-100x100', '', '', '2019-12-20 10:08:11', '2019-12-20 10:08:11', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/8-100x100-1.png', 0, 'attachment', 'image/png', 0),
(155, 1, '2019-12-20 10:08:12', '2019-12-20 10:08:12', '', '8-25x25', '', 'inherit', 'open', 'closed', '', '8-25x25', '', '', '2019-12-20 10:08:12', '2019-12-20 10:08:12', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/8-25x25-1.png', 0, 'attachment', 'image/png', 0),
(156, 1, '2019-12-20 10:08:13', '2019-12-20 10:08:13', '', '8', '', 'inherit', 'open', 'closed', '', '8', '', '', '2019-12-20 10:08:13', '2019-12-20 10:08:13', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/8-1.png', 0, 'attachment', 'image/png', 0),
(157, 1, '2019-12-20 10:08:14', '2019-12-20 10:08:14', '', '7-400x392', '', 'inherit', 'open', 'closed', '', '7-400x392', '', '', '2019-12-20 10:08:14', '2019-12-20 10:08:14', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/7-400x392-1.png', 0, 'attachment', 'image/png', 0),
(158, 1, '2019-12-20 10:08:15', '2019-12-20 10:08:15', '', '7-300x300', '', 'inherit', 'open', 'closed', '', '7-300x300', '', '', '2019-12-20 10:08:15', '2019-12-20 10:08:15', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/7-300x300-1.png', 0, 'attachment', 'image/png', 0),
(159, 1, '2019-12-20 10:08:16', '2019-12-20 10:08:16', '', '7-300x255', '', 'inherit', 'open', 'closed', '', '7-300x255', '', '', '2019-12-20 10:08:16', '2019-12-20 10:08:16', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/7-300x255-1.png', 0, 'attachment', 'image/png', 0),
(160, 1, '2019-12-20 10:08:17', '2019-12-20 10:08:17', '', '7-300x225', '', 'inherit', 'open', 'closed', '', '7-300x225', '', '', '2019-12-20 10:08:17', '2019-12-20 10:08:17', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/7-300x225-1.png', 0, 'attachment', 'image/png', 0),
(161, 1, '2019-12-20 10:08:18', '2019-12-20 10:08:18', '', '7-300x150', '', 'inherit', 'open', 'closed', '', '7-300x150', '', '', '2019-12-20 10:08:18', '2019-12-20 10:08:18', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/7-300x150-1.png', 0, 'attachment', 'image/png', 0),
(162, 1, '2019-12-20 10:08:19', '2019-12-20 10:08:19', '', '7-300x75', '', 'inherit', 'open', 'closed', '', '7-300x75', '', '', '2019-12-20 10:08:19', '2019-12-20 10:08:19', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/7-300x75-1.png', 0, 'attachment', 'image/png', 0),
(163, 1, '2019-12-20 10:08:20', '2019-12-20 10:08:20', '', '7-250x250', '', 'inherit', 'open', 'closed', '', '7-250x250', '', '', '2019-12-20 10:08:20', '2019-12-20 10:08:20', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/7-250x250-1.png', 0, 'attachment', 'image/png', 0),
(164, 1, '2019-12-20 10:08:20', '2019-12-20 10:08:20', '', '7-200x200', '', 'inherit', 'open', 'closed', '', '7-200x200', '', '', '2019-12-20 10:08:20', '2019-12-20 10:08:20', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/7-200x200-1.png', 0, 'attachment', 'image/png', 0),
(165, 1, '2019-12-20 10:08:22', '2019-12-20 10:08:22', '', '7-150x150', '', 'inherit', 'open', 'closed', '', '7-150x150', '', '', '2019-12-20 10:08:22', '2019-12-20 10:08:22', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/7-150x150-1.png', 0, 'attachment', 'image/png', 0),
(166, 1, '2019-12-20 10:08:23', '2019-12-20 10:08:23', '', '7-100x100', '', 'inherit', 'open', 'closed', '', '7-100x100', '', '', '2019-12-20 10:08:23', '2019-12-20 10:08:23', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/7-100x100-1.png', 0, 'attachment', 'image/png', 0),
(167, 1, '2019-12-20 10:08:23', '2019-12-20 10:08:23', '', '7-25x25', '', 'inherit', 'open', 'closed', '', '7-25x25', '', '', '2019-12-20 10:08:23', '2019-12-20 10:08:23', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/7-25x25-1.png', 0, 'attachment', 'image/png', 0),
(168, 1, '2019-12-20 10:08:25', '2019-12-20 10:08:25', '', '7', '', 'inherit', 'open', 'closed', '', '7', '', '', '2019-12-20 10:08:25', '2019-12-20 10:08:25', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/7-1.png', 0, 'attachment', 'image/png', 0),
(169, 1, '2019-12-20 10:08:26', '2019-12-20 10:08:26', '', '6-400x392', '', 'inherit', 'open', 'closed', '', '6-400x392', '', '', '2019-12-20 10:08:26', '2019-12-20 10:08:26', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/6-400x392-1.png', 0, 'attachment', 'image/png', 0),
(170, 1, '2019-12-20 10:08:26', '2019-12-20 10:08:26', '', '6-300x300', '', 'inherit', 'open', 'closed', '', '6-300x300', '', '', '2019-12-20 10:08:26', '2019-12-20 10:08:26', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/6-300x300-1.png', 0, 'attachment', 'image/png', 0),
(171, 1, '2019-12-20 10:08:28', '2019-12-20 10:08:28', '', '6-300x255', '', 'inherit', 'open', 'closed', '', '6-300x255', '', '', '2019-12-20 10:08:28', '2019-12-20 10:08:28', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/6-300x255-1.png', 0, 'attachment', 'image/png', 0),
(172, 1, '2019-12-20 10:08:29', '2019-12-20 10:08:29', '', '6-300x225', '', 'inherit', 'open', 'closed', '', '6-300x225', '', '', '2019-12-20 10:08:29', '2019-12-20 10:08:29', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/6-300x225-1.png', 0, 'attachment', 'image/png', 0),
(173, 1, '2019-12-20 10:08:30', '2019-12-20 10:08:30', '', '6-300x150', '', 'inherit', 'open', 'closed', '', '6-300x150', '', '', '2019-12-20 10:08:30', '2019-12-20 10:08:30', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/6-300x150-1.png', 0, 'attachment', 'image/png', 0),
(174, 1, '2019-12-20 10:08:31', '2019-12-20 10:08:31', '', '6-300x75', '', 'inherit', 'open', 'closed', '', '6-300x75', '', '', '2019-12-20 10:08:31', '2019-12-20 10:08:31', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/6-300x75-1.png', 0, 'attachment', 'image/png', 0),
(175, 1, '2019-12-20 10:08:32', '2019-12-20 10:08:32', '', '6-250x250', '', 'inherit', 'open', 'closed', '', '6-250x250', '', '', '2019-12-20 10:08:32', '2019-12-20 10:08:32', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/6-250x250-1.png', 0, 'attachment', 'image/png', 0),
(176, 1, '2019-12-20 10:08:33', '2019-12-20 10:08:33', '', '6-200x200', '', 'inherit', 'open', 'closed', '', '6-200x200', '', '', '2019-12-20 10:08:33', '2019-12-20 10:08:33', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/6-200x200-1.png', 0, 'attachment', 'image/png', 0),
(177, 1, '2019-12-20 10:08:34', '2019-12-20 10:08:34', '', '6-150x150', '', 'inherit', 'open', 'closed', '', '6-150x150', '', '', '2019-12-20 10:08:34', '2019-12-20 10:08:34', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/6-150x150-1.png', 0, 'attachment', 'image/png', 0),
(178, 1, '2019-12-20 10:08:35', '2019-12-20 10:08:35', '', '6-100x100', '', 'inherit', 'open', 'closed', '', '6-100x100', '', '', '2019-12-20 10:08:35', '2019-12-20 10:08:35', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/6-100x100-1.png', 0, 'attachment', 'image/png', 0),
(179, 1, '2019-12-20 10:08:36', '2019-12-20 10:08:36', '', '6-25x25', '', 'inherit', 'open', 'closed', '', '6-25x25', '', '', '2019-12-20 10:08:36', '2019-12-20 10:08:36', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/6-25x25-1.png', 0, 'attachment', 'image/png', 0),
(180, 1, '2019-12-20 10:08:37', '2019-12-20 10:08:37', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2019-12-20 10:08:37', '2019-12-20 10:08:37', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/6-1.png', 0, 'attachment', 'image/png', 0),
(181, 1, '2019-12-20 10:08:38', '2019-12-20 10:08:38', '', '5-300x300', '', 'inherit', 'open', 'closed', '', '5-300x300', '', '', '2019-12-20 10:08:38', '2019-12-20 10:08:38', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/5-300x300-1.png', 0, 'attachment', 'image/png', 0),
(182, 1, '2019-12-20 10:08:39', '2019-12-20 10:08:39', '', '5-300x225', '', 'inherit', 'open', 'closed', '', '5-300x225', '', '', '2019-12-20 10:08:39', '2019-12-20 10:08:39', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/5-300x225-1.png', 0, 'attachment', 'image/png', 0),
(183, 1, '2019-12-20 10:08:40', '2019-12-20 10:08:40', '', '5-300x150', '', 'inherit', 'open', 'closed', '', '5-300x150', '', '', '2019-12-20 10:08:40', '2019-12-20 10:08:40', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/5-300x150-1.png', 0, 'attachment', 'image/png', 0),
(184, 1, '2019-12-20 10:08:41', '2019-12-20 10:08:41', '', '5-300x75', '', 'inherit', 'open', 'closed', '', '5-300x75', '', '', '2019-12-20 10:08:41', '2019-12-20 10:08:41', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/5-300x75-1.png', 0, 'attachment', 'image/png', 0),
(185, 1, '2019-12-20 10:08:42', '2019-12-20 10:08:42', '', '5-250x250', '', 'inherit', 'open', 'closed', '', '5-250x250', '', '', '2019-12-20 10:08:42', '2019-12-20 10:08:42', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/5-250x250-1.png', 0, 'attachment', 'image/png', 0),
(186, 1, '2019-12-20 10:08:43', '2019-12-20 10:08:43', '', '5-200x200', '', 'inherit', 'open', 'closed', '', '5-200x200', '', '', '2019-12-20 10:08:43', '2019-12-20 10:08:43', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/5-200x200-1.png', 0, 'attachment', 'image/png', 0),
(187, 1, '2019-12-20 10:08:43', '2019-12-20 10:08:43', '', '5-150x150', '', 'inherit', 'open', 'closed', '', '5-150x150', '', '', '2019-12-20 10:08:43', '2019-12-20 10:08:43', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/5-150x150-1.png', 0, 'attachment', 'image/png', 0),
(188, 1, '2019-12-20 10:08:44', '2019-12-20 10:08:44', '', '5-100x100', '', 'inherit', 'open', 'closed', '', '5-100x100', '', '', '2019-12-20 10:08:44', '2019-12-20 10:08:44', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/5-100x100-1.png', 0, 'attachment', 'image/png', 0),
(189, 1, '2019-12-20 10:08:45', '2019-12-20 10:08:45', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2019-12-20 10:08:45', '2019-12-20 10:08:45', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/5-1.png', 0, 'attachment', 'image/png', 0),
(190, 1, '2019-12-20 10:08:47', '2019-12-20 10:08:47', '', '4-300x300', '', 'inherit', 'open', 'closed', '', '4-300x300', '', '', '2019-12-20 10:08:47', '2019-12-20 10:08:47', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/4-300x300-1.png', 0, 'attachment', 'image/png', 0),
(191, 1, '2019-12-20 10:08:48', '2019-12-20 10:08:48', '', '4-300x225', '', 'inherit', 'open', 'closed', '', '4-300x225', '', '', '2019-12-20 10:08:48', '2019-12-20 10:08:48', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/4-300x225-1.png', 0, 'attachment', 'image/png', 0),
(192, 1, '2019-12-20 10:08:49', '2019-12-20 10:08:49', '', '4-300x150', '', 'inherit', 'open', 'closed', '', '4-300x150', '', '', '2019-12-20 10:08:49', '2019-12-20 10:08:49', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/4-300x150-1.png', 0, 'attachment', 'image/png', 0),
(193, 1, '2019-12-20 10:08:50', '2019-12-20 10:08:50', '', '4-300x75', '', 'inherit', 'open', 'closed', '', '4-300x75', '', '', '2019-12-20 10:08:50', '2019-12-20 10:08:50', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/4-300x75-1.png', 0, 'attachment', 'image/png', 0),
(194, 1, '2019-12-20 10:08:51', '2019-12-20 10:08:51', '', '4-250x250', '', 'inherit', 'open', 'closed', '', '4-250x250', '', '', '2019-12-20 10:08:51', '2019-12-20 10:08:51', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/4-250x250-1.png', 0, 'attachment', 'image/png', 0),
(195, 1, '2019-12-20 10:08:52', '2019-12-20 10:08:52', '', '4-200x200', '', 'inherit', 'open', 'closed', '', '4-200x200', '', '', '2019-12-20 10:08:52', '2019-12-20 10:08:52', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/4-200x200-1.png', 0, 'attachment', 'image/png', 0),
(196, 1, '2019-12-20 10:08:53', '2019-12-20 10:08:53', '', '4-150x150', '', 'inherit', 'open', 'closed', '', '4-150x150', '', '', '2019-12-20 10:08:53', '2019-12-20 10:08:53', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/4-150x150-1.png', 0, 'attachment', 'image/png', 0),
(197, 1, '2019-12-20 10:08:54', '2019-12-20 10:08:54', '', '4-100x100', '', 'inherit', 'open', 'closed', '', '4-100x100', '', '', '2019-12-20 10:08:54', '2019-12-20 10:08:54', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/4-100x100-1.png', 0, 'attachment', 'image/png', 0),
(198, 1, '2019-12-20 10:08:55', '2019-12-20 10:08:55', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2019-12-20 10:08:55', '2019-12-20 10:08:55', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/4-1.png', 0, 'attachment', 'image/png', 0),
(199, 1, '2019-12-20 10:08:55', '2019-12-20 10:08:55', '', '3-400x392', '', 'inherit', 'open', 'closed', '', '3-400x392', '', '', '2019-12-20 10:08:55', '2019-12-20 10:08:55', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/3-400x392-1.png', 0, 'attachment', 'image/png', 0),
(200, 1, '2019-12-20 10:08:56', '2019-12-20 10:08:56', '', '3-300x300', '', 'inherit', 'open', 'closed', '', '3-300x300', '', '', '2019-12-20 10:08:56', '2019-12-20 10:08:56', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/3-300x300-1.png', 0, 'attachment', 'image/png', 0),
(201, 1, '2019-12-20 10:08:58', '2019-12-20 10:08:58', '', '3-300x300', '', 'inherit', 'open', 'closed', '', '3-300x300-2', '', '', '2019-12-20 10:08:58', '2019-12-20 10:08:58', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/3-300x300-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(202, 1, '2019-12-20 10:08:59', '2019-12-20 10:08:59', '', '3-300x255', '', 'inherit', 'open', 'closed', '', '3-300x255', '', '', '2019-12-20 10:08:59', '2019-12-20 10:08:59', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/3-300x255-1.png', 0, 'attachment', 'image/png', 0),
(203, 1, '2019-12-20 10:08:59', '2019-12-20 10:08:59', '', '3-300x255', '', 'inherit', 'open', 'closed', '', '3-300x255-2', '', '', '2019-12-20 10:08:59', '2019-12-20 10:08:59', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/3-300x255-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(204, 1, '2019-12-20 10:09:00', '2019-12-20 10:09:00', '', '3-300x225', '', 'inherit', 'open', 'closed', '', '3-300x225', '', '', '2019-12-20 10:09:00', '2019-12-20 10:09:00', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/3-300x225-1.png', 0, 'attachment', 'image/png', 0),
(205, 1, '2019-12-20 10:09:02', '2019-12-20 10:09:02', '', '3-300x150', '', 'inherit', 'open', 'closed', '', '3-300x150', '', '', '2019-12-20 10:09:02', '2019-12-20 10:09:02', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/3-300x150-1.png', 0, 'attachment', 'image/png', 0),
(206, 1, '2019-12-20 10:09:02', '2019-12-20 10:09:02', '', '3-300x75', '', 'inherit', 'open', 'closed', '', '3-300x75', '', '', '2019-12-20 10:09:02', '2019-12-20 10:09:02', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/3-300x75-1.png', 0, 'attachment', 'image/png', 0),
(207, 1, '2019-12-20 10:09:04', '2019-12-20 10:09:04', '', '3-250x250', '', 'inherit', 'open', 'closed', '', '3-250x250', '', '', '2019-12-20 10:09:04', '2019-12-20 10:09:04', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/3-250x250-1.png', 0, 'attachment', 'image/png', 0),
(208, 1, '2019-12-20 10:09:05', '2019-12-20 10:09:05', '', '3-250x250', '', 'inherit', 'open', 'closed', '', '3-250x250-2', '', '', '2019-12-20 10:09:05', '2019-12-20 10:09:05', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/3-250x250-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(209, 1, '2019-12-20 10:09:06', '2019-12-20 10:09:06', '', '3-200x200', '', 'inherit', 'open', 'closed', '', '3-200x200', '', '', '2019-12-20 10:09:06', '2019-12-20 10:09:06', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/3-200x200-1.png', 0, 'attachment', 'image/png', 0),
(210, 1, '2019-12-20 10:09:06', '2019-12-20 10:09:06', '', '3-200x200', '', 'inherit', 'open', 'closed', '', '3-200x200-2', '', '', '2019-12-20 10:09:06', '2019-12-20 10:09:06', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/3-200x200-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(211, 1, '2019-12-20 10:09:07', '2019-12-20 10:09:07', '', '3-150x150', '', 'inherit', 'open', 'closed', '', '3-150x150', '', '', '2019-12-20 10:09:07', '2019-12-20 10:09:07', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/3-150x150-1.png', 0, 'attachment', 'image/png', 0),
(212, 1, '2019-12-20 10:09:09', '2019-12-20 10:09:09', '', '3-150x150', '', 'inherit', 'open', 'closed', '', '3-150x150-2', '', '', '2019-12-20 10:09:09', '2019-12-20 10:09:09', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/3-150x150-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(213, 1, '2019-12-20 10:09:09', '2019-12-20 10:09:09', '', '3-100x100', '', 'inherit', 'open', 'closed', '', '3-100x100', '', '', '2019-12-20 10:09:09', '2019-12-20 10:09:09', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/3-100x100-1.png', 0, 'attachment', 'image/png', 0),
(214, 1, '2019-12-20 10:09:11', '2019-12-20 10:09:11', '', '3-100x100', '', 'inherit', 'open', 'closed', '', '3-100x100-2', '', '', '2019-12-20 10:09:11', '2019-12-20 10:09:11', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/3-100x100-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(215, 1, '2019-12-20 10:09:11', '2019-12-20 10:09:11', '', '3-25x25', '', 'inherit', 'open', 'closed', '', '3-25x25', '', '', '2019-12-20 10:09:11', '2019-12-20 10:09:11', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/3-25x25-1.png', 0, 'attachment', 'image/png', 0),
(216, 1, '2019-12-20 10:09:13', '2019-12-20 10:09:13', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2019-12-20 10:09:13', '2019-12-20 10:09:13', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/3-1.png', 0, 'attachment', 'image/png', 0),
(217, 1, '2019-12-20 10:09:14', '2019-12-20 10:09:14', '', '3', '', 'inherit', 'open', 'closed', '', '3-2', '', '', '2019-12-20 10:09:14', '2019-12-20 10:09:14', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(218, 1, '2019-12-20 10:09:14', '2019-12-20 10:09:14', '', '2-400x392', '', 'inherit', 'open', 'closed', '', '2-400x392', '', '', '2019-12-20 10:09:14', '2019-12-20 10:09:14', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/2-400x392-1.png', 0, 'attachment', 'image/png', 0),
(219, 1, '2019-12-20 10:09:16', '2019-12-20 10:09:16', '', '2-300x300', '', 'inherit', 'open', 'closed', '', '2-300x300', '', '', '2019-12-20 10:09:16', '2019-12-20 10:09:16', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/2-300x300-1.png', 0, 'attachment', 'image/png', 0),
(220, 1, '2019-12-20 10:09:17', '2019-12-20 10:09:17', '', '2-300x255', '', 'inherit', 'open', 'closed', '', '2-300x255', '', '', '2019-12-20 10:09:17', '2019-12-20 10:09:17', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/2-300x255-1.png', 0, 'attachment', 'image/png', 0),
(221, 1, '2019-12-20 10:09:18', '2019-12-20 10:09:18', '', '2-300x225', '', 'inherit', 'open', 'closed', '', '2-300x225', '', '', '2019-12-20 10:09:18', '2019-12-20 10:09:18', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/2-300x225-1.png', 0, 'attachment', 'image/png', 0),
(222, 1, '2019-12-20 10:09:18', '2019-12-20 10:09:18', '', '2-300x150', '', 'inherit', 'open', 'closed', '', '2-300x150', '', '', '2019-12-20 10:09:18', '2019-12-20 10:09:18', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/2-300x150-1.png', 0, 'attachment', 'image/png', 0),
(223, 1, '2019-12-20 10:09:19', '2019-12-20 10:09:19', '', '2-300x75', '', 'inherit', 'open', 'closed', '', '2-300x75', '', '', '2019-12-20 10:09:19', '2019-12-20 10:09:19', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/2-300x75-1.png', 0, 'attachment', 'image/png', 0),
(224, 1, '2019-12-20 10:09:20', '2019-12-20 10:09:20', '', '2-250x250', '', 'inherit', 'open', 'closed', '', '2-250x250', '', '', '2019-12-20 10:09:20', '2019-12-20 10:09:20', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/2-250x250-1.png', 0, 'attachment', 'image/png', 0),
(225, 1, '2019-12-20 10:09:21', '2019-12-20 10:09:21', '', '2-200x200', '', 'inherit', 'open', 'closed', '', '2-200x200', '', '', '2019-12-20 10:09:21', '2019-12-20 10:09:21', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/2-200x200-1.png', 0, 'attachment', 'image/png', 0),
(226, 1, '2019-12-20 10:09:21', '2019-12-20 10:09:21', '', '2-150x150', '', 'inherit', 'open', 'closed', '', '2-150x150', '', '', '2019-12-20 10:09:21', '2019-12-20 10:09:21', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/2-150x150-1.png', 0, 'attachment', 'image/png', 0),
(227, 1, '2019-12-20 10:09:22', '2019-12-20 10:09:22', '', '2-100x100', '', 'inherit', 'open', 'closed', '', '2-100x100', '', '', '2019-12-20 10:09:22', '2019-12-20 10:09:22', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/2-100x100-1.png', 0, 'attachment', 'image/png', 0),
(228, 1, '2019-12-20 10:09:22', '2019-12-20 10:09:22', '', '2-25x25', '', 'inherit', 'open', 'closed', '', '2-25x25', '', '', '2019-12-20 10:09:22', '2019-12-20 10:09:22', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/2-25x25-1.png', 0, 'attachment', 'image/png', 0),
(229, 1, '2019-12-20 10:09:23', '2019-12-20 10:09:23', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2019-12-20 10:09:23', '2019-12-20 10:09:23', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/2-1.png', 0, 'attachment', 'image/png', 0),
(230, 1, '2019-12-20 10:09:23', '2019-12-20 10:09:23', '', '1-768x768', '', 'inherit', 'open', 'closed', '', '1-768x768', '', '', '2019-12-20 10:09:23', '2019-12-20 10:09:23', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/1-768x768-1.png', 0, 'attachment', 'image/png', 0),
(231, 1, '2019-12-20 10:09:25', '2019-12-20 10:09:25', '', '1-600x600', '', 'inherit', 'open', 'closed', '', '1-600x600', '', '', '2019-12-20 10:09:25', '2019-12-20 10:09:25', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/1-600x600-1.png', 0, 'attachment', 'image/png', 0),
(232, 1, '2019-12-20 10:09:25', '2019-12-20 10:09:25', '', '1-500x500', '', 'inherit', 'open', 'closed', '', '1-500x500', '', '', '2019-12-20 10:09:25', '2019-12-20 10:09:25', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/1-500x500-1.png', 0, 'attachment', 'image/png', 0),
(233, 1, '2019-12-20 10:09:26', '2019-12-20 10:09:26', '', '1-300x300', '', 'inherit', 'open', 'closed', '', '1-300x300', '', '', '2019-12-20 10:09:26', '2019-12-20 10:09:26', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/1-300x300-1.png', 0, 'attachment', 'image/png', 0),
(234, 1, '2019-12-20 10:09:27', '2019-12-20 10:09:27', '', '1-300x225', '', 'inherit', 'open', 'closed', '', '1-300x225', '', '', '2019-12-20 10:09:27', '2019-12-20 10:09:27', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/1-300x225-1.png', 0, 'attachment', 'image/png', 0),
(235, 1, '2019-12-20 10:09:27', '2019-12-20 10:09:27', '', '1-300x150', '', 'inherit', 'open', 'closed', '', '1-300x150', '', '', '2019-12-20 10:09:27', '2019-12-20 10:09:27', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/1-300x150-1.png', 0, 'attachment', 'image/png', 0),
(236, 1, '2019-12-20 10:09:28', '2019-12-20 10:09:28', '', '1-300x75', '', 'inherit', 'open', 'closed', '', '1-300x75', '', '', '2019-12-20 10:09:28', '2019-12-20 10:09:28', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/1-300x75-1.png', 0, 'attachment', 'image/png', 0),
(237, 1, '2019-12-20 10:09:28', '2019-12-20 10:09:28', '', '1-250x250', '', 'inherit', 'open', 'closed', '', '1-250x250', '', '', '2019-12-20 10:09:28', '2019-12-20 10:09:28', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/1-250x250-1.png', 0, 'attachment', 'image/png', 0),
(238, 1, '2019-12-20 10:09:29', '2019-12-20 10:09:29', '', '1-200x200', '', 'inherit', 'open', 'closed', '', '1-200x200', '', '', '2019-12-20 10:09:29', '2019-12-20 10:09:29', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/1-200x200-1.png', 0, 'attachment', 'image/png', 0),
(239, 1, '2019-12-20 10:09:29', '2019-12-20 10:09:29', '', '1-150x150', '', 'inherit', 'open', 'closed', '', '1-150x150', '', '', '2019-12-20 10:09:29', '2019-12-20 10:09:29', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/1-150x150-1.png', 0, 'attachment', 'image/png', 0),
(240, 1, '2019-12-20 10:09:30', '2019-12-20 10:09:30', '', '1-100x100', '', 'inherit', 'open', 'closed', '', '1-100x100', '', '', '2019-12-20 10:09:30', '2019-12-20 10:09:30', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/1-100x100-1.png', 0, 'attachment', 'image/png', 0),
(241, 1, '2019-12-20 10:09:30', '2019-12-20 10:09:30', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2019-12-20 10:09:30', '2019-12-20 10:09:30', '', 11, 'http://localhost/wordpress4/wp-content/uploads/2019/12/1-1.png', 0, 'attachment', 'image/png', 0),
(242, 1, '2019-12-20 10:10:55', '2019-12-20 10:10:55', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-12-20 10:10:55', '2019-12-20 10:10:55', '', 11, 'http://localhost/wordpress4/index.php/2019/12/20/11-revision-v1/', 0, 'revision', '', 0),
(243, 1, '2019-12-20 10:11:06', '2019-12-20 10:11:06', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-12-20 10:11:06', '2019-12-20 10:11:06', '', 11, 'http://localhost/wordpress4/index.php/2019/12/20/11-revision-v1/', 0, 'revision', '', 0),
(244, 1, '2019-12-20 10:11:16', '2019-12-20 10:11:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-12-20 10:11:16', '2019-12-20 10:11:16', '', 11, 'http://localhost/wordpress4/index.php/2019/12/20/11-revision-v1/', 0, 'revision', '', 0),
(246, 0, '2019-12-20 10:18:16', '2019-12-20 10:18:16', '[]', 'woocommerce_update_marketplace_suggestions', '', 'publish', 'open', 'closed', '', 'scheduled-action-5dfca016cbe0b0.25096581-r6oaeHuzp0JRnHR5FW6P8bVf56kmOc1w', '', '', '2019-12-20 10:19:02', '2019-12-20 10:19:02', '', 0, 'http://localhost/wordpress4/?post_type=scheduled-action&#038;p=246', 0, 'scheduled-action', '', 3),
(247, 1, '2019-12-20 10:24:56', '2019-12-20 10:24:56', ' ', '', '', 'publish', 'closed', 'closed', '', '247', '', '', '2019-12-20 10:24:56', '2019-12-20 10:24:56', '', 0, 'http://localhost/wordpress4/?p=247', 3, 'nav_menu_item', '', 0),
(248, 1, '2019-12-20 10:24:56', '2019-12-20 10:24:56', ' ', '', '', 'publish', 'closed', 'closed', '', '248', '', '', '2019-12-20 10:24:56', '2019-12-20 10:24:56', '', 0, 'http://localhost/wordpress4/?p=248', 2, 'nav_menu_item', '', 0),
(249, 1, '2019-12-20 10:24:56', '2019-12-20 10:24:56', ' ', '', '', 'publish', 'closed', 'closed', '', '249', '', '', '2019-12-20 10:24:56', '2019-12-20 10:24:56', '', 0, 'http://localhost/wordpress4/?p=249', 1, 'nav_menu_item', '', 0),
(251, 1, '2019-12-20 10:26:03', '2019-12-20 10:26:03', ' ', '', '', 'publish', 'closed', 'closed', '', '251', '', '', '2019-12-20 10:55:21', '2019-12-20 10:55:21', '', 0, 'http://localhost/wordpress4/?p=251', 9, 'nav_menu_item', '', 0),
(252, 1, '2019-12-20 10:26:03', '2019-12-20 10:26:03', ' ', '', '', 'publish', 'closed', 'closed', '', '252', '', '', '2019-12-20 10:55:21', '2019-12-20 10:55:21', '', 0, 'http://localhost/wordpress4/?p=252', 10, 'nav_menu_item', '', 0),
(254, 1, '2019-12-20 10:26:03', '2019-12-20 10:26:03', ' ', '', '', 'publish', 'closed', 'closed', '', '254', '', '', '2019-12-20 10:55:21', '2019-12-20 10:55:21', '', 0, 'http://localhost/wordpress4/?p=254', 8, 'nav_menu_item', '', 0),
(255, 1, '2019-12-20 10:26:03', '2019-12-20 10:26:03', ' ', '', '', 'publish', 'closed', 'closed', '', '255', '', '', '2019-12-20 10:55:20', '2019-12-20 10:55:20', '', 0, 'http://localhost/wordpress4/?p=255', 2, 'nav_menu_item', '', 0),
(256, 1, '2019-12-20 10:26:36', '2019-12-20 10:26:36', ' ', '', '', 'publish', 'closed', 'closed', '', '256', '', '', '2019-12-20 10:27:20', '2019-12-20 10:27:20', '', 0, 'http://localhost/wordpress4/?p=256', 1, 'nav_menu_item', '', 0),
(257, 1, '2019-12-20 10:26:36', '2019-12-20 10:26:36', ' ', '', '', 'publish', 'closed', 'closed', '', '257', '', '', '2019-12-20 10:27:20', '2019-12-20 10:27:20', '', 0, 'http://localhost/wordpress4/?p=257', 3, 'nav_menu_item', '', 0),
(258, 1, '2019-12-20 10:26:36', '2019-12-20 10:26:36', ' ', '', '', 'publish', 'closed', 'closed', '', '258', '', '', '2019-12-20 10:27:20', '2019-12-20 10:27:20', '', 0, 'http://localhost/wordpress4/?p=258', 4, 'nav_menu_item', '', 0),
(259, 1, '2019-12-20 10:26:36', '2019-12-20 10:26:36', ' ', '', '', 'publish', 'closed', 'closed', '', '259', '', '', '2019-12-20 10:27:20', '2019-12-20 10:27:20', '', 0, 'http://localhost/wordpress4/?p=259', 6, 'nav_menu_item', '', 0),
(260, 1, '2019-12-20 10:26:36', '2019-12-20 10:26:36', ' ', '', '', 'publish', 'closed', 'closed', '', '260', '', '', '2019-12-20 10:27:20', '2019-12-20 10:27:20', '', 0, 'http://localhost/wordpress4/?p=260', 5, 'nav_menu_item', '', 0),
(261, 1, '2019-12-20 10:26:36', '2019-12-20 10:26:36', ' ', '', '', 'publish', 'closed', 'closed', '', '261', '', '', '2019-12-20 10:27:20', '2019-12-20 10:27:20', '', 0, 'http://localhost/wordpress4/?p=261', 2, 'nav_menu_item', '', 0),
(262, 1, '2019-12-20 10:28:05', '2019-12-20 10:28:05', ' ', '', '', 'publish', 'closed', 'closed', '', '262', '', '', '2019-12-20 10:40:10', '2019-12-20 10:40:10', '', 0, 'http://localhost/wordpress4/?p=262', 1, 'nav_menu_item', '', 0),
(263, 1, '2019-12-20 10:28:06', '2019-12-20 10:28:06', ' ', '', '', 'publish', 'closed', 'closed', '', '263', '', '', '2019-12-20 10:40:10', '2019-12-20 10:40:10', '', 0, 'http://localhost/wordpress4/?p=263', 3, 'nav_menu_item', '', 0),
(264, 1, '2019-12-20 10:28:06', '2019-12-20 10:28:06', ' ', '', '', 'publish', 'closed', 'closed', '', '264', '', '', '2019-12-20 10:40:10', '2019-12-20 10:40:10', '', 0, 'http://localhost/wordpress4/?p=264', 4, 'nav_menu_item', '', 0),
(265, 1, '2019-12-20 10:28:06', '2019-12-20 10:28:06', ' ', '', '', 'publish', 'closed', 'closed', '', '265', '', '', '2019-12-20 10:40:10', '2019-12-20 10:40:10', '', 0, 'http://localhost/wordpress4/?p=265', 6, 'nav_menu_item', '', 0),
(266, 1, '2019-12-20 10:28:06', '2019-12-20 10:28:06', ' ', '', '', 'publish', 'closed', 'closed', '', '266', '', '', '2019-12-20 10:40:10', '2019-12-20 10:40:10', '', 0, 'http://localhost/wordpress4/?p=266', 5, 'nav_menu_item', '', 0),
(267, 1, '2019-12-20 10:28:06', '2019-12-20 10:28:06', ' ', '', '', 'publish', 'closed', 'closed', '', '267', '', '', '2019-12-20 10:40:10', '2019-12-20 10:40:10', '', 0, 'http://localhost/wordpress4/?p=267', 2, 'nav_menu_item', '', 0),
(268, 1, '2019-12-20 10:29:00', '2019-12-20 10:29:00', ' ', '', '', 'publish', 'closed', 'closed', '', '268', '', '', '2019-12-20 10:29:00', '2019-12-20 10:29:00', '', 0, 'http://localhost/wordpress4/?p=268', 1, 'nav_menu_item', '', 0),
(269, 1, '2019-12-20 10:29:00', '2019-12-20 10:29:00', ' ', '', '', 'publish', 'closed', 'closed', '', '269', '', '', '2019-12-20 10:29:00', '2019-12-20 10:29:00', '', 0, 'http://localhost/wordpress4/?p=269', 2, 'nav_menu_item', '', 0),
(270, 1, '2019-12-20 10:29:00', '2019-12-20 10:29:00', ' ', '', '', 'publish', 'closed', 'closed', '', '270', '', '', '2019-12-20 10:29:00', '2019-12-20 10:29:00', '', 0, 'http://localhost/wordpress4/?p=270', 3, 'nav_menu_item', '', 0),
(271, 1, '2019-12-20 10:29:01', '2019-12-20 10:29:01', ' ', '', '', 'publish', 'closed', 'closed', '', '271', '', '', '2019-12-20 10:29:01', '2019-12-20 10:29:01', '', 0, 'http://localhost/wordpress4/?p=271', 4, 'nav_menu_item', '', 0),
(272, 1, '2019-12-20 10:29:01', '2019-12-20 10:29:01', ' ', '', '', 'publish', 'closed', 'closed', '', '272', '', '', '2019-12-20 10:29:01', '2019-12-20 10:29:01', '', 0, 'http://localhost/wordpress4/?p=272', 5, 'nav_menu_item', '', 0),
(273, 1, '2019-12-20 10:29:01', '2019-12-20 10:29:01', ' ', '', '', 'publish', 'closed', 'closed', '', '273', '', '', '2019-12-20 10:29:01', '2019-12-20 10:29:01', '', 0, 'http://localhost/wordpress4/?p=273', 6, 'nav_menu_item', '', 0),
(274, 1, '2019-12-20 10:29:01', '2019-12-20 10:29:01', ' ', '', '', 'publish', 'closed', 'closed', '', '274', '', '', '2019-12-20 10:29:01', '2019-12-20 10:29:01', '', 0, 'http://localhost/wordpress4/?p=274', 7, 'nav_menu_item', '', 0),
(275, 1, '2019-12-20 10:29:01', '2019-12-20 10:29:01', ' ', '', '', 'publish', 'closed', 'closed', '', '275', '', '', '2019-12-20 10:29:01', '2019-12-20 10:29:01', '', 0, 'http://localhost/wordpress4/?p=275', 8, 'nav_menu_item', '', 0),
(276, 1, '2019-12-20 10:29:01', '2019-12-20 10:29:01', ' ', '', '', 'publish', 'closed', 'closed', '', '276', '', '', '2019-12-20 10:29:01', '2019-12-20 10:29:01', '', 0, 'http://localhost/wordpress4/?p=276', 9, 'nav_menu_item', '', 0),
(277, 1, '2019-12-20 10:29:55', '2019-12-20 10:29:55', ' ', '', '', 'publish', 'closed', 'closed', '', '277', '', '', '2019-12-20 10:29:55', '2019-12-20 10:29:55', '', 0, 'http://localhost/wordpress4/?p=277', 1, 'nav_menu_item', '', 0),
(278, 1, '2019-12-20 10:29:55', '2019-12-20 10:29:55', ' ', '', '', 'publish', 'closed', 'closed', '', '278', '', '', '2019-12-20 10:29:55', '2019-12-20 10:29:55', '', 0, 'http://localhost/wordpress4/?p=278', 2, 'nav_menu_item', '', 0),
(279, 1, '2019-12-20 10:29:55', '2019-12-20 10:29:55', ' ', '', '', 'publish', 'closed', 'closed', '', '279', '', '', '2019-12-20 10:29:55', '2019-12-20 10:29:55', '', 0, 'http://localhost/wordpress4/?p=279', 3, 'nav_menu_item', '', 0),
(280, 1, '2019-12-20 10:29:55', '2019-12-20 10:29:55', ' ', '', '', 'publish', 'closed', 'closed', '', '280', '', '', '2019-12-20 10:29:55', '2019-12-20 10:29:55', '', 0, 'http://localhost/wordpress4/?p=280', 4, 'nav_menu_item', '', 0),
(281, 1, '2019-12-20 10:29:55', '2019-12-20 10:29:55', ' ', '', '', 'publish', 'closed', 'closed', '', '281', '', '', '2019-12-20 10:29:55', '2019-12-20 10:29:55', '', 0, 'http://localhost/wordpress4/?p=281', 5, 'nav_menu_item', '', 0),
(282, 1, '2019-12-20 10:32:07', '2019-12-20 10:32:07', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Free Sheeping', 'free_sheeping', 'publish', 'closed', 'closed', '', 'field_5dfca316271f5', '', '', '2019-12-20 10:32:07', '2019-12-20 10:32:07', '', 15, 'http://localhost/wordpress4/?post_type=acf-field&p=282', 5, 'acf-field', '', 0),
(283, 1, '2019-12-20 10:34:17', '2019-12-20 10:34:17', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Brand Image1', 'brand_image1', 'publish', 'closed', 'closed', '', 'field_5dfca33dbf5cd', '', '', '2019-12-20 10:34:17', '2019-12-20 10:34:17', '', 15, 'http://localhost/wordpress4/?post_type=acf-field&p=283', 6, 'acf-field', '', 0),
(284, 1, '2019-12-20 10:34:17', '2019-12-20 10:34:17', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Brand Image2', 'brand_image2', 'publish', 'closed', 'closed', '', 'field_5dfca352bf5ce', '', '', '2019-12-20 10:34:17', '2019-12-20 10:34:17', '', 15, 'http://localhost/wordpress4/?post_type=acf-field&p=284', 7, 'acf-field', '', 0),
(285, 1, '2019-12-20 10:34:17', '2019-12-20 10:34:17', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Brand Image3', 'brand_image3', 'publish', 'closed', 'closed', '', 'field_5dfca364bf5cf', '', '', '2019-12-20 10:34:17', '2019-12-20 10:34:17', '', 15, 'http://localhost/wordpress4/?post_type=acf-field&p=285', 8, 'acf-field', '', 0),
(286, 1, '2019-12-20 10:34:17', '2019-12-20 10:34:17', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Brand Image4', 'brand_image4', 'publish', 'closed', 'closed', '', 'field_5dfca36ebf5d0', '', '', '2019-12-20 10:34:17', '2019-12-20 10:34:17', '', 15, 'http://localhost/wordpress4/?post_type=acf-field&p=286', 9, 'acf-field', '', 0),
(287, 1, '2019-12-20 10:34:17', '2019-12-20 10:34:17', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Brand Image5', 'brand_image5', 'publish', 'closed', 'closed', '', 'field_5dfca37cbf5d1', '', '', '2019-12-20 10:34:17', '2019-12-20 10:34:17', '', 15, 'http://localhost/wordpress4/?post_type=acf-field&p=287', 10, 'acf-field', '', 0),
(288, 1, '2019-12-20 10:34:17', '2019-12-20 10:34:17', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Brand Image6', 'brand_image6', 'publish', 'closed', 'closed', '', 'field_5dfca38bbf5d2', '', '', '2019-12-20 10:34:17', '2019-12-20 10:34:17', '', 15, 'http://localhost/wordpress4/?post_type=acf-field&p=288', 11, 'acf-field', '', 0),
(289, 1, '2019-12-20 10:34:17', '2019-12-20 10:34:17', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Brand Image7', 'brand_image7', 'publish', 'closed', 'closed', '', 'field_5dfca397bf5d3', '', '', '2019-12-20 10:34:17', '2019-12-20 10:34:17', '', 15, 'http://localhost/wordpress4/?post_type=acf-field&p=289', 12, 'acf-field', '', 0),
(290, 1, '2019-12-20 10:36:04', '2019-12-20 10:36:04', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-12-20 10:36:04', '2019-12-20 10:36:04', '', 11, 'http://localhost/wordpress4/index.php/2019/12/20/11-revision-v1/', 0, 'revision', '', 0),
(291, 1, '2019-12-20 10:36:07', '2019-12-20 10:36:07', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-12-20 10:36:07', '2019-12-20 10:36:07', '', 11, 'http://localhost/wordpress4/index.php/2019/12/20/11-revision-v1/', 0, 'revision', '', 0),
(297, 1, '2019-12-20 10:40:47', '2019-12-20 10:40:47', ' ', '', '', 'publish', 'closed', 'closed', '', '297', '', '', '2019-12-20 10:55:20', '2019-12-20 10:55:20', '', 0, 'http://localhost/wordpress4/?p=297', 3, 'nav_menu_item', '', 0),
(298, 1, '2019-12-20 10:40:47', '2019-12-20 10:40:47', ' ', '', '', 'publish', 'closed', 'closed', '', '298', '', '', '2019-12-20 10:55:21', '2019-12-20 10:55:21', '', 0, 'http://localhost/wordpress4/?p=298', 6, 'nav_menu_item', '', 0),
(299, 1, '2019-12-20 10:40:47', '2019-12-20 10:40:47', ' ', '', '', 'publish', 'closed', 'closed', '', '299', '', '', '2019-12-20 10:55:21', '2019-12-20 10:55:21', '', 0, 'http://localhost/wordpress4/?p=299', 7, 'nav_menu_item', '', 0),
(300, 1, '2019-12-20 10:40:47', '2019-12-20 10:40:47', ' ', '', '', 'publish', 'closed', 'closed', '', '300', '', '', '2019-12-20 10:55:20', '2019-12-20 10:55:20', '', 0, 'http://localhost/wordpress4/?p=300', 4, 'nav_menu_item', '', 0),
(301, 1, '2019-12-20 10:40:47', '2019-12-20 10:40:47', ' ', '', '', 'publish', 'closed', 'closed', '', '301', '', '', '2019-12-20 10:55:20', '2019-12-20 10:55:20', '', 0, 'http://localhost/wordpress4/?p=301', 5, 'nav_menu_item', '', 0),
(302, 1, '2019-12-20 10:45:51', '2019-12-20 10:45:51', '', 'Brand', '', 'publish', 'closed', 'closed', '', 'brand', '', '', '2019-12-20 10:55:21', '2019-12-20 10:55:21', '', 0, 'http://localhost/wordpress4/?p=302', 11, 'nav_menu_item', '', 0),
(303, 1, '2019-12-20 10:45:51', '2019-12-20 10:45:51', ' ', '', '', 'publish', 'closed', 'closed', '', '303', '', '', '2019-12-20 10:55:21', '2019-12-20 10:55:21', '', 0, 'http://localhost/wordpress4/?p=303', 13, 'nav_menu_item', '', 0),
(304, 1, '2019-12-20 10:45:51', '2019-12-20 10:45:51', ' ', '', '', 'publish', 'closed', 'closed', '', '304', '', '', '2019-12-20 10:55:21', '2019-12-20 10:55:21', '', 0, 'http://localhost/wordpress4/?p=304', 14, 'nav_menu_item', '', 0),
(305, 1, '2019-12-20 10:45:52', '2019-12-20 10:45:52', '', 'Bewley\'s', '', 'publish', 'closed', 'closed', '', 'bewleys', '', '', '2019-12-20 10:55:21', '2019-12-20 10:55:21', '', 0, 'http://localhost/wordpress4/?p=305', 15, 'nav_menu_item', '', 0),
(306, 1, '2019-12-20 10:45:52', '2019-12-20 10:45:52', ' ', '', '', 'publish', 'closed', 'closed', '', '306', '', '', '2019-12-20 10:55:21', '2019-12-20 10:55:21', '', 0, 'http://localhost/wordpress4/?p=306', 16, 'nav_menu_item', '', 0),
(307, 1, '2019-12-20 10:45:52', '2019-12-20 10:45:52', ' ', '', '', 'publish', 'closed', 'closed', '', '307', '', '', '2019-12-20 10:55:21', '2019-12-20 10:55:21', '', 0, 'http://localhost/wordpress4/?p=307', 17, 'nav_menu_item', '', 0),
(308, 1, '2019-12-20 10:45:52', '2019-12-20 10:45:52', ' ', '', '', 'publish', 'closed', 'closed', '', '308', '', '', '2019-12-20 10:55:21', '2019-12-20 10:55:21', '', 0, 'http://localhost/wordpress4/?p=308', 18, 'nav_menu_item', '', 0),
(309, 1, '2019-12-20 10:45:52', '2019-12-20 10:45:52', ' ', '', '', 'publish', 'closed', 'closed', '', '309', '', '', '2019-12-20 10:55:21', '2019-12-20 10:55:21', '', 0, 'http://localhost/wordpress4/?p=309', 19, 'nav_menu_item', '', 0),
(310, 1, '2019-12-20 10:46:15', '2019-12-20 10:46:15', ' ', '', '', 'publish', 'closed', 'closed', '', '310', '', '', '2019-12-20 10:55:21', '2019-12-20 10:55:21', '', 0, 'http://localhost/wordpress4/?p=310', 12, 'nav_menu_item', '', 0),
(311, 1, '2019-12-20 10:47:02', '2019-12-20 10:47:02', ' ', '', '', 'publish', 'closed', 'closed', '', '311', '', '', '2019-12-20 10:47:20', '2019-12-20 10:47:20', '', 0, 'http://localhost/wordpress4/?p=311', 1, 'nav_menu_item', '', 0),
(312, 1, '2019-12-20 10:47:02', '2019-12-20 10:47:02', ' ', '', '', 'publish', 'closed', 'closed', '', '312', '', '', '2019-12-20 10:47:20', '2019-12-20 10:47:20', '', 0, 'http://localhost/wordpress4/?p=312', 2, 'nav_menu_item', '', 0),
(313, 1, '2019-12-20 10:47:02', '2019-12-20 10:47:02', ' ', '', '', 'publish', 'closed', 'closed', '', '313', '', '', '2019-12-20 10:47:20', '2019-12-20 10:47:20', '', 0, 'http://localhost/wordpress4/?p=313', 3, 'nav_menu_item', '', 0),
(314, 1, '2019-12-20 10:47:02', '2019-12-20 10:47:02', '', 'Bewley\'s', '', 'publish', 'closed', 'closed', '', 'bewleys-2', '', '', '2019-12-20 10:47:20', '2019-12-20 10:47:20', '', 0, 'http://localhost/wordpress4/?p=314', 4, 'nav_menu_item', '', 0),
(315, 1, '2019-12-20 10:47:02', '2019-12-20 10:47:02', ' ', '', '', 'publish', 'closed', 'closed', '', '315', '', '', '2019-12-20 10:47:20', '2019-12-20 10:47:20', '', 0, 'http://localhost/wordpress4/?p=315', 5, 'nav_menu_item', '', 0),
(316, 1, '2019-12-20 10:47:02', '2019-12-20 10:47:02', ' ', '', '', 'publish', 'closed', 'closed', '', '316', '', '', '2019-12-20 10:47:20', '2019-12-20 10:47:20', '', 0, 'http://localhost/wordpress4/?p=316', 6, 'nav_menu_item', '', 0),
(317, 1, '2019-12-20 10:47:02', '2019-12-20 10:47:02', ' ', '', '', 'publish', 'closed', 'closed', '', '317', '', '', '2019-12-20 10:47:20', '2019-12-20 10:47:20', '', 0, 'http://localhost/wordpress4/?p=317', 7, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(318, 1, '2019-12-20 10:47:02', '2019-12-20 10:47:02', ' ', '', '', 'publish', 'closed', 'closed', '', '318', '', '', '2019-12-20 10:47:20', '2019-12-20 10:47:20', '', 0, 'http://localhost/wordpress4/?p=318', 8, 'nav_menu_item', '', 0),
(319, 1, '2019-12-20 10:47:44', '2019-12-20 10:47:44', ' ', '', '', 'publish', 'closed', 'closed', '', '319', '', '', '2019-12-20 10:47:49', '2019-12-20 10:47:49', '', 0, 'http://localhost/wordpress4/?p=319', 1, 'nav_menu_item', '', 0),
(320, 1, '2019-12-20 10:47:44', '2019-12-20 10:47:44', ' ', '', '', 'publish', 'closed', 'closed', '', '320', '', '', '2019-12-20 10:47:49', '2019-12-20 10:47:49', '', 0, 'http://localhost/wordpress4/?p=320', 2, 'nav_menu_item', '', 0),
(321, 1, '2019-12-20 10:47:44', '2019-12-20 10:47:44', ' ', '', '', 'publish', 'closed', 'closed', '', '321', '', '', '2019-12-20 10:47:49', '2019-12-20 10:47:49', '', 0, 'http://localhost/wordpress4/?p=321', 3, 'nav_menu_item', '', 0),
(322, 1, '2019-12-20 10:47:44', '2019-12-20 10:47:44', ' ', '', '', 'publish', 'closed', 'closed', '', '322', '', '', '2019-12-20 10:47:49', '2019-12-20 10:47:49', '', 0, 'http://localhost/wordpress4/?p=322', 4, 'nav_menu_item', '', 0),
(323, 1, '2019-12-20 10:47:44', '2019-12-20 10:47:44', ' ', '', '', 'publish', 'closed', 'closed', '', '323', '', '', '2019-12-20 10:47:49', '2019-12-20 10:47:49', '', 0, 'http://localhost/wordpress4/?p=323', 5, 'nav_menu_item', '', 0),
(324, 1, '2019-12-20 10:48:51', '2019-12-20 10:48:51', ' ', '', '', 'publish', 'closed', 'closed', '', '324', '', '', '2019-12-20 10:48:56', '2019-12-20 10:48:56', '', 0, 'http://localhost/wordpress4/?p=324', 1, 'nav_menu_item', '', 0),
(325, 1, '2019-12-20 10:48:51', '2019-12-20 10:48:51', ' ', '', '', 'publish', 'closed', 'closed', '', '325', '', '', '2019-12-20 10:48:56', '2019-12-20 10:48:56', '', 0, 'http://localhost/wordpress4/?p=325', 2, 'nav_menu_item', '', 0),
(326, 1, '2019-12-20 10:48:51', '2019-12-20 10:48:51', ' ', '', '', 'publish', 'closed', 'closed', '', '326', '', '', '2019-12-20 10:48:56', '2019-12-20 10:48:56', '', 0, 'http://localhost/wordpress4/?p=326', 3, 'nav_menu_item', '', 0),
(327, 1, '2019-12-20 10:48:51', '2019-12-20 10:48:51', ' ', '', '', 'publish', 'closed', 'closed', '', '327', '', '', '2019-12-20 10:48:56', '2019-12-20 10:48:56', '', 0, 'http://localhost/wordpress4/?p=327', 4, 'nav_menu_item', '', 0),
(328, 1, '2019-12-20 10:48:51', '2019-12-20 10:48:51', ' ', '', '', 'publish', 'closed', 'closed', '', '328', '', '', '2019-12-20 10:48:56', '2019-12-20 10:48:56', '', 0, 'http://localhost/wordpress4/?p=328', 5, 'nav_menu_item', '', 0),
(329, 1, '2019-12-20 10:48:51', '2019-12-20 10:48:51', ' ', '', '', 'publish', 'closed', 'closed', '', '329', '', '', '2019-12-20 10:48:56', '2019-12-20 10:48:56', '', 0, 'http://localhost/wordpress4/?p=329', 6, 'nav_menu_item', '', 0),
(330, 1, '2019-12-20 10:48:51', '2019-12-20 10:48:51', ' ', '', '', 'publish', 'closed', 'closed', '', '330', '', '', '2019-12-20 10:48:56', '2019-12-20 10:48:56', '', 0, 'http://localhost/wordpress4/?p=330', 7, 'nav_menu_item', '', 0),
(331, 1, '2019-12-20 10:48:51', '2019-12-20 10:48:51', ' ', '', '', 'publish', 'closed', 'closed', '', '331', '', '', '2019-12-20 10:48:56', '2019-12-20 10:48:56', '', 0, 'http://localhost/wordpress4/?p=331', 8, 'nav_menu_item', '', 0),
(332, 1, '2019-12-20 10:48:52', '2019-12-20 10:48:52', ' ', '', '', 'publish', 'closed', 'closed', '', '332', '', '', '2019-12-20 10:48:56', '2019-12-20 10:48:56', '', 0, 'http://localhost/wordpress4/?p=332', 9, 'nav_menu_item', '', 0),
(333, 1, '2019-12-20 10:52:17', '2019-12-20 10:52:17', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]\nbarista "[your-subject]"\nbarista <sinevor13@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on barista (http://localhost/wordpress4)\nsinevor13@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nbarista "[your-subject]"\nbarista <sinevor13@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on barista (http://localhost/wordpress4)\n[your-email]\nReply-To: sinevor13@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-12-20 10:52:17', '2019-12-20 10:52:17', '', 0, 'http://localhost/wordpress4/?post_type=wpcf7_contact_form&p=333', 0, 'wpcf7_contact_form', '', 0),
(334, 1, '2019-12-20 10:55:20', '2019-12-20 10:55:20', ' ', '', '', 'publish', 'closed', 'closed', '', '334', '', '', '2019-12-20 10:55:20', '2019-12-20 10:55:20', '', 0, 'http://localhost/wordpress4/?p=334', 1, 'nav_menu_item', '', 0),
(335, 1, '2019-12-20 11:05:08', '2019-12-20 11:05:08', '<strong>Hario Buono V60 Power Kettle 800ml</strong>\r\n\r\nThis is the famous Buono power kettle from Hario\'s V60 range of pour over brewing equipment. It is very simple and easy to use while it retains its elegant V60 design. Once again, Hario simply provides beautiful and reliable equipment and then gets out of the way to let you brew the best coffee you can.\r\n\r\nThe Buono V60 Power Kettle has one switch: the "On" button. There is no need to turn it off (but you can), as it automatically turns off once the water reaches the boil. It is equipped with a protection system to prevent the kettle from working while there is no water inside. The top part (the actual kettle) is cordless and the base has a 360 degree rotation angle.\r\n\r\n<strong>Characteristics:</strong>\r\n<ul>\r\n 	<li>Easy, one flip of the switch turn on kettle</li>\r\n 	<li>Automatic power off when water has come to a boil</li>\r\n 	<li>Boil-dry protection feature cuts power if there is no water</li>\r\n 	<li>Cordless kettle</li>\r\n 	<li>Power cord may be stored under the bottom of power plate.</li>\r\n 	<li>Boil time: ~5 minutes for 800ml</li>\r\n 	<li>Max capacity: 800ml</li>\r\n 	<li>Min capacity: 150ml</li>\r\n 	<li>Kettle/ lid: Stainless steel.</li>\r\n 	<li>Handle/base/knob: Polypropylene</li>\r\n</ul>', 'Hario Buono V60 Power Kettle 800ml', '<strong>Hario Buono V60 Power Kettle 800ml</strong>\r\n\r\nThis is the famous Buono power kettle from Hario\'s V60 range of pour over brewing equipment. It is very simple and easy to use while it retains its elegant V60 design. Once again, Hario simply provides beautiful and reliable equipment and then gets out of the way to let you brew the best coffee you can.', 'publish', 'open', 'closed', '', 'hario-buono-v60-power-kettle-800ml', '', '', '2019-12-20 11:05:09', '2019-12-20 11:05:09', '', 0, 'http://localhost/wordpress4/?post_type=product&#038;p=335', 0, 'product', '', 0),
(336, 1, '2019-12-20 11:06:55', '2019-12-20 11:06:55', '<h3>Aluminum Scoop 12oz - 350ml</h3>\r\nAluminum Scoop suitable for all your multipurpose scooping and serving needs, for ice of all shapes and dry goods (dry produce, baking ingredients, candy, etc)\r\n<ul>\r\n 	<li class="ui-autocomplete-category">Dimensions: 15cm (22cm with handle) x8cm</li>\r\n</ul>', 'Aluminum Scoop 12oz - 350ml', '<h3>Aluminum Scoop 12oz - 350ml</h3>\r\nAluminum Scoop suitable for all your multipurpose scooping and serving needs, for ice of all shapes and dry goods (dry produce, baking ingredients, candy, etc)\r\n<ul>\r\n 	<li class="ui-autocomplete-category">Dimensions: 15cm (22cm with handle) x8cm</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'aluminum-scoop-12oz-350ml', '', '', '2019-12-20 11:06:55', '2019-12-20 11:06:55', '', 0, 'http://localhost/wordpress4/?post_type=product&#038;p=336', 0, 'product', '', 0),
(337, 1, '2019-12-20 11:08:29', '2019-12-20 11:08:29', '<strong>Hario Buono V60 Power Kettle 800ml</strong>\r\n\r\nThis is the famous Buono power kettle from Hario\'s V60 range of pour over brewing equipment. It is very simple and easy to use while it retains its elegant V60 design. Once again, Hario simply provides beautiful and reliable equipment and then gets out of the way to let you brew the best coffee you can.\r\n\r\nThe Buono V60 Power Kettle has one switch: the "On" button. There is no need to turn it off (but you can), as it automatically turns off once the water reaches the boil. It is equipped with a protection system to prevent the kettle from working while there is no water inside. The top part (the actual kettle) is cordless and the base has a 360 degree rotation angle.\r\n\r\n<strong>Characteristics:</strong>\r\n<ul>\r\n 	<li>Easy, one flip of the switch turn on kettle</li>\r\n 	<li>Automatic power off when water has come to a boil</li>\r\n 	<li>Boil-dry protection feature cuts power if there is no water</li>\r\n 	<li>Cordless kettle</li>\r\n 	<li>Power cord may be stored under the bottom of power plate.</li>\r\n 	<li>Boil time: ~5 minutes for 800ml</li>\r\n 	<li>Max capacity: 800ml</li>\r\n 	<li>Min capacity: 150ml</li>\r\n 	<li>Kettle/ lid: Stainless steel.</li>\r\n 	<li>Handle/base/knob: Polypropylene</li>\r\n</ul>', 'Hario Buono V60 Power Kettle 800ml', '<strong>Hario Buono V60 Power Kettle 800ml</strong>\r\n\r\nThe Buono V60 Power Kettle has one switch: the "On" button. There is no need to turn it off (but you can), as it automatically turns off once the water reaches the boil. It is equipped with a protection system to prevent the kettle from working while there is no water inside. The top part (the actual kettle) is cordless and the base has a 360 degree rotation angle.', 'publish', 'open', 'closed', '', 'hario-buono-v60-power-kettle-800ml-2', '', '', '2019-12-20 11:08:29', '2019-12-20 11:08:29', '', 0, 'http://localhost/wordpress4/?post_type=product&#038;p=337', 0, 'product', '', 0),
(338, 1, '2019-12-20 11:14:54', '2019-12-20 11:14:54', '<strong>Hario One Cup Tea Maker 200ml</strong>\r\n\r\nA simple and effective method of brewing one cup of looseleaf tea.\r\n\r\nInsert the tea.Fill with hot water and put on the lid.Give it a few minutes.\r\n\r\nEnjoy yor tea.\r\n\r\n<strong>Characteristics:</strong>\r\n<ul>\r\n 	<li><span class="a-list-item">Personal Hario tea cup</span></li>\r\n 	<li><span class="a-list-item">Large strainer</span></li>\r\n 	<li><span class="a-list-item">Lid / strainer stand</span></li>\r\n 	<li><span class="a-list-item">Heat treated glass</span></li>\r\n 	<li><span class="a-list-item">Clear glass for perfect tea color</span></li>\r\n 	<li>Capacity 200ml</li>\r\n</ul>', 'Hario One Cup Tea Maker 200ml', '<strong>Hario One Cup Tea Maker 200ml</strong>\r\n\r\nA simple and effective method of brewing one cup of looseleaf tea.\r\n\r\nInsert the tea.Fill with hot water and put on the lid.Give it a few minutes.\r\n\r\nEnjoy yor tea.', 'publish', 'open', 'closed', '', 'hario-one-cup-tea-maker-200ml', '', '', '2019-12-20 11:14:54', '2019-12-20 11:14:54', '', 0, 'http://localhost/wordpress4/?post_type=product&#038;p=338', 0, 'product', '', 0),
(339, 1, '2019-12-20 11:17:46', '2019-12-20 11:17:46', '<h3>Belogia Milk Pitcher Mpt 100 600ml</h3>\r\n<ul>\r\n 	<li>Milk pitcher with integrated LCD thermometer.</li>\r\n 	<li>Μade of stainless steel s/s 304.</li>\r\n 	<li>Ergonomic ambidextrous design handle.</li>\r\n 	<li>Temperature measurements in Celsius.</li>\r\n 	<li>Complete milk temperature control.</li>\r\n 	<li>Latte art spout.</li>\r\n 	<li>Constantly excellent froth milk quality.</li>\r\n 	<li>Zero burned milk wastage. Three colour indicators for marking the pitcher\r\naccording to milk used.</li>\r\n</ul>', 'Belogia Milk Pitcher Mpt 100 600ml', '<h3>Belogia Milk Pitcher Mpt 100 600ml</h3>\r\n<ul>\r\n 	<li>Milk pitcher with integrated LCD thermometer.</li>\r\n 	<li>Μade of stainless steel s/s 304.</li>\r\n 	<li>Ergonomic ambidextrous design handle.</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'belogia-milk-pitcher-mpt-100-600ml', '', '', '2019-12-20 11:27:48', '2019-12-20 11:27:48', '', 0, 'http://localhost/wordpress4/?post_type=product&#038;p=339', 0, 'product', '', 0),
(340, 1, '2019-12-20 11:19:02', '2019-12-20 11:19:02', '<h3>Belogia Milk Pitcher Mpt 110 350ml</h3>\r\n<ul>\r\n 	<li>Capacity: 350ml</li>\r\n 	<li>Stainless steel milk pitcher with teflon coating in white, orange, red, cyan, ciel or blue color</li>\r\n 	<li>Easy frothing</li>\r\n 	<li>Ideal spout for latte art</li>\r\n 	<li>Easy cleaning</li>\r\n</ul>', 'Belogia Milk Pitcher Mpt 110 350ml', '<h3>Belogia Milk Pitcher Mpt 110 350ml</h3>\r\n<ul>\r\n 	<li>Capacity: 350ml</li>\r\n 	<li>Stainless steel milk pitcher with teflon coating in white, orange, red, cyan, ciel or blue color</li>\r\n 	<li>Easy frothing</li>\r\n 	<li>Ideal spout for latte art</li>\r\n 	<li>Easy cleaning</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'belogia-milk-pitcher-mpt-110-350ml', '', '', '2019-12-20 11:20:00', '2019-12-20 11:20:00', '', 0, 'http://localhost/wordpress4/?post_type=product&#038;p=340', 0, 'product', '', 0),
(341, 1, '2019-12-20 11:21:11', '2019-12-20 11:21:11', '<h3>Belogia Milk Pitcher Mpt 110 590ml</h3>\r\n<ul>\r\n 	<li>Capacity: 590ml</li>\r\n 	<li>Stainless steel milk pitcher with teflon coating in white, orange, red, cyan, ciel or blue color</li>\r\n 	<li>Easy frothing</li>\r\n 	<li>Ideal spout for latte art</li>\r\n 	<li>Easy cleaning</li>\r\n</ul>', 'Belogia Milk Pitcher Mpt 110 590ml', '<h3>Belogia Milk Pitcher Mpt 110 590ml</h3>\r\n<ul>\r\n 	<li>Capacity: 590ml</li>\r\n 	<li>Stainless steel milk pitcher with teflon coating in white, orange, red, cyan, ciel or blue color</li>\r\n 	<li>Easy frothing</li>\r\n 	<li>Ideal spout for latte art</li>\r\n 	<li>Easy cleaning</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'belogia-milk-pitcher-mpt-110-590ml', '', '', '2019-12-20 11:21:12', '2019-12-20 11:21:12', '', 0, 'http://localhost/wordpress4/?post_type=product&#038;p=341', 0, 'product', '', 0),
(342, 1, '2019-12-20 11:22:37', '2019-12-20 11:22:37', '<h3>Belogia Milk Pitcher Mpt 130 Transparent Red 350ml</h3>\r\n<strong>Features:</strong>\r\n<ul>\r\n 	<li>Milk pitcher made of stainless steel, in transparent red color.</li>\r\n 	<li>Easy frothing.</li>\r\n 	<li>Ideal spout for latte art.</li>\r\n 	<li>Easy cleaning.</li>\r\n</ul>', 'Belogia Milk Pitcher Mpt 130 Transparent Red 350ml', '<h3>Belogia Milk Pitcher Mpt 130 Transparent Red 350ml</h3>\r\n<strong>Features:</strong>\r\n<ul>\r\n 	<li>Milk pitcher made of stainless steel, in transparent red color.</li>\r\n 	<li>Easy frothing.</li>\r\n 	<li>Ideal spout for latte art.</li>\r\n 	<li>Easy cleaning.</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'belogia-milk-pitcher-mpt-130-transparent-red-350ml', '', '', '2019-12-20 11:22:43', '2019-12-20 11:22:43', '', 0, 'http://localhost/wordpress4/?post_type=product&#038;p=342', 0, 'product', '', 0),
(343, 1, '2019-12-20 11:24:24', '2019-12-20 11:24:24', '<h3>Belogia Milk Pitcher Silicon Mpt 160 590ml</h3>\r\n<ul>\r\n 	<li>Milk pitcher made of stainless steel, handle free</li>\r\n 	<li>Insulated wrap prevents burns and is removable for easy cleaning</li>\r\n 	<li>Designed to give the barista great flexibility and control during latte art preparation</li>\r\n 	<li>Wide base and tapered spout to ensure rich and dense cappuccino froth</li>\r\n</ul>', 'Belogia Milk Pitcher Silicon Mpt 160 590ml', '<h3>Belogia Milk Pitcher Silicon Mpt 160 590ml</h3>\r\n<ul>\r\n 	<li>Milk pitcher made of stainless steel, handle free</li>\r\n 	<li>Insulated wrap prevents burns and is removable for easy cleaning</li>\r\n 	<li>Designed to give the barista great flexibility and control during latte art preparation</li>\r\n 	<li>Wide base and tapered spout to ensure rich and dense cappuccino froth</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'belogia-milk-pitcher-silicon-mpt-160-590ml', '', '', '2019-12-20 11:24:24', '2019-12-20 11:24:24', '', 0, 'http://localhost/wordpress4/?post_type=product&#038;p=343', 0, 'product', '', 0),
(344, 1, '2019-12-20 11:25:15', '2019-12-20 11:25:15', '<h3>Bar Caddy Black - PVC</h3>\r\nOrganise your work bench with this Bar Caddy and save time for you and your stuff. Its black colour fits perfect almost in every bar.', 'Bar Caddy Black - PVC', '<h3>Bar Caddy Black - PVC</h3>\r\nOrganise your work bench with this Bar Caddy and save time for you and your stuff. Its black colour fits perfect almost in every bar.', 'publish', 'open', 'closed', '', 'bar-caddy-black-pvc', '', '', '2019-12-20 11:27:43', '2019-12-20 11:27:43', '', 0, 'http://localhost/wordpress4/?post_type=product&#038;p=344', 0, 'product', '', 0),
(345, 1, '2019-12-20 11:23:32', '2019-12-20 11:23:32', '<strong>Barista Shop Stainless Steel Coffee Spoon 7g</strong>\r\n\r\nStainless steel coffee spoon for baristas and coffee professionals. With a capacity of 7g it can be used for fresh ground coffee, tea and in the preparation of others drinks such as decaf, chocolate drinks and more.', 'Barista Shop Stainless Steel Coffee Spoon 7g', '<strong>Barista Shop Stainless Steel Coffee Spoon 7g</strong>\r\n\r\nStainless steel coffee spoon for baristas and coffee professionals. With a capacity of 7g it can be used for fresh ground coffee, tea and in the preparation of others drinks such as decaf, chocolate drinks and more.', 'publish', 'open', 'closed', '', 'barista-shop-stainless-steel-coffee-spoon-7g', '', '', '2019-12-20 11:23:33', '2019-12-20 11:23:33', '', 0, 'http://localhost/wordpress4/?post_type=product&#038;p=345', 0, 'product', '', 0),
(346, 1, '2019-12-20 11:06:47', '2019-12-20 11:06:47', '', 'aluminum-scoop-12oz-350ml', '', 'inherit', 'open', 'closed', '', 'aluminum-scoop-12oz-350ml', '', '', '2019-12-20 11:06:47', '2019-12-20 11:06:47', '', 336, 'http://localhost/wordpress4/wp-content/uploads/2019/12/aluminum-scoop-12oz-350ml.jpg', 0, 'attachment', 'image/jpeg', 0),
(347, 1, '2019-12-20 11:08:17', '2019-12-20 11:08:17', '', 'hario-buono-v60-power-kettle-800ml', '', 'inherit', 'open', 'closed', '', 'hario-buono-v60-power-kettle-800ml-2', '', '', '2019-12-20 11:08:17', '2019-12-20 11:08:17', '', 337, 'http://localhost/wordpress4/wp-content/uploads/2019/12/hario-buono-v60-power-kettle-800ml.jpg', 0, 'attachment', 'image/jpeg', 0),
(348, 1, '2019-12-20 11:14:47', '2019-12-20 11:14:47', '', 'hario-one-cup-tea-maker-200ml', '', 'inherit', 'open', 'closed', '', 'hario-one-cup-tea-maker-200ml', '', '', '2019-12-20 11:14:47', '2019-12-20 11:14:47', '', 338, 'http://localhost/wordpress4/wp-content/uploads/2019/12/hario-one-cup-tea-maker-200ml.jpg', 0, 'attachment', 'image/jpeg', 0),
(349, 1, '2019-12-20 11:17:32', '2019-12-20 11:17:32', '', 'belogia-milk-pitcher-mpt-100-600ml', '', 'inherit', 'open', 'closed', '', 'belogia-milk-pitcher-mpt-100-600ml', '', '', '2019-12-20 11:17:32', '2019-12-20 11:17:32', '', 339, 'http://localhost/wordpress4/wp-content/uploads/2019/12/belogia-milk-pitcher-mpt-100-600ml.jpg', 0, 'attachment', 'image/jpeg', 0),
(350, 1, '2019-12-20 11:18:55', '2019-12-20 11:18:55', '', 'belogia-milk-pitcher-teflon-350ml', '', 'inherit', 'open', 'closed', '', 'belogia-milk-pitcher-teflon-350ml', '', '', '2019-12-20 11:18:55', '2019-12-20 11:18:55', '', 340, 'http://localhost/wordpress4/wp-content/uploads/2019/12/belogia-milk-pitcher-teflon-350ml.jpg', 0, 'attachment', 'image/jpeg', 0),
(351, 1, '2019-12-20 11:21:04', '2019-12-20 11:21:04', '', 'belogia-milk-pitcher-mpt-110-590ml', '', 'inherit', 'open', 'closed', '', 'belogia-milk-pitcher-mpt-110-590ml', '', '', '2019-12-20 11:21:04', '2019-12-20 11:21:04', '', 341, 'http://localhost/wordpress4/wp-content/uploads/2019/12/belogia-milk-pitcher-mpt-110-590ml.jpg', 0, 'attachment', 'image/jpeg', 0),
(352, 1, '2019-12-20 11:22:31', '2019-12-20 11:22:31', '', 'belogia-milk-pitcher-mpt-130-transparent-red-350ml', '', 'inherit', 'open', 'closed', '', 'belogia-milk-pitcher-mpt-130-transparent-red-350ml', '', '', '2019-12-20 11:22:31', '2019-12-20 11:22:31', '', 342, 'http://localhost/wordpress4/wp-content/uploads/2019/12/belogia-milk-pitcher-mpt-130-transparent-red-350ml.jpg', 0, 'attachment', 'image/jpeg', 0),
(353, 1, '2019-12-20 11:23:26', '2019-12-20 11:23:26', '', 'barista-shop-stainless-steel-coffee-spoon-7g', '', 'inherit', 'open', 'closed', '', 'barista-shop-stainless-steel-coffee-spoon-7g', '', '', '2019-12-20 11:23:26', '2019-12-20 11:23:26', '', 345, 'http://localhost/wordpress4/wp-content/uploads/2019/12/barista-shop-stainless-steel-coffee-spoon-7g.jpg', 0, 'attachment', 'image/jpeg', 0),
(354, 1, '2019-12-20 11:24:19', '2019-12-20 11:24:19', '', 'belogia-milk-pitcher-silicon-mpt-160-590ml', '', 'inherit', 'open', 'closed', '', 'belogia-milk-pitcher-silicon-mpt-160-590ml', '', '', '2019-12-20 11:24:19', '2019-12-20 11:24:19', '', 343, 'http://localhost/wordpress4/wp-content/uploads/2019/12/belogia-milk-pitcher-silicon-mpt-160-590ml.jpg', 0, 'attachment', 'image/jpeg', 0),
(355, 1, '2019-12-20 11:25:09', '2019-12-20 11:25:09', '', 'bar-organiser-black', '', 'inherit', 'open', 'closed', '', 'bar-organiser-black', '', '', '2019-12-20 11:25:09', '2019-12-20 11:25:09', '', 344, 'http://localhost/wordpress4/wp-content/uploads/2019/12/bar-organiser-black.jpg', 0, 'attachment', 'image/jpeg', 0),
(356, 1, '2019-12-28 09:40:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-12-28 09:40:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress4/?p=356', 0, 'post', '', 0),
(357, 1, '2019-12-28 09:44:16', '2019-12-28 09:44:16', '', 'Order &ndash; December 28, 2019 @ 09:44 AM', '', 'wc-on-hold', 'open', 'closed', 'wc_order_XrpwDvRjHVp7o', 'order-dec-28-2019-0944-am', '', '', '2019-12-28 09:44:16', '2019-12-28 09:44:16', '', 0, 'http://localhost/wordpress4/?post_type=shop_order&#038;p=357', 0, 'shop_order', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'pwb_brand_image', '57'),
(2, 18, 'pwb_brand_image', '63'),
(3, 19, 'pwb_brand_image', '51'),
(4, 20, 'pwb_brand_image', '45'),
(5, 21, 'pwb_brand_image', '33'),
(6, 22, 'pwb_brand_image', '45'),
(7, 23, 'pwb_brand_image', '27'),
(8, 24, 'pwb_brand_image', '39'),
(9, 25, 'order', '0'),
(10, 25, 'display_type', ''),
(11, 25, 'thumbnail_id', '0'),
(12, 26, 'order', '0'),
(13, 26, 'display_type', ''),
(14, 26, 'thumbnail_id', '0'),
(15, 27, 'order', '0'),
(16, 27, 'display_type', ''),
(17, 27, 'thumbnail_id', '0'),
(18, 28, 'order', '0'),
(19, 28, 'display_type', ''),
(20, 28, 'thumbnail_id', '0'),
(21, 29, 'order', '0'),
(22, 29, 'display_type', ''),
(23, 29, 'thumbnail_id', '0'),
(24, 25, 'product_count_product_cat', '5'),
(25, 29, 'product_count_product_cat', '6'),
(26, 30, 'product_count_product_tag', '3'),
(27, 32, 'product_count_product_tag', '1'),
(28, 34, 'product_count_product_tag', '1'),
(29, 28, 'product_count_product_cat', '3'),
(30, 26, 'product_count_product_cat', '5'),
(31, 48, 'product_count_product_tag', '1'),
(32, 49, 'product_count_product_tag', '1'),
(33, 27, 'product_count_product_cat', '3'),
(34, 38, 'product_count_product_tag', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(17, 'AGC', 'agc', 0),
(18, 'Collectivo', 'collectivo', 0),
(19, 'Express', 'express', 0),
(20, 'Barista Coffee', 'barista-coffee', 0),
(21, 'Bewley\'s', 'bewleys', 0),
(22, 'AROMA', 'aroma', 0),
(23, 'Coffee Daily', 'coffee-daily', 0),
(24, 'Lavazza', 'lavazza', 0),
(25, 'Cleaning', 'cleaning', 0),
(26, 'Cups', 'cups', 0),
(27, 'Filters', 'filters', 0),
(28, 'Glasses', 'glasses', 0),
(29, 'Tamping', 'tamping', 0),
(30, 'Ceramic', 'ceramic', 0),
(31, 'Metallic', 'metallic', 0),
(32, 'Black', 'black', 0),
(33, 'Digital', 'digital', 0),
(34, 'Gray', 'gray', 0),
(35, 'White', 'white', 0),
(36, 'Midnight', 'midnight', 0),
(37, 'High Price', 'high-price', 0),
(38, 'Cups', 'cups', 0),
(39, 'SubHeader', 'subheader', 0),
(40, 'Header Menu', 'header-menu', 0),
(41, 'Mobile Menu', 'mobile-menu', 0),
(42, 'Footer Menu1', 'footer-menu1', 0),
(43, 'Footer Menu2', 'footer-menu2', 0),
(44, 'Footer Menu3', 'footer-menu3', 0),
(45, 'Aside Menu1', 'aside-menu1', 0),
(46, 'Aside Menu2', 'aside-menu2', 0),
(47, 'Aside Menu3', 'aside-menu3', 0),
(48, 'Wood', 'wood', 0),
(49, 'Grey', 'grey', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(247, 39, 0),
(248, 39, 0),
(249, 39, 0),
(251, 40, 0),
(252, 40, 0),
(254, 40, 0),
(255, 40, 0),
(256, 41, 0),
(257, 41, 0),
(258, 41, 0),
(259, 41, 0),
(260, 41, 0),
(261, 41, 0),
(262, 42, 0),
(263, 42, 0),
(264, 42, 0),
(265, 42, 0),
(266, 42, 0),
(267, 42, 0),
(268, 43, 0),
(269, 43, 0),
(270, 43, 0),
(271, 43, 0),
(272, 43, 0),
(273, 43, 0),
(274, 43, 0),
(275, 43, 0),
(276, 43, 0),
(277, 44, 0),
(278, 44, 0),
(279, 44, 0),
(280, 44, 0),
(281, 44, 0),
(297, 40, 0),
(298, 40, 0),
(299, 40, 0),
(300, 40, 0),
(301, 40, 0),
(302, 40, 0),
(303, 40, 0),
(304, 40, 0),
(305, 40, 0),
(306, 40, 0),
(307, 40, 0),
(308, 40, 0),
(309, 40, 0),
(310, 40, 0),
(311, 45, 0),
(312, 45, 0),
(313, 45, 0),
(314, 45, 0),
(315, 45, 0),
(316, 45, 0),
(317, 45, 0),
(318, 45, 0),
(319, 46, 0),
(320, 46, 0),
(321, 46, 0),
(322, 46, 0),
(323, 46, 0),
(324, 47, 0),
(325, 47, 0),
(326, 47, 0),
(327, 47, 0),
(328, 47, 0),
(329, 47, 0),
(330, 47, 0),
(331, 47, 0),
(332, 47, 0),
(334, 40, 0),
(335, 2, 0),
(335, 17, 0),
(335, 25, 0),
(335, 29, 0),
(335, 30, 0),
(335, 32, 0),
(336, 2, 0),
(336, 17, 0),
(336, 25, 0),
(336, 34, 0),
(337, 2, 0),
(337, 18, 0),
(337, 21, 0),
(337, 28, 0),
(337, 29, 0),
(337, 30, 0),
(338, 2, 0),
(338, 20, 0),
(338, 21, 0),
(338, 25, 0),
(338, 26, 0),
(338, 29, 0),
(338, 48, 0),
(339, 2, 0),
(339, 8, 0),
(339, 17, 0),
(339, 22, 0),
(339, 26, 0),
(339, 30, 0),
(340, 2, 0),
(340, 21, 0),
(340, 23, 0),
(340, 25, 0),
(340, 26, 0),
(340, 49, 0),
(341, 2, 0),
(341, 17, 0),
(341, 23, 0),
(341, 24, 0),
(341, 27, 0),
(341, 29, 0),
(342, 2, 0),
(342, 17, 0),
(342, 24, 0),
(342, 26, 0),
(342, 29, 0),
(342, 38, 0),
(343, 2, 0),
(343, 18, 0),
(343, 23, 0),
(343, 26, 0),
(343, 27, 0),
(344, 2, 0),
(344, 8, 0),
(344, 17, 0),
(344, 20, 0),
(344, 25, 0),
(344, 28, 0),
(345, 2, 0),
(345, 21, 0),
(345, 27, 0),
(345, 28, 0),
(345, 29, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
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
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 11),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 2),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(17, 17, 'pwb-brand', '', 0, 6),
(18, 18, 'pwb-brand', '', 0, 2),
(19, 19, 'pwb-brand', '', 0, 0),
(20, 20, 'pwb-brand', '', 0, 2),
(21, 21, 'pwb-brand', '', 0, 4),
(22, 22, 'pwb-brand', '', 0, 1),
(23, 23, 'pwb-brand', '', 0, 3),
(24, 24, 'pwb-brand', '', 0, 2),
(25, 25, 'product_cat', '', 0, 5),
(26, 26, 'product_cat', '', 0, 5),
(27, 27, 'product_cat', '', 0, 3),
(28, 28, 'product_cat', '', 0, 3),
(29, 29, 'product_cat', '', 0, 6),
(30, 30, 'product_tag', '', 0, 3),
(31, 31, 'product_tag', '', 0, 0),
(32, 32, 'product_tag', '', 0, 1),
(33, 33, 'product_tag', '', 0, 0),
(34, 34, 'product_tag', '', 0, 1),
(35, 35, 'product_tag', '', 0, 0),
(36, 36, 'product_tag', '', 0, 0),
(37, 37, 'product_tag', '', 0, 0),
(38, 38, 'product_tag', '', 0, 1),
(39, 39, 'nav_menu', '', 0, 3),
(40, 40, 'nav_menu', '', 0, 19),
(41, 41, 'nav_menu', '', 0, 6),
(42, 42, 'nav_menu', '', 0, 6),
(43, 43, 'nav_menu', '', 0, 9),
(44, 44, 'nav_menu', '', 0, 5),
(45, 45, 'nav_menu', '', 0, 8),
(46, 46, 'nav_menu', '', 0, 5),
(47, 47, 'nav_menu', '', 0, 9),
(48, 48, 'product_tag', '', 0, 1),
(49, 49, 'product_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '356'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:mNzGyJ5fsedwZO3XA+FlTuaG'),
(19, 1, 'jetpack_tracks_anon_id', 'jetpack:9WgJgejDT140wsu+IGyUYTzH'),
(20, 1, 'wc_last_active', '1577491200'),
(23, 1, 'wp_user-settings', 'libraryContent=browse'),
(24, 1, 'wp_user-settings-time', '1576836651'),
(26, 1, 'closedpostboxes_page', 'a:0:{}'),
(27, 1, 'metaboxhidden_page', 'a:0:{}'),
(28, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(29, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";}'),
(30, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(31, 1, 'nav_menu_recently_edited', '40'),
(32, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:4:{s:32:"6855456e2fe46a9d49d3d3af4f57443d";a:11:{s:3:"key";s:32:"6855456e2fe46a9d49d3d3af4f57443d";s:10:"product_id";i:336;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:23;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:23;s:8:"line_tax";i:0;}s:32:"d81f9c1be2e08964bf9f24b15f0e4900";a:11:{s:3:"key";s:32:"d81f9c1be2e08964bf9f24b15f0e4900";s:10:"product_id";i:345;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:4;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:4;s:8:"line_tax";i:0;}s:32:"3dd48ab31d016ffcbf3314df2b3cb9ce";a:11:{s:3:"key";s:32:"3dd48ab31d016ffcbf3314df2b3cb9ce";s:10:"product_id";i:341;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:21;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:21;s:8:"line_tax";i:0;}s:32:"58238e9ae2dd305d79c2ebc8c1883422";a:6:{s:3:"key";s:32:"58238e9ae2dd305d79c2ebc8c1883422";s:10:"product_id";i:342;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
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
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$Brae/sjiyGIPg9ey348ssuwiiRFzyK/', 'root', 'sinevor13@gmail.com', '', '2019-12-20 09:20:59', '', 0, 'root');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`) VALUES
(335, '', 0, 0, '21.00', '21.00', 1, NULL, 'instock', 0, '0.00', 0),
(336, '', 0, 0, '23.00', '23.00', 1, NULL, 'instock', 0, '0.00', 1),
(337, '', 0, 0, '22.00', '22.00', 1, NULL, 'instock', 0, '0.00', 0),
(338, '', 0, 0, '23.00', '23.00', 1, NULL, 'instock', 0, '0.00', 0),
(339, '', 0, 0, '34.00', '34.00', 1, NULL, 'instock', 0, '0.00', 0),
(340, '', 0, 0, '12.00', '12.00', 0, NULL, 'instock', 0, '0.00', 0),
(341, '', 0, 0, '21.00', '21.00', 0, NULL, 'instock', 0, '0.00', 0),
(342, '', 0, 0, '67.00', '67.00', 0, NULL, 'instock', 0, '0.00', 0),
(343, '', 0, 0, '14.00', '14.00', 0, NULL, 'instock', 0, '0.00', 0),
(344, '', 0, 0, '23.00', '23.00', 0, NULL, 'instock', 0, '0.00', 0),
(345, '', 0, 0, '4.00', '4.00', 0, NULL, 'instock', 0, '0.00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '336'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '23'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '23'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Aluminum Scoop 12oz - 350ml', 'line_item', 357);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '478b2fbe45c9209f1696c016eb2cfbc2', 'a:7:{s:4:"cart";s:1624:"a:4:{s:32:"d81f9c1be2e08964bf9f24b15f0e4900";a:11:{s:3:"key";s:32:"d81f9c1be2e08964bf9f24b15f0e4900";s:10:"product_id";i:345;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:4;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:4;s:8:"line_tax";i:0;}s:32:"b3967a0e938dc2a6340e258630febd5a";a:11:{s:3:"key";s:32:"b3967a0e938dc2a6340e258630febd5a";s:10:"product_id";i:344;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:23;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:23;s:8:"line_tax";i:0;}s:32:"40008b9a5380fcacce3976bf7c08af5b";a:11:{s:3:"key";s:32:"40008b9a5380fcacce3976bf7c08af5b";s:10:"product_id";i:340;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:12;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:12;s:8:"line_tax";i:0;}s:32:"819f46e52c25763a55cc642422644317";a:11:{s:3:"key";s:32:"819f46e52c25763a55cc642422644317";s:10:"product_id";i:338;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:23;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:23;s:8:"line_tax";i:0;}}";s:11:"cart_totals";s:405:"a:15:{s:8:"subtotal";s:5:"62.00";s:12:"subtotal_tax";d:0;s:14:"shipping_total";s:4:"0.00";s:12:"shipping_tax";d:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";d:0;s:12:"discount_tax";d:0;s:19:"cart_contents_total";s:5:"62.00";s:17:"cart_contents_tax";d:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";s:4:"0.00";s:7:"fee_tax";d:0;s:9:"fee_taxes";a:0:{}s:5:"total";s:5:"62.00";s:9:"total_tax";d:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:687:"a:26:{s:2:"id";s:1:"0";s:13:"date_modified";s:0:"";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"UA";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"UA";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:0:"";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1578293254);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'United Kingdom (UK)', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'GB', 'country');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Индексы таблицы `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Индексы таблицы `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Индексы таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Индексы таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Индексы таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Индексы таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Индексы таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Индексы таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Индексы таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=672;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1551;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
