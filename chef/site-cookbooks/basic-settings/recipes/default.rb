#
# Cookbook Name:: iptables
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "iptables"

iptables_rule "ssh"
iptables_rule "http"

execute "rbenv.global" do
  user "yukkuri"
  command "echo 'export TZ=JST' >> /home/yukkuri/.bashrc"
end
