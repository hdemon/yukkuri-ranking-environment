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
  :username => 'root'
}

mysql_database_user 'root' do
  connection mysql_connection_info
  password   node['mysql']['server_root_password']
  action     :grant
end

mysql_database 'yukkuri' do
  connection(
    :host     => 'localhost',
    :username => 'root',
    :password => node['mysql']['server_root_password']
  )
  action :create
end
