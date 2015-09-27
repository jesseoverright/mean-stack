# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "puppetlabs/centos-6.6-64-nocm"

  # Load bootstrap script for provisioning machine
  config.vm.provision :shell, :path => 'provision.sh'

  # sync folder to box
  config.vm.synced_folder ".", "/vagrant", :mount_options => ['dmode=774','fmode=775']

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.33.50"
  config.vm.hostname = "mean.stack"

  
end
