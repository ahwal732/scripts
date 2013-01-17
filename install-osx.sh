#!/bin/bash
# Copyright (c) 2012 Benjamin Beurdouche. All rights reserved.
#
# Create all by default directories and set associated rights (Unix/Linux/MacOSX)

#### Variables
export BENJAMIN="bbeurdouche"
export GROUP="staff"

echo '<<< Creation des repertoires Utilisateurs >>>'
#Creation de mes repertoires
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
sudo mkdir ~/Other
sudo chmod -R 754 ~/Other
sudo chown -R $BENJAMIN:$GROUP ~/Other

echo '<<< Creation des repertoires de Travail >>>'
sudo mkdir /Ressources
sudo mkdir /Ressources/services
sudo mkdir /Ressources/scripts
sudo mkdir /Ressources/sources
sudo mkdir /Ressources/archives
sudo mkdir /Ressources/packages
sudo mkdir /Ressources/config
sudo mkdir /Ressources/distributions
sudo mkdir /Ressources/documentation
sudo mkdir /Ressources/libraries
sudo mkdir /Ressources/tools
sudo chmod -R 774 /Ressources
sudo chown -R $BENJAMIN:$GROUP /Ressources

