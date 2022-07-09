-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Abr-2022 às 13:55
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `wikibosch`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Token', 7, 'add_token'),
(26, 'Can change Token', 7, 'change_token'),
(27, 'Can delete Token', 7, 'delete_token'),
(28, 'Can view Token', 7, 'view_token'),
(29, 'Can add token', 8, 'add_tokenproxy'),
(30, 'Can change token', 8, 'change_tokenproxy'),
(31, 'Can delete token', 8, 'delete_tokenproxy'),
(32, 'Can view token', 8, 'view_tokenproxy'),
(33, 'Can add class', 9, 'add_classes'),
(34, 'Can change class', 9, 'change_classes'),
(35, 'Can delete class', 9, 'delete_classes'),
(36, 'Can view class', 9, 'view_classes'),
(37, 'Can add extension category', 10, 'add_eecategory'),
(38, 'Can change extension category', 10, 'change_eecategory'),
(39, 'Can delete extension category', 10, 'delete_eecategory'),
(40, 'Can view extension category', 10, 'view_eecategory'),
(41, 'Can add group', 11, 'add_groups'),
(42, 'Can change group', 11, 'change_groups'),
(43, 'Can delete group', 11, 'delete_groups'),
(44, 'Can view group', 11, 'view_groups'),
(45, 'Can add link category', 12, 'add_lcategory'),
(46, 'Can change link category', 12, 'change_lcategory'),
(47, 'Can delete link category', 12, 'delete_lcategory'),
(48, 'Can view link category', 12, 'view_lcategory'),
(49, 'Can add note', 13, 'add_note'),
(50, 'Can change note', 13, 'change_note'),
(51, 'Can delete note', 13, 'delete_note'),
(52, 'Can view note', 13, 'view_note'),
(53, 'Can add post', 14, 'add_posts'),
(54, 'Can change post', 14, 'change_posts'),
(55, 'Can delete post', 14, 'delete_posts'),
(56, 'Can view post', 14, 'view_posts'),
(57, 'Can add project\'s category', 15, 'add_projcat'),
(58, 'Can change project\'s category', 15, 'change_projcat'),
(59, 'Can delete project\'s category', 15, 'delete_projcat'),
(60, 'Can view project\'s category', 15, 'view_projcat'),
(61, 'Can add Quick Access', 16, 'add_quickacess'),
(62, 'Can change Quick Access', 16, 'change_quickacess'),
(63, 'Can delete Quick Access', 16, 'delete_quickacess'),
(64, 'Can view Quick Access', 16, 'view_quickacess'),
(65, 'Can add shift', 17, 'add_shift'),
(66, 'Can change shift', 17, 'change_shift'),
(67, 'Can delete shift', 17, 'delete_shift'),
(68, 'Can view shift', 17, 'view_shift'),
(69, 'Can add project', 18, 'add_project'),
(70, 'Can change project', 18, 'change_project'),
(71, 'Can delete project', 18, 'delete_project'),
(72, 'Can view project', 18, 'view_project'),
(73, 'Can add link', 19, 'add_links'),
(74, 'Can change link', 19, 'change_links'),
(75, 'Can delete link', 19, 'delete_links'),
(76, 'Can view link', 19, 'view_links'),
(77, 'Can add feedback', 20, 'add_feedback'),
(78, 'Can change feedback', 20, 'change_feedback'),
(79, 'Can delete feedback', 20, 'delete_feedback'),
(80, 'Can view feedback', 20, 'view_feedback'),
(81, 'Can add contact', 21, 'add_extensions_emails'),
(82, 'Can change contact', 21, 'change_extensions_emails'),
(83, 'Can delete contact', 21, 'delete_extensions_emails'),
(84, 'Can view contact', 21, 'view_extensions_emails'),
(85, 'Can add bus', 22, 'add_bus'),
(86, 'Can change bus', 22, 'change_bus'),
(87, 'Can delete bus', 22, 'delete_bus'),
(88, 'Can view bus', 22, 'view_bus'),
(89, 'Can add event type', 23, 'add_eventtype'),
(90, 'Can change event type', 23, 'change_eventtype'),
(91, 'Can delete event type', 23, 'delete_eventtype'),
(92, 'Can view event type', 23, 'view_eventtype'),
(93, 'Can add event', 24, 'add_events'),
(94, 'Can change event', 24, 'change_events'),
(95, 'Can delete event', 24, 'delete_events'),
(96, 'Can view event', 24, 'view_events'),
(97, 'Can add Color type', 25, 'add_colors'),
(98, 'Can change Color type', 25, 'change_colors'),
(99, 'Can delete Color type', 25, 'delete_colors'),
(100, 'Can view Color type', 25, 'view_colors');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$B3HmX1OVyUD1XtPBwJSsW6$0Qq7MvWLxRI05RE4LmZlr6G7Ixm9wrFb7gnsZdtl+Kc=', '2022-04-25 11:17:27.316353', 1, 'master', '', '', 'master@email.com', 1, 1, '2022-04-25 11:17:09.627871');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_admin_log`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-04-25 11:19:07.970547', '1', '1º Turno', 1, '[{\"added\": {}}]', 17, 1),
(2, '2022-04-25 11:19:11.272045', '1', 'A01', 1, '[{\"added\": {}}]', 22, 1),
(3, '2022-04-25 11:19:37.897899', '2', 'A05', 1, '[{\"added\": {}}]', 22, 1),
(4, '2022-04-25 11:19:58.971862', '3', 'A06', 1, '[{\"added\": {}}]', 22, 1),
(5, '2022-04-25 11:20:20.023892', '4', 'A08', 1, '[{\"added\": {}}]', 22, 1),
(6, '2022-04-25 11:20:40.073786', '5', 'A09', 1, '[{\"added\": {}}]', 22, 1),
(7, '2022-04-25 11:22:05.072424', '6', 'A10', 1, '[{\"added\": {}}]', 22, 1),
(8, '2022-04-25 11:22:25.144269', '7', 'A11', 1, '[{\"added\": {}}]', 22, 1),
(9, '2022-04-25 11:22:50.087659', '8', 'A12', 1, '[{\"added\": {}}]', 22, 1),
(10, '2022-04-25 11:23:11.717171', '9', 'A14', 1, '[{\"added\": {}}]', 22, 1),
(11, '2022-04-25 11:23:45.344799', '10', 'A15', 1, '[{\"added\": {}}]', 22, 1),
(12, '2022-04-25 11:24:03.497211', '11', 'A16', 1, '[{\"added\": {}}]', 22, 1),
(13, '2022-04-25 11:24:30.924332', '12', 'A17', 1, '[{\"added\": {}}]', 22, 1),
(14, '2022-04-25 11:25:04.334055', '13', 'A18', 1, '[{\"added\": {}}]', 22, 1),
(15, '2022-04-25 11:25:34.995394', '14', 'A20', 1, '[{\"added\": {}}]', 22, 1),
(16, '2022-04-25 11:25:53.932509', '15', 'A19', 1, '[{\"added\": {}}]', 22, 1),
(17, '2022-04-25 11:26:16.950364', '16', 'A21', 1, '[{\"added\": {}}]', 22, 1),
(18, '2022-04-25 11:26:37.337463', '17', 'A22', 1, '[{\"added\": {}}]', 22, 1),
(19, '2022-04-25 11:27:00.494586', '18', 'A23', 1, '[{\"added\": {}}]', 22, 1),
(20, '2022-04-25 11:27:19.563841', '19', 'A24', 1, '[{\"added\": {}}]', 22, 1),
(21, '2022-04-25 11:27:37.154098', '20', 'A25', 1, '[{\"added\": {}}]', 22, 1),
(22, '2022-04-25 11:27:54.591709', '21', 'A27', 1, '[{\"added\": {}}]', 22, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'authtoken', 'token'),
(8, 'authtoken', 'tokenproxy'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(22, 'wiki', 'bus'),
(9, 'wiki', 'classes'),
(25, 'wiki', 'colors'),
(10, 'wiki', 'eecategory'),
(24, 'wiki', 'events'),
(23, 'wiki', 'eventtype'),
(21, 'wiki', 'extensions_emails'),
(20, 'wiki', 'feedback'),
(11, 'wiki', 'groups'),
(12, 'wiki', 'lcategory'),
(19, 'wiki', 'links'),
(13, 'wiki', 'note'),
(14, 'wiki', 'posts'),
(15, 'wiki', 'projcat'),
(18, 'wiki', 'project'),
(16, 'wiki', 'quickacess'),
(17, 'wiki', 'shift');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-04-25 11:15:41.438651'),
(2, 'auth', '0001_initial', '2022-04-25 11:15:42.334150'),
(3, 'admin', '0001_initial', '2022-04-25 11:15:42.577775'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-04-25 11:15:42.602716'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-25 11:15:42.617365'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-04-25 11:15:42.724739'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-04-25 11:15:42.822478'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-04-25 11:15:42.865362'),
(9, 'auth', '0004_alter_user_username_opts', '2022-04-25 11:15:42.880324'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-04-25 11:15:42.970558'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-04-25 11:15:42.979369'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-04-25 11:15:42.996085'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-04-25 11:15:43.030869'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-04-25 11:15:43.066981'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-04-25 11:15:43.104840'),
(16, 'auth', '0011_update_proxy_permissions', '2022-04-25 11:15:43.122131'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-04-25 11:15:43.155159'),
(18, 'authtoken', '0001_initial', '2022-04-25 11:15:43.280106'),
(19, 'authtoken', '0002_auto_20160226_1747', '2022-04-25 11:15:43.324106'),
(20, 'authtoken', '0003_tokenproxy', '2022-04-25 11:15:43.334001'),
(21, 'sessions', '0001_initial', '2022-04-25 11:15:43.411350'),
(22, 'wiki', '0001_initial', '2022-04-25 11:15:44.452346'),
(23, 'wiki', '0002_eventtype_events', '2022-04-25 11:15:44.603504'),
(24, 'wiki', '0003_colors_events_fk_color', '2022-04-25 11:15:44.777876'),
(25, 'wiki', '0004_colors_colorname', '2022-04-25 11:15:44.884410'),
(26, 'wiki', '0005_remove_events_color', '2022-04-25 11:15:44.935425'),
(27, 'wiki', '0006_alter_bus_upload_alter_posts_attachment_and_more', '2022-04-25 11:15:44.957370');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('nkroqz4zd3mlvcby15tv35yn9yijv5iu', '.eJxVjMsOwiAQAP-FsyHQ5VWP3vsNZNkFWzU0Ke3J-O-GpAe9zkzmLSIe-xyPlre4sLgKLS6_LCE9c-2CH1jvq6S17tuSZE_kaZucVs6v29n-DWZsc9-Sh4wOQWu2IwcLRgHooIpSxQUChckTh9Gy1oOBMCYDzlIqNPjkrPh8AcDQNwU:1niwid:Nn4DrLhl5JH8PWU7lKIllskIBjDgyUp4DrE9M4PhsFw', '2022-05-09 11:17:27.327319');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wiki_bus`
--

CREATE TABLE `wiki_bus` (
  `id` bigint(20) NOT NULL,
  `line` varchar(10) NOT NULL,
  `region` varchar(300) NOT NULL,
  `upload` varchar(100) NOT NULL,
  `fk_shift_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `wiki_bus`
--

INSERT INTO `wiki_bus` (`id`, `line`, `region`, `upload`, `fk_shift_id`) VALUES
(1, 'A01', 'Jaguariúna - Campinas', 'bus/A01_Jaguariúna___Campinas.pdf', 1),
(2, 'A05', 'Sumaré - Campinas', 'bus/A05_Sumaré___Campinas.pdf', 1),
(3, 'A06', 'Parque Jambeiro - Eulina', 'bus/A06_Parque_Jambeiro___Eulina.pdf', 1),
(4, 'A08', 'Carlos Lourenço', 'bus/A08_Carlos_Lourenço.pdf', 1),
(5, 'A09', 'Valinhos - Campinas', 'bus/A09_Valinhos___Campinas.pdf', 1),
(6, 'A10', 'Vida Nova - Ouro Verde', 'bus/A10_Vida_Nova___Ouro_Verde.pdf', 1),
(7, 'A11', 'Campo Grande', 'bus/A11_Campo_Grande.pdf', 1),
(8, 'A12', 'Vila União', 'bus/A12_Vila_União.pdf', 1),
(9, 'A14', 'Jardim Planalto de Viracopos', 'bus/A14_Jardim_Planalto_de_Viracopos.pdf', 1),
(10, 'A15', 'Jardim Novo Ângulo - Hortolândia', 'bus/A15_Jardim_Novo_Ângulo___Hortolândia.pdf', 1),
(11, 'A16', 'Sumaré - Paulínia', 'bus/A16_Sumaré___Paulínia.pdf', 1),
(12, 'A17', 'Santa Bárbara d\'Oeste', 'bus/A17_Santa_Bárbara_dOeste___Americana.pdf', 1),
(13, 'A18', 'Nova Odessa - Sumaré', 'bus/A18_Nova_Odessa___Sumaré.pdf', 1),
(14, 'A20', 'Apoio Monte Mor', 'bus/A19_A20_apoio_Monte_Mor___Hortolândia.pdf', 1),
(15, 'A19', 'Jardim Amanda - Hortolândia', 'bus/A19_Jardim_Amanda___Hortolândia.pdf', 1),
(16, 'A21', 'Indaiatuba', 'bus/A21_Indaiatuba.pdf', 1),
(17, 'A22', 'Hortolândia', 'bus/A22_Hortolândia.pdf', 1),
(18, 'A23', 'Sumaré - Vila Flora', 'bus/A23_Sumaré___Vila_Flora.pdf', 1),
(19, 'A24', 'Apoio Hortolândia', 'bus/A24_apoio_Hortolândia.pdf', 1),
(20, 'A25', 'Sumaré - Centro', 'bus/A25_Sumaré___Centro.pdf', 1),
(21, 'A27', 'São Domingos', 'bus/A27_São_Domingos.pdf', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wiki_classes`
--

CREATE TABLE `wiki_classes` (
  `id` bigint(20) NOT NULL,
  `students_qtd` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wiki_colors`
--

CREATE TABLE `wiki_colors` (
  `id` bigint(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `colorName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wiki_eecategory`
--

CREATE TABLE `wiki_eecategory` (
  `id` bigint(20) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wiki_events`
--

CREATE TABLE `wiki_events` (
  `id` bigint(20) NOT NULL,
  `name` varchar(60) NOT NULL,
  `details` varchar(200) NOT NULL,
  `initialDate` datetime(6) NOT NULL,
  `finalDate` datetime(6) NOT NULL,
  `fk_eventType_id` bigint(20) NOT NULL,
  `fk_color_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wiki_eventtype`
--

CREATE TABLE `wiki_eventtype` (
  `id` bigint(20) NOT NULL,
  `eventType` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wiki_extensions_emails`
--

CREATE TABLE `wiki_extensions_emails` (
  `id` bigint(20) NOT NULL,
  `title` varchar(20) NOT NULL,
  `ramalNum` int(11) NOT NULL,
  `mainEmail` varchar(254) NOT NULL,
  `secondaryEmail` varchar(254) NOT NULL,
  `fk_category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wiki_feedback`
--

CREATE TABLE `wiki_feedback` (
  `id` bigint(20) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `data` date NOT NULL,
  `fk_note_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wiki_groups`
--

CREATE TABLE `wiki_groups` (
  `id` bigint(20) NOT NULL,
  `name` varchar(60) NOT NULL,
  `students` varchar(70) NOT NULL,
  `idClasses_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wiki_lcategory`
--

CREATE TABLE `wiki_lcategory` (
  `id` bigint(20) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wiki_links`
--

CREATE TABLE `wiki_links` (
  `id` bigint(20) NOT NULL,
  `title` varchar(20) NOT NULL,
  `links` varchar(300) NOT NULL,
  `fk_Lcategory_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wiki_note`
--

CREATE TABLE `wiki_note` (
  `id` bigint(20) NOT NULL,
  `setNote` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wiki_posts`
--

CREATE TABLE `wiki_posts` (
  `id` bigint(20) NOT NULL,
  `img` varchar(100) NOT NULL,
  `title` varchar(60) NOT NULL,
  `description` varchar(200) NOT NULL,
  `attachment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wiki_projcat`
--

CREATE TABLE `wiki_projcat` (
  `id` bigint(20) NOT NULL,
  `type` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wiki_project`
--

CREATE TABLE `wiki_project` (
  `id` bigint(20) NOT NULL,
  `name` varchar(60) NOT NULL,
  `objective` varchar(120) NOT NULL,
  `idGroup_id` bigint(20) NOT NULL,
  `idtype_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wiki_quickacess`
--

CREATE TABLE `wiki_quickacess` (
  `id` bigint(20) NOT NULL,
  `title` varchar(10) NOT NULL,
  `link` varchar(300) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wiki_shift`
--

CREATE TABLE `wiki_shift` (
  `id` bigint(20) NOT NULL,
  `shiftType` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `wiki_shift`
--

INSERT INTO `wiki_shift` (`id`, `shiftType`) VALUES
(1, '1º Turno');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Índices para tabela `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Índices para tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Índices para tabela `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Índices para tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Índices para tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Índices para tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Índices para tabela `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Índices para tabela `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Índices para tabela `wiki_bus`
--
ALTER TABLE `wiki_bus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wiki_bus_fk_shift_id_c79cc1d4_fk_wiki_shift_id` (`fk_shift_id`);

--
-- Índices para tabela `wiki_classes`
--
ALTER TABLE `wiki_classes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `wiki_colors`
--
ALTER TABLE `wiki_colors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `color` (`color`),
  ADD UNIQUE KEY `colorName` (`colorName`);

--
-- Índices para tabela `wiki_eecategory`
--
ALTER TABLE `wiki_eecategory`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `wiki_events`
--
ALTER TABLE `wiki_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wiki_events_fk_eventType_id_9eb3a005_fk_wiki_eventtype_id` (`fk_eventType_id`),
  ADD KEY `wiki_events_fk_color_id_6dae9534_fk_wiki_colors_id` (`fk_color_id`);

--
-- Índices para tabela `wiki_eventtype`
--
ALTER TABLE `wiki_eventtype`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `wiki_extensions_emails`
--
ALTER TABLE `wiki_extensions_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wiki_extensions_emai_fk_category_id_cd5796ce_fk_wiki_eeca` (`fk_category_id`);

--
-- Índices para tabela `wiki_feedback`
--
ALTER TABLE `wiki_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wiki_feedback_fk_note_id_c539dc80_fk_wiki_note_id` (`fk_note_id`);

--
-- Índices para tabela `wiki_groups`
--
ALTER TABLE `wiki_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wiki_groups_idClasses_id_c88fed05_fk_wiki_classes_id` (`idClasses_id`);

--
-- Índices para tabela `wiki_lcategory`
--
ALTER TABLE `wiki_lcategory`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `wiki_links`
--
ALTER TABLE `wiki_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wiki_links_fk_Lcategory_id_f53da3d8_fk_wiki_lcategory_id` (`fk_Lcategory_id`);

--
-- Índices para tabela `wiki_note`
--
ALTER TABLE `wiki_note`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `wiki_posts`
--
ALTER TABLE `wiki_posts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `wiki_projcat`
--
ALTER TABLE `wiki_projcat`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `wiki_project`
--
ALTER TABLE `wiki_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wiki_project_idGroup_id_04262ebd_fk_wiki_groups_id` (`idGroup_id`),
  ADD KEY `wiki_project_idtype_id_ee378551_fk_wiki_projcat_id` (`idtype_id`);

--
-- Índices para tabela `wiki_quickacess`
--
ALTER TABLE `wiki_quickacess`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `wiki_shift`
--
ALTER TABLE `wiki_shift`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de tabela `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `wiki_bus`
--
ALTER TABLE `wiki_bus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `wiki_classes`
--
ALTER TABLE `wiki_classes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wiki_colors`
--
ALTER TABLE `wiki_colors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wiki_eecategory`
--
ALTER TABLE `wiki_eecategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wiki_events`
--
ALTER TABLE `wiki_events`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wiki_eventtype`
--
ALTER TABLE `wiki_eventtype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wiki_extensions_emails`
--
ALTER TABLE `wiki_extensions_emails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wiki_feedback`
--
ALTER TABLE `wiki_feedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wiki_groups`
--
ALTER TABLE `wiki_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wiki_lcategory`
--
ALTER TABLE `wiki_lcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wiki_links`
--
ALTER TABLE `wiki_links`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wiki_note`
--
ALTER TABLE `wiki_note`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wiki_posts`
--
ALTER TABLE `wiki_posts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wiki_projcat`
--
ALTER TABLE `wiki_projcat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wiki_project`
--
ALTER TABLE `wiki_project`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wiki_quickacess`
--
ALTER TABLE `wiki_quickacess`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wiki_shift`
--
ALTER TABLE `wiki_shift`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Limitadores para a tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Limitadores para a tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `wiki_bus`
--
ALTER TABLE `wiki_bus`
  ADD CONSTRAINT `wiki_bus_fk_shift_id_c79cc1d4_fk_wiki_shift_id` FOREIGN KEY (`fk_shift_id`) REFERENCES `wiki_shift` (`id`);

--
-- Limitadores para a tabela `wiki_events`
--
ALTER TABLE `wiki_events`
  ADD CONSTRAINT `wiki_events_fk_color_id_6dae9534_fk_wiki_colors_id` FOREIGN KEY (`fk_color_id`) REFERENCES `wiki_colors` (`id`),
  ADD CONSTRAINT `wiki_events_fk_eventType_id_9eb3a005_fk_wiki_eventtype_id` FOREIGN KEY (`fk_eventType_id`) REFERENCES `wiki_eventtype` (`id`);

--
-- Limitadores para a tabela `wiki_extensions_emails`
--
ALTER TABLE `wiki_extensions_emails`
  ADD CONSTRAINT `wiki_extensions_emai_fk_category_id_cd5796ce_fk_wiki_eeca` FOREIGN KEY (`fk_category_id`) REFERENCES `wiki_eecategory` (`id`);

--
-- Limitadores para a tabela `wiki_feedback`
--
ALTER TABLE `wiki_feedback`
  ADD CONSTRAINT `wiki_feedback_fk_note_id_c539dc80_fk_wiki_note_id` FOREIGN KEY (`fk_note_id`) REFERENCES `wiki_note` (`id`);

--
-- Limitadores para a tabela `wiki_groups`
--
ALTER TABLE `wiki_groups`
  ADD CONSTRAINT `wiki_groups_idClasses_id_c88fed05_fk_wiki_classes_id` FOREIGN KEY (`idClasses_id`) REFERENCES `wiki_classes` (`id`);

--
-- Limitadores para a tabela `wiki_links`
--
ALTER TABLE `wiki_links`
  ADD CONSTRAINT `wiki_links_fk_Lcategory_id_f53da3d8_fk_wiki_lcategory_id` FOREIGN KEY (`fk_Lcategory_id`) REFERENCES `wiki_lcategory` (`id`);

--
-- Limitadores para a tabela `wiki_project`
--
ALTER TABLE `wiki_project`
  ADD CONSTRAINT `wiki_project_idGroup_id_04262ebd_fk_wiki_groups_id` FOREIGN KEY (`idGroup_id`) REFERENCES `wiki_groups` (`id`),
  ADD CONSTRAINT `wiki_project_idtype_id_ee378551_fk_wiki_projcat_id` FOREIGN KEY (`idtype_id`) REFERENCES `wiki_projcat` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
