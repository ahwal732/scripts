#!/bin/bash
# Copyright (c) 2012 Benjamin Beurdouche. All rights reserved.
#
# Create all by default directories and set associated rights (Unix/Linux/MacOSX)

#### Variables
export BENJAMIN="bbeurdouche"
export GROUP="staff"

echo '<<< Creation des repertoires Utilisateurs >>>'
#Creation de mes repertoires
sudo mkdir ~/Safe
sudo chmod -R 700 ~/Safe
sudo chown -R $BENJAMIN:$GROUP ~/Safe
sudo mkdir ~/Private
sudo chmod -R 700 ~/Private
sudo chown -R $BENJAMIN:$GROUP ~/Private
sudo mkdir ~/Work
sudo chmod -R 755 ~/Work
sudo chown -R $BENJAMIN:$GROUP ~/Work
sudo mkdir ~/Echanges
sudo chmod -R 775 ~/Echanges
sudo chown -R $BENJAMIN:$GROUP ~/Echanges
sudo mkdir ~/Scripts
sudo chmod -R 754 ~/Scripts
sudo chown -R $BENJAMIN:$GROUP ~/Scripts
sudo mkdir ~/Configuration
sudo chmod -R 754 ~/Configuration
sudo chown -R $BENJAMIN:$GROUP ~/Configuration
sudo mkdir ~/Other
sudo chmod -R 754 ~/Other
sudo chown -R $BENJAMIN:$GROUP ~/Other
sudo mkdir ~/Documentation
sudo chmod -R 754 ~/Documentation
sudo chown -R $BENJAMIN:$GROUP ~/Documentation

echo '<<< Creation des repertoires de Travail >>>'
sudo mkdir /Tools
sudo mkdir /Tools/services
sudo mkdir /Tools/scripts
sudo mkdir /Tools/sources
sudo mkdir /Tools/archives
sudo mkdir /Tools/packages
sudo chmod -R 774 /Tools
sudo chown -R $BENJAMIN:$GROUP /Tools
