#!/bin/bash

rm -rf root/*
mkdir root/etc

cd root/etc
ln -s ../../portage
cd ../..

cd repos
if [ ! -d gentoo/metadata ]; then
    git clone --depth=1 https://github.com/maxux/gentoo-portage gentoo
fi
cd ..


