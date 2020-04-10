# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  #config.vm.synced_folder "./code", "/home/ubuntu/code"
  #config.vm.provision 'shell', path:'./provision.sh'
  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = ["cookbooks"]
    chef.add_recipe "PythonDevEnvCookbook"

    chef.arguments = "--chef-license accept"

  end
end
