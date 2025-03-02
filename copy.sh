#!/bin/bash

# Set the destination directory
destination="$HOME/github/catlinux-repo/x86_64/"

# Loop over all directories in the current directory
for dir in */; do
    # Check if the directory is not the current directory or a hidden directory
    if [[ $dir != "./" && $dir != "./." && $dir != "../" && $dir != "./../" ]]; then
        # Loop over all files in the directory
        for file in $dir*; do
            # Check if the file isn't a directory and has a .pkg.* extension
            if [[ ! -d $file && $file == *.pkg.* ]]; then
                # Copy the file to the destination directory
                cp $file $destination
            fi
        done
    fi
done


