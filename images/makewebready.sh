#!/bin/bash

#
# Super lazy script
# Strips EXIF and makes four new versions of an original file
#
# $ ./makewebready.sh originalfilename no .jpg
#

SRC_FILE="$1"
echo $SRC_FILE

exiftool -o $SRC_FILE-clean.jpg -all= $SRC_FILE.jpg
convert $SRC_FILE-clean.jpg -quality 0 -resize 1024x $SRC_FILE-1024.jpg
convert $SRC_FILE-clean.jpg -quality 0 -resize 1024x $SRC_FILE-1024.webp
convert $SRC_FILE-clean.jpg -quality 0 -resize 640x $SRC_FILE-640.webp
convert $SRC_FILE-clean.jpg -quality 0 -resize 320x $SRC_FILE-320.webp
rm $SRC_FILE-clean.jpg
