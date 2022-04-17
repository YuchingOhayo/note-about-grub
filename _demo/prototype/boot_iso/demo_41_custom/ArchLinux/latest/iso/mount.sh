#!/usr/bin/env bash

prepare_mount_dir () {
	mkdir -p mnt
}

mount_iso () {
	mount_archlinux
}

mount_archlinux () {
	sudo mount -o loop archlinux-2022.04.05-x86_64.iso mnt
}

__main__ () {
	prepare_mount_dir
	mount_iso
}

__main__
