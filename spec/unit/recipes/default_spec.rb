#
# Cookbook:: winstacks
# Spec:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'winstacks' do
  context 'When all attributes are default, on an windows' do
    before do
      stub_const('Win32::Service', Module.new) unless defined?(Win32::Service)
      allow(Win32::Service).to receive(:exists?).and_return(true)
    end
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'windows', version: '10')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
