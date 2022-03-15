#!/usr/bin/bash

# Download, extract and delete
curl -o tcc.zip "https://mirrors.sarata.com/non-gnu/tinycc/tcc-0.9.27-win64-bin.zip"
unzip tcc.zip -d "tcc"
rm -f tcc.zip

# Compile sync
tcc/tcc/tcc.exe git-update.c -o sync.exe

# Optional extract into project and run for the first time
mv sync.exe .. # move to root of project
file=$(pwd) # save directory path
cd .. # move to root of project
rm -rf $file # delete repo used to build

# Initial run
./sync.exe
