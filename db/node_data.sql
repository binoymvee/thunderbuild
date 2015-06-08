SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


DROP TABLE IF EXISTS `thunder_disk_drive`;
CREATE TABLE IF NOT EXISTS `thunder_disk_drive` (
`id` int(11) NOT NULL,
  `nodelist_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `system_space` decimal(19,1) NOT NULL,
  `storage_space` decimal(19,1) NOT NULL,
  `total_space` decimal(19,1) NOT NULL,
  `format` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

INSERT INTO `thunder_disk_drive` (`id`, `nodelist_id`, `name`, `system_space`, `storage_space`, `total_space`, `format`) VALUES
(1, 1, 'sda', '620.0', '0.0', '620.0', 0),
(2, 1, 'sdb', '0.0', '800.0', '800.0', 0),
(3, 2, 'sda', '15.0', '1500.0', '1515.0', 0),
(4, 2, 'sdb', '0.0', '2000.0', '2000.0', 0),
(5, 2, 'sdc', '0.0', '1000.0', '1000.0', 0),
(6, 3, 'sda', '15.0', '450.0', '465.0', 0),
(7, 3, 'sdb', '0.0', '250.0', '250.0', 0),
(8, 3, 'sdc', '0.0', '450.0', '450.0', 0),
(9, 4, 'sda', '15.0', '250.0', '265.0', 0),
(10, 4, 'sdb', '0.0', '350.0', '350.0', 0),
(11, 5, 'sda', '15.0', '350.0', '365.0', 0),
(12, 5, 'sdb', '0.0', '650.0', '650.0', 0),
(13, 6, 'sda', '15.0', '350.0', '365.0', 0),
(14, 6, 'sdb', '0.0', '750.0', '750.0', 0),
(15, 7, 'sda', '15.0', '350.0', '365.0', 0),
(16, 7, 'sdb', '0.0', '750.0', '750.0', 0),
(17, 8, 'sda', '15.0', '550.0', '565.0', 0),
(18, 8, 'sdb', '0.0', '950.0', '950.0', 0);

DROP TABLE IF EXISTS `thunder_nic_mapping`;
DROP TABLE IF EXISTS `thunder_network_interface`;
CREATE TABLE IF NOT EXISTS `thunder_network_interface` (
`id` int(11) NOT NULL,
  `nodelist_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `mac_address` varchar(60) NOT NULL,
  `model_name` varchar(120) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

INSERT INTO `thunder_network_interface` (`id`, `nodelist_id`, `name`, `mac_address`, `model_name`) VALUES
(1, 1, 'eth0', '52:54:00:14:0b:e2', 'Ethernet'),
(2, 1, 'eth1', '52:54:00:14:0b:e2', 'Ethernet'),
(3, 1, 'eth2', '52:54:00:14:0b:12', 'Ethernet'),
(4, 1, 'eth3', '52:54:00:43:af:7a', 'Ethernet'),
(5, 2, 'eth0', '52:54:00:43:af:7a', 'Ethernet'),
(6, 2, 'eth1', '52:54:00:14:0b:12', 'Ethernet'),
(7, 2, 'eth2', '52:54:00:43:af:7a', 'Ethernet'),
(8, 2, 'eth3', '52:54:00:14:0b:e2', 'Ethernet'),
(9, 3, 'eth0', '52:54:00:14:0b:12', 'ethernet'),
(10, 3, 'eth1', '52:54:00:14:0b:11', 'ethernet'),
(11, 3, 'eth2', '52:54:00:14:0b:12', 'ethernet'),
(12, 3, 'eth3', '52:54:00:14:0b:13', 'ethernet'),
(13, 4, 'eth0', '52:54:00:14:0b:40', 'ethernet'),
(14, 4, 'eth1', '52:54:00:14:0b:41', 'ethernet'),
(15, 4, 'eth2', '52:54:00:14:0b:42', 'ethernet'),
(16, 4, 'eth3', '52:54:00:14:0b:43', 'ethernet'),
(17, 5, 'eth0', '52:54:00:14:0b:50', 'ethernet'),
(18, 5, 'eth1', '52:54:00:14:0b:51', 'ethernet'),
(19, 5, 'eth2', '52:54:00:14:0b:52', 'ethernet'),
(20, 5, 'eth3', '52:54:00:14:0b:53', 'ethernet'),
(21, 6, 'eth0', '52:54:00:14:0b:60', 'ethernet'),
(22, 6, 'eth1', '52:54:00:14:0b:61', 'ethernet'),
(23, 6, 'eth2', '52:54:00:14:0b:62', 'ethernet'),
(24, 6, 'eth3', '52:54:00:14:0b:63', 'ethernet'),
(25, 7, 'eth0', '52:54:00:14:0b:70', 'ethernet'),
(26, 7, 'eth1', '52:54:00:14:0b:71', 'ethernet'),
(27, 7, 'eth2', '52:54:00:14:0b:72', 'ethernet'),
(28, 7, 'eth3', '52:54:00:14:0b:73', 'ethernet'),
(29, 8, 'eth0', '52:54:00:14:0b:80', 'ethernet'),
(30, 8, 'eth1', '52:54:00:14:0b:81', 'ethernet'),
(31, 8, 'eth2', '52:54:00:14:0b:82', 'ethernet'),
(32, 8, 'eth3', '52:54:00:14:0b:83', 'ethernet');

DROP TABLE IF EXISTS `thunder_nic_mapping`;
CREATE TABLE IF NOT EXISTS `thunder_nic_mapping` (
`id` int(11) NOT NULL,
  `nic_id` int(11) NOT NULL,
  `network_type` varchar(1) NOT NULL,
  `ip_address` char(39) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

INSERT INTO `thunder_nic_mapping` (`id`, `nic_id`, `network_type`, `ip_address`) VALUES
(1, 1, 'A', '192.168.122.95'),
(2, 3, 'P', '192.168.200.95'),
(3, 2, 'M', '192.168.100.95'),
(4, 4, 'S', '192.168.101.95'),
(5, 5, 'A', '192.168.122.84'),
(6, 8, 'M', '192.168.100.84'),
(7, 8, 'P', '192.168.200.84'),
(8, 8, 'S', '192.168.101.84'),
(9, 9, 'A', NULL),
(10, 10, 'P', NULL),
(11, 11, 'M', NULL),
(12, 12, 'S', NULL),
(13, 13, 'P', NULL),
(14, 14, 'A', NULL),
(15, 14, 'M', NULL),
(16, 15, 'S', NULL),
(17, 17, 'P', NULL),
(18, 18, 'A', NULL),
(19, 19, 'M', NULL),
(20, 20, 'S', NULL),
(21, 21, 'P', NULL),
(22, 22, 'A', NULL),
(23, 23, 'M', NULL),
(24, 24, 'S', NULL),
(25, 25, 'A', NULL),
(26, 26, 'P', NULL),
(27, 27, 'M', NULL),
(28, 28, 'S', NULL),
(29, 29, 'A', NULL),
(30, 30, 'P', NULL),
(31, 30, 'M', NULL),
(32, 30, 'S', NULL);


ALTER TABLE `thunder_disk_drive`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_disk_drive_d1a78974` (`nodelist_id`);

ALTER TABLE `thunder_network_interface`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_network_interface_d1a78974` (`nodelist_id`);

ALTER TABLE `thunder_nic_mapping`
 ADD PRIMARY KEY (`id`), ADD KEY `thunder_nic_mapping_c17b074a` (`nic_id`);


ALTER TABLE `thunder_disk_drive`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
ALTER TABLE `thunder_network_interface`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
ALTER TABLE `thunder_nic_mapping`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;

ALTER TABLE `thunder_disk_drive`
ADD CONSTRAINT `nodelist_id_refs_id_e1588541` FOREIGN KEY (`nodelist_id`) REFERENCES `thunder_nodelist` (`id`);

ALTER TABLE `thunder_network_interface`
ADD CONSTRAINT `nodelist_id_refs_id_a655d0ff` FOREIGN KEY (`nodelist_id`) REFERENCES `thunder_nodelist` (`id`);

ALTER TABLE `thunder_nic_mapping`
ADD CONSTRAINT `nic_id_refs_id_95f562bf` FOREIGN KEY (`nic_id`) REFERENCES `thunder_network_interface` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
