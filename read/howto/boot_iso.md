---
title: Boot ISO
nav_order: 7020
has_children: false
parent: 如何
---


# Boot ISO


## GRUB Boot ISO 範例

* [GRUB Boot ISO 範例](https://github.com/samwhelp/note-about-grub/tree/gh-pages/_demo/prototype/boot_iso)

| Demo | 修改檔案 | 是否需要執行 update-grub |
| --- | --- | --- |
| [demo_40_custom](https://github.com/samwhelp/note-about-grub/tree/gh-pages/_demo/prototype/boot_iso/demo_40_custom)| [/etc/grub.d/40_custom](https://samwhelp.github.io/note-about-grub/read/explore/ubuntu/file/etc_grub_d_40_custom.html) | 修改後，需要執行 `sudo update-grub` |
| [demo_41_custom](https://github.com/samwhelp/note-about-grub/tree/gh-pages/_demo/prototype/boot_iso/demo_41_custom)| [/boot/grub/custom.cfg](https://samwhelp.github.io/note-about-grub/read/explore/ubuntu/file/boot_grub_custom_cfg.html) | 修改後，不需要執行 `sudo update-grub` |

| Distro | /etc/grub.d/40_custom | /boot/grub/custom.cfg |
| --- | --- | --- |
| Arch | [/etc/grub.d/40_custom](https://github.com/samwhelp/note-about-grub/blob/gh-pages/_demo/prototype/boot_iso/demo_41_custom/Arch/2022.01.01/40_custom) | [/boot/grub/custom.cfg](https://github.com/samwhelp/note-about-grub/blob/gh-pages/_demo/prototype/boot_iso/demo_41_custom/Arch/2022.01.01/custom.cfg) |
| Ubuntu | [/etc/grub.d/40_custom](https://github.com/samwhelp/note-about-grub/blob/gh-pages/_demo/prototype/boot_iso/demo_40_custom/Ubuntu/daily-live/40_custom) | [/boot/grub/custom.cfg](https://github.com/samwhelp/note-about-grub/blob/gh-pages/_demo/prototype/boot_iso/demo_41_custom/Ubuntu/daily-live/custom.cfg) |


## 對照

* [如何自訂 Gurb Menu Entry](https://samwhelp.github.io/note-about-grub/read/start/custom_menu_entry.html)


## GRUB Menu Entry / Boot ISO 樣板 / Arch


``` sh
menuentry "Arch 2022.01.01 ISO" --class Arch {
	set iso_file="/opt/iso/arch/2022.01.01/archlinux-2022.01.01-x86_64.iso"
	search --no-floppy -f --set=iso_partition $iso_file
	probe -u $iso_partition --set=iso_partition_uuid
	set img_dev="/dev/disk/by-uuid/$iso_partition_uuid"
	loopback loop ($iso_partition)$iso_file
	set boot_option=""
	#set boot_option="quiet splash"
	linux (loop)/arch/boot/x86_64/vmlinuz-linux img_dev=$img_dev img_loop=$iso_file $boot_option
	initrd (loop)/arch/boot/intel-ucode.img (loop)/arch/boot/amd-ucode.img (loop)/arch/boot/x86_64/initramfs-linux.img
}
```

## GRUB Menu Entry / Boot ISO 樣板 / Ubuntu


``` sh
menuentry "Ubuntu 22.04 Daily Live ISO" --class Ubuntu {
	set iso_file="/opt/iso/ubuntu/daily-live/ubuntu/jammy-desktop-amd64.iso"
	search --no-floppy -f --set=iso_partition $iso_file
	probe -u $iso_partition --set=iso_partition_uuid
	set img_dev="/dev/disk/by-uuid/$iso_partition_uuid"
	loopback loop ($iso_partition)$iso_file
	set boot_option=""
	#set boot_option="locale=zh_TW"
	#set boot_option="quiet splash"
	linux (loop)/casper/vmlinuz iso-scan/filename=$iso_file boot=casper $boot_option
	initrd (loop)/casper/initrd
}
```


## 參考文章

* [使用 GRUB 以硬碟中的 ISO 映像檔開機](https://blog.gtwang.org/linux/boot-iso-image-from-your-hard-drive-in-ubuntu/)
* [如何從 grub2 啟動 Ubuntu Live CD iso](https://ttys3.dev/post/how-to-boot-ubuntu-live-cd-iso-from-grub2/)


## Reference

* [https://archcraft.io/blog/grub.html](https://archcraft.io/blog/grub.html)
* [https://archcraft.io/wiki/installation/boot/grub/](https://archcraft.io/wiki/installation/boot/grub/)
* Arch Wiki / [Multiboot USB drive](https://wiki.archlinux.org/title/Multiboot_USB_drive#Configuring_GRUB)
* Arch Wiki / [Kernel parameters](https://wiki.archlinux.org/title/Kernel_parameters#GRUB)
* Ubuntu Community Help Wiki / [Grub2/ISOBoot](https://help.ubuntu.com/community/Grub2/ISOBoot)
* Ubuntu Community Help Wiki / [Grub2/ISOBoot/Examples](https://help.ubuntu.com/community/Grub2/ISOBoot/Examples)


## See Also

* [grml-rescueboot](https://samwhelp.github.io/note-about-grub/read/link/grml-rescueboot.html)
* [ventoy](https://www.ventoy.net/)
* [grub-iso-boot](https://github.com/Jimmy-Z/grub-iso-boot)
* [glim](https://github.com/thias/glim)
* [multibootusb](https://github.com/aguslr/multibootusb)
