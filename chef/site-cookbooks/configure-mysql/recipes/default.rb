#
# Cookbook Name:: configure_mysql
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

mysql_connection_info = {
  :host     => 'localhost',
  :username => 'root',
  :password => node['mysql']['server_root_password']
}

mysql_database 'yukkuri' do
  connection mysql_connection_info
  action :create
end

mysql_database_user 'root' do
  connection mysql_connection_info
  privileges [:all]
  password   node['mysql']['server_root_password']
  action     :grant
end

mysql_database_user 'yukkuri' do
  connection mysql_connection_info
  database_name 'yukkuri'
  privileges [:all]
  action     :nothing
end

mysql_database_user 'yukkuri' do
  connection mysql_connection_info
  password   node['mysql']['server_yukkuri_password']
  action     :create
  notifies   :grant, "mysql_database_user[yukkuri]"
end
