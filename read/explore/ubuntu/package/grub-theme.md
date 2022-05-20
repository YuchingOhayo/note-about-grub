---
title: grub-theme
nav_order: 6050
has_children: false
parent: Package
grand_parent: Ubuntu
---


# grub-theme

執行

``` sh
apt-cache search grub-theme
```

顯示

```
grub-theme-breeze - Breeze theme for GRUB 2
grub-theme-starfield - GRand Unified Bootloader, version 2 (starfield theme)
lubuntu-grub-theme - Theme for Lubuntu grub screen
```

執行

``` sh
apt-cache search grub-theme | awk -F ' - ' '{print "* ["$1"](https://packages.ubuntu.com/jammy/"$1")"}'
```

* [grub-theme-breeze](https://packages.ubuntu.com/jammy/grub-theme-breeze)
* [grub-theme-starfield](https://packages.ubuntu.com/jammy/grub-theme-starfield)
* [lubuntu-grub-theme](https://packages.ubuntu.com/jammy/lubuntu-grub-theme)
