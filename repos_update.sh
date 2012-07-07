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

echo "... GIT MIRROR : poky ..."
cd ~/Work/html5-boilerplate
git pull h5bp master

echo "... GIT MIRROR : libmodbus ..."
cd ~/Work/libmodbus
git pull stephane master
git push origin master

echo "... GIT MIRROR : aliroot ..."
cd ~/Work/aliroot
git svn rebase
git push origin master

echo "... GIT MIRROR : linux ..."
cd ~/Work/linux
git pull torvalds master
git push origin master

