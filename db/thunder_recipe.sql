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

