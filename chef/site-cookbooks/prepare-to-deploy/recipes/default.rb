#
# Cookbook Name:: prepare-to-deploy
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory "/home/yukkuri/crawler" do
  owner "yukkuri"
  group "yukkuri"
  mode 00744
  action :create
end
