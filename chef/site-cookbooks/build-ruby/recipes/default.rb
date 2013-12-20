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

rbenv_ruby "2.1.0-preview2" do
  not_if { File.exists?("/home/yukkuri/rbenv/versions/2.1.0-preview2") }
  ruby_version "2.1.0-preview2"
  global true
end

package "gem" do
  action :install
end

execute "rbenv.global" do
  not_if { File.exists?("/home/yukkuri/rbenv/versions/2.1.0-preview2") }
  cwd "/home/yukkuri"
  user "yukkuri"
  command "/home/yukkuri/rbenv/bin/rbenv global '2.1.0-preview2'"
end

rbenv_gem "bundler" do
  ruby_version "2.1.0-preview2"
end
