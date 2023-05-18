-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 07:47 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `threebits`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add album', 1, 'add_album'),
(2, 'Can change album', 1, 'change_album'),
(3, 'Can delete album', 1, 'delete_album'),
(4, 'Can view album', 1, 'view_album'),
(5, 'Can add song', 2, 'add_song'),
(6, 'Can change song', 2, 'change_song'),
(7, 'Can delete song', 2, 'delete_song'),
(8, 'Can view song', 2, 'view_song'),
(9, 'Can add log entry', 3, 'add_logentry'),
(10, 'Can change log entry', 3, 'change_logentry'),
(11, 'Can delete log entry', 3, 'delete_logentry'),
(12, 'Can view log entry', 3, 'view_logentry'),
(13, 'Can add permission', 4, 'add_permission'),
(14, 'Can change permission', 4, 'change_permission'),
(15, 'Can delete permission', 4, 'delete_permission'),
(16, 'Can view permission', 4, 'view_permission'),
(17, 'Can add group', 5, 'add_group'),
(18, 'Can change group', 5, 'change_group'),
(19, 'Can delete group', 5, 'delete_group'),
(20, 'Can view group', 5, 'view_group'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add content type', 7, 'add_contenttype'),
(26, 'Can change content type', 7, 'change_contenttype'),
(27, 'Can delete content type', 7, 'delete_contenttype'),
(28, 'Can view content type', 7, 'view_contenttype'),
(29, 'Can add session', 8, 'add_session'),
(30, 'Can change session', 8, 'change_session'),
(31, 'Can delete session', 8, 'delete_session'),
(32, 'Can view session', 8, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$ufnTQbhxAgD87HgZAvYlp5$WMLOLTW8W7R+JM2L8kM+RRc0MPb0u5Plxv2DLg/PhXE=', '2023-05-08 10:01:14.042971', 1, 'threebitsmusic', '', '', 'threebits@music.com', 1, 1, '2023-04-08 09:26:16.465941'),
(2, 'pbkdf2_sha256$600000$I356Iu05fTwakBYyH5Y9Zs$mAPy5gddaLZlTsnHYblrsp0gESPBC7lj1rYJGtxZx1U=', '2023-05-08 10:51:02.869105', 0, 'Roni', 'Bhaskar', 'Mandal', '1380bhaskar@gmail.com', 0, 1, '2023-04-08 09:36:20.000000'),
(3, 'pbkdf2_sha256$390000$1he5jIJDHFqwt2mMn1XqhG$Hz1Q+fp+XNmGk8uE0rV1bOEXOr/M2yhFIz3coxoFfWg=', '2023-04-08 10:51:29.000000', 0, 'Sayan', 'SAYAN', 'SAHA', 'amisayan19@gmail.com', 0, 1, '2023-04-08 10:51:29.000000'),
(4, 'pbkdf2_sha256$390000$15fInweNqjLKIxhRwkutkg$MnkNtTzrDITC8LnKNdVTgbr//Tr/YYfvwnIQ8wrWWmo=', '2023-04-08 11:07:41.000000', 0, 'Joga', 'jagannath', 'mondal', 'jiojoga@gmail.com', 0, 1, '2023-04-08 11:07:40.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-04-08 10:22:03.681006', '12', 'Jhoome Jo Pathaan Arijit Singh', 3, '', 2, 1),
(2, '2023-04-08 10:45:17.658733', '4', 'Arijit Singh', 2, '[{\"changed\": {\"fields\": [\"Album logo\"]}}]', 1, 1),
(3, '2023-04-13 12:08:22.690663', '1', 'Majhe Majhe Tobo Dekha Pai Rabindra Sangeet', 3, '', 2, 1),
(4, '2023-04-13 12:08:37.453126', '2', 'Amar Hiyar Majhe Rabindra Sangeet', 3, '', 2, 1),
(5, '2023-04-13 13:43:01.503246', '2', 'roni', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 6, 1),
(6, '2023-04-13 13:43:17.440581', '4', 'Joga', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 6, 1),
(7, '2023-04-13 13:43:29.088109', '3', 'Sayan', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 6, 1),
(8, '2023-04-13 13:43:45.257988', '2', 'Roni', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 6, 1),
(9, '2023-04-19 13:16:06.937026', '14', 'dilliwali Girlfriend Arijit Singh', 3, '', 2, 1),
(10, '2023-04-21 21:42:54.853651', '33', 'Amar Hiyar Majhe Rabindra Sangeet', 2, '[{\"changed\": {\"fields\": [\"Song file\"]}}]', 2, 1),
(11, '2023-05-08 10:03:31.523196', '1', 'Rabindra Sangeet', 2, '[{\"changed\": {\"fields\": [\"Album logo\", \"Album artist\"]}}]', 1, 1),
(12, '2023-05-08 10:13:06.816925', '5', 'Devotional', 2, '[{\"changed\": {\"fields\": [\"Album logo\", \"Album genre\"]}}]', 1, 1),
(13, '2023-05-08 10:15:27.952102', '23', 'Hari Hari Devotional', 3, '', 2, 1),
(14, '2023-05-08 10:15:27.954102', '21', 'Nine Islands Maha Mantra Devotional', 3, '', 2, 1),
(15, '2023-05-08 10:15:27.957102', '20', 'Jai Sri Krsna Devotional', 3, '', 2, 1),
(16, '2023-05-08 10:22:18.530399', '35', 'Krishno Preme Pora Deho Devotional', 1, '[{\"added\": {}}]', 2, 1),
(17, '2023-05-08 10:24:57.627414', '36', 'HARE KRISHNA FAKIRA Devotional', 1, '[{\"added\": {}}]', 2, 1),
(18, '2023-05-08 10:32:32.908034', '9', 'Ed Sheeran', 1, '[{\"added\": {}}]', 1, 1),
(19, '2023-05-08 10:35:02.183022', '37', 'Bad Habits Ed Sheeran', 1, '[{\"added\": {}}]', 2, 1),
(20, '2023-05-08 10:36:15.791905', '38', 'I Don\'t Care Ed Sheeran', 1, '[{\"added\": {}}]', 2, 1),
(21, '2023-05-08 10:37:16.203122', '39', 'Perfect Ed Sheeran', 1, '[{\"added\": {}}]', 2, 1),
(22, '2023-05-08 10:38:08.379441', '40', 'Beautiful People Ed Sheeran', 1, '[{\"added\": {}}]', 2, 1),
(23, '2023-05-08 10:40:30.966107', '41', 'South of the Border Ed Sheeran', 1, '[{\"added\": {}}]', 2, 1),
(24, '2023-05-08 10:41:38.583572', '42', 'Photograph Ed Sheeran', 1, '[{\"added\": {}}]', 2, 1),
(25, '2023-05-08 10:44:25.275048', '4', 'Arijit Singh', 2, '[{\"changed\": {\"fields\": [\"Album artist\"]}}]', 1, 1),
(26, '2023-05-08 10:46:44.402827', '43', 'Bare Bare Aar Asha Hobena Devotional', 1, '[{\"added\": {}}]', 2, 1),
(27, '2023-05-08 10:48:21.691038', '5', 'Closer to life', 2, '[{\"changed\": {\"fields\": [\"Album name\", \"Album artist\"]}}]', 1, 1),
(28, '2023-05-08 10:50:44.163011', '22', 'Hare Krishna Closer to life', 2, '[{\"changed\": {\"fields\": [\"Song name\"]}}]', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(3, 'admin', 'logentry'),
(5, 'auth', 'group'),
(4, 'auth', 'permission'),
(6, 'auth', 'user'),
(7, 'contenttypes', 'contenttype'),
(8, 'sessions', 'session'),
(1, 'threebits', 'album'),
(2, 'threebits', 'song');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-04-08 09:24:01.945749'),
(2, 'auth', '0001_initial', '2023-04-08 09:24:02.418939'),
(3, 'admin', '0001_initial', '2023-04-08 09:24:02.562436'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-04-08 09:24:02.580919'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-08 09:24:02.590622'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-04-08 09:24:02.652377'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-04-08 09:24:02.710521'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-04-08 09:24:02.729029'),
(9, 'auth', '0004_alter_user_username_opts', '2023-04-08 09:24:02.741780'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-04-08 09:24:02.789715'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-04-08 09:24:02.794364'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-04-08 09:24:02.806948'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-04-08 09:24:02.824566'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-04-08 09:24:02.845913'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-04-08 09:24:02.868901'),
(16, 'auth', '0011_update_proxy_permissions', '2023-04-08 09:24:02.877902'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-04-08 09:24:02.959278'),
(18, 'sessions', '0001_initial', '2023-04-08 09:24:03.007315'),
(19, 'threebits', '0001_initial', '2023-04-08 09:24:03.177036'),
(20, 'threebits', '0002_alter_album_uploaded_on', '2023-04-08 09:24:03.194015'),
(21, 'threebits', '0003_alter_album_uploaded_on', '2023-04-08 09:24:03.207955'),
(22, 'threebits', '0004_alter_album_uploaded_on', '2023-04-08 09:24:03.220110'),
(23, 'threebits', '0005_alter_album_uploaded_on', '2023-04-08 09:24:03.230762'),
(24, 'threebits', '0006_alter_album_uploaded_on', '2023-04-08 09:24:03.242766'),
(25, 'threebits', '0007_alter_album_uploaded_on', '2023-04-08 11:27:47.009803'),
(26, 'threebits', '0008_alter_album_uploaded_on', '2023-04-12 12:57:16.619993'),
(27, 'threebits', '0009_alter_album_uploaded_on', '2023-04-12 12:57:16.635948'),
(28, 'threebits', '0010_alter_album_uploaded_on', '2023-04-12 12:57:16.648915'),
(29, 'threebits', '0011_alter_album_uploaded_on', '2023-04-12 13:00:01.237371'),
(30, 'threebits', '0012_alter_album_uploaded_on', '2023-04-12 13:02:46.705928'),
(31, 'threebits', '0013_alter_album_uploaded_on', '2023-04-12 13:04:51.581185'),
(32, 'threebits', '0014_alter_album_uploaded_on', '2023-04-13 13:41:10.082547'),
(33, 'threebits', '0015_alter_album_uploaded_on', '2023-04-13 13:52:05.485814'),
(34, 'threebits', '0016_alter_album_uploaded_on', '2023-04-13 14:24:26.789368'),
(35, 'threebits', '0017_alter_album_uploaded_on', '2023-04-13 15:13:24.975839'),
(36, 'threebits', '0018_alter_album_uploaded_on', '2023-04-19 13:02:08.701022'),
(37, 'threebits', '0019_alter_album_uploaded_on', '2023-04-19 13:02:08.709999'),
(38, 'threebits', '0020_alter_album_uploaded_on', '2023-04-19 13:02:08.716979'),
(39, 'threebits', '0021_alter_album_uploaded_on', '2023-04-19 13:02:36.872950'),
(40, 'threebits', '0022_alter_album_uploaded_on', '2023-04-19 13:07:24.370400'),
(41, 'threebits', '0023_alter_album_uploaded_on', '2023-04-19 13:07:32.535799'),
(42, 'threebits', '0024_alter_album_uploaded_on', '2023-04-19 13:10:32.019134'),
(43, 'threebits', '0025_alter_album_uploaded_on', '2023-04-19 13:19:03.407684'),
(44, 'threebits', '0026_alter_album_uploaded_on', '2023-04-19 13:20:49.748067'),
(45, 'threebits', '0027_alter_album_uploaded_on', '2023-04-19 15:28:59.327199'),
(46, 'threebits', '0028_alter_album_uploaded_on', '2023-04-20 06:18:54.957688'),
(47, 'threebits', '0029_alter_album_uploaded_on', '2023-04-20 21:53:50.775980'),
(48, 'threebits', '0030_alter_album_uploaded_on', '2023-04-21 21:39:48.410038'),
(49, 'threebits', '0031_alter_album_uploaded_on', '2023-05-04 11:52:30.494322'),
(50, 'threebits', '0032_alter_album_uploaded_on', '2023-05-04 11:56:40.300767'),
(51, 'threebits', '0033_alter_album_uploaded_on', '2023-05-08 07:16:56.582003'),
(52, 'threebits', '0034_alter_album_uploaded_on', '2023-05-08 07:16:56.592957'),
(53, 'threebits', '0035_alter_album_uploaded_on', '2023-05-08 11:06:57.077425'),
(54, 'threebits', '0036_alter_album_uploaded_on', '2023-05-08 23:01:38.010708'),
(55, 'threebits', '0037_alter_album_uploaded_on', '2023-05-08 23:06:23.523092'),
(56, 'threebits', '0038_alter_album_uploaded_on', '2023-05-08 23:06:49.126975'),
(57, 'threebits', '0039_alter_album_uploaded_on', '2023-05-08 23:13:07.858301'),
(58, 'threebits', '0040_alter_album_uploaded_on', '2023-05-08 23:13:07.865301'),
(59, 'threebits', '0041_alter_album_uploaded_on', '2023-05-08 23:17:16.784556');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('lahpwhbflfo2r64p78gkh772u7k0b2el', '.eJxVjDsOwjAQBe_iGln-sV5T0ucM1vqHA8iW4qRC3B0ipYD2zcx7MU_bWv028uLnxC5MstPvFig-cttBulO7dR57W5c58F3hBx186ik_r4f7d1Bp1G_tCIyAcwLQSNFgkcVEJ5O2RUmFNgmSOqNQ4JTBGAMIlTWAcYUQ0LL3B7_jNsc:1pptMH:WyiQG_Y1XAMt9QdVd9uUOGWBXgeWamly9uS4lehQzY8', '2023-05-05 21:41:37.436154'),
('n81eas7806o5y7o8bpot4jp7zjhn6j07', '.eJxVjDsOwjAQBe_iGln-sV5T0ucM1vqHA8iW4qRC3B0ipYD2zcx7MU_bWv028uLnxC5MstPvFig-cttBulO7dR57W5c58F3hBx186ik_r4f7d1Bp1G_tCIyAcwLQSNFgkcVEJ5O2RUmFNgmSOqNQ4JTBGAMIlTWAcYUQ0LL3B7_jNsc:1pmUpH:KyUOkzBbFSOV7FWFjimuF_LXQMD9leviDpWYU4F4QxQ', '2023-04-26 12:53:31.355781'),
('wqwe2fx4jcoegoktbz5oueox7h7cfjla', '.eJxVjMsOwiAQRf-FtSE8hgIu3fcbyACjVA0kpV0Z_11JutDtPeeeFwu4byXsndawZHZmwE6_W8T0oDpAvmO9NZ5a3dYl8qHwg3Y-t0zPy-H-BQr2MrJWKkHJCI-Q_SS0iURZSzSTloAekyLvZPKARltUBMrK7wedSxrElb0_yMw3BA:1pl1Gf:g6jeewSF-9MxCL78FU5LV43ak4WU4p5ffx8Dyru0o-8', '2023-04-22 11:07:41.359217');

-- --------------------------------------------------------

--
-- Table structure for table `threebits_album`
--

CREATE TABLE `threebits_album` (
  `id` bigint(20) NOT NULL,
  `album_name` varchar(30) NOT NULL,
  `uploaded_on` date NOT NULL,
  `album_logo` varchar(100) NOT NULL,
  `album_genre` varchar(30) NOT NULL,
  `album_artist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `threebits_album`
--

INSERT INTO `threebits_album` (`id`, `album_name`, `uploaded_on`, `album_logo`, `album_genre`, `album_artist_id`) VALUES
(1, 'Rabindra Sangeet', '2023-04-08', 'user_2/r1.jpg', 'Originals', 2),
(3, 'Anuv Jain', '2023-04-08', 'user_2/download_1.jpg', 'Lo-Fi', 2),
(4, 'Arijit Singh', '2023-04-08', 'user_2/download.jpg', 'Romantic', 3),
(5, 'Closer to life', '2023-04-08', 'user_3/k2.jpg', 'Shree Kirshna', 2),
(6, 'Atif Aslam', '2023-04-08', 'user_4/download_3.jpg', 'Romantic', 4),
(9, 'Ed Sheeran', '2023-05-08', 'user_2/ed2.png', 'fun', 2);

-- --------------------------------------------------------

--
-- Table structure for table `threebits_song`
--

CREATE TABLE `threebits_song` (
  `id` bigint(20) NOT NULL,
  `song_name` varchar(40) NOT NULL,
  `song_file` varchar(100) NOT NULL,
  `song_album_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `threebits_song`
--

INSERT INTO `threebits_song` (`id`, `song_name`, `song_file`, `song_album_id`) VALUES
(3, 'Bhalobeshe shokhi nibhrite', 'user_1/Bhalobeshe_shokhi_nibhrite__Jayati_Chakaraborty__Tagore_song.mp3', 1),
(4, 'Baarishein', 'user_2/BaarisheinPaglaSongs.mp3', 3),
(5, 'Alag Aasmaan', 'user_2/Alag_Aasmaan_-_Mp3Song.fm.mp3', 3),
(6, 'Mishri', 'user_2/Anuv_Jain_MISHRI_Studio.mp3', 3),
(7, 'Mazaak', 'user_2/MAZAAK.mp3', 3),
(8, 'Ocean', 'user_2/ocean_anuv_jain_cover_mp3_-_Dhotigeet.mp3', 3),
(9, 'Guzara', 'user_2/guzara_anuv_jain_-_Dhotigeet.mp3', 3),
(15, 'Badtameez Dil', 'user_2/Badtameez_Dil_Full_Song_HD_Yeh_Jawaani_Hai_Deewani__PRITAM__Ranbir_Kapoor_Deepika_H04vmJV.mp3', 4),
(16, 'Hamari Adhuri Kahani', 'user_2/Hamari_Adhuri_Kahani_Title_Track_Full_Video_-_Emraan_HashmiVidya_BalanArijit_Singh.mp3', 4),
(17, 'Phir Bhi Tumko Chaahunga', 'user_2/Phir_Bhi_Tumko_Chaahunga_-_Full_Song__Arijit_Singh__Arjun_K__Shraddha_K__Mithoon__Manoj_M.mp3', 4),
(18, 'apna bana le', 'user_2/Apna_Bana_Le_Song___Arijit_Singh__Bhediya__Varun_Dhawan_Kriti_Sanon__Tu_Mera_Koi__o86bGGn.mp3', 4),
(19, 'Muskurane', 'user_2/Muskurane_Romantic.mp3', 4),
(22, 'Hare Krishna', 'user_3/Hare_Krishna_Iskcon_Kirtan__Hare_Krishna_Hare_Rama__Hare_Krishna_Mantra__Lord_Kri_03Oexe7.mp3', 5),
(24, 'aadat', 'user_4/Aadat_Juda_Hoke_Bhi__Atif_Aslam__Kunal_Khemu__Kalyug__Sayeed_Q__Emraan_Hashmi__Hitz_Music.mp3', 6),
(25, 'tere sang yaara', 'user_4/Tere_Sang_Yaara_-_Full_Video__Rustom__Akshay_Kumar__Ileana_Dcruz__Arko_ft._Atif_A_NohVwxb.mp3', 6),
(26, 'Dil Diyan Gallan', 'user_4/Dil_Diyan_Gallan_Song__Tiger_Zinda_Hai__Salman_Khan_Katrina_Kaif__Atif_Aslam__Vis_kIMO0Oa.mp3', 6),
(27, 'Main Agar(tubelight)', 'user_4/Main_Agar_Lyric_Video_-_TubelightSalman_Khan_Sohail_KhanPritamAtif_AslamKabir_Khan.mp3', 6),
(28, 'Jeene Laga Hoon', 'user_4/Jeene_Laga_Hoon_Lyrical_-_Ramaiya_Vastavaiya__Girish_Kumar_Shruti_Haasan__Atif_Aslam.mp3', 6),
(29, 'Toota Jo Kabhi Taara', 'user_4/Toota_Jo_Kabhi_Tara_-_Tiger_Shroff__Jacqueline__Atif_Aslam_Sumedha_K__Sachin_Jigar.mp3', 6),
(30, 'Majhe Majhe Tobo Dekha Pai', 'user_1/Majhe_Majhe_Tobo_Dekha_Pai_by_Borno_Chakroborty__Rabindra_Sangeet__Rabindra_Fusion_-_1.mp3', 1),
(31, 'O Je Mane Na Mana', 'user_1/Rabindra_Sangeet__O_Je_Mane_Na_Mana__Somlata_Acharyya_Chowdhury__Somlata_And_The_Aces.mp3', 1),
(32, 'Tomay Gaan Shonabo', 'user_1/Tomay_Gaan_Shonabo_-_Rupankar_Rabi_thakurer_gaan.mp3', 1),
(33, 'Amar Hiyar Majhe', 'user_1/Amar_Hiyar_Majhe_আমর__হয়র__মঝ___Rabindra_Sangeet___Sanchita_Roy__SVF_Devotional.mp3', 1),
(35, 'Krishno Preme Pora Deho', 'user_3/Krishno_Preme_Pora_Deho_-_Live_performance_by_band_Fakira_-_Fakira_-Bengali_Folk_2018.mp3', 5),
(36, 'HARE KRISHNA FAKIRA', 'user_3/HARE_KRISHNA_-_FAKIRA_-_SRI_CHAITANYA.mp3', 5),
(37, 'Bad Habits', 'user_2/Ed_Sheeran_-_Bad_Habits_Official_Video.mp3', 9),
(38, 'I Don\'t Care', 'user_2/Ed_Sheeran_-_I_Dont_Care_Live_At_Abbey_Road.mp3', 9),
(39, 'Perfect', 'user_2/Ed_Sheeran_-_Perfect_Official_Music_Video.mp3', 9),
(40, 'Beautiful People', 'user_2/Ed_Sheeran_-_Beautiful_People_feat._Khalid_Official_Music_Video.mp3', 9),
(41, 'South of the Border', 'user_2/Ed_Sheeran_-_South_of_the_Border_feat._Camila_Cabello__Cardi_B_Official_Music_Video.mp3', 9),
(42, 'Photograph', 'user_2/Ed_Sheeran_-_Photograph_Official_Music_Video.mp3', 9),
(43, 'Bare Bare Aar Asha Hobena', 'user_3/Bare_Bare_Aar_Asha_Hobena__Bhoba_Pagla__FAKIRA__Cover.mp3', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `threebits_album`
--
ALTER TABLE `threebits_album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `threebits_album_album_artist_id_8ef76354_fk_auth_user_id` (`album_artist_id`);

--
-- Indexes for table `threebits_song`
--
ALTER TABLE `threebits_song`
  ADD PRIMARY KEY (`id`),
  ADD KEY `threebits_song_song_album_id_5f8899ea_fk_threebits_album_id` (`song_album_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `threebits_album`
--
ALTER TABLE `threebits_album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `threebits_song`
--
ALTER TABLE `threebits_song`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `threebits_album`
--
ALTER TABLE `threebits_album`
  ADD CONSTRAINT `threebits_album_album_artist_id_8ef76354_fk_auth_user_id` FOREIGN KEY (`album_artist_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `threebits_song`
--
ALTER TABLE `threebits_song`
  ADD CONSTRAINT `threebits_song_song_album_id_5f8899ea_fk_threebits_album_id` FOREIGN KEY (`song_album_id`) REFERENCES `threebits_album` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
