--
-- Dumping data for table `thunder_cloud_specification`
--
INSERT INTO `thunder_cloud_specification` (`id`, `role_id`, `spec_category`, `spec_name`, `spec_column`, `default_value`) VALUES

(NULL, 1, 'keystone', 'Openstack Endpoint Host', 'openstack::endpoints::host', 'controller'),

(NULL, 1, 'messaging_server', 'Messaging Server Endpoint Host', 'openstack::endpoints::mq::host', 'controller'),

(NULL, 1, 'database', 'Database Server Endpoint Host', 'openstack::endpoints::db::host', 'loadbalancer'),

(NULL, 1, 'compute', 'Network Service Type', 'openstack::compute::network::service_type', 'neutron'),

(NULL, 1, 'cinder', 'The Default Store of Image', 'openstack::image::api::default_store', 'file'),

(NULL, 1, 'Neutron', 'Nova Metadata API Service IP', 'openstack::network::metadata::nova_metadata_ip', 'controller'),

(NULL, 1, 'Neutron', 'Type of Network to Allocate for Tenant Networks', 'openstack::network::openvswitch::tenant_network_type', 'gre'),

(NULL, 1, 'Neutron', 'Interface to use for external bridge', 'openstack::network::l3::external_network_bridge_interface', 'eth1'),

(NULL, 1, 'common', 'Set to True in the Server and the Agents to Enable Support for GRE', 'openstack::network::openvswitch::enable_tunneling', 'True'),

(NULL, 1, 'Neutron', 'The Type of Tunnel Network', 'openstack::network::openvswitch::tunnel_type', 'gre'),

(NULL, 3, 'cinder', 'Volume Driver', 'openstack::block-storage::volume::driver', 'cinder.volume.drivers.lvm.LVMISCSIDriver'),

(NULL, 1, 'dashborad', 'The hostname of dashbaord to add in apache conf. If not give we can access it through default IP of controller', 'openstack::dashboard::server_hostname', 'nil'),

(NULL, 3, 'cinder', 'Block Device Disk Name', 'openstack::block-storage::volume::block_devices', '/dev/sdb1'),

(NULL, 4, 'swift', 'Git Repository Creation Server IP', 'openstack::object-storage::git_builder_ip', 'controller'),

(NULL, '1', 'database', 'Mysql Root Password', 'mysql::server_root_password', 'root'),

(NULL, '1', 'messaging_server', 'Messaging Server Type', 'openstack::mq::service_type', 'rabbitmq');






