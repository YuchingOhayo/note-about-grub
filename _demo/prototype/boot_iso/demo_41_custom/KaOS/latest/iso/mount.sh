#!/usr/bin/env bash

prepare_mount_dir () {
	mkdir -p mnt
}

mount_iso () {
	mount_kaos
}

mount_kaos () {
	sudo mount -o loop KaOS-2022.02-x86_64.iso mnt
}

__main__ () {
	prepare_mount_dir
	mount_iso
}

__main__
