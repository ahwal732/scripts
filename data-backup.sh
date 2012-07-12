#!/bin/bash
# Copyright (c) 2012 Benjamin Beurdouche. All rights reserved.
#
# Create a backup of important data from a machine which used tree.sh (Unix/Linux/MacOSX)

export BACKUPDIR="/BD"


echo '##### STARTING BACKUP #####'
mkdir $BACKUPDIR
cd $BACKUPDIR

echo '<<< Copie et Sauvegarde des Repertoires Utilisateurs >>>'
tar zcvf $BACKUPDIR/Safe.tgz ~/Safe
tar zcvf $BACKUPDIR/Private.tgz ~/Private
tar zcvf $BACKUPDIR/Work.tgz ~/Work
tar zcvf $BACKUPDIR/Echanges.tgz ~/Echanges
tar zcvf $BACKUPDIR/Scripts.tgz ~/Scripts
tar zcvf $BACKUPDIR/Configuration.tgz ~/Configuration
tar zcvf $BACKUPDIR/Other.tgz ~/Other
tar zcvf $BACKUPDIR/Documentation.tgz ~/Documentation

echo '<<< Copie et Sauvegarde des Repertoires de Travail >>>'
tar zcvf $BACKUPDIR/Svn.tgz /Svn
tar zcvf $BACKUPDIR/Commun.tgz /Commun
tar zcvf $BACKUPDIR/Tools.tgz /Tools
tar zcvf $BACKUPDIR/www.tgz /var/www

cd
