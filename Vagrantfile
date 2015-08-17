# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  config.vm.box = "ubuntu-14_0.1-64"

  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

  # To forward ports
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  
  # To define private network:
  # config.vm.network :private_network, ip: "192.168.33.10"
  
  # For shared folders:
  # config.vm.synced_folder "www", "/var/www"

  # Find extra useful configuration in Vagrant docs:
  # 

  # Provision for Python 
  config.vm.provision :shell, :path => "provision.sh"
  
end
