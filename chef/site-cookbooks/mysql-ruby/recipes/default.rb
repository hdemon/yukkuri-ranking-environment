#
# Cookbook Name:: mysql-ruby
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# mysql::rubyやchef_gemでmysqlのgemをインストールしようとすると、
# run_listの順番を無視してmysql-server等のインストール前にgemのインストールをしようとするので、
# このcookbookのような独立したcookbookを作って順番を明示すると上手くいった。

gem_package 'mysql'
