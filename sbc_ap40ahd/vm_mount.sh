#!/bin/bash

MOUNT_DOS=./mnt/dos
MOUNT_BOOT=./mnt/boot
MOUNT_LINUX=./mnt/linux

VM_DISK=hdimage_128M.qcow2

echo "mounting diskimage \"$VM_DISK\"..."

sudo modprobe nbd max_part=8

sudo qemu-nbd --connect=/dev/nbd0 $VM_DISK
sudo partprobe -s /dev/nbd0

sudo mount /dev/nbd0p1 $MOUNT_DOS
sudo mount /dev/nbd0p2 $MOUNT_BOOT
sudo mount /dev/nbd0p5 $MOUNT_LINUX

df -h $MOUNT_DOS $MOUNT_LINUX $MOUNT_BOOT
