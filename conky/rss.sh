#!/bin/bash
uri=https://hnrss.org/frontpage                                       
lines=$1                                                
titlenum=$2                                 
#Set defaults if none specified
if [[ $lines == "" ]]; then lines=25 ; fi
if [[ $titlenum == "" ]]; then titlenum=2 ; fi

#The actual work
curl -s --connect-timeout 30 $uri |\
sed -e 's/<\/title>/\n/g' |\
grep -o '<title>.*' |\
sed -e 's/<title>//' |\
head -n $(($lines + $titlenum)) |\
tail -n $(($lines))