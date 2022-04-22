

# Demo Grub Boot ISO / Ubuntu 22.04 flavours


## Grub Config

* /etc/grub.d/41_custom
* [/boot/grub/custom.cfg](custom.cfg)


## Menu Entry

| Title | Iso File Path |
| --- | --- |
| Xubuntu 22.04 Live ISO | [/opt/iso/ubuntu/22.04/xubuntu-22.04-desktop-amd64.iso](https://cdimage.ubuntu.com/xubuntu/releases/22.04/release/xubuntu-22.04-desktop-amd64.iso) |


## iso-download.txt

```
https://releases.ubuntu.com/22.04/ubuntu-22.04-desktop-amd64.iso
https://cdimage.ubuntu.com/xubuntu/releases/22.04/release/xubuntu-22.04-desktop-amd64.iso
https://cdimage.ubuntu.com/kubuntu/releases/22.04/release/kubuntu-22.04-desktop-amd64.iso
https://cdimage.ubuntu.com/lubuntu/releases/22.04/release/lubuntu-22.04-desktop-amd64.iso
https://cdimage.ubuntu.com/ubuntu-mate/releases/22.04/release/ubuntu-mate-22.04-desktop-amd64.iso
https://cdimage.ubuntu.com/ubuntu-budgie/releases/22.04/release/ubuntu-budgie-22.04-desktop-amd64.iso
https://cdimage.ubuntu.com/ubuntustudio/releases/22.04/release/ubuntustudio-22.04-dvd-amd64.iso
```

## iso-download.sh


``` sh
wget -c -i iso-download.txt
```


## Download

* [iso](iso)


## Link

* [https://releases.ubuntu.com/22.04/](https://releases.ubuntu.com/22.04/)
* [https://cdimage.ubuntu.com/](https://cdimage.ubuntu.com/)
* Manjaro / Wiki / Burn an ISO File / [Writing to a USB Stick in Linux](https://wiki.manjaro.org/index.php/Burn_an_ISO_File#Writing_to_a_USB_Stick_in_Linux)
* [https://wiki.archcraft.io/docs/boot-iso/boot-with-usb](https://wiki.archcraft.io/docs/boot-iso/boot-with-usb)
* [https://maboxlinux.org/users-guide/download-and-installation/](https://maboxlinux.org/users-guide/download-and-installation/)


## Reference

* Archcraft Wiki / [Boot Archcraft with GRUB](https://wiki.archcraft.io/docs/boot-iso/boot-with-grub)
* Arch Wiki / [Multiboot USB drive](https://wiki.archlinux.org/title/Multiboot_USB_drive#Configuring_GRUB)
* Arch Wiki / [Kernel parameters](https://wiki.archlinux.org/title/Kernel_parameters#GRUB)
* Ubuntu Community Help Wiki / [Grub2/ISOBoot](https://help.ubuntu.com/community/Grub2/ISOBoot)
* Ubuntu Community Help Wiki / [Grub2/ISOBoot/Examples](https://help.ubuntu.com/community/Grub2/ISOBoot/Examples)
