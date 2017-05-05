#
# Cookbook Name:: docker
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#include_recipe 'apt'

docker_service 'default' do
  action [:create, :start]
end
docker_image 'busybox' do
  action :pull
end
docker_image 'docker.io/gopi417/ramana' do
  action :pull
end
