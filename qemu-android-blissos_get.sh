#!/bin/bash

export FILE="$1"
export LINK="https://sourceforge.net/projects/blissos-dev/files/Beta"

curl -JOLk "$LINK"/"$FILE" || \
curl -C - -OLk "$LINK"/"$FILE"

if [ -e "$FILE" ]; then

bsdtar -xvf "$FILE" initrd.img kernel system.sfs

fi
