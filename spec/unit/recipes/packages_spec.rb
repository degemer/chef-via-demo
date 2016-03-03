#
# Cookbook Name:: chef-via-demo
# Spec:: packages
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'chef-via-demo::packages' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'installs zsh with the right version' do
      expect(chef_run).to install_package('zsh').with(version: '5.0.2-3ubuntu6')
    end
  end
end
