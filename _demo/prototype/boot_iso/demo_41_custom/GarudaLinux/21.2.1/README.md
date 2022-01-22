

# Demo Grub Boot ISO / GarudaLinux / 21.2.1

## Grub Config

* /etc/grub.d/41_custom
* [/boot/grub/custom.cfg](custom.cfg)


## Reference

* [https://archcraft.io/blog/grub.html](https://archcraft.io/blog/grub.html)
* [https://archcraft.io/wiki/installation/boot/grub/](https://archcraft.io/wiki/installation/boot/grub/)
* Arch Wiki / [Multiboot USB drive](https://wiki.archlinux.org/title/Multiboot_USB_drive#Configuring_GRUB)
* Arch Wiki / [Kernel parameters](https://wiki.archlinux.org/title/Kernel_parameters#GRUB)


## Menu Entry

* [/opt/iso/garuda/220101/garuda-xfce-linux-zen-220101.iso](https://sourceforge.net/projects/garuda-linux/files/garuda/xfce/220101/garuda-xfce-linux-zen-220101.iso/download)
* [/opt/iso/garuda/220101/garuda-gnome-linux-zen-220101.iso](https://sourceforge.net/projects/garuda-linux/files/garuda/gnome/220101/garuda-gnome-linux-zen-220101.iso/download)
* [/opt/iso/garuda/220101/garuda-lxqt-kwin-linux-zen-220101.iso](https://sourceforge.net/projects/garuda-linux/files/garuda/lxqt-kwin/220101/garuda-lxqt-kwin-linux-zen-220101.iso/download)
* [/opt/iso/garuda/220101/garuda-wayfire-linux-zen-220101.iso](https://sourceforge.net/projects/garuda-linux/files/garuda/wayfire/220101/garuda-wayfire-linux-zen-220101.iso/download)
* [/opt/iso/garuda/220101/garuda-sway-linux-zen-220101.iso](https://sourceforge.net/projects/garuda-linux/files/garuda/sway/220101/garuda-sway-linux-zen-220101.iso/download)
* [/opt/iso/garuda/220101/garuda-qtile-linux-zen-220101.iso](https://sourceforge.net/projects/garuda-linux/files/garuda/qtile/220101/garuda-qtile-linux-zen-220101.iso/download)
* [/opt/iso/garuda/220101/garuda-i3-linux-zen-220101.iso](https://sourceforge.net/projects/garuda-linux/files/garuda/i3/220101/garuda-i3-linux-zen-220101.iso/download)
* [/opt/iso/garuda/220101/garuda-bspwm-linux-zen-220101.iso](https://sourceforge.net/projects/garuda-linux/files/garuda/bspwm/220101/garuda-bspwm-linux-zen-220101.iso/download)
* [/opt/iso/garuda/220101/garuda-mate-linux-zen-220101.iso](https://sourceforge.net/projects/garuda-linux/files/community/mate/220101/garuda-mate-linux-zen-220101.iso/download)
* [/opt/iso/garuda/220101/garuda-cinnamon-linux-zen-220101.iso](https://sourceforge.net/projects/garuda-linux/files/community/cinnamon/220101/garuda-cinnamon-linux-zen-220101.iso/download)
* [/opt/iso/garuda/220101/garuda-kde-barebones-linux-lts-220101.iso](https://sourceforge.net/projects/garuda-linux/files/garuda/kde-barebones/220101/garuda-kde-barebones-linux-lts-220101.iso/download)
* [/opt/iso/garuda/220101/garuda-dr460nized-linux-zen-220101.iso](https://sourceforge.net/projects/garuda-linux/files/garuda/dr460nized/220101/garuda-dr460nized-linux-zen-220101.iso/download)
* [/opt/iso/garuda/220101/garuda-dr460nized-gaming-linux-zen-220101.iso](https://mirrors.fossho.st/garuda/iso/garuda/dr460nized-gaming/220101/garuda-dr460nized-gaming-linux-zen-220101.iso)
* [/opt/iso/garuda/220101/garuda-dr460nized-blackarch-linux-zen-220101.iso](https://mirrors.fossho.st/garuda/iso/garuda/dr460nized-blackarch/220101/garuda-dr460nized-blackarch-linux-zen-220101.iso)


## iso-download.sh

``` sh
wget -c 'https://sourceforge.net/projects/garuda-linux/files/garuda/xfce/220101/garuda-xfce-linux-zen-220101.iso/download' -O 'garuda-xfce-linux-zen-220101.iso'

wget -c 'https://sourceforge.net/projects/garuda-linux/files/garuda/gnome/220101/garuda-gnome-linux-zen-220101.iso/download' -O 'garuda-gnome-linux-zen-220101.iso'

wget -c 'https://sourceforge.net/projects/garuda-linux/files/garuda/lxqt-kwin/220101/garuda-lxqt-kwin-linux-zen-220101.iso/download' -O 'garuda-lxqt-kwin-linux-zen-220101.iso'

wget -c 'https://sourceforge.net/projects/garuda-linux/files/garuda/wayfire/220101/garuda-wayfire-linux-zen-220101.iso/download' -O 'garuda-wayfire-linux-zen-220101.iso'

wget -c 'https://sourceforge.net/projects/garuda-linux/files/garuda/sway/220101/garuda-sway-linux-zen-220101.iso/download' -O 'garuda-sway-linux-zen-220101.iso'

wget -c 'https://sourceforge.net/projects/garuda-linux/files/garuda/qtile/220101/garuda-qtile-linux-zen-220101.iso/download' -O 'garuda-qtile-linux-zen-220101.iso'

wget -c 'https://sourceforge.net/projects/garuda-linux/files/garuda/i3/220101/garuda-i3-linux-zen-220101.iso/download' -O 'garuda-i3-linux-zen-220101.iso'

wget -c 'https://sourceforge.net/projects/garuda-linux/files/garuda/bspwm/220101/garuda-bspwm-linux-zen-220101.iso/download' -O 'garuda-bspwm-linux-zen-220101.iso'

wget -c 'https://sourceforge.net/projects/garuda-linux/files/community/mate/220101/garuda-mate-linux-zen-220101.iso/download' -O 'garuda-mate-linux-zen-220101.iso'

wget -c 'https://sourceforge.net/projects/garuda-linux/files/community/cinnamon/220101/garuda-cinnamon-linux-zen-220101.iso/download' -O 'garuda-cinnamon-linux-zen-220101.iso'

wget -c 'https://sourceforge.net/projects/garuda-linux/files/garuda/kde-barebones/220101/garuda-kde-barebones-linux-lts-220101.iso/download' -O 'garuda-kde-barebones-linux-lts-220101.iso'

wget -c 'https://sourceforge.net/projects/garuda-linux/files/garuda/dr460nized/220101/garuda-dr460nized-linux-zen-220101.iso/download' -O 'garuda-dr460nized-linux-zen-220101.iso'

wget -c 'https://mirrors.fossho.st/garuda/iso/garuda/dr460nized-gaming/220101/garuda-dr460nized-gaming-linux-zen-220101.iso' -O 'garuda-dr460nized-gaming-linux-zen-220101.iso'

wget -c 'https://mirrors.fossho.st/garuda/iso/garuda/dr460nized-blackarch/220101/garuda-dr460nized-blackarch-linux-zen-220101.iso' -O 'garuda-dr460nized-blackarch-linux-zen-220101.iso'
```


## Link

* [https://garudalinux.org/downloads.html](https://garudalinux.org/downloads.html)
