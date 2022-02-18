

# Demo Grub Boot ISO / Clonezilla

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
| Clonezilla Stable 2.8.1-12 BaseOn Debian ISO | [/opt/iso/clonezilla/clonezilla-live-2.8.1-12-amd64.iso](http://free.nchc.org.tw/clonezilla-live/stable/clonezilla-live-2.8.1-12-amd64.iso) |




## iso-download.txt

``` sh
http://free.nchc.org.tw/clonezilla-live/stable/clonezilla-live-2.8.1-12-amd64.iso
http://free.nchc.org.tw/clonezilla-live/testing/3.0.0-3/clonezilla-live-3.0.0-3-amd64.iso
http://free.nchc.org.tw/clonezilla-live/alternative/testing/20220214-jammy/clonezilla-live-20220214-jammy-amd64.iso
```


## iso-download.sh

``` sh
wget -c -i iso-download.txt
```


## Link

* https://clonezilla.nchc.org.tw/clonezilla-live/download/
* http://free.nchc.org.tw/clonezilla-live/


```
http://free.nchc.org.tw/clonezilla-live/stable/clonezilla-live-2.8.1-12-amd64.iso
http://free.nchc.org.tw/clonezilla-live/testing/3.0.0-3/clonezilla-live-3.0.0-3-amd64.iso
http://free.nchc.org.tw/clonezilla-live/alternative/testing/20220214-jammy/clonezilla-live-20220214-jammy-amd64.iso
```





* https://clonezilla.nchc.org.tw/clonezilla-live/livehd.php
* https://clonezilla.nchc.org.tw/clonezilla-live/doc/fine-print.php?path=99_Misc/00_live-boot-parameters.doc#00_live-boot-parameters.doc


* https://wiki.debian.org/DebianLive/
* https://manpages.debian.org/unstable/live-boot-doc/live-boot.7.en.html
* https://manpages.debian.org/unstable/live-config-doc/live-config.7.en.html

* https://wiki.ubuntu.com/Kernel/KernelBootParameters
* https://manpages.ubuntu.com/manpages/jammy/en/man7/kernel-command-line.7.html
* https://manpages.ubuntu.com/manpages/jammy/en/man7/bootparam.7.html
* https://www.kernel.org/doc/html/latest/admin-guide/kernel-parameters.html


* http://free.nchc.org.tw/clonezilla-live/stable/source/clonezilla-live-src-2.8.1-12-amd64.debian-live.contents
* http://free.nchc.org.tw/clonezilla-live/stable/source/clonezilla-live-src-2.8.1-12-amd64.debian.contents
* http://free.nchc.org.tw/clonezilla-live/testing/3.0.0-3/source/clonezilla-live-src-3.0.0-3-amd64.debian-live.contents
* http://free.nchc.org.tw/clonezilla-live/testing/3.0.0-3/source/clonezilla-live-src-3.0.0-3-amd64.debian.contents


* http://free.nchc.org.tw/clonezilla-live/alternative/testing/20220214-jammy/source/clonezilla-live-src-20220214-jammy-amd64.debian-live.contents
* http://free.nchc.org.tw/clonezilla-live/alternative/testing/20220214-jammy/source/clonezilla-live-src-20220214-jammy-amd64.ubuntu.contents


* https://packages.ubuntu.com/jammy/clonezilla
* https://packages.ubuntu.com/source/jammy/clonezilla


```
http://archive.ubuntu.com/ubuntu/pool/universe/c/clonezilla/clonezilla_3.35.2-3.dsc
http://archive.ubuntu.com/ubuntu/pool/universe/c/clonezilla/clonezilla_3.35.2.orig.tar.xz
http://archive.ubuntu.com/ubuntu/pool/universe/c/clonezilla/clonezilla_3.35.2-3.debian.tar.xz
```


* http://free.nchc.org.tw/ubuntu/pool/universe/c/clonezilla/

```
http://free.nchc.org.tw/ubuntu/pool/universe/c/clonezilla/clonezilla_3.35.2-3_all.deb
http://free.nchc.org.tw/ubuntu/pool/universe/c/clonezilla/clonezilla_3.35.2-3.dsc
http://free.nchc.org.tw/ubuntu/pool/universe/c/clonezilla/clonezilla_3.35.2-3.debian.tar.xz
http://free.nchc.org.tw/ubuntu/pool/universe/c/clonezilla/clonezilla_3.35.2.orig.tar.xz
```


* https://salsa.debian.org/georgesk/clonezilla

``` sh
git clone https://salsa.debian.org/georgesk/clonezilla.git
```
