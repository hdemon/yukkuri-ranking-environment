#
# Cookbook Name:: ruby_pkgs
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{
  man-db
  git
  patch
  gcc
  libreadline6
  libreadline-dev
  zlib1g
  zlib1g-dev
  libyaml-dev
  openssl
  make
  bzip2
  autoconf
  automake
  libtool
  bison
  libxml2-dev
  libxslt1.1
  libxslt1-dev
}.each do |pkg|
  package pkg do
    action :install
  end
end
