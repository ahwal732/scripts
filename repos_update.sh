#!/bin/bash
# Copyright (c) 2012 Benjamin Beurdouche. All rights reserved.
#

echo "##########################################"
echo "... GIT MIRROR : brackets ..."
echo "##########################################"
cd ~/Work/brackets
git status
git pull adobe master
git push origin master

echo "##########################################"
echo "... GIT MIRROR : brackets-app ..."
echo "##########################################"
cd ~/Work/brackets-app
git status
git pull adobe master

echo "##########################################"
echo "... GIT MIRROR : hello-world ..."
echo "##########################################"
cd ~/Work/hello-world
git status
git pull leachim6 master

#echo "##########################################"
#echo "... GIT MIRROR : poky ..."
#echo "##########################################"
#cd ~/Work/poky
#git status
#git pull yocto master

echo "##########################################"
echo "... GIT MIRROR : html5-boilerplate ..."
echo "##########################################"
cd ~/Work/html5-boilerplate
git status
git pull h5bp master

echo "##########################################"
echo "... GIT MIRROR : ant-build-script ..."
echo "##########################################"
cd ~/Work/ant-build-script
git status
git pull h5bp master

echo "##########################################"
echo "... GIT MIRROR : libmodbus ..."
echo "##########################################"
cd ~/Work/libmodbus
git status
git pull stephane master
git push origin master

echo "##########################################"
echo "... GIT MIRROR : truecrack ..."
echo "##########################################"
cd ~/Work/tools/truecrack
git status
git svn rebase
echo "##########################################"
echo "... GIT MIRROR : pyrit ..."
echo "##########################################"
cd ~/Work/tools/pyrit
git status
git svn rebase
echo "##########################################"
echo "... GIT MIRROR : zxing ..."
echo "##########################################"
cd ~/Work/tools/zxing
git status
git svn rebase
echo "##########################################"
echo "... GIT MIRROR : patator ..."
echo "##########################################"
cd ~/Work/tools/patator
git status
git pull patator master
echo "##########################################"
echo "... GIT MIRROR : plowshare ..."
echo "##########################################"
cd ~/Work/tools/plowshare
git status
git pull plowshare master
echo "##########################################"
echo "... GIT MIRROR : homebrew ..."
echo "##########################################"
cd ~/Work/tools/homebrew
git status
git pull homebrew master

echo "##########################################"
echo "... GIT MIRROR : tools ..."
echo "##########################################"
cd ~/Work/tools
git status
git commit -a -m "update tools"
git push origin master

echo "##########################################"
echo "... GIT MIRROR : clibrary ..."
echo "##########################################"
cd ~/Work/clibrary
git status
git push origin master

echo "##########################################"
echo "... GIT MIRROR : scripts ..."
echo "##########################################"
cd ~/Work/scripts
git status
git push origin master

echo "##########################################"
echo "... GIT MIRROR : aliroot ..."
echo "##########################################"
cd ~/Work/aliroot
git status
git svn rebase
git push origin master

echo "##########################################"
echo "... GIT MIRROR : root ..."
echo "##########################################"
cd ~/Work/root
git status
git svn rebase
git push origin master

echo "##########################################"
echo "... GIT MIRROR : linux ..."
echo "##########################################"
cd ~/Work/linux
git status
git pull torvalds master
git push origin master

