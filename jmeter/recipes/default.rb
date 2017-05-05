#
# Cookbook Name:: jmeter
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
cookbook_file "/home/chef/apache-jmeter-3.1.tgz" do
source "apache-jmeter-3.1.tgz"
end
bash "jmeter_io" do
code <<-EOH
cd /home/chef/
tar -xvf apache-jmeter-3.1.tgz
cd apache-jmeter-3.1
cd bin
./jmeter
EOH
end
#tar_extract "/home/chef/apache-jmeter-3.2_src.tgz" do
#action :extract_local
#target_dir "/home/chef"
#end
#execute "install jmeter" do
#command "sh /home/chef/apache-jmeter-3.2/bin/jmeter"
#end
