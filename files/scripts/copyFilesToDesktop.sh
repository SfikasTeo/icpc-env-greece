#!/bin/bash

# Define the source and destination directories
source="./scripts"
destination="/home/contestant/Desktop"

# Check if the source directory exists
if [ ! -d "$source" ]; then
    echo "Source directory $source does not exist."
    exit 1
fi

# Check if the destination directory exists, if not, create it
if [ ! -d "$destination" ]; then
    echo "Destination directory $destination does not exist. Creating it now."
    mkdir -p "$destination"
fi

# Copy all files from the source directory to the destination directory
cp "$source"/* "$destination"

# Verify if the files were copied
if [ $? -eq 0 ]; then
    echo "Copied all files from $source to $destination."
else
    echo "Failed to copy files from $source to $destination."
fi
