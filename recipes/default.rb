#
# Cookbook Name:: chef-via-demo
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'chef-via-demo::packages'
include_recipe 'chef-via-demo::users'
include_recipe 'chef-via-demo::welcome'
