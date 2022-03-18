#!/usr/bin/env bash

prepare_mount_dir () {
	mkdir -p mnt
}

mount_iso () {
	mount_xfce
}

mount_xfce () {
	sudo mount -o loop linux-lite-5.8-64bit.iso mnt
}

__main__ () {
	prepare_mount_dir
	mount_iso
}

__main__
