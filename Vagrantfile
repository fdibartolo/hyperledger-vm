# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.hostname = "hyperledger-vm"
  config.vm.box = "ubuntu/trusty64"

  # Forward Composer Playground port
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  # Forward Composer REST API port
  config.vm.network "forwarded_port", guest: 3000, host: 3000

  config.vm.provider :virtualbox do |vb|
    vb.memory = "2048"
  end

  config.vm.provision :shell, path: "scripts/prereqs.sh", privileged: false
  config.vm.provision :shell, path: "scripts/devtools.sh", privileged: false
end
