#!/usr/bin/env bash

prepare_mount_dir () {
	mkdir -p mnt
}

mount_iso () {
	mount_regolith
}

mount_regolith () {
	sudo mount -o loop Regolith_1.6.0_focal.iso mnt
}

__main__ () {
	prepare_mount_dir
	mount_iso
}

__main__
