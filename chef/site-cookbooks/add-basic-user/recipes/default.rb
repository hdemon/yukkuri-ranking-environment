#
# Cookbook Name:: add-basic-user
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

group 'yukkuri' do
  group_name 'yukkuri'
  action [:create]
end

user 'yukkuri' do
  group 'yukkuri'
  home '/home/yukkuri'
  password '$1$LsmX4M2/$LJnaOS8YiOUn0cihwV.yB1' # http://docs.opscode.com/resource_user.html#password-shadow-hash
  supports :manage_home => true
  action [:create, :manage]
end
