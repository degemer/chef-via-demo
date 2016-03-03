#
# Cookbook Name:: chef-via-demo
# Recipe:: welcome
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

cookbook_file '/etc/coucou' do
  source 'coucou'
end

remote_file '/etc/VIA_LICENSE' do
  source 'http://www.wtfpl.net/txt/copying'
  checksum '0356258391e190dc1d44ea01565cfe627fe44e27dad693a0a54c2483a7b223e5'
end

template '/etc/motd' do
  source 'motd.erb'
  owner 'root'
  group 'root'
  mode '0755'
  variables({
    via_users: node['via']['users']
  })
end
