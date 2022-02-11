

# Demo Grub Boot ISO / Debian / 11

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





## Menu Entry

| Title | Iso File Path |
| --- | --- |
| Debian 11 netinst ISO | [/opt/iso/debian/11/debian-11.2.0-amd64-netinst.iso](https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-11.2.0-amd64-netinst.iso) |
| Debian 11 Xfce ISO | [/opt/iso/debian/11/debian-live-11.2.0-amd64-xfce.iso](https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-11.2.0-amd64-xfce.iso) |
| Debian 11 Standard ISO | [/opt/iso/debian/11/debian-live-11.2.0-amd64-standard.iso](https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-11.2.0-amd64-standard.iso) |
| Debian 11 Mate ISO | [/opt/iso/debian/11/debian-live-11.2.0-amd64-mate.iso](https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-11.2.0-amd64-mate.iso) |
| Debian 11 Lxqt ISO | [/opt/iso/debian/11/debian-live-11.2.0-amd64-lxqt.iso](https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-11.2.0-amd64-lxqt.iso) |
| Debian 11 Lxde ISO | [/opt/iso/debian/11/debian-live-11.2.0-amd64-lxde.iso](https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-11.2.0-amd64-lxde.iso) |
| Debian 11 Kde ISO | [/opt/iso/debian/11/debian-live-11.2.0-amd64-kde.iso](https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-11.2.0-amd64-kde.iso) |
| Debian 11 Gnome ISO | [/opt/iso/debian/11/debian-live-11.2.0-amd64-gnome.iso](https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-11.2.0-amd64-gnome.iso) |
| Debian 11 Cinnamon ISO | [/opt/iso/debian/11/debian-live-11.2.0-amd64-cinnamon.iso](https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-11.2.0-amd64-cinnamon.iso) |



## iso-download.txt

``` sh
https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-11.2.0-amd64-netinst.iso
https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-11.2.0-amd64-xfce.iso
https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-11.2.0-amd64-standard.iso
https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-11.2.0-amd64-mate.iso
https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-11.2.0-amd64-lxqt.iso
https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-11.2.0-amd64-lxde.iso
https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-11.2.0-amd64-kde.iso
https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-11.2.0-amd64-gnome.iso
https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-11.2.0-amd64-cinnamon.iso
```


## iso-download.sh

``` sh
wget -c -i iso-download.txt
```


## Link

* [https://www.debian.org/](https://www.debian.org/)
* [https://www.debian.org/download](https://www.debian.org/download)
* [https://www.debian.org/distrib/](https://www.debian.org/distrib/)
* [https://www.debian.org/CD/live/](https://www.debian.org/CD/live/)
* [https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/](https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/)
