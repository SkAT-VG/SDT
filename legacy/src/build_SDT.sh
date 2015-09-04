#! /bin/bash

# CHANGE THE PATH BELOW ACCORDING TO YOUR LOCAL flext DIRECTORY
FLEXTPATH=~/flext_svn/

for i in SDT_*.txt; do
    sh $FLEXTPATH/build.sh $1 gcc $2 "PKGINFO=$i"
#    sudo sh $FLEXTPATH/build.sh $1 gcc install "PKGINFO=$i"    
done
