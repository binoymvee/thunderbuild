-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 06, 2015 at 12:16 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

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
