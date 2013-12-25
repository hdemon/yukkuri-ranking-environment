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

rbenv_ruby node[:rbenv][:version] do
  not_if { File.exists?("/home/yukkuri/rbenv/versions/#{node[:rbenv][:version]}") }
  ruby_version node[:rbenv][:version]
  # ここでglobal trueとすると、恐らくこの時点でrbenvの制御下に入り、Berksfileで指定したcookbookがrequireできなくなってしまう。
  # global true
end

execute "rbenv.global" do
  not_if { File.exists?("/home/yukkuri/rbenv/versions/#{node[:rbenv][:version]}") }
  cwd "/home/yukkuri"
  user "yukkuri"
  command "/home/yukkuri/rbenv/bin/rbenv global '#{node[:rbenv][:version]}'"
end

package "gem" do
  action :install
end

rbenv_gem "bundler" do
  ruby_version node[:rbenv][:version]
end
