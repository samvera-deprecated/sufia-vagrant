README
=======

Getting Started
----------------

There is an included Vagrantfile that installs system dependencies (and probably some unnecessary stuff). Run ```vagrant up``` and ```vagrant ssh``` to get a sytem up, or see the commands in the Vagrantfile as guidance for setting up your own system.

Start up a resque worker: ```QUEUE=* rake environment resque:work```

And your rails server: ```bundle exec rails s```

Browse to ```http://localhost:3000``` for your Sufia app.


