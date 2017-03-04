#!/bin/bash

export PATH=../u-boot-cuav/tools:$PATH
export ARCH=arm
export CROSS_COMPILE=../fsl-linaro-toolchain/bin/arm-fsl-linux-gnueabi-
export LOADADDR=10800000
export INSTALL_MOD_PATH=./mod_install
rm -rf $INSTALL_MOD_PATH
mkdir $INSTALL_MOD_PATH

make distclean
make clean
make imx6solo_artoo_defconfig
make -j24 uImage 
make -j24 dtbs 
make -j24 modules
make -j24 modules_install
