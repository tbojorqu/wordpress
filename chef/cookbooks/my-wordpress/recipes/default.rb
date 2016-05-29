#
# Cookbook Name:: my-wordpress
# Recipe:: default
#
# Copyright 2016, myco
#
# All rights reserved - Do Not Redistribute
#

include_recipe "wordpress"

# # Install mysql
# mysql_service 'wordpress' do
# 	port node['my-wordpress']['port']
# 	version node['my-wordpress']['version']
# 	initial_root_password node['my-wordpress']['db_password']
# 	action [:create, :start]
# end

