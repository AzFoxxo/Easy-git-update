#!/usr/bin/bash

# wget "https://download.savannah.gnu.org/releases/tinycc/tcc-0.9.27-win64-bin.zip"

curl -o tcc.zip "https://mirrors.sarata.com/non-gnu/tinycc/tcc-0.9.27-win64-bin.zip"
unzip tcc.zip -d "tcc"
rm -f tcc.zip

tcc/tcc/tcc.exe git-update.c -o sync.exe
