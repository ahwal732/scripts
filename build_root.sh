#!/bin/bash
#
# ROOT FRAMEWORK INSTALLATION SCRIPT
#
# Copyright (c) 2014 Benjamin Beurdouche. All rights reserved.
# You might want to modify the first line to specify your own install location.


####
# An up-to-date version of this script is available at http://github.com/beurdouche/scripts/build_root.sh
####

# Update and upgrade your machine
sudo apt-get update && sudo apt-get upgrade

# Update requirements for root + openssl + cmake + libboost-program-options
sudo apt-get install openssl libboost-program-options-dev cmake git dpkg-dev make g++ gcc binutils libx11-dev libxpm-dev libxft-dev libxext-dev

# Create necessary directories an set rights
cd /opt/
sudo mkdir tmp
sudo chown -R $USER:$USER tmp

# Download sources of ROOT from CERN
cd /opt/tmp
git clone http://root.cern.ch/git/root.git

# Change location of source folder
sudo mv root ..

# Checkout the last release of ROOT (check http://root.cern.ch for more informations)
cd /opt/root
git checkout -b v5-34-19

# Run the configuration step
./configure

# Build and install ROOT
make -j5
source /opt/root/bin/thisroot.sh
make install

echo "Please do not forget to add 'source /opt/root/bin/thisroot.sh' to your .bashrc/.profile"

