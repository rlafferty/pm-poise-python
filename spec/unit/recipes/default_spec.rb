#
# Cookbook:: pm-poise-python
# Spec:: default
#
# Copyright:: 2017, PhishMe, All Rights Reserved.

require 'spec_helper'

test_platforms = {
  'ubuntu' => {
    'versions' => ['14.04', '16.04']
  }
}

describe 'pm-poise-python::default' do
  test_platforms.each do |platform, config|
    config['versions'].each do |version|
      context "on #{platform} #{version}" do
        let(:chef_run) do
          ChefSpec::ServerRunner.new(
            platform: platform,
            version: version
          ).converge(described_recipe)
        end

        it 'converges successfully' do
          expect { chef_run }.to_not raise_error
        end

        it 'installs python' do
          expect(chef_run).to install_python_runtime('pm-python').with(version: '3')
        end

        it 'creates python virtual env' do
          expect(chef_run).to create_python_virtualenv('/opt/app')
        end

        it 'installed virtualenv package' do
          expect(chef_run).to install_python_package('virtualenv')
        end
      end
    end
  end
end
