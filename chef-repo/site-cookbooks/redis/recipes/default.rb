#
# Cookbook Name:: redis
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

bash "install_redis" do
	cwd "/usr/local/src"
	user "root"
	group "root"
	code <<-EOH
		curl -O http://download.redis.io/redis-stable.tar.gz
		tar xvzf redis-stable.tar.gz
		cd redis-stable
		make
		make install
	EOH
end
