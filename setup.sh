#!/bin/bash
echo Start config process...
mv bashrc ../.bashrc
mv nanorc ../.nanorc
mkdir ~/Programming
mkdir ~/Programming/C
mv create ~/Programming/C/create
cd ..
rm -rf LinuxConfigFiles
echo Success!
