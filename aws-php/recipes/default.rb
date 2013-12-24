#
# Cookbook Name:: phpapp
# Recipe:: default
#
# Install PHP 5.5 and Mysql. 
# 
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.error("SANTA: Running the default recipe")

include_recipe "aws-php::php"
Chef::Log.error("SANTA: Including recipe: aws-php::#{node[:opsworks][:server][:name]}")
include_recipe "aws-php::#{node[:opsworks][:server][:name]}"
include_recipe "aws-php::fpm-start"
