#!/bin/bash

MOUNT_DOS=./mnt/dos
MOUNT_BOOT=./mnt/boot
MOUNT_LINUX=./mnt/linux

VM_DISK=./vm/hda128m.img

losetup -f -v $VM_DISK
losetup -l

partprobe /dev/loop0
mount /dev/loop0p1 $MOUNT_DOS
mount /dev/loop0p2 $MOUNT_BOOT
mount /dev/loop0p5 $MOUNT_LINUX

df -h $MOUNT_DOS $MOUNT_BOOT $MOUNT_LINUX
