#!/usr/bin/env bash

prepare_mount_dir () {
	mkdir -p mnt
}

mount_iso () {
	mount_mabox
}

mount_mabox () {
	sudo mount -o loop archcraft-2022.02.02-x86_64.iso mnt
}

__main__ () {
	prepare_mount_dir
	mount_iso
}

__main__
