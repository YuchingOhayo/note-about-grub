

# Demo Grub Boot ISO / Archcraft

## Grub Config

* /etc/grub.d/41_custom
* [/boot/grub/custom.cfg](custom.cfg)


## Menu Entry

* [/opt/iso/archcraft/21.09/openbox/archcraft-2021.09.25-x86_64.iso](https://github.com/archcraft-os/releases/releases/download/v21.09/archcraft-2021.09.25-x86_64.iso)


## Release

| Distro | Release |
| --- | --- |
| Openbox | [Release](https://github.com/archcraft-os/releases/releases) / [v22.02](https://github.com/archcraft-os/releases/releases/tag/v22.02) / [archcraft-2022.02.02-x86_64.iso](https://github.com/archcraft-os/releases/releases/download/v22.02/archcraft-2022.02.02-x86_64.iso) |
| Xfce | [Release](https://github.com/archcraft-os/archcraft-xfce/releases) / [v21.11](https://github.com/archcraft-os/archcraft-xfce/releases/tag/v21.11) / [archcraft-xfce-2021.11.30-x86_64.iso](https://github.com/archcraft-os/archcraft-xfce/releases/download/v21.11/archcraft-xfce-2021.11.30-x86_64.iso) |
| Lite | [Release](https://github.com/archcraft-os/archcraft-lite/releases) / [v21.11](https://github.com/archcraft-os/archcraft-lite/releases/tag/v21.11) / [archcraft-lite-2021.11.13-x86_64.iso](https://github.com/archcraft-os/archcraft-lite/releases/download/v21.11/archcraft-lite-2021.11.13-x86_64.iso) |




## Reference

* [https://archcraft.io/blog/grub.html](https://archcraft.io/blog/grub.html)
* [https://archcraft.io/wiki/installation/boot/grub/](https://archcraft.io/wiki/installation/boot/grub/)
* Arch Wiki / [Multiboot USB drive](https://wiki.archlinux.org/title/Multiboot_USB_drive#Configuring_GRUB)
* Arch Wiki / [Kernel parameters](https://wiki.archlinux.org/title/Kernel_parameters#GRUB)


## Usage

### download

run to download iso

``` sh
$ make download
```

### install

run to install [/boot/grub/custom.cfg](custom.cfg)

``` sh
$ make install
```
