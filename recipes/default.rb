#
# Cookbook:: lx-web
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.
package 'httpd' do
    action :install
end

template '/var/www/html/index.html' do
    source 'index.html.erb'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

service 'httpd' do
    action [:enable, :start]
end
