#
# Cookbook Name:: my-chef-server
# Attributes:: default
#
# Copyright 2016, myco
#
# All rights reserved - Do Not Redistribute
#

# Attributes to override
override['chef-server']['api_fqdn'] = node['public_ipv4']
override['chef-server']['topology'] = 'standalone'
override['chef-server']['addons'] = []
override['chef-server']['accept_license'] = true
override['private_chef']['nginx']['server_name'] = node['public_ipv4']