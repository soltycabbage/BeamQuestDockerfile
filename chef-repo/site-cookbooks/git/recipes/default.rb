#
# Cookbook Name:: git
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{git-core}.each do |name|
	package name do
		action :install
	end
end
