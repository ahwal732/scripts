#!/bin/bash
# Copyright (c) 2014 Benjamin Beurdouche. All rights reserved.
#
# You might want to modify the script to specify your own install location.

sudo rm /usr/bin/cc
sudo ln -s /usr/bin/clang /usr/bin/cc

sudo rm /usr/bin/c++
sudo ln -s /usr/bin/clang++ /usr/bin/c++

