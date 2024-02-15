#!/bin/bash

export FILE="$1"
export ADDR="https://sourceforge.net/projects/blissos-dev/files/Beta"

curl -JOLk "$ADDR"/"$FILE" || \
curl -C - -OLk  "$ADDR"/"$FILE" && \
bsdtar -xvf "$FILE" initrd.img kernel system.sfs
