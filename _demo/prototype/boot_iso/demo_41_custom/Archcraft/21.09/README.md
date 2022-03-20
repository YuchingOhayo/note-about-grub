

# Demo Grub Boot ISO / Archcraft

## Grub Config

* /etc/grub.d/41_custom
* [/boot/grub/custom.cfg](custom.cfg)


## Menu Entry

* [/opt/iso/archcraft/21.09/openbox/archcraft-2021.09.25-x86_64.iso](https://github.com/archcraft-os/releases/releases/download/v21.09/archcraft-2021.09.25-x86_64.iso)


## Release

* [https://github.com/archcraft-os/releases/releases/tag/v21.09](https://github.com/archcraft-os/releases/releases/tag/v21.09)


## Reference

* Archcraft Wiki / [Boot Archcraft with GRUB](https://wiki.archcraft.io/docs/boot-iso/boot-with-grub)
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
