#
# Cookbook:: pm-poise-python
# Recipe:: default
#
# Copyright:: 2017, PhishMe, All Rights Reserved.

python_runtime node['pm-poise-python']['python']['runtime-name'] do
  version node['pm-poise-python']['python']['version']
end

python_package 'virtualenv'

python_virtualenv node['pm-poise-python']['python']['virtualenv-location']
