#!/bin/bash
# Copyright (c) 2012 Benjamin Beurdouche. All rights reserved.
#
# Create all by default directories and set associated rights (Unix/Linux/MacOSX)

#### Variables
export BENJAMIN="$USER"
export GENERALGROUPE="general"
#export NEW_USER1=""


#### Modeles de dossiers utilisateurs
#mkdir /etc/skel/Safe
#chmod -R 700 /etc/skel/Safe
#mkdir /etc/skel/Private
#chmod -R 700 /etc/skel/Private
#mkdir /etc/skel/Work
#chmod -R 755 /etc/skel/Work
#mkdir /etc/skel/Echanges
#chmod -R 775 /etc/skel/Echanges
#mkdir /etc/skel/Scripts
#chmod -R 755 /etc/skel/Scripts
#mkdir /etc/skel/Configuration
#chmod -R 755 /etc/skel/Configuration
#mkdir /etc/skel/Other
#chmod -R 755 /etc/skel/Other
#mkdir /etc/skel/Documentation
#chmod -R 755 /etc/skel/Documentation

#echo '<<< Ajout des Groupes >>>'
#addgroup general
#addgroup svn
#addgroup www-data #Preexistant sous Ubuntu 10.04 Server


#echo '<<< Ajout des Utilisateurs >>>'
#adduser $NEW_USER1


#echo '<<< Associations des Utilisateurs aux Groupes >>>'
#usermod -a -G svn $BENJAMIN
#usermod -a -G www-data $BENJAMIN
#usermod -a -G general $BENJAMIN


echo '<<< Creation des repertoires Utilisateurs >>>'
#Creation de mes repertoires
mkdir ~/Safe
chmod -R 700 ~/Safe
chown -R $BENJAMIN ~/Safe
mkdir ~/Private
chmod -R 700 ~/Private
chown -R $BENJAMIN ~/Private
mkdir ~/Work
chmod -R 755 ~/Work
chown -R $BENJAMIN ~/Work
mkdir ~/Echanges
chmod -R 775 ~/Echanges
chown -R $BENJAMIN ~/Echanges
mkdir ~/Scripts
chmod -R 754 ~/Scripts
chown -R $BENJAMIN ~/Scripts
mkdir ~/Configuration
chmod -R 754 ~/Configuration
chown -R $BENJAMIN ~/Configuration
mkdir ~/Other
chmod -R 754 ~/Other
chown -R $BENJAMIN ~/Other
mkdir ~/Documentation
chmod -R 754 ~/Documentation
chown -R $BENJAMIN ~/Documentation


#echo '<<< Mise en place des droits des dossiers >>>'
#chown -R :general /home
#chmod 600 ~/.bash_history
#chmod 600 ~/.bash_logout
#chmod 600 ~/.bashrc
#chmod -R 600 ~/.cache/
#chmod 600 ~/.profile
#chmod 600 ~/.viminfo
#chmod -R 600 ~/.ssh/ #N'existe pas encore en general

echo '<<< Creation des repertoires de Travail >>>'
#mkdir /Svn
#chmod -R 770 /Svn
#chown -R www-data:svn /Svn
#mkdir /Commun
#mkdir /Commun/safe
#mkdir /Commun/samba
#mkdir /Commun/ftp
#chmod -R 774 /Commun
#chmod -R 700 /Commun/safe
#chmod -R 700 /Commun/samba
#chmod -R 700 /Commun/ftp
#chown -R $BENJAMIN:$GENERALGROUPE /Commun
mkdir /opt
mkdir /Tools
mkdir /Tools/services
mkdir /Tools/scripts
mkdir /Tools/sources
mkdir /Tools/archives
mkdir /Tools/packages
chmod -R 774 /Tools
#chown -R $BENJAMIN:$GENERALGROUPE /Tools
