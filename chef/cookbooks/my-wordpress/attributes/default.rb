#
# Cookbook Name:: my-wordpress
# Attributes:: default
#
# Copyright 2016, myco
#
# All rights reserved - Do Not Redistribute
#

# default['my-wordpress']['port'] = '3306'
# default['my-wordpress']['version'] = '5.5'
# default['my-wordpress']['db_password'] = 'wp_1pass'

# Attributes to override
override['wordpress']['db']['mysql_version'] = '5.5'
override['wordpress']['db']['root_password'] = 'my_root_password'
override['wordpress']['db']['instance_name'] = 'default'
override['wordpress']['db']['name'] = "wordpressdb"
override['wordpress']['db']['user'] = "wordpressuser"
override['wordpress']['db']['pass'] = "wp_1pass"
override['wordpress']['db']['prefix'] = 'wp_'
override['wordpress']['db']['host'] = 'localhost'

override['php']['packages'] = %w(php55 php55-devel php55-cli php-pear)
override['php']['mysql']['package'] = 'php55-mysqlnd'
