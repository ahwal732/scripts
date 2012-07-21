#!/bin/bash
# Copyright (c) 2012 Benjamin Beurdouche. All rights reserved.
#

# This is an example for total deletion from commit 0 of the folder XC-folder/
# Prefer use this after a clean git clone of your repository
# For files : delete the -r after rm command and replace the folder's name by your file's name

git filter-branch --index-filter 'git rm -r --cached --ignore-unmatch XC-folder/' --prune-empty --tag-name-filter cat -- --all

# If everything went according to plan :

# git push origin --force

