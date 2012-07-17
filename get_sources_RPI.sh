#!/bin/bash
# Copyright (c) 2012 Benjamin Beurdouche. All rights reserved.
#
# This script permits to get sources of kernel and tools for Raspberry Pi

set -x
export RPI_DIR="/opt/raspberrypi"
export S_USER="bbeurdouche"
export S_GROUP="staff"

sudo mkdir -p $RPI_DIR
sudo chown -R $S_USER:$S_GROUP $RPI_DIR
cd $RPI_DIR
git clone --depth=1 https://github.com/raspberrypi/linux.git
git clone --depth=1 https://github.com/djwillis/meta-raspberrypi.git
git clone --depth=1 https://github.com/Hexxeh/rpi-update.git
git clone --depth=1 https://github.com/beurdouche/clibrary.git
echo "The directory where everything is stored (RPI_DIR) is :"
echo $RPI_DIR

