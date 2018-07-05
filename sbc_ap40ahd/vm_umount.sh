#!/bin/bash

sudo umount /dev/nbd0*
sudo qemu-nbd --disconnect /dev/nbd0

