#
# Cookbook Name:: chef-via-demo
# Recipe:: packages
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'zsh' do
  action :install
  version '5.0.2-3ubuntu6'
end
