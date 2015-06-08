# Cookbook name :: restart_services.rb
# Recipe :: default
#
# Copyright 2015, AQORN
#
# All rights reserved - Do Not Redistribute
#

# Restart the cobbler service
service "cobbler" do
action :start
end

# Execute cobbler sync
execute "cobbler-sync" do
  command "cobbler sync"
  action :run
end


# Command to reconfigure request for chef-server
execute "chef-reconfigure" do
  command "chef-server-ctl reconfigure"
  action :run
end

## Stop the django server and restart it with the thunder ip given from admin config
#execute "stop-django-server" do
#  command "kill -9 `ps -ax | grep manage.py | awk '/runserver / {print $1}'`"
#  action :run
#end
#
## Start the django server with thunder ip
#execute "start-django-server" do
#  cwd "/opt/thunder-web/"
#  command 'python manage.py runserver "#{node[\'thunder\'][\'install_ip\']":9000'
#  action :run
#end