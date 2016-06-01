#
# Cookbook Name:: my-chef-server
# Attributes:: default
#
# Copyright 2016, myco
#
# All rights reserved - Do Not Redistribute
#

default['my-chef-server']['user_name'] = 'tbojorquez'
default['my-chef-server']['first_name'] = 'Tim'
default['my-chef-server']['last_name'] = 'Bojorquez'
default['my-chef-server']['email'] = 'timbojo@charter.net'
default['my-chef-server']['password'] = 'my_chef_password1'
default['my-chef-server']['short_org'] = 'tbojorquez'
default['my-chef-server']['full_org'] = 'Tim Bojorquez Chef Org'
default['my-chef-server']['private_key'] = '/root/tbojorquez-chef.pem'
default['my-chef-server']['validator_key'] = '/root/tbojorquez-validator.pem'
