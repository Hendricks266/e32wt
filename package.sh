#!/bin/sh

PATH=$PATH:`cygpath -u "C:\Program Files\7-Zip"`

releasedate=`grep Release version_e32wt.txt | cut -d " " -f 2`

files='*.CON *.def *.grpinfo *.txt *.grp *.md'
# 7z a -mx9 -t7z "e32wt_$releasedate.7z" $files
# 7z a -mx9 -tzip "e32wt_$releasedate.zip" $files
kzip "e32wt_$releasedate.zip" $files
