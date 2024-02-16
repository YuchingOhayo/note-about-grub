#!/usr/bin/env bash
curl -fLo ~/Downloads/iso/archlinux/archlinux-x86_64.iso --create-dirs \
	https://mirror.archlinux.tw/ArchLinux/iso/latest/archlinux-x86_64.iso

wget -c -i download.txt
