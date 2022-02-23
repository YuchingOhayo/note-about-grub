

# Demo Grub Boot ISO / Ubuntu / 22.04 Daily Build


## Grub Config

* /etc/grub.d/41_custom
* [/boot/grub/custom.cfg](custom.cfg)


## Reference

* [https://archcraft.io/blog/grub.html](https://archcraft.io/blog/grub.html)
* [https://archcraft.io/wiki/installation/boot/grub/](https://archcraft.io/wiki/installation/boot/grub/)
* Arch Wiki / [Multiboot USB drive](https://wiki.archlinux.org/title/Multiboot_USB_drive#Configuring_GRUB)
* Arch Wiki / [Kernel parameters](https://wiki.archlinux.org/title/Kernel_parameters#GRUB)
* Ubuntu Community Help Wiki / [Grub2/ISOBoot](https://help.ubuntu.com/community/Grub2/ISOBoot)
* Ubuntu Community Help Wiki / [Grub2/ISOBoot/Examples](https://help.ubuntu.com/community/Grub2/ISOBoot/Examples)
* glim / grub2 / [inc-void.cf](https://github.com/thias/glim/blob/master/grub2/inc-void.cfg)


## Menu Entry

| Title | Iso File Path |
| --- | --- |
| Void Linux 5.13.19_1 Xfce (x86_64) ISO | [/opt/iso/voidlinux/latest/void-live-x86_64-20210930-xfce.iso](https://alpha.de.repo.voidlinux.org/live/20210930/void-live-x86_64-20210930-xfce.iso) |
| Void Linux 5.13.19_1 Xfce (x86_64-musl) ISO | [/opt/iso/voidlinux/latest/void-live-x86_64-musl-20210930-xfce.iso](https://alpha.de.repo.voidlinux.org/live/20210930/void-live-x86_64-musl-20210930-xfce.iso) |
| Void Linux 5.13.19_1 Base (x86_64) ISO | [/opt/iso/voidlinux/latest/void-live-x86_64-20210930.iso](https://alpha.de.repo.voidlinux.org/live/20210930/void-live-x86_64-20210930.iso) |
| Void Linux 5.13.19_1 Base (x86_64-musl) ISO | [/opt/iso/voidlinux/latest/void-live-x86_64-musl-20210930.iso](https://alpha.de.repo.voidlinux.org/live/20210930/void-live-x86_64-musl-20210930.iso) |


## iso-download.txt

``` sh
https://alpha.de.repo.voidlinux.org/live/20210930/void-live-x86_64-20210930-xfce.iso
https://alpha.de.repo.voidlinux.org/live/20210930/void-live-x86_64-musl-20210930-xfce.iso
https://alpha.de.repo.voidlinux.org/live/20210930/void-live-x86_64-20210930.iso
https://alpha.de.repo.voidlinux.org/live/20210930/void-live-x86_64-musl-20210930.iso
https://alpha.de.repo.voidlinux.org/live/20210930/void-x86_64-ROOTFS-20210930.tar.xz
https://alpha.de.repo.voidlinux.org/live/20210930/void-x86_64-musl-ROOTFS-20210930.tar.xz
```

## iso-download.sh

``` sh
wget -c -i iso-download.txt
```

## Download

* [iso](iso)


## Link

* [https://github.com/void-linux](https://github.com/void-linux)
* [https://voidlinux.org/](https://voidlinux.org/)
* [https://voidlinux.org/download/](https://voidlinux.org/download/)
* [https://alpha.de.repo.voidlinux.org/live/current/](https://alpha.de.repo.voidlinux.org/live/current/)
* [https://alpha.de.repo.voidlinux.org/live/](https://alpha.de.repo.voidlinux.org/live/)
* [https://alpha.de.repo.voidlinux.org/live/20210930/](https://alpha.de.repo.voidlinux.org/live/)
