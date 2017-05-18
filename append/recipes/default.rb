#
# Cookbook Name:: append
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
ruby_block "insert_line_if_no_match" do
  block do
    file = Chef::Util::FileEdit.new("/var/www/html/index.html")
    file.insert_line_if_no_match("/www.example.com/", "www.example.com")    
    file.write_file
  end
end
ruby_block "search_file_delete_line" do
  block do
    file = Chef::Util::FileEdit.new("/var/www/html/index.html")
    file.search_file_delete_line("/www.example.com/", "www.example.com")
    file.write_file
  end
end

