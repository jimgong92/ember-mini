# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
VAGRANT_API_VERSION = 2
Vagrant.configure(VAGRANT_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "locapp1.app.com"
  config.vm.network :private_network, ip: "192.168.56.11"
  config.vm.network :forwarded_port, guest: 4200, host: 4200
  config.vm.synced_folder ".", "/home/vagrant/app"
  config.vm.provider :virtualbox do |vb|  
    vb.name = "ember-vm"
    vb.memory = "1536"
  end
  config.vm.provision "shell", path: "provisioning/provision.sh"
end