#!/bin/bash 
# Execution script - Benjamin Beurdouche, 2011
# Restore all data backed-up by the backup.sh script on a machine (Unix/Linux/MacOSX)
# Local for now, make it work for remote locations


export INSTALLDIR="/ID"

echo '##### STARTING RESTORE #####'
mkdir $INSTALLDIR
cd $INSTALLDIR

echo '<<< Copie et Extraction des Repertoires Utilisateurs >>>'
tar zxvf $INSTALLDIR/Safe.tgz
mv $INSTALLDIR/Safe ~/
tar zxvf $INSTALLDIR/Private.tgz
mv $INSTALLDIR/Private ~/
tar zxvf $INSTALLDIR/Work.tgz
mv $INSTALLDIR/Work ~/
tar zxvf $INSTALLDIR/Echanges.tgz
mv $INSTALLDIR/Echanges ~/
tar zxvf $INSTALLDIR/Scripts.tgz
mv $INSTALLDIR/Scripts ~/
tar zxvf $INSTALLDIR/Configuration.tgz
mv $INSTALLDIR/Configuration ~/
tar zxvf $INSTALLDIR/Other.tgz
mv $INSTALLDIR/Other ~/
tar zxvf $INSTALLDIR/Documentation.tgz
mv $INSTALLDIR/Documentation ~/

echo '<<< Copie et Extraction des Repertoires de Travail >>>'
tar zxvf $INSTALLDIR/Svn.tgz
mv $INSTALLDIR/Svn /
tar zxvf $INSTALLDIR/Commun.tgz
mv $INSTALLDIR/Commun /
tar zxvf $INSTALLDIR/Tools.tgz
mv $INSTALLDIR/Tools /
tar zxvf $INSTALLDIR/www.tgz
mv $INSTALLDIR/www /var

