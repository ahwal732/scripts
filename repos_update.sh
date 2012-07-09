#!/bin/bash

echo "... GIT MIRROR : brackets ..."
cd ~/Work/brackets
git pull adobe master
git push origin master

echo "... GIT MIRROR : brackets-app ..."
cd ~/Work/brackets-app
git pull adobe master

echo "... GIT MIRROR : hello-world ..."
cd ~/Work/hello-world
git pull leachim6 master

echo "... GIT MIRROR : poky ..."
cd ~/Work/poky
git pull yocto master

echo "... GIT MIRROR : html5-boilerplate ..."
cd ~/Work/html5-boilerplate
git pull h5bp master

echo "... GIT MIRROR : ant-build-script ..."
cd ~/Work/ant-build-script
git pull h5bp master

echo "... GIT MIRROR : libmodbus ..."
cd ~/Work/libmodbus
git pull stephane master
git push origin master

echo "... GIT MIRROR : tools ..."
cd ~/Work/tools/truecrack
git svn rebase
cd ~/Work/tools/pyrit
git svn rebase
cd ~/Work/tools/zxing
git svn rebase
cd ~/Work/tools/patator
git pull patator master

cd ~/Work/tools
git push origin master

echo "... GIT MIRROR : aliroot ..."
cd ~/Work/aliroot
git svn rebase
git push origin master

echo "... GIT MIRROR : root ..."
cd ~/Work/root
git svn rebase
git push origin master

echo "... GIT MIRROR : linux ..."
cd ~/Work/linux
git pull torvalds master
git push origin master

