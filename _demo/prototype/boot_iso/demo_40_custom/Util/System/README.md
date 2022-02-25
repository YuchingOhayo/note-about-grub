

# Demo Grub Boot Menu Entry / System

## Grub Config

* [/etc/grub.d/40_custom](40_custom)


## Reference

* [https://archcraft.io/blog/grub.html](https://archcraft.io/blog/grub.html)
* [https://archcraft.io/wiki/installation/boot/grub/](https://archcraft.io/wiki/installation/boot/grub/)
* Arch Wiki / [Multiboot USB drive](https://wiki.archlinux.org/title/Multiboot_USB_drive#Configuring_GRUB)
* Arch Wiki / [Kernel parameters](https://wiki.archlinux.org/title/Kernel_parameters#GRUB)


## Menu Entry

| Title | Command |
| --- | --- |
| Reboot Computer | [reboot](https://www.gnu.org/software/grub/manual/grub/html_node/reboot.html) |
| Shutdown Computer | [halt](https://www.gnu.org/software/grub/manual/grub/html_node/halt.html) |


## Info

* $ `info grub -n 'menuentry'`
* $ `info grub -n 'halt'`
* $ `info grub -n 'reboot'`
