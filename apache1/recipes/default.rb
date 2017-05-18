#
# Cookbook Name:: apache1
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
cookbook_file "/var/www/html/index.html" do
source "index.html"
end
