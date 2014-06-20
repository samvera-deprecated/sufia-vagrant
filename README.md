README
=======

This is a bare bones Sufia 4 demo application that is quick to set up.

Getting Started
----------------

There is an included Vagrantfile that installs dependencies and starts up your Sufia app. With Vagrant installed, you should just need to run ```vagrant up``` and ```vagrant ssh``` to get a system up. 

If you don't yet have Vagrant working, you should start by installing it. 
  * Windows: follow the installation instructions on Vagrant's [downloads page](https://www.vagrantup.com/downloads).
  * Mac: With homebrew ```brew tap phinze/cask; brew install brew-cask; brew cask install vagrant``` _or_ follow the installation instructions on Vagrant's [downloads page](https://www.vagrantup.com/downloads).
  * Linux: use your favorite package manager to install packages for virtualbox and vagrant.

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

```vagrant up``` should take some time (no really, maybe don't wait around) the first time. You'll be downloading the vagrant box, installing a bunch of packages, then Fits, then installing all your Ruby dependencies, building your database, and starting Fedora and Solr. Most of the things in the [Sufia install instructions](https://github.com/projecthydra/sufia/blob/master/README.md) will be done, at this point; a few optional things are skipped.

Browse to ```http://localhost:3000``` for your Sufia app.

__That's it! Enjoy!__

You now have a sandbox to try out Sufia, and a perfectly good development enviornment to boot.

When you are done, you can shut down your virtual machine with:

```bash
exit
vagrant halt
```

If you want to go through setting up your own environment, see the commands in the Vagrantfile as guidance for setting up your own system (note: some of packages installed by ```apt-get``` aren't neessary, there's some minor clean up to do there. Sorry).