#!/usr/bin/bash

# Download, extract and delete
curl -o tcc.zip "http://mirror.netcologne.de/savannah/tinycc/tcc-0.9.27-win64-bin.zip"

unzip tcc.zip -d "tcc"
rm -f tcc.zip

# Compile sync with tcc
tcc/tcc/tcc.exe git-update.c -o sync.exe

# Remove compiler
rm -rf tcc

function open-window() {
  # Open file in build directory for manually placing the file
  mkdir build
  mv sync.exe build
  cd build
  explorer .
}

function add-to-project() {
  # Optional extract into project and run for the first time
  mv sync.exe .. # move to root of project
  file=$(pwd) # save directory path
  cd .. # move to root of project
  rm -rf $file # delete repo used to build

  # Initial run
  ./sync.exe
}

# Default to opening the window to manually place the sync file
open-window
