

# Demo Grub Boot Menu Entry / System


## Grub Config

* /etc/grub.d/41_custom
* [/boot/grub/custom.cfg](custom.cfg)


## Reference

* Archcraft Wiki / [Boot Archcraft with GRUB](https://wiki.archcraft.io/docs/boot-iso/boot-with-grub)
* Arch Wiki / [Multiboot USB drive](https://wiki.archlinux.org/title/Multiboot_USB_drive#Configuring_GRUB)
* Arch Wiki / [Kernel parameters](https://wiki.archlinux.org/title/Kernel_parameters#GRUB)
* Ubuntu Community Help Wiki / [Grub2/ISOBoot](https://help.ubuntu.com/community/Grub2/ISOBoot)
* Ubuntu Community Help Wiki / [Grub2/ISOBoot/Examples](https://help.ubuntu.com/community/Grub2/ISOBoot/Examples)


## Menu Entry

| Title | Command |
| --- | --- |
| Reboot Computer | [reboot](https://www.gnu.org/software/grub/manual/grub/html_node/reboot.html) |
| Shutdown Computer | [halt](https://www.gnu.org/software/grub/manual/grub/html_node/halt.html) |


## Info

* $ `info grub -n 'menuentry'`
* $ `info grub -n 'halt'`
* $ `info grub -n 'reboot'`
