

# Demo Grub Boot ISO / Mabox


## Grub Config

* /etc/grub.d/41_custom
* [/boot/grub/custom.cfg](custom.cfg)


## Menu Entry

| Title | Iso File Path |
| --- | --- |
| Mabox 220227 ISO | [/opt/iso/mabox-linux/latest/mabox-linux-22.02-Herbolth-220227-linux515.iso](https://repo.maboxlinux.org/iso/mabox-linux-22.02-Herbolth-220227-linux515.iso) |


## iso-download.txt

``` sh
https://repo.maboxlinux.org/iso/mabox-linux-22.02-Herbolth-220227-linux515.iso
```


## iso-download.sh


``` sh
wget -c -i iso-download.txt
```

or

``` sh
wget -c 'https://sourceforge.net/projects/mabox-linux/files/22.02/mabox-linux-22.02-Herbolth-220227-linux515.iso/download' -O 'mabox-linux-22.02-Herbolth-220227-linux515.iso'
```

## Download

* [iso](iso)


## Link

* [Mabox Linux](https://maboxlinux.org/)
* YouTube / [MaboxLinux](https://www.youtube.com/c/MaboxLinux)
* Mabox Linux / [Download and installation](https://maboxlinux.org/users-guide/download-and-installation/)
* Mabox Linux / [Repo](https://repo.maboxlinux.org/) / [iso](https://repo.maboxlinux.org/iso/)
* Mabox Linux / [Gitea](https://git.maboxlinux.org/) / [Explore](https://git.maboxlinux.org/explore/repos) / [iso-profiles](https://git.maboxlinux.org/Mabox/iso-profiles)
* Mabox Linux / [Manual](https://manual.maboxlinux.org/mabox-doc-en/)
* Mabox Linux / [Blog](https://blog.maboxlinux.org/)
* Mabox Linux / [Forum](https://forum.maboxlinux.org/)




## Reference

* [https://archcraft.io/blog/grub.html](https://archcraft.io/blog/grub.html)
* [https://archcraft.io/wiki/installation/boot/grub/](https://archcraft.io/wiki/installation/boot/grub/)
* Arch Wiki / [Multiboot USB drive](https://wiki.archlinux.org/title/Multiboot_USB_drive#Configuring_GRUB)
* Arch Wiki / [Kernel parameters](https://wiki.archlinux.org/title/Kernel_parameters#GRUB)
* Ubuntu Community Help Wiki / [Grub2/ISOBoot](https://help.ubuntu.com/community/Grub2/ISOBoot)
* Ubuntu Community Help Wiki / [Grub2/ISOBoot/Examples](https://help.ubuntu.com/community/Grub2/ISOBoot/Examples)
