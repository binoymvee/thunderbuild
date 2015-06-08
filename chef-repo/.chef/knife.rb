# See http://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

# internal chef server configuration
current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "deployment" 
client_key               "#{current_dir}/deployment.pem" 
validation_client_name   "aqorn-validator" 
validation_key           "#{current_dir}/aqorn-validator.pem" 
chef_server_url "https://192.168.122.101/organizations/aqorn"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
