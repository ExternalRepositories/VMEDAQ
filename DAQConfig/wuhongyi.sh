#! /bin/bash

num=`cat /proc/cpuinfo | grep processor | wc -l`

cd bbcaenvme
cd cmdvme
make clean
make -j$num
cd ../babies
make clean
make -j$num
ln -sf caenvmebabies babies
