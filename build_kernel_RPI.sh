#!/bin/bash
# Copyright (c) 2012 Benjamin Beurdouche. All rights reserved.
#
# This script permits to build a cross compiled linux kernel for Raspberry Pi from MACOSX
# See http://elinux.org/RPi_Kernel_Compilation for more information

set -x

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

mkdir -p ~/Work/raspberrypi
cd ~/Work/raspberrypi 
git clone --depth=1 https://github.com/raspberrypi/linux.git
git clone --depth=1 https://github.com/beurdouche/clibrary.git 
cd clibrary
sudo mv elf.h /usr/include/elf.h
sudo mv elftypes.h /usr/include/elftypes.h
cd .. && rm -rf clibrary
cd linux


##################################
#Configure and Build the Kernel
##################################

cp arch/arm/configs/bcmrpi_cutdown_defconfig .config

#You can just exit and save for the next step it's ok

make ARCH=arm CROSS_COMPILE=/opt/local/bin/arm-none-eabi- menuconfig

make -j5 ARCH=arm CROSS_COMPILE=/opt/local/bin/arm-none-eabi- -k
cd linux/arch/arm/boot/
echo "The file named 'Image' is your Kernel ! Go flash it =)" 

##################################
#Flash your new kernel to a device
##################################
#
#cp linux/arch/arm/boot/Image /media/<boot-partition-of-SD-card>/kernel.img
#


##################################
# NOTES ON ERRORS 
##################################
#If you get a "SEGMENT_SIZE is undeclared" error
#open the Makefile and change the line:
#NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
#to
#NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include) -Dlinux


