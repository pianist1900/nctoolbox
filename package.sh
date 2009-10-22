#!/usr/bin/env bash
#
# Script to generate a neatly package zip archive for distributing
# ncdataset

# Brian Schlining - 20090701

TARGET=target/nctoolbox
mkdir -p $TARGET
cp -R cdm $TARGET/cdm
cp -R demos $TARGET/demos
cp -R java $TARGET/java
cp README $TARGET
cp setup_nctoolbox.m $TARGET
rm -rf $(find $TARGET -name .svn)
rm -rf $(find $TARGET -name .hg)
rm -rf $(find $TARGET -name *~)
ditto -c -k --keepParent -rsrc $TARGET nctoolbox-$(date "+%Y%m%d").zip
rm -rf target
