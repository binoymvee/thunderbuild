-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 12, 2015 at 08:32 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
--
-- Dumping data for table `thunder_roletype`
--

INSERT INTO `thunder_roletype` (`id`, `role_typename`, `role_code`, `role_details`, `status`) VALUES
(1, 'Controller', 'controller', 'This role handles all shared services including keystone, cinder api, neutron, swift proxies etc', 1),
(2, 'Compute', 'compute', 'This role manages guests on KVM or QEMU', 1),
(3, 'Block Storage', 'block_storage', 'The role assigns block storage to the node', 1),
(4, 'Object Storage(Swift or Ceph)', 'object_storage', 'This role assigns swift storage or Ceph OSD (As defined in cloud setup)', 1);


