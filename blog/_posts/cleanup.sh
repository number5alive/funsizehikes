#!/bin/bash

# remove wordpress captions throughout
sed -i -E -f nocap.sed "$@"
# make sure all images are on their own lines
sed -i -E -f eachline.sed "$@"
# remove all blank lines so we can process more easily
sed -i -e '/^$/d' "$@"
# handle posts that start with images that start with '[![image'
sed -i -E -f fix3.sed "$@"
# handle posts that start with images that start with '[!['
sed -i -E -f fix2.sed "$@"
# handle posts that start with images that start with '!['
sed -i -E -f fix.sed "$@"
# handle posts that do not start with images
sed -i -E -f nopics.sed "$@"
