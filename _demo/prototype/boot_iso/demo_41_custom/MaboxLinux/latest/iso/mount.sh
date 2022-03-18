#!/usr/bin/env bash

prepare_mount_dir () {
	mkdir -p mnt
}

mount_iso () {
	mount_mabox
}

mount_mabox () {
	sudo mount -o loop mabox-linux-22.02-Herbolth-220227-linux515.iso mnt
}

__main__ () {
	prepare_mount_dir
	mount_iso
}

__main__
