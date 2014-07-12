#!/bin/bash
# Copyright (c) 2014 Benjamin Beurdouche. All rights reserved.
#
# Create all by default directories and set associated rights (Unix/Linux/MacOSX)

#### Variables
export LGROUP="staff"

echo '### Creation des repertoires de Travail'
sudo mkdir /Ressources
sudo mkdir /Ressources/scripts
sudo mkdir /Ressources/archives
sudo mkdir /Ressources/distributions
sudo mkdir /Ressources/packages
sudo mkdir /Ressources/tools
sudo mkdir /Ressources/virtual
sudo chmod -R 774 /Ressources
sudo chown -R $USER:$LGROUP /Ressources
sudo mkdir /Temporary
sudo chown -R $USER:$LGROUP /Temporary
