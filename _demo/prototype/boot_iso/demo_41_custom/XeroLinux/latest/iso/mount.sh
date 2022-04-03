#!/usr/bin/env bash

prepare_mount_dir () {
	mkdir -p mnt
}

mount_iso () {
	mount_regolith
}

mount_regolith () {
	sudo mount -o loop xerolinux-main-x86_64.iso mnt
}

__main__ () {
	prepare_mount_dir
	mount_iso
}

__main__
