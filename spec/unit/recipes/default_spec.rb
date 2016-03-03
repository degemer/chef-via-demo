#
# Cookbook Name:: chef-via-demo
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'chef-via-demo::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
      expect(chef_run).to include_recipe('chef-via-demo::packages')
      expect(chef_run).to include_recipe('chef-via-demo::users')
      expect(chef_run).to include_recipe('chef-via-demo::welcome')
    end
  end
end
