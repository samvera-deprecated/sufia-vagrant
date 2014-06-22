# README

Sufia-vagrant is a turnkey Hydra-based repository application that builds atop Sufia, providing [self-deposit functionality and more](https://github.com/projecthydra/sufia#what-is-sufia). It runs in a virtual machine powered by Vagrant and VirtualBox.

## Getting Started

First install all of the dependencies (Git, VirtualBox, Vagrant), then run sufia-vagrant.

### Install Git

To grab a copy of sufia-vagrant, which is hosted on github.com, you'll need git, the distributed version control system.  Here are [instructions on installing git](http://git-scm.com/book/en/Getting-Started-Installing-Git).

### Install VirtualBox

You will also need VirtualBox installed to run the virtual machine that runs sufia-vagrant. Download packages and installation instructions can be found at https://www.virtualbox.org/wiki/Downloads.

### Install Vagrant

If you don't have Vagrant installed, here's how to remedy that:

  * Windows: follow the installation instructions on Vagrant's [downloads page](https://www.vagrantup.com/downloads).
  * Mac: With homebrew ```brew tap phinze/cask; brew install brew-cask; brew cask install vagrant``` _or_ follow the installation instructions on Vagrant's [downloads page](https://www.vagrantup.com/downloads).
  * Linux: use your favorite package manager to install packages for vagrant.

### Run sufia-vagrant

Pull down a copy of sufia-vagrant and change into its directory:

```bash
$ git clone https://github.com/projecthydra-labs/sufia-vagrant
$ cd sufia-vagrant
```

Fire up sufia-vagrant:

```bash
vagrant up
```

> ```vagrant up``` will take some time to complete the first time you launch it -- **no, really, maybe grab a cup of coffee and wait for this to complete!** This step downloads the vagrant box, installs system packages, downloads and installs FITS for file characterization, installs the Ruby dependencies, builds a relational database, and starts Fedora Commons, Solr, and Redis.

Finally, browse to ```http://localhost:3000``` and you should see the Sufia homepage, at which point you can sign up for an account, upload some files, and cruise around..

Note: It may take a few moments for the included Fedora Commons and Solr instances to come online. If you see `Connection refused - Unable to connect to Solr instance`, wait a few moments and reload the page.

**That's it! Enjoy!**

## Shutting down

When you are done, you can shut down sufia-vagrant with:

```bash
vagrant halt
```

If you'd like to set up your own environment (e.g., on a development server), see the commands in the Vagrantfile as guidance or get in touch with the Hydra development community.

## Getting help

There are numerous ways to get help.  You can reach the folks who work on Hydra and sufia-vagrant here:

 * [hydra-tech Google Group](http://groups.google.com/group/hydra-tech)
 * [sufia-vagrant GitHub repository](https://github.com/projecthydra-labs/sufia-vagrant/issues)
 * [#projecthydra IRC channel](irc://irc.freenode.net/projecthydra)

## Digging deeper

You now have a working sandbox to try out Hydra and Sufia, and a perfectly good development environment to boot.  Here's how to dig deeper. Start by connecting to the virtual machine and changing into the directory that contains the sufia-vagrant code:

```bash
vagrant ssh
cd /vagrant
```

Once you're connected, you can type `exit` to get out.

## Contributing

Interested in making sufia-vagrant better? [See our instructions for contributing](CONTRIBUTING.md).
