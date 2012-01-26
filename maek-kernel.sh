#!/bin/bash
rm .config
cp -a savedconfig .config
make clean
make oldconfig
KBUILD_BUILD_VERSION="Photon-Penguins_v0.0.5-OC"
export KBUILD_BUILD_VERSION
make zImage
