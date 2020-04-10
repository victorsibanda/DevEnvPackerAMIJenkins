#
# Cookbook:: PythonDevEnvCookbook
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

apt_update 'update_sources' do
  action :update
end

package 'python3-pip'


remote_directory '/home/ubuntu/code' do
  source 'code'
  owner 'root'
  group 'root'
  mode '0777'
  action :create
end


bash 'pip install requirements.txt' do
  code <<-EOL
  pip3 install -r /home/ubuntu/code/requirements.txt
  EOL
end

directory '/home/ubuntu/Downloads' do
  owner 'root'
  group 'root'
  action :create
  mode '0777'
end

## Test to see if it works

file '/home/ubuntu/code/src/__init__.py' do
  action :create
end

file '/home/ubuntu/code/src/csv_generators/__init__.py' do
  action :create
end

file '/home/ubuntu/code/src/itjobswatch_html_readers/__init__.py' do
  action :create
end
