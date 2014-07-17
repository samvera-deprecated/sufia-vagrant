# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64" 

  # Open up Rails and Jetty ports to access Sufia from our local machine
  # accessing "localhost:8080" will access port 80 on the guest machine.
  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.network :forwarded_port, guest: 8983, host: 8983

  # TODO: https://github.com/mitchellh/vagrant/issues/1673

  # execute boostrap.sh to install Sufia
  config.vm.provision :shell, path: "bootstrap.sh"
end
