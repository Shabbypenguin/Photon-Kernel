#!/bin/bash
rm config
cp -a ~/config.gz .
gunzip config.gz
cp -a config .config
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabi-
make clean
make oldconfig
KBUILD_BUILD_VERSION="Photon-Penguins_v0.0.3-oc"
export KBUILD_BUILD_VERSION
make zImage
