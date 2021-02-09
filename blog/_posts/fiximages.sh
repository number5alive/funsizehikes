#!/bin/bash
 
for file in `ls *.markdown`; do
  sn=`echo ${file} | sed -n -E 's/..........-(.*)\.markdown/\1/p'`
  sed -i -E "s/\[\!\[.*\]\((.*)\)\]\(.*\)/\!\[${sn}\]\(\1\)/g" $file
done
