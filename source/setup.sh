#!/bin/bash


cd tar
tar -xzvf CAENVMELib-2.50.tgz
cd CAENVMELib-2.50/lib
sh install_x64
cd ../../

tar -xvzf CAENComm-1.2-build20140211.tgz
cd CAENComm-1.2/lib
sh install_x64
cd ../../

tar -xvzf CAENUpgrader-1.6.0-build20161104.tgz
cd CAENUpgrader-1.6.0
./configure
make -j2
make install
cd ..


rm -rf CAENVMELib-2.50  CAENComm-1.2 CAENUpgrader-1.6.0 
echo "Install all software done !"


