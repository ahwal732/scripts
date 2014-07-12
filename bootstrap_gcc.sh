#!/bin/bash
# Copyright (c) 2013 Benjamin Beurdouche. All rights reserved.
#
# You might want to modify the script to specify your own install location.

sudo rm /usr/bin/cc
sudo ln -s /opt/local/bin/gcc /usr/bin/cc

sudo rm /usr/bin/c++
sudo ln -s /opt/local/bin/g++ /usr/bin/c++

