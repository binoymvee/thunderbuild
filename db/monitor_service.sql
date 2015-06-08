INSERT INTO `thunder_monitor_service` (`id`, `name`, `command`, `status`) VALUES
(1, 'cobbler', '/etc/init.d/cobbler status', 1),
(2, 'chef-server', 'chef-server-ctl status', 1);

