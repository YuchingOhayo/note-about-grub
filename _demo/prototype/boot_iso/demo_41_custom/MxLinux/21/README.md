

# Demo Grub Boot ISO / MxLinux / 21

## Grub Config

* /etc/grub.d/41_custom
* [/boot/grub/custom.cfg](custom.cfg)


## Reference

* [https://archcraft.io/blog/grub.html](https://archcraft.io/blog/grub.html)
* [https://archcraft.io/wiki/installation/boot/grub/](https://archcraft.io/wiki/installation/boot/grub/)
* Arch Wiki / [Multiboot USB drive](https://wiki.archlinux.org/title/Multiboot_USB_drive#Configuring_GRUB)
* Arch Wiki / [Kernel parameters](https://wiki.archlinux.org/title/Kernel_parameters#GRUB)
* Search : [[debian grub boot iso](https://www.google.com/search?q=debian+grub+boot+iso)]
* Debian Wiki / [MultibootISO](https://wiki.debian.org/DebianLive/MultibootISO)
* Debian Wiki / [BootUsbWithGrubRescue](https://wiki.debian.org/BootUsbWithGrubRescue)
* Ubuntu Community Help Wiki / [Grub2/ISOBoot](https://help.ubuntu.com/community/Grub2/ISOBoot)
* Ubuntu Community Help Wiki / [ Grub2/ISOBoot/Examples](https://help.ubuntu.com/community/Grub2/ISOBoot/Examples)
* Search : [[mxlinux+grub+boot+iso](https://www.google.com/search?q=mxlinux+grub+boot+iso)]
* [https://forum.mxlinux.org/viewtopic.php?t=40215](https://forum.mxlinux.org/viewtopic.php?t=40215)
* Debian / man [live-boot](https://manpages.debian.org/unstable/live-boot-doc/live-boot.7.en.html)





## Menu Entry

| Title | Iso File Path |
| --- | --- |
| MxLinux 21 Xfce ISO | [/opt/iso/mxlinux/MX-21_x64.iso](https://sourceforge.net/projects/mx-linux/files/Final/Xfce/MX-21_x64.iso/download) |
| MxLinux 21 KDE ISO | [/opt/iso/mxlinux/MX-21_KDE_x64.iso](https://sourceforge.net/projects/mx-linux/files/Final/KDE/MX-21_KDE_x64.iso/download) |
| MxLinux 21 KDE ISO | [/opt/iso/mxlinux/MX-21_fluxbox_x64.iso](https://sourceforge.net/projects/mx-linux/files/Final/Fluxbox/MX-21_fluxbox_x64.iso/download) |


## iso-download.sh

``` sh
wget -c 'https://sourceforge.net/projects/mx-linux/files/Final/Xfce/MX-21_x64.iso/download' -O MX-21_x64.iso
wget -c 'https://sourceforge.net/projects/mx-linux/files/Final/KDE/MX-21_KDE_x64.iso/download' -O MX-21_KDE_x64.iso
wget -c 'https://sourceforge.net/projects/mx-linux/files/Final/Fluxbox/MX-21_fluxbox_x64.iso/download' -O MX-21_fluxbox_x64.iso
```

## Link

* [https://mxlinux.org/](https://mxlinux.org/)
* [https://mxlinux.org/download-links/](https://mxlinux.org/download-links/)
