#
# Cookbook Name:: node
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{build-essential python}.each do |name|
	package name do
		action :install
	end
end

bash "install_node" do
	cwd "/usr/local/src"
	user "root"
	group "root"
	code <<-EOH
		git clone https://github.com/joyent/node
		cd node
		git checkout v0.10.23
		./configure --prefix=/usr/local
		make
		make install
	EOH
end
