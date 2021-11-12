#!/bin/bash


clear

echo "Setting permission 755 for directories"
find . -type d -name \* -exec chmod 755 {} \;
echo "Done"

echo "Setting permission 644 for files"
find . -type f -name \* -exec chmod 644 {} \;
echo "Done"
