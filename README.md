README
=======

This is a bare bones Sufia demo application that is quick to set up.

Getting Started
----------------

There is an included Vagrantfile that installs system dependencies (and probably some unnecessary stuff). With Vagrant installed, you should just need to run ```vagrant up``` and ```vagrant ssh``` to get a system up. Or you can see the commands in the Vagrantfile as guidance for setting up your own system.

If you don't yet have Vagrant working, you should start by installing it. 
  * Mac: With homebrew ```brew tap phinze/cask; brew install brew-cask; brew cask install vagrant``` _or_ follow the installation instructions on Vagrant's [downloads page](https://www.vagrantup.com/downloads).
  * Linux: use your favorite package manager to install packages for virtualbox and vagrant.
  * Windows: follow the installation instructions on Vagrant's [downloads page](https://www.vagrantup.com/downloads).

Clone this repository into a convenient directory:

```bash
git clone https://github.com/osulp/sufia-app
cd sufia-app
```

Set up Vagrant.

```bash
vagrant up
vagrant ssh
cd /vagrant
```

```vagrant up``` should take some time the first time. You'll be downloading the vagrant box, installing a bunch of packages, then Fits, then installing all your Ruby dependencies, building your database, and starting Fedora and Solr. Most of the things in the [Sufia install instructions](https://github.com/projecthydra/sufia/blob/master/README.md) will be done, at this point; a few optional things are skipped.

Browse to ```http://localhost:3000``` for your Sufia app.
