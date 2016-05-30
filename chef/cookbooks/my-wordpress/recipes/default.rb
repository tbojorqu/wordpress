#
# Cookbook Name:: my-wordpress
# Recipe:: default
#
# Copyright 2016, myco
#
# All rights reserved - Do Not Redistribute
#

include_recipe "wordpress"

# Update wordpress.conf http file with server and alias name
# This should be done by overriding variables

# Restart httpd
execute "service httpd restart" do
	user 'root'
	group 'root'
	action :run
end

# Run the wp-admin automatically

