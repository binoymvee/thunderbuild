# @author: Geo Varghese
# @create_date: 21-Apr-2015
# @modified by: Geo Varghese    
# @modified_date: 21-Apr-2015
# @linking to other page: 
# @description: The recipe to setup ip temporarly in nic

nic_name = node['thunder']['attach_nic']

# if valn enabled, install related packages
if !node['thunder']['vlan_tag'].to_s.empty?
  
  # install valn package
  platform_options = node['thunder']['common']
  package "vlan" do
    options platform_options['package_options']
    action :upgrade
  end
  
  # add kernal module temporary
  executeCmdAndGetOutput("modprobe 8021q")
  
  # up device
  executeCmdAndGetOutput("ifconfig #{nic_name} up")
  
  # add vlan device
  executeCmdAndGetOutput("vconfig add #{node['thunder']['attach_nic']} #{node['thunder']['vlan_tag']}")
  nic_name = nic_name + "." + node['thunder']['vlan_tag'].to_s
   
end

ip_addres = node['thunder']['attach_ip']
netmask = if node['thunder']['netmask'] then node['thunder']['netmask'] else "255.255.255.0" end 
  
# setup ip temporarly
execute "setup ip #{ip_addres} in #{nic_name} temporarly" do
  command "ifconfig #{nic_name} #{ip_addres} netmask #{netmask} up"
  action :run
end