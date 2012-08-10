#!/bin/bash
# Copyright (c) 2012 Benjamin Beurdouche. All rights reserved.
#


echo "##########################################"
echo "... GIT MIRROR : brackets ..."
echo "##########################################"
cd ~/Work
git clone https://github.com/adobe/brackets.git
git remote add adobe https://github.com/adobe/brackets.git

echo "##########################################"
echo "... GIT MIRROR : brackets-app ..."
echo "##########################################"
cd ~/Work
git clone https://github.com/adobe/brackets-app.git
git remote add adobe https://github.com/adobe/brackets-app.git

echo "##########################################"
echo "... GIT MIRROR : hello-world ..."
echo "##########################################"
cd ~/Work
git clone https://github.com/leachim6/hello-world.git
git remote add leachim6 https://github.com/leachim6/hello-world.git

#echo "##########################################"
#echo "... GIT MIRROR : poky ..."
#echo "##########################################"
#cd ~/Work

echo "##########################################"
echo "... GIT MIRROR : aliroot ..."
echo "##########################################"
cd ~/Work
git-svn clone https://alisoft.cern.ch/AliRoot/trunk aliroot

echo "##########################################"
echo "... GIT MIRROR : root ..."
echo "##########################################"
cd ~/Work
git-svn clone http://root.cern.ch/svn/root/trunk root

echo "##########################################"
echo "... GIT MIRROR : libmodbus ..."
echo "##########################################"
cd ~/Work
git clone https://github.com/stephane/libmodbus.git

echo "##########################################"
echo "... GIT MIRROR : ant-build-script ..."
echo "##########################################"
cd ~/Work/tools
echo "##########################################"
echo "... GIT MIRROR : html5-boilerplate ..."
echo "##########################################"
cd ~/Work/tools/html5-boilerplate
git status
git pull h5bp master
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
echo "... GIT MIRROR : config ..."
echo "##########################################"
cd ~/Work/config
git status
git push origin master

echo "##########################################"
echo "... GIT MIRROR : scripts ..."
echo "##########################################"
cd ~/Work/scripts
git status
git push origin master

echo "##########################################"
echo "... GIT MIRROR : linux ..."
echo "##########################################"
cd ~/Work/linux
git status
git pull torvalds master
git push origin master

