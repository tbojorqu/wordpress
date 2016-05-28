#
# Cookbook Name:: my-wordpress
# Recipe:: default
#
# Copyright 2016, myco
#
# All rights reserved - Do Not Redistribute
#

wordpress 'my_app' do
	path              node['my-wordpress']['path']
	group             node['my-wordpress']['www-data']
	keys_auth         node['my-wordpress']['keys_auth']
	keys_secure_auth  node['my-wordpress']['keys_secure_auth']
	keys_logged_in    node['my-wordpress']['keys_logged_in']
	keys_nonce        node['my-wordpress']['keys_nonce']
	salt_auth         node['my-wordpress']['salt_auth']
	salt_secure_auth  node['my-wordpress']['salt_secure_auth']
	salt_logged_in    node['my-wordpress']['salt_logged_in']
	salt_nonce        node['my-wordpress']['salt_nonce']
	db_password       node['my-wordpress']['db_password']
	action            :deploy
end