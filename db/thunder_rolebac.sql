-- MySQL dump 10.13  Distrib 5.6.21, for Linux (x86_64)
--
-- Host: localhost    Database: thunder
-- ------------------------------------------------------
-- Server version	5.6.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$15000$MmAnCFQPk0cF$iQu8er396a6pPQ0CQQWu/NmFMG6mkASBmoUbQjQ277o=','2015-03-31 14:29:47',1,'root','','','deepthy@poornam.com',1,1,'2015-03-24 10:52:40'),(2,'pbkdf2_sha256$15000$prSPKNudsYOA$CTYpVHRFMj7cb9/UwtqobyyQ9tu6nxNVxd9Su4m9wRU=','2015-03-31 14:18:42',0,'user1','','','user1@test.com',0,1,'2015-03-26 14:10:25');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thunder_cloud_domain`
--

DROP TABLE IF EXISTS `thunder_cloud_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thunder_cloud_domain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thunder_cloud_domain`
--

LOCK TABLES `thunder_cloud_domain` WRITE;
/*!40000 ALTER TABLE `thunder_cloud_domain` DISABLE KEYS */;
INSERT INTO `thunder_cloud_domain` VALUES (1,'Thunder',1),(2,'Domain 1',1),(3,'Domain 2',1),(4,'Domain 3',1),(5,'Domain 4',1),(6,'Domain 5',1),(7,'Domain 6',1),(8,'Domain 7',1),(9,'Domain 8',1),(10,'Domain 9',1);
/*!40000 ALTER TABLE `thunder_cloud_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thunder_cloud_domain_map`
--

DROP TABLE IF EXISTS `thunder_cloud_domain_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thunder_cloud_domain_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cloud_id` int(11) NOT NULL,
  `domain_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `thunder_cloud_domain_map_abc7588b` (`cloud_id`),
  KEY `thunder_cloud_domain_map_662cbf12` (`domain_id`),
  CONSTRAINT `thunder_cl_domain_id_7659d7deaa3e43fc_fk_thunder_cloud_domain_id` FOREIGN KEY (`domain_id`) REFERENCES `thunder_cloud_domain` (`id`),
  CONSTRAINT `thunder_cloud_domai_cloud_id_dfed449cd65dc74_fk_thunder_cloud_id` FOREIGN KEY (`cloud_id`) REFERENCES `thunder_cloud` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thunder_cloud_domain_map`
--

LOCK TABLES `thunder_cloud_domain_map` WRITE;
/*!40000 ALTER TABLE `thunder_cloud_domain_map` DISABLE KEYS */;
INSERT INTO `thunder_cloud_domain_map` VALUES (1,1,2),(2,2,2),(3,3,2),(4,4,2),(5,5,3),(6,1,3),(7,2,4),(8,3,4),(9,3,5),(10,4,6),(11,5,7),(12,1,8),(13,4,8),(14,6,9),(15,5,10),(16,6,10);
/*!40000 ALTER TABLE `thunder_cloud_domain_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thunder_domain_role`
--

DROP TABLE IF EXISTS `thunder_domain_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thunder_domain_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `domain_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `thunder_domain_role_662cbf12` (`domain_id`),
  KEY `thunder_domain_role_8373b171` (`permission_id`),
  CONSTRAINT `D57b6acd5ade8e1da6a28cab65c30d4a` FOREIGN KEY (`permission_id`) REFERENCES `thunder_domain_role_permission` (`id`),
  CONSTRAINT `thunder_do_domain_id_46440d90174d4745_fk_thunder_cloud_domain_id` FOREIGN KEY (`domain_id`) REFERENCES `thunder_cloud_domain` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thunder_domain_role`
--

LOCK TABLES `thunder_domain_role` WRITE;
/*!40000 ALTER TABLE `thunder_domain_role` DISABLE KEYS */;
INSERT INTO `thunder_domain_role` VALUES (1,'Thunder',1,1),(2,'Role 1',2,3),(3,'Role 2',3,3),(4,'Role 3',4,3),(5,'Role 4',10,4);
/*!40000 ALTER TABLE `thunder_domain_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thunder_domain_role_permission`
--

DROP TABLE IF EXISTS `thunder_domain_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thunder_domain_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thunder_domain_role_permission`
--

LOCK TABLES `thunder_domain_role_permission` WRITE;
/*!40000 ALTER TABLE `thunder_domain_role_permission` DISABLE KEYS */;
INSERT INTO `thunder_domain_role_permission` VALUES (1,'Domain','Individual Cloud or Thunder ( all clouds)'),(2,'Deploy','View, change configurations or deploy'),(3,'Change','View or change cloud configurations'),(4,'View','View cloud configurations only');
/*!40000 ALTER TABLE `thunder_domain_role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thunder_user_role_mapping`
--

DROP TABLE IF EXISTS `thunder_user_role_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thunder_user_role_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `thunder_user_role_mapping_84566833` (`role_id`),
  KEY `thunder_user_role_mapping_e8701ad4` (`user_id`),
  CONSTRAINT `thunder_user_r_role_id_4b34bec9a5d22a9_fk_thunder_domain_role_id` FOREIGN KEY (`role_id`) REFERENCES `thunder_domain_role` (`id`),
  CONSTRAINT `thunder_user_role_mappi_user_id_50b761b626e61146_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thunder_user_role_mapping`
--

LOCK TABLES `thunder_user_role_mapping` WRITE;
/*!40000 ALTER TABLE `thunder_user_role_mapping` DISABLE KEYS */;
INSERT INTO `thunder_user_role_mapping` VALUES (1,2,2),(2,1,1);
/*!40000 ALTER TABLE `thunder_user_role_mapping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-31 20:20:07
