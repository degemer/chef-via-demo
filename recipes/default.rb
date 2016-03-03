#
# Cookbook Name:: chef-via-demo
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'zsh' do
  action :install
  version '5.0.2-3ubuntu6' 
end

group 'via'

node['via']['users'].each do |user_name|
  user user_name do
    shell '/bin/zsh'
    group 'via'
  end
end
