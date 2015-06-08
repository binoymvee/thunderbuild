-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 30, 2015 at 12:33 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
`id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
`id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add server error', 7, 'add_servererror'),
(20, 'Can change server error', 7, 'change_servererror'),
(21, 'Can delete server error', 7, 'delete_servererror'),
(22, 'Can add cloud', 8, 'add_cloud'),
(23, 'Can change cloud', 8, 'change_cloud'),
(24, 'Can delete cloud', 8, 'delete_cloud'),
(25, 'Can add nodelist', 9, 'add_nodelist'),
(26, 'Can change nodelist', 9, 'change_nodelist'),
(27, 'Can delete nodelist', 9, 'delete_nodelist'),
(28, 'Can add nodelog', 10, 'add_nodelog'),
(29, 'Can change nodelog', 10, 'change_nodelog'),
(30, 'Can delete nodelog', 10, 'delete_nodelog'),
(31, 'Can add job', 11, 'add_job'),
(32, 'Can change job', 11, 'change_job'),
(33, 'Can delete job', 11, 'delete_job'),
(34, 'Can add roletype', 12, 'add_roletype'),
(35, 'Can change roletype', 12, 'change_roletype'),
(36, 'Can delete roletype', 12, 'delete_roletype'),
(37, 'Can add cloud specification', 13, 'add_cloudspecification'),
(38, 'Can change cloud specification', 13, 'change_cloudspecification'),
(39, 'Can delete cloud specification', 13, 'delete_cloudspecification'),
(40, 'Can add cloud spec value', 14, 'add_cloudspecvalue'),
(41, 'Can change cloud spec value', 14, 'change_cloudspecvalue'),
(42, 'Can delete cloud spec value', 14, 'delete_cloudspecvalue'),
(43, 'Can add recipe', 15, 'add_recipe'),
(44, 'Can change recipe', 15, 'change_recipe'),
(45, 'Can delete recipe', 15, 'delete_recipe'),
(46, 'Can add node spec', 16, 'add_nodespec'),
(47, 'Can change node spec', 16, 'change_nodespec'),
(48, 'Can delete node spec', 16, 'delete_nodespec'),
(49, 'Can add node role', 17, 'add_noderole'),
(50, 'Can change node role', 17, 'change_noderole'),
(51, 'Can delete node role', 17, 'delete_noderole'),
(52, 'Can add scope', 18, 'add_scope'),
(53, 'Can change scope', 18, 'change_scope'),
(54, 'Can delete scope', 18, 'delete_scope'),
(55, 'Can add domain', 19, 'add_domain'),
(56, 'Can change domain', 19, 'change_domain'),
(57, 'Can delete domain', 19, 'delete_domain'),
(58, 'Can add user role type', 20, 'add_userroletype'),
(59, 'Can change user role type', 20, 'change_userroletype'),
(60, 'Can delete user role type', 20, 'delete_userroletype'),
(61, 'Can add permission', 21, 'add_permission'),
(62, 'Can change permission', 21, 'change_permission'),
(63, 'Can delete permission', 21, 'delete_permission'),
(64, 'Can add user role', 22, 'add_userrole'),
(65, 'Can change user role', 22, 'change_userrole'),
(66, 'Can delete user role', 22, 'delete_userrole'),
(67, 'Can add log', 23, 'add_log'),
(68, 'Can change log', 23, 'change_log'),
(69, 'Can delete log', 23, 'delete_log'),
(70, 'Can add manage addons', 24, 'add_manageaddons'),
(71, 'Can change manage addons', 24, 'change_manageaddons'),
(72, 'Can delete manage addons', 24, 'delete_manageaddons'),
(73, 'Can add data bag item', 25, 'add_databagitem'),
(74, 'Can change data bag item', 25, 'change_databagitem'),
(75, 'Can delete data bag item', 25, 'delete_databagitem'),
(76, 'Can add data bag', 26, 'add_databag'),
(77, 'Can change data bag', 26, 'change_databag'),
(78, 'Can delete data bag', 26, 'delete_databag'),
(79, 'Can add cloud domain', 27, 'add_clouddomain'),
(80, 'Can change cloud domain', 27, 'change_clouddomain'),
(81, 'Can delete cloud domain', 27, 'delete_clouddomain'),
(82, 'Can add cloud domain map', 28, 'add_clouddomainmap'),
(83, 'Can change cloud domain map', 28, 'change_clouddomainmap'),
(84, 'Can delete cloud domain map', 28, 'delete_clouddomainmap'),
(85, 'Can add domain role permission', 29, 'add_domainrolepermission'),
(86, 'Can change domain role permission', 29, 'change_domainrolepermission'),
(87, 'Can delete domain role permission', 29, 'delete_domainrolepermission'),
(88, 'Can add domain role', 30, 'add_domainrole'),
(89, 'Can change domain role', 30, 'change_domainrole'),
(90, 'Can delete domain role', 30, 'delete_domainrole'),
(91, 'Can add user role map', 31, 'add_userrolemap'),
(92, 'Can change user role map', 31, 'change_userrolemap'),
(93, 'Can delete user role map', 31, 'delete_userrolemap'),
(94, 'Can add thunder option', 32, 'add_thunderoption'),
(95, 'Can change thunder option', 32, 'change_thunderoption'),
(96, 'Can delete thunder option', 32, 'delete_thunderoption'),
(97, 'Can add thunder option value', 33, 'add_thunderoptionvalue'),
(98, 'Can change thunder option value', 33, 'change_thunderoptionvalue'),
(99, 'Can delete thunder option value', 33, 'delete_thunderoptionvalue'),
(100, 'Can add alert', 34, 'add_alert'),
(101, 'Can change alert', 34, 'change_alert'),
(102, 'Can delete alert', 34, 'delete_alert'),
(103, 'Can add patch update', 35, 'add_patchupdate'),
(104, 'Can change patch update', 35, 'change_patchupdate'),
(105, 'Can delete patch update', 35, 'delete_patchupdate'),
(106, 'Can add upgrade log', 36, 'add_upgradelog'),
(107, 'Can change upgrade log', 36, 'change_upgradelog'),
(108, 'Can delete upgrade log', 36, 'delete_upgradelog'),
(109, 'Can add network interface', 37, 'add_networkinterface'),
(110, 'Can change network interface', 37, 'change_networkinterface'),
(111, 'Can delete network interface', 37, 'delete_networkinterface'),
(112, 'Can add network interface mapping', 38, 'add_networkinterfacemapping'),
(113, 'Can change network interface mapping', 38, 'change_networkinterfacemapping'),
(114, 'Can delete network interface mapping', 38, 'delete_networkinterfacemapping'),
(115, 'Can add disk drive', 39, 'add_diskdrive'),
(116, 'Can change disk drive', 39, 'change_diskdrive'),
(117, 'Can delete disk drive', 39, 'delete_diskdrive'),
(118, 'Can add monitor service', 40, 'add_monitorservice'),
(119, 'Can change monitor service', 40, 'change_monitorservice'),
(120, 'Can delete monitor service', 40, 'delete_monitorservice'),
(121, 'Can add task', 41, 'add_task'),
(122, 'Can change task', 41, 'change_task'),
(123, 'Can delete task', 41, 'delete_task'),
(124, 'Can add network details', 42, 'add_networkdetails'),
(125, 'Can change network details', 42, 'change_networkdetails'),
(126, 'Can delete network details', 42, 'delete_networkdetails'),
(127, 'Can add floating network', 43, 'add_floatingnetwork'),
(128, 'Can change floating network', 43, 'change_floatingnetwork'),
(129, 'Can delete floating network', 43, 'delete_floatingnetwork'),
(130, 'Can add public network', 44, 'add_publicnetwork'),
(131, 'Can change public network', 44, 'change_publicnetwork'),
(132, 'Can delete public network', 44, 'delete_publicnetwork'),
(133, 'Can add dns server', 45, 'add_dnsserver'),
(134, 'Can change dns server', 45, 'change_dnsserver'),
(135, 'Can delete dns server', 45, 'delete_dnsserver'),
(136, 'Can add private network', 46, 'add_privatenetwork'),
(137, 'Can change private network', 46, 'change_privatenetwork'),
(138, 'Can delete private network', 46, 'delete_privatenetwork'),
(139, 'Can add network card', 47, 'add_networkcard'),
(140, 'Can change network card', 47, 'change_networkcard'),
(141, 'Can delete network card', 47, 'delete_networkcard'),
(142, 'Can add pxe network', 48, 'add_pxenetwork'),
(143, 'Can change pxe network', 48, 'change_pxenetwork'),
(144, 'Can delete pxe network', 48, 'delete_pxenetwork'),
(145, 'Can add thunder acces', 49, 'add_thunderacces'),
(146, 'Can change thunder acces', 49, 'change_thunderacces'),
(147, 'Can delete thunder acces', 49, 'delete_thunderacces'),
(148, 'Can add installation status', 50, 'add_installationstatus'),
(149, 'Can change installation status', 50, 'change_installationstatus'),
(150, 'Can delete installation status', 50, 'delete_installationstatus');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
`id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$12000$GIEZ91Qa5thO$jQsEtIG5qJ0p2AmGNseHQ8L5SKz3E5lvIhD1AK5eCf0=', '2015-05-25 10:27:17', 1, 'admin', '', '', 'deepthy@poornam.com', 1, 1, '2015-03-24 10:52:40');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
`id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2015-05-11 11:46:26', 1, 9, '1', '192.168.122.95', 1, ''),
(2, '2015-05-11 11:46:51', 1, 9, '2', '192.168.122.84', 1, ''),
(3, '2015-05-11 11:47:14', 1, 9, '3', '192.168.122.86', 1, ''),
(4, '2015-05-11 11:47:40', 1, 9, '4', '192.168.122.190', 1, ''),
(5, '2015-05-11 11:48:17', 1, 9, '5', '192.168.122.191', 1, ''),
(6, '2015-05-11 11:48:37', 1, 9, '6', '192.168.122.192', 1, ''),
(7, '2015-05-11 11:48:59', 1, 9, '7', '192.168.122.96', 1, ''),
(8, '2015-05-11 11:49:17', 1, 9, '8', '192.168.122.87', 1, ''),
(9, '2015-05-11 11:56:05', 1, 32, '1', 'Default Username', 2, 'Changed option_category.'),
(10, '2015-05-11 11:56:15', 1, 32, '2', 'Default Password', 2, 'Changed option_category.'),
(11, '2015-05-11 11:56:25', 1, 32, '3', 'Default Tenant', 2, 'Changed option_category.'),
(12, '2015-05-11 11:57:02', 1, 32, '4', 'Default Email', 2, 'Changed option_category and default_value.'),
(13, '2015-05-11 11:59:42', 1, 16, '1', '52:54:00:e3:84:49', 1, ''),
(14, '2015-05-11 12:05:27', 1, 16, '2', '58:54:00:e3:84:49', 1, ''),
(15, '2015-05-11 12:05:51', 1, 16, '3', '22:54:00:e3:84:49', 1, ''),
(16, '2015-05-11 12:06:20', 1, 16, '4', '22:54:00:e3:84:67', 1, ''),
(17, '2015-05-11 12:06:56', 1, 16, '5', '22:34:00:e3:84:67', 1, ''),
(18, '2015-05-11 12:07:30', 1, 16, '6', '22:54:00:e3:84:89', 1, ''),
(19, '2015-05-11 12:07:56', 1, 16, '7', '22:34:00:e3:84:67', 1, ''),
(20, '2015-05-11 12:08:22', 1, 16, '8', '22:54:00:e3:84:22', 1, ''),
(21, '2015-05-11 12:09:00', 1, 16, '6', '22:54:00:e3:84:89', 2, 'Changed hdd.'),
(22, '2015-05-11 12:10:24', 1, 16, '4', '22:54:00:e3:84:ee', 2, 'Changed mac_id.'),
(23, '2015-05-11 12:10:39', 1, 16, '8', '22:54:00:e3:84:22', 2, 'Changed hdd.'),
(24, '2015-05-11 12:12:09', 1, 37, '1', 'eth0 52:54:00:14:0b:e2', 1, ''),
(25, '2015-05-11 12:12:22', 1, 37, '2', 'eth1 52:54:00:14:0b:e2', 1, ''),
(26, '2015-05-11 12:12:45', 1, 37, '3', 'eth2 52:54:00:14:0b:12', 1, ''),
(27, '2015-05-11 12:14:44', 1, 37, '4', 'eth3 52:54:00:43:af:7a', 1, ''),
(28, '2015-05-11 12:16:19', 1, 38, '1', 'A', 1, ''),
(29, '2015-05-11 12:18:07', 1, 37, '3', 'eth2 52:54:00:14:0b:12', 2, 'Changed nodelist.'),
(30, '2015-05-11 12:20:38', 1, 38, '2', 'P', 1, ''),
(31, '2015-05-11 12:20:57', 1, 38, '3', 'M', 1, ''),
(32, '2015-05-11 12:21:13', 1, 38, '4', 'S', 1, ''),
(33, '2015-05-11 12:53:58', 1, 39, '1', 'sda', 1, ''),
(34, '2015-05-11 12:55:06', 1, 39, '2', 'sdb', 1, ''),
(35, '2015-05-11 13:07:50', 1, 37, '5', '2 : eth0', 1, ''),
(36, '2015-05-11 13:08:03', 1, 37, '6', '2 : eth1', 1, ''),
(37, '2015-05-11 13:08:14', 1, 37, '7', '2 : eth2', 1, ''),
(38, '2015-05-11 13:08:25', 1, 37, '8', '2 : eth3', 1, ''),
(39, '2015-05-11 13:09:02', 1, 39, '3', 'sda', 1, ''),
(40, '2015-05-11 13:09:36', 1, 39, '4', 'sdb', 1, ''),
(41, '2015-05-11 13:10:14', 1, 38, '5', '5 : A : 192.168.122.84', 1, ''),
(42, '2015-05-11 13:10:31', 1, 38, '6', '6 : M : 192.168.100.84', 1, ''),
(43, '2015-05-11 13:10:45', 1, 38, '7', '7 : P : 192.168.200.84', 1, ''),
(44, '2015-05-11 13:11:07', 1, 38, '8', '8 : S : 192.168.101.84', 1, ''),
(45, '2015-05-11 13:19:09', 1, 39, '5', 'sdc', 1, ''),
(46, '2015-05-12 14:52:34', 1, 9, '1', '192.168.122.95', 2, 'Changed cloud_id.'),
(47, '2015-05-14 14:34:50', 1, 47, '1', 'eth0', 1, ''),
(48, '2015-05-14 14:34:56', 1, 47, '2', 'eth1', 1, ''),
(49, '2015-05-14 14:35:06', 1, 47, '3', 'eth2', 1, ''),
(50, '2015-05-27 12:23:23', 1, 9, '8', '192.168.122.87', 3, ''),
(51, '2015-05-27 12:23:23', 1, 9, '7', '192.168.122.96', 3, ''),
(52, '2015-05-27 12:23:23', 1, 9, '6', '192.168.122.192', 3, ''),
(53, '2015-05-27 12:23:23', 1, 9, '5', '192.168.122.191', 3, ''),
(54, '2015-05-27 12:23:23', 1, 9, '4', '192.168.122.190', 3, ''),
(55, '2015-05-27 12:23:23', 1, 9, '3', '192.168.122.86', 3, ''),
(56, '2015-05-27 12:23:23', 1, 9, '2', '192.168.122.84', 3, ''),
(57, '2015-05-27 12:23:23', 1, 9, '1', '192.168.122.95', 3, ''),
(58, '2015-05-27 12:23:40', 1, 11, '1', 'ROLE_ASSIGN P', 3, ''),
(59, '2015-05-27 12:23:49', 1, 10, '1', 'New Role Controller Assigned.', 3, ''),
(60, '2015-05-27 12:24:01', 1, 34, '23', 'New cloud ''sdfsdf'' created', 3, ''),
(61, '2015-05-27 12:24:02', 1, 34, '22', 'New cloud ''Base cloud'' created', 3, ''),
(62, '2015-05-27 12:24:02', 1, 34, '21', 'New cloud ''Aqorn Cloud'' created', 3, ''),
(63, '2015-05-27 12:24:02', 1, 34, '20', 'Cloud ''Test Cloud'' deleted successfully', 3, ''),
(64, '2015-05-27 12:24:02', 1, 34, '19', 'New cloud ''Test Cloud'' created', 3, ''),
(65, '2015-05-27 12:24:02', 1, 34, '18', 'Cloud ''Aqorn Cloud'' deleted successfully', 3, ''),
(66, '2015-05-27 12:24:02', 1, 34, '17', 'New cloud ''Aqorn Cloud'' created', 3, ''),
(67, '2015-05-27 12:24:02', 1, 34, '16', 'Cloud ''Kvm Cloud'' deleted successfully', 3, ''),
(68, '2015-05-27 12:24:02', 1, 34, '15', 'New cloud ''Kvm Cloud'' created', 3, ''),
(69, '2015-05-27 12:24:02', 1, 34, '14', 'Cloud ''test'' deleted successfully', 3, ''),
(70, '2015-05-27 12:24:02', 1, 34, '13', 'New cloud ''test'' created', 3, ''),
(71, '2015-05-29 10:57:39', 1, 9, '10', '192.168.130.192', 3, ''),
(72, '2015-05-29 10:57:39', 1, 9, '9', '192.168.130.191', 3, ''),
(73, '2015-05-29 10:57:54', 1, 11, '4', 'ROLE_ASSIGN P', 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'log entry', 'admin', 'logentry'),
(2, 'permission', 'auth', 'permission'),
(3, 'group', 'auth', 'group'),
(4, 'user', 'auth', 'user'),
(5, 'content type', 'contenttypes', 'contenttype'),
(6, 'session', 'sessions', 'session'),
(7, 'server error', 'shoogie', 'servererror'),
(8, 'cloud', 'cloud', 'cloud'),
(9, 'nodelist', 'cloud', 'nodelist'),
(10, 'nodelog', 'cloud', 'nodelog'),
(11, 'job', 'cloud', 'job'),
(12, 'roletype', 'cloud', 'roletype'),
(13, 'cloud specification', 'cloud', 'cloudspecification'),
(14, 'cloud spec value', 'cloud', 'cloudspecvalue'),
(15, 'recipe', 'cloud', 'recipe'),
(16, 'node spec', 'cloud', 'nodespec'),
(17, 'node role', 'cloud', 'noderole'),
(18, 'scope', 'cloud', 'scope'),
(19, 'domain', 'cloud', 'domain'),
(20, 'user role type', 'cloud', 'userroletype'),
(21, 'permission', 'cloud', 'permission'),
(22, 'user role', 'cloud', 'userrole'),
(23, 'log', 'cloud', 'log'),
(24, 'manage addons', 'cloud', 'manageaddons'),
(25, 'data bag item', 'cloud', 'databagitem'),
(26, 'data bag', 'cloud', 'databag'),
(27, 'cloud domain', 'cloud', 'clouddomain'),
(28, 'cloud domain map', 'cloud', 'clouddomainmap'),
(29, 'domain role permission', 'cloud', 'domainrolepermission'),
(30, 'domain role', 'cloud', 'domainrole'),
(31, 'user role map', 'cloud', 'userrolemap'),
(32, 'thunder option', 'cloud', 'thunderoption'),
(33, 'thunder option value', 'cloud', 'thunderoptionvalue'),
(34, 'alert', 'cloud', 'alert'),
(35, 'patch update', 'cloud', 'patchupdate'),
(36, 'upgrade log', 'cloud', 'upgradelog'),
(37, 'network interface', 'cloud', 'networkinterface'),
(38, 'network interface mapping', 'cloud', 'networkinterfacemapping'),
(39, 'disk drive', 'cloud', 'diskdrive'),
(40, 'monitor service', 'cloud', 'monitorservice'),
(41, 'task', 'task', 'task'),
(42, 'network details', 'network', 'networkdetails'),
(43, 'floating network', 'network', 'floatingnetwork'),
(44, 'public network', 'network', 'publicnetwork'),
(45, 'dns server', 'network', 'dnsserver'),
(46, 'private network', 'network', 'privatenetwork'),
(47, 'network card', 'thunderadmin', 'networkcard'),
(48, 'pxe network', 'thunderadmin', 'pxenetwork'),
(49, 'thunder acces', 'thunderadmin', 'thunderacces'),
(50, 'installation status', 'thunderadmin', 'installationstatus');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0c75h093dmxdt0zqq6v9q8oi9jmh1vuz', 'ZmVmNjM0OTFlNDY5MTk0OWNiZmE0NzQxOWYwMjk1MGUyOTg1NjQ5OTp7fQ==', '2015-05-29 09:43:28'),
('0j2s15i9n6npyjai2xr8plszmq1yvs68', 'NDA1Zjg0YzYyZjdlYzFlODE2YWQ2YjVhMjlkZWVhMGRmZGJkMWZmMDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MSwiY2xvdWRBY2Nlc3NNYXBEYXRhIjp7InBlcm1pc3Npb25JZCI6MSwiZG9tYWluSWQiOjEsImNsb3VkTGlzdCI6WyIxMCJdLCJyb2xlSWQiOjEsInVzZXJJZCI6MSwicGVybWlzc2lvbk5hbWUiOiJEb21haW4iLCJmZWF0dXJlQWNjZXNzIjpbImFkZF9jbG91ZCIsImRlbF9jbG91ZCIsImRlcGxveV9jbG91ZCIsImVkaXRfY29uZmlnIiwicmVzY2hlZHVsZV9qb2IiLCJ2aWV3X2NvbmZpZyIsImZlYXR1cmVfY29udHJvbCIsImFkZG9uX2NvbnRyb2wiXSwicm9sZU5hbWUiOiJUaHVuZGVyIn19', '2015-05-28 02:30:29'),
('1gnb2wxv6fh189ijow7y1ojw6v0hvkg1', 'YzIxNjJkNDQxOWJiNzNlZjVjMTQ2OGU3YzdhODMxN2QzODZmYjEwNzp7ImNsb3VkSWQiOiIxIiwiY2xvdWRBY2Nlc3NNYXBEYXRhIjp7InBlcm1pc3Npb25JZCI6MSwiZG9tYWluSWQiOjEsImNsb3VkTGlzdCI6WyIxIiwiMiJdLCJyb2xlSWQiOjEsInVzZXJJZCI6MSwicGVybWlzc2lvbk5hbWUiOiJEb21haW4iLCJmZWF0dXJlQWNjZXNzIjpbImFkZF9jbG91ZCIsImRlbF9jbG91ZCIsImRlcGxveV9jbG91ZCIsImVkaXRfY29uZmlnIiwicmVzY2hlZHVsZV9qb2IiLCJ2aWV3X2NvbmZpZyIsImZlYXR1cmVfY29udHJvbCIsImFkZG9uX2NvbnRyb2wiXSwicm9sZU5hbWUiOiJUaHVuZGVyIn0sIl9hdXRoX3VzZXJfaWQiOjEsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiY2xvdWROYW1lIjoiS3ZtIENsb3VkIn0=', '2015-05-25 17:35:41'),
('3sb1rv6wgen0kdk99imimegeqzxq6z1z', 'MWMzNDc2NTkzODU5MDRkOGViOWY4NzU4YzMwMTcwM2U1OWMwZjU0ZTp7Il9hdXRoX3VzZXJfaWQiOjEsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiY2xvdWRBY2Nlc3NNYXBEYXRhIjp7InBlcm1pc3Npb25JZCI6MSwiZG9tYWluSWQiOjEsImNsb3VkTGlzdCI6WyIxMSJdLCJyb2xlSWQiOjEsInVzZXJJZCI6MSwicGVybWlzc2lvbk5hbWUiOiJBZG1pbmlzdHJhdG9yIiwiZmVhdHVyZUFjY2VzcyI6WyJhZGRfY2xvdWQiLCJkZWxfY2xvdWQiLCJkZXBsb3lfY2xvdWQiLCJlZGl0X2NvbmZpZyIsInJlc2NoZWR1bGVfam9iIiwidmlld19jb25maWciLCJmZWF0dXJlX2NvbnRyb2wiLCJhZGRvbl9jb250cm9sIl0sInJvbGVOYW1lIjoiVGh1bmRlciJ9fQ==', '2015-05-28 15:53:38'),
('3vczpb8dz0reyz109n6f2k0p7c18xokt', 'ZmVmNjM0OTFlNDY5MTk0OWNiZmE0NzQxOWYwMjk1MGUyOTg1NjQ5OTp7fQ==', '2015-05-29 12:40:15'),
('50ea5zxbvfkhc87yjtl8b3h50nqkovua', 'MGNjMmQ3ZjliZDMxOTM0YjUxY2E5ZGU4ZjcxMTA0ZmY0NzhkYThmYzp7ImNsb3VkTmFtZSI6IkFxb3JuIENsb3VkIiwiY2xvdWRJZCI6IjExIiwiX2F1dGhfdXNlcl9pZCI6MSwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJjbG91ZEFjY2Vzc01hcERhdGEiOnsicGVybWlzc2lvbklkIjoxLCJkb21haW5JZCI6MSwiY2xvdWRMaXN0IjpbIjExIiwiMTIiXSwicm9sZUlkIjoxLCJ1c2VySWQiOjEsInBlcm1pc3Npb25OYW1lIjoiQWRtaW5pc3RyYXRvciIsImZlYXR1cmVBY2Nlc3MiOlsiYWRkX2Nsb3VkIiwiZGVsX2Nsb3VkIiwiZGVwbG95X2Nsb3VkIiwiZWRpdF9jb25maWciLCJyZXNjaGVkdWxlX2pvYiIsInZpZXdfY29uZmlnIiwiZmVhdHVyZV9jb250cm9sIiwiYWRkb25fY29udHJvbCJdLCJyb2xlTmFtZSI6IlRodW5kZXIifX0=', '2015-05-30 06:32:20'),
('8g90o7x7qv64v4taksul5ar8gp7mbx3w', 'MWMzNDc2NTkzODU5MDRkOGViOWY4NzU4YzMwMTcwM2U1OWMwZjU0ZTp7Il9hdXRoX3VzZXJfaWQiOjEsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiY2xvdWRBY2Nlc3NNYXBEYXRhIjp7InBlcm1pc3Npb25JZCI6MSwiZG9tYWluSWQiOjEsImNsb3VkTGlzdCI6WyIxMSJdLCJyb2xlSWQiOjEsInVzZXJJZCI6MSwicGVybWlzc2lvbk5hbWUiOiJBZG1pbmlzdHJhdG9yIiwiZmVhdHVyZUFjY2VzcyI6WyJhZGRfY2xvdWQiLCJkZWxfY2xvdWQiLCJkZXBsb3lfY2xvdWQiLCJlZGl0X2NvbmZpZyIsInJlc2NoZWR1bGVfam9iIiwidmlld19jb25maWciLCJmZWF0dXJlX2NvbnRyb2wiLCJhZGRvbl9jb250cm9sIl0sInJvbGVOYW1lIjoiVGh1bmRlciJ9fQ==', '2015-05-28 15:51:24'),
('9g0lr1yuu9xjmjgb9v3tc4nui8x9p5lx', 'ZmVmNjM0OTFlNDY5MTk0OWNiZmE0NzQxOWYwMjk1MGUyOTg1NjQ5OTp7fQ==', '2015-05-28 15:14:21'),
('bg7hk4vjwi281o3yvakpmq6rzzhu8dhm', 'ZTBiNmViMzBiNTA4Y2RlNDJhZjJmMTQyMzAxMzlkYmU4OWNiNTdmODp7Il9hdXRoX3VzZXJfaWQiOjEsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiY2xvdWRBY2Nlc3NNYXBEYXRhIjp7InBlcm1pc3Npb25JZCI6MSwiZG9tYWluSWQiOjEsImNsb3VkTGlzdCI6WyIzIiwiNSJdLCJyb2xlSWQiOjEsInVzZXJJZCI6MSwicGVybWlzc2lvbk5hbWUiOiJEb21haW4iLCJmZWF0dXJlQWNjZXNzIjpbImFkZF9jbG91ZCIsImRlbF9jbG91ZCIsImRlcGxveV9jbG91ZCIsImVkaXRfY29uZmlnIiwicmVzY2hlZHVsZV9qb2IiLCJ2aWV3X2NvbmZpZyIsImZlYXR1cmVfY29udHJvbCIsImFkZG9uX2NvbnRyb2wiXSwicm9sZU5hbWUiOiJUaHVuZGVyIn19', '2015-05-26 23:24:04'),
('d3qnd0zudz3pjnmv1ri2enhufp4zu2kn', 'ZjIzYTM5ODNkOTEzOTQwODkxOTllZDEyNjA1OWRkMjliMWYyNWEzMTp7Il9hdXRoX3VzZXJfaWQiOjEsImNsb3VkTmFtZSI6IkJhc2UgY2xvdWQiLCJjbG91ZElkIjoiMTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsImNsb3VkQWNjZXNzTWFwRGF0YSI6eyJwZXJtaXNzaW9uSWQiOjEsImRvbWFpbklkIjoxLCJjbG91ZExpc3QiOlsiMTEiLCIxMiIsIjEzIl0sInJvbGVJZCI6MSwidXNlcklkIjoxLCJwZXJtaXNzaW9uTmFtZSI6IkFkbWluaXN0cmF0b3IiLCJmZWF0dXJlQWNjZXNzIjpbImFkZF9jbG91ZCIsImRlbF9jbG91ZCIsImRlcGxveV9jbG91ZCIsImVkaXRfY29uZmlnIiwicmVzY2hlZHVsZV9qb2IiLCJ2aWV3X2NvbmZpZyIsImZlYXR1cmVfY29udHJvbCIsImFkZG9uX2NvbnRyb2wiXSwicm9sZU5hbWUiOiJUaHVuZGVyIn0sImF1dGgiOnsidXNlck5hbWUiOiJhZG1pbiIsInVzZXJJZCI6MX19', '2015-06-12 11:18:25'),
('fdtkmfswlss69l1h2p8pytfg31epr30d', 'ZmVmNjM0OTFlNDY5MTk0OWNiZmE0NzQxOWYwMjk1MGUyOTg1NjQ5OTp7fQ==', '2015-05-28 15:29:43'),
('fs5k35ta7akanbzv323nyjnxp3ihoctg', 'MWMzNDc2NTkzODU5MDRkOGViOWY4NzU4YzMwMTcwM2U1OWMwZjU0ZTp7Il9hdXRoX3VzZXJfaWQiOjEsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiY2xvdWRBY2Nlc3NNYXBEYXRhIjp7InBlcm1pc3Npb25JZCI6MSwiZG9tYWluSWQiOjEsImNsb3VkTGlzdCI6WyIxMSJdLCJyb2xlSWQiOjEsInVzZXJJZCI6MSwicGVybWlzc2lvbk5hbWUiOiJBZG1pbmlzdHJhdG9yIiwiZmVhdHVyZUFjY2VzcyI6WyJhZGRfY2xvdWQiLCJkZWxfY2xvdWQiLCJkZXBsb3lfY2xvdWQiLCJlZGl0X2NvbmZpZyIsInJlc2NoZWR1bGVfam9iIiwidmlld19jb25maWciLCJmZWF0dXJlX2NvbnRyb2wiLCJhZGRvbl9jb250cm9sIl0sInJvbGVOYW1lIjoiVGh1bmRlciJ9fQ==', '2015-05-28 15:11:18'),
('gso3s1m9mwei4qywloagmdwrnmsb5i91', 'ZmVmNjM0OTFlNDY5MTk0OWNiZmE0NzQxOWYwMjk1MGUyOTg1NjQ5OTp7fQ==', '2015-05-29 09:43:07'),
('kiqenucndf6i23vqkd0t0i915paapjeg', 'MGY0ODYyZDRkMWI4NmRhMmY1NTVkMzk2Yzc4OGZhMTc0ZWM0ODA4Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MSwiY2xvdWRBY2Nlc3NNYXBEYXRhIjp7InBlcm1pc3Npb25JZCI6MSwiZG9tYWluSWQiOjEsImNsb3VkTGlzdCI6WyIxMSJdLCJyb2xlSWQiOjEsInVzZXJJZCI6MSwicGVybWlzc2lvbk5hbWUiOiJBZG1pbmlzdHJhdG9yIiwiZmVhdHVyZUFjY2VzcyI6WyJhZGRfY2xvdWQiLCJkZWxfY2xvdWQiLCJkZXBsb3lfY2xvdWQiLCJlZGl0X2NvbmZpZyIsInJlc2NoZWR1bGVfam9iIiwidmlld19jb25maWciLCJmZWF0dXJlX2NvbnRyb2wiLCJhZGRvbl9jb250cm9sIl0sInJvbGVOYW1lIjoiVGh1bmRlciJ9fQ==', '2015-05-28 15:01:55'),
('ng248hpmexyvw51dk98ooc0lnyyro5dp', 'MDk3MmUxNDgwZWY4N2EzODhjMDBkNmEzNjA2M2VlMjE4ODk3NTBkYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MSwiY2xvdWRBY2Nlc3NNYXBEYXRhIjp7InBlcm1pc3Npb25JZCI6MSwiZG9tYWluSWQiOjEsImNsb3VkTGlzdCI6WyIxIl0sInJvbGVJZCI6MSwidXNlcklkIjoxLCJwZXJtaXNzaW9uTmFtZSI6IkRvbWFpbiIsImZlYXR1cmVBY2Nlc3MiOlsiYWRkX2Nsb3VkIiwiZGVsX2Nsb3VkIiwiZGVwbG95X2Nsb3VkIiwiZWRpdF9jb25maWciLCJyZXNjaGVkdWxlX2pvYiIsInZpZXdfY29uZmlnIiwiZmVhdHVyZV9jb250cm9sIiwiYWRkb25fY29udHJvbCJdLCJyb2xlTmFtZSI6IlRodW5kZXIifX0=', '2015-05-25 14:37:20'),
('qgdbvede8m9jz8t5zlgn63g1jlgidmhc', 'YWYwNzhiMDg2YzgzN2ZlNDc1Y2NiMTAxYTAyMjJhODkzYzVkMGY3Yjp7ImNsb3VkSWQiOiIxIiwiY2xvdWRBY2Nlc3NNYXBEYXRhIjp7InBlcm1pc3Npb25JZCI6MSwiZG9tYWluSWQiOjEsImNsb3VkTGlzdCI6WyIxIl0sInJvbGVJZCI6MSwidXNlcklkIjoxLCJwZXJtaXNzaW9uTmFtZSI6IkRvbWFpbiIsImZlYXR1cmVBY2Nlc3MiOlsiYWRkX2Nsb3VkIiwiZGVsX2Nsb3VkIiwiZGVwbG95X2Nsb3VkIiwiZWRpdF9jb25maWciLCJyZXNjaGVkdWxlX2pvYiIsInZpZXdfY29uZmlnIiwiZmVhdHVyZV9jb250cm9sIiwiYWRkb25fY29udHJvbCJdLCJyb2xlTmFtZSI6IlRodW5kZXIifSwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoxLCJjbG91ZE5hbWUiOiJLdm0gQ2xvdWQifQ==', '2015-05-25 14:38:58'),
('t1wgcz4xgu44g1lcn0c68fe6w7dalnz0', 'MGY0ODYyZDRkMWI4NmRhMmY1NTVkMzk2Yzc4OGZhMTc0ZWM0ODA4Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MSwiY2xvdWRBY2Nlc3NNYXBEYXRhIjp7InBlcm1pc3Npb25JZCI6MSwiZG9tYWluSWQiOjEsImNsb3VkTGlzdCI6WyIxMSJdLCJyb2xlSWQiOjEsInVzZXJJZCI6MSwicGVybWlzc2lvbk5hbWUiOiJBZG1pbmlzdHJhdG9yIiwiZmVhdHVyZUFjY2VzcyI6WyJhZGRfY2xvdWQiLCJkZWxfY2xvdWQiLCJkZXBsb3lfY2xvdWQiLCJlZGl0X2NvbmZpZyIsInJlc2NoZWR1bGVfam9iIiwidmlld19jb25maWciLCJmZWF0dXJlX2NvbnRyb2wiLCJhZGRvbl9jb250cm9sIl0sInJvbGVOYW1lIjoiVGh1bmRlciJ9fQ==', '2015-05-28 15:59:08'),
('voprs66bsrjaqvpcoxr8uedhspl90ogr', 'Y2UxMzk3Yjg0ODBlZjkyNGY1NjBiN2EwNmI5NGUxNTEyOGRlYzk0Mjp7ImNsb3VkTmFtZSI6IlRlc3QgQ2xvdWQiLCJjbG91ZElkIjoiMTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjEsImNsb3VkQWNjZXNzTWFwRGF0YSI6eyJwZXJtaXNzaW9uSWQiOjEsImRvbWFpbklkIjoxLCJjbG91ZExpc3QiOlsiMTAiXSwicm9sZUlkIjoxLCJ1c2VySWQiOjEsInBlcm1pc3Npb25OYW1lIjoiRG9tYWluIiwiZmVhdHVyZUFjY2VzcyI6WyJhZGRfY2xvdWQiLCJkZWxfY2xvdWQiLCJkZXBsb3lfY2xvdWQiLCJlZGl0X2NvbmZpZyIsInJlc2NoZWR1bGVfam9iIiwidmlld19jb25maWciLCJmZWF0dXJlX2NvbnRyb2wiLCJhZGRvbl9jb250cm9sIl0sInJvbGVOYW1lIjoiVGh1bmRlciJ9fQ==', '2015-05-28 05:12:17'),
('wsm84nxnt744018akq2b27ip60s35027', 'ZmVmNjM0OTFlNDY5MTk0OWNiZmE0NzQxOWYwMjk1MGUyOTg1NjQ5OTp7fQ==', '2015-05-29 09:43:32'),
('y1po3homoy9ik59avmnvf3e4mo3270i1', 'ZWNkODY3OTY1NWZmYTgwNTZjODAyZjk5ZmViYWQ5ODkzNjNjZDdlMDp7ImNsb3VkTmFtZSI6IkFxb3JuIENsb3VkIiwiY2xvdWRJZCI6IjkiLCJfYXV0aF91c2VyX2lkIjoxLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsImNsb3VkQWNjZXNzTWFwRGF0YSI6eyJwZXJtaXNzaW9uSWQiOjEsImRvbWFpbklkIjoxLCJjbG91ZExpc3QiOltdLCJyb2xlSWQiOjEsInVzZXJJZCI6MSwicGVybWlzc2lvbk5hbWUiOiJEb21haW4iLCJmZWF0dXJlQWNjZXNzIjpbImFkZF9jbG91ZCIsImRlbF9jbG91ZCIsImRlcGxveV9jbG91ZCIsImVkaXRfY29uZmlnIiwicmVzY2hlZHVsZV9qb2IiLCJ2aWV3X2NvbmZpZyIsImZlYXR1cmVfY29udHJvbCIsImFkZG9uX2NvbnRyb2wiXSwicm9sZU5hbWUiOiJUaHVuZGVyIn19', '2015-05-27 14:56:45');

