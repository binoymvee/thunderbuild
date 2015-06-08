# @author: Geo Varghese
# @create_date: 21-Apr-2015
# @modified by: Geo Varghese    
# @modified_date: 21-Apr-2015
# @linking to other page: 
# @description: The recipe to check ping

ip_addres = node['thunder']['attach_ip']
  
# check ping
execute "check ping to ip #{ip_addres}" do
  command "ping -c 1 #{ip_addres}"
  action :run
end