#
# Cookbook Name:: after-treatment
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# execute "rbenv.global" do
#   cwd "/home/yukkuri"
#   user "yukkuri"
#   # command "/home/yukkuri/rbenv/bin/rbenv rehash && /home/yukkuri/rbenv/bin/rbenv versions > a"
#   command "/home/yukkuri/rbenv/bin/rbenv global #{node[:rbenv][:version]}"
# end

include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

rbenv_ruby node[:rbenv][:version] do
  # not_if { File.exists?("/home/yukkuri/rbenv/versions/#{node[:rbenv][:version]}") }
  ruby_version node[:rbenv][:version]
  # ここでglobal trueとすると、恐らくこの時点でrbenvの制御下に入り、Berksfileで指定したcookbookがrequireできなくなってしまう。
  global true
end