-- --------------------------------------------------------

--
-- Table structure for table `install_installation_status`
--

CREATE TABLE IF NOT EXISTS `install_installation_status` (
`id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `progress` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `install_network_card`
--

CREATE TABLE IF NOT EXISTS `install_network_card` (
`id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `mac_address` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `install_network_card`
--

INSERT INTO `install_network_card` (`id`, `name`, `mac_address`) VALUES
(1, 'eth0', '52:54:00:14:0b:e2'),
(2, 'eth1', '52:54:00:14:0b:e2'),
(3, 'eth2', '52:54:00:14:0b:12');

-- --------------------------------------------------------

--
-- Table structure for table `install_pxe_network`
--

CREATE TABLE IF NOT EXISTS `install_pxe_network` (
`id` int(11) NOT NULL,
  `nic_id` int(11) NOT NULL,
  `pool_start` char(15) NOT NULL,
  `pool_end` char(15) NOT NULL,
  `subnet_mask` char(15) NOT NULL,
  `gateway` char(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `install_pxe_network`
--

INSERT INTO `install_pxe_network` (`id`, `nic_id`, `pool_start`, `pool_end`, `subnet_mask`, `gateway`) VALUES
(1, 2, '172.168.4.5', '172.168.4.100', '255.255.255.0', '172.168.4.1');

-- --------------------------------------------------------

--
-- Table structure for table `install_thunder_access`
--

CREATE TABLE IF NOT EXISTS `install_thunder_access` (
`id` int(11) NOT NULL,
  `nic_id` int(11) NOT NULL,
  `ip_address` char(15) NOT NULL,
  `subnet_mask` char(15) NOT NULL,
  `gateway` char(15) NOT NULL,
  `dns_ip` char(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `install_thunder_access`
--

INSERT INTO `install_thunder_access` (`id`, `nic_id`, `ip_address`, `subnet_mask`, `gateway`, `dns_ip`) VALUES
(1, 2, '192.155.226.34', '255.255.255.0', '192.155.226.1', '8.8.8.8'),
(2, 2, '192.155.226.34', '255.255.255.0', '192.155.226.1', '8.8.8.8');

-- --------------------------------------------------------

--
-- Table structure for table `shoogie_servererror`
--

CREATE TABLE IF NOT EXISTS `shoogie_servererror` (
`id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `hostname` varchar(64) NOT NULL,
  `request_method` varchar(10) NOT NULL,
  `request_path` varchar(1024) NOT NULL,
  `query_string` longtext NOT NULL,
  `post_data` longtext NOT NULL,
  `cookie_data` longtext NOT NULL,
  `session_id` varchar(64) NOT NULL,
  `session_data` longtext NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `exception_type` varchar(128) NOT NULL,
  `exception_str` longtext NOT NULL,
  `source_file` varchar(256) NOT NULL,
  `source_line_num` int(11) NOT NULL,
  `source_function` varchar(128) NOT NULL,
  `source_text` varchar(256) NOT NULL,
  `technical_response` longtext NOT NULL,
  `issue` varchar(256) NOT NULL,
  `resolved` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thunder_alert`
--

CREATE TABLE IF NOT EXISTS `thunder_alert` (
`id` int(11) NOT NULL,
  `alert_type` varchar(60) NOT NULL,
  `referece_id` int(11) NOT NULL,
  `alert_content` longtext NOT NULL,
  `visited` tinyint(1) NOT NULL,
  `updated_time` datetime NOT NULL,
  `alert_status` varchar(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_alert`
--

INSERT INTO `thunder_alert` (`id`, `alert_type`, `referece_id`, `alert_content`, `visited`, `updated_time`, `alert_status`) VALUES
(24, 'Node', 9, 'New node Node9 found', 1, '2015-05-27 12:46:23', 'N'),
(25, 'Node', 10, 'New node Node10 found', 1, '2015-05-27 12:46:23', 'N'),
(26, 'Node', 10, 'Node Node10 is UP.', 1, '2015-05-27 12:54:57', 'S'),
(27, 'Node', 10, 'Node Node10 is Down.', 1, '2015-05-27 13:00:01', 'F'),
(28, 'Node', 10, 'Node Node10 is UP.', 1, '2015-05-27 13:01:02', 'S'),
(29, 'Cloud', 12, 'Deployment of Base cloud failed!', 1, '2015-05-27 14:02:32', 'F'),
(30, 'Cloud', 12, 'Deployment of ''Base cloud'' failed!', 1, '2015-05-28 09:06:53', 'F'),
(31, 'Cloud', 12, 'Deployment of ''Base cloud'' failed!', 1, '2015-05-28 12:29:41', 'F'),
(32, 'Cloud', 12, 'Deployment of ''Base cloud'' failed!', 1, '2015-05-28 12:46:00', 'F'),
(33, 'Node', 11, 'New node Node11 found', 1, '2015-05-29 10:59:38', 'N'),
(34, 'Node', 12, 'New node Node12 found', 1, '2015-05-29 10:59:39', 'N'),
(35, 'Node', 13, 'New node Node13 found', 1, '2015-05-29 10:59:40', 'N'),
(36, 'Node', 14, 'New node Node14 found', 1, '2015-05-29 10:59:41', 'N'),
(37, 'Node', 15, 'New node Node15 found', 1, '2015-05-29 10:59:41', 'N'),
(38, 'Node', 15, 'Node Node15 is UP.', 1, '2015-05-29 11:01:36', 'S'),
(39, 'Cloud', 12, '''Base cloud'' deployed successfully in http://192.168.130.194/', 1, '2015-05-29 11:52:56', 'S'),
(40, 'Cloud', 12, '''Base cloud'' deployed successfully in http://192.168.130.194/', 0, '2015-05-29 13:50:34', 'S');

-- --------------------------------------------------------

--
-- Table structure for table `thunder_cloud`
--

CREATE TABLE IF NOT EXISTS `thunder_cloud` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cloud_name` varchar(255) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_cloud`
--

INSERT INTO `thunder_cloud` (`id`, `user_id`, `cloud_name`, `created_date`) VALUES
(11, 1, 'Aqorn Cloud', '2015-05-14'),
(12, 1, 'Base cloud', '2015-05-15'),
(13, 1, 'sdfsdf', '2015-05-16');

-- --------------------------------------------------------

--
-- Table structure for table `thunder_cloud_databag`
--

CREATE TABLE IF NOT EXISTS `thunder_cloud_databag` (
`id` int(11) NOT NULL,
  `cloud_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `databag_value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thunder_cloud_databag_item`
--

CREATE TABLE IF NOT EXISTS `thunder_cloud_databag_item` (
`id` int(11) NOT NULL,
  `databag_category` varchar(120) NOT NULL,
  `item_name` varchar(200) NOT NULL,
  `item_column` varchar(120) NOT NULL,
  `default_value` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_cloud_databag_item`
--

INSERT INTO `thunder_cloud_databag_item` (`id`, `databag_category`, `item_name`, `item_column`, `default_value`) VALUES
(1, 'db_passwords', 'nova', 'nova', 'ThunDer'),
(2, 'db_passwords', 'horizon', 'horizon', 'ThunDer'),
(3, 'db_passwords', 'keystone', 'keystone', 'ThunDer'),
(4, 'db_passwords', 'glance', 'glance', 'ThunDer'),
(5, 'db_passwords', 'neutron', 'neutron', 'ThunDer'),
(6, 'db_passwords', 'dash', 'dash', 'ThunDer'),
(7, 'db_passwords', 'cinder', 'cinder', 'ThunDer'),
(8, 'service_passwords', 'openstack image', 'openstack-image', 'ThunDer'),
(9, 'service_passwords', 'openstack compute', 'openstack-compute', 'ThunDer'),
(10, 'service_passwords', 'openstack network', 'openstack-network', 'ThunDer'),
(11, 'service_passwords', 'openstack block storage', 'openstack-block-storage', 'ThunDer'),
(12, 'secrets', 'openstack identity bootstrap token', 'openstack_identity_bootstrap_token', 'ThunDer'),
(13, 'secrets', 'neutron metadata secret', 'neutron_metadata_secret', 'ThunDer'),
(14, 'service_passwords', 'openstack object storage', 'openstack-object-storage', 'ThunDer'),
(15, 'secrets', 'swift hash path prefix', 'swift_hash_path_prefix', 'ThunDer'),
(16, 'secrets', 'swift hash path suffix', 'swift_hash_path_suffix', 'ThunDer'),
(17, 'secrets', 'dispersion auth user', 'dispersion_auth_user', 'ThunDer'),
(18, 'secrets', 'dispersion auth key', 'dispersion_auth_key', 'ThunDer'),
(19, 'secrets', 'swift authkey', 'swift_authkey', 'ThunDer'),
(20, 'user_passwords', 'guest(Messaging Server)', 'guest', 'guest');

-- --------------------------------------------------------

--
-- Table structure for table `thunder_cloud_domain`
--

CREATE TABLE IF NOT EXISTS `thunder_cloud_domain` (
`id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_cloud_domain`
--

INSERT INTO `thunder_cloud_domain` (`id`, `name`, `status`) VALUES
(1, 'Everything', 1);

-- --------------------------------------------------------

--
-- Table structure for table `thunder_cloud_domain_map`
--

CREATE TABLE IF NOT EXISTS `thunder_cloud_domain_map` (
`id` int(11) NOT NULL,
  `cloud_id` int(11) NOT NULL,
  `domain_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thunder_cloud_specification`
--

CREATE TABLE IF NOT EXISTS `thunder_cloud_specification` (
`id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `spec_category` varchar(100) NOT NULL,
  `spec_name` varchar(200) NOT NULL,
  `spec_column` varchar(200) NOT NULL,
  `default_value` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_cloud_specification`
--

INSERT INTO `thunder_cloud_specification` (`id`, `role_id`, `spec_category`, `spec_name`, `spec_column`, `default_value`) VALUES
(1, 1, 'keystone', 'Openstack Endpoint Host', 'openstack::endpoints::host', 'controller'),
(2, 1, 'messaging_server', 'Messaging Server Endpoint Host', 'openstack::endpoints::mq::host', 'controller'),
(3, 1, 'database', 'Database Server Endpoint Host', 'openstack::endpoints::db::host', 'loadbalancer'),
(4, 1, 'compute', 'Network Service Type', 'openstack::compute::network::service_type', 'neutron'),
(5, 1, 'cinder', 'The Default Store of Image', 'openstack::image::api::default_store', 'file'),
(6, 1, 'Neutron', 'Nova Metadata API Service IP', 'openstack::network::metadata::nova_metadata_ip', 'controller'),
(7, 1, 'Neutron', 'Type of Network to Allocate for Tenant Networks', 'openstack::network::openvswitch::tenant_network_type', 'gre'),
(8, 1, 'Neutron', 'Interface to use for external bridge', 'openstack::network::l3::external_network_bridge_interface', 'eth1'),
(9, 1, 'common', 'Set to True in the Server and the Agents to Enable Support for GRE', 'openstack::network::openvswitch::enable_tunneling', 'True'),
(10, 1, 'Neutron', 'The Type of Tunnel Network', 'openstack::network::openvswitch::tunnel_type', 'gre'),
(11, 3, 'cinder', 'Volume Driver', 'openstack::block-storage::volume::driver', 'cinder.volume.drivers.lvm.LVMISCSIDriver'),
(12, 1, 'dashborad', 'The hostname of dashbaord to add in apache conf. If not give we can access it through default IP of controller', 'openstack::dashboard::server_hostname', 'nil'),
(13, 3, 'cinder', 'Block Device Disk Name', 'openstack::block-storage::volume::block_devices', '/dev/sdb1'),
(14, 4, 'swift', 'Git Repository Creation Server IP', 'openstack::object-storage::git_builder_ip', 'controller'),
(15, 1, 'database', 'Mysql Root Password', 'mysql::server_root_password', 'root'),
(16, 1, 'messaging_server', 'Messaging Server Type', 'openstack::mq::service_type', 'rabbitmq');

-- --------------------------------------------------------

--
-- Table structure for table `thunder_cloud_spec_values`
--

CREATE TABLE IF NOT EXISTS `thunder_cloud_spec_values` (
`id` int(11) NOT NULL,
  `spec_id` int(11) NOT NULL,
  `cloud_id` int(11) NOT NULL,
  `spec_value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thunder_disk_drive`
--

CREATE TABLE IF NOT EXISTS `thunder_disk_drive` (
`id` int(11) NOT NULL,
  `nodelist_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `system_space` decimal(19,1) NOT NULL,
  `storage_space` decimal(19,1) NOT NULL,
  `total_space` decimal(19,1) NOT NULL,
  `format` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_disk_drive`
--

INSERT INTO `thunder_disk_drive` (`id`, `nodelist_id`, `name`, `system_space`, `storage_space`, `total_space`, `format`) VALUES
(23, 15, '/dev/sda', '1.5', '8.5', '10.0', 0),
(24, 15, '/dev/sdb', '0.0', '6.0', '8.0', 0),
(25, 15, '/dev/sdc', '0.0', '4.0', '6.0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `thunder_dns_server`
--

CREATE TABLE IF NOT EXISTS `thunder_dns_server` (
`id` int(11) NOT NULL,
  `thunder_network_details_id` int(11) NOT NULL,
  `dns_server` char(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_dns_server`
--

INSERT INTO `thunder_dns_server` (`id`, `thunder_network_details_id`, `dns_server`) VALUES
(46, 35, '8.8.8.8'),
(47, 35, '8.8.4.4'),
(154, 120, '8.8.8.8'),
(155, 120, '8.8.8.10');

-- --------------------------------------------------------

--
-- Table structure for table `thunder_domain`
--

CREATE TABLE IF NOT EXISTS `thunder_domain` (
`id` int(11) NOT NULL,
  `domain_name` varchar(255) NOT NULL,
  `scope_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thunder_domain_role`
--

CREATE TABLE IF NOT EXISTS `thunder_domain_role` (
`id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `domain_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_domain_role`
--

INSERT INTO `thunder_domain_role` (`id`, `name`, `domain_id`, `permission_id`) VALUES
(1, 'Thunder', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `thunder_domain_role_permission`
--

CREATE TABLE IF NOT EXISTS `thunder_domain_role_permission` (
`id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_domain_role_permission`
--

INSERT INTO `thunder_domain_role_permission` (`id`, `name`, `description`) VALUES
(1, 'Administrator', 'Individual Cloud or Thunder ( all clouds)'),
(2, 'Deploy', 'View, change configurations or deploy'),
(3, 'Change', 'View or change cloud configurations'),
(4, 'View', 'View cloud configurations only');

-- --------------------------------------------------------

--
-- Table structure for table `thunder_floatingip_network`
--

CREATE TABLE IF NOT EXISTS `thunder_floatingip_network` (
`id` int(11) NOT NULL,
  `thunder_network_details_id` int(11) NOT NULL,
  `ip_range_from` char(15) NOT NULL,
  `ip_range_to` char(15) NOT NULL,
  `ip_cidr` varchar(20) NOT NULL,
  `use_vlan` tinyint(1) NOT NULL,
  `vlan_tag` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_floatingip_network`
--

INSERT INTO `thunder_floatingip_network` (`id`, `thunder_network_details_id`, `ip_range_from`, `ip_range_to`, `ip_cidr`, `use_vlan`, `vlan_tag`) VALUES
(37, 35, '192.168.200.150', '192.168.200.160', '192.168.200.0/24', 1, 105),
(38, 35, '192.168.122.44', '192.168.122.44', '192.168.122.0/24', 1, 106),
(111, 82, '192.168.200.150', '192.168.200.160', '192.168.200.0/24', 1, 3),
(112, 82, '192.168.142.44', '192.168.142.66', '192.168.142.0/24', 1, 4),
(222, 120, '192.168.200.180', '192.168.200.190', '192.168.200.0/24', 0, NULL),
(223, 120, '192.168.200.88', '192.168.200.99', '192.168.200.60/24', 0, NULL),
(224, 120, '192.168.100.44', '192.168.100.66', '192.168.100.66/24', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `thunder_job`
--

CREATE TABLE IF NOT EXISTS `thunder_job` (
`id` int(11) NOT NULL,
  `cloud_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `job_type` varchar(100) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `updated_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `job_status` varchar(1) NOT NULL,
  `job_priority` int(11) NOT NULL,
  `job_progress` int(11) NOT NULL,
  `visited` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_job`
--

INSERT INTO `thunder_job` (`id`, `cloud_id`, `subject_id`, `job_type`, `start_time`, `updated_time`, `end_time`, `job_status`, `job_priority`, `job_progress`, `visited`) VALUES
(6, 12, 53, 'ROLE_ASSIGN', '2015-05-29 13:46:00', '2015-05-29 13:50:34', '2015-05-29 13:50:34', 'S', 1, 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `thunder_log`
--

CREATE TABLE IF NOT EXISTS `thunder_log` (
`id` int(11) NOT NULL,
  `level` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `timedata` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thunder_manage_addons`
--

CREATE TABLE IF NOT EXISTS `thunder_manage_addons` (
`id` int(11) NOT NULL,
  `addon_name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `timedata` datetime DEFAULT NULL,
  `filepath` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thunder_monitor_service`
--

CREATE TABLE IF NOT EXISTS `thunder_monitor_service` (
`id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `command` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_monitor_service`
--

INSERT INTO `thunder_monitor_service` (`id`, `name`, `command`, `status`) VALUES
(1, 'cobbler status', 'service cobbler status', 0),
(2, 'chef server ctl', 'chef-server-ctl status', 1);

-- --------------------------------------------------------

--
-- Table structure for table `thunder_network_details`
--

CREATE TABLE IF NOT EXISTS `thunder_network_details` (
`id` int(11) NOT NULL,
  `cloud_id` int(11) NOT NULL,
  `public_cidr` varchar(20) DEFAULT NULL,
  `public_use_vlan` tinyint(1) NOT NULL,
  `public_vlan` int(11) DEFAULT NULL,
  `in_network_cidr` varchar(20) NOT NULL,
  `in_use_vlan` tinyint(1) NOT NULL,
  `in_vlan` int(11) DEFAULT NULL,
  `st_network_cidr` varchar(20) DEFAULT NULL,
  `st_use_vlan` tinyint(1) NOT NULL,
  `st_vlan` int(11) DEFAULT NULL,
  `gre_tunnel_from` int(11) NOT NULL,
  `gre_tunnel_to` int(11) NOT NULL,
  `update_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `last_verified` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_network_details`
--

INSERT INTO `thunder_network_details` (`id`, `cloud_id`, `public_cidr`, `public_use_vlan`, `public_vlan`, `in_network_cidr`, `in_use_vlan`, `in_vlan`, `st_network_cidr`, `st_use_vlan`, `st_vlan`, `gre_tunnel_from`, `gre_tunnel_to`, `update_date`, `status`, `last_verified`) VALUES
(35, 11, '192.168.100.0/24', 1, 102, '192.168.100.0/24', 1, 101, '192.168.101.0/24', 0, NULL, 1, 1000, NULL, 0, NULL),
(82, 13, '192.168.200.0/24', 1, 3, '192.168.122.0/24', 1, 2, '192.168.101.0/24', 1, 1, 1, 1000, NULL, 0, NULL),
(120, 12, '192.168.200.0/24', 0, NULL, '192.168.102.10/24', 0, NULL, '192.168.101.0/24', 0, NULL, 1, 2000, NULL, 1, '2015-05-29 11:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `thunder_network_interface`
--

CREATE TABLE IF NOT EXISTS `thunder_network_interface` (
`id` int(11) NOT NULL,
  `nodelist_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `mac_address` varchar(60) NOT NULL,
  `model_name` varchar(120) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_network_interface`
--

INSERT INTO `thunder_network_interface` (`id`, `nodelist_id`, `name`, `mac_address`, `model_name`) VALUES
(44, 15, 'eth4', '52:54:00:EA:5A:DB', ''),
(45, 15, 'eth3', '52:54:00:83:B8:9C', ''),
(46, 15, 'eth2', '52:54:00:A3:CB:91', ''),
(47, 15, 'eth1', '52:54:00:70:D6:B0', ''),
(48, 15, 'eth0', '52:54:00:34:1F:79', '');

-- --------------------------------------------------------

--
-- Table structure for table `thunder_nic_mapping`
--

CREATE TABLE IF NOT EXISTS `thunder_nic_mapping` (
`id` int(11) NOT NULL,
  `nic_id` int(11) NOT NULL,
  `network_type` varchar(1) NOT NULL,
  `ip_address` char(39) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_nic_mapping`
--

INSERT INTO `thunder_nic_mapping` (`id`, `nic_id`, `network_type`, `ip_address`) VALUES
(41, 47, 'M', '192.168.102.62'),
(42, 46, 'P', NULL),
(43, 45, 'S', '192.168.101.162'),
(44, 48, 'A', '192.168.130.194');

-- --------------------------------------------------------

--
-- Table structure for table `thunder_nodelist`
--

CREATE TABLE IF NOT EXISTS `thunder_nodelist` (
`id` int(11) NOT NULL,
  `cloud_id` varchar(255) NOT NULL,
  `node_ip` char(39) NOT NULL,
  `host_name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sudo_password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `prepared` tinyint(1) NOT NULL,
  `preos` tinyint(1) NOT NULL,
  `currentos` tinyint(1) NOT NULL,
  `node_up` tinyint(1) NOT NULL,
  `zabbix_host_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_nodelist`
--

INSERT INTO `thunder_nodelist` (`id`, `cloud_id`, `node_ip`, `host_name`, `user_name`, `password`, `sudo_password`, `status`, `prepared`, `preos`, `currentos`, `node_up`, `zabbix_host_id`) VALUES
(11, '0', '192.168.130.191', 'Node11', 'geo', 'geo@123', 'True', 1, 0, 0, 0, 0, 10115),
(12, '0', '192.168.130.193', 'Node12', 'geo', 'geo@123', 'True', 1, 0, 0, 0, 0, 10116),
(13, '0', '192.168.130.192', 'Node13', 'geo', 'geo@123', 'True', 1, 0, 0, 0, 0, 10117),
(14, '0', '192.168.130.195', 'Node14', 'geo', 'geo@123', 'True', 1, 0, 0, 0, 0, 10118),
(15, '12', '192.168.130.194', 'Node15', 'geo', 'geo@123', 'True', 1, 1, 1, 1, 1, 10119);

-- --------------------------------------------------------

--
-- Table structure for table `thunder_nodelog`
--

CREATE TABLE IF NOT EXISTS `thunder_nodelog` (
`id` int(11) NOT NULL,
  `node_listid` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `log_type` varchar(80) NOT NULL,
  `log_title` varchar(255) NOT NULL,
  `log_details` longtext NOT NULL,
  `updated_time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_nodelog`
--

INSERT INTO `thunder_nodelog` (`id`, `node_listid`, `subject_id`, `log_type`, `log_title`, `log_details`, `updated_time`, `status`) VALUES
(2, 9, 0, 'JOB', 'Created host Node9 in the zabbix server', 'Created  node in the zabbix server with IP 192.168.130.191.', '2015-05-27 12:46:23', 1),
(3, 9, 0, 'JOB', 'New node with IP 192.168.130.191 detected and it added to the thunder', 'New node with IP 192.168.130.191 detected and it added to the thunder', '2015-05-27 12:46:23', 1),
(4, 9, 0, 'JOB', 'Node specification is updated with mac id 52:54:00:c7:f1:75.', 'Node specification is updated with mac id 52:54:00:c7:f1:75.', '2015-05-27 12:46:23', 1),
(5, 10, 0, 'JOB', 'Created host Node10 in the zabbix server', 'Created  node in the zabbix server with IP 192.168.130.192.', '2015-05-27 12:46:23', 1),
(6, 10, 0, 'JOB', 'New node with IP 192.168.130.192 detected and it added to the thunder', 'New node with IP 192.168.130.192 detected and it added to the thunder', '2015-05-27 12:46:23', 1),
(7, 10, 0, 'JOB', 'Node specification is updated with mac id 52:54:00:95:b8:96.', 'Node specification is updated with mac id 52:54:00:95:b8:96.', '2015-05-27 12:46:24', 1),
(8, 10, 0, 'JOB', 'Node Node10 is UP.', 'Node Node10 is UP.', '2015-05-27 12:54:57', 1),
(9, 10, 0, 'JOB', 'Node Node10 is Down.', 'Node Node10 is Down.', '2015-05-27 13:00:01', 0),
(10, 10, 0, 'JOB', 'Node Node10 is UP.', 'Node Node10 is UP.', '2015-05-27 13:01:02', 1),
(11, 10, 52, 'ROLE_ASSIGN', 'New Role Controller Assigned.', 'New Role Controller is assigned to the node with host name Node10', '2015-05-27 13:42:17', 1),
(12, 10, 2, 'JOB', 'Started main os installation', 'Started main os installation', '2015-05-27 13:45:18', 1),
(13, 10, 2, 'JOB', 'Deployment of role[controller] in node: 192.168.130.192 failed!', 'Command: knife bootstrap 192.168.130.192 --ssh-user geo --ssh-password ''geo@123'' --sudo --use-sudo-password --node-name node10 --environment base_cloud --run-list ''recipe[thunder-setup::setup_network]'' \nMessage: Connecting to 192.168.130.192\n192.168.130.192 [sudo] password for geo: Starting first Chef Client run...\r\n192.168.130.192 [2015-05-27T19:32:24+05:30] WARN: \r\n192.168.130.192 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *\r\n192.168.130.192 SSL validation of HTTPS requests is disabled. HTTPS connections are still\r\n192.168.130.192 encrypted, but chef is not able to detect forged replies or man in the middle\r\n192.168.130.192 attacks.\r\n192.168.130.192 \r\n192.168.130.192 To fix this issue add an entry like this to your configuration file:\r\n192.168.130.192 \r\n192.168.130.192 ```\r\n192.168.130.192   # Verify all HTTPS connections (recommended)\r\n192.168.130.192   ssl_verify_mode :verify_peer\r\n192.168.130.192 \r\n192.168.130.192   # OR, Verify only connections to chef-server\r\n192.168.130.192   verify_api_cert true\r\n192.168.130.192 ```\r\n192.168.130.192 \r\n192.168.130.192 To check your SSL configuration, or troubleshoot errors, you can use the\r\n192.168.130.192 `knife ssl check` command like so:\r\n192.168.130.192 \r\n192.168.130.192 ```\r\n192.168.130.192   knife ssl check -c /etc/chef/client.rb\r\n192.168.130.192 ```\r\n192.168.130.192 \r\n192.168.130.192 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *\r\n192.168.130.192 \r\n192.168.130.192 Starting Chef Client, version 11.18.6[0m\r\n192.168.130.192 resolving cookbooks for run list: ["thunder-setup::setup_network"][0m\r\n192.168.130.192 Synchronizing Cookbooks:[0m\r\n192.168.130.192   - thunder-setup[0m\r\n192.168.130.192   - database[0m\r\n192.168.130.192   - mysql[0m\r\n192.168.130.192   - yum-mysql-community[0m\r\n192.168.130.192   - postgresql[0m\r\n192.168.130.192   - apt[0m\r\n192.168.130.192   - yum[0m\r\n192.168.130.192   - build-essential[0m\r\n192.168.130.192   - openssl[0m\r\n192.168.130.192   - chef-sugar[0m\r\n192.168.130.192   - aws[0m\r\n192.168.130.192   - xfs[0m\r\n192.168.130.192   - mysql-chef_gem[0m\r\n192.168.130.192   - openstack-common[0m\r\n192.168.130.192   - yum-epel[0m\r\n192.168.130.192   - openstack-identity[0m\r\n192.168.130.192   - openstack-image[0m\r\n192.168.130.192   - openstack-compute[0m\r\n192.168.130.192   - openstack-network[0m\r\n192.168.130.192   - python[0m\r\n192.168.130.192   - openstack-block-storage[0m\r\n192.168.130.192   - selinux[0m\r\n192.168.130.192   - openstack-object-storage[0m\r\n192.168.130.192   - memcached[0m\r\n192.168.130.192   - runit[0m\r\n192.168.130.192   - statsd[0m\r\n192.168.130.192   - git[0m\r\n192.168.130.192   - dmg[0m\r\n192.168.130.192   - chef_handler[0m\r\n192.168.130.192   - windows[0m\r\n192.168.130.192   - openstack-dashboard[0m\r\n192.168.130.192   - iptables[0m\r\n192.168.130.192   - logrotate[0m\r\n192.168.130.192   - pacman[0m\r\n192.168.130.192   - parted[0m\r\n192.168.130.192   - apache2[0m\r\n192.168.130.192 Compiling Cookbooks...[0m\r\n192.168.130.192 [0m\r\n192.168.130.192 ================================================================================[0m\r\n192.168.130.192 [31mRecipe Compile Error in /var/chef/cache/cookbooks/thunder-setup/recipes/setup_network.rb[0m\r\n192.168.130.192 ================================================================================[0m\r\n192.168.130.192 \r\n192.168.130.192 [0mTypeError[0m\r\n192.168.130.192 ---------[0m\r\n192.168.130.192 can''t convert String into Integer[0m\r\n192.168.130.192 \r\n192.168.130.192 [0mCookbook Trace:[0m\r\n192.168.130.192 ---------------[0m\r\n192.168.130.192   /var/chef/cache/cookbooks/thunder-setup/recipes/setup_network.rb:70:in `[]''\r\n192.168.130.192 [0m  /var/chef/cache/cookbooks/thunder-setup/recipes/setup_network.rb:70:in `block (2 levels) in from_file''\r\n192.168.130.192 [0m  /var/chef/cache/cookbooks/thunder-setup/recipes/setup_network.rb:66:in `block in from_file''\r\n192.168.130.192 [0m  /var/chef/cache/cookbooks/thunder-setup/recipes/setup_network.rb:60:in `each_pair''\r\n192.168.130.192 [0m  /var/chef/cache/cookbooks/thunder-setup/recipes/setup_network.rb:60:in `from_file''[0m\r\n192.168.130.192 \r\n192.168.130.192 [0mRelevant File Content:[0m\r\n192.168.130.192 ----------------------[0m\r\n192.168.130.192 /var/chef/cache/cookbooks/thunder-setup/recipes/setup_network.rb:\r\n192.168.130.192 [0m\r\n192.168.130.192 [0m 63:      index = index + 1\r\n192.168.130.192 [0m 64:      \r\n192.168.130.192 [0m 65:      # create public subnet\r\n192.168.130.192 [0m 66:      thunder_setup_network "Create public subnet #{subnet_name}" do\r\n192.168.130.192 [0m 67:        name subnet_name\r\n192.168.130.192 [0m 68:        network node[''thunder''][''external_network'']\r\n192.168.130.192 [0m 69:        type "external"\r\n192.168.130.192 [0m 70>>       start_ip  ip_info[''ip_range_from'']\r\n192.168.130.192 [0m 71:        end_ip  ip_info[''ip_range_to'']\r\n192.168.130.192 [0m 72:        cidr  ip_info[''ip_cidr'']\r\n192.168.130.192 [0m 73:        identity_user service_user\r\n192.168.130.192 [0m 74:        identity_pass service_pass\r\n192.168.130.192 [0m 75:        identity_tenant service_tenant_name\r\n192.168.130.192 [0m 76:        identity_uri auth_uri\r\n192.168.130.192 [0m 77:        action :create_subnet\r\n192.168.130.192 [0m 78:      end\r\n192.168.130.192 [0m 79:      \r\n192.168.130.192 [0m\r\n192.168.130.192 [0m[0m\r\n192.168.130.192 Running handlers:[0m\r\n192.168.130.192 [2015-05-27T19:32:31+05:30] ERROR: Running exception handlers\r\n192.168.130.192 Running handlers complete\r\n192.168.130.192 [0m[2015-05-27T19:32:31+05:30] ERROR: Exception handlers complete\r\n192.168.130.192 [2015-05-27T19:32:31+05:30] FATAL: Stacktrace dumped to /var/chef/cache/chef-stacktrace.out\r\n192.168.130.192 Chef Client failed. 0 resources updated in 7.504692804 seconds[0m\r\n192.168.130.192 [2015-05-27T19:32:31+05:30] ERROR: can''t convert String into Integer\r\n192.168.130.192 [2015-05-27T19:32:31+05:30] FATAL: Chef::Exceptions::ChildConvergeError: Chef run process exited unsuccessfully (exit code 1)\r\n', '2015-05-27 14:02:32', 0),
(14, 10, 52, 'ROLE_ASSIGN', 'New Role Controller Assigned.', 'New Role Controller is assigned to the node with host name Node10', '2015-05-28 07:11:25', 1),
(15, 10, 3, 'JOB', 'Deployment of role[controller] in node: 192.168.130.192 failed!', 'Command: knife bootstrap 192.168.130.192 --ssh-user geo --ssh-password ''geo@123'' --sudo --use-sudo-password --node-name node10 --environment base_cloud --run-list ''recipe[openstack-identity::server],recipe[openstack-identity::client],recipe[openstack-identity::registration]'' \nMessage: Connecting to 192.168.130.192\n192.168.130.192 [sudo] password for geo: Starting first Chef Client run...\r\n192.168.130.192 [2015-05-28T14:36:41+05:30] WARN: \r\n192.168.130.192 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *\r\n192.168.130.192 SSL validation of HTTPS requests is disabled. HTTPS connections are still\r\n192.168.130.192 encrypted, but chef is not able to detect forged replies or man in the middle\r\n192.168.130.192 attacks.\r\n192.168.130.192 \r\n192.168.130.192 To fix this issue add an entry like this to your configuration file:\r\n192.168.130.192 \r\n192.168.130.192 ```\r\n192.168.130.192   # Verify all HTTPS connections (recommended)\r\n192.168.130.192   ssl_verify_mode :verify_peer\r\n192.168.130.192 \r\n192.168.130.192   # OR, Verify only connections to chef-server\r\n192.168.130.192   verify_api_cert true\r\n192.168.130.192 ```\r\n192.168.130.192 \r\n192.168.130.192 To check your SSL configuration, or troubleshoot errors, you can use the\r\n192.168.130.192 `knife ssl check` command like so:\r\n192.168.130.192 \r\n192.168.130.192 ```\r\n192.168.130.192   knife ssl check -c /etc/chef/client.rb\r\n192.168.130.192 ```\r\n192.168.130.192 \r\n192.168.130.192 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *\r\n192.168.130.192 \r\n192.168.130.192 Starting Chef Client, version 11.18.6[0m\r\n192.168.130.192 resolving cookbooks for run list: ["openstack-identity::server", "openstack-identity::client", "openstack-identity::registration"][0m\r\n192.168.130.192 Synchronizing Cookbooks:[0m\r\n192.168.130.192   - openstack-identity[0m\r\n192.168.130.192   - openstack-common[0m\r\n192.168.130.192   - apt[0m\r\n192.168.130.192   - database[0m\r\n192.168.130.192   - mysql[0m\r\n192.168.130.192   - yum-mysql-community[0m\r\n192.168.130.192   - yum[0m\r\n192.168.130.192   - postgresql[0m\r\n192.168.130.192   - build-essential[0m\r\n192.168.130.192   - openssl[0m\r\n192.168.130.192   - chef-sugar[0m\r\n192.168.130.192   - aws[0m\r\n192.168.130.192   - xfs[0m\r\n192.168.130.192   - mysql-chef_gem[0m\r\n192.168.130.192   - yum-epel[0m\r\n192.168.130.192   - openstack-image[0m\r\n192.168.130.192   - openstack-compute[0m\r\n192.168.130.192   - thunder-setup[0m\r\n192.168.130.192   - selinux[0m\r\n192.168.130.192   - python[0m\r\n192.168.130.192   - openstack-block-storage[0m\r\n192.168.130.192   - openstack-network[0m\r\n192.168.130.192   - openstack-object-storage[0m\r\n192.168.130.192   - statsd[0m\r\n192.168.130.192   - memcached[0m\r\n192.168.130.192   - runit[0m\r\n192.168.130.192   - dmg[0m\r\n192.168.130.192   - git[0m\r\n192.168.130.192   - chef_handler[0m\r\n192.168.130.192   - windows[0m\r\n192.168.130.192   - openstack-dashboard[0m\r\n192.168.130.192   - apache2[0m\r\n192.168.130.192   - iptables[0m\r\n192.168.130.192   - logrotate[0m\r\n192.168.130.192   - pacman[0m\r\n192.168.130.192   - parted[0m\r\n192.168.130.192 Compiling Cookbooks...[0m\r\n192.168.130.192 Command executed:::: modprobe 8021q ::::\r\n192.168.130.192 [0m\r\n192.168.130.192 ================================================================================[0m\r\n192.168.130.192 [31mRecipe Compile Error in /var/chef/cache/cookbooks/openstack-identity/recipes/server.rb[0m\r\n192.168.130.192 ================================================================================[0m\r\n192.168.130.192 \r\n192.168.130.192 [0mTypeError[0m\r\n192.168.130.192 ---------[0m\r\n192.168.130.192 can''t convert Fixnum into String[0m\r\n192.168.130.192 \r\n192.168.130.192 [0mCookbook Trace:[0m\r\n192.168.130.192 ---------------[0m\r\n192.168.130.192   /var/chef/cache/cookbooks/thunder-setup/recipes/setup_network_configuration.rb:48:in `+''\r\n192.168.130.192 [0m  /var/chef/cache/cookbooks/thunder-setup/recipes/setup_network_configuration.rb:48:in `block in from_file''\r\n192.168.130.192 [0m  /var/chef/cache/cookbooks/thunder-setup/recipes/setup_network_configuration.rb:39:in `each''\r\n192.168.130.192 [0m  /var/chef/cache/cookbooks/thunder-setup/recipes/setup_network_configuration.rb:39:in `from_file''\r\n192.168.130.192 [0m  /var/chef/cache/cookbooks/thunder-setup/recipes/setup_node.rb:31:in `from_file''\r\n192.168.130.192 [0m  /var/chef/cache/cookbooks/thunder-setup/recipes/controller_setup.rb:11:in `from_file''\r\n192.168.130.192 [0m  /var/chef/cache/cookbooks/openstack-identity/recipes/server.rb:30:in `from_file''[0m\r\n192.168.130.192 \r\n192.168.130.192 [0mRelevant File Content:[0m\r\n192.168.130.192 ----------------------[0m\r\n192.168.130.192 /var/chef/cache/cookbooks/thunder-setup/recipes/setup_network_configuration.rb:\r\n192.168.130.192 [0m\r\n192.168.130.192 [0m 41:    # not change admin network configurations\r\n192.168.130.192 [0m 42:    if net_type != "A"\r\n192.168.130.192 [0m 43:    \r\n192.168.130.192 [0m 44:      nic_device = nic_info[''nic_name'']\r\n192.168.130.192 [0m 45:      \r\n192.168.130.192 [0m 46:      # if valn tag is enabled\r\n192.168.130.192 [0m 47:      if nic_info[''vlan_tag'']\r\n192.168.130.192 [0m 48>>       nic_name = nic_info[''nic_name''] + "." + nic_info[''vlan_tag''] \r\n192.168.130.192 [0m 49:      else\r\n192.168.130.192 [0m 50:        nic_name = nic_info[''nic_name'']\r\n192.168.130.192 [0m 51:      end\r\n192.168.130.192 [0m 52:      \r\n192.168.130.192 [0m 53:      # if nic ip is empty\r\n192.168.130.192 [0m 54:      if nic_info[''nic_ip''].to_s.empty?\r\n192.168.130.192 [0m 55:        nic_ip = ""\r\n192.168.130.192 [0m 56:      else\r\n192.168.130.192 [0m 57:        nic_ip = nic_info[''nic_ip'']\r\n192.168.130.192 [0m\r\n192.168.130.192 [0m[0m\r\n192.168.130.192 Running handlers:[0m\r\n192.168.130.192 [2015-05-28T14:36:53+05:30] ERROR: Running exception handlers\r\n192.168.130.192 Running handlers complete\r\n192.168.130.192 [0m[2015-05-28T14:36:53+05:30] ERROR: Exception handlers complete\r\n192.168.130.192 [2015-05-28T14:36:53+05:30] FATAL: Stacktrace dumped to /var/chef/cache/chef-stacktrace.out\r\n192.168.130.192 Chef Client failed. 0 resources updated in 12.480886673 seconds[0m\r\n192.168.130.192 [2015-05-28T14:36:53+05:30] ERROR: can''t convert Fixnum into String\r\n192.168.130.192 [2015-05-28T14:36:53+05:30] FATAL: Chef::Exceptions::ChildConvergeError: Chef run process exited unsuccessfully (exit code 1)\r\n', '2015-05-28 09:06:53', 0),
(16, 10, 52, 'ROLE_ASSIGN', 'New Role Controller Assigned.', 'New Role Controller is assigned to the node with host name Node10', '2015-05-28 09:17:39', 1),
(17, 10, 4, 'JOB', 'Deployment of role[controller] in node: 192.168.130.192 failed!', 'Command: knife bootstrap 192.168.130.192 --ssh-user geo --ssh-password ''geo@123'' --sudo --use-sudo-password --node-name node10 --environment base_cloud --run-list ''recipe[openstack-network::openvswitch],recipe[openstack-network::l3_agent]'' \nMessage: Connecting to 192.168.130.192\n192.168.130.192 [sudo] password for geo: Starting first Chef Client run...\r\n192.168.130.192 [2015-05-28T17:59:26+05:30] WARN: \r\n192.168.130.192 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *\r\n192.168.130.192 SSL validation of HTTPS requests is disabled. HTTPS connections are still\r\n192.168.130.192 encrypted, but chef is not able to detect forged replies or man in the middle\r\n192.168.130.192 attacks.\r\n192.168.130.192 \r\n192.168.130.192 To fix this issue add an entry like this to your configuration file:\r\n192.168.130.192 \r\n192.168.130.192 ```\r\n192.168.130.192   # Verify all HTTPS connections (recommended)\r\n192.168.130.192   ssl_verify_mode :verify_peer\r\n192.168.130.192 \r\n192.168.130.192   # OR, Verify only connections to chef-server\r\n192.168.130.192   verify_api_cert true\r\n192.168.130.192 ```\r\n192.168.130.192 \r\n192.168.130.192 To check your SSL configuration, or troubleshoot errors, you can use the\r\n192.168.130.192 `knife ssl check` command like so:\r\n192.168.130.192 \r\n192.168.130.192 ```\r\n192.168.130.192   knife ssl check -c /etc/chef/client.rb\r\n192.168.130.192 ```\r\n192.168.130.192 \r\n192.168.130.192 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *\r\n192.168.130.192 \r\n192.168.130.192 Starting Chef Client, version 11.18.6[0m\r\n192.168.130.192 resolving cookbooks for run list: ["openstack-network::openvswitch", "openstack-network::l3_agent"][0m\r\n192.168.130.192 Synchronizing Cookbooks:[0m\r\n192.168.130.192   - openstack-network[0m\r\n192.168.130.192   - openstack-identity[0m\r\n192.168.130.192   - apt[0m\r\n192.168.130.192   - openstack-common[0m\r\n192.168.130.192   - yum[0m\r\n192.168.130.192   - database[0m\r\n192.168.130.192   - mysql[0m\r\n192.168.130.192   - postgresql[0m\r\n192.168.130.192   - xfs[0m\r\n192.168.130.192   - yum-mysql-community[0m\r\n192.168.130.192   - build-essential[0m\r\n192.168.130.192   - chef-sugar[0m\r\n192.168.130.192   - aws[0m\r\n192.168.130.192   - openssl[0m\r\n192.168.130.192   - yum-epel[0m\r\n192.168.130.192   - mysql-chef_gem[0m\r\n192.168.130.192   - thunder-setup[0m\r\n192.168.130.192   - openstack-image[0m\r\n192.168.130.192   - openstack-compute[0m\r\n192.168.130.192   - dmg[0m\r\n192.168.130.192   - openstack-block-storage[0m\r\n192.168.130.192   - selinux[0m\r\n192.168.130.192   - runit[0m\r\n192.168.130.192   - python[0m\r\n192.168.130.192   - openstack-object-storage[0m\r\n192.168.130.192   - git[0m\r\n192.168.130.192   - statsd[0m\r\n192.168.130.192   - memcached[0m\r\n192.168.130.192   - openstack-dashboard[0m\r\n192.168.130.192   - chef_handler[0m\r\n192.168.130.192   - windows[0m\r\n192.168.130.192   - iptables[0m\r\n192.168.130.192   - apache2[0m\r\n192.168.130.192   - logrotate[0m\r\n192.168.130.192   - pacman[0m\r\n192.168.130.192   - parted[0m\r\n192.168.130.192 Compiling Cookbooks...[0m\r\n192.168.130.192 [2015-05-28T17:59:36+05:30] WARN: Cloning resource attributes for directory[/var/cache/neutron] from prior resource (CHEF-3694)\r\n192.168.130.192 [2015-05-28T17:59:36+05:30] WARN: Previous directory[/var/cache/neutron]: /var/chef/cache/cookbooks/openstack-network/recipes/common.rb:78:in `from_file''\r\n192.168.130.192 [2015-05-28T17:59:36+05:30] WARN: Current  directory[/var/cache/neutron]: /var/chef/cache/cookbooks/openstack-network/recipes/common.rb:85:in `from_file''\r\n192.168.130.192 [2015-05-28T17:59:37+05:30] WARN: Cloning resource attributes for package[python-pyparsing] from prior resource (CHEF-3694)\r\n192.168.130.192 [2015-05-28T17:59:37+05:30] WARN: Previous package[python-pyparsing]: /var/chef/cache/cookbooks/openstack-network/recipes/common.rb:56:in `block in from_file''\r\n192.168.130.192 [2015-05-28T17:59:37+05:30] WARN: Current  package[python-pyparsing]: /var/chef/cache/cookbooks/openstack-network/recipes/common.rb:133:in `block in from_file''\r\n192.168.130.192 Converging 39 resources[0m\r\n192.168.130.192 Recipe: openstack-identity::client[0m\r\n192.168.130.192   * package[python-keystoneclient] action upgrade (up to date)\r\n192.168.130.192 Recipe: openstack-network::common[0m\r\n192.168.130.192   * package[nova-network] action purge (up to date)\r\n192.168.130.192   * package[neutron-common] action upgrade (up to date)\r\n192.168.130.192   * package[python-pyparsing] action upgrade (up to date)\r\n192.168.130.192   * package[python-cliff] action upgrade (up to date)\r\n192.168.130.192   * package[python-mysqldb] action upgrade (up to date)\r\n192.168.130.192   * directory[/etc/neutron/plugins] action create (up to date)\r\n192.168.130.192   * directory[/var/cache/neutron] action create (up to date)\r\n192.168.130.192   * directory[/var/cache/neutron] action create (up to date)\r\n192.168.130.192   * template[/etc/neutron/rootwrap.conf] action create (up to date)\r\n192.168.130.192   * package[python-neutronclient] action upgrade (up to date)\r\n192.168.130.192   * package[python-pyparsing] action upgrade (up to date)\r\n192.168.130.192   * service[neutron-server] action nothing (skipped due to action :nothing)\r\n192.168.130.192   * ruby_block[query service tenant uuid] action run (skipped due to only_if)\r\n192.168.130.192   * template[/etc/neutron/neutron.conf] action create (up to date)\r\n192.168.130.192   * template[/etc/neutron/api-paste.ini] action create (up to date)\r\n192.168.130.192   * directory[/etc/neutron/plugins/ml2] action create (up to date)\r\n192.168.130.192   * template[/etc/neutron/plugins/ml2/ml2_conf.ini] action create (up to date)\r\n192.168.130.192   * link[/etc/neutron/plugin.ini] action create (skipped due to only_if)\r\n192.168.130.192   * template[/etc/default/neutron-server] action create (up to date)\r\n192.168.130.192 Recipe: openstack-network::openvswitch[0m\r\n192.168.130.192   * package[linux-headers-3.5.0-23-generic] action upgrade (up to date)\r\n192.168.130.192   * package[openvswitch-switch] action upgrade (up to date)\r\n192.168.130.192   * package[openvswitch-datapath-dkms] action upgrade (up to date)\r\n192.168.130.192   * package[bridge-utils] action upgrade (up to date)\r\n192.168.130.192   * execute[/usr/share/openvswitch/scripts/ovs-ctl force-reload-kmod] action nothing (skipped due to action :nothing)\r\n192.168.130.192   * service[neutron-openvswitch-switch] action enable (up to date)\r\n192.168.130.192   * service[neutron-openvswitch-switch] action start (up to date)\r\n192.168.130.192   * package[neutron-plugin-openvswitch] action upgrade (up to date)\r\n192.168.130.192   * package[neutron-plugin-openvswitch-agent] action upgrade (up to date)\r\n192.168.130.192   * directory[/etc/neutron/plugins/openvswitch] action create (skipped due to only_if)\r\n192.168.130.192   * template[/etc/neutron/plugins/openvswitch/ovs_neutron_plugin.ini] action create (skipped due to only_if)\r\n192.168.130.192   * service[neutron-plugin-openvswitch-agent] action enable (up to date)\r\n192.168.130.192   * execute[create internal network bridge] action run (skipped due to not_if)\r\n192.168.130.192   * execute[create tunnel network bridge] action run (skipped due to not_if)\r\n192.168.130.192   * cookbook_file[ovs-dpctl-top] action create (up to date)\r\n192.168.130.192 Recipe: openstack-network::l3_agent[0m\r\n192.168.130.192   * ruby_block[query gateway external network uuid] action run (skipped due to only_if)\r\n192.168.130.192   * package[neutron-l3-agent] action upgrade (up to date)\r\n192.168.130.192   * service[neutron-l3-agent] action enable (up to date)\r\n192.168.130.192   * template[/etc/neutron/l3_agent.ini] action create\r\n192.168.130.192     [32m- update content in file /etc/neutron/l3_agent.ini from 1efc14 to 7d7b26[0m\r\n192.168.130.192     [37m--- /etc/neutron/l3_agent.ini	2015-05-27 19:29:13.220549090 +0530[0m\r\n192.168.130.192     [37m+++ /tmp/chef-rendered-template20150528-18684-4jz0an	2015-05-28 17:59:38.575728998 +0530[0m\r\n192.168.130.192     [37m@@ -43,7 +43,7 @@[0m\r\n192.168.130.192     [37m # Name of bridge used for external network traffic. This should be set to[0m\r\n192.168.130.192     [37m # empty value for the linux bridge. when this parameter is set, each L3 agent[0m\r\n192.168.130.192     [37m # can be associated with no more than one external network.[0m\r\n192.168.130.192     [37m-external_network_bridge = br-ex[0m\r\n192.168.130.192     [37m+external_network_bridge = [0m\r\n192.168.130.192     [37m [0m\r\n192.168.130.192     [37m # TCP Port used by Neutron metadata server[0m\r\n192.168.130.192     [37m metadata_port = 9697[0m\r\n192.168.130.192 [0m  * service[neutron-l3-agent] action restart\r\n192.168.130.192     [32m- restart service service[neutron-l3-agent][0m\r\n192.168.130.192 [0m  * execute[create external network bridge] action run\r\n192.168.130.192     [0m\r\n192.168.130.192     ================================================================================[0m\r\n192.168.130.192     [31mError executing action `run` on resource ''execute[create external network bridge]''[0m\r\n192.168.130.192     ================================================================================[0m\r\n192.168.130.192     \r\n192.168.130.192 [0m    Mixlib::ShellOut::ShellCommandFailed[0m\r\n192.168.130.192     ------------------------------------[0m\r\n192.168.130.192     Expected process to exit with [0], but received ''1''\r\n192.168.130.192 [0m    ---- Begin output of ovs-vsctl add-br  && ovs-vsctl add-port  eth2 ----\r\n192.168.130.192 [0m    STDOUT: \r\n192.168.130.192 [0m    STDERR: ovs-vsctl: ''add-br'' command requires at least 1 arguments\r\n192.168.130.192 [0m    ---- End output of ovs-vsctl add-br  && ovs-vsctl add-port  eth2 ----\r\n192.168.130.192 [0m    Ran ovs-vsctl add-br  && ovs-vsctl add-port  eth2 returned 1[0m\r\n192.168.130.192     \r\n192.168.130.192 [0m    Resource Declaration:[0m\r\n192.168.130.192     ---------------------[0m\r\n192.168.130.192     # In /var/chef/cache/cookbooks/openstack-network/recipes/l3_agent.rb\r\n192.168.130.192 [0m    \r\n192.168.130.192 [0m     95:     execute ''create external network bridge'' do\r\n192.168.130.192 [0m     96:       command "ovs-vsctl add-br #{ext_bridge} && ovs-vsctl add-port #{ext_bridge} #{ext_bridge_iface}"\r\n192.168.130.192 [0m     97:       action :run\r\n192.168.130.192 [0m     98:       not_if "ovs-vsctl br-exists #{ext_bridge}"\r\n192.168.130.192 [0m     99:       only_if "ip link show #{ext_bridge_iface}"\r\n192.168.130.192 [0m    100:     end\r\n192.168.130.192 [0m    101:   end\r\n192.168.130.192 [0m    \r\n192.168.130.192 [0m    Compiled Resource:[0m\r\n192.168.130.192     ------------------[0m\r\n192.168.130.192     # Declared in /var/chef/cache/cookbooks/openstack-network/recipes/l3_agent.rb:95:in `from_file''\r\n192.168.130.192 [0m    \r\n192.168.130.192 [0m    execute("create external network bridge") do\r\n192.168.130.192 [0m      action [:run]\r\n192.168.130.192 [0m      retries 0\r\n192.168.130.192 [0m      retry_delay 2\r\n192.168.130.192 [0m      guard_interpreter :default\r\n192.168.130.192 [0m      command "ovs-vsctl add-br  && ovs-vsctl add-port  eth2"\r\n192.168.130.192 [0m      backup 5\r\n192.168.130.192 [0m      returns 0\r\n192.168.130.192 [0m      cookbook_name "openstack-network"\r\n192.168.130.192 [0m      recipe_name "l3_agent"\r\n192.168.130.192 [0m      not_if "ovs-vsctl br-exists "\r\n192.168.130.192 [0m      only_if "ip link show eth2"\r\n192.168.130.192 [0m    end\r\n192.168.130.192 [0m    \r\n192.168.130.192 [0m[0m\r\n192.168.130.192 Running handlers:[0m\r\n192.168.130.192 [2015-05-28T17:59:40+05:30] ERROR: Running exception handlers\r\n192.168.130.192 Running handlers complete\r\n192.168.130.192 [0m[2015-05-28T17:59:40+05:30] ERROR: Exception handlers complete\r\n192.168.130.192 [2015-05-28T17:59:40+05:30] FATAL: Stacktrace dumped to /var/chef/cache/chef-stacktrace.out\r\n192.168.130.192 Chef Client failed. 2 resources updated in 13.910615755 seconds[0m\r\n192.168.130.192 [2015-05-28T17:59:40+05:30] ERROR: execute[create external network bridge] (openstack-network::l3_agent line 95) had an error: Mixlib::ShellOut::ShellCommandFailed: Expected process to exit with [0], but received ''1''\r\n192.168.130.192 ---- Begin output of ovs-vsctl add-br  && ovs-vsctl add-port  eth2 ----\r\n192.168.130.192 STDOUT: \r\n192.168.130.192 STDERR: ovs-vsctl: ''add-br'' command requires at least 1 arguments\r\n192.168.130.192 ---- End output of ovs-vsctl add-br  && ovs-vsctl add-port  eth2 ----\r\n192.168.130.192 Ran ovs-vsctl add-br  && ovs-vsctl add-port  eth2 returned 1\r\n192.168.130.192 [2015-05-28T17:59:40+05:30] FATAL: Chef::Exceptions::ChildConvergeError: Chef run process exited unsuccessfully (exit code 1)\r\n', '2015-05-28 12:29:41', 0),
(18, 10, 4, 'JOB', 'Deployment of role[controller] in node: 192.168.130.192 failed!', 'Command: knife bootstrap 192.168.130.192 --ssh-user geo --ssh-password ''geo@123'' --sudo --use-sudo-password --node-name node10 --environment base_cloud --run-list ''recipe[thunder-setup::setup_network]'' \nMessage: Connecting to 192.168.130.192\n192.168.130.192 [sudo] password for geo: Starting first Chef Client run...\r\n192.168.130.192 [2015-05-28T18:15:40+05:30] WARN: \r\n192.168.130.192 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *\r\n192.168.130.192 SSL validation of HTTPS requests is disabled. HTTPS connections are still\r\n192.168.130.192 encrypted, but chef is not able to detect forged replies or man in the middle\r\n192.168.130.192 attacks.\r\n192.168.130.192 \r\n192.168.130.192 To fix this issue add an entry like this to your configuration file:\r\n192.168.130.192 \r\n192.168.130.192 ```\r\n192.168.130.192   # Verify all HTTPS connections (recommended)\r\n192.168.130.192   ssl_verify_mode :verify_peer\r\n192.168.130.192 \r\n192.168.130.192   # OR, Verify only connections to chef-server\r\n192.168.130.192   verify_api_cert true\r\n192.168.130.192 ```\r\n192.168.130.192 \r\n192.168.130.192 To check your SSL configuration, or troubleshoot errors, you can use the\r\n192.168.130.192 `knife ssl check` command like so:\r\n192.168.130.192 \r\n192.168.130.192 ```\r\n192.168.130.192   knife ssl check -c /etc/chef/client.rb\r\n192.168.130.192 ```\r\n192.168.130.192 \r\n192.168.130.192 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *\r\n192.168.130.192 \r\n192.168.130.192 Starting Chef Client, version 11.18.6[0m\r\n192.168.130.192 resolving cookbooks for run list: ["thunder-setup::setup_network"][0m\r\n192.168.130.192 Synchronizing Cookbooks:[0m\r\n192.168.130.192   - thunder-setup[0m\r\n192.168.130.192   - database[0m\r\n192.168.130.192   - mysql[0m\r\n192.168.130.192   - yum[0m\r\n192.168.130.192   - chef-sugar[0m\r\n192.168.130.192   - apt[0m\r\n192.168.130.192   - postgresql[0m\r\n192.168.130.192   - xfs[0m\r\n192.168.130.192   - yum-mysql-community[0m\r\n192.168.130.192   - mysql-chef_gem[0m\r\n192.168.130.192   - openssl[0m\r\n192.168.130.192   - aws[0m\r\n192.168.130.192   - build-essential[0m\r\n192.168.130.192   - openstack-identity[0m\r\n192.168.130.192   - yum-epel[0m\r\n192.168.130.192   - openstack-image[0m\r\n192.168.130.192   - openstack-common[0m\r\n192.168.130.192   - openstack-compute[0m\r\n192.168.130.192   - openstack-network[0m\r\n192.168.130.192   - runit[0m\r\n192.168.130.192   - python[0m\r\n192.168.130.192   - openstack-block-storage[0m\r\n192.168.130.192   - selinux[0m\r\n192.168.130.192   - openstack-object-storage[0m\r\n192.168.130.192   - memcached[0m\r\n192.168.130.192   - git[0m\r\n192.168.130.192   - dmg[0m\r\n192.168.130.192   - statsd[0m\r\n192.168.130.192   - windows[0m\r\n192.168.130.192   - chef_handler[0m\r\n192.168.130.192   - openstack-dashboard[0m\r\n192.168.130.192   - iptables[0m\r\n192.168.130.192   - pacman[0m\r\n192.168.130.192   - parted[0m\r\n192.168.130.192   - apache2[0m\r\n192.168.130.192   - logrotate[0m\r\n192.168.130.192 Compiling Cookbooks...[0m\r\n192.168.130.192 Converging 12 resources[0m\r\n192.168.130.192 Recipe: thunder-setup::setup_network[0m\r\n192.168.130.192   * thunder-setup_network[op-router] action create_router (up to date)\r\n192.168.130.192   * execute[create router op-router] action run (skipped due to not_if)\r\n192.168.130.192   * thunder-setup_network[ext-net1] action create_network (up to date)\r\n192.168.130.192   * execute[create external network ext-net1] action run (skipped due to not_if)\r\n192.168.130.192   * thunder-setup_network[ext-subnet] action create_subnet (up to date)\r\n192.168.130.192   * execute[create external sub net ext-subnet] action run (skipped due to not_if)\r\n192.168.130.192   * thunder-setup_network[op-router] action create_router_attachCommand executed:::: neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 net-list | awk ''/ ext-net1 / {print $2}'' ::::\r\n192.168.130.192  (up to date)\r\n192.168.130.192   * execute[create router attachment] action run\r\n192.168.130.192     [32m- execute neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 router-gateway-set op-router ext-net1[0m\r\n192.168.130.192 [0m  * thunder-setup_network[ext-net2] action create_network (up to date)\r\n192.168.130.192   * execute[create external network ext-net2] action run\r\n192.168.130.192     [0m\r\n192.168.130.192     ================================================================================[0m\r\n192.168.130.192     [31mError executing action `run` on resource ''execute[create external network ext-net2]''[0m\r\n192.168.130.192     ================================================================================[0m\r\n192.168.130.192     \r\n192.168.130.192 [0m    Mixlib::ShellOut::ShellCommandFailed[0m\r\n192.168.130.192     ------------------------------------[0m\r\n192.168.130.192     Expected process to exit with [0], but received ''1''\r\n192.168.130.192 [0m    ---- Begin output of neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 net-create ext-net2 --shared --router:external=True --provider:physical_network external --provider:network_type vlan --provider:segmentation_id 4 ----\r\n192.168.130.192 [0m    STDOUT: \r\n192.168.130.192 [0m    STDERR: 400-{u''NeutronError'': {u''message'': u"Invalid input for operation: network_type value ''vlan'' not supported.", u''type'': u''InvalidInput'', u''detail'': u''''}}\r\n192.168.130.192 [0m    ---- End output of neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 net-create ext-net2 --shared --router:external=True --provider:physical_network external --provider:network_type vlan --provider:segmentation_id 4 ----\r\n192.168.130.192 [0m    Ran neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 net-create ext-net2 --shared --router:external=True --provider:physical_network external --provider:network_type vlan --provider:segmentation_id 4 returned 1[0m\r\n192.168.130.192     \r\n192.168.130.192 [0m    Resource Declaration:[0m\r\n192.168.130.192     ---------------------[0m\r\n192.168.130.192     # In /var/chef/cache/cookbooks/thunder-setup/providers/network.rb\r\n192.168.130.192 [0m    \r\n192.168.130.192 [0m     31:     execute "create external network #{name}" do\r\n192.168.130.192 [0m     32:       command command_str\r\n192.168.130.192 [0m     33:       not_if "#{neutron_cmd} net-show #{name.to_s} | grep ''| #{name.to_s}''"\r\n192.168.130.192 [0m     34:     end\r\n192.168.130.192 [0m     35:     \r\n192.168.130.192 [0m    \r\n192.168.130.192 [0m    Compiled Resource:[0m\r\n192.168.130.192     ------------------[0m\r\n192.168.130.192     # Declared in /var/chef/cache/cookbooks/thunder-setup/providers/network.rb:31:in `block in class_from_file''\r\n192.168.130.192 [0m    \r\n192.168.130.192 [0m    execute("create external network ext-net2") do\r\n192.168.130.192 [0m      action "run"\r\n192.168.130.192 [0m      retries 0\r\n192.168.130.192 [0m      retry_delay 2\r\n192.168.130.192 [0m      guard_interpreter :default\r\n192.168.130.192 [0m      command "neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 net-create ext-net2 --shared --router:external=True --provider:physical_network external --provider:network_type vlan --provider:segmentation_id 4"\r\n192.168.130.192 [0m      backup 5\r\n192.168.130.192 [0m      returns 0\r\n192.168.130.192 [0m      cookbook_name "thunder-setup"\r\n192.168.130.192 [0m      not_if "neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 net-show ext-net2 | grep ''| ext-net2''"\r\n192.168.130.192 [0m    end\r\n192.168.130.192 [0m    \r\n192.168.130.192 [0m[0m\r\n192.168.130.192 Running handlers:[0m\r\n192.168.130.192 [2015-05-28T18:15:59+05:30] ERROR: Running exception handlers\r\n192.168.130.192 Running handlers complete\r\n192.168.130.192 [0m[2015-05-28T18:15:59+05:30] ERROR: Exception handlers complete\r\n192.168.130.192 [2015-05-28T18:15:59+05:30] FATAL: Stacktrace dumped to /var/chef/cache/chef-stacktrace.out\r\n192.168.130.192 Chef Client failed. 1 resources updated in 19.578571744 seconds[0m\r\n192.168.130.192 [2015-05-28T18:16:00+05:30] ERROR: execute[create external network ext-net2] (/var/chef/cache/cookbooks/thunder-setup/providers/network.rb line 31) had an error: Mixlib::ShellOut::ShellCommandFailed: Expected process to exit with [0], but received ''1''\r\n192.168.130.192 ---- Begin output of neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 net-create ext-net2 --shared --router:external=True --provider:physical_network external --provider:network_type vlan --provider:segmentation_id 4 ----\r\n192.168.130.192 STDOUT: \r\n192.168.130.192 STDERR: 400-{u''NeutronError'': {u''message'': u"Invalid input for operation: network_type value ''vlan'' not supported.", u''type'': u''InvalidInput'', u''detail'': u''''}}\r\n192.168.130.192 ---- End output of neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 net-create ext-net2 --shared --router:external=True --provider:physical_network external --provider:network_type vlan --provider:segmentation_id 4 ----\r\n192.168.130.192 Ran neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 net-create ext-net2 --shared --router:external=True --provider:physical_network external --provider:network_type vlan --provider:segmentation_id 4 returned 1\r\n192.168.130.192 [2015-05-28T18:16:00+05:30] FATAL: Chef::Exceptions::ChildConvergeError: Chef run process exited unsuccessfully (exit code 1)\r\n', '2015-05-28 12:46:00', 0),
(19, 11, 0, 'JOB', 'Created host Node11 in the zabbix server', 'Created  node in the zabbix server with IP 192.168.130.191.', '2015-05-29 10:59:38', 1),
(20, 11, 0, 'JOB', 'New node with IP 192.168.130.191 detected and it added to the thunder', 'New node with IP 192.168.130.191 detected and it added to the thunder', '2015-05-29 10:59:38', 1),
(21, 11, 0, 'JOB', 'Node specification is updated with mac id 52:54:00:c7:f1:75.', 'Node specification is updated with mac id 52:54:00:c7:f1:75.', '2015-05-29 10:59:38', 1),
(22, 12, 0, 'JOB', 'Created host Node12 in the zabbix server', 'Created  node in the zabbix server with IP 192.168.130.193.', '2015-05-29 10:59:39', 1),
(23, 12, 0, 'JOB', 'New node with IP 192.168.130.193 detected and it added to the thunder', 'New node with IP 192.168.130.193 detected and it added to the thunder', '2015-05-29 10:59:39', 1),
(24, 12, 0, 'JOB', 'Node specification is updated with mac id 52:54:00:35:34:24.', 'Node specification is updated with mac id 52:54:00:35:34:24.', '2015-05-29 10:59:39', 1),
(25, 13, 0, 'JOB', 'Created host Node13 in the zabbix server', 'Created  node in the zabbix server with IP 192.168.130.192.', '2015-05-29 10:59:40', 1),
(26, 13, 0, 'JOB', 'New node with IP 192.168.130.192 detected and it added to the thunder', 'New node with IP 192.168.130.192 detected and it added to the thunder', '2015-05-29 10:59:40', 1),
(27, 13, 0, 'JOB', 'Node specification is updated with mac id 52:54:00:95:b8:96.', 'Node specification is updated with mac id 52:54:00:95:b8:96.', '2015-05-29 10:59:40', 1),
(28, 14, 0, 'JOB', 'Created host Node14 in the zabbix server', 'Created  node in the zabbix server with IP 192.168.130.195.', '2015-05-29 10:59:41', 1),
(29, 14, 0, 'JOB', 'New node with IP 192.168.130.195 detected and it added to the thunder', 'New node with IP 192.168.130.195 detected and it added to the thunder', '2015-05-29 10:59:41', 1),
(30, 14, 0, 'JOB', 'Node specification is updated with mac id 52:54:00:64:5e:60.', 'Node specification is updated with mac id 52:54:00:64:5e:60.', '2015-05-29 10:59:41', 1),
(31, 15, 0, 'JOB', 'Created host Node15 in the zabbix server', 'Created  node in the zabbix server with IP 192.168.130.194.', '2015-05-29 10:59:41', 1),
(32, 15, 0, 'JOB', 'New node with IP 192.168.130.194 detected and it added to the thunder', 'New node with IP 192.168.130.194 detected and it added to the thunder', '2015-05-29 10:59:41', 1),
(33, 15, 0, 'JOB', 'Node specification is updated with mac id 52:54:00:34:1f:79.', 'Node specification is updated with mac id 52:54:00:34:1f:79.', '2015-05-29 10:59:42', 1),
(34, 15, 0, 'JOB', 'Node Node15 is UP.', 'Node Node15 is UP.', '2015-05-29 11:01:36', 1),
(35, 15, 53, 'ROLE_ASSIGN', 'New Role Controller Assigned.', 'New Role Controller is assigned to the node with host name Node15', '2015-05-29 11:28:37', 1),
(36, 15, 5, 'JOB', 'Started main os installation', 'Started main os installation', '2015-05-29 11:33:57', 1);
INSERT INTO `thunder_nodelog` (`id`, `node_listid`, `subject_id`, `log_type`, `log_title`, `log_details`, `updated_time`, `status`) VALUES
(37, 15, 5, 'JOB', 'Successfully deployed role[controller] in node: 192.168.130.194', 'Connecting to 192.168.130.194\n192.168.130.194 [sudo] password for geo: Starting first Chef Client run...\r\n192.168.130.194 [2015-05-29T17:21:43+05:30] WARN: \r\n192.168.130.194 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *\r\n192.168.130.194 SSL validation of HTTPS requests is disabled. HTTPS connections are still\r\n192.168.130.194 encrypted, but chef is not able to detect forged replies or man in the middle\r\n192.168.130.194 attacks.\r\n192.168.130.194 \r\n192.168.130.194 To fix this issue add an entry like this to your configuration file:\r\n192.168.130.194 \r\n192.168.130.194 ```\r\n192.168.130.194   # Verify all HTTPS connections (recommended)\r\n192.168.130.194   ssl_verify_mode :verify_peer\r\n192.168.130.194 \r\n192.168.130.194   # OR, Verify only connections to chef-server\r\n192.168.130.194   verify_api_cert true\r\n192.168.130.194 ```\r\n192.168.130.194 \r\n192.168.130.194 To check your SSL configuration, or troubleshoot errors, you can use the\r\n192.168.130.194 `knife ssl check` command like so:\r\n192.168.130.194 \r\n192.168.130.194 ```\r\n192.168.130.194   knife ssl check -c /etc/chef/client.rb\r\n192.168.130.194 ```\r\n192.168.130.194 \r\n192.168.130.194 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *\r\n192.168.130.194 \r\n192.168.130.194 Starting Chef Client, version 11.18.6[0m\r\n192.168.130.194 resolving cookbooks for run list: ["thunder-setup::setup_network"][0m\r\n192.168.130.194 Synchronizing Cookbooks:[0m\r\n192.168.130.194   - database[0m\r\n192.168.130.194   - thunder-setup[0m\r\n192.168.130.194   - mysql[0m\r\n192.168.130.194   - yum-mysql-community[0m\r\n192.168.130.194   - yum[0m\r\n192.168.130.194   - postgresql[0m\r\n192.168.130.194   - apt[0m\r\n192.168.130.194   - openssl[0m\r\n192.168.130.194   - chef-sugar[0m\r\n192.168.130.194   - aws[0m\r\n192.168.130.194   - xfs[0m\r\n192.168.130.194   - build-essential[0m\r\n192.168.130.194   - mysql-chef_gem[0m\r\n192.168.130.194   - openstack-identity[0m\r\n192.168.130.194   - yum-epel[0m\r\n192.168.130.194   - openstack-image[0m\r\n192.168.130.194   - openstack-common[0m\r\n192.168.130.194   - openstack-compute[0m\r\n192.168.130.194   - openstack-network[0m\r\n192.168.130.194   - selinux[0m\r\n192.168.130.194   - openstack-block-storage[0m\r\n192.168.130.194   - python[0m\r\n192.168.130.194   - openstack-object-storage[0m\r\n192.168.130.194   - memcached[0m\r\n192.168.130.194   - runit[0m\r\n192.168.130.194   - statsd[0m\r\n192.168.130.194   - git[0m\r\n192.168.130.194   - dmg[0m\r\n192.168.130.194   - chef_handler[0m\r\n192.168.130.194   - openstack-dashboard[0m\r\n192.168.130.194   - windows[0m\r\n192.168.130.194   - iptables[0m\r\n192.168.130.194   - apache2[0m\r\n192.168.130.194   - parted[0m\r\n192.168.130.194   - pacman[0m\r\n192.168.130.194   - logrotate[0m\r\n192.168.130.194 Compiling Cookbooks...[0m\r\n192.168.130.194 Command executed:::: nova --os-username admin --os-password ThunDer --os-tenant-name admin --os-auth-url http://controller:5000/v2.0 secgroup-add-rule default icmp -1 -1 0.0.0.0/0 ::::\r\n192.168.130.194 +-------------+-----------+---------+-----------+--------------+\r\n192.168.130.194 | IP Protocol | From Port | To Port | IP Range  | Source Group |\r\n192.168.130.194 +-------------+-----------+---------+-----------+--------------+\r\n192.168.130.194 | icmp        | -1        | -1      | 0.0.0.0/0 |              |\r\n192.168.130.194 +-------------+-----------+---------+-----------+--------------+Command executed:::: nova --os-username admin --os-password ThunDer --os-tenant-name admin --os-auth-url http://controller:5000/v2.0 secgroup-add-rule default tcp 22 22 0.0.0.0/0 ::::\r\n192.168.130.194 +-------------+-----------+---------+-----------+--------------+\r\n192.168.130.194 | IP Protocol | From Port | To Port | IP Range  | Source Group |\r\n192.168.130.194 +-------------+-----------+---------+-----------+--------------+\r\n192.168.130.194 | tcp         | 22        | 22      | 0.0.0.0/0 |              |\r\n192.168.130.194 +-------------+-----------+---------+-----------+--------------+Converging 12 resources[0m\r\n192.168.130.194 Recipe: thunder-setup::setup_network[0m\r\n192.168.130.194   * thunder-setup_network[op-router] action create_router (up to date)\r\n192.168.130.194   * execute[create router op-router] action run\r\n192.168.130.194     [32m- execute neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 router-create op-router --tenant-id 07641f395a9f4bdb91111bf78ff194ee[0m\r\n192.168.130.194 [0m  * thunder-setup_network[ext-net1] action create_network (up to date)\r\n192.168.130.194   * execute[create external network ext-net1] action run\r\n192.168.130.194     [32m- execute neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 net-create ext-net1 --shared --router:external=True[0m\r\n192.168.130.194 [0m  * thunder-setup_network[ext-net1-subnet] action create_subnet (up to date)\r\n192.168.130.194   * execute[create external sub net ext-net1-subnet] action run\r\n192.168.130.194     [32m- execute neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 subnet-create ext-net1 --name ext-net1-subnet  --allocation-pool start=192.168.200.180,end=192.168.200.190 --allocation-pool start=192.168.200.88,end=192.168.200.99 --disable-dhcp 192.168.200.0/24[0m\r\n192.168.130.194 [0m  * thunder-setup_network[op-router] action create_router_attachCommand executed:::: neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 net-list | awk ''/ ext-net1 / {print $2}'' ::::\r\n192.168.130.194  (up to date)\r\n192.168.130.194   * execute[create router attachment] action run\r\n192.168.130.194     [32m- execute neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 router-gateway-set op-router ext-net1[0m\r\n192.168.130.194 [0m  * thunder-setup_network[ext-net2] action create_network (up to date)\r\n192.168.130.194   * execute[create external network ext-net2] action run\r\n192.168.130.194     [32m- execute neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 net-create ext-net2 --shared --router:external=True --provider:physical_network physnet1 --provider:network_type vlan --provider:segmentation_id 4[0m\r\n192.168.130.194 [0m  * thunder-setup_network[ext-net2-subnet] action create_subnet (up to date)\r\n192.168.130.194   * execute[create external sub net ext-net2-subnet] action run\r\n192.168.130.194     [32m- execute neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 subnet-create ext-net2 --name ext-net2-subnet  --allocation-pool start=192.168.100.44,end=192.168.100.66 --disable-dhcp 192.168.100.0/24[0m\r\n192.168.130.194 [0m  * thunder-setup_network[op-router] action create_router_attachCommand executed:::: neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 net-list | awk ''/ ext-net2 / {print $2}'' ::::\r\n192.168.130.194 [2015-05-29T17:22:32+05:30] WARN: Cloning resource attributes for execute[create router attachment] from prior resource (CHEF-3694)\r\n192.168.130.194 [2015-05-29T17:22:32+05:30] WARN: Previous execute[create router attachment]: /var/chef/cache/cookbooks/thunder-setup/providers/network.rb:121:in `block in class_from_file''\r\n192.168.130.194 [2015-05-29T17:22:32+05:30] WARN: Current  execute[create router attachment]: /var/chef/cache/cookbooks/thunder-setup/providers/network.rb:121:in `block in class_from_file''\r\n192.168.130.194  (up to date)\r\n192.168.130.194   * execute[create router attachment] action run\r\n192.168.130.194     [32m- execute neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 router-gateway-set op-router ext-net2[0m\r\n192.168.130.194 [0m  * thunder-setup_network[private-net] action create_network (up to date)\r\n192.168.130.194   * execute[create private network private-net] action run\r\n192.168.130.194     [32m- execute neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 net-create private-net --shared[0m\r\n192.168.130.194 [0m  * thunder-setup_network[private-subnet1] action create_subnet (up to date)\r\n192.168.130.194   * execute[create private sub net private-subnet1] action run\r\n192.168.130.194     [32m- execute neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 subnet-create private-net --name private-subnet1 192.168.1.0/24[0m\r\n192.168.130.194 [0m  * thunder-setup_network[op-router] action create_router_attachCommand executed:::: neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 subnet-list | awk ''/ private-subnet1 / {print $2}'' ::::\r\n192.168.130.194 [2015-05-29T17:22:43+05:30] WARN: Cloning resource attributes for execute[create router attachment] from prior resource (CHEF-3694)\r\n192.168.130.194 [2015-05-29T17:22:43+05:30] WARN: Previous execute[create router attachment]: /var/chef/cache/cookbooks/thunder-setup/providers/network.rb:121:in `block in class_from_file''\r\n192.168.130.194 [2015-05-29T17:22:43+05:30] WARN: Current  execute[create router attachment]: /var/chef/cache/cookbooks/thunder-setup/providers/network.rb:121:in `block in class_from_file''\r\n192.168.130.194  (up to date)\r\n192.168.130.194   * execute[create router attachment] action run\r\n192.168.130.194     [32m- execute neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 router-interface-add op-router private-subnet1[0m\r\n192.168.130.194 [0m  * thunder-setup_network[private-subnet2] action create_subnet (up to date)\r\n192.168.130.194   * execute[create private sub net private-subnet2] action run\r\n192.168.130.194     [32m- execute neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 subnet-create private-net --name private-subnet2 192.168.35.1/24[0m\r\n192.168.130.194 [0m  * thunder-setup_network[op-router] action create_router_attachCommand executed:::: neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 subnet-list | awk ''/ private-subnet2 / {print $2}'' ::::\r\n192.168.130.194 [2015-05-29T17:22:51+05:30] WARN: Cloning resource attributes for execute[create router attachment] from prior resource (CHEF-3694)\r\n192.168.130.194 [2015-05-29T17:22:51+05:30] WARN: Previous execute[create router attachment]: /var/chef/cache/cookbooks/thunder-setup/providers/network.rb:121:in `block in class_from_file''\r\n192.168.130.194 [2015-05-29T17:22:51+05:30] WARN: Current  execute[create router attachment]: /var/chef/cache/cookbooks/thunder-setup/providers/network.rb:121:in `block in class_from_file''\r\n192.168.130.194  (up to date)\r\n192.168.130.194   * execute[create router attachment] action run\r\n192.168.130.194     [32m- execute neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 router-interface-add op-router private-subnet2[0m\r\n192.168.130.194 [0m[0m\r\n192.168.130.194 Running handlers:[0m\r\n192.168.130.194 Running handlers complete\r\n192.168.130.194 [0mChef Client finished, 12/24 resources updated in 71.597228132 seconds[0m\r\n', '2015-05-29 11:52:56', 1),
(38, 15, 53, 'ROLE_ASSIGN', 'New Role Controller Assigned.', 'New Role Controller is assigned to the node with host name Node15', '2015-05-29 13:31:01', 1),
(39, 15, 6, 'JOB', 'Successfully deployed role[controller] in node: 192.168.130.194', 'Connecting to 192.168.130.194\n192.168.130.194 [sudo] password for geo: Starting first Chef Client run...\r\n192.168.130.194 [2015-05-29T19:20:07+05:30] WARN: \r\n192.168.130.194 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *\r\n192.168.130.194 SSL validation of HTTPS requests is disabled. HTTPS connections are still\r\n192.168.130.194 encrypted, but chef is not able to detect forged replies or man in the middle\r\n192.168.130.194 attacks.\r\n192.168.130.194 \r\n192.168.130.194 To fix this issue add an entry like this to your configuration file:\r\n192.168.130.194 \r\n192.168.130.194 ```\r\n192.168.130.194   # Verify all HTTPS connections (recommended)\r\n192.168.130.194   ssl_verify_mode :verify_peer\r\n192.168.130.194 \r\n192.168.130.194   # OR, Verify only connections to chef-server\r\n192.168.130.194   verify_api_cert true\r\n192.168.130.194 ```\r\n192.168.130.194 \r\n192.168.130.194 To check your SSL configuration, or troubleshoot errors, you can use the\r\n192.168.130.194 `knife ssl check` command like so:\r\n192.168.130.194 \r\n192.168.130.194 ```\r\n192.168.130.194   knife ssl check -c /etc/chef/client.rb\r\n192.168.130.194 ```\r\n192.168.130.194 \r\n192.168.130.194 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *\r\n192.168.130.194 \r\n192.168.130.194 Starting Chef Client, version 11.18.6[0m\r\n192.168.130.194 resolving cookbooks for run list: ["thunder-setup::setup_network"][0m\r\n192.168.130.194 Synchronizing Cookbooks:[0m\r\n192.168.130.194   - thunder-setup[0m\r\n192.168.130.194   - postgresql[0m\r\n192.168.130.194   - database[0m\r\n192.168.130.194   - mysql[0m\r\n192.168.130.194   - yum[0m\r\n192.168.130.194   - chef-sugar[0m\r\n192.168.130.194   - yum-mysql-community[0m\r\n192.168.130.194   - xfs[0m\r\n192.168.130.194   - openssl[0m\r\n192.168.130.194   - apt[0m\r\n192.168.130.194   - openstack-identity[0m\r\n192.168.130.194   - aws[0m\r\n192.168.130.194   - mysql-chef_gem[0m\r\n192.168.130.194   - build-essential[0m\r\n192.168.130.194   - yum-epel[0m\r\n192.168.130.194   - openstack-image[0m\r\n192.168.130.194   - openstack-compute[0m\r\n192.168.130.194   - openstack-common[0m\r\n192.168.130.194   - selinux[0m\r\n192.168.130.194   - openstack-network[0m\r\n192.168.130.194   - openstack-block-storage[0m\r\n192.168.130.194   - memcached[0m\r\n192.168.130.194   - python[0m\r\n192.168.130.194   - statsd[0m\r\n192.168.130.194   - git[0m\r\n192.168.130.194   - runit[0m\r\n192.168.130.194   - dmg[0m\r\n192.168.130.194   - openstack-object-storage[0m\r\n192.168.130.194   - windows[0m\r\n192.168.130.194   - iptables[0m\r\n192.168.130.194   - openstack-dashboard[0m\r\n192.168.130.194   - chef_handler[0m\r\n192.168.130.194   - apache2[0m\r\n192.168.130.194   - parted[0m\r\n192.168.130.194   - pacman[0m\r\n192.168.130.194   - logrotate[0m\r\n192.168.130.194 Compiling Cookbooks...[0m\r\n192.168.130.194 Command executed:::: nova --os-username admin --os-password ThunDer --os-tenant-name admin --os-auth-url http://controller:5000/v2.0 secgroup-add-rule default icmp -1 -1 0.0.0.0/0 ::::\r\n192.168.130.194 Command executed:::: nova --os-username admin --os-password ThunDer --os-tenant-name admin --os-auth-url http://controller:5000/v2.0 secgroup-add-rule default tcp 22 22 0.0.0.0/0 ::::\r\n192.168.130.194 Converging 13 resources[0m\r\n192.168.130.194 Recipe: thunder-setup::setup_network[0m\r\n192.168.130.194   * thunder-setup_network[op-router1] action create_router (up to date)\r\n192.168.130.194   * execute[create router op-router1] action run (skipped due to not_if)\r\n192.168.130.194   * thunder-setup_network[ext-net1] action create_network (up to date)\r\n192.168.130.194   * execute[create external network ext-net1] action run (skipped due to not_if)\r\n192.168.130.194   * thunder-setup_network[ext-net1-subnet] action create_subnet (up to date)\r\n192.168.130.194   * execute[create external sub net ext-net1-subnet] action run (skipped due to not_if)\r\n192.168.130.194   * thunder-setup_network[op-router1] action create_router_attachCommand executed:::: neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 net-list | awk ''/ ext-net1 / {print $2}'' ::::\r\n192.168.130.194  (up to date)\r\n192.168.130.194   * execute[create router attachment] action run\r\n192.168.130.194     [32m- execute neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 router-gateway-set op-router1 ext-net1[0m\r\n192.168.130.194 [0m  * thunder-setup_network[op-router2] action create_router (up to date)\r\n192.168.130.194   * execute[create router op-router2] action run (skipped due to not_if)\r\n192.168.130.194   * thunder-setup_network[ext-net2] action create_network (up to date)\r\n192.168.130.194   * execute[create external network ext-net2] action run (skipped due to not_if)\r\n192.168.130.194   * thunder-setup_network[ext-net2-subnet] action create_subnet (up to date)\r\n192.168.130.194   * execute[create external sub net ext-net2-subnet] action run (skipped due to not_if)\r\n192.168.130.194   * thunder-setup_network[op-router2] action create_router_attachCommand executed:::: neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 net-list | awk ''/ ext-net2 / {print $2}'' ::::\r\n192.168.130.194 [2015-05-29T19:20:26+05:30] WARN: Cloning resource attributes for execute[create router attachment] from prior resource (CHEF-3694)\r\n192.168.130.194 [2015-05-29T19:20:26+05:30] WARN: Previous execute[create router attachment]: /var/chef/cache/cookbooks/thunder-setup/providers/network.rb:121:in `block in class_from_file''\r\n192.168.130.194 [2015-05-29T19:20:26+05:30] WARN: Current  execute[create router attachment]: /var/chef/cache/cookbooks/thunder-setup/providers/network.rb:121:in `block in class_from_file''\r\n192.168.130.194  (up to date)\r\n192.168.130.194   * execute[create router attachment] action run\r\n192.168.130.194     [32m- execute neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 router-gateway-set op-router2 ext-net2[0m\r\n192.168.130.194 [0m  * thunder-setup_network[private-net] action create_network (up to date)\r\n192.168.130.194   * execute[create private network private-net] action run (skipped due to not_if)\r\n192.168.130.194   * thunder-setup_network[private-subnet1] action create_subnet (up to date)\r\n192.168.130.194   * execute[create private sub net private-subnet1] action run (skipped due to not_if)\r\n192.168.130.194   * thunder-setup_network[op-router2] action create_router_attachCommand executed:::: neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 subnet-list | awk ''/ private-subnet1 / {print $2}'' ::::\r\n192.168.130.194 [2015-05-29T19:20:31+05:30] WARN: Cloning resource attributes for execute[create router attachment] from prior resource (CHEF-3694)\r\n192.168.130.194 [2015-05-29T19:20:31+05:30] WARN: Previous execute[create router attachment]: /var/chef/cache/cookbooks/thunder-setup/providers/network.rb:121:in `block in class_from_file''\r\n192.168.130.194 [2015-05-29T19:20:31+05:30] WARN: Current  execute[create router attachment]: /var/chef/cache/cookbooks/thunder-setup/providers/network.rb:121:in `block in class_from_file''\r\n192.168.130.194  (up to date)\r\n192.168.130.194   * execute[create router attachment] action run (skipped due to not_if)\r\n192.168.130.194   * thunder-setup_network[private-subnet2] action create_subnet (up to date)\r\n192.168.130.194   * execute[create private sub net private-subnet2] action run (skipped due to not_if)\r\n192.168.130.194   * thunder-setup_network[op-router2] action create_router_attachCommand executed:::: neutron --os-username neutron --os-password ThunDer --os-tenant-name service --os-auth-url http://controller:5000/v2.0 subnet-list | awk ''/ private-subnet2 / {print $2}'' ::::\r\n192.168.130.194 [2015-05-29T19:20:33+05:30] WARN: Cloning resource attributes for execute[create router attachment] from prior resource (CHEF-3694)\r\n192.168.130.194 [2015-05-29T19:20:33+05:30] WARN: Previous execute[create router attachment]: /var/chef/cache/cookbooks/thunder-setup/providers/network.rb:121:in `block in class_from_file''\r\n192.168.130.194 [2015-05-29T19:20:33+05:30] WARN: Current  execute[create router attachment]: /var/chef/cache/cookbooks/thunder-setup/providers/network.rb:121:in `block in class_from_file''\r\n192.168.130.194  (up to date)\r\n192.168.130.194   * execute[create router attachment] action run (skipped due to not_if)\r\n192.168.130.194 [0m\r\n192.168.130.194 Running handlers:[0m\r\n192.168.130.194 Running handlers complete\r\n192.168.130.194 [0mChef Client finished, 2/15 resources updated in 27.494315261 seconds[0m\r\n', '2015-05-29 13:50:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `thunder_noderole`
--

CREATE TABLE IF NOT EXISTS `thunder_noderole` (
`id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `node_id` int(11) NOT NULL,
  `assigned` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_noderole`
--

INSERT INTO `thunder_noderole` (`id`, `role_id`, `node_id`, `assigned`) VALUES
(53, 1, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `thunder_nodespec`
--

CREATE TABLE IF NOT EXISTS `thunder_nodespec` (
`id` int(11) NOT NULL,
  `nodelist_id` int(11) NOT NULL,
  `core` varchar(255) NOT NULL,
  `ram` varchar(255) NOT NULL,
  `hdd` varchar(255) NOT NULL,
  `mac_id` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_nodespec`
--

INSERT INTO `thunder_nodespec` (`id`, `nodelist_id`, `core`, `ram`, `hdd`, `mac_id`) VALUES
(11, 11, '', '', '', '52:54:00:c7:f1:75'),
(12, 12, '', '', '', '52:54:00:35:34:24'),
(13, 13, '', '', '', '52:54:00:95:b8:96'),
(14, 14, '', '', '', '52:54:00:64:5e:60'),
(15, 15, '1', '1.0', '22.5', '52:54:00:34:1f:79');

-- --------------------------------------------------------

--
-- Table structure for table `thunder_option`
--

CREATE TABLE IF NOT EXISTS `thunder_option` (
`id` int(11) NOT NULL,
  `option_category` varchar(120) NOT NULL,
  `option_name` varchar(200) NOT NULL,
  `option_column` varchar(120) NOT NULL,
  `default_value` varchar(200) NOT NULL,
  `option_type` varchar(120) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_option`
--

INSERT INTO `thunder_option` (`id`, `option_category`, `option_name`, `option_column`, `default_value`, `option_type`) VALUES
(1, 'openstack_admin_details', 'Default Username', 'Default_Username', 'admin', 'textbox'),
(2, 'openstack_admin_details', 'Default Password', 'Default_Password', 'ThunDer', 'textbox'),
(3, 'openstack_admin_details', 'Default Tenant', 'Default_Tenant', 'admin', 'textbox'),
(4, 'openstack_admin_details', 'Default Email', 'defaultemail', ' ', 'textbox'),
(5, 'shared', 'Auto start guests when host boots', 'Auto_start_guests_when_host_boots', '', 'checkbox'),
(6, 'shared', 'Use RAW images for guests instead of QCOW', 'Use_RAW_images_for_guests_instead_of_QCOW', '', 'checkbox'),
(7, 'shared', 'Enable Auto-Evacuation of Guests (requires guests boot from volume).', 'Enable_auto_evacuation', '', 'checkbox');

-- --------------------------------------------------------

--
-- Table structure for table `thunder_option_value`
--

CREATE TABLE IF NOT EXISTS `thunder_option_value` (
`id` int(11) NOT NULL,
  `cloud_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thunder_patch_updates`
--

CREATE TABLE IF NOT EXISTS `thunder_patch_updates` (
`id` int(11) NOT NULL,
  `version` varchar(120) NOT NULL,
  `type` varchar(10) NOT NULL,
  `intsalled_on` datetime NOT NULL,
  `rollbacked_on` datetime DEFAULT NULL,
  `rollbacked_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thunder_permission`
--

CREATE TABLE IF NOT EXISTS `thunder_permission` (
`id` int(11) NOT NULL,
  `permission_name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thunder_private_network`
--

CREATE TABLE IF NOT EXISTS `thunder_private_network` (
`id` int(11) NOT NULL,
  `thunder_network_details_id` int(11) NOT NULL,
  `network_cidr` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_private_network`
--

INSERT INTO `thunder_private_network` (`id`, `thunder_network_details_id`, `network_cidr`) VALUES
(57, 35, '192.168.0.0/24'),
(58, 35, '192.168.34.0/24'),
(137, 82, '192.168.0.0/24'),
(212, 120, '192.168.1.0/24'),
(213, 120, '192.168.35.1/24');

-- --------------------------------------------------------

--
-- Table structure for table `thunder_public_network`
--

CREATE TABLE IF NOT EXISTS `thunder_public_network` (
`id` int(11) NOT NULL,
  `thunder_network_details_id` int(11) NOT NULL,
  `ip_range_from` char(15) NOT NULL,
  `ip_range_to` char(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_public_network`
--

INSERT INTO `thunder_public_network` (`id`, `thunder_network_details_id`, `ip_range_from`, `ip_range_to`) VALUES
(39, 35, '192.168.200.106', '192.168.200.113'),
(40, 35, '192.168.200.155', '192.168.200.177'),
(124, 82, '192.168.200.111', '192.168.200.113'),
(162, 120, '192.168.200.101', '192.168.200.113');

-- --------------------------------------------------------

--
-- Table structure for table `thunder_recipe`
--

CREATE TABLE IF NOT EXISTS `thunder_recipe` (
`id` int(11) NOT NULL,
  `roletype_id` int(11) NOT NULL,
  `recipe_name` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_recipe`
--

INSERT INTO `thunder_recipe` (`id`, `roletype_id`, `recipe_name`, `priority`, `status`) VALUES
(1, 1, 'openstack-identity::server', 1, 1),
(2, 1, 'openstack-identity::client', 1, 1),
(3, 1, 'openstack-identity::registration', 1, 1),
(4, 1, 'openstack-image::api', 2, 1),
(5, 1, 'openstack-image::registry', 2, 1),
(6, 1, 'openstack-image::identity_registration', 2, 1),
(7, 1, 'openstack-image::image_upload', 2, 1),
(8, 1, 'openstack-compute::nova-setup', 3, 1),
(9, 1, 'openstack-compute::api-os-compute', 3, 1),
(10, 1, 'openstack-compute::conductor', 3, 1),
(11, 1, 'openstack-compute::client', 3, 1),
(12, 1, 'openstack-compute::identity_registration', 3, 1),
(13, 1, 'openstack-compute::nova-cert', 3, 1),
(14, 1, 'openstack-compute::scheduler', 3, 1),
(15, 1, 'openstack-compute::vncproxy', 3, 1),
(16, 1, 'openstack-network::server', 4, 1),
(17, 1, 'openstack-network::client', 4, 1),
(18, 1, 'openstack-network::dhcp_agent', 4, 1),
(19, 1, 'openstack-network::metadata_agent', 4, 1),
(21, 1, 'openstack-network::identity_registration', 4, 1),
(22, 1, 'openstack-network::openvswitch', 5, 1),
(23, 1, 'openstack-network::l3_agent', 5, 1),
(24, 1, 'openstack-dashboard::server', 6, 1),
(25, 2, 'openstack-compute::compute', 1, 1),
(26, 3, 'openstack-block-storage::volume', 1, 1),
(27, 1, 'openstack-block-storage::api', 7, 1),
(28, 1, 'openstack-block-storage::client', 7, 1),
(29, 1, 'openstack-block-storage::scheduler', 7, 1),
(30, 1, 'openstack-block-storage::identity_registration', 7, 1),
(31, 1, 'recipe[openstack-object-storage::setup],recipe[openstack-object-storage::management-server],recipe[openstack-object-storage::proxy-server]', 8, 1),
(32, 4, 'role[os-object-storage-account],role[os-object-storage-container],role[os-object-storage-object]', 1, 1),
(33, 1, 'thunder-setup::setup_network', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `thunder_roletype`
--

CREATE TABLE IF NOT EXISTS `thunder_roletype` (
`id` int(11) NOT NULL,
  `role_typename` varchar(255) NOT NULL,
  `role_code` varchar(60) NOT NULL,
  `role_details` longtext NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_roletype`
--

INSERT INTO `thunder_roletype` (`id`, `role_typename`, `role_code`, `role_details`, `status`) VALUES
(1, 'Controller', 'controller', 'This role handles all shared services including keystone, cinder api, neutron, swift proxies etc', 1),
(2, 'Compute', 'compute', 'This role manages guests on KVM or QEMU', 1),
(3, 'Block Storage', 'block_storage', 'The role assigns block storage to the node', 1),
(4, 'Object Storage(Swift or Ceph)', 'object_storage', 'This role assigns swift storage or Ceph OSD (As defined in cloud setup)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `thunder_scope`
--

CREATE TABLE IF NOT EXISTS `thunder_scope` (
`id` int(11) NOT NULL,
  `scope_name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thunder_task`
--

CREATE TABLE IF NOT EXISTS `thunder_task` (
`id` int(11) NOT NULL,
  `completed` tinyint(1) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thunder_update_logs`
--

CREATE TABLE IF NOT EXISTS `thunder_update_logs` (
`id` int(11) NOT NULL,
  `version` varchar(120) NOT NULL,
  `log_details` longtext NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thunder_userrole`
--

CREATE TABLE IF NOT EXISTS `thunder_userrole` (
`id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thunder_userrole_type`
--

CREATE TABLE IF NOT EXISTS `thunder_userrole_type` (
`id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `domain_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thunder_user_role_mapping`
--

CREATE TABLE IF NOT EXISTS `thunder_user_role_mapping` (
`id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunder_user_role_mapping`
--

INSERT INTO `thunder_user_role_mapping` (`id`, `role_id`, `user_id`) VALUES
(2, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `group_id` (`group_id`,`permission_id`), ADD KEY `auth_group_permissions_5f412f9a` (`group_id`), ADD KEY `auth_group_permissions_83d7f98b` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `content_type_id` (`content_type_id`,`codename`), ADD KEY `auth_permission_37ef4eb4` (`content_type_id`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`,`group_id`), ADD KEY `auth_user_groups_6340c63c` (`user_id`), ADD KEY `auth_user_groups_5f412f9a` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`,`permission_id`), ADD KEY `auth_user_user_permissions_6340c63c` (`user_id`), ADD KEY `auth_user_user_permissions_83d7f98b` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
 ADD PRIMARY KEY (`id`), ADD KEY `django_admin_log_6340c63c` (`user_id`), ADD KEY `django_admin_log_37ef4eb4` (`content_type_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `app_label` (`app_label`,`model`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
 ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_b7b81f0c` (`expire_date`);

--
-- Indexes for table `install_installation_status`
--
ALTER TABLE `install_installation_status`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `install_network_card`
--
ALTER TABLE `install_network_card`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `install_pxe_network`
--
ALTER TABLE `install_pxe_network`
 ADD PRIMARY KEY (`id`), ADD KEY `install_pxe_network_c17b074a` (`nic_id`);

--
-- Indexes for table `install_thunder_access`
--
ALTER TABLE `install_thunder_access`
 ADD PRIMARY KEY (`id`), ADD KEY `install_thunder_access_c17b074a` (`nic_id`);

--
-- Indexes for table `shoogie_servererror`
--
ALTER TABLE `shoogie_servererror`
 ADD PRIMARY KEY (`id`), ADD KEY `shoogie_servererror_6340c63c` (`user_id`);

--
-- Indexes for table `thunder_alert`
--
ALTER TABLE `thunder_alert`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thunder_cloud`
--
ALTER TABLE `thunder_cloud`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_cloud_6340c63c` (`user_id`);

--
-- Indexes for table `thunder_cloud_databag`
--
ALTER TABLE `thunder_cloud_databag`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_cloud_databag_78e320f1` (`cloud_id`), ADD KEY `thunder_cloud_databag_0a47aae8` (`item_id`);

--
-- Indexes for table `thunder_cloud_databag_item`
--
ALTER TABLE `thunder_cloud_databag_item`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thunder_cloud_domain`
--
ALTER TABLE `thunder_cloud_domain`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thunder_cloud_domain_map`
--
ALTER TABLE `thunder_cloud_domain_map`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_cloud_domain_map_abc7588b` (`cloud_id`), ADD KEY `thunder_cloud_domain_map_662cbf12` (`domain_id`);

--
-- Indexes for table `thunder_cloud_specification`
--
ALTER TABLE `thunder_cloud_specification`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_cloud_specification_278213e1` (`role_id`);

--
-- Indexes for table `thunder_cloud_spec_values`
--
ALTER TABLE `thunder_cloud_spec_values`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_cloud_spec_values_421877ba` (`spec_id`), ADD KEY `thunder_cloud_spec_values_78e320f1` (`cloud_id`);

--
-- Indexes for table `thunder_disk_drive`
--
ALTER TABLE `thunder_disk_drive`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_disk_drive_d1a78974` (`nodelist_id`);

--
-- Indexes for table `thunder_dns_server`
--
ALTER TABLE `thunder_dns_server`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_dns_server_0048ef3e` (`thunder_network_details_id`);

--
-- Indexes for table `thunder_domain`
--
ALTER TABLE `thunder_domain`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_domain_1224d57b` (`scope_id`);

--
-- Indexes for table `thunder_domain_role`
--
ALTER TABLE `thunder_domain_role`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_domain_role_662cbf12` (`domain_id`), ADD KEY `thunder_domain_role_8373b171` (`permission_id`);

--
-- Indexes for table `thunder_domain_role_permission`
--
ALTER TABLE `thunder_domain_role_permission`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thunder_floatingip_network`
--
ALTER TABLE `thunder_floatingip_network`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_floatingip_network_0048ef3e` (`thunder_network_details_id`);

--
-- Indexes for table `thunder_job`
--
ALTER TABLE `thunder_job`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_job_78e320f1` (`cloud_id`);

--
-- Indexes for table `thunder_log`
--
ALTER TABLE `thunder_log`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thunder_manage_addons`
--
ALTER TABLE `thunder_manage_addons`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thunder_monitor_service`
--
ALTER TABLE `thunder_monitor_service`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thunder_network_details`
--
ALTER TABLE `thunder_network_details`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_network_details_78e320f1` (`cloud_id`);

--
-- Indexes for table `thunder_network_interface`
--
ALTER TABLE `thunder_network_interface`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_network_interface_d1a78974` (`nodelist_id`);

--
-- Indexes for table `thunder_nic_mapping`
--
ALTER TABLE `thunder_nic_mapping`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_nic_mapping_c17b074a` (`nic_id`);

--
-- Indexes for table `thunder_nodelist`
--
ALTER TABLE `thunder_nodelist`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thunder_nodelog`
--
ALTER TABLE `thunder_nodelog`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thunder_noderole`
--
ALTER TABLE `thunder_noderole`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_noderole_278213e1` (`role_id`), ADD KEY `thunder_noderole_e453c5c5` (`node_id`);

--
-- Indexes for table `thunder_nodespec`
--
ALTER TABLE `thunder_nodespec`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_nodespec_d1a78974` (`nodelist_id`);

--
-- Indexes for table `thunder_option`
--
ALTER TABLE `thunder_option`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thunder_option_value`
--
ALTER TABLE `thunder_option_value`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_option_value_78e320f1` (`cloud_id`), ADD KEY `thunder_option_value_9c74a4f3` (`option_id`);

--
-- Indexes for table `thunder_patch_updates`
--
ALTER TABLE `thunder_patch_updates`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thunder_permission`
--
ALTER TABLE `thunder_permission`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thunder_private_network`
--
ALTER TABLE `thunder_private_network`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_private_network_0048ef3e` (`thunder_network_details_id`);

--
-- Indexes for table `thunder_public_network`
--
ALTER TABLE `thunder_public_network`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_public_network_0048ef3e` (`thunder_network_details_id`);

--
-- Indexes for table `thunder_recipe`
--
ALTER TABLE `thunder_recipe`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_recipe_ab0b04ce` (`roletype_id`);

--
-- Indexes for table `thunder_roletype`
--
ALTER TABLE `thunder_roletype`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thunder_scope`
--
ALTER TABLE `thunder_scope`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thunder_task`
--
ALTER TABLE `thunder_task`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thunder_update_logs`
--
ALTER TABLE `thunder_update_logs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thunder_userrole`
--
ALTER TABLE `thunder_userrole`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_userrole_278213e1` (`role_id`), ADD KEY `thunder_userrole_6340c63c` (`user_id`);

--
-- Indexes for table `thunder_userrole_type`
--
ALTER TABLE `thunder_userrole_type`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_userrole_type_e8b327e7` (`domain_id`), ADD KEY `thunder_userrole_type_83d7f98b` (`permission_id`);

--
-- Indexes for table `thunder_user_role_mapping`
--
ALTER TABLE `thunder_user_role_mapping`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_user_role_mapping_84566833` (`role_id`), ADD KEY `thunder_user_role_mapping_e8701ad4` (`user_id`);

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `install_installation_status`
--
ALTER TABLE `install_installation_status`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `install_network_card`
--
ALTER TABLE `install_network_card`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `install_pxe_network`
--
ALTER TABLE `install_pxe_network`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `install_thunder_access`
--
ALTER TABLE `install_thunder_access`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `shoogie_servererror`
--
ALTER TABLE `shoogie_servererror`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thunder_alert`
--
ALTER TABLE `thunder_alert`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `thunder_cloud`
--
ALTER TABLE `thunder_cloud`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `thunder_cloud_databag`
--
ALTER TABLE `thunder_cloud_databag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thunder_cloud_databag_item`
--
ALTER TABLE `thunder_cloud_databag_item`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `thunder_cloud_domain`
--
ALTER TABLE `thunder_cloud_domain`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `thunder_cloud_domain_map`
--
ALTER TABLE `thunder_cloud_domain_map`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thunder_cloud_specification`
--
ALTER TABLE `thunder_cloud_specification`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `thunder_cloud_spec_values`
--
ALTER TABLE `thunder_cloud_spec_values`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thunder_disk_drive`
--
ALTER TABLE `thunder_disk_drive`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `thunder_dns_server`
--
ALTER TABLE `thunder_dns_server`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=156;
--
-- AUTO_INCREMENT for table `thunder_domain`
--
ALTER TABLE `thunder_domain`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thunder_domain_role`
--
ALTER TABLE `thunder_domain_role`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `thunder_domain_role_permission`
--
ALTER TABLE `thunder_domain_role_permission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `thunder_floatingip_network`
--
ALTER TABLE `thunder_floatingip_network`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=225;
--
-- AUTO_INCREMENT for table `thunder_job`
--
ALTER TABLE `thunder_job`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `thunder_log`
--
ALTER TABLE `thunder_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thunder_manage_addons`
--
ALTER TABLE `thunder_manage_addons`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thunder_monitor_service`
--
ALTER TABLE `thunder_monitor_service`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `thunder_network_details`
--
ALTER TABLE `thunder_network_details`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `thunder_network_interface`
--
ALTER TABLE `thunder_network_interface`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `thunder_nic_mapping`
--
ALTER TABLE `thunder_nic_mapping`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `thunder_nodelist`
--
ALTER TABLE `thunder_nodelist`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `thunder_nodelog`
--
ALTER TABLE `thunder_nodelog`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `thunder_noderole`
--
ALTER TABLE `thunder_noderole`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `thunder_nodespec`
--
ALTER TABLE `thunder_nodespec`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `thunder_option`
--
ALTER TABLE `thunder_option`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `thunder_option_value`
--
ALTER TABLE `thunder_option_value`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thunder_patch_updates`
--
ALTER TABLE `thunder_patch_updates`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thunder_permission`
--
ALTER TABLE `thunder_permission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thunder_private_network`
--
ALTER TABLE `thunder_private_network`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=214;
--
-- AUTO_INCREMENT for table `thunder_public_network`
--
ALTER TABLE `thunder_public_network`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=163;
--
-- AUTO_INCREMENT for table `thunder_recipe`
--
ALTER TABLE `thunder_recipe`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `thunder_roletype`
--
ALTER TABLE `thunder_roletype`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `thunder_scope`
--
ALTER TABLE `thunder_scope`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thunder_task`
--
ALTER TABLE `thunder_task`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thunder_update_logs`
--
ALTER TABLE `thunder_update_logs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thunder_userrole`
--
ALTER TABLE `thunder_userrole`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thunder_userrole_type`
--
ALTER TABLE `thunder_userrole_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thunder_user_role_mapping`
--
ALTER TABLE `thunder_user_role_mapping`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
ADD CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
ADD CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
ADD CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
ADD CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
ADD CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `install_pxe_network`
--
ALTER TABLE `install_pxe_network`
ADD CONSTRAINT `nic_id_refs_id_bb075d86` FOREIGN KEY (`nic_id`) REFERENCES `install_network_card` (`id`);

--
-- Constraints for table `install_thunder_access`
--
ALTER TABLE `install_thunder_access`
ADD CONSTRAINT `nic_id_refs_id_8fc30abd` FOREIGN KEY (`nic_id`) REFERENCES `install_network_card` (`id`);

--
-- Constraints for table `shoogie_servererror`
--
ALTER TABLE `shoogie_servererror`
ADD CONSTRAINT `user_id_refs_id_e96cdda6` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `thunder_cloud`
--
ALTER TABLE `thunder_cloud`
ADD CONSTRAINT `user_id_refs_id_9d40449c` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `thunder_cloud_databag`
--
ALTER TABLE `thunder_cloud_databag`
ADD CONSTRAINT `cloud_id_refs_id_593e561a` FOREIGN KEY (`cloud_id`) REFERENCES `thunder_cloud` (`id`),
ADD CONSTRAINT `item_id_refs_id_39fa5adf` FOREIGN KEY (`item_id`) REFERENCES `thunder_cloud_databag_item` (`id`);

--
-- Constraints for table `thunder_cloud_domain_map`
--
ALTER TABLE `thunder_cloud_domain_map`
ADD CONSTRAINT `thunder_cl_domain_id_7659d7deaa3e43fc_fk_thunder_cloud_domain_id` FOREIGN KEY (`domain_id`) REFERENCES `thunder_cloud_domain` (`id`),
ADD CONSTRAINT `thunder_cloud_domai_cloud_id_dfed449cd65dc74_fk_thunder_cloud_id` FOREIGN KEY (`cloud_id`) REFERENCES `thunder_cloud` (`id`);

--
-- Constraints for table `thunder_cloud_specification`
--
ALTER TABLE `thunder_cloud_specification`
ADD CONSTRAINT `role_id_refs_id_1856c77c` FOREIGN KEY (`role_id`) REFERENCES `thunder_roletype` (`id`);

--
-- Constraints for table `thunder_cloud_spec_values`
--
ALTER TABLE `thunder_cloud_spec_values`
ADD CONSTRAINT `cloud_id_refs_id_35f9c4ec` FOREIGN KEY (`cloud_id`) REFERENCES `thunder_cloud` (`id`),
ADD CONSTRAINT `spec_id_refs_id_f003926b` FOREIGN KEY (`spec_id`) REFERENCES `thunder_cloud_specification` (`id`);

--
-- Constraints for table `thunder_disk_drive`
--
ALTER TABLE `thunder_disk_drive`
ADD CONSTRAINT `nodelist_id_refs_id_e1588541` FOREIGN KEY (`nodelist_id`) REFERENCES `thunder_nodelist` (`id`);

--
-- Constraints for table `thunder_dns_server`
--
ALTER TABLE `thunder_dns_server`
ADD CONSTRAINT `thunder_network_details_id_refs_id_c65baace` FOREIGN KEY (`thunder_network_details_id`) REFERENCES `thunder_network_details` (`id`);

--
-- Constraints for table `thunder_domain`
--
ALTER TABLE `thunder_domain`
ADD CONSTRAINT `scope_id_refs_id_e13c8483` FOREIGN KEY (`scope_id`) REFERENCES `thunder_scope` (`id`);

--
-- Constraints for table `thunder_domain_role`
--
ALTER TABLE `thunder_domain_role`
ADD CONSTRAINT `D57b6acd5ade8e1da6a28cab65c30d4a` FOREIGN KEY (`permission_id`) REFERENCES `thunder_domain_role_permission` (`id`),
ADD CONSTRAINT `thunder_do_domain_id_46440d90174d4745_fk_thunder_cloud_domain_id` FOREIGN KEY (`domain_id`) REFERENCES `thunder_cloud_domain` (`id`);

--
-- Constraints for table `thunder_floatingip_network`
--
ALTER TABLE `thunder_floatingip_network`
ADD CONSTRAINT `thunder_network_details_id_refs_id_b7d8be89` FOREIGN KEY (`thunder_network_details_id`) REFERENCES `thunder_network_details` (`id`);

--
-- Constraints for table `thunder_job`
--
ALTER TABLE `thunder_job`
ADD CONSTRAINT `cloud_id_refs_id_d48c08d3` FOREIGN KEY (`cloud_id`) REFERENCES `thunder_cloud` (`id`);

--
-- Constraints for table `thunder_network_details`
--
ALTER TABLE `thunder_network_details`
ADD CONSTRAINT `cloud_id_refs_id_287f0737` FOREIGN KEY (`cloud_id`) REFERENCES `thunder_cloud` (`id`);

--
-- Constraints for table `thunder_network_interface`
--
ALTER TABLE `thunder_network_interface`
ADD CONSTRAINT `nodelist_id_refs_id_a655d0ff` FOREIGN KEY (`nodelist_id`) REFERENCES `thunder_nodelist` (`id`);

--
-- Constraints for table `thunder_nic_mapping`
--
ALTER TABLE `thunder_nic_mapping`
ADD CONSTRAINT `nic_id_refs_id_95f562bf` FOREIGN KEY (`nic_id`) REFERENCES `thunder_network_interface` (`id`);

--
-- Constraints for table `thunder_noderole`
--
ALTER TABLE `thunder_noderole`
ADD CONSTRAINT `node_id_refs_id_7973dd72` FOREIGN KEY (`node_id`) REFERENCES `thunder_nodelist` (`id`),
ADD CONSTRAINT `role_id_refs_id_2874f63d` FOREIGN KEY (`role_id`) REFERENCES `thunder_roletype` (`id`);

--
-- Constraints for table `thunder_nodespec`
--
ALTER TABLE `thunder_nodespec`
ADD CONSTRAINT `nodelist_id_refs_id_b2a685ca` FOREIGN KEY (`nodelist_id`) REFERENCES `thunder_nodelist` (`id`);

--
-- Constraints for table `thunder_option_value`
--
ALTER TABLE `thunder_option_value`
ADD CONSTRAINT `cloud_id_refs_id_bdb0e07a` FOREIGN KEY (`cloud_id`) REFERENCES `thunder_cloud` (`id`),
ADD CONSTRAINT `option_id_refs_id_4ba57f3d` FOREIGN KEY (`option_id`) REFERENCES `thunder_option` (`id`);

--
-- Constraints for table `thunder_private_network`
--
ALTER TABLE `thunder_private_network`
ADD CONSTRAINT `thunder_network_details_id_refs_id_0d9343d1` FOREIGN KEY (`thunder_network_details_id`) REFERENCES `thunder_network_details` (`id`);

--
-- Constraints for table `thunder_public_network`
--
ALTER TABLE `thunder_public_network`
ADD CONSTRAINT `thunder_network_details_id_refs_id_aff1a0e2` FOREIGN KEY (`thunder_network_details_id`) REFERENCES `thunder_network_details` (`id`);

--
-- Constraints for table `thunder_recipe`
--
ALTER TABLE `thunder_recipe`
ADD CONSTRAINT `roletype_id_refs_id_a21302b8` FOREIGN KEY (`roletype_id`) REFERENCES `thunder_roletype` (`id`);

--
-- Constraints for table `thunder_userrole`
--
ALTER TABLE `thunder_userrole`
ADD CONSTRAINT `role_id_refs_id_22b252af` FOREIGN KEY (`role_id`) REFERENCES `thunder_userrole_type` (`id`),
ADD CONSTRAINT `user_id_refs_id_39e7c667` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `thunder_userrole_type`
--
ALTER TABLE `thunder_userrole_type`
ADD CONSTRAINT `domain_id_refs_id_ca2e1d63` FOREIGN KEY (`domain_id`) REFERENCES `thunder_domain` (`id`),
ADD CONSTRAINT `permission_id_refs_id_ca2e1d63` FOREIGN KEY (`permission_id`) REFERENCES `thunder_domain` (`id`);

--
-- Constraints for table `thunder_user_role_mapping`
--
ALTER TABLE `thunder_user_role_mapping`
ADD CONSTRAINT `thunder_user_r_role_id_4b34bec9a5d22a9_fk_thunder_domain_role_id` FOREIGN KEY (`role_id`) REFERENCES `thunder_domain_role` (`id`),
ADD CONSTRAINT `thunder_user_role_mappi_user_id_50b761b626e61146_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
