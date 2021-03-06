Description
===========

This repository contains a cloudformation template and chef cookbooks in order to deploy a wordpress site.  

The cloudformation template will deploy a chef server that will upload the necessary cookbooks.
Once that is complete, a second server is deployed and uses the chef server to deploy a wordpress site.


Requirements
============

* WPUser - A wordpress user that will be used as the admin of the site.
* WPPassword - A password used for the admin user of the site.
* WPEmail - An email address that will be used for the admin user.
* AllowHTTP - The cidr block to allow access to the wordpress site. The default is 0.0.0.0/0 which will allow all of the internet to access the site.

Platform
--------

* Amazon Linux

Required Cookbooks
---------

* my-chef-server
* chef_handler 
* windows 
* 7-zip 
* build-essential 
* chef-sugar 
* xml 
* yum 
* yum-epel 
* iis 
* yum-mysql-community 
* rbac 
* smf 
* mysql 
* php 
* openssl 
* apache2 
* apt 
* postgresql 
* database 
* mariadb 
* mysql2_chef_gem 
* tar 
* compat_resource 
* rsyslog 
* bluepill 
* ohai 
* packagecloud 
* runit 
* nginx 
* php-fpm 
* selinux 
* wordpress 
* my-wordpress

Attributes
==========

### my-chef-server

* `node['my-chef-server']['user_name']` - The username used for the chef account created at deployment. - Default value: "tbojorquez"
* `node['my-chef-server']['first_name']` - The first name used for the chef account created at deployment. - Default value: "Tim"
* `node['my-chef-server']['last_name']` - The last name used for the chef account created at deployment. - Default value: "Bojorquez"
* `node['my-chef-server']['email']` - The email address used for the chef account created at deployment. - Default value: "timbojo@charter.net"
* `node['my-chef-server']['password']` - The password used for the chef account created at deployment. - Default value: "my_chef_password1"
* `node['my-chef-server']['short_org']` - The short organization name used for the chef account created at deployment. - Default value: "tbojorquez"
* `node['my-chef-server']['full_org']` - The full organization name used for the chef account created at deployment. - Default value: "Tim Bojorquez Chef Org"
* `node['my-chef-server']['private_key']` - The private key generated for the chef account created at deployment. - Default value: "/root/tbojorquez-chef.pem"
* `node['my-chef-server']['validator_key']` - The validator key generated for the chef account created at deployment. - Default value: "/root/tbojorquez-validator.pem"

### my-word-press

* `node['my-wordpress']['wp_user']` - This is set to the user specified in the cloudformation template.
* `node'my-wordpress']['wp_password']` - This is set to the password specified in the cloudformation template.
* `node['my-wordpress']['private_key']` - This is the private key generated by the chef server during installation. - Default value: "tbojorquez-chef.pem"
* `node['my-wordpress']['validator_key']` - This is the chef validator key generated by the chef server during installation. - Default value: "tbojorquez-validator.pem"
* `node['my-wordpress']['short_org']` - This chef org generated by the chef server during installation. - Default value: "tbojorquez"
* `node['my-wordpress']['server']` - This is set to the public IP address of the server deployed from the cloudformation template.
* `node['my-wordpress']['email']` - This is set to the email address of the admin user specified in the cloudformation template.

Usage
=====

Deploy the cloudformation template within AWS and supply the required parameters.

Output
======

Check the "Outputs" tab within cloudformation to see the URL of the wordpress site once the deployment is complete.  It should look similar to http://52.34.142.104

Author
======

* Author:: Tim Bojorquez (timbojo@charter.net)