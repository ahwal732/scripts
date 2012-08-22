#!/bin/bash
#
# Reference : http://www.avidemux.org/admWiki/doku.php?id=using:command_line_usage 

LIST="files.txt"

ls *.avi | sort > $LIST # Collect the files in the current directory
cat $LIST | while read line; do  # Loop read the filenames from the file
  INPUT=$(echo ${line}) # Grab the nxt new filename
  OUTPUT=${INPUT%.*4} # Remove shortest match of characters between the '. ' and the '4' at end of string
  OUTPUT+=".mp4" # Append new extension
  avidemux2 --force-alt-h264 --load "$INPUT" --save "$OUTPUT" --output-format MP4 --quit 
done
rm $VAR # Remove the text file with the file names

