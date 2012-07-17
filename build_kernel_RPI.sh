#!/bin/bash
# Copyright (c) 2012 Benjamin Beurdouche. All rights reserved.
#
# This script permits to build a cross compiled linux kernel for Raspberry Pi from MACOSX
# See http://elinux.org/RPi_Kernel_Compilation for more information

set -x
export RPI_DIR="/opt/raspberrypi"
export PERSO_USER="bbeurdouche"
export PERSO_GROUP="staff"
export TMP_DIR="~/TMP_RPI"

##################################
#First lets check we have the good tools for cross-compilation and install libraries
#Macport is used for now in order to have libelf and arm-none-eabi-* but i'll get them from sources and build them in the future
##################################

sudo port selfupdate
sudo port install arm-none-eabi-gcc
#sudo port install arm-none-eabi-binutils #is supposed to be a dependance of the previous so it's commented out
sudo port install libelf && sudo ln -s /opt/local/include/libelf /usr/include/libelf


##################################
#Get sources for Raspberry pi kernel
##################################

mkdir $TMP_DIR && cd $TMP_DIR
git clone --depth=1 https://github.com/beurdouche/scripts.git 
cd scripts && chmod 744 get_sources_RPI.sh

./get_sources_RPI.sh              # Create $RPI_DIR, get everything and cd into it... 
                                  # NEXT : PASS THE RPI_DIR AS AN OPTION

rm -rf $TMP_DIR
cd $RPI_DIR
sudo mv clibrary/elf.h /usr/include/elf.h
sudo mv clibrary/elftypes.h /usr/include/elftypes.h
cd .. && rm -rf clibrary
cd linux

##################################
#Configure and Build the Kernel
##################################

cp arch/arm/configs/bcmrpi_cutdown_defconfig .config

#You can just exit and save for the next step it's ok

make ARCH=arm CROSS_COMPILE=/opt/local/bin/arm-none-eabi- menuconfig

make -j5 ARCH=arm CROSS_COMPILE=/opt/local/bin/arm-none-eabi- -k
cp $RPI_DIR/linux/arch/arm/boot/Image $RPI_DIR/Kernel.img
cd $RPI_DIR
echo "The file named 'Image' is your Kernel ! Go flash it =)" 


##################################
#Flash your new kernel to a device
##################################
#
#cp ~/Work/raspberrypi/linux/arch/arm/boot/Image /media/<boot-partition-of-SD-card>/kernel.img
#


##################################
# NOTES ON ERRORS 
##################################
#If you get a "SEGMENT_SIZE is undeclared" error
#open the Makefile and change the line:
#NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
#to
#NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include) -Dlinux


