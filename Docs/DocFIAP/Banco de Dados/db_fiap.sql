-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Set-2021 às 16:33
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_fiap`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(25, 'Can add aluno', 7, 'add_aluno'),
(26, 'Can change aluno', 7, 'change_aluno'),
(27, 'Can delete aluno', 7, 'delete_aluno'),
(28, 'Can view aluno', 7, 'view_aluno'),
(29, 'Can add assinatura', 8, 'add_assinatura'),
(30, 'Can change assinatura', 8, 'change_assinatura'),
(31, 'Can delete assinatura', 8, 'delete_assinatura'),
(32, 'Can view assinatura', 8, 'view_assinatura'),
(33, 'Can add colaborador', 9, 'add_colaborador'),
(34, 'Can change colaborador', 9, 'change_colaborador'),
(35, 'Can delete colaborador', 9, 'delete_colaborador'),
(36, 'Can view colaborador', 9, 'view_colaborador'),
(37, 'Can add fiap', 10, 'add_fiap'),
(38, 'Can change fiap', 10, 'change_fiap'),
(39, 'Can delete fiap', 10, 'delete_fiap'),
(40, 'Can view fiap', 10, 'view_fiap'),
(41, 'Can add turma', 11, 'add_turma'),
(42, 'Can change turma', 11, 'change_turma'),
(43, 'Can delete turma', 11, 'delete_turma'),
(44, 'Can view turma', 11, 'view_turma'),
(45, 'Can add ocorrencia', 12, 'add_ocorrencia'),
(46, 'Can change ocorrencia', 12, 'change_ocorrencia'),
(47, 'Can delete ocorrencia', 12, 'delete_ocorrencia'),
(48, 'Can view ocorrencia', 12, 'view_ocorrencia'),
(49, 'Can add observacao', 13, 'add_observacao'),
(50, 'Can change observacao', 13, 'change_observacao'),
(51, 'Can delete observacao', 13, 'delete_observacao'),
(52, 'Can view observacao', 13, 'view_observacao'),
(53, 'Can add materia', 14, 'add_materia'),
(54, 'Can change materia', 14, 'change_materia'),
(55, 'Can delete materia', 14, 'delete_materia'),
(56, 'Can view materia', 14, 'view_materia'),
(57, 'Can add frequencia', 15, 'add_frequencia'),
(58, 'Can change frequencia', 15, 'change_frequencia'),
(59, 'Can delete frequencia', 15, 'delete_frequencia'),
(60, 'Can view frequencia', 15, 'view_frequencia'),
(61, 'Can add aproveitamento', 16, 'add_aproveitamento'),
(62, 'Can change aproveitamento', 16, 'change_aproveitamento'),
(63, 'Can delete aproveitamento', 16, 'delete_aproveitamento'),
(64, 'Can view aproveitamento', 16, 'view_aproveitamento'),
(65, 'Can add aprendizagem', 17, 'add_aprendizagem'),
(66, 'Can change aprendizagem', 17, 'change_aprendizagem'),
(67, 'Can delete aprendizagem', 17, 'delete_aprendizagem'),
(68, 'Can view aprendizagem', 17, 'view_aprendizagem');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$832u0wS0qqplnA2ghs2Af7$sTfihXbSGZrbcPFd/TyX7BAqS+XzJ+o58EAKTNzvBFI=', '2021-09-24 12:41:28.828313', 1, 'master', '', '', 'master@master.com', 1, 1, '2021-09-22 13:00:51.713022');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-09-22 13:02:29.886032', '1', '2DES', 1, '[{\"added\": {}}]', 11, 1),
(2, '2021-09-22 13:02:45.910419', '1', 'Testando da SIlva', 1, '[{\"added\": {}}]', 7, 1),
(3, '2021-09-22 13:35:01.755925', '1', 'Silva do Teste', 1, '[{\"added\": {}}]', 9, 1),
(4, '2021-09-22 13:36:47.874277', '1', 'Frontend', 1, '[{\"added\": {}}]', 14, 1),
(5, '2021-09-22 13:50:16.804350', '1', '1', 1, '[{\"added\": {}}]', 10, 1),
(6, '2021-09-22 13:50:38.129874', '1', '1', 3, '', 10, 1),
(7, '2021-09-22 13:50:48.902349', '2', '1', 1, '[{\"added\": {}}]', 10, 1),
(8, '2021-09-22 13:52:39.993954', '2', 'O aluno o e mal educado', 1, '[{\"added\": {}}]', 13, 1),
(9, '2021-09-24 12:41:46.349817', '3', '5DES', 2, '[{\"changed\": {\"fields\": [\"Nome\"]}}]', 11, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'home', 'aluno'),
(17, 'home', 'aprendizagem'),
(16, 'home', 'aproveitamento'),
(8, 'home', 'assinatura'),
(9, 'home', 'colaborador'),
(10, 'home', 'fiap'),
(15, 'home', 'frequencia'),
(14, 'home', 'materia'),
(13, 'home', 'observacao'),
(12, 'home', 'ocorrencia'),
(11, 'home', 'turma'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-09-22 12:58:46.983940'),
(2, 'auth', '0001_initial', '2021-09-22 12:58:52.716703'),
(3, 'admin', '0001_initial', '2021-09-22 12:58:54.464594'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-09-22 12:58:54.491518'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-09-22 12:58:54.510895'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-09-22 12:58:54.816217'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-09-22 12:58:55.422170'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-09-22 12:58:56.221998'),
(9, 'auth', '0004_alter_user_username_opts', '2021-09-22 12:58:56.280584'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-09-22 12:58:57.058405'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-09-22 12:58:57.106778'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-09-22 12:58:57.190929'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-09-22 12:58:57.596114'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-09-22 12:58:57.679348'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-09-22 12:58:58.087805'),
(16, 'auth', '0011_update_proxy_permissions', '2021-09-22 12:58:58.113327'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-09-22 12:58:58.187065'),
(18, 'home', '0001_initial', '2021-09-22 12:59:10.191142'),
(19, 'sessions', '0001_initial', '2021-09-22 12:59:10.601631'),
(20, 'home', '0002_auto_20210922_1036', '2021-09-22 13:36:15.275105'),
(21, 'home', '0003_auto_20210922_1045', '2021-09-22 13:45:58.445904'),
(22, 'home', '0004_auto_20210922_1050', '2021-09-22 13:50:10.562175'),
(23, 'home', '0005_auto_20210922_1052', '2021-09-22 13:52:34.926633'),
(24, 'home', '0006_auto_20210922_1054', '2021-09-22 13:54:57.052340');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('cybid4xiws38f82lx3g557t3jhzqdr4v', '.eJxVjDsOwjAQBe_iGlmwjn-U9JzBWu-ucQA5UpxUiLtDpBTQvpl5L5VwXWpau8xpZHVWJ3X43TLSQ9oG-I7tNmma2jKPWW-K3mnX14nledndv4OKvX5rj_7ImF3J4E22BZnAUoxigoUyFDKDRUcAhcRLLAzGBRKMHlwQAfX-AAoQONc:1mTkW8:es5bggNdHgMtvNirumUn9nrOtoCXgbFKfItAyVJ_gow', '2021-10-08 12:41:28.840061'),
('g5vxbldtxm5a24z3r58bxkqwgcyfjv17', '.eJxVjDsOwjAQBe_iGlmwjn-U9JzBWu-ucQA5UpxUiLtDpBTQvpl5L5VwXWpau8xpZHVWJ3X43TLSQ9oG-I7tNmma2jKPWW-K3mnX14nledndv4OKvX5rj_7ImF3J4E22BZnAUoxigoUyFDKDRUcAhcRLLAzGBRKMHlwQAfX-AAoQONc:1mT1rv:Mi8Hq74FDDblrgmNlpSZu8UtdMP0kx6p6cZc28H0UXI', '2021-10-06 13:00:59.293188');

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_aluno`
--

