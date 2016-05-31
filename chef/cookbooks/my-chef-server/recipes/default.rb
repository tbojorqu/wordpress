#
# Cookbook Name:: my-chef-server
# Recipe:: default
#
# Copyright 2016, myco
#
# All rights reserved - Do Not Redistribute
#

# Download chef package
execute "Download and install chef" do
	command "curl -L https://omnitruck.chef.io/install.sh | sudo bash -s -- -P chef-server"
	user 'root'
	group 'root'
	action :run
end

# # Update chef-server.rb
# template "/etc/opscode/chef-server.rb" do
# 	source "chef-server.erb"
# 	owner 'root'
# 	group 'root'
# 	mode 00640
# 	action :create
# end

# Reconfigure the chef server
execute "reconfigure chef server" do
	command "chef-server-ctl reconfigure"
	user 'root'
	group 'root'
	action :run
end

# Create an admin account
execute "create admin account" do
	command "chef-server-ctl user-create #{node['my-chef-server']['user_name']} #{node['my-chef-server']['first_name']} #{node['my-chef-server']['last_name']} #{node['my-chef-server']['email']} '#{node['my-chef-server']['password']}' --filename #{node['my-chef-server']['private_key']}"
	user 'root'
	group 'root'
	action :run
end

# Create a chef organization
execute "create a chef org" do
	command "chef-server-ctl org-create #{node['my-chef-server']['short_org']} '#{node['my-chef-server']['full_org']}' --association_user #{node['my-chef-server']['user_name']} --filename #{node['my-chef-server']['validator_key']}"
	user 'root'
	group 'root'
	action :run
end