#!/bin/bash
main=$(pwd)
if [ -z "$1" ]; then
    echo "Please enter the directories"
    exit 1
fi

for dir in $*; do
    if [ ! -d "$main/$dir" ]; then
        echo "Directory $dir does not exist"
        exit 1
    fi

    cd "$main/$dir"
    echo "Building $dir"
    GPGKEY="E40E7EDDF0FF9143" PACKAGER="ThePolishCat <damianadam000@gmail.com>" makepkg --clean --sign --syncdeps
    cd "$main"
done
