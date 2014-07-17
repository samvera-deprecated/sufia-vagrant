#!/bin/bash
# -------------------------------------------------------------------------------------------------- 
# boostrap.sh
#
# Installs Sufia with all of its dependencies
#
# -------------------------------------------------------------------------------------------------- 

# Config
FITS_PATH="/usr/local/fits"

# Update system and install dependencies
echo "Running boostrap.sh"
source /home/vagrant/.bashrc 
echo "Updating system"
sudo apt-get update -qq 
sudo apt-get install -qq libmagickwand-dev libvips-dev libmagic-dev graphicsmagick poppler-utils\
 poppler-data ghostscript pdftk libreoffice redis-server git gcc build-essential unzip zip\
 libmysqlclient-dev phantomjs

# Install rvm, Ruby and gems
echo "Installing rvm"
curl -sSL https://get.rvm.io | bash -s stable --ruby > /dev/null 2>&1
echo "Installed `ruby --version`"
source /usr/local/rvm/scripts/rvm
rvm fix-permissions
echo "Updating gems" 
gem update -q --system 

# Install Fits v. 0.6.2
echo "Installing Fits"
mkdir -p ${FITS_PATH}
cd ${FITS_PATH}
wget --no-clobber --quiet http://fits.googlecode.com/files/fits-0.6.2.zip
unzip -n -qq fits-0.6.2.zip
chmod 755 ${FITS_PATH}/fits-0.6.2/fits.sh
echo PATH=$PATH:${FITS_PATH}/fits-0.6.2 >> /home/vagrant/.bashrc
source /home/vagrant/.bashrc

# Install and startup Sufia
echo "Installing Sufia"
cd /vagrant 
bundle install --quiet 
rake db:create db:migrate 
mkdir -p /vagrant/jetty 
rake jetty:clean jetty:config jetty:start
echo "Starting Sufia"
rails server -d 
./script/restart_resque.sh development
echo "All done!"
