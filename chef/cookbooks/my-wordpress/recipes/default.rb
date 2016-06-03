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

# Download the wp-cli
execute "download wp-cli" do
	command "curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar"
	user 'root'
	group 'root'
	action :run
end

# Make the tool executable
execute "make wp-cli executable" do
	command "chmod +x wp-cli.phar"
	user 'root'
	group 'root'
	action :run
end

# Move wp-cli
execute "move wp-cli" do
	command "mv wp-cli.phar /usr/local/bin/wp"
	user 'root'
	group 'root'
	action :run
end

# Update wp-admin
execute "update wp-admin" do
	command "wp core install --path=\"/var/www/wordpress\" --url=\"your_domain_name\"  --title=\"Rean Cloud Demo\" --admin_user=\"#{node['my-wordpress']['wp_user']}\" --admin_password=\"#{node['my-wordpress']['wp_password']}\" --admin_email=\"#{node['my-wordpress']['email']}\""
	user 'ec2-user'
	group 'ec2-user'
	action :run
end
