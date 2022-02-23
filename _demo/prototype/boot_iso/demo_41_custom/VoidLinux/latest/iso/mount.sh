#!/usr/bin/env bash

prepare_mount_dir () {
	mkdir -p mnt
}

mount_iso () {
	#mount_base
	#mount_base_musl
	mount_xfce
	#mount_xfce_musl
}

mount_base () {
	sudo mount -o loop void-live-x86_64-20210930.iso mnt
}

mount_base_musl () {
	sudo mount -o loop void-live-x86_64-musl-20210930.iso mnt
}

mount_xfce () {
	sudo mount -o loop void-live-x86_64-20210930-xfce.iso mnt
}

mount_xfce_musl () {
	sudo mount -o loop void-live-x86_64-musl-20210930-xfce.iso mnt
}


__main__ () {
	prepare_mount_dir
	mount_iso
}

__main__
