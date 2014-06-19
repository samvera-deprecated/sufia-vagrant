README
=======

This is a bare bones Sufia demo application that is quick to set up.

Getting Started
----------------

There is an included Vagrantfile that installs system dependencies (and probably some unnecessary stuff). With Vagrant installed, you should just need to run ```vagrant up``` and ```vagrant ssh``` to get a system up. Or you can see the commands in the Vagrantfile as guidance for setting up your own system.

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

Start up a resque worker: ```QUEUE=* rake environment resque:work```

And your rails server: ```bundle exec rails s```

Browse to ```http://localhost:3000``` for your Sufia app.
