#!/bin/bash
# Copyright (c) 2014 Benjamin Beurdouche. All rights reserved.
#

# This is an example for total deletion from commit 0 of a folder
# Prefer use this after a clean git clone of your repository
# For files : delete the -r after rm command and replace the folder's name by your file's name

export FOLDER="XC-folder/"

git filter-branch --index-filter 'git rm -r --cached --ignore-unmatch $FOLDER' --prune-empty --tag-name-filter cat -- --all

# If everything went according to plan :
# git push origin --force
