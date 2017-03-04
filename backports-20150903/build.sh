#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=/home/xp/fsl-linaro-toolchain/bin/arm-fsl-linux-gnueabi-
export INSTALL_MOD_PATH=./mod_install
export KLIB_BUILD=/home/xp/imx6-linux-1.3.5
export KLIB=$INSTALL_MOD_PATH
make defconfig-ath9k
#Wireless LAN -> Atheros Wireless Cards -> and deselect Atheros HTC based wireless card support
make menuconfig
make clean
make -j24
make -j24 install
