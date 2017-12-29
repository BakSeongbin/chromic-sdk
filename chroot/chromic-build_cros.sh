#!/bin/bash

# Copyright (c) 2016 The Chromic Authors. All rights reserved.
# You must excute this script in chromiumos's chroot(~/trunk/src/scripts).

# optional
#repo sync
#./update_chroot

~/trunk/src/scripts/set_shared_user_password.sh

rm ~/trunk/src/scripts/my*.log
echo "cleaned my log files"
date

echo "~/trunk/src/scripts/setup_board --board=x86-generic --force > ~/trunk/src/scripts/my_setup_board.log 2>&1"
~/trunk/src/scripts/setup_board --board=x86-generic --force > ~/trunk/src/scripts/my_setup_board.log 2>&1

echo "~/trunk/src/scripts/build_packages --board=x86-generic > ~/trunk/src/scripts/my_build_packages.log 2>&1"
~/trunk/src/scripts/build_packages --board=x86-generic > ~/trunk/src/scripts/my_build_packages.log 2>&1

# for google API - providing keys at build time
echo "emerge-x86-generic chromeos-chrome > ~/trunk/src/scripts/my_emerge.log 2>&1"
emerge-x86-generic chromeos-chrome > ~/trunk/src/scripts/my_emerge.log 2>&1

echo "~/trunk/src/scripts/build_image --board=x86-generic --noenable_rootfs_verification base > ~/trunk/src/scripts/my_build_packages.log 2>&1"
~/trunk/src/scripts/build_image --board=x86-generic --noenable_rootfs_verification base > ~/trunk/src/scripts/my_build_image.log 2>&1

# echo "~/trunk/src/scripts/build_image --board=x86-generic --noenable_rootfs_verification base --adjust_part='EFI-SYSTEM:=2G ROOT-A:=4G' > ~/trunk/src/scripts/my_build_packages.log 2>&1"
# ~/trunk/src/scripts/build_image --board=x86-generic --noenable_rootfs_verification base --adjust_part='EFI-SYSTEM:=2G ROOT-A:=4G' > ~/trunk/src/scripts/my_build_image.log 2>&1
 
date
