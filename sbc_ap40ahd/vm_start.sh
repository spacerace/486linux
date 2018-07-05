#!/bin/bash

QEMU_HDA="hdimage_128M.qcow2"
QEMU_OPTS="--enable-kvm "
#QEMU_OPTS+="-curses "
QEMU_OPTS+="-M isapc "
QEMU_OPTS+="-cpu 486 "
#QEMU_OPTS+="-vga std "
QEMU_OPTS+="-m 32 "
QEMU_OPTS+="-soundhw sb16,pcspk,adlib "
QEMU_OPTS+="-serial stdio -no-acpi -no-hpet -net none "

#QEMU_OPTS+="-cdrom dsl.iso -boot d "
#QEMU_OPTS+="-fda Disk01.img -boot a "

echo "invoking qemu-system-i386 with these options:"
echo "   $QEMU_OPTS -hda $QEMU_HDA"

qemu-system-i386 $QEMU_OPTS -hda $QEMU_HDA
