# @author: Binoy
# @create_date: 16-Apr-2015
# @modified by: binoy    
# @modified_date: 16-Apr-2015
# @linking to other page: 
# @description: manage cron job module

# importing required modules
import os
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "thunder.settings")
from cloud.models import *
from cloud.views import *
from network.functions import *
import re
from django.core.validators import validate_ipv46_address
from deployment.common import *
    
# Reading the dhcp file
executeCommand("cobbler sync")
handle = open(settings.DHCP_LEASES_FILE_LOC, 'r+')
sysCredInfo = getSystemCredentials()

# going through each lines
for line in handle:
    
    # if the line contain lease then proceeding
    if 'lease' in line or 'hardware ethernet' in line:
        
        # finding the ip and mac id
        ip = find_between(line, 'lease ', ' {')
        macId = find_between(line, 'hardware ethernet ', ';')
        
        # if ip found line 
        if ip != None :
            
            ipValidation = validate_ipv46_address(ip)
            
            # validate IP
            if ipValidation == None:
            
                # creating the node list            
                nodeList = Nodelist.objects.get_or_create(node_ip = ip)
                nodeInfo = nodeList[0]
    
                # Checking if new node created
                if nodeList[1] == True:
                    
                    # updating the node list with the new host name
                    hostName = settings.NODE_PREFIX + str(nodeInfo.id)
                    nodeInfo.host_name = hostName
                    nodeInfo.user_name = sysCredInfo['username']
                    nodeInfo.password = sysCredInfo['password']
                    nodeInfo.sudo_password = sysCredInfo['sudo']
                    nodeInfo.save()
                    
                    # Setting the zabbix details
                    params = {
                        "host": hostName,
                        "groups": [{"groupid": settings.ZABBIX_GROUPID}],
                        "templates": [{"templateid": settings.ZABBIX_ICMP_TEMP_ID}],
                        "interfaces": [{
                            "type": 1,
                            "main": 1,
                            "useip": 1,
                            "ip": ip,
                            "dns": "",
                            "port": 10050
                        }],
                    }
                    
                    # Creating the host in zabbix server
                    try:
                        zabbixHost = zabbixHostCreate(params)
                        nodeInfo.zabbix_host_id = zabbixHost['hostids'][0]
                        nodeInfo.save()
                        saveJobNodeLog(0, nodeInfo, 'Created host ' + hostName + ' in the zabbix server', 'Created  node in the zabbix server with IP '+ ip +'.', 1)
                    except Exception, e:
                        debugException(e)
                        saveJobNodeLog(0, nodeInfo, 'Adding host ' + hostName + ' to zabbix server Failed', 'Adding node to zabbix server with IP '+ ip +'Failed', 0)
                    
                    # parameters for the node alert
                    params = {
                        'alert_type': 'Node', 
                        'referece_id': nodeInfo.id,
                        'alert_content': 'New node '+ nodeInfo.host_name +' found', 
                        'alert_status' : 'N'
                    }
                    thunderAlertAdd(params)
                    
                    # Saving the node details into the node log
                    saveJobNodeLog(0, nodeInfo, 'New node with IP '+ ip +' detected and it added to the thunder', 'New node with IP '+ ip +' detected and it added to the thunder', 1)
        
        # if mac id line then store details of node spec
        if macId != None:            
            
            # checking the mac address, if it available addign it to the node spec
            nodeSpec = NodeSpec.objects.get_or_create(nodelist_id = nodeInfo.id, mac_id = macId)
            
            # If the creation is success then adding the alert to the table
            if nodeSpec[1] == True:
                saveJobNodeLog(0, nodeInfo, 'Node specification is updated with mac id '+ macId +'.', 'Node specification is updated with mac id '+ macId +'.', 1)
                    
            
handle.close()

# select nodes are active with bootstrap image but not updated node details
resList = Nodelist.objects.filter(preos = 0, node_up = 1)

# loop through nodelist
for nodeInfo in resList:
        
    # save nod edynamic details
    callStatus = updateDynamicNodeInformation(nodeInfo)
        
    # save pre os variable if sccessfully saved
    if callStatus:
        nodeInfo.preos = 1
        nodeInfo.save()


# get all nodes and update dhcpd conf file
resList = Nodelist.objects.all()
staticConf = ""

# loop through node and create string
for nodeInfo in resList:
    
    # get mac id
    try:
        nodeSpec = NodeSpec.objects.get(nodelist_id = nodeInfo.id)
        macId = nodeSpec.mac_id
    except Exception, e:    
        macId = ""
    
    # if mac is not empty
    if macId:
        staticConf += "host " + nodeInfo.host_name + " {\n"
        staticConf += "hardware ethernet " + macId + ";\n"
        staticConf += "fixed-address " + nodeInfo.node_ip + ";\n"
        staticConf += "}\n"

# if content is not empty
if staticConf:
    handle = open(settings.DHCP_STATIC_FILE_LOC, "w")
    handle.write(staticConf)
    handle.close()