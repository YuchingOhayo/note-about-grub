#!/usr/bin/env bash

prepare_mount_dir () {
	mkdir -p mnt
}

mount_iso () {
	mount_xfce
}

mount_xfce () {
	sudo mount -o loop manjaro-xfce-21.2.5-220314-linux515.iso mnt
}

__main__ () {
	prepare_mount_dir
	mount_iso
}

__main__
