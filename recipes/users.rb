#
# Cookbook Name:: chef-via-demo
# Recipe:: users
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

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
    mode '700'
    recursive true
  end
end

group 'sudo' do
  append true
  members node['via']['users']
end

