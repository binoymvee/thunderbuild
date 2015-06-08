-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 06, 2015 at 12:19 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

-- Dumping data for table `thunder_option`
--

INSERT INTO `thunder_option` (`id`, `option_category`, `option_name`, `option_column`, `default_value`, `option_type`) VALUES
(1, 'openstack_admin_details', 'Default Username', 'Default_Username', 'admin', 'textbox'),
(2, 'openstack_admin_details', 'Default Password', 'Default_Password', 'ThunDer', 'textbox'),
(3, 'openstack_admin_details', 'Default Tenant', 'Default_Tenant', 'admin', 'textbox'),
(4, 'openstack_admin_details', 'Default Email', 'defaultemail', '', 'textbox'),
(5, 'shared', 'Auto start guests when host boots', 'Auto_start_guests_when_host_boots', '', 'checkbox'),
(6, 'shared', 'Use RAW images for guests instead of QCOW', 'Use_RAW_images_for_guests_instead_of_QCOW', '', 'checkbox'),
(7, 'shared', 'Enable Auto-Evacuation of Guests (requires guests boot from volume).', 'Enable_auto_evacuation', '', 'checkbox');

