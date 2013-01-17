#!/bin/bash
# Copyright (c) 2012 Benjamin Beurdouche. All rights reserved.
#
# Install packages necessary and update distribution of the machine (Unix/Linux)
# Make sure you configure properly all packages


echo '##### STARTING INSTALLATION #####'

echo '### Update distribution, packages and dependances...'
sudo apt-get update
sudo apt-get upgrade

echo '### Install Linux packages...'
#echo '+ Apt locations and keys'
#echo 'deb http://download.webmin.com/download/repository sarge contrib' >> /etc/apt/sources.list
#wget http://www.webmin.com/jcameron-key.asc
#sudo apt-key add jcameron-key.asc

sudo apt-get update
sudo apt-get install gcc g++ subversion git-core build-essential make cmake automake autoconf libtool 
sudo apt-get install libltdl-dev apache2 libapache2-svn php5 mysql-server php5-mysql phpmyadmin 
#apt-get nmap trac python-setuptools libapache2-mod-python enscript libgnutls-dev libglib2.0-dev libxml2-dev libreadline5-dev
#apt-get install webmin
#apt-get install samba

#echo '+ Creating symlinks'
sudo ln -s /usr/share/phpmyadmin /var/www

#echo '### Getting Software sources...'
#cd /Tools/sources

#echo '+ Wordpress'
#wget http://wordpress.org/latest.tar.gz .
#tar zxvf latest.tar.gz
#mv latest.tar.gz /Tools/archives/wordpress.latest.tar.gz

#echo '+ Owncloud'
#git clone git://gitorious.org/owncloud/owncloud.git
#chown -R www-data:www-data owncloud/

#echo '+ Websvn'
#wget http://websvn.tigris.org/files/documents/1380/49056/websvn-2.3.3.tar.gz .
#tar zxvf websvn-2.3.3.tar.gz
#mv websvn-2.3.3.tar.gz /Tools/archives

cd 

echo '### Update distribution, packages and dependances...'
sudo apt-get update
sudo apt-get upgrade

echo '### END OF INSTALLATION ###'
