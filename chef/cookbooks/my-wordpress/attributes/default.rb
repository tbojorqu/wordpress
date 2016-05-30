#
# Cookbook Name:: my-wordpress
# Attributes:: default
#
# Copyright 2016, myco
#
# All rights reserved - Do Not Redistribute
#

default['my-wordpress']['wp_user'] = node['cloud']['wp_user']
default['my-wordpress']['wp_password'] = node['cloud']['wp_password']


# Attributes to override
override['wordpress']['db']['mysql_version'] = '5.5'
override['wordpress']['db']['root_password'] = 'my_root_password'
override['wordpress']['db']['instance_name'] = 'default'
override['wordpress']['db']['name'] = "wordpressdb"
override['wordpress']['db']['user'] = node['cloud']['db_user']
override['wordpress']['db']['pass'] = node['cloud']['db_password']
override['wordpress']['db']['prefix'] = 'wp_'
override['wordpress']['db']['host'] = 'localhost'

override['php']['packages'] = %w(php55 php55-devel php55-cli php-pear)
override['php']['mysql']['package'] = 'php55-mysqlnd'

override['wordpress']['server_name'] = node['public_ipv4']
override['wordpress']['server_aliases'] = [node['public_ipv4'], "wordpress"]
