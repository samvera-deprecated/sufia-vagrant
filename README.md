# README

Sufia-app is a turnkey Hydra-based repository application that builds atop Sufia, providing [self-deposit functionality and more](https://github.com/projecthydra/sufia#what-is-sufia).

## Getting Started

There is an included Vagrantfile that installs dependencies and starts up your Sufia app. With VirtualBox and Vagrant installed, just run ```vagrant up``` to start kicking the tires of Hydra and Sufia.

### Install Git

To grab a copy of sufia-app, which is hosted on github.com, you'll need git, the distributed version control system, installed.  Here are [instructions on installing git](http://git-scm.com/book/en/Getting-Started-Installing-Git).

### Install VirtualBox

If your find yourself with a "VirtualBox not found" error after running the ```vagrant up``` command, you will also need VirtualBox. Download packages and installation institutions can be found at https://www.virtualbox.org/wiki/Downloads.

### Install Vagrant

If you don't have Vagrant installed, here's how to remedy that:

  * Windows: follow the installation instructions on Vagrant's [downloads page](https://www.vagrantup.com/downloads).
  * Mac: With homebrew ```brew tap phinze/cask; brew install brew-cask; brew cask install vagrant``` _or_ follow the installation instructions on Vagrant's [downloads page](https://www.vagrantup.com/downloads).
  * Linux: use your favorite package manager to install packages for vagrant.

### Run sufia-app

Pull down a copy of sufia-app:

```bash
$ git clone https://github.com/projecthydra-labs/sufia-vagrant
$ cd sufia-app
```

Fire up sufia-app:

```bash
vagrant up
```

> ```vagrant up``` should take some time the first time -- **no, really, maybe grab a cup of coffee and wait for this to complete!** This step downloads the vagrant box, installs a bunch of system packages, downloads and installs FITS for file characterization, installs all the Ruby dependencies, builds a relational database, and starts Fedora Commons, Redis, and Solr.

Finally, browse to ```http://localhost:3000``` and you should see the Sufia homepage, at which point you can sign up for an account and start uploading files.

Note: It may take a few moments for the included Solr instance to come online.  If you see:

    Connection refused - Unable to connect to Solr instance

Wait a few moments and reload the page.

**That's it! Enjoy!**

## Shutting down

When you are done, you can shut down your vagrant box with:

```bash
vagrant halt
```

If you want to go through setting up your own environment (e.g., on a development server), see the commands in the Vagrantfile as guidance for setting up your own system.

## Getting help

There are numerous ways to get help.  You can reach the folks who work on Hydra and sufia-app here:

 * [hydra-tech Google Group](http://groups.google.com/group/hydra-tech)
 * [sufia-app GitHub repository](https://github.com/osulp/sufia-app/issues)
 * [#projecthydra IRC channel](irc://irc.freenode.net/projecthydra)

## Digging deeper

You now have a sandbox to try out Hydra and Sufia, and a perfectly good development enviornment to boot.  Here's how to dig deeper. Start by connecting to the vagrant box and changing into the directory that contains all the sufia-app code:

```bash
vagrant ssh
cd /vagrant
```

Once you're connected to the vagrant box, just type `exit` to get out.

## Contributing

Interested in making sufia-app better? [See our instructions for contributing](CONTRIBUTING.md).