CREATE TABLE `home_aluno` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `ra` varchar(8) NOT NULL,
  `turma_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `home_aluno`
--

INSERT INTO `home_aluno` (`id`, `nome`, `ra`, `turma_id`) VALUES
(1, 'Testando da SIlva', '12312323', 1),
(2, 'João ComBraço', '89089067', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_aprendizagem`
--

CREATE TABLE `home_aprendizagem` (
  `id` bigint(20) NOT NULL,
  `atencao` tinyint(1) DEFAULT NULL,
  `compreensao` tinyint(1) DEFAULT NULL,
  `comprometimento` tinyint(1) DEFAULT NULL,
  `relacionamento` tinyint(1) DEFAULT NULL,
  `Outros` varchar(100) DEFAULT NULL,
  `fiap_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_aproveitamento`
--

CREATE TABLE `home_aproveitamento` (
  `id` bigint(20) NOT NULL,
  `notamedia` int(11) NOT NULL,
  `notaaluno` int(11) NOT NULL,
  `notarec` int(11) DEFAULT NULL,
  `fiap_id` bigint(20) NOT NULL,
  `materia_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_assinatura`
--

CREATE TABLE `home_assinatura` (
  `id` bigint(20) NOT NULL,
  `docente` varchar(100) DEFAULT NULL,
  `coordenador` varchar(100) DEFAULT NULL,
  `social` varchar(100) DEFAULT NULL,
  `aluno` varchar(100) DEFAULT NULL,
  `responsavel` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_colaborador`
--

CREATE TABLE `home_colaborador` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `nif` varchar(11) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `nivelAcesso` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `home_colaborador`
--

INSERT INTO `home_colaborador` (`id`, `nome`, `nif`, `senha`, `nivelAcesso`) VALUES
(1, 'Silva do Teste', 'SN1234567', 'senha', '2'),
(2, 'João TalvezTenhaBraço', 'SN867564756', 'joaotalvezsembraco', '3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_fiap`
--

CREATE TABLE `home_fiap` (
  `id` bigint(20) NOT NULL,
  `progresso` varchar(20) NOT NULL,
  `dataInicio` datetime(6) NOT NULL,
  `dataFinal` datetime(6) DEFAULT NULL,
  `aluno_id` bigint(20) NOT NULL,
  `assinatura_id` bigint(20) DEFAULT NULL,
  `colaborador_id` bigint(20) NOT NULL,
  `turma_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `home_fiap`
--

INSERT INTO `home_fiap` (`id`, `progresso`, `dataInicio`, `dataFinal`, `aluno_id`, `assinatura_id`, `colaborador_id`, `turma_id`) VALUES
(2, '1', '2021-09-22 13:50:03.000000', '2021-09-22 13:50:03.000000', 1, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_frequencia`
--

CREATE TABLE `home_frequencia` (
  `id` bigint(20) NOT NULL,
  `aulasprevistas` int(11) NOT NULL,
  `ausencias` int(11) NOT NULL,
  `fiap_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_materia`
--

CREATE TABLE `home_materia` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `professor_id` bigint(20) NOT NULL,
  `turma_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `home_materia`
--

INSERT INTO `home_materia` (`id`, `nome`, `professor_id`, `turma_id`) VALUES
(1, 'Frontend', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_observacao`
--

CREATE TABLE `home_observacao` (
  `id` bigint(20) NOT NULL,
  `observacao` varchar(500) NOT NULL,
  `data` datetime(6) NOT NULL,
  `fiap_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `home_observacao`
--

INSERT INTO `home_observacao` (`id`, `observacao`, `data`, `fiap_id`) VALUES
(2, 'O aluno o e mal educado', '2021-09-22 13:52:28.000000', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_ocorrencia`
--

CREATE TABLE `home_ocorrencia` (
  `id` bigint(20) NOT NULL,
  `advverbal` tinyint(1) DEFAULT NULL,
  `advescrita` tinyint(1) DEFAULT NULL,
  `afastamento` tinyint(1) DEFAULT NULL,
  `cancelmatricula` tinyint(1) DEFAULT NULL,
  `fiap_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_turma`
--

CREATE TABLE `home_turma` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `periodo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `home_turma`
--

INSERT INTO `home_turma` (`id`, `nome`, `periodo`) VALUES
(1, '2DES', '1'),
(2, '3DES', '3'),
(3, '5DES', '2');

--
-- Índices para tabelas despejadas
--

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
-- Índices para tabela `home_aluno`
--
ALTER TABLE `home_aluno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_aluno_turma_id_fe7c15bb_fk_home_turma_id` (`turma_id`);

--
-- Índices para tabela `home_aprendizagem`
--
ALTER TABLE `home_aprendizagem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_aprendizagem_fiap_id_f91c88d3_fk_home_fiap_id` (`fiap_id`);

--
-- Índices para tabela `home_aproveitamento`
--
ALTER TABLE `home_aproveitamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_aproveitamento_fiap_id_7d6a1fbf_fk_home_fiap_id` (`fiap_id`),
  ADD KEY `home_aproveitamento_materia_id_be82cd78_fk_home_materia_id` (`materia_id`);

--
-- Índices para tabela `home_assinatura`
--
ALTER TABLE `home_assinatura`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `home_colaborador`
--
ALTER TABLE `home_colaborador`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `home_fiap`
--
ALTER TABLE `home_fiap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_fiap_turma_id_d6cc84c6_fk_home_turma_id` (`turma_id`),
  ADD KEY `home_fiap_aluno_id_f7fe145a_fk_home_aluno_id` (`aluno_id`),
  ADD KEY `home_fiap_colaborador_id_f71a9739_fk_home_colaborador_id` (`colaborador_id`),
  ADD KEY `home_fiap_assinatura_id_5e86c855_fk_home_assinatura_id` (`assinatura_id`);

--
-- Índices para tabela `home_frequencia`
--
ALTER TABLE `home_frequencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_frequencia_fiap_id_6184acd0_fk_home_fiap_id` (`fiap_id`);

--
-- Índices para tabela `home_materia`
--
ALTER TABLE `home_materia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_materia_professor_id_3e57bb3c_fk_home_colaborador_id` (`professor_id`),
  ADD KEY `home_materia_turma_id_64dedf86_fk_home_turma_id` (`turma_id`);

--
-- Índices para tabela `home_observacao`
--
ALTER TABLE `home_observacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_observacao_fiap_id_2a8eee33_fk_home_fiap_id` (`fiap_id`);

--
-- Índices para tabela `home_ocorrencia`
--
ALTER TABLE `home_ocorrencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_ocorrencia_fiap_id_93b547b4_fk_home_fiap_id` (`fiap_id`);

--
-- Índices para tabela `home_turma`
--
ALTER TABLE `home_turma`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `home_aluno`
--
ALTER TABLE `home_aluno`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `home_aprendizagem`
--
ALTER TABLE `home_aprendizagem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `home_aproveitamento`
--
ALTER TABLE `home_aproveitamento`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `home_assinatura`
--
ALTER TABLE `home_assinatura`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `home_colaborador`
--
ALTER TABLE `home_colaborador`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `home_fiap`
--
ALTER TABLE `home_fiap`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `home_frequencia`
--
ALTER TABLE `home_frequencia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `home_materia`
--
ALTER TABLE `home_materia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `home_observacao`
--
ALTER TABLE `home_observacao`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `home_ocorrencia`
--
ALTER TABLE `home_ocorrencia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `home_turma`
--
ALTER TABLE `home_turma`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

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
-- Limitadores para a tabela `home_aluno`
--
ALTER TABLE `home_aluno`
  ADD CONSTRAINT `home_aluno_turma_id_fe7c15bb_fk_home_turma_id` FOREIGN KEY (`turma_id`) REFERENCES `home_turma` (`id`);

--
-- Limitadores para a tabela `home_aprendizagem`
--
ALTER TABLE `home_aprendizagem`
  ADD CONSTRAINT `home_aprendizagem_fiap_id_f91c88d3_fk_home_fiap_id` FOREIGN KEY (`fiap_id`) REFERENCES `home_fiap` (`id`);

--
-- Limitadores para a tabela `home_aproveitamento`
--
ALTER TABLE `home_aproveitamento`
  ADD CONSTRAINT `home_aproveitamento_fiap_id_7d6a1fbf_fk_home_fiap_id` FOREIGN KEY (`fiap_id`) REFERENCES `home_fiap` (`id`),
  ADD CONSTRAINT `home_aproveitamento_materia_id_be82cd78_fk_home_materia_id` FOREIGN KEY (`materia_id`) REFERENCES `home_materia` (`id`);

--
-- Limitadores para a tabela `home_fiap`
--
ALTER TABLE `home_fiap`
  ADD CONSTRAINT `home_fiap_aluno_id_f7fe145a_fk_home_aluno_id` FOREIGN KEY (`aluno_id`) REFERENCES `home_aluno` (`id`),
  ADD CONSTRAINT `home_fiap_assinatura_id_5e86c855_fk_home_assinatura_id` FOREIGN KEY (`assinatura_id`) REFERENCES `home_assinatura` (`id`),
  ADD CONSTRAINT `home_fiap_colaborador_id_f71a9739_fk_home_colaborador_id` FOREIGN KEY (`colaborador_id`) REFERENCES `home_colaborador` (`id`),
  ADD CONSTRAINT `home_fiap_turma_id_d6cc84c6_fk_home_turma_id` FOREIGN KEY (`turma_id`) REFERENCES `home_turma` (`id`);

--
-- Limitadores para a tabela `home_frequencia`
--
ALTER TABLE `home_frequencia`
  ADD CONSTRAINT `home_frequencia_fiap_id_6184acd0_fk_home_fiap_id` FOREIGN KEY (`fiap_id`) REFERENCES `home_fiap` (`id`);

--
-- Limitadores para a tabela `home_materia`
--
ALTER TABLE `home_materia`
  ADD CONSTRAINT `home_materia_professor_id_3e57bb3c_fk_home_colaborador_id` FOREIGN KEY (`professor_id`) REFERENCES `home_colaborador` (`id`),
  ADD CONSTRAINT `home_materia_turma_id_64dedf86_fk_home_turma_id` FOREIGN KEY (`turma_id`) REFERENCES `home_turma` (`id`);

--
-- Limitadores para a tabela `home_observacao`
--
ALTER TABLE `home_observacao`
  ADD CONSTRAINT `home_observacao_fiap_id_2a8eee33_fk_home_fiap_id` FOREIGN KEY (`fiap_id`) REFERENCES `home_fiap` (`id`);

--
-- Limitadores para a tabela `home_ocorrencia`
--
ALTER TABLE `home_ocorrencia`
  ADD CONSTRAINT `home_ocorrencia_fiap_id_93b547b4_fk_home_fiap_id` FOREIGN KEY (`fiap_id`) REFERENCES `home_fiap` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
