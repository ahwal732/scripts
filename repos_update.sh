#!/bin/bash
# Copyright (c) 2014 Benjamin Beurdouche. All rights reserved.
#

echo "##########################################"
echo "... GIT MIRROR : brackets ..."
echo "##########################################"
cd ~/Work/tools/brackets
git status
git pull adobe master
git push origin master

echo "##########################################"
echo "... GIT MIRROR : brackets-app ..."
echo "##########################################"
cd ~/Work/tools/brackets-app
git status
git pull adobe master

echo "##########################################"
echo "... GIT MIRROR : hello-world ..."
echo "##########################################"
cd ~/Work/tools/hello-world
git status
git pull leachim6 master

#echo "##########################################"
#echo "... GIT MIRROR : poky ..."
#echo "##########################################"
#cd ~/Work/tools/poky
#git status
#git pull yocto master

echo "##########################################"
echo "... GIT MIRROR : aliroot ..."
echo "##########################################"
cd ~/Work/tools/aliroot
git status
git svn rebase
git push origin master

echo "##########################################"
echo "... GIT MIRROR : root ..."
echo "##########################################"
cd ~/Work/tools/root
git status
git svn rebase
git push origin master

echo "##########################################"
echo "... GIT MIRROR : libmodbus ..."
echo "##########################################"
cd ~/Work/tools/libmodbus
git status
git pull stephane master
git push origin master
echo "##########################################"
echo "... GIT MIRROR : ant-build-script ..."
echo "##########################################"
cd ~/Work/tools/tools/ant-build-script
git status
git pull h5bp master
echo "##########################################"
echo "... GIT MIRROR : html5-boilerplate ..."
echo "##########################################"
cd ~/Work/tools/tools/html5-boilerplate
git status
git pull h5bp master
echo "##########################################"
echo "... GIT MIRROR : truecrack ..."
echo "##########################################"
cd ~/Work/tools/tools/truecrack
git status
git svn rebase
echo "##########################################"
echo "... GIT MIRROR : pyrit ..."
echo "##########################################"
cd ~/Work/tools/tools/pyrit
git status
git svn rebase
echo "##########################################"
echo "... GIT MIRROR : zxing ..."
echo "##########################################"
cd ~/Work/tools/tools/zxing
git status
git svn rebase
echo "##########################################"
echo "... GIT MIRROR : patator ..."
echo "##########################################"
cd ~/Work/tools/tools/patator
git status
git pull patator master
echo "##########################################"
echo "... GIT MIRROR : plowshare ..."
echo "##########################################"
cd ~/Work/tools/tools/plowshare
git status
git pull plowshare master
echo "##########################################"
echo "... GIT MIRROR : homebrew ..."
echo "##########################################"
cd ~/Work/tools/tools/homebrew
git status
git pull homebrew master

echo "##########################################"
echo "... GIT MIRROR : tools ..."
echo "##########################################"
cd ~/Work/tools/tools
git status
git commit -a -m "update tools"
git push origin master

echo "##########################################"
echo "... GIT MIRROR : clibrary ..."
echo "##########################################"
cd ~/Work/tools/clibrary
git status
git push origin master

echo "##########################################"
echo "... GIT MIRROR : config ..."
echo "##########################################"
cd ~/Work/tools/config
git status
git push origin master

echo "##########################################"
echo "... GIT MIRROR : scripts ..."
echo "##########################################"
cd ~/Work/tools/scripts
git status
git push origin master

echo "##########################################"
echo "... GIT MIRROR : linux ..."
echo "##########################################"
cd ~/Work/tools/linux
git status
git pull torvalds master
git push origin master

