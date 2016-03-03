#
# Cookbook Name:: chef-via-demo
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'zsh' do
  action :install
  version '5.0.2-3ubuntu6' 
end

group node['via']['group']

node['via']['users'].each do |user_name|
  user user_name do
    shell '/bin/zsh'
    group node['via']['group']
    home "/home/#{user_name}"
    manage_home true
  end
  directory "/home/#{user_name}/.ssh" do
    action :create
    user user_name
    group node['via']['group']
    mode '600'
    recursive true
  end 
end

group 'sudo' do
  append true
  members node['via']['users']
end

