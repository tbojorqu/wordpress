#
# Cookbook Name:: my-wordpress
# Attributes:: default
#
# Copyright 2016, myco
#
# All rights reserved - Do Not Redistribute
#

default['my-wordpress']['port'] = '3306'
default['my-wordpress']['version'] = '5.5'
default['my-wordpress']['db_password'] = 'wp_1pass'

# Attributes to override
override['wordpress']['db']['mysql_version'] = '5.6'
override['php']['packages'] = %w(php56 php56-devel php56-cli php-pear)
override['php']['mysql']['package'] = 'php56-mysqlnd'

# default['wordpress']['db']['root_password'] = 'my_root_password'
# default['wordpress']['db']['instance_name'] = 'default'
# default['wordpress']['db']['name'] = "wordpressdb"
# default['wordpress']['db']['user'] = "wordpressuser"