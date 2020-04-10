#
# Cookbook:: PythonDevEnvCookbook
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

apt_update 'update_sources' do
  action :update
end

package 'python3-pip'



remote_directory '/home/vagrant/code' do
  source 'code'
  owner 'root'

  group 'root'
  mode '0777'
  action :create
end

bash 'pip install requirements.txt' do
  code <<-EOL
  pip3 install -r /home/vagrant/code/requirements.txt
  EOL
end


directory '/home/vagrant/Downloads' do
  owner 'root'
  group 'root'
  action :create
  mode '0777'
end
