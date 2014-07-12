#!/bin/bash
# Copyright (c) 2014 Benjamin Beurdouche. All rights reserved.
#
# This script permits to build Macports from sources

set -x
export MP_DIR="/opt/macports"
export LGROUP="staff"

### Checking out sources
sudo mkdir -p $MP_DIR
sudo chown -R $USER:$LGROUP $MP_DIR
cd $MP_DIR
svn checkout https://svn.macports.org/repository/macports/trunk/base

### Compile sources and install binaries
cd $MP_DIR/base
./configure --enable-readline
make
sudo make install
make distclean

### Update everything
sudo port -v selfupdate

