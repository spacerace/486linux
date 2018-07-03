#!/bin/bash

QEMU_HDA="vm/hda128m.img"
QEMU_OPTS="--enable-kvm "
#QEMU_OPTS+="-curses "
QEMU_OPTS+="-M isapc "
QEMU_OPTS+="-cpu 486 "
QEMU_OPTS+="-m 32 "
QEMU_OPTS+="-soundhw sb16,pcspk "

echo "invoking qemu-system-i386 with these options:"
echo "   $QEMU_OPTS -hda $QEMU_HDA"

qemu-system-i386 $QEMU_OPTS -hda $QEMU_HDA
