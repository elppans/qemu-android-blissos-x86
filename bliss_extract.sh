#!/bin/bash

export BLISS="$1"

bsdtar -xvf "$BLISS" initrd.img kernel system.sfs
