#
# Cookbook Name:: build_ruby
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

rbenv_ruby "2.1.0-preview2"
