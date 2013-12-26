#
# Cookbook Name:: after-treatment
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "rbenv.global" do
  command "echo 2.1.0 > /home/yukkuri/rbenv/version"
end
