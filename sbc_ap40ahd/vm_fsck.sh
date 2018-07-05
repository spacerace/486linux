#!/bin/bash

VM_DISK=hdimage_128M.qcow2

echo "checking diskimage \"$VM_DISK\"..."

sudo modprobe nbd max_part=8

sudo qemu-nbd --connect=/dev/nbd0 $VM_DISK
sudo partprobe -s /dev/nbd0

#sudo mount /dev/nbd0p1 $MOUNT_DOS
#sudo mount /dev/nbd0p2 $MOUNT_BOOT
#sudo mount /dev/nbd0p5 $MOUNT_LINUX
sudo fsck /dev/nbd0p1
sudo fsck /dev/nbd0p2
sudo fsck /dev/nbd0p5

sudo qemu-nbd --disconnect /dev/nbd0

echo "press a key to continue..."
read
